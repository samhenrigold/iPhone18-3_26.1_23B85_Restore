char *specialized WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v47[3] = a8;
  v47[4] = a11;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
  (*(*(a8 - 8) + 32))(boxed_opaque_existential_0Tm, a1, a8);
  v46[3] = a10;
  v46[4] = a13;
  v20 = __swift_allocate_boxed_opaque_existential_0Tm(v46);
  (*(*(a10 - 8) + 32))(v20, a2, a10);
  v45[3] = a9;
  v45[4] = a12;
  v21 = __swift_allocate_boxed_opaque_existential_0Tm(v45);
  (*(*(a9 - 8) + 32))(v21, a3, a9);
  a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loaded] = 0;
  a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurationsDeduplicated] = 0;
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore____lazy_storage___managedConfigurationsStore] = 0;
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_loadDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncComplete] = 1;
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken] = -1;
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v47, &a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_queryClient]);
  v22 = MEMORY[0x277D84F90];
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_configurations] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_alternativeConfigurations] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(v22);
  swift_beginAccess();
  v44 = 0;
  Published.init(initialValue:)();
  swift_endAccess();
  v23 = &a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_activityMoveModeBlock];
  *v23 = a5;
  v23[1] = a6;
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v46, &a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor]);
  outlined init with copy of UnlockedSinceBootMonitorProtocol(v45, &a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_backgroundAssertionManager]);
  *&a7[OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_applicationSignificantTimeChangeNotificationName] = a4;
  v43.receiver = a7;
  v43.super_class = type metadata accessor for WorkoutConfigurationOccurrenceStore(0);

  v24 = a4;
  v25 = objc_msgSendSuper2(&v43, sel_init);
  v26 = v25 + OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_unlockedSinceBootMonitor;
  swift_beginAccess();
  v27 = *(v26 + 24);
  v28 = *(v26 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v29 = *(v28 + 16);
  v30 = v25;
  v29(v25, &protocol witness table for WorkoutConfigurationOccurrenceStore, v27, v28);
  swift_endAccess();
  v31 = NSNotificationNameForSyncedPersistenceType();
  v32 = [v31 UTF8String];
  _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v33 = static OS_dispatch_queue.main.getter();
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = v31;
  *(v35 + 24) = v34;
  aBlock[4] = closure #1 in WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)partial apply;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Int32) -> ();
  aBlock[3] = &block_descriptor_142;
  v36 = _Block_copy(aBlock);
  v37 = v31;

  v38 = OBJC_IVAR___WOCoreWorkoutConfigurationOccurrenceStore_syncWorkoutEntityNotifyToken;
  swift_beginAccess();
  notify_register_dispatch(v32, &v30[v38], v33, v36);
  swift_endAccess();
  _Block_release(v36);

  __swift_destroy_boxed_opaque_existential_1Tm_6(v45);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v46);
  __swift_destroy_boxed_opaque_existential_1Tm_6(v47);

  return v30;
}

void specialized static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  static Date.timeIntervalSinceReferenceDate.getter();
  v9 = v8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = MEMORY[0x277D84F90];
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v16 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  outlined init with copy of UnlockedSinceBootMonitorProtocol(a2, v19);
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v13;
  v17[4] = v10;
  v17[5] = v9;
  v17[6] = v12;
  outlined init with take of UnlockedSinceBootMonitorProtocol(v19, (v17 + 7));
  v17[12] = a3;
  v17[13] = a4;
  v18 = *(v15 + 16);

  v18(partial apply for closure #1 in static WorkoutConfigurationOccurrenceStore.load(with:unlockedSinceBootMonitor:completion:), v17, v16, v15);
}

unint64_t specialized static WorkoutConfigurationOccurrenceStore.sortedRaceConfigurations(_:filterType:)(unint64_t a1, char *a2)
{
  v3 = *a2;
  v29 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2E7A20](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v28 = v6;
      closure #1 in static WorkoutConfigurationOccurrenceStore.sortedRaceConfigurations(_:filterType:)(&v28, v3, &v27);

      if (v27)
      {
        MEMORY[0x20F2E6F30]();
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  v29 = specialized Array._copyToContiguousArray()(v9);
  specialized MutableCollection<>.sort(by:)(&v29);

  v10 = v29;
  if (one-time initialization token for race != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.race);
    swift_retain_n();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136315394;
      LOBYTE(v28) = v3;
      v16 = WorkoutConfigurationFilterType.displayName.getter();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v29);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2048;
      v19 = v10 & 0x4000000000000000;
      if ((v10 & 0x8000000000000000) != 0 || v19)
      {
        v20 = __CocoaSet.count.getter();
      }

      else
      {
        v20 = *(v10 + 16);
      }

      *(v14 + 14) = v20;

      _os_log_impl(&dword_20AEA4000, v12, v13, "Race: filter (%s) found %ld race workout_configurations", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm_6(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    else
    {

      v19 = v10 & 0x4000000000000000;
    }

    if ((v10 & 0x8000000000000000) != 0 || v19)
    {
      break;
    }

    v21 = *(v10 + 16);
    if (!v21)
    {
      return v10;
    }

LABEL_27:
    for (j = 0; ; ++j)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x20F2E7A20](j, v10);
      }

      else
      {
        if (j >= *(v10 + 16))
        {
          goto LABEL_36;
        }

        v23 = *(v10 + 8 * j + 32);
      }

      v24 = v23;
      v25 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v29 = v23;
      closure #4 in static WorkoutConfigurationOccurrenceStore.sortedNearbyRaceConfigurations(_:filterType:currentLocation:)(&v29, v3, "Race: filter (%s) found race workout_configuration (%s): %s, clusterUUID: %s, lastWorkoutStartingPoint: %@, relevanceValue: %f");

      if (v25 == v21)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  v21 = __CocoaSet.count.getter();
  if (v21)
  {
    goto LABEL_27;
  }

  return v10;
}

char *specialized static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(void *a1, void *a2, int a3)
{
  v54 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v49 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v53 = &v49 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.app);
  v18 = a1;
  v19 = a2;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v52 = v8;
    v23 = v22;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55[0] = v51;
    *v23 = 136315650;
    v24 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v13 + 16))(v16, &v18[v24], v12);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v13 + 8))(v16, v12);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, v55);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2112;
    *(v23 + 14) = v19;
    v29 = v50;
    *v50 = v19;
    *(v23 + 22) = 2080;
    v30 = v19;
    v31 = WorkoutConfiguration.logDisplayName.getter();
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, v55);

    *(v23 + 24) = v33;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[ConfigurationStore] copy workout_configuration %s with activityType: %@ (%s)", v23, 0x20u);
    _sSo8NSObjectCSgWOhTm_3(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v29, -1, -1);
    v34 = v51;
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v34, -1, -1);
    v35 = v23;
    v8 = v52;
    MEMORY[0x20F2E9420](v35, -1, -1);
  }

  v36 = closure #1 in static WorkoutConfiguration.copy(of:with:preservingExternalProvider:)(v18, v19);
  v37 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  swift_beginAccess();
  v38 = &v18[v37];
  v39 = v53;
  _s10Foundation4UUIDVSgWOcTm_0(v38, v53, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  swift_beginAccess();
  outlined assign with take of WorkoutPlan.Route?(v39, &v36[v40], &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  swift_endAccess();
  if (v54)
  {
    v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
    swift_beginAccess();
    v42 = *&v18[v41];
    v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
    swift_beginAccess();
    *&v36[v43] = v42;

    v44 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    swift_beginAccess();
    _s10Foundation4UUIDVSgWOcTm_0(&v18[v44], v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    swift_beginAccess();
    outlined assign with take of WorkoutPlan.Route?(v8, &v36[v45], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
    v46 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    _s10Foundation4UUIDVSgWOcTm_0(&v18[v46], v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v47 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    outlined assign with take of WorkoutPlan.Route?(v8, &v36[v47], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_endAccess();
  }

  return v36;
}

char *specialized WorkoutConfigurationOccurrenceStore.__allocating_init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v31 = a2;
  v32 = a3;
  v29 = a1;
  v33 = a11;
  v13 = *(a9 - 8);
  v30 = a12;
  v14 = MEMORY[0x28223BE20](a1, a2);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a10 - 8);
  v19 = MEMORY[0x28223BE20](v14, v18);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v19, v24);
  v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = objc_allocWithZone(type metadata accessor for WorkoutConfigurationOccurrenceStore(0));
  (*(v23 + 16))(v26, v29, a8);
  (*(v17 + 16))(v21, v31, a10);
  (*(v13 + 16))(v16, v32, a9);
  return specialized WorkoutConfigurationOccurrenceStore.init(queryClient:unlockedSinceBootMonitor:backgroundAssertionManager:applicationSignificantTimeChangeNotificationName:activityMoveModeBlock:)(v26, v21, v16, v34, v35, v36, v27, a8, a9, a10, v33, *(&v33 + 1), v30);
}

double partial apply for closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(char a1, unint64_t a2)
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(a1, a2, v6, v7, v8);
}

void *specialized WorkoutConfigurationOccurrenceStore.defaultConfiguration(with:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v41 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v41 - v16;
  v18 = [objc_opt_self() defaultActivityTypesWithIsWheelchairUser:0 isSwimmingSupported:1 activityMoveMode:1];
  _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = a1;
  v20 = specialized Sequence.first(where:)(partial apply for closure #1 in WorkoutConfigurationOccurrenceStore.defaultConfiguration(with:), v49, v19);

  if (v20)
  {
    v45 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
    v47 = v20;
    v21 = [v20 openGoalUUID];
    if (v21)
    {
      v22 = v21;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = *(v7 + 32);
      v23(v5, v14, v6);
      v24 = v14;
      v44 = *(v7 + 56);
      v44(v5, 0, 1, v6);
      v23(v17, v5, v6);
      v25 = v17;
    }

    else
    {
      v24 = v14;
      v26 = *(v7 + 56);
      v26(v5, 1, 1, v6);
      v25 = v17;
      UUID.init()();
      v27 = (*(v7 + 48))(v5, 1, v6);
      v44 = v26;
      if (v27 != 1)
      {
        _sSo8NSObjectCSgWOhTm_3(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }
    }

    v42 = v24;
    v46 = v25;
    v43 = specialized Occurrence.__allocating_init(count:)(0);
    v28 = *(v7 + 16);
    v28(v24, v25, v6);
    v29 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration(0));
    swift_beginAccess();
    v30 = v45;
    v52 = v45;
    _sSo17OS_dispatch_queueCMaTm_11(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    v45 = v30;
    Published.init(initialValue:)();
    swift_endAccess();
    v28(v48, v24, v6);
    *&v29[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
    v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    v32 = type metadata accessor for Date();
    v33 = *(*(v32 - 8) + 56);
    v33(&v29[v31], 1, 1, v32);
    v33(&v29[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v32);
    v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
    v35 = type metadata accessor for WorkoutPlan.Route();
    (*(*(v35 - 8) + 56))(&v29[v34], 1, 1, v35);
    v44(&v29[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v6);
    v36 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
    *&v29[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
    v37 = v48;
    v28(&v29[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v48, v6);
    *&v29[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v47;
    v29[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
    *&v29[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v43;
    swift_beginAccess();
    *&v29[v36] = 0;
    v29[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
    v38 = type metadata accessor for WorkoutConfiguration(0);
    v51.receiver = v29;
    v51.super_class = v38;
    v20 = objc_msgSendSuper2(&v51, sel_init);

    v39 = *(v7 + 8);
    v39(v37, v6);
    v39(v42, v6);
    v39(v46, v6);
  }

  return v20;
}

uint64_t specialized static WorkoutConfigurationOccurrenceStore.daysAgo(from:now:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v29 - v11;
  Date.timeIntervalSinceReferenceDate.getter();
  v14 = v13;
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v14 - v15;
  if (COERCE__INT64(fabs(v14 - v15)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -2147483650.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 >= 2147483650.0)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    swift_once();
LABEL_8:
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.app);
    v19 = *(v5 + 16);
    v19(v12, a1, v4);
    v19(v9, a2, v4);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134218496;
      Date.timeIntervalSinceReferenceDate.getter();
      v24 = v23;
      v25 = *(v5 + 8);
      v25(v12, v4);
      *(v22 + 4) = v24;
      *(v22 + 12) = 2048;
      Date.timeIntervalSinceReferenceDate.getter();
      v27 = v26;
      v25(v9, v4);
      *(v22 + 14) = v27;
      *(v22 + 22) = 2048;
      *(v22 + 24) = v16;
      _os_log_impl(&dword_20AEA4000, v20, v21, "workout_configuration daysAgo from date %f is later than now %f, timeInterval: %f", v22, 0x20u);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    else
    {

      v28 = *(v5 + 8);
      v28(v9, v4);
      v28(v12, v4);
    }

    return 1;
  }

  if (v16 >= 1)
  {
    return v16 / 0x15180u + 1;
  }

  if (v16 < 0.0)
  {
    if (one-time initialization token for app == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  return 1;
}

uint64_t dispatch thunk of WorkoutConfigurationOccurrenceStore.configurations(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x280))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x290))();
}

BOOL specialized static WorkoutConfigurationOccurrenceStore.compareConfigurations(lhs:rhs:now:addWeightForNew:)(char *a1, char *a2, uint64_t a3, int a4)
{
  LODWORD(v97) = a4;
  v98 = a2;
  v99 = a3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v88 = &v86[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8, v10);
  v89 = &v86[-v12];
  v14 = MEMORY[0x28223BE20](v11, v13);
  v91 = &v86[-v15];
  v17 = MEMORY[0x28223BE20](v14, v16);
  v92 = &v86[-v18];
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v86[-v20];
  v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v96 = a1;
  v94 = v22;
  v23 = *&a1[v22];
  v24 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v25 = *(v23 + v24);
  v26 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v28 = v6 + 16;
  v27 = *(v6 + 16);
  v27(v21, v23 + v26, v5);
  LODWORD(v93) = specialized static WorkoutConfigurationOccurrenceStore.daysAgo(from:now:)(v21, v99);
  v31 = *(v6 + 8);
  v30 = v6 + 8;
  v29 = v31;
  v31(v21, v5);
  v32 = 0.0;
  v33 = 0.0;
  v95 = v27;
  if (v97)
  {
    v87 = v25;
    v34 = *&v96[v94];
    v35 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v27(v92, v34 + v35, v5);
    v36 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
    swift_beginAccess();
    v37 = v34 + v36;
    v38 = v91;
    v90 = v28;
    v27(v91, v37, v5);
    Date.timeIntervalSinceReferenceDate.getter();
    v40 = v39;
    Date.timeIntervalSinceReferenceDate.getter();
    if (v41 <= v40)
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v43 = v42;
      Date.timeIntervalSinceReferenceDate.getter();
      v45 = v44;
      v29(v38, v5);
      v29(v92, v5);
      if (v43 - v45 >= 86400.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = 1000000.0;
      }
    }

    else
    {
      v29(v38, v5);
      v29(v92, v5);
    }

    v27 = v95;
    v25 = v87;
  }

  LODWORD(v92) = v25 & ~(v25 >> 31);
  v46 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  v47 = v98;
  swift_beginAccess();
  v48 = *&v47[v46];
  v49 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  LODWORD(v91) = *(v48 + v49) & ~(*(v48 + v49) >> 31);
  v50 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v27(v21, v48 + v50, v5);
  v51 = specialized static WorkoutConfigurationOccurrenceStore.daysAgo(from:now:)(v21, v99);
  v29(v21, v5);
  v90 = v46;
  if (v97)
  {
    LODWORD(v97) = v51;
    v52 = *&v98[v46];
    v53 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v54 = v89;
    v27(v89, v52 + v53, v5);
    v55 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
    swift_beginAccess();
    v56 = v52 + v55;
    v57 = v54;
    v58 = v88;
    v27(v88, v56, v5);
    Date.timeIntervalSinceReferenceDate.getter();
    v60 = v59;
    Date.timeIntervalSinceReferenceDate.getter();
    if (v61 <= v60)
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v63 = v62;
      Date.timeIntervalSinceReferenceDate.getter();
      v65 = v64;
      v29(v58, v5);
      v29(v57, v5);
      if (v63 - v65 >= 86400.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = 1000000.0;
      }
    }

    else
    {
      v29(v58, v5);
      v29(v57, v5);
    }

    v51 = v97;
  }

  v66 = v92 / v93 + v33;
  v67 = v91 / v51 + v32;
  if (v66 == v67)
  {
    v97 = v30;
    v68 = v96;
    v93 = v96;
    Date.timeIntervalSinceReferenceDate.getter();
    v70 = v69;
    v71 = *&v68[v94];
    v72 = v98;
    v73 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v27(v21, v71 + v73, v5);
    Date.timeIntervalSinceReferenceDate.getter();
    v75 = v74;

    v29(v21, v5);
    v76 = v70 - v75;
    v77 = v72;
    Date.timeIntervalSinceReferenceDate.getter();
    v79 = v78;
    v80 = *&v72[v90];
    v81 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
    swift_beginAccess();
    v95(v21, v80 + v81, v5);
    Date.timeIntervalSinceReferenceDate.getter();
    v83 = v82;

    v29(v21, v5);
    return v76 < v79 - v83;
  }

  else
  {
    return v67 < v66;
  }
}

uint64_t outlined assign with take of WorkoutPlan.Route?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of (key: UUID, value: WorkoutConfiguration)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMd, &_s10Foundation4UUIDV3key_11WorkoutCore0D13ConfigurationC5valuetMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double outlined consume of Set<WorkoutConfigurationOccurrenceStore.WorkoutConfigurationHolder>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined init with take of UnlockedSinceBootMonitorProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void partial apply for closure #1 in closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  closure #1 in closure #1 in WorkoutConfigurationOccurrenceStore.loadIfNeededInBackground(enteringForeground:)(v2, v3, v4, v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t objectdestroy_130Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t LiveWorkoutConfiguration.configurationUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t LiveWorkoutConfiguration.startSource.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  return *(v0 + v1);
}

void LiveWorkoutConfiguration.startSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t LiveWorkoutConfiguration.mirroredStartInterrupted.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted;
  swift_beginAccess();
  return *(v0 + v1);
}

void LiveWorkoutConfiguration.mirroredStartInterrupted.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id LiveWorkoutConfiguration.catalogWorkoutBridge.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v20 - v3;
  v5 = type metadata accessor for CatalogWorkout();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - v12;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v13, v4, v5);
    v15 = *(v6 + 16);
    v15(v10, v13, v5);
    v16 = type metadata accessor for CatalogWorkoutCoreBridge(0);
    v17 = objc_allocWithZone(v16);
    v15(&v17[OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue], v10, v5);
    v20.receiver = v17;
    v20.super_class = v16;
    v18 = objc_msgSendSuper2(&v20, sel_init);
    v19 = *(v6 + 8);
    v19(v10, v5);
    v19(v13, v5);
    return v18;
  }
}

Class @objc LiveWorkoutConfiguration.activityBeginDate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(a1 + v9, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v8, v10);
    v13 = isa;
  }

  return v13;
}

uint64_t LiveWorkoutConfiguration.activityBeginDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v4 + v8, a4, a2, a3);
}

void @objc LiveWorkoutConfiguration.activityBeginDate.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v15 - v9;
  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();
  v14 = a1;
  _s10Foundation4DateVSgWOdTm_0(v10, &a1[v13], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
}

uint64_t LiveWorkoutConfiguration.activityBeginDate.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  _s10Foundation4DateVSgWOdTm_0(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t key path setter for LiveWorkoutConfiguration.activityBeginDate : LiveWorkoutConfiguration(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v19 - v14;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(a1, &v19 - v14, a5, a6);
  v16 = *a2;
  v17 = *a7;
  swift_beginAccess();
  _s10Foundation4DateVSgWOdTm_0(v15, v16 + v17, a5, a6);
  return swift_endAccess();
}

uint64_t _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOdTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t LiveWorkoutConfiguration.fitnessMachineSeymourStartSource.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource;
  swift_beginAccess();
  return *(v0 + v1);
}

void LiveWorkoutConfiguration.fitnessMachineSeymourStartSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Class @objc LiveWorkoutConfiguration.fitnessMachineSessionUUID.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(a1 + v9, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v8, v10);
    v13 = isa;
  }

  return v13;
}

void @objc LiveWorkoutConfiguration.fitnessMachineSessionUUID.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v15 - v9;
  if (a3)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();
  v14 = a1;
  _s10Foundation4DateVSgWOdTm_0(v10, &a1[v13], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
}

