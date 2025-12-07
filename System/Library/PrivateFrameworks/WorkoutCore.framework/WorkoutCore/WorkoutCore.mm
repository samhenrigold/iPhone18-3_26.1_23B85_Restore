uint64_t type metadata accessor for ActivityPausedRingsObserver(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActivityPausedRingsObserver;
  if (!type metadata singleton initialization cache for ActivityPausedRingsObserver)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ActivityPausedRingsObserver(uint64_t a1)
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

uint64_t type metadata accessor for WorkoutConfigurationOccurrenceStore(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutConfigurationOccurrenceStore;
  if (!type metadata singleton initialization cache for WorkoutConfigurationOccurrenceStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutConfigurationOccurrenceStore(uint64_t a1)
{
  type metadata accessor for Published<Int>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Int>()
{
  if (!lazy cache variable for type metadata for Published<Int>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Int>);
    }
  }
}

char *WorkoutConfigurationOccurrenceStore.__allocating_init(applicationSignificantTimeChangeNotificationName:)(void *a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v2 = static WorkoutCoreInjector.healthStore;
  v3 = objc_allocWithZone(type metadata accessor for QueryClient());
  v4 = QueryClient.init(_:)(v2);
  type metadata accessor for UnlockedSinceBootMonitor();
  v5 = swift_allocObject();
  *(v5 + 16) = -1;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for backgroundAssertionManager != -1)
  {
    swift_once();
  }

  v6 = static WorkoutCoreInjector.backgroundAssertionManager;

  return _s11WorkoutCore0A28ConfigurationOccurrenceStoreC11queryClient24unlockedSinceBootMonitor26backgroundAssertionManager48applicationSignificantTimeChangeNotificationName21activityMoveModeBlockAcA05QueryG8Protocol_p_AA08UnlockedijkZ0_pAA010BackgroundmnZ0_pSo014NSNotificationT0aSo010HKActivityvW0VyctcfCTfq4eeennn_nAA0yG0C_AA010BackgroundmN0CAA08UnlockedijK0CTt4g5(v4, v5, v6, a1, closure #1 in WorkoutConfigurationOccurrenceStore.init(applicationSignificantTimeChangeNotificationName:), 0);
}

id one-time initialization function for shared(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void *a4)
{
  result = [objc_allocWithZone(a3(a2)) init];
  *a4 = result;
  return result;
}

id one-time initialization function for healthStore()
{
  result = [objc_opt_self() fiui_sharedHealthStoreForCarousel];
  if (result)
  {
    static WorkoutCoreInjector.healthStore = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v0 = static WorkoutCoreInjector.healthStore;
  static HeartRateConfiguration.healthStore = static WorkoutCoreInjector.healthStore;

  return v0;
}

char *QueryClient.init(_:)(void *a1)
{
  v29 = a1;
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v28 = OBJC_IVAR____TtC11WorkoutCore11QueryClient_serverQueue;
  v25[0] = type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v27 = "finalizedIdentifiers";
  static DispatchQoS.userInteractive.getter();
  v32 = MEMORY[0x277D84F90];
  v25[3] = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v25[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9 = *MEMORY[0x277D85260];
  v10 = v1 + 104;
  v11 = *(v1 + 104);
  v25[1] = v10;
  v12 = v26;
  v11(v4, v9, v26);
  *&v30[v28] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v28 = OBJC_IVAR____TtC11WorkoutCore11QueryClient_clientQueue;
  static DispatchQoS.userInteractive.getter();
  v32 = MEMORY[0x277D84F90];
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v11(v4, v9, v12);
  v13 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = v30;
  *&v30[v28] = v13;
  *&v14[OBJC_IVAR____TtC11WorkoutCore11QueryClient_pluginProxyProvider] = 0;
  v15 = v14;
  Client = type metadata accessor for QueryClient();
  v31.receiver = v15;
  v31.super_class = Client;
  v17 = objc_msgSendSuper2(&v31, sel_init);
  v18 = objc_allocWithZone(MEMORY[0x277CCD7A0]);
  v19 = v17;
  v20 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B4643B0);
  v21 = v29;
  v22 = [v18 initWithHealthStore:v29 pluginIdentifier:v20 exportedObject:v19];

  v23 = *&v19[OBJC_IVAR____TtC11WorkoutCore11QueryClient_pluginProxyProvider];
  *&v19[OBJC_IVAR____TtC11WorkoutCore11QueryClient_pluginProxyProvider] = v22;

  return v19;
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

char *_s11WorkoutCore0A28ConfigurationOccurrenceStoreC11queryClient24unlockedSinceBootMonitor26backgroundAssertionManager48applicationSignificantTimeChangeNotificationName21activityMoveModeBlockAcA05QueryG8Protocol_p_AA08UnlockedijkZ0_pAA010BackgroundmnZ0_pSo014NSNotificationT0aSo010HKActivityvW0VyctcfCTfq4eeennn_nAA0yG0C_AA010BackgroundmN0CAA08UnlockedijK0CTt4g5(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for WorkoutConfigurationOccurrenceStore(0);
  v13 = objc_allocWithZone(v12);
  v39[3] = type metadata accessor for QueryClient();
  v39[4] = &protocol witness table for QueryClient;
  v39[0] = a1;
  v38[3] = type metadata accessor for UnlockedSinceBootMonitor();
  v38[4] = &protocol witness table for UnlockedSinceBootMonitor;
  v38[0] = a2;
  v37[3] = type metadata accessor for BackgroundAssertionManager();
  v37[4] = &protocol witness table for BackgroundAssertionManager;
  v37[0] = a3;
  v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded] = 0;
  v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated] = 0;
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore____lazy_storage___managedConfigurationsStore] = 0;
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete] = 1;
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken] = -1;
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v39, &v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient]);
  v33 = a1;

  v32 = a3;
  v14 = MEMORY[0x277D84F90];
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_alternativeConfigurations] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(v14);
  swift_beginAccess();
  v36 = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v15 = &v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_activityMoveModeBlock];
  *v15 = a5;
  v15[1] = a6;
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v38, &v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor]);
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v37, &v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager]);
  *&v13[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_applicationSignificantTimeChangeNotificationName] = a4;
  v35.receiver = v13;
  v35.super_class = v12;

  v31 = a4;
  v16 = objc_msgSendSuper2(&v35, sel_init);
  v17 = v16 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
  swift_beginAccess();
  v19 = *(v17 + 24);
  v18 = *(v17 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v17, v19);
  v20 = *(v18 + 16);
  v21 = v16;
  v20(v16, &protocol witness table for WorkoutConfigurationOccurrenceStore, v19, v18);
  swift_endAccess();
  v22 = NSNotificationNameForSyncedPersistenceType();
  v23 = [v22 UTF8String];
  _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v24 = static OS_dispatch_queue.main.getter();
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = v25;
  aBlock[4] = partial apply for closure #1 in WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  aBlock[3] = &block_descriptor_134;
  v27 = _Block_copy(aBlock);
  v28 = v22;

  v29 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken;
  swift_beginAccess();
  notify_register_dispatch(v23, &v21[v29], v24, v27);
  swift_endAccess();

  _Block_release(v27);

  __swift_destroy_boxed_opaque_existential_1Tm_6(v37);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v38);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v39);

  return v21;
}

