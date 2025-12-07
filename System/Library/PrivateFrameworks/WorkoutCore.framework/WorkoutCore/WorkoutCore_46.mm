uint64_t keypath_get_25Tm@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t type metadata accessor for HKWorkoutActivity(uint64_t a1, unint64_t *a2, void *a3)
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

id IntervalWorkoutTracker.distanceProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) distanceProvider];

  return v1;
}

id IntervalWorkoutTracker.elevationProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) elevationProvider];

  return v1;
}

id IntervalWorkoutTracker.swimmingDistanceProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) swimmingDistanceProvider];

  return v1;
}

id IntervalWorkoutTracker.lapsProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) lapsProvider];

  return v1;
}

id IntervalWorkoutTracker.flightsClimbedProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) flightsClimbedProvider];

  return v1;
}

id IntervalWorkoutTracker.rollingPaceProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) rollingPaceProvider];

  return v1;
}

id IntervalWorkoutTracker.elapsedTimeProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) elapsedTimeProvider];

  return v1;
}

id IntervalWorkoutTracker.heartRateProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) heartRateProvider];

  return v1;
}

id IntervalWorkoutTracker.energyBurnProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) energyBurnProvider];

  return v1;
}

id IntervalWorkoutTracker.ghostPacerProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) ghostPacerProvider];

  return v1;
}

id IntervalWorkoutTracker.segmentProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) segmentProvider];

  return v1;
}

id IntervalWorkoutTracker.splitProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) splitProvider];

  return v1;
}

id @objc IntervalWorkoutTracker.powerZonesProvider.getter(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider];
  v5 = a1;
  v6 = [v4 *a3];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  __swift_destroy_boxed_opaque_existential_0(v9);

  return v7;
}

double IntervalWorkoutTracker.powerZonesProvider.getter(SEL *a1)
{
  v3 = [*(v2 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) *a1];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  return result;
}

double IntervalWorkoutTracker.duration.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 96);
}

id IntervalWorkoutTracker.waterTemperatureProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) waterTemperatureProvider];

  return v1;
}

id IntervalWorkoutTracker.descentProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) descentProvider];

  return v1;
}

id IntervalWorkoutTracker.downhillRunCountProvider.getter()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) downhillRunCountProvider];

  return v1;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutStepUpdateData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutStepUpdateData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
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

  *(result + 81) = v3;
  return result;
}

id WorkoutStepUpdateDataBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutStepUpdateDataBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UnlockedDeviceMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = -1;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  v1 = MKBGetDeviceLockState();
  if (v1)
  {
    v2 = v1 == 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  swift_beginAccess();
  *(v0 + 40) = v3;
  return v0;
}

Swift::Void __swiftcall UnlockedDeviceMonitor.stopMonitoring()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    closure #1 in UnlockedDeviceMonitor.stopMonitoring()(v10);
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v12 = static OS_dispatch_queue.main.getter();
    v17 = v5;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in UnlockedDeviceMonitor.stopMonitoring();
    *(v14 + 24) = v10;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_11;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_82;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v15);
    _Block_release(v15);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v17);
  }
}

Swift::Void __swiftcall UnlockedDeviceMonitor.startMonitoring()()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = objc_opt_self();

  if ([v11 isMainThread])
  {
    closure #1 in UnlockedDeviceMonitor.startMonitoring()(v10);
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v12 = static OS_dispatch_queue.main.getter();
    v17 = v5;
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in UnlockedDeviceMonitor.startMonitoring();
    *(v14 + 24) = v10;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_11_1;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v9, v4, v15);
    _Block_release(v15);

    (*(v1 + 8))(v4, v0);
    (*(v6 + 8))(v9, v17);
  }
}

double UnlockedDeviceMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

uint64_t (*UnlockedDeviceMonitor.delegate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return UnlockedDeviceMonitor.delegate.modify;
}

uint64_t UnlockedDeviceMonitor.init()()
{
  *(v0 + 16) = -1;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  v1 = MKBGetDeviceLockState();
  if (v1)
  {
    v2 = v1 == 3;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  swift_beginAccess();
  *(v0 + 40) = v3;
  return v0;
}

double UnlockedDeviceMonitor.handleKeyBagLockStatusNotification()()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v1;
  v14 = objc_opt_self();

  if ([v14 isMainThread])
  {
    specialized closure #1 in UnlockedDeviceMonitor.handleKeyBagLockStatusNotification()(v12);
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v19 = static OS_dispatch_queue.main.getter();
    v20 = v7;
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for closure #1 in UnlockedDeviceMonitor.handleKeyBagLockStatusNotification();
    *(v16 + 24) = v13;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_28_1;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    MEMORY[0x20F2E7580](0, v11, v6, v17);
    _Block_release(v17);

    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v20);
  }

  return result;
}

uint64_t UnlockedDeviceMonitor.deinit()
{
  UnlockedDeviceMonitor.stopMonitoring()();
  outlined destroy of weak UnlockedDeviceMonitorDelegate?(v0 + 24);
  return v0;
}

uint64_t UnlockedDeviceMonitor.__deallocating_deinit()
{
  UnlockedDeviceMonitor.stopMonitoring()();
  outlined destroy of weak UnlockedDeviceMonitorDelegate?(v0 + 24);

  return swift_deallocClassInstance();
}

void closure #1 in UnlockedDeviceMonitor.startMonitoring()(uint64_t a1)
{
  aBlock[9] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(Strong + 16) != -1)
    {
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static WOLog.assertion);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v9, v10))
      {
        goto LABEL_19;
      }

      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "[UnlockedDeviceMonitor] already monitoring lock status notifications", v11, 2u);
      v12 = v11;
LABEL_18:
      MEMORY[0x20F2E9420](v12, -1, -1);
LABEL_19:

      return;
    }

    out_token = -1;
    type metadata accessor for OS_dispatch_queue();
    (*(v2 + 104))(v5, *MEMORY[0x277D851B8], v1);
    v13 = static OS_dispatch_queue.global(qos:)();
    (*(v2 + 8))(v5, v1);
    v14 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in closure #1 in UnlockedDeviceMonitor.startMonitoring();
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
    aBlock[3] = &block_descriptor_32_1;
    v15 = _Block_copy(aBlock);

    v16 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &out_token, v13, v15);
    _Block_release(v15);

    if (v16 || out_token == -1)
    {
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static WOLog.assertion);
      v9 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v9, v23))
      {
        goto LABEL_19;
      }

      v24 = swift_slowAlloc();
      *v24 = 67109120;
      *(v24 + 4) = v16;
      _os_log_impl(&dword_20AEA4000, v9, v23, "[UnlockedDeviceMonitor] error registering for lock status notifications, result: %u", v24, 8u);
      v12 = v24;
      goto LABEL_18;
    }

    if (one-time initialization token for assertion != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.assertion);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x800000020B4580A0, aBlock);
      _os_log_impl(&dword_20AEA4000, v18, v19, "[UnlockedDeviceMonitor] registered for lock status notifications: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x20F2E9420](v21, -1, -1);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    *(v7 + 16) = out_token;
  }
}

double closure #1 in closure #1 in UnlockedDeviceMonitor.startMonitoring()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    UnlockedDeviceMonitor.handleKeyBagLockStatusNotification()();
  }

  return result;
}

void closure #1 in UnlockedDeviceMonitor.stopMonitoring()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + 16) == -1)
    {
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static WOLog.assertion);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_20AEA4000, v8, v9, "[UnlockedDeviceMonitor] not monitoring lock status notifications", v10, 2u);
        MEMORY[0x20F2E9420](v10, -1, -1);
      }
    }

    else
    {
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      __swift_project_value_buffer(v3, static WOLog.assertion);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_20AEA4000, v4, v5, "[UnlockedDeviceMonitor] deregistering for lock status notifications", v6, 2u);
        MEMORY[0x20F2E9420](v6, -1, -1);
      }

      notify_cancel(*(v2 + 16));
      *(v2 + 16) = -1;
    }
  }
}

double protocol witness for UnlockedDeviceMonitorProtocol.delegate.setter in conformance UnlockedDeviceMonitor(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 32) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

uint64_t (*protocol witness for UnlockedDeviceMonitorProtocol.delegate.modify in conformance UnlockedDeviceMonitor(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return protocol witness for UnlockedDeviceMonitorProtocol.delegate.modify in conformance UnlockedDeviceMonitor;
}

void UnlockedDeviceMonitor.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
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

uint64_t protocol witness for UnlockedDeviceMonitorProtocol.unlocked.getter in conformance UnlockedDeviceMonitor()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

double specialized closure #1 in UnlockedDeviceMonitor.handleKeyBagLockStatusNotification()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MKBGetDeviceLockState();
    if (v4)
    {
      v5 = v4 == 3;
    }

    else
    {
      v5 = 1;
    }

    v6 = v5;
    swift_beginAccess();
    *(v3 + 40) = v6;
    if (one-time initialization token for assertion != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.assertion);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 67109378;
      *(v10 + 4) = *(v3 + 40);

      *(v10 + 8) = 2080;
      swift_beginAccess();
      v12 = swift_unknownObjectWeakLoadStrong();
      v13 = *(v3 + 32);
      v20[1] = v12;
      v20[2] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29UnlockedDeviceMonitorDelegate_pSgMd, &_s11WorkoutCore29UnlockedDeviceMonitorDelegate_pSgMR);
      v14 = Optional.description.getter();
      v16 = v15;
      swift_unknownObjectRelease();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v20);

      *(v10 + 10) = v17;
      _os_log_impl(&dword_20AEA4000, v8, v9, "[UnlockedDeviceMonitor] handleKeyBagLockStatusNotification, unlocked: %{BOOL}d, delegate: %s", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v18 = *(v3 + 32);
      ObjectType = swift_getObjectType();
      (*(v18 + 8))(*(v3 + 40), ObjectType, v18);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double IntervalWorkoutTracker.currentPaceInMetersPerSecond.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 120);
}

double IntervalWorkoutTracker.averagePaceInMetersPerSecond.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 112);
}

double IntervalWorkoutTracker.fastestPaceInMetersPerSecond.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_thisStepData);
  swift_beginAccess();
  return *(v1 + 128);
}

Swift::Bool __swiftcall IntervalWorkoutTracker.isPaceAvailable()()
{
  v1 = [*(v0 + OBJC_IVAR___WOIntervalWorkoutTracker_fallbackDataProvider) paceProvider];
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 isPaceAvailable];
  swift_unknownObjectRelease();
  return v2;
}

void MetricValue.init(metricType:value:isStale:formattingManager:activityType:)(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v126 = a3;
  v127 = a4;
  v125 = a2;
  v9 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v124 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v123 = v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v122 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v116 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  MEMORY[0x28223BE20](v27, v28);
  v31 = v116 - v30;
  if (a1 <= 7)
  {
    if (a1 > 4)
    {
      if (a1 == 5)
      {
        goto LABEL_21;
      }

      if (a1 != 7)
      {
        goto LABEL_31;
      }

      v32 = v126;
      v37 = [v126 localizedShortTypeDistinguishingUnitStringForEnergyType:3 workoutSectionType:1 multiline:0];
      if (v37)
      {
        v19 = v37;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v38;

LABEL_36:
        v99 = [v32 localizedStringWithEnergyInCalories:3 energyType:0 unitStyle:a6];
        if (v99)
        {
LABEL_40:
          v100 = v99;
          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v101;

          goto LABEL_50;
        }

        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v19 = FIUIDistanceTypeForActivityType();
        v32 = v126;
        v68 = [v126 localizedShortUnitStringForDistanceUnit:objc_msgSend(v126 textCase:{sel_naturalScaleUnitForDistanceInMeters_distanceType_, v19, a6), 1}];
        if (v68)
        {
          v69 = v68;
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v70;

          goto LABEL_39;
        }

LABEL_38:
        v34 = 0;
        v36 = 0;
LABEL_39:
        v99 = [v32 localizedCompactNaturalScaleStringWithDistanceInMeters:v19 distanceType:0 unitStyle:0 usedUnit:a6];
        if (!v99)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        goto LABEL_40;
      }

      if (a1 != 2)
      {
        goto LABEL_31;
      }

      v32 = v126;
      v33 = [v126 localizedShortTypeDistinguishingUnitStringForEnergyType:1 workoutSectionType:1 multiline:0];
      if (v33)
      {
        v19 = v33;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v99 = [v32 localizedStringWithEnergyInCalories:1 energyType:0 unitStyle:a6];
      if (v99)
      {
        goto LABEL_40;
      }

      __break(1u);
    }

    v34 = 0;
    v36 = 0;
    goto LABEL_36;
  }

  if (a1 > 11)
  {
    switch(a1)
    {
      case 12:
        v128 = a6;
        v71 = v29;
        static Locale.autoupdatingCurrent.getter();
        v121 = lazy protocol witness table accessor for type Double and conformance Double();
        FloatingPointFormatStyle.init(locale:)();
        v72 = v122;
        (*(v122 + 104))(v15, *MEMORY[0x277D84688], v12);
        MEMORY[0x20F2E4420](v15, 0, 1, v20);
        (*(v72 + 8))(v15, v12);
        v73 = *(v21 + 8);
        v73(v25, v20);
        v74 = v123;
        static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
        MEMORY[0x20F2E4430](v74, v20);
        (*(v124 + 8))(v74, v9);
        v73(v71, v20);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
        BinaryFloatingPoint.formatted<A>(_:)();
        v73(v31, v20);
        v65 = v129;
        v66 = v130;
        v75 = [objc_opt_self() localizedShortPowerUnitString];
        if (v75)
        {
          v76 = v75;
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v77;

LABEL_51:
          v56 = 0;
          v58 = 0;
          goto LABEL_52;
        }

        break;
      case 16:
        v128 = a6;
        v87 = v29;
        static Locale.autoupdatingCurrent.getter();
        lazy protocol witness table accessor for type Double and conformance Double();
        v121 = v9;
        FloatingPointFormatStyle.init(locale:)();
        v88 = v122;
        (*(v122 + 104))(v15, *MEMORY[0x277D84688], v12);
        MEMORY[0x20F2E4420](v15, 0, 1, v20);
        (*(v88 + 8))(v15, v12);
        v89 = *(v21 + 8);
        v89(v25, v20);
        v90 = v123;
        static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
        MEMORY[0x20F2E4430](v90, v20);
        (*(v124 + 8))(v90, v121);
        v89(v87, v20);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
        v91 = v127;
        BinaryFloatingPoint.formatted<A>(_:)();
        v89(v31, v20);
        v65 = v129;
        v66 = v130;
        v92 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType_];
        if (v92)
        {
          v93 = v92;
          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v36 = v94;

          goto LABEL_51;
        }

        break;
      case 40:
LABEL_21:
        v118 = v12;
        v119 = v29;
        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v49 = [objc_opt_self() bundleForClass_];
        v120 = a5;
        v50 = v49;
        v51 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B4685F0);
        v52 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v53 = [v50 localizedStringForKey:v51 value:0 table:v52];
        v117 = v31;
        v54 = v21;
        v121 = v9;
        v55 = v53;

        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;

        a5 = v120;
        v128 = a6;
        static Locale.autoupdatingCurrent.getter();
        v116[1] = lazy protocol witness table accessor for type Double and conformance Double();
        FloatingPointFormatStyle.init(locale:)();
        v59 = v122;
        v60 = v118;
        (*(v122 + 104))(v15, *MEMORY[0x277D84688], v118);
        v61 = v119;
        MEMORY[0x20F2E4420](v15, 0, 1, v20);
        (*(v59 + 8))(v15, v60);
        v62 = *(v54 + 8);
        v62(v25, v20);
        v63 = v123;
        static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
        v64 = v117;
        MEMORY[0x20F2E4430](v63, v20);
        (*(v124 + 8))(v63, v121);
        v62(v61, v20);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
        BinaryFloatingPoint.formatted<A>(_:)();

        v62(v64, v20);
        v36 = 0;
        v34 = 0;
        v65 = v129;
        v66 = v130;
        v67 = xmmword_20B4465B0;
LABEL_53:
        v115 = v125 & 1;
        *a5 = v34;
        *(a5 + 8) = v36;
        *(a5 + 16) = v65;
        *(a5 + 24) = v66;
        *(a5 + 32) = v67;
        *(a5 + 48) = v56;
        *(a5 + 56) = v58;
        *(a5 + 64) = v115;
        return;
      default:
        goto LABEL_31;
    }

    v36 = 0;
    v34 = 0;
    goto LABEL_51;
  }

  if (a1 != 8)
  {
    if (a1 == 10)
    {
      v39 = v126;
      v40 = [v126 unitManager];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 userDistanceUnitForDistanceType_];

        v43 = [v39 localizedShortUnitStringForDistanceUnit:v42 textCase:1];
        if (v43)
        {
          v44 = v43;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = v46;
        }

        else
        {
          v45 = 0;
          v47 = 0xE000000000000000;
        }

        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        v102 = swift_getObjCClassFromMetadata();
        v103 = [objc_opt_self() bundleForClass_];
        v104 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B46CB30);
        v105 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
        v106 = [v103 localizedStringForKey:v104 value:0 table:v105];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v107 = swift_allocObject();
        *(v107 + 16) = xmmword_20B423A90;
        *(v107 + 56) = MEMORY[0x277D837D0];
        *(v107 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v107 + 32) = v45;
        *(v107 + 40) = v47;

        v34 = static String.localizedStringWithFormat(_:_:)();
        v36 = v108;

        v109 = [v39 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:a6];
        if (v109)
        {
          v110 = v109;

          v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v66 = v111;

          goto LABEL_51;
        }

        goto LABEL_57;
      }

      __break(1u);
      goto LABEL_55;
    }