void *LiveWorkoutConfiguration.suggestedHKWorkoutConfiguration.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void LiveWorkoutConfiguration.suggestedHKWorkoutConfiguration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for LiveWorkoutConfiguration.suggestedHKWorkoutConfiguration : LiveWorkoutConfiguration(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t LiveWorkoutConfiguration.requiresGoalConfiguration.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration;
  swift_beginAccess();
  return *(v0 + v1);
}

void LiveWorkoutConfiguration.requiresGoalConfiguration.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id LiveWorkoutConfiguration.topLevelActivityType.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

void LiveWorkoutConfiguration.currentMultisportDisplayedActivityType.getter(uint64_t a1)
{
  v2 = LiveWorkoutConfiguration.currentActivityType.getter();
  v3 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    v4 = v3;
    if ([v2 effectiveTypeIdentifier] == 83)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v9);

      v5 = v9[0];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v9);

      if ((v9[0] & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2E7A20](v5, v9[0]);
        goto LABEL_7;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v5 < *((v9[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v9[0] + 8 * v5 + 32);
LABEL_7:
        v7 = v6;

        v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        *&v7[v8];

        return;
      }

      __break(1u);
    }

    else
    {
    }
  }
}

id LiveWorkoutConfiguration.currentActivityType.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter(v13);

    v3 = v13[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v13);

    if (v13[0] >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v13[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v3 < v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v13);

      v5 = v13[0];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v13);

      if ((v13[0] & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2E7A20](v5, v13[0]);
        goto LABEL_9;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v5 < *((v13[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v13[0] + 8 * v5 + 32);
LABEL_9:
        v7 = v6;

        v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v9 = *&v7[v8];

        return v9;
      }

      __break(1u);
    }

    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000048, 0x800000020B45CEE0, "WorkoutCore/LiveWorkoutConfiguration.swift", 42, 2, 73, 0);
    __break(1u);
  }

  else
  {
    v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v12 = *&v1[v11];

    return v12;
  }

  return result;
}

id LiveWorkoutConfiguration.currentActivityTypeIdentifier.getter()
{
  v0 = LiveWorkoutConfiguration.currentActivityType.getter();
  v1 = [v0 identifier];

  return v1;
}

id @objc LiveWorkoutConfiguration.currentActivityTypeIdentifier.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = LiveWorkoutConfiguration.currentActivityType.getter();
  v6 = [v5 *a3];

  return v6;
}

id LiveWorkoutConfiguration.currentEffectiveActivityTypeIdentifier.getter()
{
  v0 = LiveWorkoutConfiguration.currentActivityType.getter();
  v1 = [v0 effectiveTypeIdentifier];

  return v1;
}

uint64_t LiveWorkoutConfiguration.currentActivityLocationType.getter()
{
  v0 = LiveWorkoutConfiguration.currentActivityType.getter();
  v1 = [v0 isIndoor];

  if (v1)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

double LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

double LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath.setter(__int128 *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return result;
}

uint64_t (*LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  return LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath.modify;
}

uint64_t key path setter for LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath : LiveWorkoutConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore08IntervalD7KeyPathVSg_GMR);
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

  v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath.modify;
}

uint64_t LiveWorkoutConfiguration.currentMultiSportLeg.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path setter for LiveWorkoutConfiguration.$currentMultiSportLeg : LiveWorkoutConfiguration(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

void LiveWorkoutConfiguration.remainingMultisportLegCount.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter(&v4);

    if (v4 >> 62)
    {
      v3 = __CocoaSet.count.getter();
    }

    else
    {
      v3 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v4);

    if (__OFSUB__(v3, v4))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v3 - v4, 1))
    {
      return;
    }

    __break(1u);
  }
}

uint64_t *LiveWorkoutConfiguration.currentPowerZonesAlertTargetZone.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_6;
  }

  v2 = LiveWorkoutConfiguration.currentActivityType.getter();
  v3 = [v2 effectiveTypeIdentifier];

  if (v3 == 13)
  {
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v4 = v1;
      static Published.subscript.getter(&v21);

      if (v23 != 1)
      {
        v15 = v22;
        v20 = v21;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v21);

        v16 = v21;
        v21 = v20;
        v22 = v15;
        v17 = IntervalWorkout.stepForKeyPath(_:)(&v21);

        v18 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
        swift_beginAccess();
        v19 = *(v17 + v18);
        if (!v19)
        {
          if (one-time initialization token for defaultZone != -1)
          {
            swift_once();
          }

          v19 = static PowerZonesAlertTargetZone.defaultZone;
        }

        v9 = v19;

        goto LABEL_12;
      }
    }

LABEL_6:
    v4 = LiveWorkoutConfiguration.currentActivityType.getter();
    swift_beginAccess();
    v5 = static PowerZonesAlertTargetZone.powerZonesAlertTargetZonesByActivityTypeKey;
    v6 = off_27C728588;

    v7 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v5, v6, v4);

    if (!v7 || (type metadata accessor for PowerZonesAlertTargetZone(), (v8 = PowerZonesAlertTargetZone.__allocating_init(dict:)(v7)) == 0))
    {
      if (one-time initialization token for defaultZone != -1)
      {
        swift_once();
      }

      v8 = static PowerZonesAlertTargetZone.defaultZone;
    }

    v9 = v8;
LABEL_12:

    return v9;
  }

  v11 = type metadata accessor for PowerZonesAlertTargetZone();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v12[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = -64;
  v24.receiver = v12;
  v24.super_class = v11;
  return objc_msgSendSuper2(&v24, sel_init);
}

uint64_t *LiveWorkoutConfiguration.currentPowerAlertTargetZone.getter()
{
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    v0 = type metadata accessor for PowerZonesAlertTargetZone();
    v1 = objc_allocWithZone(v0);
    v2 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_defaultZonesDidLoad];
    *v2 = 0;
    *(v2 + 1) = 0;
    v3 = &v1[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
    *v3 = 0;
    *(v3 + 1) = 0;
    v3[16] = -64;
    v11.receiver = v1;
    v11.super_class = v0;
    return objc_msgSendSuper2(&v11, sel_init);
  }

  else
  {
    v5 = LiveWorkoutConfiguration.currentActivityType.getter();
    swift_beginAccess();
    v6 = static PowerZonesAlertTargetZone.powerZonesAlertTargetZonesByActivityTypeKey;
    v7 = off_27C728588;

    v8 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v6, v7, v5);

    if (!v8 || (type metadata accessor for PowerZonesAlertTargetZone(), (v9 = PowerZonesAlertTargetZone.__allocating_init(dict:)(v8)) == 0))
    {
      if (one-time initialization token for defaultZone != -1)
      {
        swift_once();
      }

      v9 = static PowerZonesAlertTargetZone.defaultZone;
    }

    v10 = v9;

    return v10;
  }
}

id LiveWorkoutConfiguration.topLevelGoal.getter()
{
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    v0 = objc_allocWithZone(MEMORY[0x277D0A838]);

    return [v0 initWithGoalTypeIdentifier:0 value:0];
  }

  else
  {

    return LiveWorkoutConfiguration.currentGoal.getter();
  }
}

id LiveWorkoutConfiguration.currentGoal.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for GoalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    goto LABEL_2;
  }

  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v1;
    static Published.subscript.getter(&v17);

    if ((v19 & 1) == 0)
    {
      v4 = v18;
      v16 = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v17);

      v5 = v17;
      v17 = v16;
      v18 = v4;
      IntervalWorkout.stepForKeyPath(_:)(&v17);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v17);

      return v17;
    }

    goto LABEL_7;
  }

  type metadata accessor for PacerWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
LABEL_2:
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v1;
    static Published.subscript.getter(&v17);

LABEL_3:

    return v17;
  }

  type metadata accessor for RaceWorkoutConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for MultiSportWorkoutConfiguration(0);
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v1 = v1;
      static Published.subscript.getter(&v17);

      v7 = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v17);

      if (v17 >> 62)
      {
        v8 = __CocoaSet.count.getter();
      }

      else
      {
        v8 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v7 >= v8)
      {
LABEL_7:
        v3 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];

        return v3;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v17);

      v9 = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v17);

      if ((v17 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2E7A20](v9, v17);
        goto LABEL_23;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v9 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(v17 + 8 * v9 + 32);
LABEL_23:
        v11 = v10;

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v17);

        goto LABEL_3;
      }

      __break(1u);
    }

    *&v17 = 0;
    *(&v17 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    *&v17 = 0xD000000000000022;
    *(&v17 + 1) = 0x800000020B45D2F0;
    v12 = [v1 description];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    MEMORY[0x20F2E6D80](v13, v15);

    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v17, *(&v17 + 1), "WorkoutCore/LiveWorkoutConfiguration.swift", 42, 2, 157, 0);
    __break(1u);
    return result;
  }

  v6 = objc_allocWithZone(MEMORY[0x277D0A838]);

  return [v6 initWithGoalTypeIdentifier:0 value:0];
}

uint64_t LiveWorkoutConfiguration.currentTargetZones.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for GoalWorkoutConfiguration(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    v4 = v2;
    swift_beginAccess();
    v5 = *(v4 + v3);
    v6 = v1;
    v7 = v5;
    specialized static TargetZoneStorage.defaultZones(activityType:)(v7);
    v9 = v8;

    return v9;
  }

  type metadata accessor for IntervalWorkoutConfiguration(0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    goto LABEL_18;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v1;
  static Published.subscript.getter(&v65);

  if (v67 == 1)
  {
    goto LABEL_57;
  }

  v11 = v66;
  v64 = v65;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v65);

  v12 = v65;
  v65 = v64;
  v66 = v11;
  v13 = IntervalWorkout.stepForKeyPath(_:)(&v65);

  v14 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v15 = *(v13 + v14);
  if (v15 >> 62)
  {
    goto LABEL_63;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

  if (!v16)
  {
LABEL_42:

    v34 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
    if (v34)
    {
      v35 = v34;
      v36 = PowerZonesAlertTargetZone.targetZoneRepresentation.getter();

      if (v36)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_20B425990;
        *(v9 + 32) = v36;
LABEL_60:

        return v9;
      }
    }

    goto LABEL_57;
  }

  v17 = 0;
  while ((v15 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x20F2E7A20](v17, v15);
    v18 = v10;
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_17;
    }

LABEL_12:
    swift_beginAccess();
    if (*(v18 + 40))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_20B425990;
      *(v9 + 32) = v18;
      goto LABEL_60;
    }

    ++v17;
    if (v19 == v16)
    {
      goto LABEL_42;
    }
  }

  if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_62;
  }

  v18 = *(v15 + 8 * v17 + 32);

  v19 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  type metadata accessor for PacerWorkoutConfiguration(v10);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    type metadata accessor for RaceWorkoutConfiguration(0);
    if (swift_dynamicCastClass())
    {
      return MEMORY[0x277D84F90];
    }

    type metadata accessor for MultiSportWorkoutConfiguration(0);
    if (!swift_dynamicCastClass())
    {
      goto LABEL_81;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v1;
    static Published.subscript.getter(&v65);

    v37 = v65;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v65);

    if (v65 >> 62)
    {
      v38 = __CocoaSet.count.getter();
    }

    else
    {
      v38 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v37 < v38)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v65);

      v39 = v65;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v65);

      if ((v65 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x20F2E7A20](v39, v65);
        goto LABEL_55;
      }

      if ((v39 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v39 < *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v40 = *(v65 + 8 * v39 + 32);
LABEL_55:
        v41 = v40;

        v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v43 = *&v41[v42];
        specialized static TargetZoneStorage.defaultZones(activityType:)(v43);
        v9 = v44;

        return v9;
      }

      __break(1u);
LABEL_81:
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003ELL, 0x800000020B45D320, "WorkoutCore/LiveWorkoutConfiguration.swift", 42, 2, 201, 0);
      __break(1u);
      return result;
    }

LABEL_57:

    return MEMORY[0x277D84F90];
  }

  v21 = v20;
  v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v23 = *(v21 + v22);
  v24 = v1;
  v15 = v23;
  specialized static TargetZoneStorage.defaultZones(activityType:)(v15);
  v26 = v25;

  v69 = MEMORY[0x277D84F90];
  if (v26 >> 62)
  {
    v27 = __CocoaSet.count.getter();
    if (!v27)
    {
      goto LABEL_65;
    }

LABEL_21:
    v63 = v21;
    v28 = 0;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x20F2E7A20](v28, v26);
        v1 = (v28 + 1);
        if (__OFADD__(v28, 1))
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
        if (v28 >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          v16 = __CocoaSet.count.getter();
          goto LABEL_7;
        }

        v29 = *(v26 + 8 * v28 + 32);

        v1 = (v28 + 1);
        if (__OFADD__(v28, 1))
        {
          goto LABEL_41;
        }
      }

      v30 = *(v29 + 16);
      if (v30 > 4)
      {
        if (v30 - 5 < 2)
        {
          v32 = "oneMasterTypeCadence";
LABEL_33:
          v15 = v32 | 0x8000000000000000;
LABEL_37:
          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v33)
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v15 = &v69;
            specialized ContiguousArray._endMutation()();
          }

          goto LABEL_23;
        }

        v31 = "audioTranscriptionsEnabled";
      }

      else
      {
        if (v30 >= 3)
        {
          v32 = "oneMasterTypePace";
          goto LABEL_33;
        }

        v31 = "oneMasterTypeNone";
      }

      v15 = v31 | 0x8000000000000000;
      if ((v31 | 0x8000000000000000) != 0x800000020B454EB0)
      {
        goto LABEL_37;
      }

LABEL_23:
      ++v28;
      if (v1 == v27)
      {
        v9 = v69;
        v21 = v63;
        goto LABEL_66;
      }
    }
  }

  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v27)
  {
    goto LABEL_21;
  }

LABEL_65:
  v9 = MEMORY[0x277D84F90];
LABEL_66:

  v70 = v9;
  v45 = *(v21 + v22);

  v46 = specialized static PacerAlertsStore.read(for:)(v45);
  swift_beginAccess();
  v47 = *(v46 + 16);

  if ((v47 & 1) == 0)
  {
    goto LABEL_75;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v68);

  v48 = v68;
  v49 = [v68 value];

  v50 = 0.0;
  v51 = 0.0;
  if (v49)
  {
    v52 = [objc_opt_self() meterUnit];
    [v49 doubleValueForUnit_];
    v51 = v53;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v68);

  v54 = v68;
  v55 = [v68 value];

  if (v55)
  {
    v56 = [objc_opt_self() secondUnit];
    [v55 doubleValueForUnit_];
    v50 = v57;
  }

  v58 = MEMORY[0x20F2E8430](v51, v50);
  if (v58 > 0.0)
  {
    v59 = v58;
    type metadata accessor for TargetZone();
    v60 = swift_allocObject();
    *(v60 + 16) = 1;
    *(v60 + 24) = v59;
    *(v60 + 32) = v59;
    *(v60 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;

    MEMORY[0x20F2E6F30](v61);
    if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v70;
  }

  else
  {
LABEL_75:
  }

  return v9;
}

id LiveWorkoutConfiguration.currentHeartRateTargetZone.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter(&v15);

  if (v17 == 1)
  {

LABEL_4:
    v2 = LiveWorkoutConfiguration.currentActivityType.getter();
    swift_beginAccess();
    v4 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
    v3 = off_27C728570;

    v5 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v4, v3, v2);

    if (!v5 || (specialized HeartRateTargetZone.__allocating_init(dict:)(v5), !v6))
    {
      if (one-time initialization token for defaultZone != -1)
      {
        swift_once();
      }

      v6 = static HeartRateTargetZone.defaultZone;
    }

    v7 = v6;
    goto LABEL_15;
  }

  v8 = v16;
  v14 = v15;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v15);

  v9 = v15;
  v15 = v14;
  v16 = v8;
  v10 = IntervalWorkout.stepForKeyPath(_:)(&v15);

  v11 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v12 = *(v10 + v11);
  if (!v12)
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v12 = static HeartRateTargetZone.defaultZone;
  }

  v7 = v12;

LABEL_15:

  return v7;
}

uint64_t LiveWorkoutConfiguration.isWorkoutBuddyMuted.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  return *(v0 + v1);
}

void LiveWorkoutConfiguration.isWorkoutBuddyMuted.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t LiveWorkoutConfiguration.isWorkoutBuddyFeatureNoLongerAvailable.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  return *(v0 + v1);
}

void LiveWorkoutConfiguration.isWorkoutBuddyFeatureNoLongerAvailable.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t LiveWorkoutConfiguration.isWorkoutBuddyUnavailableDueToHeadphonesOff.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff;
  swift_beginAccess();
  return *(v0 + v1);
}

void LiveWorkoutConfiguration.isWorkoutBuddyUnavailableDueToHeadphonesOff.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t LiveWorkoutConfiguration.multisportAutomaticallySwitchesLegs.getter()
{
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v1 = specialized static MultisportTransitionsStore.read()();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v2);

    return v2;
  }

  return result;
}

BOOL LiveWorkoutConfiguration.isGymKit.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + v5, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = type metadata accessor for UUID();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v7;
}

BOOL LiveWorkoutConfiguration.isCatalogWorkout.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - v3;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, &v8 - v3, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v5 = type metadata accessor for CatalogWorkout();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  return v6;
}

uint64_t LiveWorkoutConfiguration.providerBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!v3)
  {
    return 0;
  }

  swift_beginAccess();
  v4 = *(v3 + 32);

  return v4;
}

double LiveWorkoutConfiguration.videoMetrics.getter()
{
  swift_beginAccess();

  return result;
}

double LiveWorkoutConfiguration.videoMetrics.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double key path setter for LiveWorkoutConfiguration.videoMetrics : LiveWorkoutConfiguration(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

id LiveWorkoutConfiguration.topLevelHKWorkoutConfiguration.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    v2 = objc_allocWithZone(MEMORY[0x277CCDC38]);
    v14 = v1;
    v3 = [v2 init];
    [v3 setActivityType_];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v15);

    v4 = v15[0];
    v5 = v15[0] & 0xFFFFFFFFFFFFFF8;
    if (v15[0] >> 62)
    {
LABEL_20:
      v6 = __CocoaSet.count.getter();
    }

    else
    {
      v6 = *((v15[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = 0;
    while (v6 != v7)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F2E7A20](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v11 = *&v9[v10];
      v12 = [v11 isIndoor];

      ++v7;
      if ((v12 & 1) == 0)
      {

        [v3 setLocationType_];
        goto LABEL_17;
      }
    }

    [v3 setLocationType_];
LABEL_17:

    return v3;
  }

  else
  {

    return LiveWorkoutConfiguration.hkWorkoutConfiguration.getter();
  }
}

id LiveWorkoutConfiguration.hkWorkoutConfiguration.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v70 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v73 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v70 - v15;
  v17 = type metadata accessor for CatalogWorkout();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if (v23)
  {
    type metadata accessor for MultiSportWorkoutConfiguration(0);
    if (swift_dynamicCastClass())
    {
      v72 = v21;
      v24 = v18;
      v25 = v17;
      v26 = v10;
      v27 = v23;
      v28 = [v27 activityType];
      v29 = LiveWorkoutConfiguration.currentActivityType.getter();
      v30 = [v29 effectiveTypeIdentifier];

      if (v28 == v30)
      {
        v10 = v26;
        v17 = v25;
        v18 = v24;
        v21 = v72;
        goto LABEL_7;
      }

      v10 = v26;
      v17 = v25;
      v18 = v24;
      v21 = v72;
    }
  }

  v27 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  v31 = LiveWorkoutConfiguration.currentActivityType.getter();
  v32 = [v31 effectiveTypeIdentifier];

  [v27 setActivityType_];
LABEL_7:
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v16, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v16, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  }

  else
  {
    v71 = v10;
    v72 = v6;
    v33 = *(v18 + 32);
    v70 = v17;
    v33(v21, v16, v17);
    v34 = CatalogWorkout.mediaType.getter();
    v36 = v35;
    v75 = v34;
    v76 = v35;
    v38 = v37 & 1;
    v77 = v37 & 1;
    v74 = 0;
    lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
    lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
    v39 = static PortableEnum<>.== infix(_:_:)();
    outlined consume of PortableEnum<CatalogMediaType>(v34, v36, v38);
    if (v39 & 1) != 0 || (v40 = CatalogWorkout.mediaType.getter(), v42 = v41, v75 = v40, v76 = v41, v44 = v43 & 1, v77 = v43 & 1, v74 = 1, v45 = static PortableEnum<>.== infix(_:_:)(), outlined consume of PortableEnum<CatalogMediaType>(v40, v42, v44), (v45))
    {
      v46 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
      swift_beginAccess();
      v47 = v73;
      _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v46, v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v48 = type metadata accessor for UUID();
      LODWORD(v46) = (*(*(v48 - 8) + 48))(v47, 1, v48);
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v47, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v46 == 1)
      {
        v49 = v27;
        [v49 setLocationType_];
        [v49 setShouldDisambiguateLocation_];
        v50 = CatalogWorkout.identifier.getter();
        v51 = MEMORY[0x20F2E6C00](v50);

        [v49 setFitnessPlusCatalogWorkoutId_];

        (*(v18 + 8))(v21, v70);
        v10 = v71;
        v6 = v72;
        goto LABEL_18;
      }
    }

    (*(v18 + 8))(v21, v70);
    v10 = v71;
    v6 = v72;
  }

  v52 = LiveWorkoutConfiguration.currentActivityType.getter();
  v53 = [v52 isIndoor];

  if (v53)
  {
    v54 = 2;
  }

  else
  {
    v54 = 3;
  }

  [v27 setLocationType_];
  v55 = v27;