uint64_t type metadata accessor for NSNumber(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo8NSNumberCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo8NSNumberCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_1(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_2(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_3(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_5(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_7(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id BackgroundAssertionManager.init()()
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v1);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v4, v5);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v14 = OBJC_IVAR___WOBackgroundAssertionManager_serialQueue;
  v13[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_1(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v15);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v16;
  *&v16[v14] = v8;
  *&v9[OBJC_IVAR___WOBackgroundAssertionManager_assertions] = MEMORY[0x277D84F98];
  v10 = v9;
  v11 = type metadata accessor for BackgroundAssertionManager();
  v17.receiver = v10;
  v17.super_class = v11;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_6(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of UnlockedSinceBootMonitorProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for WorkoutConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutConfiguration;
  if (!type metadata singleton initialization cache for WorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

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

uint64_t _sSo17OS_dispatch_queueCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_2(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_3(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_5(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_6(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_7(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_9(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_10(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_11(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_12(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_13(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_14(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_15(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_16(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_17(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_18(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo17OS_dispatch_queueCMaTm_19(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with copy of ForegroundProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void type metadata completion function for WorkoutConfiguration(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date?(319, &lazy cache variable for type metadata for WorkoutPlan.Route?, MEMORY[0x277CE3FA8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void _s10Foundation4DateVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

char *LocationProvider.init(foregroundProvider:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v46 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OBJC_IVAR___WOCoreLocationProvider_queue;
  _sSo17OS_dispatch_queueCMaTm_15(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v15 = static OS_dispatch_queue.main.getter();
  *&v2[v14] = v15;
  *&v2[OBJC_IVAR___WOCoreLocationProvider_locationManager] = 0;
  v2[OBJC_IVAR___WOCoreLocationProvider_isTrackingLocations] = 0;
  *&v2[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimeout] = 0x403E000000000000;
  v16 = &v2[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelection];
  *v16 = 0;
  v16[8] = 1;
  *&v2[OBJC_IVAR___WOCoreLocationProvider_manualLaneSelectionTimer] = 0;
  *&v2[OBJC_IVAR___WOCoreLocationProvider_cancellables] = MEMORY[0x277D84FA0];
  *&v2[OBJC_IVAR___WOCoreLocationProvider_currentAuthorizationStatus] = 0;
  *v13 = v15;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v17 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if (v15)
  {
    outlined init with copy of ForegroundProviding(a1, &v2[OBJC_IVAR___WOCoreLocationProvider_foregroundProvider]);
    *&v2[OBJC_IVAR___WOCoreLocationProvider_locationRequests] = MEMORY[0x277D84F90];
    *&v2[OBJC_IVAR___WOCoreLocationProvider_observers] = [objc_opt_self() weakObjectsHashTable];
    if (one-time initialization token for defaultTrackInfo == -1)
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
  v46 = a1;
  *&v2[OBJC_IVAR___WOCoreLocationProvider_trackInfo] = static RunningTrackInfo.defaultTrackInfo;
  v18 = type metadata accessor for LocationProvider();
  v47.receiver = v2;
  v47.super_class = v18;

  v19 = objc_msgSendSuper2(&v47, sel_init);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = *&v21[OBJC_IVAR___WOCoreLocationProvider_queue];
    v28 = v21;
    v29 = v27;
    v30 = MEMORY[0x20F2E6C00](v24, v26);
  }

  else
  {
    v31 = *&v21[OBJC_IVAR___WOCoreLocationProvider_queue];
    v32 = v21;
    v29 = v31;
    v30 = 0;
  }

  v33 = [objc_allocWithZone(MEMORY[0x277CBFC10]) initWithEffectiveBundleIdentifier:v30 delegate:v21 onQueue:v29];

  v34 = *&v21[OBJC_IVAR___WOCoreLocationProvider_locationManager];
  *&v21[OBJC_IVAR___WOCoreLocationProvider_locationManager] = v33;
  v35 = v33;

  if (v35)
  {
    [v35 setTrackRunInfoEnabled:1];
    [v35 setActivityType:3];
  }

  else
  {
    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static WOLog.location);
    v35 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_20AEA4000, v35, v37, "[LocationProvider] Failed to construct a location manager", v38, 2u);
      MEMORY[0x20F2E9420](v38, -1, -1);
    }
  }

  v39 = *&v21[OBJC_IVAR___WOCoreLocationProvider_foregroundProvider + 24];
  v40 = *&v21[OBJC_IVAR___WOCoreLocationProvider_foregroundProvider + 32];
  v41 = __swift_project_boxed_opaque_existential_1(&v21[OBJC_IVAR___WOCoreLocationProvider_foregroundProvider], v39);
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v41, v41);
  v44 = &v46 - v43;
  (*(v42 + 16))(&v46 - v43);
  (*(v40 + 8))(v39, v40);
  (*(v42 + 8))(v44, v39);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR, MEMORY[0x277CBCEC8]);
  Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v8, v4);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm_11(v46);
  return v21;
}

uint64_t sub_20AEAA38C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t one-time initialization function for defaultTrackInfo()
{
  type metadata accessor for RunningTrackInfo();
  v0 = swift_allocObject();
  result = RunningTrackInfo.init(location:)(0);
  static RunningTrackInfo.defaultTrackInfo = v0;
  return result;
}

void closure #1 in LocationProvider.init(foregroundProvider:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    LocationProvider.onEffectiveVisibilityChange()();
  }
}

uint64_t LocationProvider.onEffectiveVisibilityChange()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v7);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *&v0[OBJC_IVAR___WOCoreLocationProvider_queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in LocationProvider.onEffectiveVisibilityChange();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_45_4;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v16 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type Published<Bool>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_20AEAA6F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

char *LocationRequestManager.init()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v0 - 8);
  v36 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v34 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v7, v8);
  v9 = type metadata accessor for DispatchQoS();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR___NLLocationRequestManager_queue;
  v27 = type metadata accessor for OS_dispatch_queue();
  aBlock = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  if (one-time initialization token for bundleIdentifier != -1)
  {
    swift_once();
  }

  v14 = static LocationRequestManager.bundleIdentifier;
  v13 = *algn_280CF23A8;

  aBlock = v14;
  v39 = v13;
  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B46D920);
  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v6, *MEMORY[0x277D85260], v30);
  v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = v31;
  *&v31[v28] = v15;
  *&v16[OBJC_IVAR___NLLocationRequestManager_locationManager] = 0;
  *&v16[OBJC_IVAR___NLLocationRequestManager_authorizationCompletionBlocks] = MEMORY[0x277D84F90];
  v17 = type metadata accessor for LocationRequestManager();
  v44.receiver = v16;
  v44.super_class = v17;
  v18 = objc_msgSendSuper2(&v44, sel_init);
  v19 = *&v18[OBJC_IVAR___NLLocationRequestManager_queue];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = partial apply for closure #1 in LocationRequestManager.init();
  v43 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v41 = &block_descriptor_89;
  v21 = _Block_copy(&aBlock);
  v22 = v18;
  v23 = v19;

  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v24 = v34;
  v25 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v24, v21);
  _Block_release(v21);

  (*(v35 + 8))(v24, v25);
  (*(v32 + 8))(v12, v33);

  return v22;
}

uint64_t sub_20AEAAD64()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t protocol witness for UnlockedSinceBootMonitorProtocol.delegate.setter in conformance UnlockedSinceBootMonitor(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void one-time initialization function for bundleIdentifier()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0x800000020B4605A0;
    v2 = 0xD00000000000001BLL;
  }

  static LocationRequestManager.bundleIdentifier = v2;
  *algn_280CF23A8 = v4;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_65(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_67(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_69(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_71(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_73(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_75(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_76(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_77(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_79(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_81(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_82(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_85(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_86(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_87(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_89(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_92(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_93(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_0(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_1(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_2(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_3(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_4(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_5(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_6(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_7(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_8(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_9(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_10(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_11(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_12(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_13(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_14(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_15(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_16(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_17(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_18(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_19(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_20(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_21(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_22(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm_23(void *a1)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t RunningTrackInfo.init(location:)(void *a1)
{
  *(v1 + 16) = a1;
  v2 = a1;
  v3 = [v2 trackRunInfo];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 trackProximity];
    v6 = 0x1020303uLL >> (8 * v5);
    if (v5 >= 5)
    {
      LOBYTE(v6) = 3;
    }

    *(v1 + 24) = v6;
    *(v1 + 32) = [v4 laneNumber];
    [v4 lapInfo];
    *(v1 + 40) = v9;
    *(v1 + 48) = [v4 laneCount];
    v7 = [v4 trackId];

    v2 = v4;
  }

  else
  {
    *(v1 + 24) = 3;
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 32) = 0;
    v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  *(v1 + 56) = v7;
  return v1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void closure #1 in LocationRequestManager.init()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() mainBundle];
    v4 = [v3 bundleIdentifier];

    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      v8 = *&v2[OBJC_IVAR___NLLocationRequestManager_queue];
      v9 = v2;
      v10 = v8;
      v11 = MEMORY[0x20F2E6C00](v5, v7);
    }

    else
    {
      v12 = *&v2[OBJC_IVAR___NLLocationRequestManager_queue];
      v13 = v2;
      v10 = v12;
      v11 = 0;
    }

    v14 = [objc_allocWithZone(MEMORY[0x277CBFC10]) initWithEffectiveBundleIdentifier:v11 delegate:v2 onQueue:v10];

    v15 = *&v2[OBJC_IVAR___NLLocationRequestManager_locationManager];
    *&v2[OBJC_IVAR___NLLocationRequestManager_locationManager] = v14;
  }
}

Swift::Void __swiftcall LocationRequestManager.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  isa = a1.super.isa;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v1 + OBJC_IVAR___NLLocationRequestManager_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v18 = [(objc_class *)isa _authorizationStatus];
    v19 = OBJC_IVAR___NLLocationRequestManager_authorizationCompletionBlocks;
    swift_beginAccess();
    v20 = *(v1 + v19);
    v21 = MEMORY[0x277D84F90];
    *(v1 + v19) = MEMORY[0x277D84F90];
    type metadata accessor for OS_dispatch_queue();
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    *(v23 + 24) = v18;
    aBlock[4] = partial apply for closure #1 in LocationRequestManager.locationManagerDidChangeAuthorization(_:);
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_12_4;
    v24 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = v21;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v10, v6, v24);
    _Block_release(v24);

    (*(v27 + 8))(v6, v3);
    (*(v7 + 8))(v10, v26);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20AEAC6E8()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

const char *WorkoutFeatures.feature.getter()
{
  result = "AnnounceVoiceFeedback";
  switch(*v0)
  {
    case 1:
      result = "SplitSegmentAveragePower";
      break;
    case 2:
      result = "IntervalAverageCadence";
      break;
    case 3:
      result = "IntervalActiveEnergy";
      break;
    case 4:
      result = "MapPageView";
      break;
    case 5:
      result = "InSessionPreferences";
      break;
    case 6:
      result = "SwiftUISummary";
      break;
    case 7:
      result = "WatchRemoteViewPreview";
      break;
    case 8:
      result = "SwimmingSegments";
      break;
    case 9:
      result = "RepeatIndicatorEverywhere";
      break;
    case 0xA:
      result = "MediaPlayback";
      break;
    case 0xB:
      result = "WorkoutPlatterRedesign";
      break;
    case 0xC:
      result = "ManualLogging";
      break;
    case 0xD:
      result = "MirroredStart";
      break;
    case 0xE:
      result = "Trimming";
      break;
    case 0xF:
      result = "Kahana";
      break;
    case 0x10:
      result = "UnmaskFitness";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t one-time initialization function for default(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
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

void partial apply for closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(uint64_t *a1@<X8>)
{
  closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), a1, *(v1 + 56));
}

{
  partial apply for closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(a1);
}

id specialized NestedDictionary.get(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = *(*(a3 + 56) + 8 * v5);
    if (*(v7 + 16))
    {

      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        return v10;
      }
    }
  }

  return 0;
}

uint64_t static WOLog.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

id SFPairedWatchWristStateToString(uint64_t a1)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v2 = MEMORY[0x277D82BE0](@"Wrist detect disabled");
        break;
      case 2:
        v2 = MEMORY[0x277D82BE0](@"Off");
        break;
      case 3:
        v2 = MEMORY[0x277D82BE0](@"On");
        break;
      default:
        v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Undefined state (%ld)", a1];
        break;
    }
  }

  else
  {
    v2 = MEMORY[0x277D82BE0](@"Unknown");
  }

  return v2;
}

uint64_t __os_log_helper_16_2_3_8_64_8_64_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 64;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 64;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

Swift::Void __swiftcall WorkoutDeviceWatchScanner.workoutDevicePairedWatchControllerDidUpdateStatus(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v15 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_14(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in WorkoutDeviceWatchScanner.workoutDevicePairedWatchControllerDidUpdateStatus(_:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_49;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_6(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v13);
  _Block_release(v13);

  (*(v15 + 8))(v5, v2);
  (*(v6 + 8))(v9, v14);
}

uint64_t sub_20AEAD30C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEAD344()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t type metadata accessor for WorkoutDeviceWatchScanner(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutDeviceWatchScanner;
  if (!type metadata singleton initialization cache for WorkoutDeviceWatchScanner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id *WorkoutConfigurationOccurrenceStore.topSuggested(for:)(id *a1)
{
  swift_getObjectType();
  v2 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v48 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v17)
  {
    v44 = a1;
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v45 = v2;
    a1 = (v2 + 32);
    while (1)
    {
      if (v5)
      {
        v2 = MEMORY[0x20F2E7A20](v4, v45);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_20;
        }

        v2 = a1[v4];
      }

      v7 = v2;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
      v46[0] = MEMORY[0x20F2E7290](5, &type metadata for ConfigurationType, v9);
      specialized Set._Variant.insert(_:)(&v47, 0);
      specialized Set._Variant.insert(_:)(&v47, 1);
      specialized Set._Variant.insert(_:)(&v47, 2);
      specialized Set._Variant.insert(_:)(&v47, 3);
      specialized Set._Variant.insert(_:)(&v47, 4);
      v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
      swift_beginAccess();
      if (*(v46[0] + 16) && (v11 = v7[v10], Hasher.init(_seed:)(), MEMORY[0x20F2E7FF0](v11 + 1), v12 = Hasher._finalize()(), v13 = -1 << *(v46[0] + 32), v14 = v12 & ~v13, ((*(v46[0] + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (*(*(v46[0] + 48) + v14) != v11)
        {
          v14 = (v14 + 1) & v15;
          if (((*(v46[0] + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = specialized ContiguousArray._endMutation()();
      }

      else
      {
LABEL_4:
      }

      if (v4 == i)
      {
        v16 = v48;
        a1 = v44;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v17 = v2;
    i = __CocoaSet.count.getter();
  }

  v16 = MEMORY[0x277D84F90];
LABEL_23:

  LOBYTE(v46[0]) = 0;
  v18 = static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:)(v16, v46, a1, 0);

  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_36:

    if ([a1 identifier] == 82)
    {
      return 0;
    }

    v36 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
    a1 = specialized static WorkoutConfiguration.make(activityType:goal:)(a1, v36);

    if (one-time initialization token for app == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_36;
  }

LABEL_25:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x20F2E7A20](0, v18);
    goto LABEL_28;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_43:
    swift_once();
LABEL_39:
    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static WOLog.app);
    v23 = a1;
    v20 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46[0] = v40;
      *v39 = 136315138;
      v41 = WorkoutConfiguration.logDisplayName.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v46);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_20AEA4000, v20, v38, "[topSuggested] workout_configuration not found, created transient: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v40);
      MEMORY[0x20F2E9420](v40, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    goto LABEL_33;
  }

  v19 = *(v18 + 32);
LABEL_28:
  v20 = v19;

  v21 = specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(v20, a1, 1);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.app);
  v23 = v21;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v48 = v28;
    *v26 = 138412546;
    v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v30 = *(v23 + v29);
    *(v26 + 4) = v30;
    *v27 = v30;
    *(v26 + 12) = 2080;
    v31 = v30;
    v32 = WorkoutConfiguration.logDisplayName.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v48);

    *(v26 + 14) = v34;
    _os_log_impl(&dword_20AEA4000, v24, v25, "[topSuggested] occurrence (%@) found for workout_configuration: %s", v26, 0x16u);
    _sSo8NSObjectCSgWOhTm_3(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v28);
    MEMORY[0x20F2E9420](v28, -1, -1);
    MEMORY[0x20F2E9420](v26, -1, -1);
  }

LABEL_33:
  return v23;
}

id CompoundActivityTypeProvider.lastGoal(for:)(char *a1)
{
  v1 = WorkoutConfigurationOccurrenceStore.recentWorkoutConfiguration(for:)(a1);
  if (v1 && (type metadata accessor for GoalWorkoutConfiguration(0), swift_dynamicCastClass()))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v4);

    return v4;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];

    return v3;
  }
}

void *WorkoutConfigurationOccurrenceStore.configurations(for:)(void *a1)
{
  v2 = v1;
  v4 = (*(v1 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_activityMoveModeBlock))();
  v5 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  if (v4 == 2)
  {
    swift_beginAccess();

    v7 = specialized _NativeDictionary.filter(_:)(v6);
  }

  else
  {
    swift_beginAccess();
    v7 = *(v2 + v5);
  }

  v8 = a1;
  v9 = specialized _NativeDictionary.filter(_:)(v7, v8);

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5Tm(*(v9 + 16), 0);
    v12 = specialized Sequence._copySequenceContents(initializing:)(&v15, v11 + 4, v10, v9);
    sub_20AEBDF2C(v15);
    if (v12 == v10)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_8:
  if ((*(v2 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated) & 1) == 0)
  {
    v13 = WorkoutConfigurationOccurrenceStore.deduplicate(_:)(v11);

    return v13;
  }

  return v11;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v49 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v43 = &v38 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV11WorkoutCore0E13ConfigurationCGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v48 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v40 = a4;
  v41 = v9 + 16;
  v47 = v9 + 32;
  v18 = v48 + 64;
  v39 = a1;
  v42 = v9;
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v44 = (v16 - 1) & v16;
LABEL_16:
    v22 = v19 | (v17 << 6);
    v23 = a4[6];
    v46 = *(v9 + 72);
    v24 = v43;
    (*(v9 + 16))(v43, v23 + v46 * v22, v8);
    v25 = *(a4[7] + 8 * v22);
    v45 = *(v9 + 32);
    v45(v49, v24, v8);
    v26 = v48;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v27 = v25;
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v28 = -1 << *(v26 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v9 = v42;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v18 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v9 = v42;
LABEL_26:
    *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    v36 = v48;
    result = (v45)(*(v48 + 48) + v31 * v46, v49, v8);
    *(*(v36 + 56) + 8 * v31) = v27;
    ++*(v36 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a1 = v39;
    a4 = v40;
    v16 = v44;
    if (!a3)
    {
      return v48;
    }
  }

  v20 = v17;
  while (1)
  {
    v17 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v48;
    }

    v21 = a1[v17];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
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
  v49 = type metadata accessor for UUID();
  v47 = *(v49 - 8);
  v9 = MEMORY[0x28223BE20](v49, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v43 = &v38 - v13;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v40 = v47 + 16;
  v41 = result;
  v48 = v47 + 32;
  v18 = result + 64;
  v42 = a1;
  v39 = a4;
  v19 = v49;
  while (v16)
  {
    v20 = v11;
    v21 = __clz(__rbit64(v16));
    v44 = (v16 - 1) & v16;
LABEL_16:
    v24 = v21 | (v17 << 6);
    v25 = a4[6];
    v26 = v47;
    v46 = *(v47 + 72);
    v27 = v43;
    (*(v47 + 16))(v43, v25 + v46 * v24, v19);
    v45 = *(a4[7] + 8 * v24);
    v28 = *(v26 + 32);
    v11 = v20;
    v28(v20, v27, v19);
    v15 = v41;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = -1 << *(v15 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v42;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v18 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v42;
LABEL_26:
    *(v18 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (v28)(*(v15 + 48) + v32 * v46, v11, v49);
    *(*(v15 + 56) + 8 * v32) = v45;
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39;
    v16 = v44;
    if (!a3)
    {
      return v15;
    }
  }

  v22 = v17;
  while (1)
  {
    v17 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v23 = a1[v17];
    ++v22;
    if (v23)
    {
      v20 = v11;
      v21 = __clz(__rbit64(v23));
      v44 = (v23 - 1) & v23;
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

void closure #4 in StandardActivityItemsDataSource.queryCompoundActivityPickerItems()(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.activityPicker);
  v7 = v5;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v25 = a3;
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    v13 = [*&v8[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider] activityTypeKeyForActivityType_];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v26);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Standard: activityType, key: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_7(v12);
    v18 = v12;
    a3 = v25;
    MEMORY[0x20F2E9420](v18, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v19 = WorkoutConfigurationOccurrenceStore.topSuggested(for:)(v7);
  v27 = 0;
  v20 = *&v8[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider];
  v21 = v7;
  v22 = [v20 lastGoalForActivityType_];
  v23 = objc_allocWithZone(type metadata accessor for StandardActivityPickerItem());
  v24 = specialized StandardActivityPickerItem.init(type:activityType:goal:topSuggested:)(&v27, v21, v22, v19);

  *a3 = v24;
}

id specialized Occurrence.__allocating_init(count:)(int a1)
{
  v25 = a1;
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v24[-v9];
  v12 = MEMORY[0x28223BE20](v8, v11);
  v14 = &v24[-v13];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v24[-v16];
  Date.init()();
  v18 = *(v2 + 16);
  v18(v14, v17, v1);
  v18(v10, v17, v1);
  v18(v6, v17, v1);
  v19 = type metadata accessor for Occurrence(0);
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC11WorkoutCore10Occurrence_count] = v25;
  v18(&v20[OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate], v14, v1);
  v18(&v20[OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate], v10, v1);
  v18(&v20[OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate], v6, v1);
  v26.receiver = v20;
  v26.super_class = v19;
  v21 = objc_msgSendSuper2(&v26, sel_init);
  v22 = *(v2 + 8);
  v22(v6, v1);
  v22(v10, v1);
  v22(v14, v1);
  v22(v17, v1);
  return v21;
}

uint64_t type metadata accessor for Occurrence(uint64_t a1)
{
  result = type metadata singleton initialization cache for Occurrence;
  if (!type metadata singleton initialization cache for Occurrence)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for GoalWorkoutConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for GoalWorkoutConfiguration;
  if (!type metadata singleton initialization cache for GoalWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FIUIWorkoutActivityType(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t StandardActivityItemsDataSource.queryCompoundActivityPickerItems()()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = *&v0[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider];
  v4 = [v3 isWheelchairUser];
  LODWORD(v5) = v0[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_swimmingSupported];
  v99 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode;
  v6 = [v2 defaultActivityTypesWithIsWheelchairUser:v4 isSwimmingSupported:v0[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_swimmingSupported] activityMoveMode:*&v0[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode]];
  v7 = v6;
  isa = v6;
  if (!v6)
  {
    type metadata accessor for FIUIWorkoutActivityType();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = Array._bridgeToObjectiveC()().super.isa;
  }

  v97 = isa;
  v98 = v7;
  v102 = v3;
  type metadata accessor for FIUIWorkoutActivityType();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = one-time initialization token for activityPicker;
  v11 = v6;
  if (v10 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.activityPicker);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20AEA4000, v13, v14, "Standard: defaultActivities", v15, 2u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }

    v95 = v9 >> 62;
    v103 = v2;
    v100 = v5;
    if (v9 >> 62)
    {
      v16 = __CocoaSet.count.getter();
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v114 = v1;
    v113 = v9;
    if (v16)
    {
      v5 = 0;
      v107 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider;
      v17 = v9 & 0xC000000000000001;
      v111 = v9 & 0xFFFFFFFFFFFFFF8;
      v105 = v9 & 0xC000000000000001;
      do
      {
        if (v17)
        {
          v19 = MEMORY[0x20F2E7A20](v5, v9);
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_19:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v111 + 16))
          {
            __break(1u);
            goto LABEL_44;
          }

          v19 = *(v9 + 8 * v5 + 32);
          v9 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_19;
          }
        }

        v20 = v19;
        v21 = v1;
        v22 = Logger.logObject.getter();
        v2 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v22, v2))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v117[0] = v24;
          *v23 = 136315138;
          v25 = [*&v1[v107] activityTypeKeyForActivityType_];
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v109 = v20;
          v27 = v9;
          v28 = v16;
          v30 = v29;

          v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v30, v117);
          v16 = v28;
          v9 = v27;

          *(v23 + 4) = v31;
          v1 = v114;
          _os_log_impl(&dword_20AEA4000, v22, v2, "Standard: defaultActivity, key: %s)", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm_7(v24);
          MEMORY[0x20F2E9420](v24, -1, -1);
          v32 = v23;
          v17 = v105;
          MEMORY[0x20F2E9420](v32, -1, -1);
        }

        else
        {
        }

        ++v5;
        v18 = v9 == v16;
        v9 = v113;
      }

      while (!v18);
    }

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      v2 = v103;
      v5 = v100;
      if (v95)
      {
        v36 = __CocoaSet.count.getter();
      }

      else
      {
        v36 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v35 + 4) = v36;

      _os_log_impl(&dword_20AEA4000, v33, v34, "Standard: defaultActivities.count: %ld", v35, 0xCu);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    else
    {

      v2 = v103;
      v5 = v100;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v37 = static WorkoutDevicesProvider.shared;
    v38 = [v102 isWheelchairUser];
    v117[0] = v37;
    v39 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();
    v96 = v37;
    v117[0] = v37;
    v40 = [v2 unsupportedActivityTypesWithIsWheelchairUser:v38 isSwimmingSupported:v5 supportsPairedWatchFeatures:v39 supportsExternalHeartRateSensorFeatures:WorkoutReadinessChecker.supportsExternalHeartRateSensorFeatures()()];
    if (!v40)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = Array._bridgeToObjectiveC()().super.isa;
    }

    v101 = v40;
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_20AEA4000, v42, v43, "Standard: unsupportedActivities", v44, 2u);
      MEMORY[0x20F2E9420](v44, -1, -1);
    }

    v94 = v41 >> 62;
    if (v41 >> 62)
    {
      break;
    }

    v45 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v108 = v41;
    if (!v45)
    {
      goto LABEL_49;
    }

LABEL_34:
    v9 = 0;
    v104 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider;
    v110 = v41 & 0xFFFFFFFFFFFFFF8;
    v112 = v41 & 0xC000000000000001;
    v106 = v45;
    while (1)
    {
      if (v112)
      {
        v46 = MEMORY[0x20F2E7A20](v9, v41);
      }

      else
      {
        if (v9 >= *(v110 + 16))
        {
          goto LABEL_45;
        }

        v46 = *(v41 + 8 * v9 + 32);
      }

      v47 = v46;
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v48 = v1;
      v2 = v47;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v117[0] = v52;
        *v51 = 136315138;
        v53 = [*&v1[v104] activityTypeKeyForActivityType_];
        v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v56 = v55;

        v57 = v54;
        v1 = v114;
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v56, v117);
        v41 = v108;

        *(v51 + 4) = v58;
        _os_log_impl(&dword_20AEA4000, v49, v50, "Standard: unsupportedActivity, key: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm_7(v52);
        MEMORY[0x20F2E9420](v52, -1, -1);
        v59 = v51;
        v45 = v106;
        MEMORY[0x20F2E9420](v59, -1, -1);
      }

      ++v9;
      if (v5 == v45)
      {
        goto LABEL_49;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v45 = __CocoaSet.count.getter();
  v108 = v41;
  if (v45)
  {
    goto LABEL_34;
  }

LABEL_49:

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    v64 = v98;
    v63 = v99;
    v65 = v102;
    v66 = v97;
    if (v94)
    {
      v67 = __CocoaSet.count.getter();
    }

    else
    {
      v67 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v62 + 4) = v67;

    _os_log_impl(&dword_20AEA4000, v60, v61, "Standard: unsupportedActivities.count: %ld", v62, 0xCu);
    MEMORY[0x20F2E9420](v62, -1, -1);
  }

  else
  {

    v64 = v98;
    v63 = v99;
    v65 = v102;
    v66 = v97;
  }

  if ([v65 hasFetchedWheelchairUse])
  {
    [*&v1[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider] setActivityPickerWheelchairMode_];
  }

  v68 = *&v1[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider];
  [v68 setActivityPickerActivityMoveMode:*&v1[v63] defaultActivityTypes:v66];

  v69 = [v68 workoutActivityTypesInFrequencyOrderDescendingWithDefaultActivities:v64 unsupportedActivities:v101];
  v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v117[0] = MEMORY[0x277D84F90];
  if (v70 >> 62)
  {
    goto LABEL_92;
  }

  v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v72 = MEMORY[0x277D84F90];
    if (v71)
    {
      v73 = 0;
      while (1)
      {
        if ((v70 & 0xC000000000000001) != 0)
        {
          v74 = MEMORY[0x20F2E7A20](v73, v70);
        }

        else
        {
          if (v73 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_89;
          }

          v74 = *(v70 + 8 * v73 + 32);
        }

        v75 = v74;
        v76 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        if ([v74 isStandard])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v73;
        if (v76 == v71)
        {
          v77 = v117[0];
          v72 = MEMORY[0x277D84F90];
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
      v71 = __CocoaSet.count.getter();
      continue;
    }

    break;
  }

  v77 = MEMORY[0x277D84F90];
LABEL_72:

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    *v80 = 0;
    _os_log_impl(&dword_20AEA4000, v78, v79, "Standard: activityTypes", v80, 2u);
    MEMORY[0x20F2E9420](v80, -1, -1);
  }

  v81 = v77 < 0 || (v77 & 0x4000000000000000) != 0;
  if (!v81)
  {
    v82 = *(v77 + 16);
    if (!v82)
    {
      goto LABEL_94;
    }

    goto LABEL_79;
  }

  v82 = __CocoaSet.count.getter();
  if (v82)
  {
LABEL_79:
    v117[0] = v72;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v82 < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v83 = 0;
    v70 = 0;
    while (1)
    {
      v84 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_90;
      }

      if ((v77 & 0xC000000000000001) != 0)
      {
        v85 = MEMORY[0x20F2E7A20](v83, v77);
      }

      else
      {
        if (v83 >= *(v77 + 16))
        {
          goto LABEL_91;
        }

        v85 = *(v77 + 8 * v83 + 32);
      }

      v86 = v85;
      v115 = v85;
      closure #4 in StandardActivityItemsDataSource.queryCompoundActivityPickerItems()(&v115, v114, &v116);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v83;
      if (v84 == v82)
      {

        v87 = v117[0];
        goto LABEL_95;
      }
    }
  }

LABEL_94:

  v87 = MEMORY[0x277D84F90];
LABEL_95:

  v88 = Logger.logObject.getter();
  v89 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 134217984;
    if (v81)
    {
      v91 = __CocoaSet.count.getter();
    }

    else
    {
      v91 = *(v77 + 16);
    }

    *(v90 + 4) = v91;

    _os_log_impl(&dword_20AEA4000, v88, v89, "Standard: activityTypes.count: %ld", v90, 0xCu);
    MEMORY[0x20F2E9420](v90, -1, -1);
  }

  else
  {
  }

  v92 = specialized _arrayForceCast<A, B>(_:)(v87);

  return v92;
}

uint64_t specialized CompoundActivityTypeProvider.activityTypeKey(for:)(void *a1)
{
  v2 = [a1 effectiveTypeIdentifier];
  v3 = [a1 isIndoor];
  v4 = [a1 swimmingLocationType];
  v5 = [a1 metadata];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  if (v2 != 46)
  {
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D83E88];
    *(v10 + 16) = xmmword_20B423A90;
    v12 = MEMORY[0x277D83ED0];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    *(v10 + 32) = v2;
LABEL_5:
    v13 = String.init(format:_:)();
    specialized static WOCatalogMediaTypeHelper.guidedTypeString(from:)(v6);
    v15 = v14;

    if (v15)
    {
      v16 = String.init<A>(_:)();
      String.append<A>(contentsOf:)();
    }

    else
    {
      if (!v3 || ![objc_opt_self() shouldDisambiguateOnLocationType_])
      {
        return v13;
      }

      v16 = String.init<A>(_:)();
      String.append<A>(contentsOf:)();
    }

    return v16;
  }

  result = swift_allocObject();
  *(result + 16) = xmmword_20B4282E0;
  v8 = MEMORY[0x277D83E88];
  v9 = MEMORY[0x277D83ED0];
  *(result + 56) = MEMORY[0x277D83E88];
  *(result + 64) = v9;
  *(result + 32) = 46;
  *(result + 96) = v8;
  *(result + 104) = v9;
  if ((v4 & 0x8000000000000000) == 0)
  {
    *(result + 72) = v4;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_2(v4);
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
    return MEMORY[0x277D84F90];
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
          return MEMORY[0x277D84F90];
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for URLQueryItem();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_5(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_6(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_7(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_9(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_10(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_11(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_12(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_13(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_15(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_16(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_17(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_19(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSo8NSObjectCSgWOhTm_20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t specialized Array._copyToContiguousArray()(unint64_t a1)
{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore20ActivityTypeListItemC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore0H16ChartDataElementC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo10CLLocationC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore04GoalH13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore04RaceH13ConfigurationC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo17HKWorkoutActivityC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo30NLSessionActivitySegmentMarkerC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11WorkoutCore23QueriedExternalProviderC_Tt1g5, specialized Array._copyContents(initializing:));
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

uint64_t specialized static WOCatalogMediaTypeHelper.guidedTypeString(from:)(uint64_t a1)
{
  v2 = static HealthDataConstants.mediaTypeProperty.getter();
  if (*(a1 + 16))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(v2, v3);
    v6 = v5;

    if (v6)
    {
      outlined init with copy of Any(*(a1 + 56) + 32 * v4, v8);
      if (swift_dynamicCast())
      {
        return *&aGuidedrGuidedw[8 * MEMORY[0x20F2E52F0]()];
      }
    }
  }

  else
  {
  }

  return 0;
}

char *WorkoutConfigurationOccurrenceStore.recentWorkoutConfiguration(for:)(char *a1)
{
  v47 = type metadata accessor for Date();
  v2 = *(v47 - 1);
  v4 = MEMORY[0x28223BE20](v47, v3);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v48 = &v41 - v7;
  v8 = WorkoutConfigurationOccurrenceStore.configurations(for:)(a1);
  v9 = v8;
  if (v8 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v46 = v9 & 0xC000000000000001;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x20F2E7A20](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_36;
      }

      v11 = *(v9 + 32);
    }

    v50 = v11;
    v41 = a1;
    if (i == 1)
    {
LABEL_7:
      v2 = v50;
LABEL_8:

      a1 = specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(v2, v41, 1);
      if (one-time initialization token for app == -1)
      {
LABEL_9:
        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static WOLog.app);
        v13 = a1;
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          v51 = v17;
          *v16 = 136315138;
          v18 = WorkoutConfiguration.logDisplayName.getter();
          v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v51);

          *(v16 + 4) = v20;
          _os_log_impl(&dword_20AEA4000, v14, v15, "[recentWorkoutConfiguration] found workout_configuration: %s", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm_6(v17);
          MEMORY[0x20F2E9420](v17, -1, -1);
          MEMORY[0x20F2E9420](v16, -1, -1);
        }

        return v13;
      }

LABEL_36:
      swift_once();
      goto LABEL_9;
    }

    v42 = v9 & 0xFFFFFFFFFFFFFF8;
    v44 = v9;
    v45 = (v2 + 16);
    v43 = (v2 + 8);
    v21 = 1;
    while (1)
    {
      if (v46)
      {
        v22 = MEMORY[0x20F2E7A20](v21, v9);
      }

      else
      {
        if ((v21 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        if (v21 >= *(v42 + 16))
        {
          goto LABEL_26;
        }

        v22 = *(v9 + 8 * v21 + 32);
      }

      v2 = v22;
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      v25 = v50;
      swift_beginAccess();
      v26 = *&v25[v24];
      v27 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
      swift_beginAccess();
      v28 = *v45;
      a1 = v47;
      v29 = v48;
      (*v45)(v48, v26 + v27, v47);
      v30 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
      swift_beginAccess();
      v31 = *&v2[v30];
      v32 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
      swift_beginAccess();
      v33 = v31 + v32;
      v34 = v49;
      v28(v49, v33, a1);
      LOBYTE(v32) = static Date.< infix(_:_:)();
      v35 = *v43;
      (*v43)(v34, a1);
      v35(v29, a1);
      if (v32)
      {

        v50 = v2;
        ++v21;
        v9 = v44;
        if (v23 == i)
        {
          goto LABEL_8;
        }
      }

      else
      {

        ++v21;
        v9 = v44;
        if (v23 == i)
        {
          goto LABEL_7;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static WOLog.app);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20AEA4000, v37, v38, "[recentWorkoutConfiguration] workout_configuration not found. Returning nil", v39, 2u);
    MEMORY[0x20F2E9420](v39, -1, -1);
  }

  return 0;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v10 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v10;
      v12 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy10Foundation4UUIDV11WorkoutCore0K13ConfigurationCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab28VKXEfU_10Foundation4UUIDV_11k8Core0J13M4CTG5ANxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjMIsgnndzo_Tf1nc_n04_s11kw3A28m82OccurrenceStoreC14configurations3forSayAA0aC0CGSo23FIUIWorkoutActivityTypeC_tFSb10U26UUIDV3key_AG5valuet_tXEfU_So23FIUIWorkoutActivityTypeCTf1nnc_n(v14, v6, a1, v15);
      MEMORY[0x20F2E9420](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x28223BE20](v8, v9);
  bzero(v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v11 = v10;
  v12 = specialized closure #1 in _NativeDictionary.filter(_:)((v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v11);

  if (v2)
  {
    swift_willThrow();
  }

  return v12;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v41 = a2;
  v54 = a4;
  v42 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
  v6 = MEMORY[0x28223BE20](v53, v5);
  v52 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v51 = &v40 - v9;
  v50 = type metadata accessor for UUID();
  result = MEMORY[0x28223BE20](v50, v10);
  v57 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v55 = a3;
  v15 = *(a3 + 64);
  v45 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v43 = 0;
  v44 = (v16 + 63) >> 6;
  v48 = v12 + 16;
  v49 = v12;
  v47 = v12 + 8;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v56 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v14 << 6);
    v23 = v55;
    v25 = v49;
    v24 = v50;
    v26 = *(v49 + 16);
    v27 = v57;
    v26(v57, v55[6] + *(v49 + 72) * v22, v50);
    v28 = v23[7];
    v46 = v22;
    v29 = *(v28 + 8 * v22);
    v30 = v51;
    v26(v51, v27, v24);
    v31 = v52;
    v32 = v53;
    *(v30 + *(v53 + 48)) = v29;
    _s10Foundation4UUIDVSgWOcTm_0(v30, v31, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
    v33 = *(v31 + *(v32 + 48));
    v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v35 = *&v33[v34];
    v36 = v29;
    v37 = v35;

    v38 = *(v25 + 8);
    v38(v31, v24);
    LODWORD(v33) = [v54 isEqual_];

    _sSo8NSObjectCSgWOhTm_3(v30, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
    result = (v38)(v57, v24);
    v18 = v56;
    if (v33)
    {
      *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v42, v41, v43, v55);
      }
    }
  }

  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v44)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v42, v41, v43, v55);
    }

    v21 = *(v45 + 8 * v14);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v56 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_0(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_1(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_2(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_3(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_4(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_5(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_6(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_7(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_8(void *a1)
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

uint64_t __swift_destroy_boxed_opaque_existential_0Tm_9(void *a1)
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

uint64_t static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:)(unint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v111 = a3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  KeyPath = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v109 - v15;
  LODWORD(a2) = *a2;
  v124 = a1;
  v117 = a1;

  Date.init()();
  if (one-time initialization token for app != -1)
  {
    goto LABEL_132;
  }

LABEL_2:
  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.app);
  (*(v9 + 16))(KeyPath, v16, v8);
  v19 = a4;
  v20 = Logger.logObject.getter();
  v21 = v8;
  v22 = static os_log_type_t.default.getter();

  v23 = os_log_type_enabled(v20, v22);
  v115 = v16;
  v116 = v9;
  v113 = v21;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v121[0] = v109;
    *v24 = 134218754;
    v110 = v5;
    v112 = a4;
    if (v117 >> 62)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    LOBYTE(v119[0]) = a2;
    v27 = WorkoutConfigurationFilterType.displayName.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v121);

    *(v24 + 14) = v29;
    *(v24 + 22) = 2112;
    *(v24 + 24) = v19;
    *v25 = v112;
    *(v24 + 32) = 2080;
    v30 = one-time initialization token for logDateFormatter;
    v31 = v19;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v34 = [v32 stringFromDate_];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = v116;
    v39 = v113;
    v114 = *(v116 + 8);
    v114(KeyPath, v113);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v37, v121);

    *(v24 + 34) = v40;
    v41 = v22;
    v8 = v39;
    _os_log_impl(&dword_20AEA4000, v20, v41, "sort %ld workout_configurations with filterType: (%s), current location: %@, now: %s", v24, 0x2Au);
    _sSo8NSObjectCSgWOhTm_3(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v42 = v25;
    v9 = v38;
    MEMORY[0x20F2E9420](v42, -1, -1);
    v43 = v109;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v43, -1, -1);
    MEMORY[0x20F2E9420](v24, -1, -1);

    v16 = v115;
    v5 = v110;
    a4 = v112;
  }

  else
  {

    v114 = *(v9 + 8);
    v114(KeyPath, v21);
    v8 = v21;
  }

  v44 = v117;
  if (a2 > 2)
  {
    if ((a2 - 3) >= 2)
    {
      LOBYTE(v121[0]) = 5;

      v52 = specialized static WorkoutConfigurationOccurrenceStore.sortedRaceConfigurations(_:filterType:)(v57, v121);

      if (v52 >> 62)
      {
        type metadata accessor for WorkoutConfiguration(0);

        v16 = v115;
        v93 = _bridgeCocoaArray<A>(_:)();
        swift_bridgeObjectRelease_n();
        v52 = v93;
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for WorkoutConfiguration(0);
      }
    }

    else
    {

      v52 = v44;
    }

    goto LABEL_164;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v122 = &type metadata for WorkoutFeatures;
      v123 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      LOBYTE(v121[0]) = 11;
      isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1Tm_6(v121);
      v121[0] = MEMORY[0x277D84F90];
      if (v44 >> 62)
      {
        a2 = __CocoaSet.count.getter();
      }

      else
      {
        a2 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (a2)
      {
        v8 = 0;
        v16 = (v44 & 0xC000000000000001);
        v9 = v44 & 0xFFFFFFFFFFFFFF8;
        do
        {
          if (v16)
          {
            v58 = MEMORY[0x20F2E7A20](v8, v44);
          }

          else
          {
            if (v8 >= *(v9 + 16))
            {
              goto LABEL_128;
            }

            v58 = *(v44 + 8 * v8 + 32);
          }

          v59 = v58;
          v5 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_126;
          }

          type metadata accessor for GoalWorkoutConfiguration(0);
          if (swift_dynamicCastClass())
          {
            KeyPath = swift_getKeyPath();
            swift_getKeyPath();
            v60 = v59;
            static Published.subscript.getter(v119);

            v61 = v119[0];
            a4 = [v119[0] goalTypeIdentifier];

            if (a4)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              a4 = *(v121[0] + 2);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            v44 = v117;
          }

          else
          {
          }

          ++v8;
        }

        while (v5 != a2);
        v52 = v121[0];
        v8 = v113;
        v16 = v115;
      }

      else
      {
        v52 = MEMORY[0x277D84F90];
      }

      goto LABEL_74;
    }

    v122 = &type metadata for WorkoutFeatures;
    v123 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v121[0]) = 11;
    isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm_6(v121);
    if ([v111 identifier] == 82)
    {
      goto LABEL_106;
    }

    v5 = (v44 >> 62);
    if (v44 >> 62)
    {
      v45 = __CocoaSet.count.getter();
      if (!v45)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
LABEL_27:
        v86 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
        v51 = specialized static WorkoutConfiguration.make(activityType:goal:)(v111, v86);

        swift_beginAccess();
        if (!v5 || (__CocoaSet.count.getter() & 0x8000000000000000) == 0)
        {
          v51 = v51;
          specialized Array.replaceSubrange<A>(_:with:)(0, 0, v51);
          swift_endAccess();

          goto LABEL_105;
        }

        __break(1u);
        goto LABEL_178;
      }
    }

    v112 = v44 >> 62;
    v46 = v44 & 0xC000000000000001;
    v8 = v44 & 0xFFFFFFFFFFFFFF8;

    a2 = 0;
    v5 = &selRef_adjustedStatisticsForStatistics_;
    v16 = &unk_20B438F40;
    while (1)
    {
      if (v46)
      {
        v47 = MEMORY[0x20F2E7A20](a2, v44);
      }

      else
      {
        if (a2 >= *(v8 + 16))
        {
          __break(1u);
LABEL_135:
          a2 = __CocoaSet.count.getter();
          goto LABEL_34;
        }

        v47 = *(v44 + 8 * a2 + 32);
      }

      v48 = v47;
      type metadata accessor for GoalWorkoutConfiguration(0);
      if (swift_dynamicCastClass())
      {
        swift_getKeyPath();
        KeyPath = swift_getKeyPath();
        static Published.subscript.getter(v121);

        v49 = v121[0];
        a4 = [v121[0] goalTypeIdentifier];

        v9 = v116;
        if (!a4)
        {

          swift_beginAccess();
          v86 = &v124;
          v51 = specialized Array.remove(at:)(a2);
          if (!(v124 >> 62))
          {
LABEL_104:
            specialized Array.replaceSubrange<A>(_:with:)(0, 0, v51);
            swift_endAccess();
            v8 = v113;
            v16 = v115;
LABEL_105:

LABEL_106:
            swift_beginAccess();
            v87 = v124;
            v120 = MEMORY[0x277D84F90];
            if (v124 >> 62)
            {
              a2 = __CocoaSet.count.getter();
            }

            else
            {
              a2 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (a2)
            {
              v8 = 0;
              a4 = v87 & 0xC000000000000001;
              KeyPath = v87 & 0xFFFFFFFFFFFFFF8;
              while (1)
              {
                if (a4)
                {
                  v16 = v87;
                  v88 = MEMORY[0x20F2E7A20](v8, v87);
                }

                else
                {
                  if (v8 >= *(KeyPath + 16))
                  {
                    goto LABEL_130;
                  }

                  v16 = v87;
                  v88 = *(v87 + 8 * v8 + 32);
                }

                v89 = v88;
                v5 = (v8 + 1);
                if (__OFADD__(v8, 1))
                {
                  goto LABEL_129;
                }

                v90 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
                swift_beginAccess();
                if (v89[v90] - 1 >= 3)
                {
                  if (v89[v90])
                  {
                    goto LABEL_121;
                  }
                }

                else
                {
                  if (one-time initialization token for shared != -1)
                  {
                    swift_once();
                  }

                  v118 = static WorkoutDevicesProvider.shared;
                  v91 = static WorkoutDevicesProvider.shared;
                  v92 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();

                  if (!v92)
                  {
LABEL_121:

                    goto LABEL_112;
                  }
                }

                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                v9 = v116;
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
LABEL_112:
                ++v8;
                v87 = v16;
                if (v5 == a2)
                {
                  v52 = v120;
                  v8 = v113;
                  v16 = v115;
                  goto LABEL_74;
                }
              }
            }

            v52 = MEMORY[0x277D84F90];
LABEL_74:

            goto LABEL_164;
          }

LABEL_178:
          if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
          {
            goto LABEL_104;
          }

          __break(1u);

          __break(1u);
LABEL_180:
          if (v86 >= 0xA)
          {
            v108 = 10;
          }

          else
          {
            v108 = v86;
          }

          if (v86 >= 0)
          {
            v95 = v108;
          }

          else
          {
            v95 = 10;
          }

          result = __CocoaSet.count.getter();
          if (result >= v95)
          {
            goto LABEL_146;
          }

LABEL_187:
          __break(1u);
          return result;
        }
      }

      else
      {

        v9 = v116;
      }

      v50 = a2 + 1;
      v44 = v117;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_131;
      }

      ++a2;
      if (v50 == v45)
      {

        v5 = v112;
        v8 = v113;
        v16 = v115;
        goto LABEL_27;
      }
    }
  }

  LOBYTE(v121[0]) = 0;

  KeyPath = static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(v53, v121, a4);

  v119[0] = MEMORY[0x277D84F90];
  if (v44 >> 62)
  {
    goto LABEL_135;
  }

  a2 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_34:

  if (!a2)
  {
    goto LABEL_65;
  }

  v110 = v5;
  v8 = 0;
  v5 = (v44 & 0xC000000000000001);
  v9 = v44 & 0xFFFFFFFFFFFFFF8;
  a4 = &OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  do
  {
    if (v5)
    {
      v54 = MEMORY[0x20F2E7A20](v8, v44);
    }

    else
    {
      if (v8 >= *(v9 + 16))
      {
        goto LABEL_127;
      }

      v54 = *(v44 + 8 * v8 + 32);
    }

    v16 = v54;
    v55 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      swift_once();
      goto LABEL_2;
    }

    v56 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    swift_beginAccess();
    if (v16[v56] == 2)
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v44 = v117;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    ++v8;
  }

  while (v55 != a2);
  v5 = v110;
LABEL_65:

  MEMORY[0x28223BE20](v62, v63);
  v64 = v115;
  *(&v109 - 2) = v5;
  *(&v109 - 1) = v64;

  v119[0] = specialized Array._copyToContiguousArray()(v65);
  specialized MutableCollection<>.sort(by:)(partial apply for closure #2 in static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:), (&v109 - 4));

  a4 = v119[0];
  MEMORY[0x28223BE20](v66, v67);
  *(&v109 - 2) = v5;
  *(&v109 - 1) = v64;

  specialized Sequence.forEach(_:)(partial apply for closure #3 in static WorkoutConfigurationOccurrenceStore.sortedWorkoutConfigurations(_:filterType:activityType:currentLocation:), (&v109 - 4), a4);

  v68 = KeyPath >> 62;
  if (!(KeyPath >> 62))
  {
    v69 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v69)
    {
      goto LABEL_67;
    }

LABEL_140:

    goto LABEL_141;
  }

  v69 = __CocoaSet.count.getter();
  if (!v69)
  {
    goto LABEL_140;
  }

LABEL_67:
  if ((v69 & 0x8000000000000000) != 0)
  {
    v70 = 2;
    if (!v68)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if (v69 >= 2)
    {
      v70 = 2;
    }

    else
    {
      v70 = v69;
    }

    if (!v68)
    {
LABEL_72:
      v71 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_78;
    }
  }

  if (__CocoaSet.count.getter() < 0)
  {
    goto LABEL_167;
  }

  v71 = __CocoaSet.count.getter();
LABEL_78:
  if (v71 < v70)
  {
    goto LABEL_168;
  }

  if ((KeyPath & 0xC000000000000001) != 0)
  {
    type metadata accessor for RaceWorkoutConfiguration(0);

    v72 = 0;
    do
    {
      v73 = v72 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v72);
      v72 = v73;
    }

    while (v70 != v73);
  }

  else
  {
  }

  if (v68)
  {
    v74 = _CocoaArrayWrapper.subscript.getter();
    v75 = v77;
    v68 = v78;
    v76 = v79;

    if (v76)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

  v74 = KeyPath & 0xFFFFFFFFFFFFFF8;
  v75 = (KeyPath & 0xFFFFFFFFFFFFFF8) + 32;
  v76 = (2 * v70) | 1;
  if ((v76 & 1) == 0)
  {
LABEL_88:
    specialized _copyCollectionToContiguousArray<A>(_:)(v74, v75, v68, v76, type metadata accessor for RaceWorkoutConfiguration);
    v81 = v80;
    goto LABEL_95;
  }

LABEL_89:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v82 = swift_dynamicCastClass();
  if (!v82)
  {
    swift_unknownObjectRelease();
    v82 = MEMORY[0x277D84F90];
  }

  v83 = *(v82 + 16);

  if (__OFSUB__(v76 >> 1, v68))
  {
    __break(1u);
    goto LABEL_176;
  }

  if (v83 != (v76 >> 1) - v68)
  {
LABEL_176:
    swift_unknownObjectRelease_n();
    goto LABEL_88;
  }

  v81 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v81)
  {
    v81 = MEMORY[0x277D84F90];
LABEL_95:
    swift_unknownObjectRelease();
  }

  if (v81 < 0 || (v81 & 0x4000000000000000) != 0)
  {
    goto LABEL_169;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for WorkoutConfiguration(0);
  v84 = v81;
  while (1)
  {

    if ((a4 & 0x8000000000000000) != 0 || (a4 & 0x4000000000000000) != 0)
    {
      v85 = __CocoaSet.count.getter();
    }

    else
    {
      v85 = *(a4 + 16);
    }

    specialized Array.replaceSubrange<A>(_:with:)(v85 != 0, v85 != 0, v84);

    a4 = v119[0];
LABEL_141:
    v8 = a4 >> 62;
    if (!(a4 >> 62))
    {
      break;
    }

    v86 = __CocoaSet.count.getter();
    if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
    {
      goto LABEL_180;
    }

    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    type metadata accessor for WorkoutConfiguration(0);

    v84 = _bridgeCocoaArray<A>(_:)();
  }

  result = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 0xA)
  {
    v95 = 10;
  }

  else
  {
    v95 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v95)
  {
    goto LABEL_187;
  }

LABEL_146:
  if ((a4 & 0xC000000000000001) != 0 && v95)
  {
    type metadata accessor for WorkoutConfiguration(0);

    v96 = 0;
    do
    {
      v97 = v96 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v96);
      v96 = v97;
    }

    while (v95 != v97);
  }

  else
  {
  }

  if (v8)
  {
    v99 = _CocoaArrayWrapper.subscript.getter();
    v100 = v102;
    v98 = v103;
    v101 = v104;

    if (v101)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  v98 = 0;
  v99 = a4 & 0xFFFFFFFFFFFFFF8;
  v100 = (a4 & 0xFFFFFFFFFFFFFF8) + 32;
  v101 = (2 * v95) | 1;
  if ((v101 & 1) == 0)
  {
LABEL_156:
    specialized _copyCollectionToContiguousArray<A>(_:)(v99, v100, v98, v101, type metadata accessor for WorkoutConfiguration);
    v52 = v105;
    v8 = v113;
    v16 = v115;
    goto LABEL_163;
  }

LABEL_157:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v106 = swift_dynamicCastClass();
  if (!v106)
  {
    swift_unknownObjectRelease();
    v106 = MEMORY[0x277D84F90];
  }

  v107 = *(v106 + 16);

  if (__OFSUB__(v101 >> 1, v98))
  {
    __break(1u);
    goto LABEL_174;
  }

  if (v107 != (v101 >> 1) - v98)
  {
LABEL_174:
    swift_unknownObjectRelease_n();
    goto LABEL_156;
  }

  v52 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v8 = v113;
  v16 = v115;
  if (!v52)
  {
    v52 = MEMORY[0x277D84F90];
LABEL_163:
    swift_unknownObjectRelease();
  }

LABEL_164:
  v114(v16, v8);

  return v52;
}

uint64_t WorkoutConfigurationFilterType.displayName.getter()
{
  v1 = *v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = "ATION_FILTER_GOAL_BASED";
  v5 = "ATION_FILTER_ROUTE";
  v6 = 0xD000000000000025;
  v7 = "_averageCacheValue";
  if (v1 != 4)
  {
    v7 = "ATION_FILTER_ALL";
  }

  if (v1 != 3)
  {
    v5 = v7;
    v6 = 0xD000000000000022;
  }

  v8 = "ATION_FILTER_PACER";
  if (v1 == 1)
  {
    v9 = 0xD000000000000020;
  }

  else
  {
    v8 = "ATION_FILTER_INTERVAL";
    v9 = 0xD000000000000027;
  }

  if (v1)
  {
    v4 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0xD000000000000026;
  }

  if (v1 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v1 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  v13 = MEMORY[0x20F2E6C00](v12, v11 | 0x8000000000000000);
  v14 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v15 = [v3 localizedStringForKey:v13 value:0 table:v14];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v16;
}

unint64_t static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(unint64_t a1, unsigned __int8 *a2, void *a3)
{
  LODWORD(v3) = *a2;
  if (a3)
  {
    v4 = a3;
    v6 = one-time initialization token for race;
    v7 = a3;
    if (v6 != -1)
    {
      goto LABEL_43;
    }

    while (1)
    {
      v8 = type metadata accessor for Logger();
      v9 = __swift_project_value_buffer(v8, static WOLog.race);
      v10 = v7;
      v7 = v9;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      v57 = v3;
      v56 = v4;
      if (os_log_type_enabled(v11, v12))
      {
        v13 = v4;
        v4 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v60[0] = v15;
        *v4 = 136315650;
        LOBYTE(v61) = v3;
        v16 = WorkoutConfigurationFilterType.displayName.getter();
        v7 = v17;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v60);

        *(v4 + 4) = v18;
        *(v4 + 12) = 2112;
        *(v4 + 14) = v10;
        *v14 = v13;
        *(v4 + 22) = 2048;
        *(v4 + 24) = 0x408F400000000000;
        v19 = v10;
        _os_log_impl(&dword_20AEA4000, v11, v12, "Race: filter (%s) currentLocation: %@, raceMaxDistanceFromCurrentLocation: %f meters", v4, 0x20u);
        _sSo8NSObjectCSgWOhTm_3(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v14, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm_6(v15);
        MEMORY[0x20F2E9420](v15, -1, -1);
        MEMORY[0x20F2E9420](v4, -1, -1);
      }

      v61 = MEMORY[0x277D84F90];
      if (a1 >> 62)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v20)
      {
        v4 = 0;
        v3 = a1 & 0xC000000000000001;
        do
        {
          if (v3)
          {
            v21 = MEMORY[0x20F2E7A20](v4, a1);
          }

          else
          {
            if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_40;
            }

            v21 = *(a1 + 8 * v4 + 32);
          }

          v22 = v21;
          v23 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

          v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
          swift_beginAccess();
          if (*(v7 + v22) == 2)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v7 = &v61;
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v4;
        }

        while (v23 != v20);
        v24 = v61;
        v61 = MEMORY[0x277D84F90];
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = MEMORY[0x277D84F90];
        v61 = MEMORY[0x277D84F90];
        if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
        {
LABEL_26:
          if ((v24 & 0x4000000000000000) == 0)
          {
            v34 = *(v24 + 16);
            if (!v34)
            {
              goto LABEL_46;
            }

            goto LABEL_28;
          }
        }
      }

      v34 = __CocoaSet.count.getter();
      if (!v34)
      {
LABEL_46:
        v37 = v10;

        v61 = specialized Array._copyToContiguousArray()(v38);
        specialized MutableCollection<>.sort(by:)(&v61);

        v33 = v61;
        swift_retain_n();
        v39 = v37;
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.default.getter();

        LOBYTE(v3) = v57;
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v61 = v44;
          *v42 = 136315906;
          LOBYTE(v59) = v57;
          v45 = WorkoutConfigurationFilterType.displayName.getter();
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v61);

          *(v42 + 4) = v47;
          *(v42 + 12) = 2048;
          if ((v33 & 0x8000000000000000) != 0 || (v33 & 0x4000000000000000) != 0)
          {
            v48 = __CocoaSet.count.getter();
          }

          else
          {
            v48 = *(v33 + 16);
          }

          *(v42 + 14) = v48;

          *(v42 + 22) = 2112;
          *(v42 + 24) = v39;
          *v43 = v56;
          *(v42 + 32) = 2048;
          *(v42 + 34) = 0x408F400000000000;
          v49 = v39;
          _os_log_impl(&dword_20AEA4000, v40, v41, "Race: filter (%s) found %ld nearby race workout_configurations from current location: %@ within distance of %f meters", v42, 0x2Au);
          _sSo8NSObjectCSgWOhTm_3(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x20F2E9420](v43, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm_6(v44);
          MEMORY[0x20F2E9420](v44, -1, -1);
          MEMORY[0x20F2E9420](v42, -1, -1);

          LOBYTE(v3) = v57;
        }

        else
        {
        }

        goto LABEL_52;
      }

LABEL_28:
      v3 = 0;
      a1 = 0;
      v7 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x20F2E7A20](v3, v24);
        }

        else
        {
          if (v3 >= *(v24 + 16))
          {
            goto LABEL_42;
          }

          v35 = *(v24 + 8 * v3 + 32);
        }

        v4 = v35;
        v36 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        v59 = v35;
        closure #2 in static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(&v59, v57, v10, &v58);

        v4 = v58;
        if (v58)
        {
          MEMORY[0x20F2E6F30]();
          if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = v61;
        }

        ++v3;
        if (v36 == v34)
        {
          goto LABEL_46;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      swift_once();
    }
  }

  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static WOLog.race);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v60[0] = v29;
    *v28 = 136315138;
    LOBYTE(v61) = v3;
    v30 = WorkoutConfigurationFilterType.displayName.getter();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v60);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_20AEA4000, v26, v27, "Race: filter (%s) cannot find nearby race workout_configurations because currentLocation is nil", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_6(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
    MEMORY[0x20F2E9420](v28, -1, -1);
  }

  v33 = MEMORY[0x277D84F90];
LABEL_52:
  if (v33 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x20F2E7A20](j, v33);
      }

      else
      {
        if (j >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v52 = *(v33 + 8 * j + 32);
      }

      v53 = v52;
      v54 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v61 = v52;
      closure #4 in static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(&v61, v3, "Race: filter (%s) found nearby race workout_configuration (%s): %s, clusterUUID: %s, lastWorkoutStartingPoint: %@, relevanceValue: %f");

      if (v54 == i)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  return v33;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
  }

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(a1, a2);
  return specialized ContiguousArray._endMutation()();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t (*a1)(void **, void **), uint64_t a2)
{
  v5 = *(v2 + 8);
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 >= -1)
    {
      v7 = v6;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for WorkoutConfiguration(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFF8;
      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, v2, a1, a2, v7);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v5, 1, a1);
  }
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

id specialized static WorkoutConfiguration.make(activityType:goal:)(void *a1, void *a2)
{
  v35 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v32 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v32 - v14;
  v34 = &v32 - v14;
  UUID.init()();
  v16 = specialized Occurrence.__allocating_init(count:)(0);
  v32 = v12;
  v33 = v16;
  v17 = *(v4 + 16);
  v17(v12, v15, v3);
  v18 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration(0));
  swift_beginAccess();
  v37 = a2;
  type metadata accessor for NLSessionActivityGoal();
  v19 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  v17(v8, v12, v3);
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 56);
  v22(&v18[v20], 1, 1, v21);
  v22(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v21);
  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v24 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v24 - 8) + 56))(&v18[v23], 1, 1, v24);
  (*(v4 + 56))(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v3);
  v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v17(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v8, v3);
  v26 = v35;
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v35;
  v18[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v33;
  swift_beginAccess();
  *&v18[v25] = 0;
  v18[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v27 = type metadata accessor for WorkoutConfiguration(0);
  v36.receiver = v18;
  v36.super_class = v27;
  v28 = v26;
  v29 = objc_msgSendSuper2(&v36, sel_init);
  v30 = *(v4 + 8);
  v30(v8, v3);
  v30(v32, v3);
  v30(v34, v3);
  return v29;
}

unint64_t type metadata accessor for NLSessionActivityGoal()
{
  result = lazy cache variable for type metadata for NLSessionActivityGoal;
  if (!lazy cache variable for type metadata for NLSessionActivityGoal)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NLSessionActivityGoal);
  }

  return result;
}

uint64_t WorkoutConfiguration.logDisplayName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v7], v2);
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v33 = v8;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v9 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v10 = v1[v9];
  if (v10 <= 1)
  {
    if (v1[v9])
    {
      v11 = 0xE800000000000000;
      v12 = 0x6C61767265746E69;
    }

    else
    {
      v11 = 0xE400000000000000;
      v12 = 1818324839;
    }
  }

  else if (v10 == 2)
  {
    v11 = 0xE400000000000000;
    v12 = 1701011826;
  }

  else if (v10 == 3)
  {
    v11 = 0xE500000000000000;
    v12 = 0x7265636170;
  }

  else
  {
    v11 = 0xEA00000000007472;
    v12 = 0x6F707369746C756DLL;
  }

  MEMORY[0x20F2E6D80](v12, v11);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for implicit closure #2 in implicit closure #1 in WorkoutConfiguration.logDisplayName.getter;
  *(v14 + 24) = v13;
  v34 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed FIUIFormattingManager) -> (@owned String);
  v35 = v14;
  v15 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSo21FIUIFormattingManagerCcMd, &_sSSSo21FIUIFormattingManagerCcMR);
  v16 = String.init<A>(describing:)();
  MEMORY[0x20F2E6D80](v16);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v18 = *&v15[v17];
  v19 = [v18 description];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  MEMORY[0x20F2E6D80](v20, v22);

  v23 = v32;
  v36 = v32;
  v37 = v33;
  v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v25 = *&v15[v24];
  if (v25)
  {
    v30 = 0x6469766F7270202CLL;
    v31 = 0xEB000000003D7265;
    swift_beginAccess();
    v26 = *(v25 + 32);
    v27 = *(v25 + 40);

    MEMORY[0x20F2E6D80](v26, v27);

    MEMORY[0x20F2E6D80](v30, v31);

    return v36;
  }

  return v23;
}

uint64_t sub_20AEB3848()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEB3880()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
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

uint64_t _s10Foundation4UUIDVACSHAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1, void (*a2)(BOOL, unint64_t, uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (a1 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v26 = MEMORY[0x277D84F90];
  result = (a2)(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v25 = a2;
    v11 = v26;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = 0;
      do
      {
        v14 = MEMORY[0x20F2E7A20](v13, a1);
        v16 = *(v26 + 16);
        v15 = *(v26 + 24);
        if (v16 >= v15 >> 1)
        {
          v25(v15 > 1, v16 + 1, 1);
        }

        ++v13;
        v17 = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(a3, a4, a5);
        *(v26 + 16) = v16 + 1;
        v18 = v26 + 16 * v16;
        *(v18 + 32) = v14;
        *(v18 + 40) = v17;
      }

      while (v10 != v13);
    }

    else
    {
      v19 = (a1 + 32);
      do
      {
        v21 = *(v26 + 16);
        v20 = *(v26 + 24);
        v22 = *v19;
        if (v21 >= v20 >> 1)
        {
          v25(v20 > 1, v21 + 1, 1);
        }

        v23 = _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(a3, a4, a5);
        *(v26 + 16) = v21 + 1;
        v24 = v26 + 16 * v21;
        *(v24 + 32) = v22;
        *(v24 + 40) = v23;
        ++v19;
        --v10;
      }

      while (v10);
    }

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &lazy protocol witness table cache variable for type StandardActivityPickerItem and conformance StandardActivityPickerItem, type metadata accessor for StandardActivityPickerItem, &protocol conformance descriptor for StandardActivityPickerItem);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for WorkoutBlock, &protocol witness table for WorkoutBlock, outlined init with take of Equivalent);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for WorkoutStep, &protocol witness table for WorkoutStep, outlined init with take of Equivalent);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for LivePowerZone, &protocol witness table for Zone, outlined init with take of ZoneProtocol);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &lazy protocol witness table cache variable for type StandardActivityPickerItem and conformance StandardActivityPickerItem, type metadata accessor for StandardActivityPickerItem, &protocol conformance descriptor for StandardActivityPickerItem);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), &lazy protocol witness table cache variable for type GuidedFeaturedActivityPickerItem and conformance GuidedFeaturedActivityPickerItem, type metadata accessor for GuidedFeaturedActivityPickerItem, &protocol conformance descriptor for GuidedFeaturedActivityPickerItem);
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore34CompoundActivityPickerItemProtocol_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore34CompoundActivityPickerItemProtocol_pGMR, &_s11WorkoutCore34CompoundActivityPickerItemProtocol_pMd, &_s11WorkoutCore34CompoundActivityPickerItemProtocol_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore10Equivalent_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore10Equivalent_pGMR, &_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore15ChartableSample_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore15ChartableSample_pGMR, &_s11WorkoutCore15ChartableSample_pMd, &_s11WorkoutCore15ChartableSample_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore12ZoneProtocol_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore12ZoneProtocol_pGMR, &_s11WorkoutCore12ZoneProtocol_pMd, &_s11WorkoutCore12ZoneProtocol_pMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E11_CLLocationVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E11_CLLocationVGMR, type metadata accessor for Apple_Workout_Core_CLLocation);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence24AudioSynthesisVoiceAssetVGMd, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence24AudioSynthesisVoiceAssetVGMR, MEMORY[0x277D0A548]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit13IntervalBlockVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit13IntervalBlockVGMR, MEMORY[0x277CE4038]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit12IntervalStepVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit12IntervalStepVGMR, MEMORY[0x277CE4030]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_1(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_1(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t instantiation function for generic protocol witness table for StandardActivityPickerItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StandardActivityPickerItem and conformance StandardActivityPickerItem(&lazy protocol witness table cache variable for type StandardActivityPickerItem and conformance StandardActivityPickerItem, &protocol conformance descriptor for StandardActivityPickerItem);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type StandardActivityPickerItem and conformance StandardActivityPickerItem(&lazy protocol witness table cache variable for type StandardActivityPickerItem and conformance StandardActivityPickerItem, &protocol conformance descriptor for StandardActivityPickerItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type StandardActivityPickerItem and conformance StandardActivityPickerItem(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StandardActivityPickerItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures()
{
  result = lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures);
  }

  return result;
}

Swift::Bool __swiftcall WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:)(Swift::Bool enteringForeground)
{
  LODWORD(v2) = enteringForeground;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v124 = &v118[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = type metadata accessor for DispatchQoS();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v7);
  v122 = &v118[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UUID();
  v131 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v118[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v132 = &v118[-v16];
  MEMORY[0x28223BE20](v15, v17);
  v128 = &v118[-v18];
  if (one-time initialization token for app != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.app);
    v20 = v1;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = &unk_27C729000;
    v135 = v9;
    v127 = v3;
    v126 = v4;
    if (v23)
    {
      v25 = swift_slowAlloc();
      *v25 = 67110144;
      v26 = v20[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded];
      *(v25 + 4) = v26 ^ 1;
      *(v25 + 8) = 1024;
      *(v25 + 10) = v26;
      *(v25 + 14) = 1024;
      v27 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
      swift_beginAccess();
      *(v25 + 16) = v20[v27];
      *(v25 + 20) = 1024;
      v28 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
      swift_beginAccess();
      outlined init with copy of UnlockedSinceBootMonitorProtocol(&v20[v28], aBlock);
      v29 = v2;
      v2 = v20;
      v31 = v137;
      v30 = v138;
      __swift_project_boxed_opaque_existential_1(aBlock, v137);
      v32 = *(v30 + 4);
      v33 = v30;
      v20 = v2;
      LODWORD(v2) = v29;
      LOBYTE(v28) = v32(v31, v33);
      __swift_destroy_boxed_opaque_existential_1Tm_6(aBlock);
      v34 = v28 & 1;
      v24 = &unk_27C729000;
      *(v25 + 22) = v34;

      *(v25 + 26) = 1024;
      v9 = v135;
      *(v25 + 28) = v29 & 1;
      _os_log_impl(&dword_20AEA4000, v21, v22, "[ConfigurationStore] loadIfNeeded: %{BOOL}d (loaded: %{BOOL}d, syncComplete: %{BOOL}d, unlockedSinceBoot: %{BOOL}d, enteringForeground: %{BOOL}d", v25, 0x20u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    else
    {
    }

    v35 = v24[487];
    if (v20[v35])
    {
      WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
      WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(v2 & 1);

      return v20[v35];
    }

    v36 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete;
    swift_beginAccess();
    if (v20[v36] != 1)
    {
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_20AEA4000, v60, v61, "[ConfigurationStore] Paired sync in progress, skip load workout_configurations", v62, 2u);
        MEMORY[0x20F2E9420](v62, -1, -1);
      }

      return v20[v35];
    }

    v37 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
    swift_beginAccess();
    outlined init with copy of UnlockedSinceBootMonitorProtocol(&v20[v37], aBlock);
    v38 = v20;
    v39 = v137;
    v40 = v138;
    __swift_project_boxed_opaque_existential_1(aBlock, v137);
    v41 = (*(v40 + 4))(v39, v40);
    __swift_destroy_boxed_opaque_existential_1Tm_6(aBlock);
    if ((v41 & 1) == 0)
    {
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_20AEA4000, v64, v65, "[ConfigurationStore] Device is locked since boot, skip load workout_configurations, start monitoring first unlock", v66, 2u);
        MEMORY[0x20F2E9420](v66, -1, -1);
      }

      outlined init with copy of UnlockedSinceBootMonitorProtocol(&v38[v37], aBlock);
      v67 = v137;
      v68 = v138;
      __swift_project_boxed_opaque_existential_1(aBlock, v137);
      (*(v68 + 5))(v67, v68);
      __swift_destroy_boxed_opaque_existential_1Tm_6(aBlock);
      return v38[v35];
    }

    v119 = v2;
    v42 = v128;
    UUID.init()();
    v121 = v38;
    outlined init with copy of UnlockedSinceBootMonitorProtocol(&v38[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager], aBlock);
    v43 = v137;
    v44 = v138;
    __swift_project_boxed_opaque_existential_1(aBlock, v137);
    v140[0] = 3;
    v45 = (*(v44 + 1))(v140, v42, 0xD00000000000002CLL, 0x800000020B45CFD0, v43, v44, 15.0);
    __swift_destroy_boxed_opaque_existential_1Tm_6(aBlock);
    v46 = v131;
    v47 = *(v131 + 16);
    v4 = v132;
    v134 = v131 + 16;
    v133 = v47;
    v47(v132, v42, v9);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    v50 = os_log_type_enabled(v48, v49);
    v120 = v35;
    if (v50)
    {
      LODWORD(v130) = v49;
      v51 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      aBlock[0] = v129;
      *v51 = 136315650;
      *(v51 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(1702256979, 0xE400000000000000, aBlock);
      *(v51 + 12) = 2080;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v4;
      v55 = v54;
      v132 = *(v46 + 8);
      (v132)(v53, v9);
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v55, aBlock);

      *(v51 + 14) = v56;
      *(v51 + 22) = 2080;
      v57 = v121;
      if (v45)
      {
        if (v45 == 2)
        {
          v58 = 0xEC00000065746165;
          v59 = 0x7243746F6E6E6163;
        }

        else if (v45 == 1)
        {
          v58 = 0xED00007374736978;
          v59 = 0x4579646165726C61;
        }

        else
        {
          v59 = 0;
          v58 = 0xE000000000000000;
        }
      }

      else
      {
        v58 = 0xE700000000000000;
        v59 = 0x73736563637573;
      }

      v69 = v130;
      v70 = v129;
      v4 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, aBlock);

      *(v51 + 24) = v4;
      _os_log_impl(&dword_20AEA4000, v48, v69, "[ConfigurationStore] load background assertion (%s, %s) acquired: %s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v70, -1, -1);
      MEMORY[0x20F2E9420](v51, -1, -1);

      v35 = v120;
    }

    else
    {

      v132 = *(v46 + 8);
      (v132)(v4, v9);
      v57 = v121;
    }

    v71 = v57 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v71 + 8);
      ObjectType = swift_getObjectType();
      (*(v4 + 1))(ObjectType, v4);
      swift_unknownObjectRelease();
    }

    v73 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient;
    outlined init with copy of UnlockedSinceBootMonitorProtocol(v57 + v37, aBlock);
    v1 = specialized static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:)((v57 + v73), aBlock);
    v2 = v74;
    __swift_destroy_boxed_opaque_existential_1Tm_6(aBlock);
    *(v57 + v35) = v1 & 1;
    aBlock[0] = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      break;
    }

    v75 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v75)
    {
      goto LABEL_44;
    }

LABEL_30:
    v76 = 0;
    v3 = v2 & 0xC000000000000001;
    v9 = v2 & 0xFFFFFFFFFFFFFF8;
    v130 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v77 = MEMORY[0x20F2E7A20](v76, v2);
      }

      else
      {
        if (v76 >= *(v9 + 16))
        {
          goto LABEL_41;
        }

        v77 = *(v2 + v76 + 4);
      }

      v4 = v77;
      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      v1 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
      swift_beginAccess();
      if (*&v4[v1])
      {
      }

      else
      {
        v1 = aBlock;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v9 = v130;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v76;
      if (v78 == v75)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v75 = __CocoaSet.count.getter();
  if (v75)
  {
    goto LABEL_30;
  }

LABEL_44:

  v79 = WorkoutConfigurationOccurrenceStore.deduplicate(_:)(aBlock[0]);

  if (v79 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v81 = 0;
    v130 = v79 & 0xC000000000000001;
    v129 = v79 & 0xFFFFFFFFFFFFFF8;
    v82 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v130)
      {
        v85 = MEMORY[0x20F2E7A20](v81, v79);
      }

      else
      {
        if (v81 >= *(v129 + 16))
        {
          goto LABEL_64;
        }

        v85 = *(v79 + 8 * v81 + 32);
      }

      v86 = v85;
      v87 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        break;
      }

      v88 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      v133(v13, &v86[v88], v135);
      v89 = v86;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v82;
      v91 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      v93 = v82[2];
      v94 = (v92 & 1) == 0;
      v95 = __OFADD__(v93, v94);
      v96 = v93 + v94;
      if (v95)
      {
        goto LABEL_65;
      }

      v97 = v92;
      if (v82[3] >= v96)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v103 = v91;
          specialized _NativeDictionary.copy()();
          v91 = v103;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v96, isUniquelyReferenced_nonNull_native);
        v91 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
        if ((v97 & 1) != (v98 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v82 = aBlock[0];
      if (v97)
      {
        v83 = *(aBlock[0] + 56);
        v84 = *(v83 + 8 * v91);
        *(v83 + 8 * v91) = v89;

        (v132)(v13, v135);
      }

      else
      {
        *(aBlock[0] + 8 * (v91 >> 6) + 64) |= 1 << v91;
        v99 = v91;
        v100 = v135;
        v133((v82[6] + *(v131 + 72) * v91), v13, v135);
        *(v82[7] + 8 * v99) = v89;

        (v132)(v13, v100);
        v101 = v82[2];
        v95 = __OFADD__(v101, 1);
        v102 = v101 + 1;
        if (v95)
        {
          goto LABEL_66;
        }

        v82[2] = v102;
      }

      ++v81;
      if (v87 == i)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v82 = MEMORY[0x277D84F98];
LABEL_69:

  v104 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations;
  v105 = v121;
  swift_beginAccess();
  *(v105 + v104) = v82;

  WorkoutConfigurationOccurrenceStore.configurations.didset();
  *(v105 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated) = 1;
  v106 = v120;
  if (*(v105 + v120) == 1)
  {
    v107 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v108 = objc_opt_self();

    if ([v108 isMainThread])
    {
      closure #3 in WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:)(v107);
    }

    else
    {
      _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v110 = static OS_dispatch_queue.main.getter();
      v111 = swift_allocObject();
      *(v111 + 16) = partial apply for closure #3 in WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:);
      *(v111 + 24) = v107;
      v138 = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_4;
      v139 = v111;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      v137 = &block_descriptor_30;
      v112 = _Block_copy(aBlock);

      v113 = v122;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v114 = v124;
      v115 = v127;
      v105 = v121;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v113, v114, v112);
      _Block_release(v112);

      v106 = v120;
      (*(v126 + 1))(v114, v115);
      (*(v123 + 8))(v113, v125);
    }

    v116 = v119;

    WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
    WorkoutManagedConfigurationsStore.loadIfNeeded(enteringForeground:)(v116 & 1);

    v109 = *(v105 + v106);
  }

  else
  {
    v109 = 0;
  }

  v117 = v128;
  $defer #1 () in WorkoutConfigurationOccurrenceStore.loadIfNeededLegacy(enteringForeground:)(v105, 3u, v128);
  (v132)(v117, v135);
  return v109;
}

uint64_t sub_20AEB506C()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_20AEB50A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>, double a7@<D0>)
{
  v157 = a4;
  v158 = a5;
  v161 = a6;
  v165 = type metadata accessor for UUID();
  v12 = *(v165 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v165, v14);
  v151 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v150 - v18;
  v21 = MEMORY[0x28223BE20](v17, v20);
  v153 = &v150 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v150 - v25;
  MEMORY[0x28223BE20](v24, v27);
  v156 = &v150 - v28;
  v29 = OBJC_IVAR___WOBackgroundAssertionManager_assertions;
  swift_beginAccess();
  v162 = a1;
  v154 = v29;
  v30 = *(a1 + v29);

  v163 = a3;
  v31 = specialized NestedDictionary.get(_:_:)(a2, a3, v30);

  v164 = a2;
  if (v31)
  {
    if ([v31 isValid])
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static WOLog.default);
      v33 = v156;
      v34 = v165;
      (*(v12 + 16))(v156, v163, v165);
      v35 = v31;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v159 = v7;
        v160 = v12;
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock[0] = v40;
        v41 = v164;
        v42 = 0xE700000000000000;
        *v38 = 138413058;
        *(v38 + 4) = v35;
        *v39 = v31;
        *(v38 + 12) = 2080;
        v43 = 1702256979;
        v44 = 0x797265766F636552;
        if (v41 == 1)
        {
          v42 = 0xE800000000000000;
        }

        else
        {
          v44 = 0x6E6F6973736553;
        }

        if (v41)
        {
          v43 = v44;
        }

        else
        {
          v42 = 0xE400000000000000;
        }

        if (v41 <= 2)
        {
          v45 = v43;
        }

        else
        {
          v45 = 1702256979;
        }

        if (v41 <= 2)
        {
          v46 = v42;
        }

        else
        {
          v46 = 0xE400000000000000;
        }

        v47 = v40;
        v48 = v35;
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, aBlock);

        *(v38 + 14) = v49;
        *(v38 + 22) = 2080;
        v50 = UUID.uuidString.getter();
        v52 = v51;
        (*(v160 + 8))(v33, v165);
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, aBlock);

        *(v38 + 24) = v53;
        *(v38 + 32) = 2112;
        v54 = [objc_opt_self() currentThread];
        *(v38 + 34) = v54;
        v39[1] = v54;
        _os_log_impl(&dword_20AEA4000, v36, v37, "Valid background assertion already exists %@ (type: %s, uuid: %s, thread: %@", v38, 0x2Au);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v39, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v47, -1, -1);
        MEMORY[0x20F2E9420](v38, -1, -1);

        v55 = 1;
      }

      else
      {

        (*(v12 + 8))(v33, v34);
        v55 = 1;
      }

      goto LABEL_95;
    }
  }

  v152 = v19;
  v159 = v7;
  v56 = 0xE700000000000000;
  v57 = 0x797265766F636552;
  if (a2 == 1)
  {
    v56 = 0xE800000000000000;
  }

  else
  {
    v57 = 0x6E6F6973736553;
  }

  if (a2)
  {
    v58 = v57;
  }

  else
  {
    v58 = 1702256979;
  }

  if (!a2)
  {
    v56 = 0xE400000000000000;
  }

  if (a2 <= 2u)
  {
    v59 = v58;
  }

  else
  {
    v59 = 1702256979;
  }

  if (a2 <= 2u)
  {
    v60 = v56;
  }

  else
  {
    v60 = 0xE400000000000000;
  }

  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = v165;
  v155 = *(v12 + 16);
  v156 = (v12 + 16);
  v155(v26, v163, v165);
  v63 = (*(v12 + 80) + 17) & ~*(v12 + 80);
  v64 = (v13 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  *(v65 + 16) = v164;
  v160 = v12;
  (*(v12 + 32))(v65 + v63, v26, v62);
  *(v65 + v64) = v61;

  v66 = MEMORY[0x20F2E6C00](v59, v60);

  v67 = MEMORY[0x20F2E6C00](v157, v158);
  aBlock[4] = partial apply for closure #1 in closure #1 in BackgroundAssertionManager.acquire(type:uuid:explanation:timeout:);
  aBlock[5] = v65;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_37;
  v68 = _Block_copy(aBlock);

  v69 = [objc_opt_self() assertionWithName:v66 explanation:v67 timeout:v68 timeoutHandler:a7];
  _Block_release(v68);

  if (v69)
  {
    v70 = *(v162 + v154);

    v71 = v163;
    v72 = specialized NestedDictionary.get(_:_:)(v164, v163, v70);

    v73 = v165;
    v74 = v71;
    if (v72)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      __swift_project_value_buffer(v75, static WOLog.default);
      v76 = v153;
      v155(v153, v71, v73);
      v77 = v69;
      v157 = v72;
      v78 = v72;
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();

      LODWORD(v158) = v80;
      v81 = v80;
      v82 = v79;
      if (os_log_type_enabled(v79, v81))
      {
        v151 = v78;
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        aBlock[0] = v85;
        *v83 = 138413314;
        *(v83 + 4) = v77;
        v86 = v84;
        *v84 = v69;
        *(v83 + 12) = 2080;
        v87 = 0xE700000000000000;
        v88 = 0x797265766F636552;
        if (v164 == 1)
        {
          v87 = 0xE800000000000000;
        }

        else
        {
          v88 = 0x6E6F6973736553;
        }

        if (v164)
        {
          v89 = v88;
        }

        else
        {
          v89 = 1702256979;
        }

        if (!v164)
        {
          v87 = 0xE400000000000000;
        }

        if (v164 <= 2u)
        {
          v90 = v89;
        }

        else
        {
          v90 = 1702256979;
        }

        if (v164 <= 2u)
        {
          v91 = v87;
        }

        else
        {
          v91 = 0xE400000000000000;
        }

        v92 = v85;
        v93 = v77;
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, aBlock);

        *(v83 + 14) = v94;
        *(v83 + 22) = 2080;
        v95 = v153;
        v96 = UUID.uuidString.getter();
        v98 = v97;
        v99 = v95;
        v100 = v165;
        (*(v160 + 8))(v99, v165);
        v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, aBlock);

        *(v83 + 24) = v101;
        *(v83 + 32) = 2112;
        v78 = v151;
        *(v83 + 34) = v151;
        v86[1] = v157;
        *(v83 + 42) = 2112;
        v102 = objc_opt_self();
        v103 = v78;
        v104 = [v102 currentThread];
        *(v83 + 44) = v104;
        v86[2] = v104;
        _os_log_impl(&dword_20AEA4000, v82, v158, "Acquiring background assertion %@ for (type: %s, uuid: %s) - existing assertion %@ will be invalidated, thread: %@", v83, 0x34u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v86, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v92, -1, -1);
        v105 = v83;
        v73 = v100;
        MEMORY[0x20F2E9420](v105, -1, -1);
      }

      else
      {

        (*(v160 + 8))(v76, v73);
      }

      [v78 invalidate];

      v74 = v163;
    }

    swift_beginAccess();
    v126 = v164;
    specialized NestedDictionary.put(_:_:_:)(v164, v74, v69);
    swift_endAccess();
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v127 = type metadata accessor for Logger();
    __swift_project_value_buffer(v127, static WOLog.default);
    v128 = v152;
    v155(v152, v74, v73);
    v129 = v69;
    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      aBlock[0] = v134;
      *v132 = 138413058;
      *(v132 + 4) = v129;
      *v133 = v69;
      *(v132 + 12) = 2080;
      v135 = v126;
      v136 = 0xE700000000000000;
      v137 = 0x797265766F636552;
      if (v126 == 1)
      {
        v136 = 0xE800000000000000;
      }

      else
      {
        v137 = 0x6E6F6973736553;
      }

      if (v126)
      {
        v138 = v137;
      }

      else
      {
        v138 = 1702256979;
      }

      if (!v126)
      {
        v136 = 0xE400000000000000;
      }

      if (v126 <= 2u)
      {
        v139 = v138;
      }

      else
      {
        v139 = 1702256979;
      }

      if (v135 <= 2)
      {
        v140 = v136;
      }

      else
      {
        v140 = 0xE400000000000000;
      }

      v141 = v134;
      v142 = v129;
      v143 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, aBlock);

      *(v132 + 14) = v143;
      *(v132 + 22) = 2080;
      v144 = v152;
      v145 = UUID.uuidString.getter();
      v147 = v146;
      (*(v160 + 8))(v144, v165);
      v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v147, aBlock);

      *(v132 + 24) = v148;
      *(v132 + 32) = 2112;
      v149 = [objc_opt_self() currentThread];
      *(v132 + 34) = v149;
      v133[1] = v149;
      _os_log_impl(&dword_20AEA4000, v130, v131, "Acquired background assertion %@ (type: %s, uuid: %s), thread: %@", v132, 0x2Au);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v133, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v141, -1, -1);
      MEMORY[0x20F2E9420](v132, -1, -1);

      v55 = 0;
    }

    else
    {

      (*(v160 + 8))(v128, v73);
      v55 = 0;
    }
  }

  else
  {
    v106 = v164;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    __swift_project_value_buffer(v107, static WOLog.default);
    v108 = v151;
    v109 = v165;
    v155(v151, v163, v165);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      aBlock[0] = v114;
      *v112 = 136315650;
      v115 = 0xE700000000000000;
      v116 = 0x797265766F636552;
      if (v106 == 1)
      {
        v115 = 0xE800000000000000;
      }

      else
      {
        v116 = 0x6E6F6973736553;
      }

      if (v106)
      {
        v117 = v116;
      }

      else
      {
        v117 = 1702256979;
      }

      if (!v106)
      {
        v115 = 0xE400000000000000;
      }

      if (v106 <= 2u)
      {
        v118 = v117;
      }

      else
      {
        v118 = 1702256979;
      }

      if (v106 <= 2u)
      {
        v119 = v115;
      }

      else
      {
        v119 = 0xE400000000000000;
      }

      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v119, aBlock);

      *(v112 + 4) = v120;
      *(v112 + 12) = 2080;
      v121 = UUID.uuidString.getter();
      v123 = v122;
      (*(v160 + 8))(v108, v165);
      v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v123, aBlock);

      *(v112 + 14) = v124;
      *(v112 + 22) = 2112;
      v125 = [objc_opt_self() currentThread];
      *(v112 + 24) = v125;
      *v113 = v125;
      _os_log_impl(&dword_20AEA4000, v110, v111, "Cannot create background assertion for (type: %s, uuid: %s), thread: %@", v112, 0x20u);
      outlined destroy of NSObject?(v113);
      MEMORY[0x20F2E9420](v113, -1, -1);
      v55 = 2;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v114, -1, -1);
      MEMORY[0x20F2E9420](v112, -1, -1);
    }

    else
    {

      (*(v160 + 8))(v108, v109);
      v55 = 2;
    }
  }

LABEL_95:
  *v161 = v55;
}

uint64_t sub_20AEB6124()
{
  MEMORY[0x20F2E9510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t __os_log_helper_16_2_3_8_66_8_66_8_64(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 66;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 66;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 64;
  *(result + 23) = 8;
  *(result + 24) = a4;
  return result;
}

uint64_t specialized NestedDictionary.put(_:_:_:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*v3 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v7 & 1) == 0))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12[0] = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(MEMORY[0x277D84F98], a1, isUniquelyReferenced_nonNull_native);
    *v3 = v12[0];
  }

  v9 = specialized Dictionary.subscript.modify(v12, a1);
  if (*v10)
  {
  }

  return (v9)(v12, 0);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for NLCompoundActivityPickerSection(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)();
  }
}

{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;

    return MEMORY[0x2821F96F8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)();
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;

    return MEMORY[0x2821F96F8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)();
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(v9, a2, a1, v19);
  }
}

{
  v4 = v3;
  v8 = type metadata accessor for Station.Mood();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v30 & 1))
    {
      v15 = v29;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

{
  v4 = v3;
  v8 = type metadata accessor for Station.Mood();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for HKWorkoutActivityType(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v15)
  {
    *(*(*v4 + 56) + 8 * v9) = a1;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)();
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  type metadata accessor for UUID();
  v2 = MEMORY[0x277CC95F0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277CC95F0], &lazy protocol witness table cache variable for type UUID and conformance UUID, v2, MEMORY[0x277CC9610]);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = a1;
  v3 = MEMORY[0x20F2E7FC0](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v2, v3);
}

{
  type metadata accessor for Date();
  v2 = MEMORY[0x277CC9578];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277CC9578], &lazy protocol witness table cache variable for type Date and conformance Date, v2, MEMORY[0x277CC9598]);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v3 = MEMORY[0x20F2E7FD0](*(v1 + 40), a1);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