LABEL_31:
    v128 = a6;
    v95 = v29;
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    v121 = v9;
    FloatingPointFormatStyle.init(locale:)();
    v96 = v122;
    (*(v122 + 104))(v15, *MEMORY[0x277D84688], v12);
    MEMORY[0x20F2E4420](v15, 0, 1, v20);
    (*(v96 + 8))(v15, v12);
    v97 = *(v21 + 8);
    v97(v25, v20);
    v98 = v123;
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F2E4430](v98, v20);
    (*(v124 + 8))(v98, v121);
    v97(v95, v20);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
    BinaryFloatingPoint.formatted<A>(_:)();

    v97(v31, v20);
    v36 = 0;
    v34 = 0;
    v56 = 0;
    v58 = 0;
    v65 = v129;
    v66 = v130;
LABEL_52:
    v67 = 0uLL;
    goto LABEL_53;
  }

  v78 = FIUIDistanceTypeForActivityType();
  v79 = v126;
  v80 = [v126 unitManager];
  if (v80)
  {
    v81 = v80;
    v82 = [v80 paceDistanceUnitForDistanceType_];

    v83 = MEMORY[0x20F2E8410](v78);
    v84 = [v79 localizedDistinguishingPaceUnitStringWithMetricType:8 distanceType:v78 distanceUnit:v82 paceFormat:v83 abbreviated:1 multiline:0];
    if (v84)
    {
      v85 = v84;
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v86;
    }

    else
    {
      v34 = 0;
      v36 = 0;
    }

    v112 = [objc_opt_self() meterUnit];
    v113 = [objc_opt_self() quantityWithUnit:v112 doubleValue:a6];

    v100 = [v79 localizedPaceStringWithDistance:v113 overDuration:v83 paceFormat:v78 distanceType:1.0];
    if (!v100)
    {
      goto LABEL_58;
    }

    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v114;

LABEL_50:
    goto LABEL_51;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t MetricValue.formattedUnit.getter()
{
  v1 = *v0;

  return v1;
}

void MetricValue.formattedUnit.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MetricValue.formattedValue.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void MetricValue.formattedValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MetricValue.symbol.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void MetricValue.symbol.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t MetricValue.symbolAXLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void MetricValue.symbolAXLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricValue.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricValue.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MetricValue.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6C6F626D7973;
  v3 = 0x58416C6F626D7973;
  if (v1 != 3)
  {
    v3 = 0x656C617473;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0x657474616D726F66;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MetricValue.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MetricValue.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MetricValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MetricValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MetricValue.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore11MetricValueV10CodingKeys33_4E46E2ACEC638761E142F899AAC8B888LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore11MetricValueV10CodingKeys33_4E46E2ACEC638761E142F899AAC8B888LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v13 - v6;
  v8 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v8;
  v9 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v9;
  v10 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = v10;
  v13[1] = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = 0;
  v11 = v20;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v11)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v24 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v23 = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v22 = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v21 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

void MetricValue.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  if (*(v1 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  if (!v2)
  {
    Hasher._combine(_:)(0);
    if (v3)
    {
      goto LABEL_6;
    }

LABEL_8:
    Hasher._combine(_:)(0);
    goto LABEL_9;
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_9:
  Hasher._combine(_:)(v4);
}

Swift::Int MetricValue.hashValue.getter()
{
  Hasher.init(_seed:)();
  MetricValue.hash(into:)(v1);
  return Hasher._finalize()();
}

void MetricValue.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore11MetricValueV10CodingKeys33_4E46E2ACEC638761E142F899AAC8B888LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore11MetricValueV10CodingKeys33_4E46E2ACEC638761E142F899AAC8B888LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v41[0]) = 0;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v11;
    v13 = v10;
    LOBYTE(v41[0]) = 1;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v15;
    v34 = v14;
    v35 = v13;
    LOBYTE(v41[0]) = 2;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v18;
    v33 = v17;
    v32 = a2;
    LOBYTE(v41[0]) = 3;
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v22 = v21;
    v31 = v20;
    v44 = 4;
    v23 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = *(v6 + 8);
    v43 = v23;
    v24(v9, v5);
    v26 = v34;
    v25 = v35;
    *&v36 = v35;
    *(&v36 + 1) = v12;
    *&v37 = v34;
    *(&v37 + 1) = v16;
    *&v38 = v33;
    *(&v38 + 1) = v19;
    *&v39 = v31;
    *(&v39 + 1) = v22;
    v27 = v43 & 1;
    v40 = v43 & 1;
    v28 = v32;
    *(v32 + 64) = v43 & 1;
    v29 = v39;
    v28[2] = v38;
    v28[3] = v29;
    v30 = v37;
    *v28 = v36;
    v28[1] = v30;
    outlined init with copy of MetricValue(&v36, v41);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v41[0] = v25;
    v41[1] = v12;
    v41[2] = v26;
    v41[3] = v16;
    v41[4] = v33;
    v41[5] = v19;
    v41[6] = v31;
    v41[7] = v22;
    v42 = v27;
    outlined destroy of MetricValue(v41);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MetricValue()
{
  Hasher.init(_seed:)();
  MetricValue.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MetricValue(uint64_t a1)
{
  Hasher.init(_seed:)();
  MetricValue.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t specialized static MetricValue.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[7];
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v14 = *(a2 + 56);
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v19 = *(a2 + 48);
    v20 = a1[6];
    v21 = *(a2 + 64);
    v22 = *(a1 + 64);
    if ((*a1 != *a2 || v3 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = *(a2 + 48);
    v20 = a1[6];
    v21 = *(a2 + 64);
    v22 = *(a1 + 64);
    if (v9)
    {
      return 0;
    }
  }

  if ((v4 != v10 || v6 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13 || (v5 != v12 || v7 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    v16 = v21;
    v15 = v22;
    if (v14)
    {
      if (v20 == v19 && v8 == v14)
      {
        return v15 ^ v16 ^ 1u;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v21;
      v15 = v22;
      if (v17)
      {
        return v15 ^ v16 ^ 1u;
      }
    }
  }

  else
  {
    v16 = v21;
    v15 = v22;
    if (!v14)
    {
      return v15 ^ v16 ^ 1u;
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MetricValue.CodingKeys and conformance MetricValue.CodingKeys);
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

uint64_t getEnumTagSinglePayload for MetricValue(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for MetricValue(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MetricValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetricValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized MetricValue.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x657474616D726F66 && a2 == 0xED000074696E5564;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE0065756C615664 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x58416C6F626D7973 && a2 == 0xED00006C6562614CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C617473 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

BOOL @objc AVAudioSessionRouteDescription.isDeviceSpeaker.getter(void *a1)
{
  v1 = a1;
  v2 = AVAudioSessionRouteDescription.isDeviceSpeaker.getter();

  return v2;
}

BOOL AVAudioSessionRouteDescription.isDeviceSpeaker.getter()
{
  v1 = [v0 outputs];
  type metadata accessor for AVAudioSessionPortDescription();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_20:
    v15 = __CocoaSet.count.getter();
  }

  else
  {
    v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v15 == v3)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x20F2E7A20](v3, v2);
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v2 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = [v5 portType];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v8 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v10 == v11)
    {

      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v3 = v4 + 1;
  }

  while ((v13 & 1) == 0);

  return v15 != v4;
}

unint64_t type metadata accessor for AVAudioSessionPortDescription()
{
  result = lazy cache variable for type metadata for AVAudioSessionPortDescription;
  if (!lazy cache variable for type metadata for AVAudioSessionPortDescription)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AVAudioSessionPortDescription);
  }

  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x20F2E7A20](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = __CocoaSet.count.getter();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v10 = v7[3];
      v27 = v7[2];
      v28 = v10;
      v11 = v7[3];
      v29 = v7[4];
      v12 = v7[1];
      v26[0] = *v7;
      v26[1] = v12;
      v23 = v27;
      v24 = v11;
      v25 = v7[4];
      v21 = v26[0];
      v22 = v9;
      outlined init with copy of WorkoutDevice(v26, &v16);
      v13 = a1(&v21);
      if (v3)
      {
        break;
      }

      v4 = v13;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = v21;
      v17 = v22;
      outlined destroy of WorkoutDevice(&v16);
      v14 = v8-- == 0;
      v7 += 5;
      if ((v4 | v14))
      {
        return v4 & 1;
      }
    }

    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    outlined destroy of WorkoutDevice(&v16);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Bool __swiftcall WorkoutReadinessChecker.supportsPairedWatchFeatures()()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  v2 = (v12 + 88);
  v3 = *(v12 + 16) + 1;
  while (--v3)
  {
    v4 = *v2;
    v5 = *(v2 - 24);
    v2 += 80;
    if (v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 == 0;
    }

    if (!v6)
    {

      return 1;
    }
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B46CB60);
  v10 = [v8 BOOLForKey_];

  v7 = (v10 & 1) == 0 && (v12 = v1, !WorkoutReadinessChecker.isGizmoWorkoutAppMissing()()) && specialized static DataLinkBackwardCompatibilityUtility.activePairedWatch(supports:)();
  return v7;
}

Swift::Bool __swiftcall WorkoutReadinessChecker.shouldUseWatchFitnessTracking()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B46CB60);
  v2 = [v0 BOOLForKey_];

  if (v2)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = FIGetActivePairedDevice();
  if (!v3)
  {
LABEL_6:
    v4 = 0;
  }

  else
  {

    v4 = 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  v5 = *(v9 + 16) + 1;
  v6 = 64;
  while (--v5)
  {
    v7 = *(v9 + v6);
    v6 += 80;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  v4 = 0;
LABEL_12:

  return v4;
}

void key path getter for WorkoutDevicesProvider.devices : WorkoutDevicesProvider(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void key path setter for WorkoutDevicesProvider.devices : WorkoutDevicesProvider(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v2;
  static Published.subscript.setter();
  WorkoutDevicesProvider.devices.didset();
}

Swift::Bool __swiftcall WorkoutReadinessChecker.supportsExternalHeartRateSensorFeatures()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  v0 = (v7 + 88);
  v1 = *(v7 + 16) + 1;
  while (--v1)
  {
    v2 = *v0;
    v3 = *(v0 - 24);
    v0 += 80;
    if ((v3 - 1) <= 1 && v2 != 0)
    {

      v5 = 1;
      return v5 & 1;
    }
  }

  v5 = specialized WorkoutDevicesProvider.heartRateDeviceWasPreviouslyConnected.getter();
  return v5 & 1;
}

Swift::Bool __swiftcall WorkoutReadinessChecker.isGizmoWorkoutAppMissing()()
{
  v1 = *v0;
  if ([objc_opt_self() isAppleInternalInstall] && (v2 = objc_msgSend(objc_opt_self(), sel_standardUserDefaults), v3 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B46CB90), v4 = objc_msgSend(v2, sel_BOOLForKey_, v3), v2, v3, v4))
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.activityPicker);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20AEA4000, v6, v7, "fakeGizmoWorkoutAppMissing is set to true. Returning isGizmoWorkoutAppMissing as true", v8, 2u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }
  }

  else
  {
    v9 = *(v1 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner);
    if (v9)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v10 = v9;
      static Published.subscript.getter(&v12);

      return v12 == 2;
    }
  }

  return 1;
}

Swift::Bool __swiftcall WorkoutReadinessChecker.isFitnessTrackingDisabled()()
{
  if (WorkoutReadinessChecker.shouldUseWatchFitnessTracking()())
  {
    v0 = FIIsFitnessTrackingEnabled();
  }

  else
  {
    v0 = FIIsPhoneFitnessTrackingEnabled();
  }

  return v0 ^ 1;
}

char *WorkoutReadinessChecker.eligibleWorkoutDevices()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v18);

  v0 = *(v18 + 16);

  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v18);

  v1 = v18;
  v2 = *(v18 + 16);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = v2 - 1;
  v4 = MEMORY[0x277D84F90];
  for (i = 32; ; i += 80)
  {
    v6 = *(v1 + i + 48);
    v7 = *(v1 + i + 64);
    v8 = *(v1 + i + 16);
    v20 = *(v1 + i + 32);
    v9 = *(v1 + i);
    v21 = v6;
    v22 = v7;
    v18 = v9;
    v19 = v8;
    if (v20)
    {
      break;
    }

    outlined init with copy of WorkoutDevice(&v18, v17);
    if (WorkoutReadinessChecker.supportsPairedWatchFeatures()())
    {
      goto LABEL_7;
    }

    outlined destroy of WorkoutDevice(&v18);
    if (!v3)
    {
      goto LABEL_14;
    }

LABEL_12:
    --v3;
  }

  outlined init with copy of WorkoutDevice(&v18, v17);
LABEL_7:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v11 = *(v4 + 2);
  v10 = *(v4 + 3);
  if (v11 >= v10 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v4);
  }

  *(v4 + 2) = v11 + 1;
  v12 = &v4[80 * v11];
  *(v12 + 2) = v18;
  v13 = v19;
  v14 = v20;
  v15 = v22;
  *(v12 + 5) = v21;
  *(v12 + 6) = v15;
  *(v12 + 3) = v13;
  *(v12 + 4) = v14;
  if (v3)
  {
    goto LABEL_12;
  }

LABEL_14:

  return v4;
}

WorkoutCore::WorkoutReadinessCheckError_optional __swiftcall WorkoutReadinessChecker.checkReadiness()()
{
  v1 = v0;
  if (WorkoutReadinessChecker.shouldUseWatchFitnessTracking()())
  {
    v2 = FIIsFitnessTrackingEnabled();
    if (!v2)
    {
LABEL_3:
      v3 = 2;
      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v2) = FIIsPhoneFitnessTrackingEnabled();
    if ((v2 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v4 = *(WorkoutReadinessChecker.eligibleWorkoutDevices()() + 2);

  if (v4)
  {
    v3 = 4;
  }

  else
  {
    v5 = [objc_opt_self() standardUserDefaults];
    v6 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B46CB60);
    v7 = [v5 BOOLForKey_];

    if (v7)
    {
      goto LABEL_14;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v8 = FIGetActivePairedDevice();
    if (!v8)
    {
      goto LABEL_14;
    }

    LOBYTE(v2) = specialized static DataLinkBackwardCompatibilityUtility.activePairedWatch(supports:)();
    if ((v2 & 1) == 0)
    {
      v3 = 1;
      goto LABEL_17;
    }

    LOBYTE(v2) = WorkoutReadinessChecker.isGizmoWorkoutAppMissing()();
    if (v2)
    {
      v3 = 0;
    }

    else
    {
LABEL_14:
      LOBYTE(v2) = WorkoutReadinessChecker.supportsExternalHeartRateSensorFeatures()();
      if (v2)
      {
        v3 = 4;
      }

      else
      {
        v3 = 3;
      }
    }
  }

LABEL_17:
  *v1 = v3;
  return v2;
}

uint64_t getEnumTagSinglePayload for WorkoutReadinessChecker(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for WorkoutReadinessChecker(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ()(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

double WorkoutPlaylistController.setDelegate(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = a1;

  swift_unknownObjectRetain();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in WorkoutPlaylistController.setDelegate(_:), v8);

  return result;
}

uint64_t closure #1 in WorkoutPlaylistController.setDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in WorkoutPlaylistController.setDelegate(_:), a4, 0);
}

uint64_t closure #1 in WorkoutPlaylistController.setDelegate(_:)()
{
  swift_unknownObjectWeakAssign();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in WorkoutPlaylistController.setDelegate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutPlaylistController.setDelegate(_:);

  return closure #1 in WorkoutPlaylistController.setDelegate(_:)(a1, v4, v5, v7, v6);
}

id WorkoutPlaylistController.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  *(v0 + 112) = 0;
  swift_unknownObjectWeakInit();
  v1 = [objc_opt_self() systemRoute];
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v3 = MEMORY[0x20F2E6C00](v4, v6);
  }

  v7 = MEMORY[0x20F2E6C00](0x5074756F6B726F57, 0xEF7473696C79616CLL);
  v8 = [objc_opt_self() pathWithRoute:v1 bundleID:v3 playerID:v7];

  *(v0 + 136) = v8;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for WorkoutPlaylistController();
  v9 = objc_msgSendSuper2(&v17, sel_init);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  if (one-time initialization token for AnnouncerWillStart != -1)
  {
    swift_once();
  }

  [v12 addObserver:v11 selector:? name:? object:?];

  v13 = [v10 defaultCenter];
  v14 = one-time initialization token for AnnouncerDidStop;
  v15 = v11;
  if (v14 != -1)
  {
    swift_once();
  }

  [v13 addObserver:v15 selector:sel_handleAnnouncerDidStop_ name:static NSNotificationName.AnnouncerDidStop object:0];

  return v15;
}

uint64_t WorkoutPlaylistController.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  outlined destroy of weak WorkoutPlaylistControllerDelegate?(v0 + 128);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t WorkoutPlaylistController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  outlined destroy of weak WorkoutPlaylistControllerDelegate?(v0 + 128);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t WorkoutPlaylistController.stopWorkoutPlaylist()()
{
  *(v1 + 152) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlaylistController.stopWorkoutPlaylist(), v0, 0);
}

{
  v1 = v0[19];
  v2 = *(v1 + 113);
  *(v1 + 113) = 0;
  if (v2 == 1)
  {
    WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v3 = v0[19];
  *(v3 + 114) = 0;
  *(v3 + 120) = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    if ([Strong hasWorkoutPlaylist])
    {
      if (one-time initialization token for audio != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      v0[22] = __swift_project_value_buffer(v5, static WOLog.audio);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_20AEA4000, v6, v7, "[workoutmusic] Stop workout playlist if needed.", v8, 2u);
        MEMORY[0x20F2E9420](v8, -1, -1);
      }

      v9 = v0[19];

      v10 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
      v0[23] = v10;
      [v10 setQualityOfService_];
      [v10 setPlayerPath_];
      v12 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type WorkoutPlaylistController and conformance WorkoutPlaylistController, v11, type metadata accessor for WorkoutPlaylistController, &protocol conformance descriptor for WorkoutPlaylistController);
      v13 = swift_task_alloc();
      v0[24] = v13;
      *(v13 + 16) = v10;
      v14 = swift_task_alloc();
      v0[25] = v14;
      v15 = type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
      *v14 = v0;
      v14[1] = WorkoutPlaylistController.stopWorkoutPlaylist();

      return MEMORY[0x2822008A0](v0 + 18, v9, v12, 0xD000000000000015, 0x800000020B46CBB0, partial apply for closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist(), v13, v15);
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.audio);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20AEA4000, v17, v18, "[workoutmusic] No need to stop music -- workout playlist not set.", v19, 2u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  v20 = v0[1];

  return v20();
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = WorkoutPlaylistController.stopWorkoutPlaylist();
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = WorkoutPlaylistController.stopWorkoutPlaylist();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 144);
  *(v0 + 216) = v1;
  v2 = [v1 stop];
  *(v0 + 224) = v2;
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_20B425990;
    *(v4 + 32) = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D278C0]);
    type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for MPCPlayerCommandRequest, 0x277D278C8);
    v6 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v5 initWithCommandRequests_];
    *(v0 + 232) = v8;

    [v8 setOptions_];
    *(v0 + 16) = v0;
    *(v0 + 24) = WorkoutPlaylistController.stopWorkoutPlaylist();
    v9 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 104) = &block_descriptor_83;
    *(v0 + 112) = v9;
    [v8 performWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    v10 = *(v0 + 160);
    v11 = *(v0 + 152);

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v11;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v10, &closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()partial apply, v14);
    swift_unknownObjectRelease();

    v16 = *(v0 + 8);

    return v16();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = WorkoutPlaylistController.stopWorkoutPlaylist();
  }

  else
  {
    v4 = WorkoutPlaylistController.stopWorkoutPlaylist();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = v0[26];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[workoutmusic] Workout playlist failed to stop. Stop command finished with error=%@.", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[19];

  swift_willThrow();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v11;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist(), v14);
  swift_unknownObjectRelease();

  v16 = v0[1];

  return v16();
}