LABEL_18:
  v56 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v56, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v57 = type metadata accessor for UUID();
  v58 = *(v57 - 8);
  v59 = *(v58 + 48);
  isa = 0;
  if (v59(v10, 1, v57) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v58 + 8))(v10, v57);
  }

  [v27 setFitnessMachineSessionUUID_];

  v61 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v61, v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v62 = 0;
  if (v59(v6, 1, v57) != 1)
  {
    v62 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v58 + 8))(v6, v57);
  }

  [v27 setPredictionSessionUUID_];

  [v27 setShouldUseExtendedMode_];
  v63 = LiveWorkoutConfiguration.currentActivityType.getter();
  v64 = [v63 identifier];

  if (v64 == 46)
  {
    v65 = LiveWorkoutConfiguration.currentActivityType.getter();
    v66 = [v65 swimmingLocationType];

    [v27 setSwimmingLocationType_];
    v67 = LiveWorkoutConfiguration.currentActivityType.getter();
    v68 = [v67 lapLength];

    if (v68)
    {
      [v27 setLapLength_];
    }
  }

  return v27;
}

uint64_t LiveWorkoutConfiguration.isLowPowerMode.getter()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 isLowPowerModeEnabled];

  if (v2)
  {
    return 1;
  }

  else
  {
    return [*(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor) isPowerSavingModeEnabled];
  }
}

unint64_t LiveWorkoutConfiguration.hkWorkoutConfigurationMetadata.getter()
{
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD000000000000015;
    v1 = inited + 32;
    *(inited + 40) = 0x800000020B458830;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v10);

    v2 = v10;
    *(inited + 72) = MEMORY[0x277D83B88];
    *(inited + 48) = v2;
    goto LABEL_3;
  }

  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v10);

    if (v12)
    {
      return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v6 = v11;
    v9 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD000000000000015;
    v1 = inited + 32;
    *(inited + 40) = 0x800000020B45D360;
    v10 = v9;
    v11 = v6;
    v7 = IntervalWorkoutKeyPath.serializedString.getter();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v7;
    *(inited + 56) = v8;
LABEL_3:
    v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v1, &_sSS_yptMd, &_sSS_yptMR);
    return v3;
  }

  v5 = MEMORY[0x277D84F90];

  return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v5);
}

uint64_t LiveWorkoutConfiguration.usePrecisionStart.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  return specialized static PrecisionStartChecker.usePrecisionStart(startSource:domainAccessor:)(*(v0 + v1), *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor)) & 1;
}

unint64_t @objc LiveWorkoutConfiguration.supportsTimeSplits.getter(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = LiveWorkoutConfiguration.currentActivityType.getter();
  v6 = [v5 *a3];

  if (v6)
  {
    type metadata accessor for IntervalWorkoutConfiguration(0);
    v6 = swift_dynamicCastClass() == 0;
  }

  return v6;
}

BOOL LiveWorkoutConfiguration.supportsTimeSplits.getter(SEL *a1)
{
  v2 = LiveWorkoutConfiguration.currentActivityType.getter();
  LODWORD(a1) = [v2 *a1];

  if (!a1)
  {
    return 0;
  }

  type metadata accessor for IntervalWorkoutConfiguration(0);
  return swift_dynamicCastClass() == 0;
}

BOOL LiveWorkoutConfiguration.isMirroredStart.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  return (*(v0 + v1) - 19) < 2;
}

uint64_t LiveWorkoutConfiguration.supportsMirroring.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v20[-v3];
  v5 = type metadata accessor for CatalogWorkout();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  if ((*(v0 + v10) - 19) < 2)
  {
    return 1;
  }

  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  }

  else
  {
    v12 = v0;
    (*(v6 + 32))(v9, v4, v5);
    v13 = CatalogWorkout.mediaType.getter();
    v15 = v14;
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    if (v17)
    {
      return 0;
    }

    outlined consume of PortableEnum<CatalogMediaType>(v13, v15, 0);
    v0 = v12;
  }

  v18 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  if (specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)())
  {
    return 0;
  }

  v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if ([*(v18 + v19) supportsMirroredWorkouts])
  {
    return FIMirrorModeEnabled();
  }

  type metadata accessor for MultiSportWorkoutConfiguration(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    return FIMirrorModeEnabled();
  }

  return result;
}

uint64_t LiveWorkoutConfiguration.supportsMirroringLogString.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v45[-v4];
  v6 = type metadata accessor for CatalogWorkout();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v46 = 0;
  v47 = 0xE000000000000000;
  _StringGuts.grow(_:)(209);
  v48 = v46;
  v49 = v47;
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45E130);
  v11 = LiveWorkoutConfiguration.supportsMirroring.getter();
  v12 = (v11 & 1) == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v13, v14);

  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45E150);
  v15 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v16 = *(v1 + v15) - 19;
  if (v16 >= 2)
  {
    v17 = 0x65736C6166;
  }

  else
  {
    v17 = 1702195828;
  }

  if (v16 >= 2)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v17, v18);

  MEMORY[0x20F2E6D80](0xD000000000000026, 0x800000020B45E170);
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v5, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v5, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v19 = CatalogWorkout.mediaType.getter();
    v21 = v20;
    v23 = v22;
    (*(v7 + 8))(v10, v6);
    if (v23)
    {
      v24 = 0xE500000000000000;
      v25 = 0x65736C6166;
      goto LABEL_19;
    }

    outlined consume of PortableEnum<CatalogMediaType>(v19, v21, 0);
  }

  v24 = 0xE400000000000000;
  v25 = 1702195828;
LABEL_19:
  MEMORY[0x20F2E6D80](v25, v24);

  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45E1A0);
  v26 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v27 = specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)();
  v28 = (v27 & 1) == 0;
  if (v27)
  {
    v29 = 0x65736C6166;
  }

  else
  {
    v29 = 1702195828;
  }

  if (v28)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v29, v30);

  MEMORY[0x20F2E6D80](0xD000000000000035, 0x800000020B45E1C0);
  v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v32 = [*(v26 + v31) supportsMirroredWorkouts];
  v33 = v32 == 0;
  if (v32)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v33)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v34, v35);

  MEMORY[0x20F2E6D80](0xD000000000000012, 0x800000020B45E200);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  v36 = swift_dynamicCastClass();
  v37 = v36 == 0;
  if (v36)
  {
    v38 = 1702195828;
  }

  else
  {
    v38 = 0x65736C6166;
  }

  if (v37)
  {
    v39 = 0xE500000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v38, v39);

  MEMORY[0x20F2E6D80](0xD00000000000001BLL, 0x800000020B45E220);
  v40 = FIMirrorModeEnabled();
  v41 = v40 == 0;
  if (v40)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE500000000000000;
  }

  else
  {
    v43 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v42, v43);

  MEMORY[0x20F2E6D80](10537, 0xE200000000000000);
  return v48;
}

uint64_t LiveWorkoutConfiguration.supportsMirroredCatalogWorkouts.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16 - v3;
  v5 = type metadata accessor for CatalogWorkout();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v10 = CatalogWorkout.mediaType.getter();
    v12 = v11;
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    if (v14)
    {
      return 0;
    }

    outlined consume of PortableEnum<CatalogMediaType>(v10, v12, 0);
  }

  return 1;
}

id LiveWorkoutConfiguration.supportsWorkoutVoiceMotivation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v12 - v3;
  type metadata accessor for RaceWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for PacerWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v5 = type metadata accessor for CatalogWorkout();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5);
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if (v6 != 1)
  {
    return 0;
  }

  v7 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  result = NLWorkoutStartSourceSupportsWorkoutVoiceMotivation(*(v0 + v7));
  if (result)
  {
    v9 = LiveWorkoutConfiguration.currentActivityType.getter();
    v10 = [v9 workoutActivityType];

    v11 = [v10 supportsWorkoutVoiceMotivation];
    return v11;
  }

  return result;
}

Swift::Bool __swiftcall LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)(Swift::Bool shouldLog)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v45 - v6 + 16;
  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.workoutVoice);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46[0] = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v46);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20AEA4000, v9, v10, "%s: configureWithWorkoutVoiceMotivation returning false due to in store demo mode", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    goto LABEL_24;
  }

  v16 = type metadata accessor for FitnessIntelligenceFeatures();
  v46[3] = v16;
  v46[4] = lazy protocol witness table accessor for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(*(v16 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D09F48], v16);
  v18 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_7(v46);
  v19 = LiveWorkoutConfiguration.currentActivityType.getter();
  v20 = [v19 workoutActivityType];

  v21 = FIIsWorkoutVoiceEnabledForActivityType();
  type metadata accessor for RaceWorkoutConfiguration(0);
  if (swift_dynamicCastClass() || (type metadata accessor for PacerWorkoutConfiguration(0), swift_dynamicCastClass()) || (type metadata accessor for IntervalWorkoutConfiguration(0), swift_dynamicCastClass()) || (type metadata accessor for MultiSportWorkoutConfiguration(0), swift_dynamicCastClass()) || (_s11SeymourCore14CatalogWorkoutVSgWOcTm_0(&v2[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout], v7, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR), v22 = type metadata accessor for CatalogWorkout(), v23 = (*(*(v22 - 8) + 48))(v7, 1, v22), _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v7, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR), v23 != 1) || (v24 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource, swift_beginAccess(), !NLWorkoutStartSourceSupportsWorkoutVoiceMotivation(*&v2[v24])))
  {
    v27 = 0;
    v28 = 0;
    if (!shouldLog)
    {
      return v28 & 1;
    }

    goto LABEL_16;
  }

  v25 = LiveWorkoutConfiguration.currentActivityType.getter();
  v26 = [v25 workoutActivityType];

  v27 = [v26 supportsWorkoutVoiceMotivation];
  if (shouldLog)
  {
LABEL_16:
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static WOLog.workoutVoice);
    v30 = v2;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      HIDWORD(v44) = v21;
      v35 = v18;
      v36 = v34;
      v45[0] = v34;
      *v33 = 136316418;
      v37 = _typeName(_:qualified:)();
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, v45);

      *(v33 + 4) = v39;
      *(v33 + 12) = 1024;
      *(v33 + 14) = v35 & 1;
      *(v33 + 18) = 1024;
      *(v33 + 20) = v27;
      *(v33 + 24) = 1024;
      *(v33 + 26) = HIDWORD(v44);
      *(v33 + 30) = 1024;
      LODWORD(v39) = v30[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported];

      *(v33 + 32) = v39;
      *(v33 + 36) = 1024;
      v40 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
      swift_beginAccess();
      LODWORD(v40) = v30[v40];

      *(v33 + 38) = v40;
      _os_log_impl(&dword_20AEA4000, v31, v32, "%s: configureWithWorkoutVoiceMotivation isFeatureEnabled:%{BOOL}d, supportsWorkoutVoiceMotivation: %{BOOL}d, activityTypeIsEnabled:%{BOOL}d, isFeatureSupported: %{BOOL}d, isWorkoutBuddyFeatureNoLongerAvailable: %{BOOL}d", v33, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1Tm_7(v36);
      v41 = v36;
      v18 = v35;
      v21 = HIDWORD(v44);
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v33, -1, -1);
    }

    else
    {
    }
  }

  if ((v18 & v27 & v21 & 1) == 0 || v2[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported] != 1)
  {
LABEL_24:
    v28 = 0;
    return v28 & 1;
  }

  v42 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  v28 = v2[v42] ^ 1;
  return v28 & 1;
}

id LiveWorkoutConfiguration.supportsCustomRouteAlerts.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for RaceWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  return [*(v1 + v3) supportsCustomRouteAlerts];
}

uint64_t LiveWorkoutConfiguration.canDisplayBlockRepeatIndicator.getter()
{
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    v0 = LiveWorkoutConfiguration.currentActivityType.getter();
    if ([v0 isPoolSwimming])
    {

      v1 = 1;
    }

    else
    {
      v3[3] = &type metadata for WorkoutFeatures;
      v3[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      LOBYTE(v3[0]) = 9;
      v1 = isFeatureEnabled(_:)();

      __swift_destroy_boxed_opaque_existential_1Tm_7(v3);
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t LiveWorkoutConfiguration.canDisplayTrackLaneIndicator.getter()
{
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    v0 = LiveWorkoutConfiguration.currentActivityType.getter();
    if ([v0 isPoolSwimming])
    {

      v1 = 0;
    }

    else
    {
      v4[3] = &type metadata for WorkoutFeatures;
      v4[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
      LOBYTE(v4[0]) = 9;
      v2 = isFeatureEnabled(_:)();

      __swift_destroy_boxed_opaque_existential_1Tm_7(v4);
      v1 = v2 ^ 1;
    }
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

void LiveWorkoutConfiguration.currentIntervalBlockRepeatCount.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.getter(v13);

  if (v14 != 1)
  {
    v5 = v13[0];
    v6 = v13[1];
    v7 = v13[2];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v13);

    if ((v5 & 0x8000000000000000) == 0 && (v6 & 0x8000000000000000) == 0 && (v7 & 0x8000000000000000) == 0)
    {
      v8 = v13[0];
      v9 = IntervalWorkout.blocks.getter();
      v10 = v9 >> 62 ? __CocoaSet.count.getter() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v5 < v10)
      {
        v11 = IntervalWorkout.blocks.getter();
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F2E7A20](v5, v11);
          goto LABEL_12;
        }

        if (v5 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {

LABEL_12:

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v13);

          if (v13[0] != 1)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter(v13);

            v12 = v13[0];
            *a1 = v6;
            *(a1 + 8) = v12;
            *(a1 + 16) = 0;
            return;
          }

          goto LABEL_14;
        }

        __break(1u);
      }
    }

    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000020B457060, "WorkoutCore/IntervalWorkout.swift", 33, 2, 274, 0);
    __break(1u);
    return;
  }

LABEL_14:

LABEL_15:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t LiveWorkoutConfiguration.startTrackingWhenMetricsDisplay.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v16[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + v9, v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = type metadata accessor for UUID();
  LODWORD(v9) = (*(*(v10 - 8) + 48))(v8, 1, v10);
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v9 == 1 && (_s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR), v11 = type metadata accessor for CatalogWorkout(), v12 = (*(*(v11 - 8) + 48))(v4, 1, v11), _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR), v12 == 1))
  {
    v13 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
    swift_beginAccess();
    v14 = specialized static PrecisionStartChecker.usePrecisionStart(startSource:domainAccessor:)(*(v0 + v13), *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor)) ^ 1;
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t LiveWorkoutConfiguration.shouldHideMetricsUntilFirstAlert.getter()
{
  type metadata accessor for IntervalWorkoutConfiguration(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v2 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
    swift_beginAccess();
    v3 = *(v0 + v2);
    if (v3 == 10 || (specialized static PrecisionStartChecker.usePrecisionStart(startSource:domainAccessor:)(v3, *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor)) & 1) != 0)
    {
      return 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v10);

    v4 = v10[0];
    v5 = v10[1];
    v6 = v10[2];
    if (one-time initialization token for InitialState == -1)
    {
      if (v11)
      {
        return 0;
      }
    }

    else
    {
      v9 = v11;
      swift_once();
      if (v9)
      {
        return 0;
      }
    }

    return v4 == static IntervalWorkoutKeyPath.InitialState && v5 == *(&static IntervalWorkoutKeyPath.InitialState + 1) && v6 == qword_27C729E28;
  }

  return result;
}

uint64_t LiveWorkoutConfiguration.safetyCheckInWillDismissCounter.getter()
{
  v1 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter;
  swift_beginAccess();
  return *(v0 + v1);
}

void LiveWorkoutConfiguration.safetyCheckInWillDismissCounter.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