{
  Hasher.init(_seed:)();
  swift_beginAccess();

  String.hash(into:)();

  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for Station.Mood();
  v2 = MEMORY[0x277D2B280];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, MEMORY[0x277D2B280], MEMORY[0x277D2B290]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, MEMORY[0x277D2B280], &lazy protocol witness table cache variable for type Station.Mood and conformance Station.Mood, v2, MEMORY[0x277D2B298]);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for FIWorkoutActivityType, 0x277D095E0);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
}

{
  Hasher.init(_seed:)();
  swift_beginAccess();
  swift_beginAccess();

  String.hash(into:)();

  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(a1 + 24));
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
}

unint64_t lazy protocol witness table accessor for type BackgroundAssertionType and conformance BackgroundAssertionType()
{
  result = lazy protocol witness table cache variable for type BackgroundAssertionType and conformance BackgroundAssertionType;
  if (!lazy protocol witness table cache variable for type BackgroundAssertionType and conformance BackgroundAssertionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BackgroundAssertionType and conformance BackgroundAssertionType);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 <= 1)
      {
        v7 = *(*(v19 + 48) + v4) ? 0xD000000000000013 : 0x7974697669746361;
        v8 = *(*(v19 + 48) + v4) ? 0x800000020B454C70 : 0xEC00000065707954;
      }

      else if (v6 == 2)
      {
        v8 = 0xE700000000000000;
        v7 = 0x646574754D7369;
      }

      else
      {
        v7 = v6 == 3 ? 0x6E6F697461636F6CLL : 0xD000000000000011;
        v8 = v6 == 3 ? 0xEC00000065707954 : 0x800000020B454CA0;
      }

      if (v5 == 3)
      {
        v9 = 0x6E6F697461636F6CLL;
      }

      else
      {
        v9 = 0xD000000000000011;
      }

      if (v5 == 3)
      {
        v10 = 0xEC00000065707954;
      }

      else
      {
        v10 = 0x800000020B454CA0;
      }

      if (v5 == 2)
      {
        v9 = 0x646574754D7369;
        v10 = 0xE700000000000000;
      }

      v11 = 0xD000000000000013;
      if (v5)
      {
        v12 = 0x800000020B454C70;
      }

      else
      {
        v11 = 0x7974697669746361;
        v12 = 0xEC00000065707954;
      }

      v13 = v5 <= 1 ? v11 : v9;
      v14 = v5 <= 1 ? v12 : v10;
      if (v7 == v13 && v8 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
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
  v5[9] = specialized _NativeDictionary.subscript.modify((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
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
  if (MEMORY[0x277D84FD8])
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

Swift::Int (*specialized _NativeDictionary.subscript.modify(uint64_t a1, uint64_t a2, char a3))(Swift::Int result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      specialized _NativeDictionary.copy()();
      v9 = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v2;
  v28 = v13;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v15;
  if (*(v13 + 24) < v19)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, isUniquelyReferenced_nonNull_native);
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) == (v20 & 1))
    {
      goto LABEL_6;
    }

    v14 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v24 = v14;
    specialized _NativeDictionary.copy()();
    v14 = v24;
    v21 = v28;
    if (v3)
    {
      goto LABEL_7;
    }

LABEL_10:
    v25 = v14;
    (*(v8 + 16))(v11, a2, v7);
    specialized _NativeDictionary._insert(at:key:value:)(v25, v11, a1, v21);
    v23 = 0;
    goto LABEL_11;
  }

LABEL_6:
  v21 = v28;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v22 = *(v21 + 56);
  v23 = *(v22 + 8 * v14);
  *(v22 + 8 * v14) = a1;
LABEL_11:
  *v4 = v21;
  return v23;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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