uint64_t WorkoutPlaylistController.stopWorkoutPlaylist()(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v1 + 224);
  v5 = *(v1 + 232);
  v7 = *(v1 + 216);
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "[workoutmusic] Workout playlist stopped.", v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v9 = *(v1 + 160);
  v10 = *(v1 + 152);

  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v9, &closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()partial apply, v13);
  swift_unknownObjectRelease();

  v15 = *(v1 + 8);

  return v15();
}

{
  v2 = v1[29];
  v4 = v1[27];
  v3 = v1[28];
  swift_willThrow();

  v5 = v1[30];
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[workoutmusic] Workout playlist failed to stop. Stop command finished with error=%@.", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v13 = v1[23];
  v14 = v1[20];
  v15 = v1[19];

  swift_willThrow();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
  type metadata accessor for MainActor();

  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist(), v18);
  swift_unknownObjectRelease();

  v20 = v1[1];

  return v20();
}

uint64_t @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist();

  return WorkoutPlaylistController.stopWorkoutPlaylist()();
}

uint64_t @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t WorkoutPlaylistController.shouldStartMusic()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](WorkoutPlaylistController.shouldStartMusic(), v0, 0);
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    if ([Strong hasWorkoutPlaylist])
    {
      v2 = swift_task_alloc();
      v0[4] = v2;
      *v2 = v0;
      v2[1] = WorkoutPlaylistController.shouldStartMusic();

      return WorkoutPlaylistController.isAudioPlayingNearby()();
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.audio);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[workoutmusic] Don't start music -- workout playlist not set", v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v8 = v0[1];

  return v8(0);
}

{
  if (*(v0 + 64))
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static WOLog.audio);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20AEA4000, v2, v3, "[workoutmusic] Don't start music -- audio already playing.", v4, 2u);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }

    swift_unknownObjectRelease();
    v5 = *(v0 + 8);
    goto LABEL_9;
  }

  v6 = *(v0 + 40);
  specialized static AudioSessionUtilities.configureAudioSession()();
  if (v6)
  {
    swift_unknownObjectRelease();
    v5 = *(v0 + 8);
LABEL_9:

    return v5(0);
  }

  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  v8[1] = WorkoutPlaylistController.shouldStartMusic();

  return WorkoutPlaylistController.eligibleAudioRoute()();
}

{
  v1 = *(v0 + 65);
  if (v1 != 1)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.audio);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[workoutmusic] Don't start music -- no eligible audio route.", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }
  }

  swift_unknownObjectRelease();
  v6 = *(v0 + 8);

  return v6(v1);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(0);
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t WorkoutPlaylistController.shouldStartMusic()(char a1)
{
  v4 = *v2;
  *(v4 + 40) = v1;

  v5 = *(v4 + 16);
  if (v1)
  {
    v6 = WorkoutPlaylistController.shouldStartMusic();
  }

  else
  {
    *(v4 + 64) = a1 & 1;
    v6 = WorkoutPlaylistController.shouldStartMusic();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v4 = *v2;
  *(v4 + 56) = v1;

  v5 = *(v4 + 16);
  if (v1)
  {
    v6 = WorkoutPlaylistController.shouldStartMusic();
  }

  else
  {
    *(v4 + 65) = a1 & 1;
    v6 = WorkoutPlaylistController.shouldStartMusic();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t @objc closure #1 in WorkoutPlaylistController.shouldStartMusic()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in WorkoutPlaylistController.shouldStartMusic();

  return WorkoutPlaylistController.shouldStartMusic()();
}

uint64_t @objc closure #1 in WorkoutPlaylistController.shouldStartMusic()(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t WorkoutPlaylistController.isAudioPlayingNearby()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = WorkoutPlaylistController.isAudioPlayingNearby();

  return WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby()();
}

{
  if (*(v0 + 65))
  {
    v1 = *(v0 + 8);

    return v1(1);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = static AudioRoutingControlManager.shared;
    *(v0 + 32) = static AudioRoutingControlManager.shared;

    return MEMORY[0x2822009F8](WorkoutPlaylistController.isAudioPlayingNearby(), v3, 0);
  }
}

{
  v1 = v0[4];
  if (*(v1 + 120))
  {
    v2 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
    v3 = swift_task_alloc();
    v0[7] = v3;
    type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
    *v3 = v0;
    v3[1] = WorkoutPlaylistController.isAudioPlayingNearby();
    v5 = v0[4];

    return MEMORY[0x2822007B8](v0 + 8, v1, v2, 0xD000000000000026, 0x800000020B455B10, closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()partial apply, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = WorkoutPlaylistController.isAudioPlayingNearby();

    return AudioRoutingControlManager.activate()();
  }
}

{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = WorkoutPlaylistController.isAudioPlayingNearby();
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = WorkoutPlaylistController.isAudioPlayingNearby();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(*v0 + 32);

  return MEMORY[0x2822009F8](WorkoutPlaylistController.isAudioPlayingNearby(), v1, 0);
}

{
  return (*(v0 + 8))((*(v0 + 64) & 0xFE) == 2);
}

{
  v1 = *(v0 + 32);
  v2 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
  *v3 = v0;
  v3[1] = WorkoutPlaylistController.isAudioPlayingNearby();
  v5 = *(v0 + 32);

  return MEMORY[0x2822007B8](v0 + 64, v1, v2, 0xD000000000000026, 0x800000020B455B10, closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()partial apply, v5, v4);
}

{
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.audio);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[workoutmusic] isAudioPlayingNearby smart routing areHeadphonesNearbyAndEligibleToPlay error=%@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

uint64_t WorkoutPlaylistController.isAudioPlayingNearby()(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v4 + 16);
    *(v4 + 65) = a1 & 1;

    return MEMORY[0x2822009F8](WorkoutPlaylistController.isAudioPlayingNearby(), v8, 0);
  }
}

uint64_t WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby(), v0, 0);
}

{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
  v0[13] = &block_descriptor_57_1;
  v0[14] = v2;
  [v1 getProactiveRouteWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 160);

  return MEMORY[0x2822009F8](WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby(), v1, 0);
}

{
  v1 = v0[18];
  v0[21] = v1;
  if (v1)
  {
    v2 = v0[20];
    v3 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
    v0[22] = v3;
    v4 = [objc_opt_self() pathWithRoute:v1 bundleID:0 playerID:0];
    [v3 setPlayerPath_];

    [v3 setQualityOfService_];
    v6 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type WorkoutPlaylistController and conformance WorkoutPlaylistController, v5, type metadata accessor for WorkoutPlaylistController, &protocol conformance descriptor for WorkoutPlaylistController);
    v7 = swift_task_alloc();
    v0[23] = v7;
    *(v7 + 16) = v3;
    v8 = swift_task_alloc();
    v0[24] = v8;
    v9 = type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
    *v8 = v0;
    v8[1] = WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby();

    return MEMORY[0x2822008A0](v0 + 19, v2, v6, 0xD000000000000021, 0x800000020B46CD50, partial apply for closure #1 in WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby(), v7, v9);
  }

  else
  {
    lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    v11 = v0[1];

    return v11(0);
  }
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby();
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = WorkoutPlaylistController.isMediaPlayerAudioPlayingNearby();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v22 = v0;
  v2 = v0[19];
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.audio);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v9 = [v4 state];
    if (v9 <= 6)
    {
      v1 = off_277D8C598[v9];
      v10 = off_277D8C560[v9];
    }

    v11 = v1;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v21);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[workoutmusic] media player audio_state=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v17 = v0[21];
  v16 = v0[22];
  v18 = [v4 state];

  v19 = v0[1];

  return v19((v18 < 6) & (0x2Cu >> v18));
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t WorkoutPlaylistController.eligibleAudioRoute()()
{
  *(v1 + 184) = v0;

  return MEMORY[0x2822009F8](WorkoutPlaylistController.eligibleAudioRoute(), v0, 0);
}

{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static AudioRoutingControlManager.shared;
  *(v0 + 192) = static AudioRoutingControlManager.shared;

  return MEMORY[0x2822009F8](WorkoutPlaylistController.eligibleAudioRoute(), v1, 0);
}

{
  v1 = v0[24];
  if (*(v1 + 120))
  {
    v2 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
    v3 = swift_task_alloc();
    v0[27] = v3;
    type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
    *v3 = v0;
    v3[1] = WorkoutPlaylistController.eligibleAudioRoute();
    v5 = v0[24];

    return MEMORY[0x2822007B8](v0 + 249, v1, v2, 0xD000000000000026, 0x800000020B455B10, _s11WorkoutCore26AudioRoutingControlManagerC36areHeadphonesNearbyAndEligibleToPlaySo07AASmartd6DeviceiJ15StreamingStatusVyYaKFyScCyAFs5NeverOGXEfU_TA_0, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = WorkoutPlaylistController.eligibleAudioRoute();

    return AudioRoutingControlManager.activate()();
  }
}

{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 184);
    v4 = WorkoutPlaylistController.eligibleAudioRoute();
  }

  else
  {
    v3 = *(v2 + 192);
    v4 = WorkoutPlaylistController.eligibleAudioRoute();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(*v0 + 192);

  return MEMORY[0x2822009F8](WorkoutPlaylistController.eligibleAudioRoute(), v1, 0);
}

{
  v1 = *(v0 + 184);
  *(v0 + 250) = *(v0 + 249);

  return MEMORY[0x2822009F8](WorkoutPlaylistController.eligibleAudioRoute(), v1, 0);
}

{
  if (*(v0 + 250) == 1)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static WOLog.audio);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_20AEA4000, v2, v3, "[workoutmusic] Smart routing has eligible audio route", v4, 2u);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }

    v5 = *(v0 + 8);

    return v5(1);
  }

  else
  {
    v7 = objc_opt_self();
    *(v0 + 224) = v7;
    v8 = [v7 sharedInstance];
    *(v0 + 232) = v8;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 248;
    *(v0 + 24) = WorkoutPlaylistController.eligibleAudioRoute();
    v9 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
    *(v0 + 104) = &block_descriptor_51_2;
    *(v0 + 112) = v9;
    [v8 activateWithOptions:0x10000000 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

{
  v1 = *(v0 + 192);
  v2 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, 255, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
  *v3 = v0;
  v3[1] = WorkoutPlaylistController.eligibleAudioRoute();
  v5 = *(v0 + 192);

  return MEMORY[0x2822007B8](v0 + 249, v1, v2, 0xD000000000000026, 0x800000020B455B10, _s11WorkoutCore26AudioRoutingControlManagerC36areHeadphonesNearbyAndEligibleToPlaySo07AASmartd6DeviceiJ15StreamingStatusVyYaKFyScCyAFs5NeverOGXEfU_TA_0, v5, v4);
}

{
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.audio);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[26];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[workoutmusic] eligibleAudioRoute smart routing areHeadphonesNearbyAndEligibleToPlay error=%@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = objc_opt_self();
  v0[28] = v12;
  v13 = [v12 sharedInstance];
  v0[29] = v13;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = WorkoutPlaylistController.eligibleAudioRoute();
  v14 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  v0[13] = &block_descriptor_51_2;
  v0[14] = v14;
  [v13 activateWithOptions:0x10000000 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  v3 = *(v1 + 184);
  if (v2)
  {
    v4 = WorkoutPlaylistController.eligibleAudioRoute();
  }

  else
  {
    v4 = WorkoutPlaylistController.eligibleAudioRoute();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 248);

  if (v1 != 1)
  {
    v15 = *(v0 + 184);
    v16 = *(v15 + 113);
    *(v15 + 113) = 1;
    if ((v16 & 1) == 0)
    {
      WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(1);
    }

    lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
    swift_allocError();
    *v17 = 2;
    goto LABEL_14;
  }

  v2 = [*(v0 + 224) sharedInstance];
  v3 = [v2 currentRoute];

  v4 = [v3 isDeviceSpeaker];
  if ((v4 & 1) == 0)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.audio);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, v21, v22, "[workoutmusic] Activated audio session has eligible audio route", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    goto LABEL_20;
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.audio);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[workoutmusic] Don't start music -- current route is device speaker", v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v9 = *(v0 + 184);

  v10 = *(v9 + 113);
  *(v9 + 113) = 1;
  if ((v10 & 1) == 0)
  {
    WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(1);
  }

  v11 = [*(v0 + 224) sharedInstance];
  *(v0 + 176) = 0;
  v12 = [v11 setActive:0 error:v0 + 176];

  v13 = *(v0 + 176);
  if (!v12)
  {
    v25 = v13;
    _convertNSErrorToError(_:)();

LABEL_14:
    swift_willThrow();
    v18 = *(v0 + 8);
    v19 = 0;
    goto LABEL_21;
  }

  v14 = v13;
LABEL_20:
  v18 = *(v0 + 8);
  v19 = v4 ^ 1;
LABEL_21:

  return v18(v19);
}

uint64_t WorkoutPlaylistController.eligibleAudioRoute()(uint64_t a1)
{
  v2 = v1[29];
  swift_willThrow();

  swift_getErrorValue();
  v3 = Error.code.getter();
  if (v3 == 561145203 || v3 == 561015905)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v5 = v1[30];
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.audio);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v1[30];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v10;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_20AEA4000, v8, v9, "[workoutmusic] Don't start music -- Audio session activation failure expected if no audio routes available. error=%@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }
  }

  v15 = v1[23];
  v16 = *(v15 + 113);
  *(v15 + 113) = 1;
  if ((v16 & 1) == 0)
  {
    WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(1);
  }

  swift_willThrow();
  v17 = v1[1];

  return v17(0);
}

uint64_t WorkoutPlaylistController.startWorkoutPlaylist()()
{
  *(v1 + 288) = v0;
  return MEMORY[0x2822009F8](WorkoutPlaylistController.startWorkoutPlaylist(), v0, 0);
}