char *LiveWorkoutConfiguration.__allocating_init(configuration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:domainAccessor:hostPlatform:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v78 = a8;
  v79 = a6;
  v82 = a5;
  v83 = a7;
  v80 = a1;
  v81 = a4;
  v76 = a2;
  v77 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v69 = &v64 - v14;
  v15 = type metadata accessor for UUID();
  v85 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v67 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v18);
  v20 = &v64 - v19;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v21);
  v23 = &v64 - v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  v24 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v25);
  v27 = &v64 - v26;
  v84 = v8;
  v28 = objc_allocWithZone(v8);
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted) = 0;
  v29 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  v30 = type metadata accessor for Date();
  v31 = *(*(v30 - 8) + 56);
  v31(v28 + v29, 1, 1, v30);
  v31(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_dateUserRequestedToStartWorkout, 1, 1, v30);
  v32 = v85 + 56;
  v33 = *(v85 + 56);
  v33(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID, 1, 1, v15);
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource) = 0;
  v34 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  v70 = v15;
  v66 = v32;
  v65 = v33;
  v33(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID, 1, 1, v15);
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration) = 0;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration) = 0;
  v35 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  if (one-time initialization token for InitialState != -1)
  {
    swift_once();
  }

  v87 = static IntervalWorkoutKeyPath.InitialState;
  v88 = qword_27C729E28;
  v89 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
  Published.init(initialValue:)();
  (*(v24 + 32))(v28 + v35, v27, v71);
  v36 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentMultiSportLeg;
  *&v87 = 0;
  Published.init(initialValue:)();
  (*(v72 + 32))(v28 + v36, v23, v73);
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted) = 0;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable) = 0;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff) = 0;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics) = 0;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter) = 0;
  v37 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  LOBYTE(v87) = 0;
  Published.init(initialValue:)();
  v38 = *(v74 + 32);
  v39 = v75;
  v38(v28 + v37, v20, v75);
  v40 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  LOBYTE(v87) = 0;
  Published.init(initialValue:)();
  v38(v28 + v40, v20, v39);
  v42 = v80;
  v41 = v81;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration) = v80;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource) = v76;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform) = v78 & 1;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode) = v77;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityPausedRingsObserver) = v41;
  v43 = v82;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v82, v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor) = v83;
  *(v28 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported) = v79 & 1;
  v44 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v45 = *&v42[v44];
  v46 = v42;
  v47 = v41;
  swift_unknownObjectRetain();
  v48 = [v45 metadata];
  v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v49 + 16))
  {

    goto LABEL_9;
  }

  v81 = v34;
  v52 = specialized __RawDictionaryStorage.find<A>(_:)(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  outlined init with copy of Any(*(v49 + 56) + 32 * v52, &v87);

  if (swift_dynamicCast())
  {
    v55 = v69;
    UUID.init(uuidString:)();

    v56 = v85;
    v57 = v70;
    if ((*(v85 + 48))(v55, 1, v70) == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v60 = *(v56 + 32);
      v61 = v67;
      v60(v67, v55, v57);
      v62 = v68;
      v60(v68, v61, v57);
      v65(v62, 0, 1, v57);
      v63 = v81;
      swift_beginAccess();
      _s10Foundation4DateVSgWOdTm_0(v62, &v63[v28], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      swift_endAccess();
    }
  }

LABEL_10:
  v86.receiver = v28;
  v86.super_class = v84;
  v58 = objc_msgSendSuper2(&v86, sel_init);

  swift_unknownObjectRelease();
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v43, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  return v58;
}

char *LiveWorkoutConfiguration.init(configuration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:domainAccessor:hostPlatform:)(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v9 = v8;
  v79 = a8;
  v80 = a6;
  v83 = a5;
  v84 = a7;
  v81 = a1;
  v82 = a4;
  v77 = a2;
  v78 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v69 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v70 = &v64 - v15;
  v16 = type metadata accessor for UUID();
  v85 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v68 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v19);
  v21 = &v64 - v20;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v22);
  v24 = &v64 - v23;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  v25 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v26);
  v28 = &v64 - v27;
  v8[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted] = 0;
  v29 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  v30 = type metadata accessor for Date();
  v31 = *(*(v30 - 8) + 56);
  v31(&v9[v29], 1, 1, v30);
  v31(&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_dateUserRequestedToStartWorkout], 1, 1, v30);
  v32 = v85 + 56;
  v33 = *(v85 + 56);
  v33(&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID], 1, 1, v16);
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource] = 0;
  v67 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  v71 = v16;
  v66 = v32;
  v65 = v33;
  v33(&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID], 1, 1, v16);
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration] = 0;
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration] = 0;
  v34 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  if (one-time initialization token for InitialState != -1)
  {
    swift_once();
  }

  v87 = static IntervalWorkoutKeyPath.InitialState;
  v88 = qword_27C729E28;
  v89 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
  Published.init(initialValue:)();
  (*(v25 + 32))(&v9[v34], v28, v72);
  v35 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentMultiSportLeg;
  *&v87 = 0;
  Published.init(initialValue:)();
  (*(v73 + 32))(&v9[v35], v24, v74);
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted] = 0;
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable] = 0;
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff] = 0;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics] = 0;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter] = 0;
  v36 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  LOBYTE(v87) = 0;
  Published.init(initialValue:)();
  v37 = *(v75 + 32);
  v38 = v76;
  v37(&v9[v36], v21, v76);
  v39 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  LOBYTE(v87) = 0;
  Published.init(initialValue:)();
  v37(&v9[v39], v21, v38);
  v41 = v81;
  v40 = v82;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration] = v81;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource] = v77;
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform] = v79 & 1;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode] = v78;
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityPausedRingsObserver] = v40;
  v42 = v83;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v83, &v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout], &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  *&v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor] = v84;
  v9[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported] = v80 & 1;
  v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v44 = *&v41[v43];
  v45 = v41;
  v46 = v40;
  swift_unknownObjectRetain();
  v47 = [v44 metadata];
  v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v48 + 16))
  {

    goto LABEL_9;
  }

  v51 = specialized __RawDictionaryStorage.find<A>(_:)(v49, v50);
  v53 = v52;

  if ((v53 & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  outlined init with copy of Any(*(v48 + 56) + 32 * v51, &v87);

  if (swift_dynamicCast())
  {
    v54 = v70;
    UUID.init(uuidString:)();

    v55 = v85;
    v56 = v71;
    if ((*(v85 + 48))(v54, 1, v71) == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v60 = *(v55 + 32);
      v61 = v68;
      v60(v68, v54, v56);
      v62 = v69;
      v60(v69, v61, v56);
      v65(v62, 0, 1, v56);
      v63 = v67;
      swift_beginAccess();
      _s10Foundation4DateVSgWOdTm_0(v62, &v9[v63], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      swift_endAccess();
    }
  }

LABEL_10:
  v57 = type metadata accessor for LiveWorkoutConfiguration(0);
  v86.receiver = v9;
  v86.super_class = v57;
  v58 = objc_msgSendSuper2(&v86, sel_init);

  swift_unknownObjectRelease();
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v42, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  return v58;
}

char *LiveWorkoutConfiguration.__allocating_init(configuration:startSource:activityBeginDate:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:)(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, int a6)
{
  v85 = a6;
  v88 = a4;
  v90 = a3;
  v84 = a2;
  v87 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v76 = v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v77 = v74 - v12;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v75 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v17);
  v19 = v74 - v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v20);
  v22 = v74 - v21;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  v23 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v24);
  v26 = v74 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = v74 - v29;
  v80 = FIActivityMoveModeUserDefault();
  v89 = a5;
  v91 = v30;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(a5, v30, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v92 = v14;
  v93 = v13;
  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v31 = static WorkoutCoreInjector.npsDomainAccessor;
  v86 = type metadata accessor for LiveWorkoutConfiguration(0);
  v32 = objc_allocWithZone(v86);
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted) = 0;
  v33 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  v34 = type metadata accessor for Date();
  v35 = *(*(v34 - 8) + 56);
  v35(v32 + v33, 1, 1, v34);
  v35(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_dateUserRequestedToStartWorkout, 1, 1, v34);
  v36 = v93;
  v37 = v92 + 56;
  v38 = *(v92 + 56);
  v38(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID, 1, 1, v93);
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource) = 0;
  v39 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  v74[1] = v37;
  v74[0] = v38;
  v38(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID, 1, 1, v36);
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration) = 0;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration) = 0;
  v40 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  v41 = one-time initialization token for InitialState;
  v42 = v31;
  if (v41 != -1)
  {
    swift_once();
  }

  v95 = static IntervalWorkoutKeyPath.InitialState;
  v96 = qword_27C729E28;
  v97 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
  Published.init(initialValue:)();
  (*(v23 + 32))(v32 + v40, v26, v78);
  v43 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentMultiSportLeg;
  *&v95 = 0;
  Published.init(initialValue:)();
  (*(v79 + 32))(v32 + v43, v22, v81);
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted) = 0;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable) = 0;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff) = 0;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics) = 0;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter) = 0;
  v44 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  LOBYTE(v95) = 0;
  Published.init(initialValue:)();
  v45 = *(v82 + 32);
  v46 = v83;
  v45(v32 + v44, v19, v83);
  v47 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  LOBYTE(v95) = 0;
  Published.init(initialValue:)();
  v45(v32 + v47, v19, v46);
  v48 = v87;
  v49 = v88;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration) = v87;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource) = v84;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform) = 0;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode) = v80;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityPausedRingsObserver) = v49;
  v50 = v91;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v91, v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor) = v42;
  *(v32 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported) = v85 & 1;
  v51 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v52 = *&v48[v51];
  v53 = v42;
  v54 = v48;
  v55 = v49;
  v56 = [v52 metadata];
  v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v57 + 16))
  {

    goto LABEL_14;
  }

  v88 = v39;
  v60 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  outlined init with copy of Any(*(v57 + 56) + 32 * v60, &v95);

  if (swift_dynamicCast())
  {
    v63 = v77;
    UUID.init(uuidString:)();

    v65 = v92;
    v64 = v93;
    if ((*(v92 + 48))(v63, 1, v93) == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v70 = *(v65 + 32);
      v71 = v75;
      v70(v75, v63, v64);
      v72 = v76;
      v70(v76, v71, v64);
      (v74[0])(v72, 0, 1, v64);
      v73 = v88;
      swift_beginAccess();
      _s10Foundation4DateVSgWOdTm_0(v72, &v73[v32], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      swift_endAccess();
    }

    v50 = v91;
  }

LABEL_15:
  v94.receiver = v32;
  v94.super_class = v86;
  v66 = objc_msgSendSuper2(&v94, sel_init);

  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v89, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v50, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v67 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  swift_beginAccess();
  v68 = v66;
  _s10Foundation4DateVSgWOdTm_0(v90, &v66[v67], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();

  return v68;
}

char *LiveWorkoutConfiguration.__allocating_init(configuration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:)(char *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, int a6)
{
  v7 = v6;
  v90 = a6;
  v92 = a4;
  v89 = a3;
  v88 = a2;
  v91 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v81 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v80 = &v77 - v14;
  v15 = type metadata accessor for UUID();
  v95 = *(v15 - 8);
  v96 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v79 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v18);
  v20 = &v77 - v19;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v21);
  v23 = &v77 - v22;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  v24 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v25);
  v27 = &v77 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v77 - v30;
  v93 = objc_allocWithZone(v7);
  if (a5)
  {
    v32 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
    v33 = type metadata accessor for CatalogWorkout();
    v34 = *(v33 - 8);
    (*(v34 + 16))(v31, &a5[v32], v33);
    (*(v34 + 56))(v31, 0, 1, v33);
  }

  else
  {
    v35 = type metadata accessor for CatalogWorkout();
    (*(*(v35 - 8) + 56))(v31, 1, 1, v35);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v97 = v31;
  v94 = a5;
  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v36 = static WorkoutCoreInjector.npsDomainAccessor;
  v87 = type metadata accessor for LiveWorkoutConfiguration(0);
  v37 = objc_allocWithZone(v87);
  v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted] = 0;
  v38 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  v39 = type metadata accessor for Date();
  v40 = *(*(v39 - 8) + 56);
  v40(&v37[v38], 1, 1, v39);
  v40(&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_dateUserRequestedToStartWorkout], 1, 1, v39);
  v41 = v96;
  v42 = *(v95 + 56);
  v42(&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID], 1, 1, v96);
  *&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource] = 0;
  v78 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  v77 = v42;
  v42(&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID], 1, 1, v41);
  *&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration] = 0;
  v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration] = 0;
  v43 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  v44 = one-time initialization token for InitialState;
  v45 = v36;
  if (v44 != -1)
  {
    swift_once();
  }

  v99 = static IntervalWorkoutKeyPath.InitialState;
  v100 = qword_27C729E28;
  v101 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
  Published.init(initialValue:)();
  (*(v24 + 32))(&v37[v43], v27, v82);
  v46 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentMultiSportLeg;
  *&v99 = 0;
  Published.init(initialValue:)();
  (*(v83 + 32))(&v37[v46], v23, v84);
  v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted] = 0;
  v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable] = 0;
  v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff] = 0;
  *&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics] = 0;
  *&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter] = 0;
  v47 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  LOBYTE(v99) = 0;
  Published.init(initialValue:)();
  v48 = *(v85 + 32);
  v49 = v86;
  v48(&v37[v47], v20, v86);
  v50 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  LOBYTE(v99) = 0;
  Published.init(initialValue:)();
  v48(&v37[v50], v20, v49);
  v51 = v91;
  v52 = v92;
  *&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration] = v91;
  *&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource] = v88;
  v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform] = 0;
  *&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode] = v89;
  *&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityPausedRingsObserver] = v52;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v97, &v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout], &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  *&v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor] = v45;
  v37[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported] = v90 & 1;
  v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v54 = *&v51[v53];
  v55 = v45;
  v56 = v51;
  v57 = v52;
  v58 = [v54 metadata];
  v59 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v59 + 16))
  {

    goto LABEL_17;
  }

  v62 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
  v64 = v63;

  if ((v64 & 1) == 0)
  {
LABEL_17:

    v70 = v97;
    v69 = v94;
    goto LABEL_18;
  }

  outlined init with copy of Any(*(v59 + 56) + 32 * v62, &v99);

  if (swift_dynamicCast())
  {
    v65 = v80;
    UUID.init(uuidString:)();

    v67 = v95;
    v66 = v96;
    v68 = (*(v95 + 48))(v65, 1, v96);
    v69 = v94;
    if (v68 == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v73 = *(v67 + 32);
      v74 = v79;
      v73(v79, v65, v66);
      v73(v81, v74, v66);
      v75 = v81;
      v77(v81, 0, 1, v66);
      v76 = v78;
      swift_beginAccess();
      _s10Foundation4DateVSgWOdTm_0(v75, &v37[v76], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      swift_endAccess();
    }

    v70 = v97;
  }

  else
  {
    v69 = v94;
    v70 = v97;
  }

LABEL_18:
  v98.receiver = v37;
  v98.super_class = v87;
  v71 = objc_msgSendSuper2(&v98, sel_init);

  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v70, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v71;
}

char *LiveWorkoutConfiguration.init(configuration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:)(char *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, int a6)
{
  v86 = a6;
  v88 = a4;
  v85 = a3;
  v84 = a2;
  v87 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v76 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v77 = &v73 - v12;
  v13 = type metadata accessor for UUID();
  v90 = *(v13 - 8);
  v91 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v75 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v16);
  v18 = &v73 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v19);
  v21 = &v73 - v20;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMd, &_s7Combine9PublishedVy11WorkoutCore08IntervalC7KeyPathVSgGMR);
  v22 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v23);
  v25 = &v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = &v73 - v28;
  if (a5)
  {
    v30 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
    v31 = type metadata accessor for CatalogWorkout();
    v32 = *(v31 - 8);
    (*(v32 + 16))(v29, &a5[v30], v31);
    (*(v32 + 56))(v29, 0, 1, v31);
  }

  else
  {
    v33 = type metadata accessor for CatalogWorkout();
    (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v92 = v29;
  v89 = a5;
  if (one-time initialization token for npsDomainAccessor != -1)
  {
    swift_once();
  }

  v34 = static WorkoutCoreInjector.npsDomainAccessor;
  v83 = type metadata accessor for LiveWorkoutConfiguration(0);
  v35 = objc_allocWithZone(v83);
  v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_mirroredStartInterrupted] = 0;
  v36 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  v37 = type metadata accessor for Date();
  v38 = *(*(v37 - 8) + 56);
  v38(&v35[v36], 1, 1, v37);
  v38(&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_dateUserRequestedToStartWorkout], 1, 1, v37);
  v39 = v91;
  v40 = *(v90 + 56);
  v40(&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID], 1, 1, v91);
  *&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSeymourStartSource] = 0;
  v74 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  v73 = v40;
  v40(&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID], 1, 1, v39);
  *&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration] = 0;
  v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_requiresGoalConfiguration] = 0;
  v41 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentIntervalWorkoutKeyPath;
  v42 = one-time initialization token for InitialState;
  v43 = v34;
  if (v42 != -1)
  {
    swift_once();
  }

  v94 = static IntervalWorkoutKeyPath.InitialState;
  v95 = qword_27C729E28;
  v96 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
  Published.init(initialValue:)();
  (*(v22 + 32))(&v35[v41], v25, v78);
  v44 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__currentMultiSportLeg;
  *&v94 = 0;
  Published.init(initialValue:)();
  (*(v79 + 32))(&v35[v44], v21, v80);
  v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted] = 0;
  v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable] = 0;
  v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff] = 0;
  *&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_videoMetrics] = 0;
  *&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_safetyCheckInWillDismissCounter] = 0;
  v45 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  LOBYTE(v94) = 0;
  Published.init(initialValue:)();
  v46 = *(v81 + 32);
  v47 = v82;
  v46(&v35[v45], v18, v82);
  v48 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  LOBYTE(v94) = 0;
  Published.init(initialValue:)();
  v46(&v35[v48], v18, v47);
  v49 = v87;
  v50 = v88;
  *&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration] = v87;
  *&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource] = v84;
  v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform] = 0;
  *&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode] = v85;
  *&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityPausedRingsObserver] = v50;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v92, &v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout], &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  *&v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor] = v43;
  v35[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureSupported] = v86 & 1;
  v51 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v52 = *&v49[v51];
  v53 = v43;
  v54 = v49;
  v55 = v50;
  v56 = [v52 metadata];
  v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v57 + 16))
  {

    goto LABEL_16;
  }

  v60 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
  v62 = v61;

  if ((v62 & 1) == 0)
  {
LABEL_16:

    goto LABEL_17;
  }

  outlined init with copy of Any(*(v57 + 56) + 32 * v60, &v94);

  if (swift_dynamicCast())
  {
    v63 = v77;
    UUID.init(uuidString:)();

    v65 = v90;
    v64 = v91;
    if ((*(v90 + 48))(v63, 1, v91) == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v63, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v69 = *(v65 + 32);
      v70 = v75;
      v69(v75, v63, v64);
      v71 = v76;
      v69(v76, v70, v64);
      v73(v71, 0, 1, v64);
      v72 = v74;
      swift_beginAccess();
      _s10Foundation4DateVSgWOdTm_0(v71, &v35[v72], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      swift_endAccess();
    }
  }

LABEL_17:
  v66 = v92;
  v93.receiver = v35;
  v93.super_class = v83;
  v67 = objc_msgSendSuper2(&v93, sel_init);

  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v66, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v67;
}

Swift::Bool __swiftcall LiveWorkoutConfiguration.moveToNextStep()()
{
  v1 = *&v0[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter(&v15);

    if (v17 != 1)
    {
      v4 = v16;
      v10 = v15;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v15);

      v5 = v15;
      v12 = v10;
      v13 = v4;
      v18.block = &v12;
      IntervalWorkout.nextKeyPath(currentKeyPath:)(v18);

      v11 = v15;
      v6 = v16;
      v7 = v17;
      swift_getKeyPath();
      swift_getKeyPath();
      v12 = v11;
      v13 = v6;
      v14 = v7;
      v8 = v0;
      static Published.subscript.setter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v15);

      v3 = v17 ^ 1;
      return v3 & 1;
    }
  }

  v3 = 0;
  return v3 & 1;
}

Swift::Bool __swiftcall LiveWorkoutConfiguration.isLastIntervalWorkoutKeyPath()()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    static Published.subscript.getter(&v8);

    if (v10 != 1)
    {
      v4 = v9;
      v7 = v8;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v8);

      v5 = v8;
      v8 = v7;
      v9 = v4;
      v11.block = &v8;
      v3 = IntervalWorkout.isLastKeyPath(currentKeyPath:)(v11);

      return v3;
    }
  }

  return 0;
}

Swift::Bool __swiftcall LiveWorkoutConfiguration.isLastMultiSportLeg()()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    static Published.subscript.getter(&v7);

    v4 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v7);

    if (v7 >> 62)
    {
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v5, 1))
    {
      __break(1u);
    }

    else
    {
      LOBYTE(v2) = v4 == v5 - 1;
    }
  }

  return v2;
}

Swift::Void __swiftcall LiveWorkoutConfiguration.advanceMultisportLeg(suggestedConfiguration:)(HKWorkoutConfiguration_optional suggestedConfiguration)
{
  v2 = v1;
  isa = suggestedConfiguration.value.super.isa;
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = isa;
  v6 = isa;

  swift_getKeyPath();
  swift_getKeyPath();
  v7 = static Published.subscript.modify();
  if (__OFADD__(*v8, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v8;
    v7(v9, 0);
  }
}

Swift::Void __swiftcall LiveWorkoutConfiguration.restoreMultisportLeg(_:)(Swift::Int a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
}

double @objc LiveWorkoutConfiguration.currentMultiSportLeg.setter(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  static Published.subscript.setter();
  return result;
}

Swift::Void __swiftcall LiveWorkoutConfiguration.restoreFromWorkoutActivityMetadata(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    if (*(a1._rawValue + 2))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000020B45D360);
      if (v5)
      {
        outlined init with copy of Any(*(a1._rawValue + 7) + 32 * v4, &v10);
        if (swift_dynamicCast())
        {
          IntervalWorkoutKeyPath.init(serializedString:)(v9);
          if (v12 != 1)
          {
            v6 = v11;
            v8 = v10;
            swift_getKeyPath();
            swift_getKeyPath();
            v10 = v8;
            v11 = v6;
            v12 = 0;
            v7 = v2;
            static Published.subscript.setter();
          }
        }
      }
    }
  }
}

uint64_t LiveWorkoutConfiguration.supportsSegments.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v17 - v3;
  v5 = LiveWorkoutConfiguration.currentActivityType.getter();
  v6 = [v5 supportsSegments];

  if (v6)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
    v7 = type metadata accessor for CatalogWorkout();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v4, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
      v9 = 1;
    }

    else
    {
      v10 = CatalogWorkout.mediaType.getter();
      v12 = v11;
      v14 = v13;
      (*(v8 + 8))(v4, v7);
      v19 = v10;
      v20 = v12;
      v21 = v14 & 1;
      v17 = xmmword_20B438AF0;
      v18 = 1;
      lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
      lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
      v15 = static PortableEnum<>.== infix(_:_:)();
      outlined consume of PortableEnum<CatalogMediaType>(v19, v20, v21);
      v9 = v15 ^ 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t (*LiveWorkoutConfiguration.devicesSupportHeartRate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  return LiveWorkoutConfiguration.devicesSupportHeartRate.modify;
}

uint64_t key path setter for LiveWorkoutConfiguration.$devicesSupportHeartRate : LiveWorkoutConfiguration(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t LiveWorkoutConfiguration.$devicesSupportPedometer.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*LiveWorkoutConfiguration.$devicesSupportHeartRate.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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

  v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportHeartRate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LiveWorkoutConfiguration.$devicesSupportHeartRate.modify;
}

uint64_t @objc LiveWorkoutConfiguration.devicesSupportHeartRate.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  static Published.subscript.getter(&v7);

  return v7;
}