{
  v1 = v0[36];
  if (*(v1 + 112))
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.audio);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[workoutmusic] Already starting workout playlist, do not start workout playlist.", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = 3;
    goto LABEL_7;
  }

  if (*(v1 + 120) > 4)
  {
    v20 = *(v1 + 113);
    *(v1 + 113) = 0;
    if (v20 == 1)
    {
      WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(0);
    }

    if (one-time initialization token for audio == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[37] = __swift_project_value_buffer(v10, static WOLog.audio);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[workoutmusic] Start workout playlist if audio route available and no audio playing nearby", v13, 2u);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v14 = v0[36];

  HKSessionTrackerAriadneTrigger();
  *(v14 + 114) = 1;
  *(v1 + 112) = 1;
  v15 = *(v14 + 113);
  *(v14 + 113) = 0;
  if (v15 == 1)
  {
    WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v16 = *(v1 + 120);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
LABEL_29:
    swift_once();
LABEL_24:
    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.audio);

    v3 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134218240;
      *(v23 + 4) = *(v1 + 120);

      *(v23 + 12) = 2048;
      *(v23 + 14) = 5;
      _os_log_impl(&dword_20AEA4000, v3, v22, "[workoutmusic] Start workout playlist attempts=%ld exceed max_attempts=%ld, do not start workout playlist.", v23, 0x16u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    else
    {
    }

    v6 = 8;
LABEL_7:

    lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
    swift_allocError();
    *v7 = v6;
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }

  *(v1 + 120) = v18;
  v19 = swift_task_alloc();
  v0[38] = v19;
  *v19 = v0;
  v19[1] = WorkoutPlaylistController.startWorkoutPlaylist();

  return WorkoutPlaylistController.shouldStartMusic()();
}

{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  else
  {
    v5 = *(v2 + 288);

    v4 = WorkoutPlaylistController.startWorkoutPlaylist();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[34];
  v0[44] = v1;
  v0[35] = MEMORY[0x277D84F90];
  v2 = [v1 tracklist];
  v3 = [v2 repeatCommand];

  if (v3)
  {
    v4 = [v3 setRepeatType_];
    swift_unknownObjectRelease();
    if (v4)
    {
      v5 = v4;
      MEMORY[0x20F2E6F30]();
      if (*((v0[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  v6 = [v1 play];
  if (v6)
  {
    v7 = v6;
    MEMORY[0x20F2E6F30]();
    if (*((v0[35] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[35] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v8 = objc_allocWithZone(MEMORY[0x277D278C0]);
  type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for MPCPlayerCommandRequest, 0x277D278C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v8 initWithCommandRequests_];
  v0[45] = v10;

  [v10 setOptions_];
  v0[2] = v0;
  v0[3] = WorkoutPlaylistController.startWorkoutPlaylist();
  v11 = swift_continuation_init();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[46] = v12;
  v0[25] = v12;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[21] = &block_descriptor_17_0;
  v0[22] = v11;
  [v10 performWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  v3 = *(v1 + 288);
  if (v2)
  {
    v4 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  else
  {
    v4 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);

  if (*(v2 + 114) == 1)
  {
    HKSessionTrackerAriadneTrigger();
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[workoutmusic] Workout playlist started! Play command finished successfully.", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = *(v0 + 368);

    v7 = objc_opt_self();
    v8 = [v7 systemRoute];
    *(v0 + 384) = v8;
    v9 = MEMORY[0x20F2E6C00](0xD000000000000018, 0x800000020B46CBF0);
    *(v0 + 392) = v9;
    *(v0 + 80) = v0;
    *(v0 + 88) = WorkoutPlaylistController.startWorkoutPlaylist();
    v10 = swift_continuation_init();
    *(v0 + 264) = v6;
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 232) = &block_descriptor_21_4;
    *(v0 + 240) = v10;
    [v7 setActiveRoute:v8 reason:v9 completion:v0 + 208];

    return MEMORY[0x282200938](v0 + 80);
  }

  else
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20AEA4000, v11, v12, "[workoutmusic] No longer in active once workout playlist started, stopping workout playlist.", v13, 2u);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    v14 = swift_task_alloc();
    *(v0 + 408) = v14;
    *v14 = v0;
    v14[1] = WorkoutPlaylistController.startWorkoutPlaylist();

    return WorkoutPlaylistController.stopWorkoutPlaylist()();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 400) = v2;
  v3 = *(v1 + 288);
  if (v2)
  {
    v4 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  else
  {
    v4 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  *(*(v0 + 288) + 112) = 0;
  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = *v1;
  *(*v1 + 416) = v0;

  v3 = *(v2 + 288);
  if (v0)
  {
    v4 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  else
  {
    v4 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[40];
  v2 = v0[36];
  lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
  swift_allocError();
  *v3 = 4;
  swift_willThrow();

  *(v2 + 112) = 0;
  v4 = v0[1];

  return v4();
}

{
  v1 = v0[39];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[39];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    *(v6 + 8) = 2112;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 10) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[workoutmusic] workout playlist not starting -- should_start=%{BOOL}d error=%@", v6, 0x12u);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = v0[36];

  swift_willThrow();
  *(v10 + 112) = 0;
  v11 = v0[1];

  return v11();
}

{

  v1 = v0[43];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[workoutmusic] Workout playlist failed to start. Play command finished with error=%@.", v5, 0xCu);
    outlined destroy of NSObject?(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v9 = v0[40];
  v10 = v0[36];

  swift_willThrow();
  *(v10 + 112) = 0;
  v11 = v0[1];

  return v11();
}

{
  v1 = *(v0 + 288);

  *(v1 + 112) = 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t WorkoutPlaylistController.startWorkoutPlaylist()(char a1)
{
  v4 = *v2;
  *(v4 + 312) = v1;

  v5 = *(v4 + 288);
  if (v1)
  {
    v6 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  else
  {
    *(v4 + 424) = a1 & 1;
    v6 = WorkoutPlaylistController.startWorkoutPlaylist();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t WorkoutPlaylistController.startWorkoutPlaylist()(uint64_t a1)
{
  if (*(v1 + 424) == 1)
  {
    v2 = *(v1 + 288);
    v3 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
    *(v1 + 320) = v3;
    [v3 setQualityOfService_];
    [v3 setPlayerPath_];
    v5 = lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(&lazy protocol witness table cache variable for type WorkoutPlaylistController and conformance WorkoutPlaylistController, v4, type metadata accessor for WorkoutPlaylistController, &protocol conformance descriptor for WorkoutPlaylistController);
    v6 = swift_task_alloc();
    *(v1 + 328) = v6;
    *(v6 + 16) = v3;
    v7 = swift_task_alloc();
    *(v1 + 336) = v7;
    v8 = type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
    *v7 = v1;
    v7[1] = WorkoutPlaylistController.startWorkoutPlaylist();

    return MEMORY[0x2822008A0](v1 + 272, v2, v5, 0xD000000000000016, 0x800000020B46CBD0, partial apply for closure #1 in WorkoutPlaylistController.startWorkoutPlaylist(), v6, v8);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      _os_log_impl(&dword_20AEA4000, v9, v10, "[workoutmusic] workout playlist not starting -- should_start=%{BOOL}d", v11, 8u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = *(v1 + 288);

    lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
    swift_allocError();
    *v13 = 7;
    swift_willThrow();
    *(v12 + 112) = 0;
    v14 = *(v1 + 8);

    return v14();
  }
}

{
  v2 = v1[44];
  v3 = v1[45];
  swift_willThrow();

  v4 = v1[47];
  v5 = v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[workoutmusic] Workout playlist failed to start. Play command finished with error=%@.", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v12 = v1[40];
  v13 = v1[36];

  swift_willThrow();
  *(v13 + 112) = 0;
  v14 = v1[1];

  return v14();
}

{
  v3 = v1[49];
  v2 = v1[50];
  v4 = v1[48];
  swift_willThrow();

  v5 = v2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[50];
  v10 = v1[40];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v9;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_20AEA4000, v6, v7, "[workoutmusic] Failed to set Watch as MPAV active route. Now Playing View may show incorrectly. error=%@", v11, 0xCu);
    outlined destroy of NSObject?(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
  }

  *(v1[36] + 112) = 0;
  v15 = v1[1];

  return v15();
}

double closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPCPlayerResponse?, @guaranteed Error?) -> ();
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);

  v17 = [a2 performWithCompletion_];
  _Block_release(v16);
  swift_unknownObjectRelease();
  return result;
}

uint64_t closure #1 in closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()(void *a1, id a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
      swift_allocError();
      v8 = v7;
      a2 = 0;
      *v8 = a4;
    }

    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t @objc closure #1 in WorkoutPlaylistController.startWorkoutPlaylist()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in WorkoutPlaylistController.startWorkoutPlaylist();

  return WorkoutPlaylistController.startWorkoutPlaylist()();
}

void WorkoutPlaylistController.observePickableRoutesChanged(shouldObserve:)(char a1)
{
  v2 = v1;
  v47[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.audio);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v47[0] = v8;
    *v7 = 136315138;
    if (a1)
    {
      v9 = 0x6E6976726573626FLL;
    }

    else
    {
      v9 = 0x73626F20706F7473;
    }

    if (a1)
    {
      v10 = 0xE900000000000067;
    }

    else
    {
      v10 = 0xEE00676E69767265;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v47);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[workoutmusic] %s pickableRoutesChanged notifications", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v12 = objc_opt_self();
  v13 = [v12 sharedInstance];
  v14 = v13;
  if (a1)
  {
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSNotificationNameaGMd, &_ss23_ContiguousArrayStorageCySo18NSNotificationNameaGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_20B423A90;
      v16 = *MEMORY[0x277D26C68];
      *(v15 + 32) = *MEMORY[0x277D26C68];
      type metadata accessor for NSNotificationName(0);
      v17 = v16;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v19 = *MEMORY[0x277D26DD0];
      v47[0] = 0;
      v20 = [v14 setAttribute:isa forKey:v19 error:v47];

      v21 = v47[0];
      if (v20)
      {
        v22 = objc_opt_self();
        v23 = v21;
        v24 = [v22 defaultCenter];
        v25 = [v12 sharedInstance];
        [v24 addObserver:v2 selector:sel_handlePickableRoutesChangedNotification_ name:v17 object:v25];
LABEL_18:

        return;
      }

      v33 = v47[0];
      v34 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v35 = v34;
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        v40 = v34;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        v42 = "[workoutmusic] could not subscribe to pickable routes did change. error=%@";
LABEL_23:
        _os_log_impl(&dword_20AEA4000, v36, v37, v42, v38, 0xCu);
        outlined destroy of NSObject?(v39);
        MEMORY[0x20F2E9420](v39, -1, -1);
        MEMORY[0x20F2E9420](v38, -1, -1);

        return;
      }

LABEL_24:

      return;
    }

    __break(1u);
  }

  else if (v13)
  {
    v26 = Array._bridgeToObjectiveC()().super.isa;
    v27 = *MEMORY[0x277D26DD0];
    v47[0] = 0;
    v28 = [v14 setAttribute:v26 forKey:v27 error:v47];

    v29 = v47[0];
    if (v28)
    {
      v30 = objc_opt_self();
      v31 = v29;
      v24 = [v30 defaultCenter];
      v32 = *MEMORY[0x277D26C68];
      v25 = [v12 sharedInstance];
      [v24 removeObserver:v2 name:v32 object:v25];
      goto LABEL_18;
    }

    v43 = v47[0];
    v34 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v44 = v34;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v45 = v34;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v46;
      *v39 = v46;
      v42 = "[workoutmusic] could not unsubscribe from pickable routes did change. error=%@";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t closure #1 in WorkoutPlaylistController.handlePickableRoutesChangedNotification(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutPlaylistController.handlePickableRoutesChangedNotification(_:);

  return WorkoutPlaylistController.pickableRoutesChanged()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t @objc WorkoutPlaylistController.handleAnnouncerWillStart(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Notification();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t WorkoutPlaylistController.pickableRoutesChanged()()
{
  *(v1 + 312) = v0;
  return MEMORY[0x2822009F8](WorkoutPlaylistController.pickableRoutesChanged(), v0, 0);
}

{
  v96 = v0;
  v2 = v0[39];
  if ((*(v2 + 113) & 1) == 0)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.audio);

    v4 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = *(v2 + 113);

      _os_log_impl(&dword_20AEA4000, v4, v9, "[workoutmusic] ignoring pickableRoutesChanged due to shouldPlayWhenRouteAvailable=%{BOOL}d", v10, 8u);
      v11 = v10;
LABEL_80:
      MEMORY[0x20F2E9420](v11, -1, -1);
      goto LABEL_81;
    }

    goto LABEL_81;
  }

  if (*(v2 + 115) == 1)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.audio);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_81;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "[workoutmusic] ignoring pickableRoutesChanged due to workout voice feedback announcer is active";
    goto LABEL_79;
  }

  specialized static WOAVRoute.pickableRoutes(for:)(0x69562F6F69647541, 0xEB000000006F6564);
  v13 = v12;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v0[40] = __swift_project_value_buffer(v14, static WOLog.audio);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v95 = v18;
    *v17 = 136315138;
    v19 = type metadata accessor for WOAVRoute();
    v20 = MEMORY[0x20F2E6F70](v13, v19);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v95);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_20AEA4000, v15, v16, "[workoutmusic] pickableRoutesChanged pickableRoutes=%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x20F2E9420](v18, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);
  }

  if (v13 >> 62)
  {
    v23 = __CocoaSet.count.getter();
    if (v23)
    {
      goto LABEL_17;
    }

    goto LABEL_77;
  }

  v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
LABEL_77:

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "[workoutmusic] pickableRoutesChanged but no eligible audio route, not starting workout playlist";
LABEL_79:
      _os_log_impl(&dword_20AEA4000, v4, v5, v7, v6, 2u);
      v11 = v6;
      goto LABEL_80;
    }

LABEL_81:

    v90 = v0[1];

    return v90();
  }

LABEL_17:
  v24 = 0;
  v93 = v13 & 0xFFFFFFFFFFFFFF8;
  v94 = v13 & 0xC000000000000001;
  v91 = v23;
  v92 = v13;
  while (1)
  {
    if (v94)
    {
      v25 = MEMORY[0x20F2E7A20](v24, v13);
    }

    else
    {
      if (v24 >= *(v93 + 16))
      {
        goto LABEL_74;
      }

      v25 = *(v13 + 8 * v24 + 32);
    }

    v1 = v25;
    v0[41] = v25;
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v27 = OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary;
    v28 = *&v25[OBJC_IVAR____TtC11WorkoutCore9WOAVRoute_routeDictionary];
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v28 + 16))
    {
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
      v33 = v32;

      if (v33)
      {
        outlined init with copy of Any(*(v28 + 56) + 32 * v31, (v0 + 2));
        if ((swift_dynamicCast() & 1) != 0 && v0[32] == 0x4274657364616548 && v0[33] == 0xE900000000000054)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      v35 = *&v1[v27];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v35 + 16))
      {

LABEL_37:
        v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v41 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_38;
      }

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37);
      v40 = v39;

      if ((v40 & 1) == 0)
      {
        goto LABEL_37;
      }

      outlined init with copy of Any(*(v35 + 56) + 32 * v38, (v0 + 6));
      if ((swift_dynamicCast() & 1) == 0 || v0[30] != 0x6E6F687064616548 || v0[31] != 0xEC00000054427365)
      {
        goto LABEL_37;
      }

LABEL_35:
    }

LABEL_38:
    v42 = *&v1[v27];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v42 + 16))
    {
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
      v47 = v46;

      if (v47)
      {
        outlined init with copy of Any(*(v42 + 56) + 32 * v45, (v0 + 10));
        type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v48 = v0[38];
          v49 = [v48 BOOLValue];

          if (v49)
          {
            goto LABEL_68;
          }
        }
      }
    }

    else
    {
    }

    v50 = *&v1[v27];
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v50 + 16))
    {
      goto LABEL_61;
    }

    v53 = specialized __RawDictionaryStorage.find<A>(_:)(v51, v52);
    v55 = v54;

    if ((v55 & 1) == 0)
    {
      goto LABEL_62;
    }

    outlined init with copy of Any(*(v50 + 56) + 32 * v53, (v0 + 14));
    type metadata accessor for MPCPlayerResponse(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_62;
    }

    v56 = v0[34];
    v57 = [v56 BOOLValue];

    if ((v57 & 1) == 0)
    {
      goto LABEL_62;
    }

    v58 = *&v1[v27];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v58 + 16))
    {
      goto LABEL_67;
    }

    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v60);
    v63 = v62;

    if ((v63 & 1) == 0)
    {
      goto LABEL_68;
    }

    outlined init with copy of Any(*(v58 + 56) + 32 * v61, (v0 + 18));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v64 = v0[35];
    v65 = [v64 BOOLValue];

    if ((v65 & 1) == 0)
    {
      goto LABEL_68;
    }

    v66 = *&v1[v27];
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v66 + 16))
    {
LABEL_67:

      goto LABEL_68;
    }

    v69 = specialized __RawDictionaryStorage.find<A>(_:)(v67, v68);
    v71 = v70;

    if ((v71 & 1) == 0)
    {
      goto LABEL_68;
    }

    outlined init with copy of Any(*(v66 + 56) + 32 * v69, (v0 + 22));
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v72 = v0[36];
    v73 = [v72 BOOLValue];

    if ((v73 & 1) == 0)
    {
      goto LABEL_68;
    }

    v74 = *&v1[v27];
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v74 + 16))
    {
LABEL_61:

LABEL_62:

      v13 = v92;
      goto LABEL_63;
    }

    v77 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76);
    v79 = v78;

    if ((v79 & 1) == 0)
    {
      goto LABEL_62;
    }

    outlined init with copy of Any(*(v74 + 56) + 32 * v77, (v0 + 26));
    v13 = v92;
    if (swift_dynamicCast())
    {
      v80 = v0[37];
      v81 = [v80 BOOLValue];

      if (v81)
      {
        goto LABEL_68;
      }
    }

LABEL_63:
    ++v24;
    if (v26 == v91)
    {
      goto LABEL_77;
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_68:

  v82 = v1;
  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *v85 = 138412290;
    *(v85 + 4) = v82;
    *v86 = v82;
    v87 = v82;
    _os_log_impl(&dword_20AEA4000, v83, v84, "[workoutmusic] starting workout playlist as pickableRoutesChanged with eligible audio route=%@", v85, 0xCu);
    outlined destroy of NSObject?(v86);
    MEMORY[0x20F2E9420](v86, -1, -1);
    MEMORY[0x20F2E9420](v85, -1, -1);
  }

  v88 = swift_task_alloc();
  v0[42] = v88;
  *v88 = v0;
  v88[1] = WorkoutPlaylistController.pickableRoutesChanged();

  return WorkoutPlaylistController.startWorkoutPlaylist()();
}

{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 312);
  if (v0)
  {
    v4 = WorkoutPlaylistController.pickableRoutesChanged();
  }

  else
  {
    v4 = WorkoutPlaylistController.pickableRoutesChanged();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[43];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[43];
  v7 = v0[41];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[workoutmusic] pickableRoutesChanged startWorkoutPlaylist failed with error=%@", v8, 0xCu);
    outlined destroy of NSObject?(v9);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t WorkoutPlaylistController.pickableRoutesChanged()(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 328);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "[workoutmusic] pickableRoutesChanged startWorkoutPlaylist completed successfully", v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v7 = *(v1 + 8);

  return v7();
}

uint64_t closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();

  return MEMORY[0x2822009F8](closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist(), a4, 0);
}

uint64_t closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()()
{
  *(v0 + 48) = swift_unknownObjectWeakLoadStrong();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist(), v2, v1);
}

{
  v1 = *(v0 + 48);

  if (v1)
  {
    [*(v0 + 48) resetPlaylistIfNeeded];
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t partial apply for closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist();

  return closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()(a1, v4, v5, v6);
}

uint64_t closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()partial apply;

  return closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()(a1, v4, v5, v6);
}

uint64_t closure #1 in $defer #1 () in WorkoutPlaylistController.stopWorkoutPlaylist()partial apply()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of WorkoutPlaylistController.stopWorkoutPlaylist()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x138);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of WorkoutPlaylistController.stopWorkoutPlaylist();

  return v5();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of WorkoutPlaylistController.startWorkoutPlaylist()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of WorkoutPlaylistController.startWorkoutPlaylist();

  return v5();
}

uint64_t type metadata accessor for MPCPlayerResponse(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t lazy protocol witness table accessor for type WorkoutPlaylistController and conformance WorkoutPlaylistController(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t partial apply for closure #1 in WorkoutPlaylistController.handlePickableRoutesChangedNotification(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in WorkoutPlaylistController.handlePickableRoutesChangedNotification(_:);

  return closure #1 in WorkoutPlaylistController.handlePickableRoutesChangedNotification(_:)();
}

uint64_t partial apply for closure #1 in WorkoutPlaylistController.handleAnnouncerDidStop(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutPlaylistController.handleAnnouncerDidStop(_:);

  return closure #1 in WorkoutPlaylistController.handleAnnouncerDidStop(_:)(a1, v4, v5, v6);
}

uint64_t objectdestroy_4Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #1 in WorkoutPlaylistController.handleAnnouncerWillStart(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutPlaylistController.handleAnnouncerWillStart(_:);

  return closure #1 in WorkoutPlaylistController.handleAnnouncerWillStart(_:)(a1, v4, v5, v6);
}

uint64_t partial apply for @objc closure #1 in WorkoutPlaylistController.startWorkoutPlaylist()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in WorkoutPlaylistController.startWorkoutPlaylist();

  return @objc closure #1 in WorkoutPlaylistController.startWorkoutPlaylist()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in WorkoutPlaylistController.shouldStartMusic()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in WorkoutPlaylistController.shouldStartMusic();

  return @objc closure #1 in WorkoutPlaylistController.shouldStartMusic()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_104()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTA_104TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_109(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeAgH_ytIeAgHr_TRTA_109TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t objectdestroy_85Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist();

  return @objc closure #1 in WorkoutPlaylistController.stopWorkoutPlaylist()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TRTA_119()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTA_119TQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t objectdestroy_89Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA_124(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeAgH_ytIeAgHr_TRTA_124TQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_9()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t closure #1 in WorkoutPlaylistController.setDelegate(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in WorkoutPlaylistController.setDelegate(_:)partial apply;

  return closure #1 in WorkoutPlaylistController.setDelegate(_:)(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_135(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_61Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void thunk for @escaping @callee_guaranteed (@guaranteed MPCPlayerResponse?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

id *MediaPlaybackController.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t MediaPlaybackController.__deallocating_deinit()
{
  MediaPlaybackController.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t MediaPlaybackController.stopMediaPlayback()()
{
  v1[36] = v0;
  v2 = type metadata accessor for UUID();
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackController.stopMediaPlayback(), v0, 0);
}

{
  v1 = *(*v0 + 288);

  return MEMORY[0x2822009F8](MediaPlaybackController.stopMediaPlayback(), v1, 0);
}

{
  v36 = v0;
  v1 = *(v0[36] + 120);
  v2 = v1;
  if (v1)
  {

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[46] = __swift_project_value_buffer(v3, static WOLog.mediaPlayback);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[42];
      v6 = v0[43];
      v9 = v0[40];
      v8 = v0[41];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v35 = v11;
      *v10 = 136315138;

      v12 = MEMORY[0x20F2E6D00](v9, v8, v7, v6);
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v35);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] Stop media playback if needed.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v16 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
    v0[47] = v16;
    [v16 setQualityOfService_];
    v17 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 34;
    v0[3] = MediaPlaybackController.stopMediaPlayback();
    v18 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
    v0[21] = &block_descriptor_84;
    v0[22] = v18;
    [v17 getProactiveRouteWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.mediaPlayback);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[43];
    if (v22)
    {
      v25 = v0[41];
      v24 = v0[42];
      v26 = v0[40];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136315138;
      v29 = MEMORY[0x20F2E6D00](v26, v25, v24, v23);
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v35);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_20AEA4000, v20, v21, "[%s] No need to stop music -- media playback configuration not set.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x20F2E9420](v28, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    else
    {
    }

    v33 = v0[1];

    return v33();
  }
}

{
  v1 = *(*v0 + 288);

  return MEMORY[0x2822009F8](MediaPlaybackController.stopMediaPlayback(), v1, 0);
}

{
  v1 = v0[34];
  v0[48] = v1;
  if (v1)
  {
    v2 = v0[47];
    v3 = v0[36];
    v4 = [objc_opt_self() pathWithRoute:v1 bundleID:0 playerID:0];
    [v2 setPlayerPath_];

    v6 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v5, type metadata accessor for MediaPlaybackController, &protocol conformance descriptor for MediaPlaybackController);
    v7 = swift_task_alloc();
    v0[49] = v7;
    *(v7 + 16) = v2;
    v8 = swift_task_alloc();
    v0[50] = v8;
    v9 = _sSo17MPCPlayerResponseCMaTm_0(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
    *v8 = v0;
    v8[1] = MediaPlaybackController.stopMediaPlayback();

    return MEMORY[0x2822008A0](v0 + 35, v3, v6, 0xD000000000000013, 0x800000020B46CDF0, partial apply for closure #1 in MediaPlaybackController.stopMediaPlayback(), v7, v9);
  }

  else
  {
    v10 = v0[47];

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 288);
    v4 = MediaPlaybackController.stopMediaPlayback();
  }

  else
  {
    v5 = *(v2 + 288);

    v4 = MediaPlaybackController.stopMediaPlayback();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[35];
  v0[52] = v1;
  v2 = [v1 stop];
  v0[53] = v2;
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_20B425990;
    *(v4 + 32) = v3;
    v5 = objc_allocWithZone(MEMORY[0x277D278C0]);
    _sSo17MPCPlayerResponseCMaTm_0(0, &lazy cache variable for type metadata for MPCPlayerCommandRequest, 0x277D278C8);
    v6 = v3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v5 initWithCommandRequests_];
    v0[54] = v8;

    [v8 setOptions_];
    v0[10] = v0;
    v0[11] = MediaPlaybackController.stopMediaPlayback();
    v9 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[29] = &block_descriptor_7_1;
    v0[30] = v9;
    [v8 performWithCompletion_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {

    v10 = swift_task_alloc();
    v0[56] = v10;
    *v10 = v0;
    v10[1] = MediaPlaybackController.stopMediaPlayback();

    return MediaPlaybackController.resetPlaybackController()();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 440) = v2;
  v3 = *(v1 + 288);
  if (v2)
  {
    v4 = MediaPlaybackController.stopMediaPlayback();
  }

  else
  {
    v4 = MediaPlaybackController.stopMediaPlayback();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v22 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[53];
  v4 = v0[54];
  v6 = v0[52];
  v7 = v0[43];
  if (v3)
  {
    v20 = v0[54];
    v9 = v0[41];
    v8 = v0[42];
    v10 = v0[40];
    v19 = v0[52];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v13 = MEMORY[0x20F2E6D00](v10, v9, v8, v7);
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v21);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_20AEA4000, v1, v2, "[%s] Media playback stopped.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
  }

  v17 = swift_task_alloc();
  v0[56] = v17;
  *v17 = v0;
  v17[1] = MediaPlaybackController.stopMediaPlayback();

  return MediaPlaybackController.resetPlaybackController()();
}

{
  v1 = *(*v0 + 288);

  return MEMORY[0x2822009F8](MediaPlaybackController.stopMediaPlayback(), v1, 0);
}

{
  v1 = *(v0 + 384);

  v2 = *(v0 + 8);

  return v2();
}

{
  v24 = v0;

  v1 = v0[51];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[43];
  if (v5)
  {
    v7 = v0[41];
    v22 = v0[42];
    v8 = v0[40];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v9 = 136315394;
    v12 = MEMORY[0x20F2E6D00](v8, v7, v22, v6);
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v23);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    v16 = v1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v17;
    *v10 = v17;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[%s] Media playback failed to stop. Stop command finished with error=%@.", v9, 0x16u);
    outlined destroy of NSObject?(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {
  }

  v19 = v0[47];
  v18 = v0[48];
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t MediaPlaybackController.stopMediaPlayback()(uint64_t a1)
{
  v66 = v1;
  v3 = v1[38];
  v2 = v1[39];
  v5 = v1[36];
  v4 = v1[37];
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v8 = v7;
  (*(v3 + 8))(v2, v4);
  v9 = specialized Collection.prefix(_:)(8, v6, v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v1[40] = v9;
  v1[41] = v11;
  v1[42] = v13;
  v1[43] = v15;
  v16 = *(v5 + 179);
  *(v5 + 179) = 0;
  if (v16 == 1)
  {
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v17 = v1[36];
  *(v17 + 145) = 0;
  if (*(v17 + 160) == 1)
  {
    v18 = v1[36];
    v19 = *(v18 + 128);
    v1[44] = v19;
    if (v19)
    {

      v20 = swift_task_alloc();
      v1[45] = v20;
      *v20 = v1;
      v20[1] = MediaPlaybackController.stopMediaPlayback();
      v21 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200460](v20, v19, v21);
    }

    v33 = *(v18 + 120);
    v34 = v33;
    if (v33)
    {

      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      v1[46] = __swift_project_value_buffer(v35, static WOLog.mediaPlayback);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v36, v37))
      {
        v39 = v1[42];
        v38 = v1[43];
        v41 = v1[40];
        v40 = v1[41];
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v65 = v43;
        *v42 = 136315138;

        v44 = MEMORY[0x20F2E6D00](v41, v40, v39, v38);
        v46 = v45;

        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v65);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_20AEA4000, v36, v37, "[%s] Stop media playback if needed.", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x20F2E9420](v43, -1, -1);
        MEMORY[0x20F2E9420](v42, -1, -1);
      }

      v48 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
      v1[47] = v48;
      [v48 setQualityOfService_];
      v49 = objc_opt_self();
      v1[2] = v1;
      v1[7] = v1 + 34;
      v1[3] = MediaPlaybackController.stopMediaPlayback();
      v50 = swift_continuation_init();
      v1[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
      v1[18] = MEMORY[0x277D85DD0];
      v1[19] = 1107296256;
      v1[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
      v1[21] = &block_descriptor_84;
      v1[22] = v50;
      [v49 getProactiveRouteWithCompletion_];

      return MEMORY[0x282200938](v1 + 2);
    }

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static WOLog.mediaPlayback);

    v23 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    v53 = os_log_type_enabled(v23, v52);
    v54 = v1[43];
    if (v53)
    {
      v56 = v1[41];
      v55 = v1[42];
      v57 = v1[40];
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v65 = v59;
      *v58 = 136315138;
      v60 = MEMORY[0x20F2E6D00](v57, v56, v55, v54);
      v62 = v61;

      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, &v65);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_20AEA4000, v23, v52, "[%s] No need to stop music -- media playback configuration not set.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x20F2E9420](v59, -1, -1);
      v31 = v58;
      goto LABEL_12;
    }

LABEL_13:

    goto LABEL_14;
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.mediaPlayback);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v23, v24))
  {
    goto LABEL_13;
  }

  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v65 = v26;
  *v25 = 136315138;
  v27 = MEMORY[0x20F2E6D00](v9, v11, v13, v15);
  v29 = v28;

  v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v65);

  *(v25 + 4) = v30;
  _os_log_impl(&dword_20AEA4000, v23, v24, "[%s] No need to stop music -- media playback didn't occur.", v25, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v26);
  MEMORY[0x20F2E9420](v26, -1, -1);
  v31 = v25;
LABEL_12:
  MEMORY[0x20F2E9420](v31, -1, -1);

LABEL_14:

  v32 = v1[1];

  return v32();
}

{
  v28 = v1;
  v2 = v1[54];
  v4 = v1[52];
  v3 = v1[53];
  swift_willThrow();

  v5 = v1[55];

  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[43];
  if (v9)
  {
    v11 = v1[41];
    v26 = v1[42];
    v12 = v1[40];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v13 = 136315394;
    v16 = MEMORY[0x20F2E6D00](v12, v11, v26, v10);
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v27);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2112;
    v20 = v5;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v21;
    *v14 = v21;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[%s] Media playback failed to stop. Stop command finished with error=%@.", v13, 0x16u);
    outlined destroy of NSObject?(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  else
  {
  }

  v23 = v1[47];
  v22 = v1[48];
  swift_willThrow();

  v24 = v1[1];

  return v24();
}

uint64_t @objc closure #1 in MediaPlaybackController.stopMediaPlayback()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in MediaPlaybackController.stopMediaPlayback();

  return MediaPlaybackController.stopMediaPlayback()();
}

uint64_t @objc closure #1 in MediaPlaybackController.stopMediaPlayback()()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = _convertErrorToNSError(_:)();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t closure #1 in MediaPlaybackController.setActivityType(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in MediaPlaybackController.setActivityType(_:), a4, 0);
}

uint64_t closure #1 in MediaPlaybackController.setActivityType(_:)()
{
  MediaPlaybackController.updateActivityType(to:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void MediaPlaybackController.updateActivityType(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v84 = &v82 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  v15 = specialized Collection.prefix(_:)(8, v12, v14);
  v87 = v16;
  v18 = v17;
  v20 = v19;

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = __swift_project_value_buffer(v21, static WOLog.mediaPlayback);
  v23 = a1;

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v85 = v23;

  v26 = os_log_type_enabled(v24, v25);
  v86 = a1;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v89 = v28;
    *v27 = 136315394;

    v29 = MEMORY[0x20F2E6D00](v15, v87, v18, v20);
    v82 = v15;
    v83 = v22;
    v30 = v18;
    v32 = v31;

    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, &v89);

    *(v27 + 4) = v33;
    *(v27 + 12) = 2080;
    v88 = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
    v34 = Optional.description.getter();
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v89);

    *(v27 + 14) = v36;
    v18 = v30;
    v15 = v82;
    v22 = v83;
    _os_log_impl(&dword_20AEA4000, v24, v25, "[%s] Updating activity type to: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v28, -1, -1);
    v37 = v27;
    a1 = v86;
    MEMORY[0x20F2E9420](v37, -1, -1);
  }

  v38 = v2[16];
  if (v38)
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v89 = v42;
      *v41 = 136315138;

      v43 = MEMORY[0x20F2E6D00](v15, v87, v18, v20);
      v82 = v18;
      v83 = v22;
      v44 = v43;
      v45 = v15;
      v47 = v46;

      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v47, &v89);
      v15 = v45;

      *(v41 + 4) = v48;
      v18 = v82;
      _os_log_impl(&dword_20AEA4000, v39, v40, "[%s] Cancelling previous media configuration fetch task", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      v49 = v42;
      a1 = v86;
      MEMORY[0x20F2E9420](v49, -1, -1);
      MEMORY[0x20F2E9420](v41, -1, -1);
    }

    MEMORY[0x20F2E7170](v38, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }

  v2[16] = 0;

  v50 = v2[17];
  v2[17] = a1;

  v51 = v2[15];
  v2[15] = 0;
  v52 = v85;

  if (a1)
  {
    v53 = v52;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v89 = v85;
      *v56 = 136315394;

      v57 = MEMORY[0x20F2E6D00](v15, v87, v18, v20);
      v58 = v53;
      v59 = v15;
      v60 = v18;
      v61 = v57;
      v63 = v62;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v89);

      *(v56 + 4) = v64;
      v18 = v60;
      v15 = v59;
      v53 = v58;
      *(v56 + 12) = 2112;
      *(v56 + 14) = v58;
      v65 = v83;
      *v83 = v86;
      v66 = v53;
      _os_log_impl(&dword_20AEA4000, v54, v55, "[%s] Starting new media configuration fetch task for %@", v56, 0x16u);
      outlined destroy of NSObject?(v65);
      MEMORY[0x20F2E9420](v65, -1, -1);
      v67 = v85;
      __swift_destroy_boxed_opaque_existential_0(v85);
      MEMORY[0x20F2E9420](v67, -1, -1);
      MEMORY[0x20F2E9420](v56, -1, -1);
    }

    v68 = type metadata accessor for TaskPriority();
    v69 = v84;
    (*(*(v68 - 8) + 56))(v84, 1, 1, v68);
    v71 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v70, type metadata accessor for MediaPlaybackController, &protocol conformance descriptor for MediaPlaybackController);
    v72 = swift_allocObject();
    v72[2] = v2;
    v72[3] = v71;
    v73 = v87;
    v72[4] = v15;
    v72[5] = v73;
    v72[6] = v18;
    v72[7] = v20;
    v72[8] = v53;
    v72[9] = v2;
    swift_retain_n();
    v2[16] = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v69, &async function pointer to partial apply for closure #1 in MediaPlaybackController.updateActivityType(to:), v72);
  }

  else
  {
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v89 = v77;
      *v76 = 136315138;
      v78 = MEMORY[0x20F2E6D00](v15, v87, v18, v20);
      v80 = v79;

      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v80, &v89);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_20AEA4000, v74, v75, "[%s] Activity type reset to nil, no fetch needed", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x20F2E9420](v77, -1, -1);
      MEMORY[0x20F2E9420](v76, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t closure #1 in MediaPlaybackController.updateActivityType(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v13;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v9 = type metadata accessor for CancellationError();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MediaPlaybackController.updateActivityType(to:), v13, 0);
}