uint64_t LiveWorkoutConfiguration.devicesSupportHeartRate.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

double @objc LiveWorkoutConfiguration.devicesSupportHeartRate.setter(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  static Published.subscript.setter();
  return result;
}

double LiveWorkoutConfiguration.devicesSupportHeartRate.setter(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.setter();
  return result;
}

uint64_t (*LiveWorkoutConfiguration.devicesSupportPedometer.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  return LiveWorkoutConfiguration.devicesSupportPedometer.modify;
}

void LiveWorkoutConfiguration.currentIntervalWorkoutKeyPath.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath : LiveWorkoutConfiguration(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for LiveWorkoutConfiguration.$devicesSupportPedometer : LiveWorkoutConfiguration(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t (*LiveWorkoutConfiguration.$devicesSupportPedometer.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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

  v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration__devicesSupportPedometer;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LiveWorkoutConfiguration.$devicesSupportPedometer.modify;
}

void LiveWorkoutConfiguration.$currentIntervalWorkoutKeyPath.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

unint64_t LiveWorkoutConfiguration.logString.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v129 = &v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v128 = &v122 - v7;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = MEMORY[0x28223BE20](v133, v8);
  v132 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v122 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v125 = &v122 - v21;
  v22 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v130 = type metadata accessor for MultiSportWorkoutConfiguration(0);
  v23 = swift_dynamicCastClass();
  v134 = v0;
  v131 = v22;
  v127 = v14;
  v126 = v15;
  v124 = v18;
  if (v23)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v122 = v22;
    static Published.subscript.getter(&v145);

    v24 = v145;
    if (v145 >> 62)
    {
      goto LABEL_74;
    }

    for (i = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v123 = v13;
      if (!i)
      {
        break;
      }

      v26 = 0;
      v13 = 0;
      v136 = v24 & 0xFFFFFFFFFFFFFF8;
      v137 = v24 & 0xC000000000000001;
      v27 = 0xE000000000000000;
      v135 = v24;
      while (1)
      {
        if (v137)
        {
          v28 = MEMORY[0x20F2E7A20](v26, v24);
        }

        else
        {
          if (v26 >= *(v136 + 16))
          {
            goto LABEL_73;
          }

          v28 = *(v24 + 8 * v26 + 32);
        }

        v29 = v28;
        v30 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v31 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v31 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v32 = 8236;
        }

        else
        {
          v32 = 0;
        }

        if (v31)
        {
          v33 = 0xE200000000000000;
        }

        else
        {
          v33 = 0xE000000000000000;
        }

        v145 = v13;
        v146 = v27;

        v34 = i;
        MEMORY[0x20F2E6D80](v32, v33);

        v35 = v145;
        v36 = v146;
        v37 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v38 = [*&v29[v37] localizedName];
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v41 = v40;

        v145 = v35;
        v146 = v36;

        MEMORY[0x20F2E6D80](v39, v41);
        i = v34;
        v24 = v135;

        v13 = v145;
        v27 = v146;
        ++v26;
        if (v30 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      ;
    }

    v13 = 0;
    v27 = 0xE000000000000000;
LABEL_23:

    v145 = 10272;
    v146 = 0xE200000000000000;
    MEMORY[0x20F2E6D80](v13, v27);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);

    v136 = v145;
    v137 = v146;
    v1 = v134;
    v13 = v123;
  }

  else
  {
    v136 = 0;
    v137 = 0xE000000000000000;
  }

  v145 = 0;
  v146 = 0xE000000000000000;
  _StringGuts.grow(_:)(266);
  v147 = v145;
  v148 = v146;
  MEMORY[0x20F2E6D80](0xD000000000000026, 0x800000020B45D380);
  v42 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v43 = NLWorkoutStartSourceDescription(*(v1 + v42));
  v135 = v42;
  if (v43)
  {
    v44 = v43;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0;
  }

  v143 = v45;
  v144 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v48 = Optional.description.getter();
  v50 = v49;

  MEMORY[0x20F2E6D80](v48, v50);

  MEMORY[0x20F2E6D80](0x72746C5573692820, 0xEF203A65646F4D61);
  v51 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_domainAccessor);
  v52 = specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)();
  v53 = (v52 & 1) == 0;
  if (v52)
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  v55 = 0xE400000000000000;
  if (v53)
  {
    v56 = 0xE500000000000000;
  }

  else
  {
    v56 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v54, v56);

  MEMORY[0x20F2E6D80](0xD000000000000012, 0x800000020B45D3B0);
  v57 = [objc_opt_self() processInfo];
  v58 = [v57 isLowPowerModeEnabled];

  v59 = 1702195828;
  if ((v58 & 1) == 0)
  {
    v60 = [v51 isPowerSavingModeEnabled];
    v61 = v60 == 0;
    v59 = v60 ? 1702195828 : 0x65736C6166;
    if (v61)
    {
      v55 = 0xE500000000000000;
    }
  }

  MEMORY[0x20F2E6D80](v59, v55);

  MEMORY[0x20F2E6D80](2108457, 0xE300000000000000);
  v62 = LiveWorkoutConfiguration.supportsMirroringLogString.getter();
  MEMORY[0x20F2E6D80](v62);

  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B45D3D0);
  v63 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  swift_beginAccess();
  v64 = v125;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v63, v125, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v65 = v126;
  v66 = v127;
  if ((*(v126 + 48))(v64, 1, v127))
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v64, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v69 = v124;
    (*(v65 + 16))(v124, v64, v66);
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v64, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v70 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v72 = [v70 stringFromDate_];

    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v68 = v73;

    (*(v65 + 8))(v69, v66);
  }

  v141 = v67;
  v142 = v68;
  v74 = Optional.description.getter();
  v76 = v75;

  MEMORY[0x20F2E6D80](v74, v76);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45D3F0);
  v77 = HKActivityMoveModeToString();
  if (v77)
  {
    v78 = v77;
    v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v81 = 0;
  }

  v141 = v79;
  v142 = v81;
  v82 = Optional.description.getter();
  v84 = v83;

  MEMORY[0x20F2E6D80](v82, v84);

  MEMORY[0x20F2E6D80](0x4B6D79477369202CLL, 0xEC000000203A7469);
  v85 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v85, v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v86 = type metadata accessor for UUID();
  v87 = (*(*(v86 - 8) + 48))(v13, 1, v86);
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v13, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v88 = 0x65736C6166;
  if (v87 == 1)
  {
    v89 = 0x65736C6166;
  }

  else
  {
    v89 = 1702195828;
  }

  v90 = 0xE500000000000000;
  if (v87 == 1)
  {
    v91 = 0xE500000000000000;
  }

  else
  {
    v91 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v89, v91);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45D410);
  v92 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout;
  v93 = v128;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v128, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v94 = type metadata accessor for CatalogWorkout();
  v95 = *(v94 - 8);
  v96 = *(v95 + 48);
  if (v96(v93, 1, v94) != 1)
  {
    v88 = 1702195828;
    v90 = 0xE400000000000000;
  }

  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v93, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x20F2E6D80](v88, v90);

  MEMORY[0x20F2E6D80](0x54616964656D2820, 0xED0000203A657079);
  v97 = v129;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v1 + v92, v129, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if (v96(v97, 1, v94) == 1)
  {
    _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v97, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
    v98 = 0;
    v99 = 0;
    v100 = -1;
  }

  else
  {
    v98 = CatalogWorkout.mediaType.getter();
    v99 = v101;
    v103 = v102;
    (*(v95 + 8))(v97, v94);
    v100 = v103 & 1;
  }

  v138 = v98;
  v139 = v99;
  v140 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16CatalogMediaTypeOGSgMd, &_s11SeymourCore12PortableEnumOyAA16CatalogMediaTypeOGSgMR);
  v104 = Optional.description.getter();
  v106 = v105;
  outlined consume of PortableEnum<CatalogMediaType>?(v98, v99, v100);
  MEMORY[0x20F2E6D80](v104, v106);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45D430);
  v107 = v134;
  v108 = *(v134 + v135) - 19;
  if (v108 >= 2)
  {
    v109 = 0x65736C6166;
  }

  else
  {
    v109 = 1702195828;
  }

  if (v108 >= 2)
  {
    v110 = 0xE500000000000000;
  }

  else
  {
    v110 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v109, v110);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B45D450);
  v111 = swift_dynamicCastClass();
  v112 = v111 == 0;
  if (v111)
  {
    v113 = 1702195828;
  }

  else
  {
    v113 = 0x65736C6166;
  }

  if (v112)
  {
    v114 = 0xE500000000000000;
  }

  else
  {
    v114 = 0xE400000000000000;
  }

  MEMORY[0x20F2E6D80](v113, v114);

  MEMORY[0x20F2E6D80](v136, v137);

  MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45D470);
  v115 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_predictionSessionUUID;
  swift_beginAccess();
  v116 = v132;
  _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v107 + v115, v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v117 = Optional.description.getter();
  v119 = v118;
  _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(v116, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x20F2E6D80](v117, v119);

  MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45D490);
  v120 = WorkoutConfiguration.logString.getter();
  MEMORY[0x20F2E6D80](v120);

  return v147;
}

id LiveWorkoutConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiveWorkoutConfiguration.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LiveWorkoutConfiguration(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LiveWorkoutConfiguration@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LiveWorkoutConfiguration(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void key path getter for MultisportTransitions.automaticallySwitchLegs : MultisportTransitions(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for MultisportTransitions.automaticallySwitchLegs : MultisportTransitions(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  return result;
}

unint64_t lazy protocol witness table accessor for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures()
{
  result = lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures;
  if (!lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures)
  {
    type metadata accessor for FitnessIntelligenceFeatures();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FitnessIntelligenceFeatures and conformance FitnessIntelligenceFeatures);
  }

  return result;
}

uint64_t type metadata accessor for LiveWorkoutConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for LiveWorkoutConfiguration;
  if (!type metadata singleton initialization cache for LiveWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id specialized LiveWorkoutConfiguration.supportsMetricType(_:domainAccessor:)(unint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  if (specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)())
  {
    if (a1 >= 0x20)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      v4 = 0x3FF67EFu >> a1;
    }
  }

  else
  {
    v5 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    swift_beginAccess();
    v6 = 0x3FC1FFFFFuLL >> a1;
    if (a1 >= 0x25)
    {
      LOBYTE(v6) = 1;
    }

    if (*(v3 + v5) == 1)
    {
      LOBYTE(v4) = v6;
    }

    else
    {
      LOBYTE(v4) = 1;
    }
  }

  if (*(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform))
  {
    return (v4 & 1);
  }

  if (a1 - 37 < 4 || a1 == 5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter((v19 + 1));

    v7 = BYTE1(v19[0]);
  }

  else
  {
    v7 = 1;
  }

  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if (a1 > 0x30 || ((1 << a1) & 0x1061800C44112) == 0)
  {
LABEL_26:
    LOBYTE(v4) = v4 & v7;
    return (v4 & 1);
  }

  v9 = *(v3 + v8);
  if (![v9 isIndoor])
  {
LABEL_23:

    goto LABEL_26;
  }

  [v9 effectiveTypeIdentifier];
  result = _HKWorkoutDistanceTypeForActivityType();
  if (result)
  {
    v11 = result;
    v12 = [result identifier];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v19);

    v7 &= LOBYTE(v19[0]);
    goto LABEL_26;
  }

  __break(1u);
  return result;
}

uint64_t _s11SeymourCore14CatalogWorkoutVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined consume of PortableEnum<CatalogMediaType>?(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of PortableEnum<CatalogMediaType>(result, a2, a3 & 1);
  }

  return result;
}

uint64_t keypath_get_83Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return _s11SeymourCore14CatalogWorkoutVSgWOcTm_0(v8 + v9, a5, a3, a4);
}

void keypath_get_79Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_get_81Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_82Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void keypath_set_80Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void type metadata completion function for LiveWorkoutConfiguration(uint64_t a1)
{
  type metadata accessor for CatalogWorkout?(319, &lazy cache variable for type metadata for CatalogWorkout?, MEMORY[0x277D50820]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CatalogWorkout?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CatalogWorkout?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<IntervalWorkoutKeyPath?>(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<Int>(319, &lazy cache variable for type metadata for Published<Int>, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<Int>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0]);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for CatalogWorkout?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata accessor for Published<IntervalWorkoutKeyPath?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<IntervalWorkoutKeyPath?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore08IntervalA7KeyPathVSgMd, &_s11WorkoutCore08IntervalA7KeyPathVSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<IntervalWorkoutKeyPath?>);
    }
  }
}

void type metadata accessor for Published<Int>(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(uint64_t a1, uint64_t a2)
{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_24_2, &OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_invalidationTimer, 300.0);
}

{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_18_0, &OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer, 15.0);
}

{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_15_2, &OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer, 15.0);
}

{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_12_1, &OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer, 15.0);
}

{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_9_2, &OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer, 15.0);
}

{
  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(a1, a2, &block_descriptor_31, &OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer, 15.0);
}

void specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5)
{
  v9 = v5;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = a3;
    v18 = _Block_copy(aBlock);
    v19 = objc_opt_self();

    v20 = [v19 timerWithTimeInterval:0 repeats:v18 block:a5];
    _Block_release(v18);

    v21 = *a4;
    swift_beginAccess();
    [*(v9 + v21) invalidate];
    v22 = *(v9 + v21);
    *(v9 + v21) = v20;

    v23 = objc_opt_self();
    v24 = v20;
    v25 = [v23 mainRunLoop];
    [v25 addTimer:v24 forMode:*MEMORY[0x277CBE640]];
  }

  else
  {
    __break(1u);
  }
}

void GroundContactTimeAccumulator.currentGroundContactTime.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLGroundContactTimeAccumulator_currentGroundContactTime;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t GroundContactTimeAccumulator.currentGroundContactTime.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void GroundContactTimeAccumulator.averageGroundContactTime.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLGroundContactTimeAccumulator_averageGroundContactTime;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void key path setter for GroundContactTimeAccumulator.invalidationTimer : GroundContactTimeAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *GroundContactTimeAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void GroundContactTimeAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall GroundContactTimeAccumulator.update(statistics:)(HKStatistics statistics)
{
  v2 = v1;
  v4 = [(objc_class *)statistics.super.isa mostRecentQuantity];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() secondUnit];
    [v5 doubleValueForUnit_];
    v8 = v7;

    v9 = &v2[OBJC_IVAR___NLGroundContactTimeAccumulator_currentGroundContactTime];
    swift_beginAccess();
    *v9 = v8;
    v9[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.app);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37 = v15;
      *v14 = 136315138;
      v16 = v9[8];
      v39[1] = *v9;
      v40 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v17 = Optional.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v37);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Current GroundContactTime quantity received: %s seconds", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }
  }

  v20 = [(objc_class *)statistics.super.isa averageQuantity];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() secondUnit];
    [v21 doubleValueForUnit_];
    v24 = v23;

    v25 = &v2[OBJC_IVAR___NLGroundContactTimeAccumulator_averageGroundContactTime];
    swift_beginAccess();
    *v25 = v24;
    v25[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static WOLog.app);
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136315138;
      v32 = v25[8];
      v37 = *v25;
      v38 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v33 = Optional.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v39);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Average GroundContactTime quantity received: %s seconds", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in GroundContactTimeAccumulator.update(statistics:), v36, &block_descriptor_21, &OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer, 15.0);

  [v2 update];
}

void closure #1 in GroundContactTimeAccumulator.update(statistics:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR___NLGroundContactTimeAccumulator_currentGroundContactTime;
    v4 = Strong;
    swift_beginAccess();
    *v3 = 0;
    *(v3 + 8) = 1;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 update];
  }
}

id GroundContactTimeAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id GroundContactTimeAccumulator.init(builder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___NLGroundContactTimeAccumulator_currentGroundContactTime];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR___NLGroundContactTimeAccumulator_averageGroundContactTime];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GroundContactTimeAccumulator();
  v5 = objc_msgSendSuper2(&v7, sel_initWithBuilder_, a1);

  return v5;
}

id GroundContactTimeAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroundContactTimeAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for GroundContactTimeProvider.currentGroundContactTime.getter in conformance GroundContactTimeAccumulator(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3 + *a3;
  swift_beginAccess();
  return *v4;
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance GroundContactTimeAccumulator()
{
  v1 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance GroundContactTimeAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLGroundContactTimeAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void keypath_getTm_0(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v5;
}

void keypath_setTm_1(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
}

uint64_t MultiSportWorkoutTracker.dataProvider(_:didUpdate:)(void *a1, unint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 <= 0x36)
  {
    if (((1 << a2) & 0x7FFFFCFFFFFEF4) != 0)
    {
      return result;
    }

    if (a2 == 3)
    {
      v10 = result;

      [objc_msgSend(a1 elapsedTimeProvider)];
      goto LABEL_12;
    }

    if (a2 == 8)
    {
      v10 = result;

      v12 = [a1 paceProvider];
      if (!v12)
      {
        v13 = 0.0;
        goto LABEL_13;
      }

      [v12 averagePaceInMetersPerSecond];
LABEL_12:
      v13 = v11;
      swift_unknownObjectRelease();
LABEL_13:
      Date.init()();
      Date.timeIntervalSinceReferenceDate.getter();
      WindowedAccumulator.add(_:position:)(v13, v14);

      return (*(v5 + 8))(v9, v10);
    }
  }

  if (a2)
  {
    if (a2 != 1)
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000061, 0x800000020B45E2F0, "WorkoutCore/MultisportWorkoutTracker+NLSessionActivityDataObserver.swift", 72, 2, 38, 0);
      __break(1u);
      return result;
    }

    v10 = result;

    [objc_msgSend(a1 distanceProvider)];
    goto LABEL_12;
  }

  return result;
}

Swift::Bool __swiftcall HKWorkoutConfiguration.equivalentForMultisport(_:)(HKWorkoutConfiguration a1)
{
  v3 = [v1 activityType];
  result = 0;
  if (v3 == [(objc_class *)a1.super.isa activityType])
  {
    v4 = [v1 locationType];
    if (v4 == [(objc_class *)a1.super.isa locationType])
    {
      if ([v1 activityType] != 46)
      {
        return 1;
      }

      v5 = [v1 swimmingLocationType];
      if (v5 == [(objc_class *)a1.super.isa swimmingLocationType])
      {
        return 1;
      }
    }
  }

  return result;
}

void specialized MultiSportWorkoutTracker.workout(_:didMoveToState:)(unint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 3)
  {
    if (a1 < 3)
    {
      return;
    }

    if (a1 == 3)
    {
      v9 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
      if (*(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer))
      {
        v10 = v1;
        if (one-time initialization token for multisport != -1)
        {
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static WOLog.multisport);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_20AEA4000, v12, v13, "Workout has paused, cancel our end workout timer", v14, 2u);
          MEMORY[0x20F2E9420](v14, -1, -1);
        }

        [*(v10 + v9) invalidate];
        v15 = *(v10 + v9);
        *(v10 + v9) = 0;

        *(v10 + OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused) = 1;
      }

      return;
    }

LABEL_20:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000061, 0x800000020B45E3C0, "WorkoutCore/MultisportWorkoutTracker+NLWorkoutStateObserver.swift", 65, 2, 41, 0);
    __break(1u);
    return;
  }

  if (a1 - 5 < 2)
  {
    v16 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
    [*(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer) invalidate];
    v17 = *(v1 + v16);
    *(v1 + v16) = 0;

    *(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused) = 0;
    return;
  }

  if (a1 != 4)
  {
    goto LABEL_20;
  }

  v18 = OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused;
  if (*(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused) == 1)
  {
    v19 = v6;
    v20 = v1;
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.multisport);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20AEA4000, v22, v23, "Workout has resumed, we were tracking an end, resume workout timer", v24, 2u);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    *(v20 + v18) = 0;
    Date.init()();
    MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)(v8);
    (*(v4 + 8))(v8, v19);
  }
}