uint64_t closure #1 in MediaPlaybackController.updateActivityType(to:)(uint64_t a1)
{
  v23 = v1;
  Date.init()();
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = v1[19];
  v3 = type metadata accessor for Logger();
  v1[29] = __swift_project_value_buffer(v3, static WOLog.mediaPlayback);

  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[19];
    v21 = v1[18];
    v8 = v1[16];
    v9 = v1[17];
    v10 = v1[15];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315394;
    v14 = MEMORY[0x20F2E6D00](v10, v8, v9, v21);
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v7;
    *v12 = v7;
    v17 = v7;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s] Fetching media playback configuration for activityType: %@", v11, 0x16u);
    outlined destroy of NSObject?(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  Date.init()();
  v18 = swift_task_alloc();
  v1[30] = v18;
  *v18 = v1;
  v18[1] = closure #1 in MediaPlaybackController.updateActivityType(to:);
  v19 = v1[19];

  return MediaPlaybackStore.fetchMediaPlaybackConfiguration(for:)(v19);
}

{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 248) = a1;
  *(v4 + 256) = v1;

  v5 = *(v3 + 160);
  if (v1)
  {
    v6 = closure #1 in MediaPlaybackController.updateActivityType(to:);
  }

  else
  {
    v6 = closure #1 in MediaPlaybackController.updateActivityType(to:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v148 = v1;
  v2 = *(v1 + 208);
  v3 = *(v1 + 192);
  v4 = *(v1 + 200);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v6 = v5;
  v7 = *(v4 + 8);
  v7(v2, v3);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = *(v1 + 136);
    v10 = *(v1 + 144);
    v13 = *(v1 + 120);
    v12 = *(v1 + 128);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v147[0] = v15;
    *v14 = 136315394;
    v16 = MEMORY[0x20F2E6D00](v13, v12, v11, v10);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v147);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D839F8];
    *(v19 + 16) = xmmword_20B423A90;
    v21 = MEMORY[0x277D83A80];
    *(v19 + 56) = v20;
    *(v19 + 64) = v21;
    *(v19 + 32) = v6;
    v22 = String.init(format:_:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v147);

    *(v14 + 14) = v24;
    _os_log_impl(&dword_20AEA4000, v8, v9, "[%s] MediaPlaybackStore.fetchMediaPlaybackConfiguration returned in %ss", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  v25 = *(v1 + 256);
  static Task<>.checkCancellation()();
  v26 = *(v1 + 248);
  if (v25)
  {
    v7(*(v1 + 216), *(v1 + 192));

    *(v1 + 88) = v25;
    v27 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v28 = *(v1 + 152);

      v29 = v28;
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = *(v1 + 152);
        v33 = *(v1 + 128);
        v140 = *(v1 + 136);
        v142 = *(v1 + 144);
        v34 = v7;
        v35 = *(v1 + 120);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v147[0] = v38;
        *v36 = 136315394;
        v39 = v35;
        v7 = v34;
        v40 = MEMORY[0x20F2E6D00](v39, v33, v140, v142);
        v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, v147);

        *(v36 + 4) = v42;
        *(v36 + 12) = 2112;
        *(v36 + 14) = v32;
        *v37 = v32;
        v43 = v32;
        _os_log_impl(&dword_20AEA4000, v30, v31, "[%s] Fetch for %@ was cancelled.", v36, 0x16u);
        outlined destroy of NSObject?(v37);
        MEMORY[0x20F2E9420](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x20F2E9420](v38, -1, -1);
        MEMORY[0x20F2E9420](v36, -1, -1);
      }

      (*(*(v1 + 176) + 8))(*(v1 + 184), *(v1 + 168));
    }

    else
    {

      v68 = v25;
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v69, v70))
      {
        v141 = *(v1 + 136);
        v144 = *(v1 + 144);
        v71 = v7;
        v72 = *(v1 + 120);
        v73 = *(v1 + 128);
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v147[0] = v76;
        *v74 = 136315394;
        v77 = v73;
        v7 = v71;
        v78 = MEMORY[0x20F2E6D00](v72, v77, v141, v144);
        v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, v147);

        *(v74 + 4) = v80;
        *(v74 + 12) = 2112;
        v81 = v25;
        v82 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 14) = v82;
        *v75 = v82;
        _os_log_impl(&dword_20AEA4000, v69, v70, "[%s] Error fetching media playback configuration: %@", v74, 0x16u);
        outlined destroy of NSObject?(v75);
        MEMORY[0x20F2E9420](v75, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v76);
        MEMORY[0x20F2E9420](v76, -1, -1);
        MEMORY[0x20F2E9420](v74, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    v45 = *(v1 + 152);
    v44 = *(v1 + 160);
    v46 = *(v44 + 120);
    *(v44 + 120) = v26;
    v47 = v26;

    v48 = v47;

    v49 = v45;
    v50 = v48;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v1 + 248);
    if (v53)
    {
      v55 = *(v1 + 144);
      v56 = *(v1 + 152);
      v58 = *(v1 + 128);
      v57 = *(v1 + 136);
      v143 = v7;
      v59 = *(v1 + 120);
      v60 = swift_slowAlloc();
      v134 = v52;
      v61 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v147[0] = v137;
      *v60 = 136315906;
      v62 = MEMORY[0x20F2E6D00](v59, v58, v57, v55);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, v147);

      *(v60 + 4) = v64;
      *(v60 + 12) = 2112;
      *(v60 + 14) = v56;
      *v61 = v56;
      *(v60 + 22) = 1024;
      swift_getKeyPath();
      *(v1 + 104) = v54;
      lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);
      v65 = v56;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v66 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
      swift_beginAccess();
      LODWORD(v66) = v54[v66];

      *(v60 + 24) = v66;
      *(v60 + 28) = 1024;
      swift_getKeyPath();
      *(v1 + 112) = v54;
      v7 = v143;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v67 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
      swift_beginAccess();
      LODWORD(v67) = v54[v67];

      *(v60 + 30) = v67;
      _os_log_impl(&dword_20AEA4000, v51, v134, "[%s] Loaded media configuration for activityType: %@ - autoPlay: %{BOOL}d, smartStation: %{BOOL}d", v60, 0x22u);
      outlined destroy of NSObject?(v61);
      MEMORY[0x20F2E9420](v61, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v137);
      MEMORY[0x20F2E9420](v137, -1, -1);
      MEMORY[0x20F2E9420](v60, -1, -1);
    }

    else
    {
    }

    v83 = *(v1 + 248);
    swift_getKeyPath();
    *(v1 + 96) = v83;
    lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v84 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
    swift_beginAccess();
    v85 = *(v83 + v84);
    if (v85)
    {

      v86 = v85;
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v145 = v7;
        v90 = *(v1 + 136);
        v89 = *(v1 + 144);
        v92 = *(v1 + 120);
        v91 = *(v1 + 128);
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v147[0] = v94;
        *v93 = 136315650;
        v95 = MEMORY[0x20F2E6D00](v92, v91, v90, v89);
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v147);

        *(v93 + 4) = v97;
        *(v93 + 12) = 2080;
        v98 = [v86 title];
        if (v98)
        {
          v99 = v98;
          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;
        }

        else
        {
          v102 = 0xE700000000000000;
          v100 = 0x6E776F6E6B6E75;
        }

        v139 = *(v1 + 216);
        v133 = *(v1 + 248);
        v136 = *(v1 + 192);
        v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, v147);

        *(v93 + 14) = v123;
        *(v93 + 22) = 2080;
        v124 = [v86 bundleID];
        v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v127 = v126;

        v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, v147);

        *(v93 + 24) = v128;
        _os_log_impl(&dword_20AEA4000, v87, v88, "[%s] Configuration has media suggestion: %s from %s", v93, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v94, -1, -1);
        MEMORY[0x20F2E9420](v93, -1, -1);

        v7 = v145;
        v145(v139, v136);
        goto LABEL_25;
      }

      v119 = *(v1 + 216);
      v120 = *(v1 + 192);

      v121 = v119;
      v122 = v120;
    }

    else
    {

      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();

      v105 = os_log_type_enabled(v103, v104);
      v106 = *(v1 + 216);
      v107 = *(v1 + 192);
      if (v105)
      {
        v109 = *(v1 + 136);
        v108 = *(v1 + 144);
        v146 = *(v1 + 192);
        v110 = v7;
        v112 = *(v1 + 120);
        v111 = *(v1 + 128);
        v138 = *(v1 + 248);
        v113 = swift_slowAlloc();
        v135 = v106;
        v114 = swift_slowAlloc();
        v147[0] = v114;
        *v113 = 136315138;
        v115 = v112;
        v7 = v110;
        v116 = MEMORY[0x20F2E6D00](v115, v111, v109, v108);
        v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v147);

        *(v113 + 4) = v118;
        _os_log_impl(&dword_20AEA4000, v103, v104, "[%s] Configuration has no media suggestion", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v114);
        MEMORY[0x20F2E9420](v114, -1, -1);
        MEMORY[0x20F2E9420](v113, -1, -1);

        v110(v135, v146);
        goto LABEL_25;
      }

      v121 = v106;
      v122 = v107;
    }

    v7(v121, v122);
  }

LABEL_25:
  v129 = *(v1 + 224);
  v130 = *(v1 + 192);
  $defer #1 () in closure #1 in MediaPlaybackController.updateActivityType(to:)(*(v1 + 160), v129, *(v1 + 120), *(v1 + 128), *(v1 + 136), *(v1 + 144));
  v7(v129, v130);

  v131 = *(v1 + 8);

  return v131();
}

uint64_t closure #1 in MediaPlaybackController.updateActivityType(to:)()
{
  v43 = v0;
  v1 = *(*(v0 + 200) + 8);
  v1(*(v0 + 216), *(v0 + 192));
  v2 = *(v0 + 256);
  *(v0 + 88) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 152);

    v5 = v4;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 152);
      v38 = *(v0 + 144);
      v40 = v1;
      v9 = *(v0 + 128);
      v10 = *(v0 + 136);
      v11 = *(v0 + 120);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v42 = v14;
      *v12 = 136315394;
      v15 = MEMORY[0x20F2E6D00](v11, v9, v10, v38);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v42);

      *(v12 + 4) = v17;
      v1 = v40;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v8;
      *v13 = v8;
      v18 = v8;
      _os_log_impl(&dword_20AEA4000, v6, v7, "[%s] Fetch for %@ was cancelled.", v12, 0x16u);
      outlined destroy of NSObject?(v13);
      MEMORY[0x20F2E9420](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F2E9420](v14, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
    v19 = *(v0 + 88);
  }

  else
  {

    v20 = v2;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = *(v0 + 136);
      v39 = *(v0 + 144);
      v41 = v1;
      v24 = *(v0 + 120);
      v25 = *(v0 + 128);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v26 = 136315394;
      v29 = MEMORY[0x20F2E6D00](v24, v25, v23, v39);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v42);
      v1 = v41;

      *(v26 + 4) = v31;
      *(v26 + 12) = 2112;
      v32 = v2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_20AEA4000, v21, v22, "[%s] Error fetching media playback configuration: %@", v26, 0x16u);
      outlined destroy of NSObject?(v27);
      MEMORY[0x20F2E9420](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x20F2E9420](v28, -1, -1);
      MEMORY[0x20F2E9420](v26, -1, -1);

      goto LABEL_9;
    }

    v19 = v2;
  }

LABEL_9:
  v34 = *(v0 + 224);
  v35 = *(v0 + 192);
  $defer #1 () in closure #1 in MediaPlaybackController.updateActivityType(to:)(*(v0 + 160), v34, *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  v1(v34, v35);

  v36 = *(v0 + 8);

  return v36();
}

void $defer #1 () in closure #1 in MediaPlaybackController.updateActivityType(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 128) = 0;

  Date.init()();
  Date.timeIntervalSince(_:)();
  v17 = v16;
  (*(v12 + 8))(v15, v11);
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.mediaPlayback);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v33 = v22;
    *v21 = 136315394;
    v23 = MEMORY[0x20F2E6D00](a3, a4, a5, a6);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v33);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v26 = swift_allocObject();
    v27 = MEMORY[0x277D839F8];
    *(v26 + 16) = xmmword_20B423A90;
    v28 = MEMORY[0x277D83A80];
    *(v26 + 56) = v27;
    *(v26 + 64) = v28;
    *(v26 + 32) = v17;
    v29 = String.init(format:_:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v33);

    *(v21 + 14) = v31;
    _os_log_impl(&dword_20AEA4000, v19, v20, "[%s] Media configuration fetch task completed after %ss", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v22, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }
}

uint64_t MediaPlaybackController.resetPlaybackController()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackController.resetPlaybackController(), v0, 0);
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "resetPlaybackController", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  MediaPlaybackController.updateActivityType(to:)(0);
  *(v5 + 144) = 0;
  *(v5 + 146) = 0;
  *(v5 + 152) = 0;
  v6 = *(v5 + 179);
  *(v5 + 179) = 0;
  if (v6 == 1)
  {
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v7 = *(v0 + 16);
  *(v7 + 160) = 0;
  *(v7 + 168) = 0;

  *(v7 + 176) = 0;
  *(v7 + 178) = 2;
  v8 = *(v7 + 184);
  *(v7 + 184) = 0;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t @objc closure #1 in MediaPlaybackController.resetPlaybackController()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in MediaPlaybackController.resetPlaybackController();

  return MediaPlaybackController.resetPlaybackController()();
}

uint64_t @objc closure #1 in MediaPlaybackController.resetPlaybackController()()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

uint64_t MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = swift_task_alloc();
  v3[9] = v4;
  *v4 = v3;
  v4[1] = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);

  return specialized static SmartRoutingStatus.fetch()();
}

uint64_t MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(__int16 a1)
{
  v3 = *v2;
  v4 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = swift_task_alloc();
    *(v3 + 80) = v7;
    *v7 = v4;
    v7[1] = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);

    return MediaPlaybackController.isMediaPlayerAudioPlayingNearby()();
  }
}

uint64_t MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 138) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5(0);
  }

  else
  {
    v7 = *(v3 + 64);

    return MEMORY[0x2822009F8](MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:), v7, 0);
  }
}

{
  v4 = *v2;
  *(v4 + 128) = v1;

  v5 = *(v4 + 64);
  if (v1)
  {
    v6 = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
  }

  else
  {
    *(v4 + 139) = a1 & 1;
    v6 = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 138);
  if (v1 != 2)
  {
    v2 |= v1;
  }

  if (v2)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Don't start media -- audio already playing.";
LABEL_21:
    _os_log_impl(&dword_20AEA4000, v4, v5, v7, v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
LABEL_22:

    v17 = *(v0 + 8);
    goto LABEL_23;
  }

  v8 = *(v0 + 64);
  v9 = *(v8 + 128);
  *(v0 + 96) = v9;
  if (v9)
  {

    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
    v11 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v10, v9, v11);
  }

  v12 = *(v8 + 120);
  *(v0 + 112) = v12;
  v13 = v12;
  if (!v12)
  {
LABEL_17:
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.mediaPlayback);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_22;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Don't start media -- autoPlay disabled.";
    goto LABEL_21;
  }

  v14 = v13;
  swift_getKeyPath();
  *(v0 + 40) = v14;
  lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  if (*(v14 + v15) != 1)
  {

    goto LABEL_17;
  }

  v16 = *(v0 + 88);
  specialized static AudioSessionUtilities.configureAudioSession()();
  if (v16)
  {

    v17 = *(v0 + 8);
LABEL_23:

    return v17(0);
  }

  v19 = swift_task_alloc();
  *(v0 + 120) = v19;
  *v19 = v0;
  v19[1] = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
  v20 = *(v0 + 136);

  return MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:)(v20);
}

{
  v1 = *(*v0 + 64);

  return MEMORY[0x2822009F8](MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:), v1, 0);
}

{
  v1 = *(*(v0 + 64) + 120);
  *(v0 + 112) = v1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_6;
  }

  v3 = v2;
  swift_getKeyPath();
  *(v0 + 40) = v3;
  lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  if (*(v3 + v4) != 1)
  {

LABEL_6:
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.mediaPlayback);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Don't start media -- autoPlay disabled.", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v6 = *(v0 + 8);
    goto LABEL_11;
  }

  v5 = *(v0 + 88);
  specialized static AudioSessionUtilities.configureAudioSession()();
  if (v5)
  {

    v6 = *(v0 + 8);
LABEL_11:

    return v6(0);
  }

  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);
  v13 = *(v0 + 136);

  return MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:)(v13);
}

{
  v1 = *(v0 + 139);
  if (v1 == 1)
  {
    v2 = *(v0 + 48);
    if (v2)
    {
      v3 = one-time initialization token for mediaPlayback;

      if (v3 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static WOLog.mediaPlayback);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_20AEA4000, v5, v6, "Eligible for post-activation prewarm.", v7, 2u);
        MEMORY[0x20F2E9420](v7, -1, -1);
      }

      v8 = *(v0 + 112);
      v10 = *(v0 + 48);
      v9 = *(v0 + 56);

      v2();
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v10, v9);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.mediaPlayback);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 112);
    if (v14)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Don't start media -- no eligible audio route.", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }
  }

  v17 = *(v0 + 8);

  return v17(v1);
}

{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(const void *a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = _Block_copy(a1);
  v3[3] = _Block_copy(a2);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = _sIeyB_Ieg_TRTA_8;
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v5;
  v3[5] = v6;

  v7 = swift_task_alloc();
  v3[6] = v7;
  *v7 = v3;
  v7[1] = @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:);

  return MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(v5, v6);
}

uint64_t @objc closure #1 in MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = v5[3];
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5[4], v5[5]);
  if (v3)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v10 = v7[1];

  return v10();
}

uint64_t MediaPlaybackController.isMediaPlayerAudioPlayingNearby()()
{
  *(v1 + 160) = v0;
  return MEMORY[0x2822009F8](MediaPlaybackController.isMediaPlayerAudioPlayingNearby(), v0, 0);
}

{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = MediaPlaybackController.isMediaPlayerAudioPlayingNearby();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo9MPAVRouteCSgs5NeverOGMd, &_sSccySo9MPAVRouteCSgs5NeverOGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MPAVRoute?) -> () with result type MPAVRoute?;
  v0[13] = &block_descriptor_107_0;
  v0[14] = v2;
  [v1 getProactiveRouteWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 160);

  return MEMORY[0x2822009F8](MediaPlaybackController.isMediaPlayerAudioPlayingNearby(), v1, 0);
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 160);
    v4 = MediaPlaybackController.isMediaPlayerAudioPlayingNearby();
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = MediaPlaybackController.isMediaPlayerAudioPlayingNearby();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v22 = v0;
  v2 = v0[19];
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v9 = [v4 state];
    if (v9 <= 6)
    {
      v1 = off_277D8C608[v9];
      v10 = off_277D8C5D0[v9];
    }

    v11 = v1;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v21);

    *(v7 + 4) = v15;
    _os_log_impl(&dword_20AEA4000, v5, v6, "Media player audio_state=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v17 = v0[21];
  v16 = v0[22];
  v18 = [v4 state];

  v19 = v0[1];

  return v19((v18 < 6) & (0x2Cu >> v18));
}

{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t MediaPlaybackController.isMediaPlayerAudioPlayingNearby()(__n128 a1)
{
  v2 = v1[18];
  v1[21] = v2;
  if (v2)
  {
    v3 = v1[20];
    v4 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
    v1[22] = v4;
    v5 = [objc_opt_self() pathWithRoute:v2 bundleID:0 playerID:0];
    [v4 setPlayerPath_];

    [v4 setQualityOfService_];
    v7 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v6, type metadata accessor for MediaPlaybackController, &protocol conformance descriptor for MediaPlaybackController);
    v8 = swift_task_alloc();
    v1[23] = v8;
    *(v8 + 16) = v4;
    v9 = swift_task_alloc();
    v1[24] = v9;
    v10 = _sSo17MPCPlayerResponseCMaTm_0(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
    *v9 = v1;
    v9[1] = MediaPlaybackController.isMediaPlayerAudioPlayingNearby();

    return MEMORY[0x2822008A0](v1 + 19, v3, v7, 0xD000000000000021, 0x800000020B46CD50, partial apply for closure #1 in MediaPlaybackController.isMediaPlayerAudioPlayingNearby(), v8, v10);
  }

  else
  {
    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v1[1];

    return v12(0);
  }
}

double closure #1 in MediaPlaybackController.stopMediaPlayback()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = aBlock - v12;
  (*(v10 + 16))(aBlock - v12, a1, v9);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = swift_allocObject();
  (*(v10 + 32))(v15 + v14, v13, v9);
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPCPlayerResponse?, @guaranteed Error?) -> ();
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);

  v17 = [a2 performWithCompletion_];
  _Block_release(v16);
  swift_unknownObjectRelease();
  return result;
}

uint64_t closure #1 in closure #1 in MediaPlaybackController.stopMediaPlayback()(void *a1, id a2, __n128 a3, uint64_t a4, char a5)
{
  if (a1)
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
      swift_allocError();
      v9 = v8;
      a2 = 0;
      *v9 = a5;
    }

    v10 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:)(__int16 a1)
{
  *(v2 + 176) = v1;
  *(v2 + 208) = a1;

  return MEMORY[0x2822009F8](MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:), v1, 0);
}

uint64_t MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:)()
{
  v1 = objc_opt_self();
  v0[23] = v1;
  v2 = [v1 sharedInstance];
  v0[24] = v2;
  v0[2] = v0;
  v0[7] = v0 + 210;
  v0[3] = MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:);
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySbs5Error_pGMd, &_sSccySbs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned NSError?) -> () with result type Bool;
  v0[13] = &block_descriptor_103_0;
  v0[14] = v3;
  [v2 activateWithOptions:0x10000000 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  if (v2)
  {
    v4 = MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:);
  }

  else
  {
    v4 = MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 210);

  if (v1 != 1)
  {
    v16 = *(v0 + 176);
    v17 = *(v16 + 179);
    *(v16 + 179) = 1;
    if ((v17 & 1) == 0)
    {
      MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(1);
    }

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v18 = 2;
    goto LABEL_19;
  }

  if (*(v0 + 208) != 2 && (*(v0 + 208) & 0x100) != 0)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.mediaPlayback);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_29;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Start Media -- Eligible smart route found and Audio Session activated";
LABEL_28:
    _os_log_impl(&dword_20AEA4000, v21, v22, v24, v23, 2u);
    MEMORY[0x20F2E9420](v23, -1, -1);
LABEL_29:

    v15 = 1;
    goto LABEL_30;
  }

  v3 = [*(v0 + 184) sharedInstance];
  v4 = [v3 currentRoute];

  LOBYTE(v3) = [v4 isDeviceSpeaker];
  if ((v3 & 1) == 0)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.mediaPlayback);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_29;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    v24 = "Activated audio session has eligible audio route";
    goto LABEL_28;
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.mediaPlayback);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Don't start media -- current route is device speaker", v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v9 = *(v0 + 176);

  v10 = *(v9 + 179);
  *(v9 + 179) = 1;
  if ((v10 & 1) == 0)
  {
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(1);
  }

  v11 = [*(v0 + 184) sharedInstance];
  *(v0 + 80) = 0;
  v12 = [v11 setActive:0 error:v0 + 80];

  v13 = *(v0 + 80);
  if (!v12)
  {
    v27 = v13;
    _convertNSErrorToError(_:)();

LABEL_19:
    swift_willThrow();
    v19 = *(v0 + 8);
    v15 = 0;
    goto LABEL_31;
  }

  v14 = v13;
  v15 = 0;
LABEL_30:
  v19 = *(v0 + 8);
LABEL_31:

  return v19(v15);
}

uint64_t MediaPlaybackController.eligibleAudioRoute(smartRoutingStatus:)(uint64_t a1)
{
  v2 = v1[24];
  swift_willThrow();

  swift_getErrorValue();
  v3 = Error.code.getter();
  if (v3 == 561145203 || v3 == 561015905)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v5 = v1[25];
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.mediaPlayback);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v1[25];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v10;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Don't start media -- Audio session activation failure expected if no audio routes available. error=%@", v11, 0xCu);
      outlined destroy of NSObject?(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }
  }

  else
  {
    v15 = v1[22];
    v16 = *(v15 + 184);
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = v16;
    v8 = [v17 analyticsEventBuilder];
    [v8 recordWorkoutMediaDidStart:0];
  }

  v15 = v1[22];
LABEL_13:
  v18 = *(v15 + 179);
  *(v15 + 179) = 1;
  if ((v18 & 1) == 0)
  {
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(1);
  }

  swift_willThrow();
  v19 = v1[1];

  return v19(0);
}

uint64_t MediaPlaybackController.prepareMediaPlayback()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackController.prepareMediaPlayback(), v0, 0);
}

{
  v28 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Preparing media playback", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *(v5 + 128);
  v0[5] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = MediaPlaybackController.prepareMediaPlayback();
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200460](v7, v6, v8);
  }

  else
  {
    v9 = *(v0[2] + 120);
    v0[7] = v9;
    v10 = v9;
    if (v9)
    {
      v11 = v10;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v27 = v15;
        *v14 = 136315138;
        v16 = [v11 debugDescription];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v27);

        *(v14 + 4) = v20;
        _os_log_impl(&dword_20AEA4000, v12, v13, "Media configuration found for prepare: %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x20F2E9420](v15, -1, -1);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }

      v21 = swift_task_alloc();
      v0[8] = v21;
      *v21 = v0;
      v21[1] = MediaPlaybackController.prepareMediaPlayback();

      return MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(closure #1 in MediaPlaybackController.prepareMediaPlayback(), 0);
    }

    else
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_20AEA4000, v22, v23, "Media Playback not preparing -- no media configuration", v24, 2u);
        MEMORY[0x20F2E9420](v24, -1, -1);
      }

      v25 = v0[1];

      return v25();
    }
  }
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](MediaPlaybackController.prepareMediaPlayback(), v1, 0);
}

{
  v20 = v0;
  v1 = *(v0[2] + 120);
  v0[7] = v1;
  v2 = v1;
  if (v1)
  {
    v3 = v2;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      v8 = [v3 debugDescription];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v19);

      *(v6 + 4) = v12;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Media configuration found for prepare: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F2E9420](v7, -1, -1);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    v13[1] = MediaPlaybackController.prepareMediaPlayback();

    return MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(closure #1 in MediaPlaybackController.prepareMediaPlayback(), 0);
  }

  else
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v16, "Media Playback not preparing -- no media configuration", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    v18 = v0[1];

    return v18();
  }
}

{
  v1 = v0[9];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    *(v6 + 8) = 2112;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 10) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Media Playback not preparing -- should_start=%{BOOL}d error=%@", v6, 0x12u);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = v0[7];
  v11 = v0[2];

  *(v11 + 178) = 2;
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t MediaPlaybackController.prepareMediaPlayback()(char a1)
{
  v4 = *v2;
  *(v4 + 72) = v1;

  v5 = *(v4 + 16);
  if (v1)
  {
    v6 = MediaPlaybackController.prepareMediaPlayback();
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v6 = MediaPlaybackController.prepareMediaPlayback();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t MediaPlaybackController.prepareMediaPlayback()(uint64_t a1)
{
  v2 = *(v1 + 80);
  *(*(v1 + 16) + 178) = v2;
  if (v2 == 1)
  {
    v3 = *(v1 + 56);
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    static TaskPriority.userInitiated.getter();
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    v8 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v7, type metadata accessor for MediaPlaybackController, &protocol conformance descriptor for MediaPlaybackController);
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = v8;
    v9[4] = v3;
    v9[5] = v4;
    swift_retain_n();
    _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #2 in MediaPlaybackController.prepareMediaPlayback(), v9);
  }

  else
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v1 + 56);
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Media Playback not preparing -- should not start", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    else
    {
    }
  }

  v15 = *(v1 + 8);

  return v15();
}

uint64_t closure #2 in MediaPlaybackController.prepareMediaPlayback()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = a5;
  return MEMORY[0x2822009F8](closure #2 in MediaPlaybackController.prepareMediaPlayback(), a5, 0);
}

uint64_t closure #2 in MediaPlaybackController.prepareMediaPlayback()()
{
  v1 = v0[27];
  swift_getKeyPath();
  v0[24] = v1;
  lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  if ((*(v1 + v2) & 1) != 0 || (v3 = v0[27], swift_getKeyPath(), v0[25] = v3, ObservationRegistrar.access<A, B>(_:keyPath:)(), , v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion, swift_beginAccess(), v5 = *(v3 + v4), (v0[29] = v5) == 0))
  {
    v18 = v0[1];

    return v18();
  }

  else
  {
    v6 = one-time initialization token for mediaPlayback;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[30] = __swift_project_value_buffer(v8, static WOLog.mediaPlayback);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v9;
      *v13 = v5;
      v14 = v9;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Media suggestion found for prepare: %@", v12, 0xCu);
      outlined destroy of NSObject?(v13);
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    v15 = v0[28];

    *(v15 + 176) = 1;
    v16 = swift_task_alloc();
    v0[31] = v16;
    *v16 = v0;
    v16[1] = closure #2 in MediaPlaybackController.prepareMediaPlayback();

    return MSSuggestion.unifiedPrepare()();
  }
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  else
  {
    v4 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 304) = v2;
  v3 = *(v1 + 224);
  if (v2)
  {
    v4 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  else
  {
    v4 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 288);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);

  *(v3 + 177) = 0;
  *(*(v0 + 224) + 176) = 0;
  v4 = *(v0 + 8);

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[35];
  *(v0[28] + 160) = 0;
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Media Playback failed from prepare path: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = v0[28];

  v11 = *(v10 + 184);
  v12 = v0[35];
  if (v11)
  {
    v13 = v11;
    v14 = [v13 analyticsEventBuilder];
    [v14 recordWorkoutMediaDidStart_];
  }

  else
  {
  }

  v15 = objc_opt_self();
  v16 = [v15 systemRoute];
  v0[36] = v16;
  v17 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
  v0[37] = v17;
  v0[2] = v0;
  v0[3] = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  v18 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_243;
  v0[14] = v18;
  [v15 setActiveRoute:v16 reason:v17 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t closure #2 in MediaPlaybackController.prepareMediaPlayback()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v1;

  v5 = *(v3 + 224);
  if (v1)
  {
    v6 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  else
  {
    v6 = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v23 = v1;
  v2 = v1[32];
  if (v2)
  {

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315138;
      v1[26] = v2;
      type metadata accessor for MSSuggestionLegacyIntentExecutionContext();

      v7 = String.init<A>(describing:)();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v22);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Media Playback prepared with execution context: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v10 = v1[28];
    *(v10 + 168) = v1[32];

    if (*(v10 + 177) == 1 && (*(v1[28] + 145) & 1) != 0)
    {
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_20AEA4000, v11, v12, "Prepare completed after start playback called, handling intent now.", v13, 2u);
        MEMORY[0x20F2E9420](v13, -1, -1);
      }

      v14 = swift_task_alloc();
      v1[34] = v14;
      *v14 = v1;
      v14[1] = closure #2 in MediaPlaybackController.prepareMediaPlayback();

      return MSSuggestionLegacyIntentExecutionContext.handle()();
    }

    v16 = v1[29];
  }

  else
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v1[29];
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Media Playback prepare -- no execution context returned", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

    else
    {

      v16 = v19;
    }
  }

  *(v1[28] + 176) = 0;
  v21 = v1[1];

  return v21();
}

{
  *(v1[28] + 160) = 1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Media Playback started from prepare path", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v1[28];

  v6 = *(v5 + 184);
  if (v6)
  {
    v7 = v6;
    v8 = [v7 analyticsEventBuilder];
    [v8 recordWorkoutMediaDidStart_];
  }

  v9 = objc_opt_self();
  v10 = [v9 systemRoute];
  v1[36] = v10;
  v11 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
  v1[37] = v11;
  v1[2] = v1;
  v1[3] = closure #2 in MediaPlaybackController.prepareMediaPlayback();
  v12 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v1[13] = &block_descriptor_243;
  v1[14] = v12;
  [v9 setActiveRoute:v10 reason:v11 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

{
  v2 = *(v1 + 296);
  v3 = *(v1 + 288);
  swift_willThrow();

  v4 = *(v1 + 8);

  return v4();
}

uint64_t @objc closure #1 in MediaPlaybackController.prepareMediaPlayback()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in MediaPlaybackController.prepareMediaPlayback();

  return MediaPlaybackController.prepareMediaPlayback()();
}

uint64_t MediaPlaybackController.startMediaPlayback()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaPlaybackController.startMediaPlayback(), v0, 0);
}

{
  v68 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "startMediaPlayback", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[2];

  v6 = *(v5 + 128);
  v0[5] = v6;
  if (v6)
  {

    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = MediaPlaybackController.startMediaPlayback();
    v8 = MEMORY[0x277D84F78] + 8;
    v9 = v6;

    return MEMORY[0x282200460](v7, v9, v8);
  }

  v10 = v0[2];
  v11 = *(v10 + 120);
  v0[7] = v11;
  v12 = v11;
  if (!v11)
  {
    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v19 = 8;
    swift_willThrow();
LABEL_38:

    v58 = v0[1];
LABEL_39:

    return v58();
  }

  v13 = v12;
  if (*(v10 + 144))
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Already starting media playback, do not playback.", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    v18 = 3;
LABEL_37:
    *v17 = v18;
    swift_willThrow();

    goto LABEL_38;
  }

  if (*(v10 + 152) > 4)
  {
    v59 = *(v10 + 179);
    *(v10 + 179) = 0;
    if (v59 == 1)
    {
      MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
    }

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134218240;
      *(v62 + 4) = *(v10 + 152);

      *(v62 + 12) = 2048;
      *(v62 + 14) = 5;
      _os_log_impl(&dword_20AEA4000, v60, v61, "Start media playback attempts=%ld exceed max_attempts=%ld, do not start media playback.", v62, 0x16u);
      MEMORY[0x20F2E9420](v62, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    v18 = 10;
    goto LABEL_37;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20AEA4000, v20, v21, "Start media playback if audio route available and no audio playing nearby", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  v23 = v0[2];

  *(v23 + 145) = 1;
  *(v10 + 144) = 1;
  v24 = *(v23 + 179);
  *(v23 + 179) = 0;
  if (v24 == 1)
  {
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v25 = *(v10 + 152);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
    return MEMORY[0x282200460](v7, v9, v8);
  }

  v28 = v0[2];
  *(v10 + 152) = v27;
  v29 = *(v28 + 178);
  if (v29 != 2 && (v29 & 1) != 0)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20AEA4000, v30, v31, "Cached value for shouldStartMediaPlayback is true, not rechecking.", v32, 2u);
      MEMORY[0x20F2E9420](v32, -1, -1);
    }

    v33 = v0[7];
    v34 = v0[3];
    v35 = v0[2];
    v36 = type metadata accessor for TaskPriority();
    v37 = *(*(v36 - 8) + 56);
    v37(v34, 1, 1, v36);
    v39 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v38, type metadata accessor for MediaPlaybackController, &protocol conformance descriptor for MediaPlaybackController);
    v40 = swift_allocObject();
    v40[2] = v35;
    v40[3] = v39;
    v40[4] = v35;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v34, &async function pointer to partial apply for closure #1 in MediaPlaybackController.startMediaPlayback(), v40);

    v41 = v33;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v0[7];
      v45 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67 = v66;
      *v45 = 136315138;
      v46 = [v44 debugDescription];
      v47 = v37;
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v43;
      v49 = v39;
      v51 = v50;

      v52 = v48;
      v37 = v47;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v67);
      v39 = v49;

      *(v45 + 4) = v53;
      _os_log_impl(&dword_20AEA4000, v42, v65, "Media configuration found: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x20F2E9420](v66, -1, -1);
      MEMORY[0x20F2E9420](v45, -1, -1);
    }

    v54 = v0[7];
    v56 = v0[2];
    v55 = v0[3];
    static TaskPriority.userInitiated.getter();
    v37(v55, 0, 1, v36);
    v57 = swift_allocObject();
    v57[2] = v56;
    v57[3] = v39;
    v57[4] = v56;
    v57[5] = v54;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v55, &async function pointer to partial apply for closure #2 in MediaPlaybackController.startMediaPlayback(), v57);

    *(v56 + 144) = 0;

    v58 = v0[1];
    goto LABEL_39;
  }

  v63 = swift_task_alloc();
  v0[8] = v63;
  *v63 = v0;
  v63[1] = MediaPlaybackController.startMediaPlayback();

  return MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(0, 0);
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](MediaPlaybackController.startMediaPlayback(), v1, 0);
}