uint64_t MirroredHostAlertStackRequest.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void MirroredHostAlertStackRequest.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MirroredHostAlertStackRequest.alertTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void MirroredHostAlertStackRequest.alertTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MirroredHostAlertStackRequest.alertMessage.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void MirroredHostAlertStackRequest.alertMessage.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void __swiftcall MirroredHostAlertStackRequest.init(identifier:alertTitle:alertMessage:continueOptionTitles:)(WorkoutCore::MirroredHostAlertStackRequest *__return_ptr retstr, Swift::String identifier, Swift::String alertTitle, Swift::String alertMessage, Swift::OpaquePointer continueOptionTitles)
{
  retstr->identifier = identifier;
  retstr->alertTitle = alertTitle;
  retstr->alertMessage = alertMessage;
  retstr->continueOptionTitles = continueOptionTitles;
}

uint64_t MirroredHostAlertStackRequest.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  a2[1] = v4;
  v6 = a1[3];
  a2[2] = a1[2];
  a2[3] = v6;
  v7 = a1[5];
  a2[4] = a1[4];
  a2[5] = v7;
  v8 = a1[6];

  result = outlined destroy of Apple_Workout_Core_MirroredHostAlertStackRequest(a1);
  a2[6] = v8;
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredHostAlertStackRequest(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredHostAlertStackRequest.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest();
  return static Message.with(_:)();
}

void closure #1 in MirroredHostAlertStackRequest.protobuf.getter(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];

  *a1 = v5;
  a1[1] = v4;
  v7 = a2[2];
  v6 = a2[3];

  a1[2] = v7;
  a1[3] = v6;
  v9 = a2[4];
  v8 = a2[5];

  a1[4] = v9;
  a1[5] = v8;
  v10 = a2[6];

  a1[6] = v10;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest)
  {
    type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest);
  }

  return result;
}

uint64_t MirroredHostAlertStackRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  _StringGuts.grow(_:)(74);
  MEMORY[0x20F2E6D80](0x696669746E656469, 0xEC000000203A7265);
  MEMORY[0x20F2E6D80](v1, v2);
  MEMORY[0x20F2E6D80](0x547472656C61202CLL, 0xEE00203A656C7469);
  MEMORY[0x20F2E6D80](v3, v4);
  MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B45E430);
  v8 = MEMORY[0x20F2E6F70](v7, MEMORY[0x277D837D0]);
  MEMORY[0x20F2E6D80](v8);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B45E450);
  MEMORY[0x20F2E6D80](v5, v6);
  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredHostAlertStackRequest@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  *a2 = v5;
  a2[1] = v4;
  v6 = a1[3];
  a2[2] = a1[2];
  a2[3] = v6;
  v7 = a1[5];
  a2[4] = a1[4];
  a2[5] = v7;
  v8 = a1[6];

  result = outlined destroy of Apple_Workout_Core_MirroredHostAlertStackRequest(a1);
  a2[6] = v8;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredHostAlertStackRequest()
{
  type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest();
  return static Message.with(_:)();
}

void MirroredHostAlertStackRequest.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 48);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x20F2E7FF0](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 40;
    do
    {

      String.hash(into:)();

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

Swift::Int MirroredHostAlertStackRequest.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *&v4[72] = *v0;
  v5 = v1;
  v6 = v2;
  v7 = *(v0 + 40);
  Hasher.init(_seed:)();
  MirroredHostAlertStackRequest.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostAlertStackRequest()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *&v4[72] = *v0;
  v5 = v1;
  v6 = v2;
  v7 = *(v0 + 40);
  Hasher.init(_seed:)();
  MirroredHostAlertStackRequest.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostAlertStackRequest(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  *&v5[72] = *v1;
  v6 = v2;
  v7 = v3;
  v8 = *(v1 + 40);
  Hasher.init(_seed:)();
  MirroredHostAlertStackRequest.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t specialized static MirroredHostAlertStackRequest.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v9 || v6 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v5, v11);
}

unint64_t instantiation function for generic protocol witness table for MirroredHostAlertStackRequest(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest()
{
  result = lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest;
  if (!lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for MirroredHostAlertStackRequest(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MirroredHostAlertStackRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySo21HKWorkoutActivityTypeVSaySdGG_SSs5NeverOTg50132_s11WorkoutCore010MultiSportA7TrackerC41stringArrayForPreviousMultisportDistances33_0E6D109B9F68067E5BEC40CEBADAD9E2LLSaySSGvgSSSo21deF26V3key_SaySdG5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v29 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v26 = v29;
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v6 = *(a1 + 36);
    v23 = v2;
    v24 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v25 = v5;
      v9 = *(*(a1 + 56) + 8 * v4);

      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v10;
      MEMORY[0x20F2E6D80](8250, 0xE200000000000000);
      v11 = MEMORY[0x20F2E6F70](v9, MEMORY[0x277D839F8]);
      MEMORY[0x20F2E6D80](v11);

      v12 = v26;
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v14 + 1;
      v15 = v12 + 16 * v14;
      *(v15 + 32) = v27;
      *(v15 + 40) = v28;
      v7 = 1 << *(a1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v8);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v26 = v12;
      v6 = v24;
      if (v24 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v7 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v8 << 6;
        v19 = v8 + 1;
        v20 = (a1 + 72 + 8 * v8);
        while (v19 < (v7 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            outlined consume of [HKWorkoutActivityType : [Double]].Index._Variant(v4, v24, 0);
            v7 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        outlined consume of [HKWorkoutActivityType : [Double]].Index._Variant(v4, v24, 0);
      }

LABEL_4:
      v5 = v25 + 1;
      v4 = v7;
      if (v25 + 1 == v23)
      {
        return;
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
LABEL_26:
    __break(1u);
  }
}

uint64_t (*MultiSportWorkoutTracker.alertDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WOMultiSportWorkoutTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MultiSportWorkoutTracker.alertDelegate.modify;
}

id @objc MultiSportWorkoutTracker.alertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t MultiSportWorkoutTracker.alertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MultiSportWorkoutTracker.progressionRequestDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WOMultiSportWorkoutTracker_progressionRequestDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return MultiSportWorkoutTracker.progressionRequestDelegate.modify;
}

void MultiSportWorkoutTracker.alertDelegate.modify(void **a1, char a2)
{
  v3 = *a1;
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

void MultiSportWorkoutTracker.multiSportTransitionState.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void MultiSportWorkoutTracker.multiSportTransitionState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t MultiSportWorkoutTracker.firstActivityStarted.getter()
{
  v1 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  return *(v0 + v1);
}

void MultiSportWorkoutTracker.firstActivityStarted.setter(char a1)
{
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL MultiSportWorkoutTracker.currentlyInTransition.getter()
{
  v1 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  return *(v0 + v1) != 0;
}

double MultiSportWorkoutTracker.lastMultisportLegTime.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 8 * v2 + 24);
  }

  else
  {
    return 0.0;
  }
}

void MultiSportWorkoutTracker.lastMultisportLegDistance.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  if (*(v1 + v2) != 2)
  {
    v12 = LiveWorkoutConfiguration.currentActivityType.getter();
    v13 = [v12 identifier];

    v14 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportDistancesByActivity;
    swift_beginAccess();
    if (*(*(v1 + v14) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v13), (v15 & 1) != 0))
    {
      if (!*( + 16))
      {
LABEL_13:

        return;
      }
    }

    else if (!*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_13;
    }

    return;
  }

  v3 = *(*(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.getter(v16);

  v5 = v16[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v16);

  if ((v16[0] & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x20F2E7A20](v5, v16[0]);
    goto LABEL_7;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v5 >= *((v16[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v6 = *(v16[0] + 8 * v5 + 32);
LABEL_7:
  v7 = v6;

  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v9 = *&v7[v8];

  v10 = [v9 identifier];
  v11 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportDistancesByActivity;
  swift_beginAccess();
  if (*(*(v1 + v11) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v10);
  }
}

double MultiSportWorkoutTracker.lastMultisportLegAveragePace.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 8 * v2 + 24);
  }

  else
  {
    return 0.0;
  }
}

uint64_t MultiSportWorkoutTracker.allHKConfigurations.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    if (one-time initialization token for multisport == -1)
    {
LABEL_20:
      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static WOLog.multisport);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_20AEA4000, v16, v17, "Tried to get workout configurations, but we aren't a MultiSport config.", v18, 2u);
        MEMORY[0x20F2E9420](v18, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_29:
    swift_once();
    goto LABEL_20;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter(v20);

  v3 = v20[0];
  if (v20[0] >> 62)
  {
    goto LABEL_25;
  }

  v4 = *((v20[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v21 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v4 < 0)
      {
        break;
      }

      v5 = 0;
      v19 = v2;
      v2 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      while (1)
      {
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x20F2E7A20](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
        v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        [v9 setActivityType_];
        if ([*&v8[v10] isIndoor])
        {
          v11 = 2;
        }

        else
        {
          v11 = 3;
        }

        [v9 setLocationType_];
        if ([v9 activityType] == 46)
        {
          [v9 setSwimmingLocationType_];
          v12 = [*&v8[v10] lapLength];
          if (v12)
          {
            v13 = v12;
            [v9 setLapLength_];

            v8 = v13;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v5;
        if (v6 == v4)
        {

          return v21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_26:

  return MEMORY[0x277D84F90];
}

unint64_t MultiSportWorkoutTracker.autoTransitionMetadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v26[-v3];
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionStartDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_4(v0 + v10, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    _s10Foundation4DateVSgWOhTm_7(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v6 + 32))(v9, v4, v5);
  v11 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionUUIDString + 8);
  if (!v11)
  {
    (*(v6 + 8))(v9, v5);
    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  v12 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionUUIDString);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423940;
  *(inited + 32) = 0xD000000000000031;
  *(inited + 40) = 0x800000020B45E470;
  *(inited + 72) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(v6 + 16))(boxed_opaque_existential_0, v9, v5);
  *(inited + 80) = 0xD000000000000032;
  *(inited + 88) = 0x800000020B45E4B0;
  v15 = MEMORY[0x277D837D0];
  *(inited + 96) = v12;
  *(inited + 104) = v11;
  *(inited + 120) = v15;
  *(inited + 128) = 0xD000000000000028;
  *(inited + 136) = 0x800000020B45E4F0;
  v16 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes);
  v17 = *(v16 + 16);
  v18 = 0;
  v19 = 0;
  if (v17)
  {
    v19 = *(v16 + 8 * v17 + 24);
  }

  v20 = MEMORY[0x277D839F8];
  *(inited + 144) = v19;
  *(inited + 168) = v20;
  *(inited + 176) = 0xD00000000000002CLL;
  *(inited + 184) = 0x800000020B45E520;

  MultiSportWorkoutTracker.lastMultisportLegDistance.getter();
  *(inited + 192) = v21;
  *(inited + 216) = v20;
  *(inited + 224) = 0xD000000000000028;
  *(inited + 232) = 0x800000020B45E550;
  v22 = *(v0 + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces);
  v23 = *(v22 + 16);
  if (v23)
  {
    v18 = *(v22 + 8 * v23 + 24);
  }

  *(inited + 264) = v20;
  *(inited + 240) = v18;
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  (*(v6 + 8))(v9, v5);
  return v24;
}

id MultiSportWorkoutTracker.init(configuration:formattingManager:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState] = 0;
  v2[OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted] = 0;
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer] = 0;
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutNotificationDelay] = 0x4066800000000000;
  v2[OBJC_IVAR___WOMultiSportWorkoutTracker_didNotifyOfEndSuggestion] = 0;
  v2[OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused] = 0;
  v5 = OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionStartDate;
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = &v2[OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionUUIDString];
  *v7 = 0;
  v7[1] = 0;
  v8 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportDistancesByActivity;
  *&v2[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21HKWorkoutActivityTypeV_SaySdGTt0g5Tf4g_n(v8);
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes] = v8;
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces] = v8;
  v10 = OBJC_IVAR___WOMultiSportWorkoutTracker_elapsedTimeAccumulator;
  type metadata accessor for WindowedAccumulator();
  v11 = swift_allocObject();
  *(v11 + 48) = v8;
  *(v11 + 56) = 0;
  *(v11 + 16) = 0x4072C00000000000;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 1;
  *&v2[v10] = v11;
  v12 = OBJC_IVAR___WOMultiSportWorkoutTracker_distanceAccumulator;
  v13 = swift_allocObject();
  *(v13 + 48) = v8;
  *(v13 + 56) = 0;
  *(v13 + 16) = 0x4072C00000000000;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  *&v2[v12] = v13;
  v14 = OBJC_IVAR___WOMultiSportWorkoutTracker_averagePaceAccumulator;
  v15 = swift_allocObject();
  *(v15 + 48) = v8;
  *(v15 + 56) = 0;
  *(v15 + 16) = 0x4072C00000000000;
  *(v15 + 24) = 0;
  *(v15 + 32) = 0;
  *(v15 + 40) = 1;
  *&v2[v14] = v15;
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_configuration] = a1;
  *&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_formattingManager] = a2;
  v17.receiver = v2;
  v17.super_class = type metadata accessor for MultiSportWorkoutTracker(0);
  return objc_msgSendSuper2(&v17, sel_init);
}

id MultiSportWorkoutTracker.addObserver(_:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v14 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_20:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v6, v4);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v6;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v10);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v14;
      v6 = v8;
    }
  }

  v11 = swift_unknownObjectRetain();
  MEMORY[0x20F2E6F30](v11);
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized WeakCollection.wrappedValue.setter(v7, &_s11WorkoutCore14WeakCollectionV0C6Object33_6D7B651E7B66F37A97BD77673902658BLLCyAA010MultiSportA23TrackerProgressObserver_p_GMd, &_s11WorkoutCore14WeakCollectionV0C6Object33_6D7B651E7B66F37A97BD77673902658BLLCyAA010MultiSportA23TrackerProgressObserver_p_GMR);
  swift_endAccess();
  return [a1 didEnterNewLeg:v2 date:0];
}

void MultiSportWorkoutTracker.enterTransition(suggestedConfiguration:date:)(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for multisport != -1)
  {
LABEL_41:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.multisport);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35[0] = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 0x6974616D6F747561;
    }

    else
    {
      v11 = 0x6C61756E616DLL;
    }

    if (a1)
    {
      v12 = 0xE900000000000063;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v35);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Requesting entering into %s transition", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Unable to enter transition - progression delegate is nil.", v30, 2u);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    return;
  }

  v15 = Strong;
  if (!a1)
  {
    v31 = a2;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v15 startManualTransitionWithDate_];

LABEL_45:
    MultiSportWorkoutTracker.appendValues(upTo:)(v31);
    swift_unknownObjectRelease();
    return;
  }

  v16 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  *(v3 + v16) = 1;
  v17 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  v18 = *(v3 + v17);
  v34 = MEMORY[0x277D84F90];
  if (v18 >> 62)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = v6;

  v21 = 0;
  a1 = MEMORY[0x277D84F90];
  while (v19 != v21)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v21, v18);
      v3 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v3 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v22 = swift_unknownObjectWeakLoadStrong();

    ++v21;
    if (v22)
    {
      MEMORY[0x20F2E6F30](v23);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a1 = v34;
      v21 = v3;
    }
  }

  if (a1 >> 62)
  {
    v24 = __CocoaSet.count.getter();
    if (v24)
    {
      goto LABEL_28;
    }

LABEL_44:

    v31 = a2;
    goto LABEL_45;
  }

  v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_44;
  }

LABEL_28:
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x20F2E7A20](v25, a1);
      }

      else
      {
        v26 = *(a1 + 8 * v25 + 32);
        swift_unknownObjectRetain();
      }

      ++v25;
      v27 = Date._bridgeToObjectiveC()().super.isa;
      [v26 enterAutomaticTransitionWithSuggestedConfig:v20 date:v27];
      swift_unknownObjectRelease();
    }

    while (v24 != v25);
    goto LABEL_44;
  }

  __break(1u);
}

void MultiSportWorkoutTracker.cancelTransition()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  *(v1 + v2) = 0;
  MultiSportWorkoutTracker.dropLastValues()();
  v3 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  v25 = v3;
  v4 = *(v1 + v3);
  v26 = MEMORY[0x277D84F90];
  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  if (v4 >> 62)
  {
LABEL_29:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v7, v4);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_26;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v7;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v11);
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v8 = v26;
      v7 = v9;
    }
  }

  if (v8 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_17:
      v12 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2E7A20](v12, v8);
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v13 = *(v8 + 8 * v12 + 32);
          swift_unknownObjectRetain();
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
LABEL_25:
            __break(1u);
            goto LABEL_26;
          }
        }

        [v13 didCancelAutomaticTransition];
        swift_unknownObjectRelease();
        ++v12;
      }

      while (v14 != v4);
    }
  }

  v15 = *(v1 + v25);
  v27 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
LABEL_55:
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  while (v16 != v17)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v17, v15);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    v20 = swift_unknownObjectWeakLoadStrong();

    ++v17;
    if (v20)
    {
      MEMORY[0x20F2E6F30](v21);
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v18 = v27;
      v17 = v19;
    }
  }

  if (!(v18 >> 62))
  {
    v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_47;
    }

LABEL_57:

    return;
  }

  v22 = __CocoaSet.count.getter();
  if (!v22)
  {
    goto LABEL_57;
  }

LABEL_47:
  if (v22 >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x20F2E7A20](i, v18);
      }

      else
      {
        v24 = *(v18 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v24 didUpdateLastLegValues_];
      swift_unknownObjectRelease();
    }

    goto LABEL_57;
  }

  __break(1u);
}

void MultiSportWorkoutTracker.moveToNextLeg(suggestedConfiguration:date:)(void *a1, unint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.multisport);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v28 = a2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v29[0] = v11;
    *v10 = 136315138;
    v29[7] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo22HKWorkoutConfigurationCSgMd, &_sSo22HKWorkoutConfigurationCSgMR);
    v12 = Optional.description.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v29);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_20AEA4000, v8, v9, "Moving to next leg with suggested configuration %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    v15 = v10;
    a2 = v28;
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v25.super.isa = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25.super.isa, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_20AEA4000, v25.super.isa, v26, "Unable to move to next leg - progression delegate is nil.", v27, 2u);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    goto LABEL_10;
  }

  v17 = Strong;
  MultiSportWorkoutTracker.appendValues(upTo:)(a2);
  v18 = *(v2 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  v19 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_suggestedHKWorkoutConfiguration;
  swift_beginAccess();
  v20 = *(v18 + v19);
  *(v18 + v19) = a1;

  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v7;
  v22 = static Published.subscript.modify();
  if (!__OFADD__(*v23, 1))
  {
    ++*v23;
    v22(v29, 0);

    v24 = MEMORY[0x277D84F90];
    *(*(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_distanceAccumulator) + 48) = MEMORY[0x277D84F90];

    *(*(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_elapsedTimeAccumulator) + 48) = v24;

    *(*(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_averagePaceAccumulator) + 48) = v24;

    v25.super.isa = Date._bridgeToObjectiveC()().super.isa;
    [v17 enterNewLeg:v3 date:v25.super.isa];
    swift_unknownObjectRelease();
LABEL_10:

    return;
  }

  __break(1u);
}

void MultiSportWorkoutTracker.manuallyMoveToNextActivity(multisportTransitions:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (LiveWorkoutConfiguration.isLastMultiSportLeg()())
  {
    v8 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
    swift_beginAccess();
    *(v2 + v8) = 0;
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.multisport);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Requested to move to next leg, but already at end of workout.", v12, 2u);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }
  }

  else
  {
    type metadata accessor for MultiSportWorkoutConfiguration(0);
    if (swift_dynamicCastClass())
    {
      Date.init()();
      v13 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
      swift_beginAccess();
      if (*(v2 + v13) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(&v14[7]), , , (v14[7] & 1) == 0))
      {
        MultiSportWorkoutTracker.moveToNextLeg(suggestedConfiguration:date:)(0, v7);
      }

      else
      {
        MultiSportWorkoutTracker.enterTransition(suggestedConfiguration:date:)(0, v7);
      }

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000058, 0x800000020B45E5B0, "WorkoutCore/MultiSportWorkoutTracker.swift", 42, 2, 227, 0);
      __break(1u);
    }
  }
}

void MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)(uint64_t a1)
{
  v2 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
  if (*(v1 + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer))
  {
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.multisport);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v4, "Ignoring request to start end workout timer, we are already timing", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }
  }

  else
  {
    v6 = v1;
    Date.timeIntervalSinceNow.getter();
    v8 = v7 + 180.0;
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = one-time initialization token for multisport;
    if (v8 <= 0.0)
    {

      if (v10 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static WOLog.multisport);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_20AEA4000, v21, v22, "Transition started earlier than our normal delay date, suggesting end now", v23, 2u);
        MEMORY[0x20F2E9420](v23, -1, -1);
      }

      closure #1 in MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)(v9);
    }

    else
    {
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static WOLog.multisport);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = v8;
        _os_log_impl(&dword_20AEA4000, v12, v13, "Scheduling an end workout suggestion for %f from now", v14, 0xCu);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }

      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = partial apply for closure #1 in MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:);
      *(v16 + 24) = v9;
      aBlock[4] = partial apply for closure #2 in MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:);
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
      aBlock[3] = &block_descriptor_32;
      v17 = _Block_copy(aBlock);

      v18 = [v15 scheduledTimerWithTimeInterval:0 repeats:v17 block:v8];

      _Block_release(v17);
      v19 = *(v6 + v2);
      *(v6 + v2) = v18;
    }
  }
}

void closure #1 in MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for multisport != -1)
    {
LABEL_33:
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.multisport);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Suggest ending the workout now", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v7 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
    swift_beginAccess();
    v8 = *&v2[v7];
    v21 = MEMORY[0x277D84F90];
    if (v8 >> 62)
    {
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (v9 != v10)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v10, v8);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_30;
        }
      }

      v13 = swift_unknownObjectWeakLoadStrong();

      ++v10;
      if (v13)
      {
        MEMORY[0x20F2E6F30](v14);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v11 = v21;
        v10 = v12;
      }
    }

    if (v11 >> 62)
    {
      v15 = __CocoaSet.count.getter();
      if (v15)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_21:
        v16 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x20F2E7A20](v16, v11);
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_32;
            }

            v17 = *(v11 + 8 * v16 + 32);
            swift_unknownObjectRetain();
            v18 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }
          }

          [v17 suggestEndingWorkout];
          swift_unknownObjectRelease();
          ++v16;
        }

        while (v18 != v15);
      }
    }

    v2[OBJC_IVAR___WOMultiSportWorkoutTracker_didNotifyOfEndSuggestion] = 1;
    v19 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
    [*&v2[OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer] invalidate];
    v20 = *&v2[v19];
    *&v2[v19] = 0;
  }
}

void MultiSportWorkoutTracker.handleFinalLegSuggestion(_:date:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v10 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6);
  v11 = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    v12 = MultiSportWorkoutTracker.allHKConfigurations.getter();
    v11 = v12;
    if (!(v12 >> 62))
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_30:

      v15 = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000038, 0x800000020B45EB80, "WorkoutCore/MultiSportWorkoutTracker.swift", 42, 2, 280, 0);
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

  v13 = __CocoaSet.count.getter();
  if (!v13)
  {
    goto LABEL_30;
  }

LABEL_4:
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v11 + 8 * v15 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_32:
  v16 = MEMORY[0x20F2E7A20](v15, v11);
LABEL_9:
  v6 = v16;

  if (*(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_didNotifyOfEndSuggestion))
  {
    if (one-time initialization token for multisport == -1)
    {
LABEL_11:
      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static WOLog.multisport);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v18, v19))
      {
LABEL_14:

LABEL_17:
        return;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Already notified the user, ignoring any new suggestions";
LABEL_13:
      _os_log_impl(&dword_20AEA4000, v18, v19, v21, v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
      goto LABEL_14;
    }

LABEL_35:
    swift_once();
    goto LABEL_11;
  }

  if ([a1 activityType] == 83)
  {
    MultiSportWorkoutTracker.startEndWorkoutTimer(fromDate:)(a2);
    goto LABEL_17;
  }

  if (!HKWorkoutConfiguration.equivalentForMultisport(_:)(v6))
  {
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static WOLog.multisport);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Ignoring unknown configuration change when at the end of known legs";
    goto LABEL_13;
  }

  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.multisport);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_20AEA4000, v23, v24, "We are back in our expected workout type, cancel any ending timer", v25, 2u);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  v26 = OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer;
  v27 = *(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_endWorkoutTimer);
  [v27 invalidate];

  v28 = *(v3 + v26);
  *(v3 + v26) = 0;

  *(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_wasTimingToNotifyWhenPaused) = 0;
}

void MultiSportWorkoutTracker.handleSuggestedConfiguration(_:date:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v74 = a2;
  v75 = a1;
  v4 = type metadata accessor for UUID();
  v73 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v72 - v18;
  v20 = type metadata accessor for DispatchPredicate();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = (&v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v24 = static OS_dispatch_queue.main.getter();
  (*(v21 + 104))(v24, *MEMORY[0x277D85200], v20);
  v25 = _dispatchPreconditionTest(_:)();
  v27 = *(v21 + 8);
  v26 = (v21 + 8);
  v27(v24, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  v28 = *(v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000058, 0x800000020B45E610, "WorkoutCore/MultiSportWorkoutTracker.swift", 42, 2, 306, 0);
    __break(1u);
    return;
  }

  if (LiveWorkoutConfiguration.isLastMultiSportLeg()())
  {
    MultiSportWorkoutTracker.handleFinalLegSuggestion(_:date:)(v75, v74);
    return;
  }

  v26 = specialized static MultisportTransitionsStore.read()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v77);

  if (LOBYTE(v77[0]) != 1)
  {
    if (one-time initialization token for multisport == -1)
    {
LABEL_13:
      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static WOLog.multisport);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v32, v33))
      {
LABEL_16:

        return;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Ignoring suggested configuration as the user has decided to manually transition.";
LABEL_15:
      _os_log_impl(&dword_20AEA4000, v32, v33, v35, v34, 2u);
      MEMORY[0x20F2E9420](v34, -1, -1);
      goto LABEL_16;
    }

LABEL_57:
    swift_once();
    goto LABEL_13;
  }

  v29 = [v75 activityType];
  v30 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  if (v29 == 83)
  {
    swift_beginAccess();
    if (*(v3 + v30))
    {
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      __swift_project_value_buffer(v31, static WOLog.multisport);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_16;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Already in transition, ignoring change request";
      goto LABEL_15;
    }

    if (one-time initialization token for multisport == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

  swift_beginAccess();
  if (!*(v3 + v30))
  {
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static WOLog.multisport);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_16;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Ignoring configuration change that's not for transition if we're not in transition";
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v76);

  v7 = v76;
  v4 = (v76 + 1);
  if (__OFADD__(v76, 1))
  {
    __break(1u);
    goto LABEL_59;
  }

  v37 = MultiSportWorkoutTracker.allHKConfigurations.getter();
  v28 = v37;
  if ((v37 & 0xC000000000000001) != 0)
  {
LABEL_59:
    v41 = MEMORY[0x20F2E7A20](v7, v28);
    v42 = MEMORY[0x20F2E7A20](v4, v28);
    v38 = v75;
LABEL_24:

    if (HKWorkoutConfiguration.equivalentForMultisport(_:)(v41))
    {
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static WOLog.multisport);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_20AEA4000, v44, v45, "Suggested config equals previous leg, cancel current transition", v46, 2u);
        MEMORY[0x20F2E9420](v46, -1, -1);
      }

      MultiSportWorkoutTracker.cancelTransition()();
    }

    else
    {
      if (!HKWorkoutConfiguration.equivalentForMultisport(_:)(v42))
      {
        if (one-time initialization token for multisport != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for Logger();
        __swift_project_value_buffer(v66, static WOLog.multisport);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 0;
          _os_log_impl(&dword_20AEA4000, v67, v68, "Neither current nor previous match, ignoring CM suggestion.", v69, 2u);
          MEMORY[0x20F2E9420](v69, -1, -1);
        }

        goto LABEL_53;
      }

      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      __swift_project_value_buffer(v62, static WOLog.multisport);
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_20AEA4000, v63, v64, "Next config matches CM suggestion, moving to next leg", v65, 2u);
        MEMORY[0x20F2E9420](v65, -1, -1);
      }

      MultiSportWorkoutTracker.moveToNextLeg(suggestedConfiguration:date:)(v38, v74);
    }

LABEL_53:
    return;
  }

  v38 = v75;
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_61;
  }

  v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 >= v39)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v4 < v39)
  {
    v40 = *(v37 + 32 + 8 * v4);
    v41 = *(v37 + 32 + 8 * v7);
    v42 = v40;
    goto LABEL_24;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  swift_once();
LABEL_31:
  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static WOLog.multisport);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_20AEA4000, v48, v49, "Entering transition from CM notification", v50, 2u);
    MEMORY[0x20F2E9420](v50, -1, -1);
  }

  v51 = type metadata accessor for Date();
  v52 = *(v51 - 8);
  (*(v52 + 16))(v19, v74, v51);
  v53 = 1;
  (*(v52 + 56))(v19, 0, 1, v51);
  v54 = OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionStartDate;
  swift_beginAccess();
  _s10Foundation4DateVSgWOdTm_1(v19, v3 + v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  v55 = v75;
  v56 = [v75 suggestedActivityUUID];
  if (v56)
  {
    v57 = v56;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v53 = 0;
  }

  v58 = v73;
  (*(v73 + 56))(v12, v53, 1, v4);
  outlined init with take of UUID?(v12, v15);
  if ((*(v58 + 48))(v15, 1, v4))
  {
    _s10Foundation4DateVSgWOhTm_7(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v59 = 0;
    v60 = 0;
  }

  else
  {
    (*(v58 + 16))(v7, v15, v4);
    _s10Foundation4DateVSgWOhTm_7(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v59 = UUID.uuidString.getter();
    v60 = v70;
    (*(v58 + 8))(v7, v4);
  }

  v71 = (v3 + OBJC_IVAR___WOMultiSportWorkoutTracker_lastAutoTransitionUUIDString);
  *v71 = v59;
  v71[1] = v60;

  MultiSportWorkoutTracker.enterTransition(suggestedConfiguration:date:)(v55, v74);
}

uint64_t MultiSportWorkoutTracker.grabAutoTransitionValues(fromMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v44 - v6;
  v8 = type metadata accessor for UUID();
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v44 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000031, 0x800000020B45E470), (v22 & 1) == 0))
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_10;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v21, v47);
  v23 = swift_dynamicCast();
  (*(v17 + 56))(v15, v23 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_10:
    v27 = &_s10Foundation4DateVSgMd;
    v28 = &_s10Foundation4DateVSgMR;
    v29 = v15;
    goto LABEL_11;
  }

  v44[0] = *(v17 + 32);
  v44[1] = v17 + 32;
  (v44[0])(v20, v15, v16);
  if (!*(a1 + 16))
  {
    goto LABEL_24;
  }

  v24 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000032, 0x800000020B45E4B0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_24;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v24, v47);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  UUID.init(uuidString:)();

  v26 = v45;
  if ((*(v45 + 48))(v7, 1, v8) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v27 = &_s10Foundation4UUIDVSgMd;
    v28 = &_s10Foundation4UUIDVSgMR;
    v29 = v7;
LABEL_11:
    _s10Foundation4DateVSgWOhTm_7(v29, v27, v28);
LABEL_12:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA4UUIDVtMd, &_s10Foundation4DateV_AA4UUIDVtMR);
    return (*(*(v30 - 8) + 56))(a2, 1, 1, v30);
  }

  v32 = v7;
  v33 = *(v26 + 32);
  v33(v11, v32, v8);
  if (!*(a1 + 16) || (v34 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x800000020B45E4F0), (v35 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v34, v47), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (v36 = v46, v37 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B45E520), (v38 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v37, v47), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (v39 = v46, v40 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x800000020B45E550), (v41 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v40, v47), (swift_dynamicCast() & 1) == 0))
  {
    (*(v45 + 8))(v11, v8);
LABEL_24:
    (*(v17 + 8))(v20, v16);
    goto LABEL_12;
  }

  MultiSportWorkoutTracker.appendValues(distance:time:pace:)(v39, v36, v46);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA4UUIDVtMd, &_s10Foundation4DateV_AA4UUIDVtMR);
  v43 = *(v42 + 48);
  (v44[0])(a2, v20, v16);
  v33((a2 + v43), v11, v8);
  return (*(*(v42 - 8) + 56))(a2, 0, 1, v42);
}

Swift::Void __swiftcall MultiSportWorkoutTracker.recoverState(sessionActivity:)(NLSessionActivity *sessionActivity)
{
  v1 = [(NLSessionActivity *)sessionActivity builder];
  if (v1)
  {
    v2 = v1;
    v3 = [(HKLiveWorkoutBuilder *)v2 workoutActivities];
    _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = [(HKLiveWorkoutBuilder *)v2 metadata];
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    MultiSportWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(v4, v6);
  }
}

Swift::Void __swiftcall MultiSportWorkoutTracker.recoverState(workoutActivities:builderMetadata:)(Swift::OpaquePointer workoutActivities, Swift::OpaquePointer builderMetadata)
{
  v4 = v2;
  rawValue = builderMetadata._rawValue;
  v189 = type metadata accessor for UUID();
  v182 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v5);
  v188 = &v179 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v194 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v187 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v191 = &v179 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v192 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v203 = &v179 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA4UUIDVtSgMd, &_s10Foundation4DateV_AA4UUIDVtSgMR);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v184 = &v179 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v183 = &v179 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v179 - v27;
  v29 = OBJC_IVAR___WOMultiSportWorkoutTracker_firstActivityStarted;
  swift_beginAccess();
  *(v2 + v29) = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_AA4UUIDVtMd, &_s10Foundation4DateV_AA4UUIDVtMR);
  v186 = *(v30 - 8);
  v31 = *(v186 + 56);
  v195 = v28;
  v190 = v30;
  v31(v28, 1, 1);

  v207[0] = specialized Array._copyToContiguousArray()(v32);
  specialized MutableCollection<>.sort(by:)(v207);
  v181 = 0;
  v33 = v207[0];

  v34 = specialized Collection.dropLast(_:)(1, v33);
  v204 = v35;
  v37 = v36;
  v39 = v38;

  v40 = (v39 >> 1);
  v193 = v37;
  v196 = v34;
  v199 = v4;
  v198 = v7;
  v201 = (v39 >> 1);
  if (v37 != (v39 >> 1))
  {
    v180 = v33;
    v202 = (v194 + 56);
    swift_unknownObjectRetain();
    *&v41 = 138412546;
    v197 = v41;
    v42 = v193;
    while (1)
    {
      if (v42 >= v40)
      {
        __break(1u);
        goto LABEL_75;
      }

      v43 = one-time initialization token for multisport;
      v44 = v204[v42];
      if (v43 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      v46 = __swift_project_value_buffer(v45, static WOLog.multisport);
      v47 = v44;
      v3 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v3, v48))
      {
        v200 = v46;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v207[0] = v51;
        *v49 = v197;
        *(v49 + 4) = v47;
        *v50 = v47;
        *(v49 + 12) = 2080;
        v52 = [v47 metadata];
        if (v52)
        {
          v53 = v52;
          v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v54 = 0;
        }

        v206[0] = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
        v55 = Optional.description.getter();
        v57 = v56;

        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v207);

        *(v49 + 14) = v58;
        _os_log_impl(&dword_20AEA4000, v3, v48, "Restoring from earlier activity %@ with metadata %s", v49, 0x16u);
        _s10Foundation4DateVSgWOhTm_7(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v50, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x20F2E9420](v51, -1, -1);
        MEMORY[0x20F2E9420](v49, -1, -1);

        v4 = v199;
        v7 = v198;
        v40 = v201;
      }

      else
      {
      }

      v59 = [v47 endDate];
      if (!v59)
      {
        break;
      }

      v33 = v59;
      v60 = v203;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*v202)(v60, 0, 1, v7);
      _s10Foundation4DateVSgWOhTm_7(v60, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v61 = [v47 workoutConfiguration];
      [v61 activityType];

      v62 = _HKWorkoutDistanceTypeForActivityType();
      v63 = 0.0;
      v64 = 0.0;
      if (v62)
      {
        v65 = v62;
        v66 = [v47 statisticsForType_];
        if (v66)
        {
          v33 = v66;
          v67 = [v66 sumQuantity];
          if (v67)
          {
            v68 = v67;
            v69 = [objc_opt_self() meterUnit];
            [v68 doubleValueForUnit_];
            v64 = v70;

            v71 = v33;
          }

          else
          {
            v71 = v65;
            v65 = v33;
          }

          v40 = v201;
        }
      }

      v37 = &selRef_adjustedStatisticsForStatistics_;
      [v47 duration];
      v73 = v72;
      [v47 duration];
      if (v74 > 15.0)
      {
        [v47 duration];
        v63 = v64 / v75;
      }

      ++v42;
      MultiSportWorkoutTracker.appendValues(distance:time:pace:)(v64, v73, v63);

      if (v40 == v42)
      {
        swift_unknownObjectRelease();
        v33 = v180;
        goto LABEL_26;
      }
    }

    swift_unknownObjectRelease();
    v76 = v203;
    (*v202)(v203, 1, 1, v7);
    _s10Foundation4DateVSgWOhTm_7(v76, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_20AEA4000, v77, v78, "Earlier activity does not have an end date, but we have activities after this point. Giving up.", v79, 2u);
      MEMORY[0x20F2E9420](v79, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    goto LABEL_113;
  }

LABEL_26:
  if ((v33 & 0x8000000000000000) == 0 && (v33 & 0x4000000000000000) == 0)
  {
    v80 = *(v33 + 16);
    if (v80)
    {
      goto LABEL_29;
    }

LABEL_107:

    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v162 = type metadata accessor for Logger();
    __swift_project_value_buffer(v162, static WOLog.multisport);
    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      *v165 = 0;
      _os_log_impl(&dword_20AEA4000, v163, v164, "There are no activities to restore from, skipping restore.", v165, 2u);
      MEMORY[0x20F2E9420](v165, -1, -1);
    }

    goto LABEL_112;
  }

  v80 = __CocoaSet.count.getter();
  if (!v80)
  {
    goto LABEL_107;
  }

LABEL_29:
  v81 = __OFSUB__(v80, 1);
  v82 = v80 - 1;
  if (v81)
  {
    __break(1u);
    goto LABEL_115;
  }

  if ((v33 & 0xC000000000000001) != 0)
  {
LABEL_115:
    v83 = MEMORY[0x20F2E7A20](v82, v33);
    goto LABEL_34;
  }

  if ((v82 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    swift_once();
LABEL_36:
    v87 = type metadata accessor for Logger();
    __swift_project_value_buffer(v87, static WOLog.multisport);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 0;
      v91 = "Last activity in recovery has already ended. We must have failed to transition. This case is currently unhandled.";
LABEL_61:
      _os_log_impl(&dword_20AEA4000, v88, v89, v91, v90, 2u);
      MEMORY[0x20F2E9420](v90, -1, -1);
    }

LABEL_62:

LABEL_112:
    swift_unknownObjectRelease();
LABEL_113:
    _s10Foundation4DateVSgWOhTm_7(v195, &_s10Foundation4DateV_AA4UUIDVtSgMd, &_s10Foundation4DateV_AA4UUIDVtSgMR);
    return;
  }

  if (v82 >= *(v33 + 16))
  {
    goto LABEL_117;
  }

  v83 = *(v33 + 8 * v82 + 32);