{
  v1 = v0[9];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 67109378;
    *(v6 + 8) = 2112;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 10) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Media Playback not starting -- should_start=%{BOOL}d error=%@", v6, 0x12u);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = v0[7];
  v11 = v0[2];

  swift_willThrow();
  *(v11 + 144) = 0;

  v12 = v0[1];

  return v12();
}

void MediaPlaybackController.startMediaPlayback()()
{
  v58 = v0;
  v1 = v0[2];
  v2 = *(v1 + 120);
  v0[7] = v2;
  v3 = v2;
  if (!v2)
  {
    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v10 = 8;
    swift_willThrow();
LABEL_30:

    v49 = v0[1];
LABEL_31:

    v49();
    return;
  }

  v4 = v3;
  if (*(v1 + 144))
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v6, "Already starting media playback, do not playback.", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    v9 = 3;
LABEL_29:
    *v8 = v9;
    swift_willThrow();

    goto LABEL_30;
  }

  if (*(v1 + 152) > 4)
  {
    v50 = *(v1 + 179);
    *(v1 + 179) = 0;
    if (v50 == 1)
    {
      MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
    }

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134218240;
      *(v53 + 4) = *(v1 + 152);

      *(v53 + 12) = 2048;
      *(v53 + 14) = 5;
      _os_log_impl(&dword_20AEA4000, v51, v52, "Start media playback attempts=%ld exceed max_attempts=%ld, do not start media playback.", v53, 0x16u);
      MEMORY[0x20F2E9420](v53, -1, -1);
    }

    else
    {
    }

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    v9 = 10;
    goto LABEL_29;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20AEA4000, v11, v12, "Start media playback if audio route available and no audio playing nearby", v13, 2u);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v14 = v0[2];

  *(v14 + 145) = 1;
  *(v1 + 144) = 1;
  v15 = *(v14 + 179);
  *(v14 + 179) = 0;
  if (v15 == 1)
  {
    MediaPlaybackController.observePickableRoutesChanged(shouldObserve:)(0);
  }

  v16 = *(v1 + 152);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
    return;
  }

  v19 = v0[2];
  *(v1 + 152) = v18;
  v20 = *(v19 + 178);
  if (v20 != 2 && (v20 & 1) != 0)
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, v21, v22, "Cached value for shouldStartMediaPlayback is true, not rechecking.", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    v24 = v0[7];
    v25 = v0[3];
    v26 = v0[2];
    v27 = type metadata accessor for TaskPriority();
    v28 = *(*(v27 - 8) + 56);
    v28(v25, 1, 1, v27);
    v30 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v29, type metadata accessor for MediaPlaybackController, &protocol conformance descriptor for MediaPlaybackController);
    v31 = swift_allocObject();
    v31[2] = v26;
    v31[3] = v30;
    v31[4] = v26;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v25, &async function pointer to partial apply for closure #1 in MediaPlaybackController.startMediaPlayback(), v31);

    v32 = v24;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v0[7];
      v36 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v57 = v56;
      *v36 = 136315138;
      v37 = [v35 debugDescription];
      v38 = v28;
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v55 = v34;
      v40 = v30;
      v42 = v41;

      v43 = v39;
      v28 = v38;
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v57);
      v30 = v40;

      *(v36 + 4) = v44;
      _os_log_impl(&dword_20AEA4000, v33, v55, "Media configuration found: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x20F2E9420](v56, -1, -1);
      MEMORY[0x20F2E9420](v36, -1, -1);
    }

    v45 = v0[7];
    v47 = v0[2];
    v46 = v0[3];
    static TaskPriority.userInitiated.getter();
    v28(v46, 0, 1, v27);
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = v30;
    v48[4] = v47;
    v48[5] = v45;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v46, &async function pointer to partial apply for closure #2 in MediaPlaybackController.startMediaPlayback(), v48);

    *(v47 + 144) = 0;

    v49 = v0[1];
    goto LABEL_31;
  }

  v54 = swift_task_alloc();
  v0[8] = v54;
  *v54 = v0;
  v54[1] = MediaPlaybackController.startMediaPlayback();

  MediaPlaybackController.shouldStartMediaPlayback(whenEligibleForPrewarm:)(0, 0);
}

uint64_t MediaPlaybackController.startMediaPlayback()(char a1)
{
  v4 = *v2;
  *(v4 + 72) = v1;

  v5 = *(v4 + 16);
  if (v1)
  {
    v6 = MediaPlaybackController.startMediaPlayback();
  }

  else
  {
    *(v4 + 80) = a1 & 1;
    v6 = MediaPlaybackController.startMediaPlayback();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t MediaPlaybackController.startMediaPlayback()(uint64_t a1)
{
  v38 = v1;
  if (*(v1 + 80) == 1)
  {
    v2 = *(v1 + 56);
    v3 = *(v1 + 24);
    v4 = *(v1 + 16);
    v5 = type metadata accessor for TaskPriority();
    v6 = *(*(v5 - 8) + 56);
    v6(v3, 1, 1, v5);
    v8 = lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackController and conformance MediaPlaybackController, v7, type metadata accessor for MediaPlaybackController, &protocol conformance descriptor for MediaPlaybackController);
    v9 = swift_allocObject();
    v9[2] = v4;
    v9[3] = v8;
    v9[4] = v4;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in MediaPlaybackController.startMediaPlayback(), v9);

    v10 = v2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v1 + 56);
      v14 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v14 = 136315138;
      v15 = [v13 debugDescription];
      v16 = v6;
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v12;
      v18 = v8;
      v20 = v19;

      v21 = v17;
      v6 = v16;
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v20, &v37);
      v8 = v18;

      *(v14 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v11, v35, "Media configuration found: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x20F2E9420](v36, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    v23 = *(v1 + 56);
    v25 = *(v1 + 16);
    v24 = *(v1 + 24);
    static TaskPriority.userInitiated.getter();
    v6(v24, 0, 1, v5);
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v8;
    v26[4] = v25;
    v26[5] = v23;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v24, &async function pointer to partial apply for closure #2 in MediaPlaybackController.startMediaPlayback(), v26);

    *(v25 + 144) = 0;

    v27 = *(v1 + 8);
  }

  else
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67109120;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Media Playback not starting -- should_start=%{BOOL}d", v30, 8u);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    v31 = *(v1 + 56);
    v32 = *(v1 + 16);

    lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
    swift_allocError();
    *v33 = 7;
    swift_willThrow();

    *(v32 + 144) = 0;

    v27 = *(v1 + 8);
  }

  return v27();
}

uint64_t closure #1 in MediaPlaybackController.startMediaPlayback()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in MediaPlaybackController.startMediaPlayback();

  return MediaPlaybackController.reportMediaPlaybackConfigurationAnalytics()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #2 in MediaPlaybackController.startMediaPlayback()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 208) = a4;
  *(v5 + 216) = a5;
  return MEMORY[0x2822009F8](closure #2 in MediaPlaybackController.startMediaPlayback(), a4, 0);
}

uint64_t closure #2 in MediaPlaybackController.startMediaPlayback()()
{
  v1 = v0[26];
  if (*(v1 + 176) == 1)
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Media playback prepare started but not finished, waiting to handle intent.", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = v0[26];

    *(v6 + 177) = 1;
LABEL_7:
    v7 = v0[1];

    return v7();
  }

  v9 = *(v1 + 168);
  v0[28] = v9;
  if (v9)
  {

    v10 = swift_task_alloc();
    v0[29] = v10;
    *v10 = v0;
    v10[1] = closure #2 in MediaPlaybackController.startMediaPlayback();

    return MSSuggestionLegacyIntentExecutionContext.handle()();
  }

  else
  {
    v11 = v0[27];
    swift_getKeyPath();
    v0[24] = v11;
    lazy protocol witness table accessor for type MediaPlaybackController and conformance MediaPlaybackController(&lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem, 255, type metadata accessor for MediaPlaybackConfigurationItem, &protocol conformance descriptor for MediaPlaybackConfigurationItem);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
    swift_beginAccess();
    if (*(v11 + v12) == 1)
    {
      v13 = v0[26];
      v14 = *(v13 + 136);
      v0[31] = v14;
      if (v14)
      {
        v15 = v14;
        v16 = swift_task_alloc();
        v0[32] = v16;
        *v16 = v0;
        v16[1] = closure #2 in MediaPlaybackController.startMediaPlayback();

        return MediaPlaybackController.initiateMoodStationPlayback(for:)(v15);
      }

      else if (*(v13 + 145) == 1)
      {
        *(v13 + 160) = 1;
        if (one-time initialization token for mediaPlayback != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        v0[36] = __swift_project_value_buffer(v21, static WOLog.mediaPlayback);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_20AEA4000, v22, v23, "Media Playback started!", v24, 2u);
          MEMORY[0x20F2E9420](v24, -1, -1);
        }

        v25 = v0[26];

        v26 = *(v25 + 184);
        if (v26)
        {
          v27 = v26;
          v28 = [v27 analyticsEventBuilder];
          [v28 recordWorkoutMediaDidStart_];
        }

        v29 = objc_opt_self();
        v30 = [v29 systemRoute];
        v0[37] = v30;
        v31 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
        v0[38] = v31;
        v0[2] = v0;
        v0[3] = closure #2 in MediaPlaybackController.startMediaPlayback();
        v32 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
        v0[10] = MEMORY[0x277D85DD0];
        v0[11] = 1107296256;
        v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
        v0[13] = &block_descriptor_234;
        v0[14] = v32;
        [v29 setActiveRoute:v30 reason:v31 completion:v0 + 10];

        return MEMORY[0x282200938](v0 + 2);
      }

      else
      {
        if (one-time initialization token for mediaPlayback != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        __swift_project_value_buffer(v47, static WOLog.mediaPlayback);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_20AEA4000, v48, v49, "No longer in active workout when media playback started, stopping media playback.", v50, 2u);
          MEMORY[0x20F2E9420](v50, -1, -1);
        }

        v51 = swift_task_alloc();
        v0[40] = v51;
        *v51 = v0;
        v51[1] = closure #2 in MediaPlaybackController.startMediaPlayback();

        return MediaPlaybackController.stopMediaPlayback()();
      }
    }

    else
    {
      v17 = v0[27];
      swift_getKeyPath();
      v0[25] = v17;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v18 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
      swift_beginAccess();
      v19 = *(v17 + v18);
      v0[33] = v19;
      if (!v19)
      {
        lazy protocol witness table accessor for type MediaPlaybackError and conformance MediaPlaybackError();
        v33 = swift_allocError();
        *v34 = 9;
        swift_willThrow();
        *(v0[26] + 160) = 0;
        if (one-time initialization token for mediaPlayback != -1)
        {
          swift_once();
        }

        v35 = type metadata accessor for Logger();
        __swift_project_value_buffer(v35, static WOLog.mediaPlayback);
        v36 = v33;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          *v39 = 138412290;
          v41 = v33;
          v42 = _swift_stdlib_bridgeErrorToNSError();
          *(v39 + 4) = v42;
          *v40 = v42;
          _os_log_impl(&dword_20AEA4000, v37, v38, "Media Playback failed: %@", v39, 0xCu);
          outlined destroy of NSObject?(v40);
          MEMORY[0x20F2E9420](v40, -1, -1);
          MEMORY[0x20F2E9420](v39, -1, -1);
        }

        v43 = v0[26];

        v44 = *(v43 + 184);
        if (v44)
        {
          v45 = v44;
          v46 = [v45 analyticsEventBuilder];
          [v46 recordWorkoutMediaDidStart_];
        }

        else
        {
        }

        goto LABEL_7;
      }

      v19;
      v20 = swift_task_alloc();
      v0[34] = v20;
      *v20 = v0;
      v20[1] = closure #2 in MediaPlaybackController.startMediaPlayback();

      return MSSuggestion.unifiedPlay()();
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  else
  {
    v4 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[26];

  *(v1 + 168) = 0;

  v2 = v0[26];
  if (*(v2 + 145) == 1)
  {
    *(v2 + 160) = 1;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[36] = __swift_project_value_buffer(v3, static WOLog.mediaPlayback);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Media Playback started!", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v7 = v0[26];

    v8 = *(v7 + 184);
    if (v8)
    {
      v9 = v8;
      v10 = [v9 analyticsEventBuilder];
      [v10 recordWorkoutMediaDidStart_];
    }

    v11 = objc_opt_self();
    v12 = [v11 systemRoute];
    v0[37] = v12;
    v13 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
    v0[38] = v13;
    v0[2] = v0;
    v0[3] = closure #2 in MediaPlaybackController.startMediaPlayback();
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    v0[13] = &block_descriptor_234;
    v0[14] = v14;
    [v11 setActiveRoute:v12 reason:v13 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.mediaPlayback);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20AEA4000, v16, v17, "No longer in active workout when media playback started, stopping media playback.", v18, 2u);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    v19 = swift_task_alloc();
    v0[40] = v19;
    *v19 = v0;
    v19[1] = closure #2 in MediaPlaybackController.startMediaPlayback();

    return MediaPlaybackController.stopMediaPlayback()();
  }
}

{
  v1 = *(*v0 + 208);

  return MEMORY[0x2822009F8](closure #2 in MediaPlaybackController.startMediaPlayback(), v1, 0);
}

{

  v1 = *(v0 + 208);
  if (*(v1 + 145) == 1)
  {
    *(v1 + 160) = 1;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    *(v0 + 288) = __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Media Playback started!", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = *(v0 + 208);

    v7 = *(v6 + 184);
    if (v7)
    {
      v8 = v7;
      v9 = [v8 analyticsEventBuilder];
      [v9 recordWorkoutMediaDidStart_];
    }

    v10 = objc_opt_self();
    v11 = [v10 systemRoute];
    *(v0 + 296) = v11;
    v12 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
    *(v0 + 304) = v12;
    *(v0 + 16) = v0;
    *(v0 + 24) = closure #2 in MediaPlaybackController.startMediaPlayback();
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 104) = &block_descriptor_234;
    *(v0 + 112) = v13;
    [v10 setActiveRoute:v11 reason:v12 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.mediaPlayback);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v16, "No longer in active workout when media playback started, stopping media playback.", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    v18 = swift_task_alloc();
    *(v0 + 320) = v18;
    *v18 = v0;
    v18[1] = closure #2 in MediaPlaybackController.startMediaPlayback();

    return MediaPlaybackController.stopMediaPlayback()();
  }
}

{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  else
  {
    v4 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 208);
  if (*(v1 + 145) == 1)
  {
    *(v1 + 160) = 1;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    *(v0 + 288) = __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Media Playback started!", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v6 = *(v0 + 208);

    v7 = *(v6 + 184);
    if (v7)
    {
      v8 = v7;
      v9 = [v8 analyticsEventBuilder];
      [v9 recordWorkoutMediaDidStart_];
    }

    v10 = objc_opt_self();
    v11 = [v10 systemRoute];
    *(v0 + 296) = v11;
    v12 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B46D070);
    *(v0 + 304) = v12;
    *(v0 + 16) = v0;
    *(v0 + 24) = closure #2 in MediaPlaybackController.startMediaPlayback();
    v13 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
    *(v0 + 104) = &block_descriptor_234;
    *(v0 + 112) = v13;
    [v10 setActiveRoute:v11 reason:v12 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.mediaPlayback);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v16, "No longer in active workout when media playback started, stopping media playback.", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    v18 = swift_task_alloc();
    *(v0 + 320) = v18;
    *v18 = v0;
    v18[1] = closure #2 in MediaPlaybackController.startMediaPlayback();

    return MediaPlaybackController.stopMediaPlayback()();
  }
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  v3 = *(v1 + 208);
  if (v2)
  {
    v4 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  else
  {
    v4 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  *(*v1 + 328) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    v4 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  else
  {
    v4 = closure #2 in MediaPlaybackController.startMediaPlayback();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = v0[30];
  *(v0[26] + 160) = 0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Media Playback failed: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = v0[26];

  v11 = *(v10 + 184);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 analyticsEventBuilder];
    [v13 recordWorkoutMediaDidStart_];
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

{

  v1 = *(v0 + 280);
  *(*(v0 + 208) + 160) = 0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Media Playback failed: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = *(v0 + 208);

  v11 = *(v10 + 184);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 analyticsEventBuilder];
    [v13 recordWorkoutMediaDidStart_];
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = v0[41];
  *(v0[26] + 160) = 0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Media Playback failed: %@", v6, 0xCu);
    outlined destroy of NSObject?(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = v0[26];

  v11 = *(v10 + 184);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 analyticsEventBuilder];
    [v13 recordWorkoutMediaDidStart_];
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}