LABEL_34:
  v40 = v83;

  v84 = [v40 endDate];
  if (v84)
  {
    v85 = v192;
    v86 = v84;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v194 + 56))(v85, 0, 1, v7);
    _s10Foundation4DateVSgWOhTm_7(v85, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for multisport == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_120;
  }

  v92 = v192;
  (*(v194 + 56))(v192, 1, 1, v7);
  _s10Foundation4DateVSgWOhTm_7(v92, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v88 = [v40 workoutConfiguration];
  v93 = [v88 activityType];

  if (v93 == 83)
  {
    if (v193 == v201)
    {
      if (one-time initialization token for multisport != -1)
      {
        swift_once();
      }

      v94 = type metadata accessor for Logger();
      __swift_project_value_buffer(v94, static WOLog.multisport);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v88, v89))
      {
        goto LABEL_62;
      }

      v90 = swift_slowAlloc();
      *v90 = 0;
      v91 = "Recovery says that we are in transition, but we have no previous legs. Giving up.";
      goto LABEL_61;
    }

    if (v201 <= v193)
    {
      __break(1u);
    }

    else
    {
      v88 = v204[v201 - 1];
      v107 = [v88 metadata];
      if (v107)
      {
        v108 = v40;
        v109 = v107;
        v110 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v110 + 16) && (v111 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000020B458830), (v112 & 1) != 0))
        {
          outlined init with copy of Any(*(v110 + 56) + 32 * v111, v207);

          if (swift_dynamicCast())
          {
            v113 = v206[0];
            v114 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
            swift_beginAccess();
            *(v4 + v114) = 2;
            v115 = *(v4 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
            swift_getKeyPath();
            swift_getKeyPath();
            v206[0] = v113;
            v116 = v108;
            v117 = v115;
            static Published.subscript.setter();

            goto LABEL_78;
          }
        }

        else
        {
        }
      }

      if (one-time initialization token for multisport == -1)
      {
LABEL_65:
        v119 = type metadata accessor for Logger();
        __swift_project_value_buffer(v119, static WOLog.multisport);
        v120 = Logger.logObject.getter();
        v121 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v120, v121))
        {
          v122 = v40;
          v123 = swift_slowAlloc();
          *v123 = 0;
          _os_log_impl(&dword_20AEA4000, v120, v121, "Previous leg does not have a leg metadata key. Giving up.", v123, 2u);
          MEMORY[0x20F2E9420](v123, -1, -1);

          goto LABEL_112;
        }

        goto LABEL_62;
      }
    }

    swift_once();
    goto LABEL_65;
  }

  v95 = [v40 metadata];
  if (!v95)
  {
    goto LABEL_57;
  }

  v96 = v95;
  v97 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v97 + 16) || (v98 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000020B458830), (v99 & 1) == 0))
  {

    goto LABEL_57;
  }

  outlined init with copy of Any(*(v97 + 56) + 32 * v98, v207);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_57:
    if (one-time initialization token for multisport != -1)
    {
      swift_once();
    }

    v118 = type metadata accessor for Logger();
    __swift_project_value_buffer(v118, static WOLog.multisport);
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v88, v89))
    {
      goto LABEL_62;
    }

    v90 = swift_slowAlloc();
    *v90 = 0;
    v91 = "Current leg does not have a leg metadata key. Giving up.";
    goto LABEL_61;
  }

  v7 = v206[0];
  v203 = v40;
  v100 = v40;
  v101 = v183;
  MultiSportWorkoutTracker.grabAutoTransitionValues(fromMetadata:)(rawValue, v183);
  v102 = v101;
  v103 = v195;
  _s10Foundation4DateVSgWOdTm_1(v102, v195, &_s10Foundation4DateV_AA4UUIDVtSgMd, &_s10Foundation4DateV_AA4UUIDVtSgMR);
  v104 = v184;
  _s10Foundation4DateVSgWOcTm_4(v103, v184, &_s10Foundation4DateV_AA4UUIDVtSgMd, &_s10Foundation4DateV_AA4UUIDVtSgMR);
  v105 = (*(v186 + 48))(v104, 1, v190);
  _s10Foundation4DateVSgWOhTm_7(v104, &_s10Foundation4DateV_AA4UUIDVtSgMd, &_s10Foundation4DateV_AA4UUIDVtSgMR);
  v106 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
  swift_beginAccess();
  *(v4 + v106) = v105 != 1;
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v124 = type metadata accessor for Logger();
  __swift_project_value_buffer(v124, static WOLog.multisport);
  v125 = v100;
  v37 = Logger.logObject.getter();
  LOBYTE(v40) = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v37, v40))
  {
    v33 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v206[0] = v3;
    *v33 = 138412546;
    *(v33 + 4) = v125;
    *v42 = v125;
    *(v33 + 12) = 2080;
    v126 = [v125 metadata];
    if (v126)
    {
      v127 = v126;
      v128 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
LABEL_75:
      v128 = 0;
    }

    v205 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
    v129 = Optional.description.getter();
    v131 = v130;

    v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, v206);

    *(v33 + 14) = v132;
    _os_log_impl(&dword_20AEA4000, v37, v40, "Restoring current activity %@ with metadata %s", v33, 0x16u);
    _s10Foundation4DateVSgWOhTm_7(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x20F2E9420](v3, -1, -1);
    MEMORY[0x20F2E9420](v33, -1, -1);
  }

  else
  {
  }

  v4 = v199;
  v133 = *(v199 + OBJC_IVAR___WOMultiSportWorkoutTracker_configuration);
  swift_getKeyPath();
  swift_getKeyPath();
  v206[0] = v7;
  v134 = v133;
  static Published.subscript.setter();
  v108 = v203;
LABEL_78:
  v203 = v108;
  v135 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  rawValue = v135;
  v136 = *&v135[v4];
  v205 = MEMORY[0x277D84F90];
  if (v136 >> 62)
  {
    v40 = __CocoaSet.count.getter();
  }

  else
  {
    v40 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v137 = 0;
  v138 = MEMORY[0x277D84F90];
  while (v40 != v137)
  {
    if ((v136 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v137, v136);
      v139 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        goto LABEL_118;
      }
    }

    else
    {
      if (v137 >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_119;
      }

      v139 = v137 + 1;
      if (__OFADD__(v137, 1))
      {
        goto LABEL_118;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v137;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v141);
      if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v138 = v205;
      v137 = v139;
    }
  }

  v142 = v190;
  if (v138 >> 62)
  {
    v144 = __CocoaSet.count.getter();
    if (!v144)
    {
      goto LABEL_125;
    }
  }

  else
  {
    v143 = (v138 & 0xFFFFFFFFFFFFFF8);
    v144 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v144)
    {
      goto LABEL_125;
    }
  }

  if (v144 < 1)
  {
    __break(1u);
    goto LABEL_155;
  }

  v145 = 0;
  v200 = v138 & 0xC000000000000001;
  v146 = (v194 + 8);
  v204 = (v186 + 48);
  v194 += 16;
  v193 = (v182 + 16);
  v192 = (v182 + 8);
  v202 = v138;
  *&v197 = v146;
  v201 = v144;
  do
  {
    if (v200)
    {
      v150 = MEMORY[0x20F2E7A20](v145, v138);
    }

    else
    {
      v150 = *(v138 + 8 * v145 + 32);
      swift_unknownObjectRetain();
    }

    v151 = [v203 startDate];
    v152 = v191;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v153.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v154 = *v146;
    v155 = v198;
    (*v146)(v152, v198);
    v156 = *v204;
    v157 = v195;
    if ((*v204)(v195, 1, v142))
    {
      isa = 0;
    }

    else
    {
      v159 = v187;
      (*v194)(v187, v157, v155);
      v160.super.isa = Date._bridgeToObjectiveC()().super.isa;
      v157 = v195;
      isa = v160.super.isa;
      v161 = v159;
      v142 = v190;
      v154(v161, v155);
    }

    if (v156(v157, 1, v142))
    {
      v149.super.isa = 0;
    }

    else
    {
      v147 = v188;
      v148 = v189;
      (v193->isa)(v188, v157 + *(v142 + 48), v189);
      v149.super.isa = UUID._bridgeToObjectiveC()().super.isa;
      (*v192)(v147, v148);
    }

    v145 = (v145 + 1);
    [v150 didRestoreActivityType:v199 startDate:v153.super.isa autoTransitionStartDate:isa autoTransitionUUID:v149.super.isa];
    swift_unknownObjectRelease();

    v138 = v202;
    v146 = v197;
  }

  while (v201 != v145);
LABEL_125:

  v166 = *&rawValue[v199];
  v205 = MEMORY[0x277D84F90];
  if (v166 >> 62)
  {
LABEL_150:
    v167 = __CocoaSet.count.getter();
  }

  else
  {
    v167 = *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v168 = 0;
  v169 = MEMORY[0x277D84F90];
  while (v167 != v168)
  {
    if ((v166 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v168, v166);
      v170 = v168 + 1;
      if (__OFADD__(v168, 1))
      {
        goto LABEL_148;
      }
    }

    else
    {
      if (v168 >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_149;
      }

      v170 = v168 + 1;
      if (__OFADD__(v168, 1))
      {
LABEL_148:
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }
    }

    v171 = swift_unknownObjectWeakLoadStrong();

    ++v168;
    if (v171)
    {
      MEMORY[0x20F2E6F30](v172);
      if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v169 = v205;
      v168 = v170;
    }
  }

  if (!(v169 >> 62))
  {
    v173 = *((v169 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v143 = &v208;
    v174 = v199;
    v175 = v203;
    if (v173)
    {
      goto LABEL_141;
    }

LABEL_152:
    swift_unknownObjectRelease();

LABEL_153:

    goto LABEL_113;
  }

  v173 = __CocoaSet.count.getter();
  v143 = &v208;
  v174 = v199;
  v175 = v203;
  if (!v173)
  {
    goto LABEL_152;
  }

LABEL_141:
  if (v173 >= 1)
  {
    for (i = 0; i != v173; ++i)
    {
      if ((v169 & 0xC000000000000001) != 0)
      {
        v177 = MEMORY[0x20F2E7A20](i, v169);
      }

      else
      {
        v177 = *(v169 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v177 didUpdateLastLegValues_];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    v178 = v203;

    goto LABEL_153;
  }

LABEL_155:
  __break(1u);

  __break(1u);
}

Swift::Void __swiftcall MultiSportWorkoutTracker.notifyObserversValuesChanged()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v13 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_25:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v5;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v9);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v13;
      v5 = v7;
    }
  }

  if (!(v6 >> 62))
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_27:

    return;
  }

  v10 = __CocoaSet.count.getter();
  if (!v10)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v10 >= 1)
  {
    for (i = 0; i != v10; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F2E7A20](i, v6);
      }

      else
      {
        v12 = *(v6 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v12 didUpdateLastLegValues_];
      swift_unknownObjectRelease();
    }

    goto LABEL_27;
  }

  __break(1u);
}

void MultiSportWorkoutTracker.appendValues(distance:time:pace:)(double a1, double a2, double a3)
{
  v4 = v3;
  v8 = LiveWorkoutConfiguration.currentActivityType.getter();
  v9 = [v8 identifier];

  v10 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportDistancesByActivity;
  swift_beginAccess();
  v11 = *&v4[v10];
  if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(v9), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = a1;
  v67[0] = v14;
  specialized Array.append<A>(contentsOf:)(inited);
  v16 = v14;
  v17 = LiveWorkoutConfiguration.currentActivityType.getter();
  v18 = [v17 identifier];

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = *&v4[v10];
  *&v4[v10] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v16, v18, isUniquelyReferenced_nonNull_native);
  *&v4[v10] = v66;
  swift_endAccess();
  v20 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes;
  v21 = *&v4[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v20] = v21;
  if ((v22 & 1) == 0)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    *&v4[v20] = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  *&v21[8 * v24 + 32] = a2;
  *&v4[v20] = v21;
  v25 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces;
  v26 = *&v4[OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportAveragePaces];
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v25] = v26;
  if ((v27 & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
    *&v4[v25] = v26;
  }

  v29 = *(v26 + 2);
  v28 = *(v26 + 3);
  if (v29 >= v28 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v26);
  }

  *(v26 + 2) = v29 + 1;
  *&v26[8 * v29 + 32] = a3;
  *&v4[v25] = v26;
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static WOLog.multisport);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_20AEA4000, v31, v32, "Did append current values. New storage:", v33, 2u);
    MEMORY[0x20F2E9420](v33, -1, -1);
  }

  v34 = v4;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v67[0] = v38;
    *v37 = 136315138;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySo21HKWorkoutActivityTypeVSaySdGG_SSs5NeverOTg50132_s11WorkoutCore010MultiSportA7TrackerC41stringArrayForPreviousMultisportDistances33_0E6D109B9F68067E5BEC40CEBADAD9E2LLSaySSGvgSSSo21deF26V3key_SaySdG5valuet_tXEfU_Tf1cn_n(v39);
    v41 = v40;

    v42 = MEMORY[0x20F2E6F70](v41, MEMORY[0x277D837D0]);
    v44 = v43;

    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v67);

    *(v37 + 4) = v45;
    _os_log_impl(&dword_20AEA4000, v35, v36, "Distances: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x20F2E9420](v38, -1, -1);
    MEMORY[0x20F2E9420](v37, -1, -1);
  }

  v46 = v34;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v67[0] = v50;
    *v49 = 136315138;

    v52 = MEMORY[0x20F2E6F70](v51, MEMORY[0x277D839F8]);
    v54 = v53;

    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v67);

    *(v49 + 4) = v55;
    _os_log_impl(&dword_20AEA4000, v47, v48, "Times: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x20F2E9420](v50, -1, -1);
    MEMORY[0x20F2E9420](v49, -1, -1);
  }

  v56 = v46;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v67[0] = v60;
    *v59 = 136315138;

    v62 = MEMORY[0x20F2E6F70](v61, MEMORY[0x277D839F8]);
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v67);

    *(v59 + 4) = v65;
    _os_log_impl(&dword_20AEA4000, v57, v58, "Paces: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v60);
    MEMORY[0x20F2E9420](v60, -1, -1);
    MEMORY[0x20F2E9420](v59, -1, -1);
  }
}

void MultiSportWorkoutTracker.appendValues(upTo:)(unint64_t a1)
{
  v4 = v1;
  v6 = OBJC_IVAR___WOMultiSportWorkoutTracker_distanceAccumulator;

  Date.timeIntervalSinceReferenceDate.getter();
  v66 = WindowedAccumulator.value(for:)(v7);
  v8 = *&v66.is_nil;
  v10 = v9;

  if (v10)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v8;
  }

  v12 = OBJC_IVAR___WOMultiSportWorkoutTracker_elapsedTimeAccumulator;

  Date.timeIntervalSinceReferenceDate.getter();
  v67 = WindowedAccumulator.value(for:)(v13);
  v14 = *&v67.is_nil;
  v16 = v15;

  v17 = v14;
  if (v16)
  {
    v17 = 0.0;
  }

  v18 = *(v4 + OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportTimes);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 32);
    do
    {
      v21 = *v20++;
      v17 = v17 - v21;
      --v19;
    }

    while (v19);
  }

  if (v17 > 0.0)
  {
    v22 = v17;
  }

  else
  {
    v22 = 0.0;
  }

  Strong = OBJC_IVAR___WOMultiSportWorkoutTracker_averagePaceAccumulator;

  Date.timeIntervalSinceReferenceDate.getter();
  v68 = WindowedAccumulator.value(for:)(v24);
  v25 = *&v68.is_nil;
  v27 = v26;

  if (v27)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v25;
  }

  MultiSportWorkoutTracker.appendValues(distance:time:pace:)(v11, v22, v28);
  v29 = *(v4 + v12);

  Date.timeIntervalSinceReferenceDate.getter();
  v31 = v29 + 48;
  v32 = *(v29 + 48);
  v33 = *(v32 + 16);
  if (!v33)
  {
LABEL_19:
    v34 = *(v32 + 16);
    goto LABEL_24;
  }

  v12 = 0;
  v3 = 40;
  while (*(v32 + v3) > v30)
  {
    ++v12;
    v3 += 16;
    if (v33 == v12)
    {
      goto LABEL_19;
    }
  }

  v2 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
    goto LABEL_103;
  }

  v11 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v31 = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v36 = *(v32 + 16);
    if (v2 != v36)
    {
      v53 = v32 + v3 + 8;
      while (v2 < v36)
      {
        v56 = *(v53 + 8);
        if (v56 > v11)
        {
          if (v2 != v12)
          {
            if (v12 >= v36)
            {
              __break(1u);
              goto LABEL_73;
            }

            v54 = v32 + 32 + 16 * v12;
            v55 = *v54;
            *v54 = *v53;
            *(v54 + 8) = v56;
            *v53 = v55;
            v36 = *(v32 + 16);
          }

          ++v12;
        }

        ++v2;
        v53 += 16;
        if (v2 == v36)
        {
          goto LABEL_23;
        }
      }

LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

LABEL_23:
    *v31 = v32;
    v34 = *(v32 + 16);
    v33 = v12;
    if (v34 < v12)
    {
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

LABEL_24:
    specialized Array.replaceSubrange<A>(_:with:)(v33, v34);

    v37 = *(v4 + v6);

    Date.timeIntervalSinceReferenceDate.getter();
    v31 = v37 + 48;
    v32 = *(v37 + 48);
    v39 = *(v32 + 16);
    if (!v39)
    {
LABEL_28:
      v40 = *(v32 + 16);
      goto LABEL_33;
    }

    v6 = 0;
    v2 = 40;
    while (*(v32 + v2) > v38)
    {
      ++v6;
      v2 += 16;
      if (v39 == v6)
      {
        goto LABEL_28;
      }
    }

    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = v38;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      *v31 = v32;
      if (v41)
      {
        goto LABEL_31;
      }
    }

    v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
LABEL_31:
    v36 = *(v32 + 16);
    if (v12 != v36)
    {
LABEL_73:
      v57 = v32 + v2 + 8;
      while (v12 < v36)
      {
        v58 = *(v57 + 8);
        if (v58 > v11)
        {
          if (v12 != v6)
          {
            if (v6 >= v36)
            {
              goto LABEL_95;
            }

            v59 = v32 + 32 + 16 * v6;
            v60 = *v59;
            *v59 = *v57;
            *(v59 + 8) = v58;
            *v57 = v60;
            v36 = *(v32 + 16);
          }

          ++v6;
        }

        ++v12;
        v57 += 16;
        if (v12 == v36)
        {
          goto LABEL_32;
        }
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      v49 = __CocoaSet.count.getter();
      goto LABEL_44;
    }

LABEL_32:
    *v31 = v32;
    v40 = *(v32 + 16);
    v39 = v6;
    if (v40 < v6)
    {
      goto LABEL_100;
    }

LABEL_33:
    specialized Array.replaceSubrange<A>(_:with:)(v39, v40);

    v42 = *(v4 + Strong);

    Date.timeIntervalSinceReferenceDate.getter();
    v31 = v42 + 48;
    a1 = *(v42 + 48);
    v44 = *(a1 + 16);
    if (!v44)
    {
LABEL_37:
      v45 = *(a1 + 16);
      goto LABEL_42;
    }

    v32 = 0;
    v6 = 40;
    while (*(a1 + v6) > v43)
    {
      ++v32;
      v6 += 16;
      if (v44 == v32)
      {
        goto LABEL_37;
      }
    }

    Strong = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = v43;
      v46 = swift_isUniquelyReferenced_nonNull_native();
      *v31 = a1;
      if (v46)
      {
        goto LABEL_40;
      }
    }

    a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
LABEL_40:
    v47 = *(a1 + 16);
    if (Strong != v47)
    {
      v61 = a1 + v6 + 8;
      while (Strong < v47)
      {
        v64 = *(v61 + 8);
        if (v64 > v11)
        {
          if (Strong != v32)
          {
            if (v32 >= v47)
            {
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            v62 = a1 + 32 + 16 * v32;
            v63 = *v62;
            *v62 = *v61;
            *(v62 + 8) = v64;
            *v61 = v63;
            v47 = *(a1 + 16);
          }

          ++v32;
        }

        ++Strong;
        v61 += 16;
        if (Strong == v47)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_94;
    }

LABEL_41:
    *v31 = a1;
    v45 = *(a1 + 16);
    v44 = v32;
    if (v45 < v32)
    {
      goto LABEL_101;
    }

LABEL_42:
    specialized Array.replaceSubrange<A>(_:with:)(v44, v45);

    v48 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
    swift_beginAccess();
    a1 = *(v4 + v48);
    v65 = MEMORY[0x277D84F90];
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      goto LABEL_96;
    }

    v49 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_44:
    v2 = a1 & 0xC000000000000001;

    v32 = 0;
    v31 = MEMORY[0x277D84F90];
    while (v49 != v32)
    {
      if (v2)
      {
        v6 = MEMORY[0x20F2E7A20](v32, a1);
        v3 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_90;
        }
      }

      else
      {
        if (v32 >= *(v12 + 16))
        {
          goto LABEL_91;
        }

        v6 = *(a1 + 8 * v32 + 32);

        v3 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_90;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      ++v32;
      if (Strong)
      {
        MEMORY[0x20F2E6F30](v50);
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v31 = v65;
        v32 = v3;
      }
    }

    if (v31 >> 62)
    {
      a1 = __CocoaSet.count.getter();
      if (!a1)
      {
        goto LABEL_98;
      }
    }

    else
    {
      a1 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_98;
      }
    }

    if (a1 >= 1)
    {
      break;
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
  }

  v51 = 0;
  do
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x20F2E7A20](v51, v31);
    }

    else
    {
      v52 = *(v31 + 8 * v51 + 32);
      swift_unknownObjectRetain();
    }

    ++v51;
    [v52 didUpdateLastLegValues_];
    swift_unknownObjectRelease();
  }

  while (a1 != v51);
LABEL_98:
}