id HeartRateZonesAccumulator._mainThread_handleActiveConfigurationLoad(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_2(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (one-time initialization token for zones != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.zones);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 136315138;
      v15 = _typeName(_:qualified:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &aBlock);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20AEA4000, v11, v12, "%s is loading HeartRateZones from configuration", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F2E9420](v14, -1, -1);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    if (!a1)
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        aBlock = v36;
        *v35 = 136315138;
        v37 = _typeName(_:qualified:)();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &aBlock);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_20AEA4000, v33, v34, "%s No HeartRateConfiguration. Defaulting to automatic type but with no heart rate zones", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x20F2E9420](v36, -1, -1);
        MEMORY[0x20F2E9420](v35, -1, -1);
      }

      v40 = [v2 builder];
      LOBYTE(aBlock) = 0;
      HKLiveWorkoutBuilder.heartRateZonesConfigurationType.setter(&aBlock);

      v41 = [v2 builder];
      v42 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B456BF0);
      v73 = closure #2 in HKLiveWorkoutBuilder.heartRateZones.setter;
      v74 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v70 = 1107296256;
      v71 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v72 = &block_descriptor_47;
      v43 = _Block_copy(&aBlock);
      [v41 _removeMetadata_completion_];
      _Block_release(v43);

      goto LABEL_28;
    }

    v18 = [v2 builder];
    LOBYTE(aBlock) = *(a1 + 16);
    HKLiveWorkoutBuilder.heartRateZonesConfigurationType.setter(&aBlock);

    swift_retain_n();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136315650;
      v23 = _typeName(_:qualified:)();
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &aBlock);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v26 = type metadata accessor for HeartRateZone();

      v28 = MEMORY[0x20F2E6F70](v27, v26);
      v29 = v2;
      v31 = v30;

      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v31, &aBlock);
      v2 = v29;

      *(v21 + 14) = v32;
      *(v21 + 22) = 1024;
      LODWORD(v29) = *(a1 + 49);

      *(v21 + 24) = v29;

      _os_log_impl(&dword_20AEA4000, v19, v20, "%s heartRateConfiguration.zones=%s heartRateConfiguration.hasDefaultRestingHeartRate=%{BOOL}d", v21, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {
    }

    if (*(a1 + 48) != 1)
    {
      goto LABEL_26;
    }

    v44 = [v2 builder];
    v45 = *(a1 + 40);

    HKLiveWorkoutBuilder.heartRateZones.setter(v46);

    v47 = v45 >> 62 ? __CocoaSet.count.getter() : *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = MEMORY[0x277D84F90];
    if (!v47)
    {
      break;
    }

    v68 = v2;
    aBlock = MEMORY[0x277D84F90];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v47 < 0)
    {
      __break(1u);
      return result;
    }

    v50 = 0;
    v2 = (v45 & 0xC000000000000001);
    while (1)
    {
      if (v2)
      {
        v51 = MEMORY[0x20F2E7A20](v50, v45);
      }

      else
      {
        v51 = *(v45 + 8 * v50 + 32);
      }

      v52 = v51[2];
      v53 = v51[3];
      v55 = *(v51 + 4);
      v54 = *(v51 + 5);
      type metadata accessor for LiveHeartRateZone();
      v56 = swift_allocObject();
      *(v56 + 48) = 0;
      swift_beginAccess();
      *(v56 + 48) = 0;

      v57 = floor(v52);
      v58 = floor(v53);
      if (v57 > v58)
      {
        break;
      }

      ++v50;
      *(v56 + 16) = v57;
      *(v56 + 24) = v58;
      *(v56 + 32) = v55;
      *(v56 + 40) = v54;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v47 == v50)
      {
        v48 = aBlock;
        v2 = v68;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C13HeartRateZoneCGMR);
  v59 = swift_allocObject();
  *(v59 + 24) = 0;
  *(v59 + 32) = 1;
  *(v59 + 16) = v48;
  swift_beginAccess();
  *(v59 + 24) = 0;
  *(v59 + 32) = 257;
  *&v2[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_liveHeartRateZonesInternal] = v59;

  v60 = *(a1 + 49);
  v61 = [v2 builder];
  if (v60)
  {
    v62 = *(a1 + 32);
    v63 = v62;
    HKLiveWorkoutBuilder.defaultRestingHeartRate.setter(v62);

LABEL_26:

    goto LABEL_28;
  }

  v64 = MEMORY[0x20F2E6C00](0xD000000000000028, 0x800000020B456C30);
  v73 = closure #2 in HKLiveWorkoutBuilder.defaultRestingHeartRate.setter;
  v74 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v71 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v72 = &block_descriptor_50;
  v65 = _Block_copy(&aBlock);
  [v61 _removeMetadata_completion_];
  _Block_release(v65);

LABEL_28:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong heartRateZoneConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  result = [v2 isAccumulating];
  if (result)
  {
    return [v2 update];
  }

  return result;
}

Swift::Void __swiftcall HeartRateZonesAccumulator.notifyZonesUpdateIfNeeded()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong heartRateZoneConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  if ([v0 isAccumulating])
  {
    [v0 update];
  }
}

Swift::Void __swiftcall HeartRateZonesAccumulator.finalZonesElapsedTimes(_:)(Swift::OpaquePointer a1)
{
  swift_getObjectType();
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.zones);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v14);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    v11 = ZonesAccumulator.zonesSnapshotString.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20AEA4000, v4, v5, "%s final zones: (%s)", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  HeartRateZonesAccumulator.updateMetadata()();
}

Swift::Void __swiftcall HeartRateZonesAccumulator.updateMetadata()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v25 - v8;
  v10 = v0[OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_shouldSplitByActivity];
  v11 = [v1 builder];
  MEMORY[0x28223BE20](v11, v12);
  *(&v25 - 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  if (v10 == 1)
  {
    v13 = OS_dispatch_queue.sync<A>(execute:)();
    v14 = v27;
    MEMORY[0x28223BE20](v13, v15);
    *(&v25 - 2) = v1;
    OS_dispatch_queue.sync<A>(execute:)();
    v16 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    v17 = outlined init with copy of Date?(v1 + v16, v6);
    MEMORY[0x28223BE20](v17, v18);
    *(&v25 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.updateCurrentActivityHeartRate(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(v14, v9, v6, v25, v26);

    outlined destroy of Date?(v6);
    outlined destroy of Date?(v9);
  }

  else
  {
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.elapsedTimeInHeartRateZones.setter(v27);

    v19 = [v1 builder];
    MEMORY[0x28223BE20](v19, v20);
    *(&v25 - 2) = v1;
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.lastProcessedEntryDateInHeartRateZones.setter(v9);

    v21 = [v1 builder];
    v22 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v22, v9);
    HKLiveWorkoutBuilder.lastProcessedEventDateInHeartRateZones.setter(v9);

    v23 = [v1 builder];
    MEMORY[0x28223BE20](v23, v24);
    *(&v25 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.currentZoneIndexInHeartRateZones.setter(v25, v26);
  }
}

void HeartRateZonesAccumulator.trackTargetZone(for:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v59 - v7;
  v9 = [v1 builder];
  [v9 elapsedTime];
  v11 = v10;

  if (specialized ZonesAlertTrackingProtocol.alertPreconditionSatified(_:)(v11))
  {
    v12 = [a1 quantity];
    [v12 doubleValueForUnit_];
    v14 = v13;

    v15 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone;
    v16 = *&v2[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateTargetZone];
    v17 = COERCE_DOUBLE(HeartRateTargetZone.applicableRange.getter());
    v19 = v18;
    v21 = v20;

    if ((v21 & 1) != 0 || v14 <= 2.22044605e-16)
    {
      v22 = 0;
    }

    else if (v14 >= v19)
    {
      v22 = 3;
    }

    else if (v14 < v17)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    v23 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
    swift_beginAccess();
    v24 = v2[v23];
    if (v22 && v24 != v22)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static WOLog.zones);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v60 = v23;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v62[0] = v29;
        *v28 = 136315394;
        v59[1] = ObjectType;
        v30 = _typeName(_:qualified:)();
        v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v62);

        *(v28 + 4) = v32;
        *(v28 + 12) = 2080;
        v33 = 0xE600000000000000;
        v34 = 0x6E6968746977;
        if (v22 != 2)
        {
          v34 = 0x65766F6261;
          v33 = 0xE500000000000000;
        }

        if (v22 == 1)
        {
          v35 = 0x776F6C6562;
        }

        else
        {
          v35 = v34;
        }

        if (v22 == 1)
        {
          v36 = 0xE500000000000000;
        }

        else
        {
          v36 = v33;
        }

        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v62);

        *(v28 + 14) = v37;
        _os_log_impl(&dword_20AEA4000, v26, v27, "%s should fire alert for: %s", v28, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v29, -1, -1);
        MEMORY[0x20F2E9420](v28, -1, -1);

        v23 = v60;
      }

      else
      {
      }

      v38 = *&v2[v15];
      v39 = objc_allocWithZone(type metadata accessor for WorkoutAlertHeartRateZone());
      v40 = WorkoutAlertHeartRateZone.init(heartRateTargetZone:heartRate:)(v38, v14);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong alertSource:v2 didTriggerAlert:v40];
        swift_unknownObjectRelease();
      }

      static Date.now.getter();

      v42 = type metadata accessor for Date();
      (*(*(v42 - 8) + 56))(v8, 0, 1, v42);
      v43 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
      swift_beginAccess();
      outlined assign with take of Date?(v8, &v2[v43]);
      swift_endAccess();
      v24 = v2[v23];
    }

    if (v24 != v22)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static WOLog.zones);
      v45 = v2;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = 1701736302;
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v61[0] = v50;
        *v49 = 136315650;
        v51 = _typeName(_:qualified:)();
        v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v61);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2080;
        if (v2[v23] > 1u)
        {
          if (v2[v23] == 2)
          {
            v54 = 0xE600000000000000;
            v55 = 0x6E6968746977;
          }

          else
          {
            v54 = 0xE500000000000000;
            v55 = 0x65766F6261;
          }
        }

        else if (v2[v23])
        {
          v54 = 0xE500000000000000;
          v55 = 0x776F6C6562;
        }

        else
        {
          v54 = 0xE400000000000000;
          v55 = 1701736302;
        }

        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v54, v61);

        *(v49 + 14) = v56;
        *(v49 + 22) = 2080;
        if (v22 > 1)
        {
          if (v22 == 2)
          {
            v57 = 0xE600000000000000;
            v48 = 0x6E6968746977;
          }

          else
          {
            v57 = 0xE500000000000000;
            v48 = 0x65766F6261;
          }
        }

        else if (v22)
        {
          v57 = 0xE500000000000000;
          v48 = 0x776F6C6562;
        }

        else
        {
          v57 = 0xE400000000000000;
        }

        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v57, v61);

        *(v49 + 24) = v58;
        _os_log_impl(&dword_20AEA4000, v46, v47, "%s zone state transitioned from: %s to: %s", v49, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v50, -1, -1);
        MEMORY[0x20F2E9420](v49, -1, -1);
      }

      v2[v23] = v22;
    }
  }
}

uint64_t specialized ZonesAlertTrackingProtocol.alertPreconditionSatified(_:)(double a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v36[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v36[-1] - v14;
  v16 = *&v1[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_alertHoldoffTime];
  if (v16 >= a1)
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.zones);
    v19 = v1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_9;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36[0] = v23;
    *v22 = 136315650;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000020B456C80, v36);
    *(v22 + 12) = 2048;
    *(v22 + 14) = a1;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v16;
    v24 = "%s Not alerting. Elapsed time: %f < %f";
    v25 = v21;
    v26 = v20;
    v27 = v22;
    v28 = 32;
    goto LABEL_8;
  }

  v17 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v1[v17], v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v15, v6, v7);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v31 = v30;
    v32 = *(v8 + 8);
    v32(v12, v7);
    v32(v15, v7);
    if (v31 >= 15.0)
    {
      return 1;
    }

    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.zones);
    v20 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v20, v34))
    {
LABEL_9:

      return 0;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000020B456C80, &v35);
    v24 = "%s Not alerting. Enough time not passed between two heart rate alerts";
    v25 = v34;
    v26 = v20;
    v27 = v22;
    v28 = 12;
LABEL_8:
    _os_log_impl(&dword_20AEA4000, v26, v25, v24, v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x20F2E9420](v23, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);
    goto LABEL_9;
  }

  outlined destroy of Date?(v6);
  return 1;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v36[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v36[-1] - v14;
  v16 = *&v1[OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_alertHoldoffTime];
  if (v16 >= a1)
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.zones);
    v19 = v1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_9;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36[0] = v23;
    *v22 = 136315650;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000020B427F50, v36);
    *(v22 + 12) = 2048;
    *(v22 + 14) = a1;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v16;
    v24 = "%s Not alerting. Elapsed time: %f < %f";
    v25 = v21;
    v26 = v20;
    v27 = v22;
    v28 = 32;
    goto LABEL_8;
  }

  v17 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v1[v17], v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v15, v6, v7);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v31 = v30;
    v32 = *(v8 + 8);
    v32(v12, v7);
    v32(v15, v7);
    if (v31 >= 15.0)
    {
      return 1;
    }

    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.zones);
    v20 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v20, v34))
    {
LABEL_9:

      return 0;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000020B427F50, &v35);
    v24 = "%s Not alerting. Enough time not passed between two heart rate alerts";
    v25 = v34;
    v26 = v20;
    v27 = v22;
    v28 = 12;
LABEL_8:
    _os_log_impl(&dword_20AEA4000, v26, v25, v24, v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x20F2E9420](v23, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);
    goto LABEL_9;
  }

  outlined destroy of Date?(v6);
  return 1;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v36[-1] - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v36[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v36[-1] - v14;
  v16 = *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator_alertHoldoffTime];
  if (v16 >= a1)
  {
    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.zones);
    v19 = v1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_9;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36[0] = v23;
    *v22 = 136315650;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000020B456C60, v36);
    *(v22 + 12) = 2048;
    *(v22 + 14) = a1;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v16;
    v24 = "%s Not alerting. Elapsed time: %f < %f";
    v25 = v21;
    v26 = v20;
    v27 = v22;
    v28 = 32;
    goto LABEL_8;
  }

  v17 = OBJC_IVAR___NLSessionActivityPowerAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v1[v17], v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    (*(v8 + 32))(v15, v6, v7);
    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v31 = v30;
    v32 = *(v8 + 8);
    v32(v12, v7);
    v32(v15, v7);
    if (v31 >= 15.0)
    {
      return 1;
    }

    if (one-time initialization token for zones != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static WOLog.zones);
    v20 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v20, v34))
    {
LABEL_9:

      return 0;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v35 = v23;
    *v22 = 136315138;
    *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000020B456C60, &v35);
    v24 = "%s Not alerting. Enough time not passed between two heart rate alerts";
    v25 = v34;
    v26 = v20;
    v27 = v22;
    v28 = 12;
LABEL_8:
    _os_log_impl(&dword_20AEA4000, v26, v25, v24, v27, v28);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x20F2E9420](v23, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);
    goto LABEL_9;
  }

  outlined destroy of Date?(v6);
  return 1;
}

uint64_t HeartRateZonesAccumulator.__ivar_destroyer()
{

  _sSo22NLWorkoutAlertDelegate_pSgXwWOh_0(v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_workoutAlertDelegate);
  _sSo22NLWorkoutAlertDelegate_pSgXwWOh_0(v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_heartRateZoneConfigurationDelegate);
  v1 = v0 + OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;

  return outlined destroy of Date?(v1);
}

id HeartRateZonesAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartRateZonesAccumulator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.getter in conformance HeartRateZonesAccumulator@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.setter in conformance HeartRateZonesAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

void protocol witness for ZonesAlertTrackingProtocol.oldZoneState.getter in conformance HeartRateZonesAccumulator(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void protocol witness for ZonesAlertTrackingProtocol.oldZoneState.setter in conformance HeartRateZonesAccumulator(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityHeartRateZonesAccumulator_oldZoneState;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t type metadata accessor for HeartRateZonesAccumulator(uint64_t a1)
{
  result = type metadata singleton initialization cache for HeartRateZonesAccumulator;
  if (!type metadata singleton initialization cache for HeartRateZonesAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_7Tm@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

void type metadata completion function for HeartRateZonesAccumulator(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t closure #1 in ZonesAccumulator.currentZoneIndex.getterpartial apply@<X0>(uint64_t a1@<X8>)
{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_0(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_1(a1);
}

{
  return _s11WorkoutCore16ZonesAccumulatorC16currentZoneIndexSiSgvgAEyXEfU_TA_1(a1);
}

uint64_t RacePositionStatePublisher.racePositionState.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);
}

uint64_t key path getter for RacePositionStatePublisher.racePositionState : RacePositionStatePublisher@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for RacePositionStatePublisher.racePositionState : RacePositionStatePublisher(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RacePositionStatePublisher.racePositionState.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*RacePositionStatePublisher.racePositionState.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.racePositionState.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$racePositionState : RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t RacePositionStatePublisher.$racePositionState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$racePositionState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore17RacePositionStateO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePositionState;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$racePositionState.modify;
}

uint64_t RacePositionStatePublisher.racePosition.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);
}

uint64_t key path getter for RacePositionStatePublisher.racePosition : RacePositionStatePublisher@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v4 = v7;
  v5 = v8;
  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  return result;
}

uint64_t key path setter for RacePositionStatePublisher.racePosition : RacePositionStatePublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RacePositionStatePublisher.racePosition.setter(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*RacePositionStatePublisher.racePosition.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.racePosition.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$racePosition : RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t RacePositionStatePublisher.$racePosition.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$racePosition.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePosition;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$racePosition.modify;
}

double key path getter for RacePositionStatePublisher.positionOnRoute : RacePositionStatePublisher@<D0>(double *a4@<X8>)
{
  return key path getter for RacePositionStatePublisher.positionOnRoute : RacePositionStatePublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t (*RacePositionStatePublisher.positionOnRoute.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.positionOnRoute.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$positionOnRoute : RacePositionStatePublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t RacePositionStatePublisher.$positionOnRoute.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$positionOnRoute.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__positionOnRoute;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$positionOnRoute.modify;
}

uint64_t (*RacePositionStatePublisher.ghostPositionOnRoute.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.ghostPositionOnRoute.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$ghostPositionOnRoute : RacePositionStatePublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t RacePositionStatePublisher.$ghostPositionOnRoute.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$ghostPositionOnRoute.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__ghostPositionOnRoute;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$ghostPositionOnRoute.modify;
}

uint64_t (*RacePositionStatePublisher.secondsAheadOfGhost.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.secondsAheadOfGhost.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$secondsAheadOfGhost : RacePositionStatePublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t RacePositionStatePublisher.$secondsAheadOfGhost.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$secondsAheadOfGhost.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__secondsAheadOfGhost;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$secondsAheadOfGhost.modify;
}

uint64_t (*RacePositionStatePublisher.remainingRouteDistance.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.remainingRouteDistance.modify;
}

uint64_t key path setter for RacePositionStatePublisher.$remainingRouteDistance : RacePositionStatePublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t RacePositionStatePublisher.$remainingRouteDistance.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$remainingRouteDistance.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__remainingRouteDistance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$remainingRouteDistance.modify;
}

double RacePositionStatePublisher.positionOnRoute.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path setter for RacePositionStatePublisher.positionOnRoute : RacePositionStatePublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RacePositionStatePublisher.positionOnRoute.setter(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*RacePositionStatePublisher.raceFinishTime.modify(uint64_t *a1))()
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
  return RacePositionStatePublisher.raceFinishTime.modify;
}

void RacePositionStatePublisher.racePositionState.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t RacePositionStatePublisher.$racePositionState.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for RacePositionStatePublisher.$racePositionState : RacePositionStatePublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for RacePositionStatePublisher.$raceFinishTime : RacePositionStatePublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t RacePositionStatePublisher.$raceFinishTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RacePositionStatePublisher.$raceFinishTime.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__raceFinishTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RacePositionStatePublisher.$raceFinishTime.modify;
}

void RacePositionStatePublisher.$racePositionState.modify(uint64_t a1, char a2)
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

uint64_t RacePositionStatePublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  RacePositionStatePublisher.init()();
  return v0;
}

uint64_t RacePositionStatePublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v24 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePositionState;
  LOBYTE(v26) = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v0 + v15, v14, v10);
  v16 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePosition;
  v26 = 0;
  v27 = 0;
  v28 = 1;
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v16, v9, v25);
  v17 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__positionOnRoute;
  v26 = 0;
  Published.init(initialValue:)();
  v18 = *(v2 + 32);
  v18(v0 + v17, v5, v1);
  v19 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__ghostPositionOnRoute;
  v26 = 0;
  Published.init(initialValue:)();
  v18(v0 + v19, v5, v1);
  v20 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__secondsAheadOfGhost;
  v26 = 0;
  Published.init(initialValue:)();
  v18(v0 + v20, v5, v1);
  v21 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__remainingRouteDistance;
  v26 = 0;
  Published.init(initialValue:)();
  v18(v0 + v21, v5, v1);
  v22 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__raceFinishTime;
  v26 = 0;
  Published.init(initialValue:)();
  v18(v0 + v22, v5, v1);
  return v0;
}

uint64_t RacePositionStatePublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePositionState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePosition;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__positionOnRoute;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__ghostPositionOnRoute, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__secondsAheadOfGhost, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__remainingRouteDistance, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__raceFinishTime, v6);
  return v0;
}

uint64_t RacePositionStatePublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePositionState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMd, &_s7Combine9PublishedVy11WorkoutCore17RacePositionStateOGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__racePosition;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__positionOnRoute;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__ghostPositionOnRoute, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__secondsAheadOfGhost, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__remainingRouteDistance, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore26RacePositionStatePublisher__raceFinishTime, v6);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance RacePositionStatePublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t RacePositionStatePublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  RacePositionStatePublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v3, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  return v4;
}

double RacePositionStatePublisher.protobuf.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 0;
  *(a1 + 8) = 1;
  v7 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  UnknownStorage.init()();
  v8 = *(v7 + 44);
  v9 = *(v3 + 56);
  v9(a1 + v8, 1, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v14);

  *a1 = LOBYTE(v14);
  *(a1 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v14);

  v11 = v14;
  v12 = v15;
  v13 = v16;
  RacePosition.protobuf.getter(v6);
  outlined destroy of Apple_Workout_Core_RacePosition?(a1 + v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  outlined init with take of Apple_Workout_Core_RacePosition(v6, a1 + v8, type metadata accessor for Apple_Workout_Core_RacePosition);
  v9(a1 + v8, 0, 1, v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v14);

  *(a1 + 16) = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v14);

  *(a1 + 24) = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v14);

  *(a1 + 32) = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v14);

  *(a1 + 40) = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v14);

  result = v14;
  *(a1 + 48) = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher)
  {
    type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher);
  }

  return result;
}

uint64_t RacePosition.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Apple_Workout_Core_RacePositionExpired(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_RacePositionUnknown(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v41 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionCompleted(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_RacePositionOffRoute(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v39 - v22;
  v24 = type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute(0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v1;
  v29 = *(v1 + 8);
  v30 = *(v1 + 12);
  v31 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v43 = v32 + 56;
  v44 = v33;
  v33(a1, 1, 1, v31);
  type metadata accessor for Apple_Workout_Core_RacePosition(0);
  UnknownStorage.init()();
  if (v30 == 1)
  {
    if (v28 <= 1)
    {
      UnknownStorage.init()();
      outlined destroy of Apple_Workout_Core_RacePosition?(a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
      if (v28 | v29)
      {
        outlined init with take of Apple_Workout_Core_RacePosition(v15, a1, type metadata accessor for Apple_Workout_Core_RacePositionOffRoute);
      }

      else
      {
        outlined init with take of Apple_Workout_Core_RacePosition(v27, a1, type metadata accessor for Apple_Workout_Core_RacePositionNotYetOnRoute);
      }
    }

    else if (v28 ^ 2 | v29)
    {
      if (v28 ^ 3 | v29)
      {
        v38 = v42;
        UnknownStorage.init()();
        outlined destroy of Apple_Workout_Core_RacePosition?(a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
        outlined init with take of Apple_Workout_Core_RacePosition(v38, a1, type metadata accessor for Apple_Workout_Core_RacePositionExpired);
      }

      else
      {
        v34 = v41;
        UnknownStorage.init()();
        outlined destroy of Apple_Workout_Core_RacePosition?(a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
        outlined init with take of Apple_Workout_Core_RacePosition(v34, a1, type metadata accessor for Apple_Workout_Core_RacePositionUnknown);
      }
    }

    else
    {
      v37 = v40;
      UnknownStorage.init()();
      outlined destroy of Apple_Workout_Core_RacePosition?(a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
      outlined init with take of Apple_Workout_Core_RacePosition(v37, a1, type metadata accessor for Apple_Workout_Core_RacePositionCompleted);
    }
  }

  else
  {
    UnknownStorage.init()();
    *v23 = v28;
    *(v23 + 2) = v29;
    outlined init with take of Apple_Workout_Core_RacePosition(v23, v20, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
    outlined destroy of Apple_Workout_Core_RacePosition?(a1, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_RacePosition(v20, a1, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
  }

  v35 = v44;
  swift_storeEnumTagMultiPayload();
  return v35(a1, 0, 1, v31);
}

uint64_t Apple_Workout_Core_RacePositionStatePublisher.decodeInto(publisher:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 8);
  v28 = *v1;
  LOBYTE(v29) = v12;
  Apple_Workout_Core_RacePositionState.decoded.getter(&v25);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  v13 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition.OneOf_Type?(v1 + *(v13 + 44), v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v14 = *(v8 + 48);
  if (v14(v6, 1, v7) == 1)
  {
    v15 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
    (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    UnknownStorage.init()();
    if (v14(v6, 1, v7) != 1)
    {
      outlined destroy of Apple_Workout_Core_RacePosition?(v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_RacePosition(v6, v11, type metadata accessor for Apple_Workout_Core_RacePosition);
  }

  Apple_Workout_Core_RacePosition.decoded.getter(&v28);
  outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v11, type metadata accessor for Apple_Workout_Core_RacePosition);
  v16 = v28;
  v17 = v29;
  v18 = v30;
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v16;
  v26 = v17;
  v27 = v18;

  static Published.subscript.setter();
  v19 = v2[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v19;

  static Published.subscript.setter();
  v20 = v2[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v20;

  static Published.subscript.setter();
  v21 = v2[4];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v21;

  static Published.subscript.setter();
  v22 = v2[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v22;

  static Published.subscript.setter();
  v23 = v2[6];
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v23;

  return static Published.subscript.setter();
}

uint64_t RacePositionStatePublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static RacePositionStatePublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance RacePositionStatePublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  RacePositionStatePublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v3, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance RacePositionStatePublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static RacePositionStatePublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance RacePositionStatePublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static RacePositionStatePublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void Apple_Workout_Core_RacePositionState.decoded.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 5;
  }

  *a1 = v3;
}

void Apple_Workout_Core_RacePosition.decoded.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_RacePositionOnRoute(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v29 - v19;
  outlined init with copy of Apple_Workout_Core_RacePosition.OneOf_Type?(v2, v11, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    outlined init with take of Apple_Workout_Core_RacePosition(v11, v20, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    outlined init with take of Apple_Workout_Core_RacePosition(v20, v17, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v28 = 2;
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v28 = 3;
      }

      else
      {
        v28 = 4;
      }

      *a1 = v28;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          outlined init with take of Apple_Workout_Core_RacePosition(v17, v7, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
          v26 = *v7;
          v27 = *(v7 + 2);
          outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v7, type metadata accessor for Apple_Workout_Core_RacePositionOnRoute);
          *a1 = v26;
          *(a1 + 8) = v27;
          *(a1 + 12) = 0;
          return;
        }

        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 12) = 1;
        goto LABEL_20;
      }

      *a1 = 0;
    }

    *(a1 + 8) = 0;
    *(a1 + 12) = 1;
LABEL_20:
    outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v17, type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type);
    return;
  }

  outlined destroy of Apple_Workout_Core_RacePosition?(v11, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionV10OneOf_TypeOSgMR);
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.core);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    MEMORY[0x20F2E9420](v24, -1, -1);
  }

  *a1 = 3;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
}

uint64_t specialized static RacePositionStatePublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RacePositionStatePublisher(0);
  v11 = swift_allocObject();
  RacePositionStatePublisher.init()();
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_RacePositionStatePublisher.decodeInto(publisher:)(v11);
    outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(v10, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  }

  return v11;
}

uint64_t type metadata accessor for RacePositionStatePublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for RacePositionStatePublisher;
  if (!type metadata singleton initialization cache for RacePositionStatePublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RacePositionStatePublisher(uint64_t a1)
{
  type metadata accessor for Published<RacePositionState>(319, &lazy cache variable for type metadata for Published<RacePositionState>, &type metadata for RacePositionState);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<RacePositionState>(319, &lazy cache variable for type metadata for Published<RacePosition>, &type metadata for RacePosition);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<RacePositionState>(319, &lazy cache variable for type metadata for Published<Double>, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<RacePositionState>(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_Core_RacePosition?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_Core_RacePosition.OneOf_Type?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_RacePositionStatePublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v1 + *(v7 + 20), v6, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RunningTrackInfo(v6, a1, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 20) = 0;
  *(a1 + 12) = 0;
  *(a1 + 28) = 0;
  UnknownStorage.init()();
  v10 = *(v8 + 40);
  v11 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  (*(*(v11 - 8) + 56))(a1 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v6, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo : Apple_Workout_Core_TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(a1 + *(v8 + 20), v7, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RunningTrackInfo(v7, a2, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 20) = 0;
  *(a2 + 12) = 0;
  *(a2 + 28) = 0;
  UnknownStorage.init()();
  v11 = *(v9 + 40);
  v12 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v7, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo : Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo(a1, v8, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  v9 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0) + 20);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(a2 + v9, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0) + 20);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v1 + v3, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  outlined init with take of Apple_Workout_Core_RunningTrackInfo(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  v4 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_TrackRunningMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_TrackRunningMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 20) = 0;
    *(v14 + 12) = 0;
    *(v14 + 28) = 0;
    UnknownStorage.init()();
    v17 = *(v9 + 40);
    v18 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v8, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, v14, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  }

  return Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo.modify;
}

BOOL Apple_Workout_Core_TrackRunningMetricsPublisher.hasTrackInfo.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v0 + *(v5 + 20), v4, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v4, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_TrackRunningMetricsPublisher.clearTrackInfo()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0) + 20);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v0 + v1, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v1 + *(v7 + 24), v6, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RunningTrackInfo(v6, a1, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  }

  *a1 = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v6, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator : Apple_Workout_Core_TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(a1 + *(v8 + 24), v7, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RunningTrackInfo(v7, a2, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  }

  *a2 = 0;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v7, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator : Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo(a1, v8, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  v9 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0) + 24);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(a2 + v9, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0) + 24);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v1 + v3, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  outlined init with take of Apple_Workout_Core_RunningTrackInfo(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  v4 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v8, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, v14, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  }

  return Apple_Workout_Core_TrackRunningMetricsPublisher.trackRunningCoordinator.modify;
}

void Apple_Workout_Core_TrackRunningMetricsPublisher.trackInfo.modify(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_RunningTrackInfo(v11, v10, a5);
    outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v14 + v9, a3, a4);
    outlined init with take of Apple_Workout_Core_RunningTrackInfo(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    outlined destroy of Apple_Workout_Core_RunningTrackInfo(v11, a5);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v14 + v9, a3, a4);
    outlined init with take of Apple_Workout_Core_RunningTrackInfo(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

uint64_t outlined init with copy of Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_RunningTrackInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Apple_Workout_Core_TrackRunningMetricsPublisher.hasTrackRunningCoordinator.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v0 + *(v5 + 24), v4, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v4, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_TrackRunningMetricsPublisher.clearTrackRunningCoordinator()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0) + 24);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v0 + v1, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t static Apple_Workout_Core_TrackRunningMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_TrackRunningMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_Core_TrackRunningMetricsPublisher.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_Core_TrackRunningMetricsPublisher.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_TrackRunningMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo, &protocol conformance descriptor for Apple_Workout_Core_RunningTrackInfo);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_Core_TrackRunningMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningCoordinator);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_TrackRunningMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_TrackRunningMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_Core_TrackRunningMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_TrackRunningMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(a1 + *(v14 + 20), v8, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v8, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  }

  outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, v13, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RunningTrackInfo and conformance Apple_Workout_Core_RunningTrackInfo, type metadata accessor for Apple_Workout_Core_RunningTrackInfo, &protocol conformance descriptor for Apple_Workout_Core_RunningTrackInfo);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_RunningTrackInfo(v13, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
}

uint64_t closure #2 in Apple_Workout_Core_TrackRunningMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(a1 + *(v14 + 24), v8, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v8, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  }

  outlined init with take of Apple_Workout_Core_RunningTrackInfo(v8, v13, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningCoordinator);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_RunningTrackInfo(v13, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
}

Swift::Int Apple_Workout_Core_TrackRunningMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_TrackRunningMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_TrackRunningMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_TrackRunningMetricsPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v51 = a2;
  v2 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v44 = &v42 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSg_ADtMR);
  MEMORY[0x28223BE20](v46, v8);
  v49 = &v42 - v9;
  v10 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSg_ADtMR);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v42 - v22;
  v45 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  v24 = *(v45 + 20);
  v25 = *(v20 + 56);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v50 + v24, v23, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v51 + v24, &v23[v25], &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  v26 = *(v11 + 48);
  if (v26(v23, 1, v10) == 1)
  {
    if (v26(&v23[v25], 1, v10) == 1)
    {
      outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v23, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
      goto LABEL_8;
    }

LABEL_6:
    v27 = &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSg_ADtMd;
    v28 = &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSg_ADtMR;
    v29 = v23;
LABEL_16:
    outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v29, v27, v28);
    goto LABEL_17;
  }

  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v23, v18, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  if (v26(&v23[v25], 1, v10) == 1)
  {
    outlined destroy of Apple_Workout_Core_RunningTrackInfo(v18, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    goto LABEL_6;
  }

  outlined init with take of Apple_Workout_Core_RunningTrackInfo(&v23[v25], v14, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  v30 = static Apple_Workout_Core_RunningTrackInfo.== infix(_:_:)(v18, v14);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo(v14, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo(v18, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v23, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMd, &_s11WorkoutCore06Apple_a1_B17_RunningTrackInfoVSgMR);
  if ((v30 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  v31 = *(v45 + 24);
  v32 = *(v46 + 48);
  v33 = v49;
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v50 + v31, v49, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v51 + v31, v33 + v32, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
  v34 = v48;
  v35 = *(v47 + 48);
  if (v35(v33, 1, v48) != 1)
  {
    v37 = v44;
    outlined init with copy of Apple_Workout_Core_RunningTrackInfo?(v33, v44, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
    if (v35(v33 + v32, 1, v34) == 1)
    {
      outlined destroy of Apple_Workout_Core_RunningTrackInfo(v37, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
      goto LABEL_14;
    }

    v39 = v33 + v32;
    v40 = v43;
    outlined init with take of Apple_Workout_Core_RunningTrackInfo(v39, v43, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
    if (*v37 != *v40)
    {
      outlined destroy of Apple_Workout_Core_RunningTrackInfo(v40, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
      outlined destroy of Apple_Workout_Core_RunningTrackInfo(v37, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
      v27 = &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd;
      v28 = &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR;
      goto LABEL_15;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_RunningTrackInfo(v40, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
    outlined destroy of Apple_Workout_Core_RunningTrackInfo(v37, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
    outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v33, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
    if (v41)
    {
      goto LABEL_11;
    }

LABEL_17:
    v36 = 0;
    return v36 & 1;
  }

  if (v35(v33 + v32, 1, v34) != 1)
  {
LABEL_14:
    v27 = &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSg_ADtMd;
    v28 = &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSg_ADtMR;
LABEL_15:
    v29 = v33;
    goto LABEL_16;
  }

  outlined destroy of Apple_Workout_Core_RunningTrackInfo?(v33, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMd, &_s11WorkoutCore06Apple_a1_B24_TrackRunningCoordinatorVSgMR);
LABEL_11:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v36 & 1;
}

void type metadata completion function for Apple_Workout_Core_TrackRunningMetricsPublisher(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_RunningTrackInfo?(319, &lazy cache variable for type metadata for Apple_Workout_Core_RunningTrackInfo?, type metadata accessor for Apple_Workout_Core_RunningTrackInfo);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_Core_RunningTrackInfo?(319, &lazy cache variable for type metadata for Apple_Workout_Core_TrackRunningCoordinator?, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_Core_RunningTrackInfo?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_Core_RunningTrackInfo?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id FIUIWorkoutActivityType.healthKitRepresentation.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v1 setActivityType_];
  [v1 setLocationType_];
  if ([v0 effectiveTypeIdentifier] == 46)
  {
    [v1 setSwimmingLocationType_];
  }

  return v1;
}

id HKWorkoutConfiguration.fiuiWorkoutActivityType(isPartOfMultisport:)(char a1)
{
  if ([v1 activityType] == 46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v4;
    v5 = [v1 swimmingLocationType];
    v6 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 72) = type metadata accessor for NSNumber();
    *(inited + 48) = v6;
    v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v1 activityType];
  v9 = [v1 locationType];
  if (v7)
  {
    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v10.super.isa = 0;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:v8 location:v9 isPartOfMultiSport:a1 & 1 metadata:v10.super.isa];

  return v11;
}

unint64_t type metadata accessor for NSNumber()
{
  result = lazy cache variable for type metadata for NSNumber;
  if (!lazy cache variable for type metadata for NSNumber)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSNumber);
  }

  return result;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_11WorkoutCore0D5BlockCs5NeverOTg504_s11d58Core08IntervalA0C12regroupSteps_4from11repeatCountSayAA0A5f5CGSayQ26A4StepCG_AISitFZAHSiXEfU1_SayAIGTf1cn_n(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = (a1 + 32);
  while (1)
  {
    v7 = *v5++;
    v6 = v7;
    swift_beginAccess();
    if ((*a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v6);
      goto LABEL_7;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_7:
    swift_endAccess();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

unint64_t specialized Sequence.forEach(_:)(unint64_t result, unint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F2E7A20](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        closure #1 in static IntervalWorkout.regroupSteps(_:from:repeatCount:)(&v11, a2, a3);

        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = __CocoaSet.count.getter();
      v6 = result;
    }

    while (result);
  }

  return result;
}

uint64_t IntervalWorkout.name.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for IntervalWorkout.name : IntervalWorkout@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t key path setter for IntervalWorkout.name : IntervalWorkout(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t IntervalWorkout.name.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*IntervalWorkout.name.modify(uint64_t *a1))()
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
  return IntervalWorkout.name.modify;
}

uint64_t key path setter for IntervalWorkout.$name : IntervalWorkout(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalWorkout.$name.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkout.$name.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__name;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkout.$name.modify;
}

uint64_t IntervalWorkout.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t IntervalWorkout.uuid.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path getter for IntervalWorkout.warmupBlock : IntervalWorkout@<X0>(void *a4@<X8>)
{
  return key path getter for IntervalWorkout.warmupBlock : IntervalWorkout(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t (*IntervalWorkout.warmupBlock.modify(uint64_t *a1))()
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
  return IntervalWorkout.warmupBlock.modify;
}

uint64_t key path setter for IntervalWorkout.$warmupBlock : IntervalWorkout(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalWorkout.$warmupBlock.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkout.$warmupBlock.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__warmupBlock;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkout.$warmupBlock.modify;
}

uint64_t IntervalWorkout.warmupBlock.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path setter for IntervalWorkout.warmupBlock : IntervalWorkout(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return static Published.subscript.setter();
}

uint64_t IntervalWorkout.warmupBlock.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t (*IntervalWorkout.cooldownBlock.modify(uint64_t *a1))()
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
  return IntervalWorkout.cooldownBlock.modify;
}

uint64_t key path setter for IntervalWorkout.$cooldownBlock : IntervalWorkout(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalWorkout.$cooldownBlock.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkout.$cooldownBlock.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D5BlockC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__cooldownBlock;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMd, &_s7Combine9PublishedVy11WorkoutCore0C5BlockCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkout.$cooldownBlock.modify;
}

uint64_t IntervalWorkout.stepBlocks.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for IntervalWorkout.stepBlocks : IntervalWorkout@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for IntervalWorkout.stepBlocks : IntervalWorkout(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t IntervalWorkout.stepBlocks.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*IntervalWorkout.stepBlocks.modify(uint64_t *a1))()
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
  return IntervalWorkout.stepBlocks.modify;
}

void IntervalWorkout.name.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t IntervalWorkout.$name.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for IntervalWorkout.$name : IntervalWorkout(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for IntervalWorkout.$stepBlocks : IntervalWorkout(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalWorkout.$stepBlocks.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalWorkout.$stepBlocks.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D5BlockCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__stepBlocks;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalWorkout.$stepBlocks.modify;
}

void IntervalWorkout.$name.modify(uint64_t a1, char a2)
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

unint64_t IntervalWorkout.blocks.getter()
{
  if (IntervalWorkout.warmupStep.getter())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_20B425990;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v6);

    *(v0 + 32) = v6;
  }

  else
  {
    v0 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v1 = v6;
  v6 = v0;
  specialized Array.append<A>(contentsOf:)(v1, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
  v2 = v6;
  if (IntervalWorkout.cooldownStep.getter())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_20B425990;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v6);

    v4 = v3;
    *(v3 + 32) = v6;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v6 = v2;
  specialized Array.append<A>(contentsOf:)(v4, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
  return v6;
}

uint64_t IntervalWorkout.warmupStep.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  v2 = v5;
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);

LABEL_6:

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t IntervalWorkout.warmupStep.setter(uint64_t a1)
{
  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v5);

    swift_getKeyPath();
    swift_getKeyPath();
    v5[0] = MEMORY[0x277D84F90];
    return static Published.subscript.setter();
  }

  swift_beginAccess();
  if (*(a1 + 16) == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_20B425990;
    *(v2 + 32) = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    return static Published.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000023, 0x800000020B456FE0, "WorkoutCore/IntervalWorkout.swift", 33, 2, 39, 0);
  __break(1u);
  return result;
}

uint64_t (*IntervalWorkout.warmupStep.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = IntervalWorkout.warmupStep.getter();
  return IntervalWorkout.warmupStep.modify;
}

uint64_t IntervalWorkout.cooldownStep.setter(uint64_t a1)
{
  if (!a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v5);

    swift_getKeyPath();
    swift_getKeyPath();
    v5[0] = MEMORY[0x277D84F90];
    return static Published.subscript.setter();
  }

  swift_beginAccess();
  if (*(a1 + 16) == 3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_20B425990;
    *(v2 + 32) = a1;
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    return static Published.subscript.setter();
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000025, 0x800000020B457010, "WorkoutCore/IntervalWorkout.swift", 33, 2, 54, 0);
  __break(1u);
  return result;
}

uint64_t (*IntervalWorkout.cooldownStep.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  *a1 = IntervalWorkout.cooldownStep.getter();
  return IntervalWorkout.cooldownStep.modify;
}

uint64_t IntervalWorkout.warmupStep.modify(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  a3(v4);
}

uint64_t IntervalWorkout.displayName.getter()
{
  swift_getObjectType();
  v0 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v2 - 8, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v5 = v10[0];
  v4 = v10[1];

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v10);

    return v10[0];
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

BOOL IntervalWorkout.isValid.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  if (v9 >> 62)
  {
    goto LABEL_21;
  }

  v0 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v0)
  {
    do
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v9);

      v1 = v9;
      v2 = v9 & 0xFFFFFFFFFFFFFF8;
      if (v9 >> 62)
      {
        v3 = __CocoaSet.count.getter();
      }

      else
      {
        v3 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v4 = 0;
      while (1)
      {
        v5 = v3 == v4;
        if (v3 == v4)
        {
LABEL_18:

          return v5;
        }

        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F2E7A20](v4, v1);
          if (__OFADD__(v4, 1))
          {
            break;
          }

          goto LABEL_10;
        }

        if (v4 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        if (__OFADD__(v4, 1))
        {
          break;
        }

LABEL_10:
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v9);

        if (v9 >> 62)
        {
          v6 = __CocoaSet.count.getter();
        }

        else
        {
          v6 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v4;
        if (!v6)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v7 = __CocoaSet.count.getter();
    }

    while (v7);
  }

  return 0;
}

BOOL IntervalWorkout.canAddRepeat.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v0 = v6;
  v1 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_15:
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v3, v0);
      if (__OFADD__(v4, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_12;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v6);

    v3 = v4 + 1;
  }

  while (v6 != 1);

  return v2 != v4;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalWorkout.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance IntervalWorkout.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalWorkout.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance IntervalWorkout.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized IntervalWorkout.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance IntervalWorkout.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  v5 = 0xEB000000006B636FLL;
  v6 = 0x6C4270756D726177;
  v7 = 0xED00006B636F6C42;
  v8 = 0x6E776F646C6F6F63;
  if (v2 != 3)
  {
    v8 = 0x636F6C4270657473;
    v7 = 0xEA0000000000736BLL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1684632949;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance IntervalWorkout.CodingKeys()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x6C4270756D726177;
  v4 = 0x6E776F646C6F6F63;
  if (v1 != 3)
  {
    v4 = 0x636F6C4270657473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1684632949;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance IntervalWorkout.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized IntervalWorkout.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IntervalWorkout.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IntervalWorkout.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int IntervalWorkout.hash.getter()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  Hasher.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  String.hash(into:)();

  v6 = IntervalWorkout.blocks.getter();
  specialized Array<A>.hash(into:)(v10, v6);

  v7 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v7, v1);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v2 + 8))(v5, v1);
  return Hasher.finalize()();
}

uint64_t IntervalWorkout.equivalentHash(into:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  String.hash(into:)();

  v2 = IntervalWorkout.blocks.getter();
  specialized Array<A>.hash(into:)(a1, v2);
}

id IntervalWorkout.__allocating_init(_:uuid:warmupStep:cooldownStep:)(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(a1, a2, a3, a4, a5);

  return v12;
}

id IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(a1, a2, a3, a4, a5);

  return v5;
}

char *IntervalWorkout.init(from:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for UUID();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v45 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore08IntervalD0C10CodingKeys33_16E702E5523E97149029D34F69A873FCLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore08IntervalD0C10CodingKeys33_16E702E5523E97149029D34F69A873FCLLOGMR);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v58 = v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v44 - v18;
  v20 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__name;
  v62 = 0;
  v63 = 0xE000000000000000;
  Published.init(initialValue:)();
  v51 = v16;
  v21 = *(v16 + 32);
  v57 = v20;
  v22 = &v2[v20];
  v23 = v2;
  v21(v22, v19, v15);
  v24 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__stepBlocks;
  v62 = MEMORY[0x277D84F90];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
  Published.init(initialValue:)();
  v52 = v11;
  v53 = v24;
  v26 = *(v11 + 32);
  v54 = v10;
  v26(&v23[v24], v14, v10);
  v27 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys();
  v28 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v29 = v51;
    __swift_destroy_boxed_opaque_existential_1(v55);
    (*(v29 + 8))(&v23[v57], v15);
    (*(v52 + 8))(&v23[v53], v54);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v62) = 0;
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v33 = v32;
    v44[1] = v25;
    v34 = v57;
    swift_beginAccess();
    (*(v51 + 8))(&v23[v34], v15);
    v60 = v31;
    v61 = v33;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v62) = 1;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v35 = v45;
    v36 = v49;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v48 + 32))(&v23[OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid], v35, v36);
    type metadata accessor for WorkoutBlock(0);
    LOBYTE(v62) = 2;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, type metadata accessor for WorkoutBlock, &protocol conformance descriptor for WorkoutBlock);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v37 = v60;
    swift_beginAccess();
    v64 = v37;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v62) = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38 = v46;
    v39 = v60;
    swift_beginAccess();
    v64 = v39;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v62) = 4;
    lazy protocol witness table accessor for type [WorkoutBlock] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, &protocol conformance descriptor for WorkoutBlock, MEMORY[0x277D83978]);
    v40 = v47;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v41 = v60;
    v42 = v38;
    v43 = v53;
    swift_beginAccess();
    (*(v52 + 8))(&v23[v43], v54);
    v64 = v41;
    Published.init(initialValue:)();
    swift_endAccess();
    (*(v42 + 8))(v58, v40);
    v59.receiver = v23;
    v59.super_class = ObjectType;
    v23 = objc_msgSendSuper2(&v59, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  return v23;
}

uint64_t static IntervalWorkout.migrateLegacyBlocks(_:)(unint64_t a1)
{
  v25 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_50;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = MEMORY[0x277D84F90];
    if (!v1)
    {
      return 0;
    }

    v3 = 0;
    v4 = 0;
    v21 = a1 & 0xC000000000000001;
    v22 = 0;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = a1;
    v20 = v1;
    while (1)
    {
      if (v21)
      {
        a1 = MEMORY[0x20F2E7A20](v4, v19);
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 >= *(v18 + 16))
        {
          goto LABEL_49;
        }

        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      v24 = v2;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v23);

      v6 = v23;
      if (v23 >> 62)
      {
        break;
      }

      v7 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_15;
      }

LABEL_32:
      v8 = v2;
LABEL_33:

      if (v8 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = MEMORY[0x277D84F90];
      if (v13)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v23 = v8;

        static Published.subscript.setter();
        if (v8 >> 62)
        {
          v14 = __CocoaSet.count.getter();
        }

        else
        {
          v14 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v14 == 1)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v23 = 1;

          static Published.subscript.setter();
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(&v23);

          if (!v23)
          {
            result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000032, 0x800000020B455D70, "WorkoutCore/WorkoutBlock.swift", 30, 2, 30, 0);
            __break(1u);
            return result;
          }
        }

        MEMORY[0x20F2E6F30](v15);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      else
      {
      }

      if (v4 == v20)
      {
        return v3;
      }
    }

    a1 = __CocoaSet.count.getter();
    v7 = a1;
    if (!a1)
    {
      goto LABEL_32;
    }

LABEL_15:
    if (v7 >= 1)
    {
      v8 = v2;
      v9 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x20F2E7A20](v9, v6);
        }

        else
        {
          v10 = *(v6 + 8 * v9 + 32);
        }

        swift_beginAccess();
        v11 = *(v10 + 16);
        if (v11 < 2)
        {

          MEMORY[0x20F2E6F30](v12);
          if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v8 = v24;
          goto LABEL_19;
        }

        if (v11 == 2)
        {
          if (!v3)
          {
            v3 = v10;
            goto LABEL_19;
          }
        }

        else if (!v22)
        {
          v22 = v10;
          goto LABEL_19;
        }

LABEL_19:
        if (v7 == ++v9)
        {
          goto LABEL_33;
        }
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v17 = a1;
    v1 = __CocoaSet.count.getter();
    a1 = v17;
  }
}

uint64_t IntervalWorkout.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore08IntervalD0C10CodingKeys33_16E702E5523E97149029D34F69A873FCLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore08IntervalD0C10CodingKeys33_16E702E5523E97149029D34F69A873FCLLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v2;
  static Published.subscript.getter(&v25);

  LOBYTE(v25) = 0;
  v13 = v8;
  v14 = v23;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v14)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v16 = v9;

    v17 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
    v18 = v22;
    swift_beginAccess();
    v19 = v21;
    (*(v21 + 16))(v7, v18 + v17, v4);
    LOBYTE(v26) = 1;
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v19 + 8))(v7, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v26);

    v24 = 2;
    type metadata accessor for WorkoutBlock(0);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, type metadata accessor for WorkoutBlock, &protocol conformance descriptor for WorkoutBlock);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v26);

    v24 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v26);

    v24 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
    lazy protocol witness table accessor for type [WorkoutBlock] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutBlock] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutBlock and conformance WorkoutBlock, &protocol conformance descriptor for WorkoutBlock, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    return (*(v16 + 8))(v12, v13);
  }
}

uint64_t IntervalWorkout.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v19 - v10;
  outlined init with copy of Any?(a1, v20);
  if (!v21)
  {
    outlined destroy of Any?(v20);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v17 = 0;
    return v17 & 1;
  }

  v12 = v19[1];
  v13 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
  swift_beginAccess();
  v14 = *(v4 + 16);
  v14(v11, &v12[v13], v3);
  v15 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid;
  swift_beginAccess();
  v14(v8, &v1[v15], v3);
  LOBYTE(v15) = static UUID.== infix(_:_:)();
  v16 = *(v4 + 8);
  v16(v8, v3);
  v16(v11, v3);
  if ((v15 & 1) == 0)
  {

    goto LABEL_7;
  }

  v17 = specialized IntervalWorkout.isEquivalent(to:)(v1, v12);

  return v17 & 1;
}

uint64_t IntervalWorkout.isEquivalent(to:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized IntervalWorkout.isEquivalent(to:)(v4, v1, v2, v3);
}

Swift::Bool __swiftcall IntervalWorkout.isLastKeyPath(currentKeyPath:)(WorkoutCore::IntervalWorkoutKeyPath currentKeyPath)
{
  v3 = *currentKeyPath.block;
  v4 = *(currentKeyPath.block + 8);
  v5 = *(currentKeyPath.block + 16);
  v6 = IntervalWorkout.blocks.getter();
  if (v6 >> 62)
  {
    v2 = v6;
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
LABEL_23:
    MEMORY[0x20F2E7A20](v3, v2);
    goto LABEL_9;
  }

  if (v3 != v7 - 1)
  {
LABEL_19:
    LOBYTE(v9) = 0;
    return v9;
  }

  v8 = IntervalWorkout.blocks.getter();
  v2 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    goto LABEL_23;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v3 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_9:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  if (__OFSUB__(v12, 1))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 != v12 - 1)
  {
    goto LABEL_19;
  }

  v9 = IntervalWorkout.blocks.getter();
  v1 = v9;
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_27:
    MEMORY[0x20F2E7A20](v3, v1);
    goto LABEL_15;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v3 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    __break(1u);
    return v9;
  }

LABEL_15:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  if (!(v12 >> 62))
  {
    v10 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_17;
  }

LABEL_29:
  v10 = __CocoaSet.count.getter();
LABEL_17:

  if (__OFSUB__(v10, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  LOBYTE(v9) = v5 == v10 - 1;
  return v9;
}

WorkoutCore::IntervalWorkoutKeyPath_optional __swiftcall IntervalWorkout.nextKeyPath(currentKeyPath:)(WorkoutCore::IntervalWorkoutKeyPath currentKeyPath)
{
  v2 = v1;
  v3 = *currentKeyPath.block;
  if ((*currentKeyPath.block & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  v4 = *(currentKeyPath.block + 8);
  if (v4 < 0)
  {
    goto LABEL_19;
  }

  v5 = *(currentKeyPath.block + 16);
  if (v5 < 0)
  {
    goto LABEL_19;
  }

  v6 = IntervalWorkout.blocks.getter();
  v7 = v6 >> 62 ? __CocoaSet.count.getter() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v3 >= v7)
  {
    goto LABEL_19;
  }

  v8 = IntervalWorkout.blocks.getter();
  v9 = v8;
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F2E7A20](v3, v8);
  }

  else
  {
    if (v3 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_34;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v23);

  if (v4 >= v23)
  {
LABEL_19:
    if (one-time initialization token for intervalWorkout != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.intervalWorkout);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_20AEA4000, v18, v19, "keyPath is already beyond current configuration", v20, 2u);
      MEMORY[0x20F2E9420](v20, -1, -1);
    }

LABEL_24:
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 1;
    goto LABEL_39;
  }

  v10 = IntervalWorkout.blocks.getter();
  v9 = v10;
  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_34:
    MEMORY[0x20F2E7A20](v3, v9);
    goto LABEL_14;
  }

  if (v3 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_14:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v23);

  if (v23 >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v12 >= v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v23);

    if (v4 + 1 < v23)
    {

      *v2 = v3;
      *(v2 + 8) = v4 + 1;
      *(v2 + 16) = 0;
      *(v2 + 24) = 0;
      goto LABEL_39;
    }

    v21 = IntervalWorkout.blocks.getter();
    if (!(v21 >> 62))
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_29;
    }

LABEL_38:
    v22 = __CocoaSet.count.getter();
LABEL_29:

    if ((v3 + 1) < v22)
    {
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      *v2 = v3 + 1;
      *(v2 + 24) = 0;
      goto LABEL_39;
    }

    goto LABEL_24;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v12;
  *(v2 + 24) = 0;
LABEL_39:
  result.value.step = v15;
  result.value.blockCount = v14;
  result.value.block = v13;
  result.is_nil = v16;
  return result;
}

uint64_t IntervalWorkout.stepForKeyPath(_:)(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 < 0)
  {
    goto LABEL_23;
  }

  if (a1[1] < 0)
  {
    goto LABEL_23;
  }

  v2 = a1[2];
  if (v2 < 0)
  {
    goto LABEL_23;
  }

  v3 = IntervalWorkout.blocks.getter();
  v4 = v3 >> 62 ? __CocoaSet.count.getter() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v1 >= v4)
  {
    goto LABEL_23;
  }

  v5 = IntervalWorkout.blocks.getter();
  if ((v5 & 0xC000000000000001) != 0)
  {
    MEMORY[0x20F2E7A20](v1, v5);
  }

  else
  {
    if (v1 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000020B457060, "WorkoutCore/IntervalWorkout.swift", 33, 2, 259, 0);
      while (1)
      {
        __break(1u);
LABEL_25:
        _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000021, 0x800000020B457090, "WorkoutCore/IntervalWorkout.swift", 33, 2, 263, 0);
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  if (v9 >> 62)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 >= v6)
  {
    goto LABEL_25;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  if ((v9 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x20F2E7A20](v2, v9);
    goto LABEL_16;
  }

  if (v2 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

  v7 = *(v9 + 8 * v2 + 32);

LABEL_16:

  return v7;
}

uint64_t IntervalWorkout.blockForKeyPath(_:)(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 0x8000000000000000) == 0 && (a1[1] & 0x8000000000000000) == 0 && (a1[2] & 0x8000000000000000) == 0)
  {
    v2 = IntervalWorkout.blocks.getter();
    v3 = v2 >> 62 ? __CocoaSet.count.getter() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v1 < v3)
    {
      v4 = IntervalWorkout.blocks.getter();
      if ((v4 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v1, v4);
        goto LABEL_10;
      }

      if (v1 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v5 = *(v4 + 8 * v1 + 32);

LABEL_10:

        return v5;
      }

      __break(1u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000020B457060, "WorkoutCore/IntervalWorkout.swift", 33, 2, 274, 0);
  __break(1u);
  return result;
}

uint64_t IntervalWorkout.removeRepeat(from:)(uint64_t a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v4);
  v45 = v35 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v6 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v7);
  v43 = v35 - v8;
  v42 = type metadata accessor for UUID();
  v9 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v10);
  v41 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v47);

  if (v47[0] != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v47);

    v12 = specialized Collection<>.firstIndex(of:)(a1, v47[0]);
    v14 = v13;

    if (v14)
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000026, 0x800000020B4570C0, "WorkoutCore/IntervalWorkout.swift", 33, 2, 284, 0);
      goto LABEL_20;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v47);

    v15 = v47[0];
    if (v47[0] >> 62)
    {
      v30 = v47[0];
      v16 = __CocoaSet.count.getter();
      v15 = v30;
      v36 = v12;
      if (v16)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v16 = *((v47[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v36 = v12;
      if (v16)
      {
LABEL_5:
        v17 = v15;
        v48 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        if ((v16 & 0x8000000000000000) == 0)
        {
          v35[1] = v1;
          v18 = 0;
          v19 = v17;
          v38 = (v6 + 32);
          v39 = v17 & 0xC000000000000001;
          v37 = (v3 + 32);
          v40 = v17;
          do
          {
            if (v39)
            {
              MEMORY[0x20F2E7A20](v18, v19);
            }

            else
            {
            }

            v20 = v41;
            UUID.init()();
            type metadata accessor for WorkoutBlock(0);
            v21 = swift_allocObject();
            v22 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
            v47[0] = 1;
            v23 = v43;
            Published.init(initialValue:)();
            (*v38)(v21 + v22, v23, v44);
            v24 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
            v47[0] = MEMORY[0x277D84F90];
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
            v25 = v45;
            Published.init(initialValue:)();
            (*v37)(v21 + v24, v25, v46);
            (*(v9 + 32))(v21 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v20, v42);
            swift_getKeyPath();
            swift_getKeyPath();

            v26 = static Published.subscript.modify();
            v28 = v27;
            MEMORY[0x20F2E6F30]();
            if (*((*v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            ++v18;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v26(v47, 0);

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v19 = v40;
          }

          while (v16 != v18);

          v29 = v48;
          goto LABEL_16;
        }

        __break(1u);
        goto LABEL_18;
      }
    }

    v29 = MEMORY[0x277D84F90];
LABEL_16:
    swift_getKeyPath();
    swift_getKeyPath();
    v31 = static Published.subscript.modify();
    v32 = v36;
    specialized Array.remove(at:)(v36, specialized _ArrayBuffer._consumeAndCreateNew());

    v31(v47, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    v33 = static Published.subscript.modify();
    specialized Array.replaceSubrange<A>(_:with:)(v32, v32, v29, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));

    v33(v47, 0);
  }

LABEL_18:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000018, 0x800000020B4570F0, "WorkoutCore/IntervalWorkout.swift", 33, 2, 281, 0);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_25:
    v4 = __CocoaSet.count.getter();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = a2 & 0xC000000000000001;
      v13 = v4;
      while (1)
      {
        if (v6)
        {
          MEMORY[0x20F2E7A20](v5, a2);
        }

        else
        {
          if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_25;
          }
        }

        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {

          v11 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }

        v15[3] = type metadata accessor for WorkoutBlock(0);
        v15[4] = &protocol witness table for WorkoutBlock;
        v15[0] = a1;
        outlined init with copy of Equivalent(v15, v14);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
        if (!swift_dynamicCast())
        {
          break;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v14);

        v7 = v14[0];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v14);

        if (v7 == v14[0])
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v14);

          v8 = v14[0];
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v14);

          v9 = specialized _arrayForceCast<A, B>(_:)(v14[0]);

          v10 = specialized Array.isEquivalent(to:)(v9, v8);

          __swift_destroy_boxed_opaque_existential_1(v15);
          v6 = a2 & 0xC000000000000001;
          v4 = v13;
          if (v10)
          {
            return v5;
          }

LABEL_17:
          v11 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }

        __swift_destroy_boxed_opaque_existential_1(v15);
        v6 = a2 & 0xC000000000000001;
        v4 = v13;
        v11 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_22:
          __break(1u);
          return v5;
        }

LABEL_18:
        ++v5;
        if (v11 == v4)
        {
          return 0;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v15);
      goto LABEL_17;
    }
  }

  return 0;
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (String.subscript.getter() != a1 || v9 != a2)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return v8;
    }

    v8 = String.index(after:)();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_beginAccess();
    swift_beginAccess();
    for (i = 0; ; ++i)
    {
      v6 = MEMORY[0x20F2E7A20](i, v2);
      swift_beginAccess();
      v7 = *(v6 + 16);
      v8 = *(a1 + 16);
      swift_beginAccess();
      v9 = *(v7 + 32);
      v10 = *(v7 + 40);
      swift_beginAccess();
      v11 = v9 == *(v8 + 32) && v10 == *(v8 + 40);
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        swift_beginAccess();
        v12 = *(v6 + 24);
        swift_unknownObjectRelease();
        if (v12 == *(a1 + 24))
        {
          return i;
        }

        v13 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v4 = __CocoaSet.count.getter();
          if (!v4)
          {
            return 0;
          }

          goto LABEL_3;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v13 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_28;
        }
      }

      if (v13 == v4)
      {
        return 0;
      }
    }
  }

  v14 = v2 + 32;
  v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  swift_beginAccess();
  swift_beginAccess();
  i = 0;
  while (1)
  {
    if (v15 == i)
    {
      goto LABEL_29;
    }

    v16 = *(v14 + 8 * i);
    swift_beginAccess();
    v17 = *(v16 + 16);
    v18 = *(a1 + 16);
    swift_beginAccess();
    v2 = *(v17 + 32);
    v19 = *(v17 + 40);
    swift_beginAccess();
    v20 = v2 == *(v18 + 32) && v19 == *(v18 + 40);
    if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      swift_beginAccess();
      if (*(v16 + 24) == *(a1 + 24))
      {
        return i;
      }
    }

    if (v4 == ++i)
    {
      return 0;
    }
  }
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 8 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t IntervalWorkout.removeBlock(_:)(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v2 = static Published.subscript.modify();
  v4 = v3;
  v5 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v3, a1);

  if (*v4 >> 62)
  {
    result = __CocoaSet.count.getter();
    v7 = result;
    if (result >= v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v5, v7, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      v2(v8, 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t IntervalWorkout.removeStep(_:from:)(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = static Published.subscript.modify();
  v6 = v5;
  v7 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v5, a1);

  if (*v6 >> 62)
  {
    result = __CocoaSet.count.getter();
    v9 = result;
    if (result >= v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v7)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v7, v9, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
      v4(v10, 0);

      return IntervalWorkout.cleanupBlockIfNecessary(_:)(a2);
    }
  }

  __break(1u);
  return result;
}

uint64_t IntervalWorkout.cleanupBlockIfNecessary(_:)(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  if (!(v10[0] >> 62))
  {
    v2 = *((v10[0] & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
      return result;
    }

LABEL_3:
    swift_getKeyPath();
    swift_getKeyPath();

    v4 = static Published.subscript.modify();
    v6 = v5;
    v7 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v5, a1);

    if (*v6 >> 62)
    {
      result = __CocoaSet.count.getter();
      v8 = result;
      if (result >= v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v8 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8 >= v7)
      {
LABEL_5:
        specialized Array.replaceSubrange<A>(_:with:)(v7, v8, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
        v4(v10, 0);
      }
    }

    __break(1u);
    return result;
  }

  v9 = __CocoaSet.count.getter();

  if (!v9)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t IntervalWorkout.removeSteps(atOffsets:from:)(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = static Published.subscript.modify();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  lazy protocol witness table accessor for type [WorkoutStep] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], MEMORY[0x277D83960]);
  lazy protocol witness table accessor for type [WorkoutStep] and conformance [A](&lazy protocol witness table cache variable for type [WorkoutStep] and conformance [A], MEMORY[0x277D83990]);
  RangeReplaceableCollection<>.remove(atOffsets:)();
  v3(&v5, 0);

  return IntervalWorkout.cleanupBlockIfNecessary(_:)(a2);
}

Swift::Void __swiftcall IntervalWorkout.repeatSteps(_:repeatCount:)(Swift::OpaquePointer _, Swift::Int repeatCount)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  specialized static IntervalWorkout.regroupSteps(_:from:repeatCount:)(_._rawValue, v8, repeatCount);
  v6 = v5;

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v7 = v2;
  static Published.subscript.setter();
}

uint64_t closure #1 in static IntervalWorkout.regroupSteps(_:from:repeatCount:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v20 = a3;
  v21 = v3;
  v4 = *a2;
  v5 = *a2 & 0xFFFFFFFFFFFFFF8;
  if (*a2 >> 62)
  {
LABEL_21:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000042, 0x800000020B4571C0, "WorkoutCore/IntervalWorkout.swift", 33, 2, 323, 0);
      __break(1u);
      return result;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v7, v4);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v24);

    if (v24 == 1)
    {
      break;
    }

LABEL_5:
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_20;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v24);

  v22 = &v20;
  v10 = v24;
  v24 = v21;
  MEMORY[0x28223BE20](v9, v11);
  v19[2] = &v24;
  v12 = v23;
  v13 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v19, v10);
  v23 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = v20;
  v15 = *v20;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
    v15 = result;
    *v14 = result;
  }

  v18 = *(v15 + 16);
  v17 = *(v15 + 24);
  if (v18 >= v17 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
    v15 = result;
    *v14 = result;
  }

  *(v15 + 16) = v18 + 1;
  *(v15 + 8 * v18 + 32) = v7;
  return result;
}

uint64_t specialized closure #2 in static IntervalWorkout.regroupSteps(_:from:repeatCount:)(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v11 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v12);
  v14 = &v39 - v13;
  v46 = type metadata accessor for UUID();
  v15 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v41 = a3;
  v42 = a1;
  v19 = *a1;
  v20 = *a1 >> 62;
  v47 = v6;
  if (v20)
  {
    goto LABEL_51;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

LABEL_52:
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000027, 0x800000020B457190, "WorkoutCore/IntervalWorkout.swift", 33, 2, 334, 0);
  __break(1u);
  while (1)
  {

    a3 = MEMORY[0x20F2E7A20](0, a3);
LABEL_6:
    swift_endAccess();
    v40 = specialized Collection<>.firstIndex(of:)(a3, a1);
    v23 = v22;

    if (v23)
    {
      goto LABEL_52;
    }

    UUID.init()();
    type metadata accessor for WorkoutBlock(0);
    a3 = swift_allocObject();
    a1 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
    v48[0] = 1;
    Published.init(initialValue:)();
    (*(v11 + 32))(a3 + a1, v14, v45);
    v11 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
    v48[0] = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    Published.init(initialValue:)();
    (*(v7 + 32))(a3 + v11, v10, v47);
    v24 = *(v15 + 32);
    v47 = a3;
    v24(a3 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v18, v46);
    v25 = v42;
    swift_beginAccess();
    v7 = *v25;
    v10 = v7 >> 62 ? __CocoaSet.count.getter() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v10)
    {
      break;
    }

    v26 = 0;
    v15 = 0;
    v45 = v7 & 0xFFFFFFFFFFFFFF8;
    v46 = v7 & 0xC000000000000001;
    v43 = v10;
    v44 = v7;
    while (v46)
    {
      v7 = MEMORY[0x20F2E7A20](v26, v7);
      a3 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_45;
      }

LABEL_17:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v48);

      v28 = v48[0];
      swift_getKeyPath();
      swift_getKeyPath();
      v29 = static Published.subscript.modify();
      specialized Array.append<A>(contentsOf:)(v28, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized Array._copyContents(initializing:));
      v29(v48, 0);

      swift_beginAccess();

      v10 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(a2, v7);

      a1 = *a2;
      v18 = (*a2 >> 62);
      if (v18)
      {
        v11 = __CocoaSet.count.getter();
        v14 = v11 - v10;
        if (v11 < v10)
        {
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      else
      {
        v11 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v11 - v10;
        if (v11 < v10)
        {
          goto LABEL_39;
        }
      }

      if (v10 < 0)
      {
        goto LABEL_47;
      }

      if (v18)
      {
        v30 = __CocoaSet.count.getter();
      }

      else
      {
        v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v30 < v11)
      {
        goto LABEL_48;
      }

      v31 = __OFSUB__(0, v14);
      v14 = -v14;
      if (v31)
      {
        goto LABEL_49;
      }

      if (v18)
      {
        v32 = __CocoaSet.count.getter();
      }

      else
      {
        v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = __OFADD__(v32, v14);
      v14 += v32;
      if (v31)
      {
        goto LABEL_50;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *a2 = a1;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v18)
        {
          if (v14 <= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }
      }

      else if (!v18)
      {
        goto LABEL_12;
      }

      __CocoaSet.count.getter();
LABEL_12:
      a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      *a2 = a1;
LABEL_13:
      v27 = v10;
      v10 = a2;
      specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v27, v11, 0);
      *a2 = a1;
      swift_endAccess();

      ++v26;
      v7 = v44;
      if (a3 == v43)
      {
        goto LABEL_40;
      }
    }

    if (v26 >= *(v45 + 16))
    {
      goto LABEL_46;
    }

    v7 = *(v7 + 8 * v26 + 32);

    a3 = v26 + 1;
    if (!__OFADD__(v26, 1))
    {
      goto LABEL_17;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_52;
    }

LABEL_3:
    swift_beginAccess();
    a1 = *a2;
    v21 = v42;
    swift_beginAccess();
    a3 = *v21;
    if ((a3 & 0xC000000000000001) == 0)
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        a3 = *(a3 + 32);

        goto LABEL_6;
      }

      __break(1u);
LABEL_56:
      v34 = __CocoaSet.count.getter();
      goto LABEL_42;
    }
  }

LABEL_40:

  WorkoutBlock.repetitions.setter(v41);
  swift_beginAccess();
  if (*a2 >> 62)
  {
    goto LABEL_56;
  }

  v34 = *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_42:
  v35 = v40;
  if (v34 < v40)
  {
    __break(1u);
  }

  else if ((v40 & 0x8000000000000000) == 0)
  {
    v36 = v47;

    specialized Array.replaceSubrange<A>(_:with:)(v35, v35, v36, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
    swift_endAccess();

    v37 = v42;
    swift_beginAccess();
    *v37 = MEMORY[0x277D84F90];
  }

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

Swift::Int_optional __swiftcall IntervalWorkout.stepIndex(for:)(WorkoutCore::IntervalWorkoutKeyPath a1)
{
  v1 = *a1.block;
  v2 = *(a1.block + 8);
  v3 = *(a1.block + 16);
  if (IntervalWorkout.isValid.getter())
  {
    if (one-time initialization token for InitialState != -1)
    {
LABEL_20:
      swift_once();
    }

    v5 = 0;
    v6 = static IntervalWorkoutKeyPath.InitialState;
    v7 = qword_27C729E28;
    while (1)
    {
      v8 = v1 == v6 && v2 == *(&v6 + 1);
      v9 = v8 && v3 == v7;
      v10 = !v9;
      if (v9)
      {
        break;
      }

      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      v14 = v7;
      v13 = v6;
      v4.value.block = &v13;
      v4 = IntervalWorkout.nextKeyPath(currentKeyPath:)(v4.value);
      v6 = v15;
      v7 = v16;
      ++v5;
      if (v17 == 1)
      {
        v5 = 0;
        break;
      }
    }
  }

  else
  {
    v5 = 0;
    v10 = 1;
  }

  v11 = v5;
  v12 = v10;
  result.value = v11;
  result.is_nil = v12;
  return result;
}

uint64_t IntervalWorkout.totalStepCount.getter()
{
  if (!IntervalWorkout.isValid.getter())
  {
    return 0;
  }

  if (one-time initialization token for InitialState != -1)
  {
    swift_once();
  }

  v1 = static IntervalWorkoutKeyPath.InitialState;
  v2 = qword_27C729E28;
  v3 = 1;
  while (1)
  {
    v7 = v2;
    v6 = v1;
    v0.value.block = &v6;
    v0 = IntervalWorkout.nextKeyPath(currentKeyPath:)(v0.value);
    if (v10)
    {
      break;
    }

    v1 = v8;
    v2 = v9;
    if (__OFADD__(v3++, 1))
    {
      __break(1u);
      return 0;
    }
  }

  return v3;
}

id IntervalWorkout.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id IntervalWorkout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *protocol witness for Decodable.init(from:) in conformance IntervalWorkout@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = IntervalWorkout.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for Equivalent.isEquivalent(to:) in conformance IntervalWorkout(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return specialized IntervalWorkout.isEquivalent(to:)(v5, v2, v3, v4);
}

uint64_t protocol witness for Equivalent.equivalentHash(into:) in conformance IntervalWorkout(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  String.hash(into:)();

  v2 = IntervalWorkout.blocks.getter();
  specialized Array<A>.hash(into:)(a1, v2);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance IntervalWorkout@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[24 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 2);
          *(v13 + 24) = *v13;
          *(v13 + 5) = *(v13 + 2);
          *v13 = v11;
          *(v13 + 8) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 24;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6);
      v10 = 24 * v8;
      v11 = (*a3 + 24 * v8);
      v13 = *v11;
      v12 = v11 + 6;
      v14 = v13;
      v15 = v8 + 2;
      v16 = v9;
      while (v5 != v15)
      {
        v17 = *v12;
        v12 += 3;
        v18 = v17 >= v16;
        ++v15;
        v16 = v17;
        if ((((v9 < v14) ^ v18) & 1) == 0)
        {
          v6 = v15 - 1;
          if (v9 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v19 = 0;
        v20 = 24 * v6;
        v21 = v8;
        do
        {
          if (v21 != v6 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v10);
            v23 = v27 + v20;
            v24 = *(v22 + 2);
            v25 = *v22;
            v26 = *(v23 - 8);
            *v22 = *(v23 - 24);
            *(v22 + 2) = v26;
            *(v23 - 24) = v25;
            *(v23 - 8) = v24;
          }

          ++v21;
          --v19;
          v20 -= 24;
          v10 += 24;
        }

        while (v21 < v6 + v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 24 * v6 - 24;
  v30 = v8 - v6;
LABEL_30:
  v31 = *(v28 + 24 * v6);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v6;
      v29 += 24;
      --v30;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 32);
    *(v33 + 24) = *v33;
    *(v33 + 40) = *(v33 + 16);
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 24;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = specialized Array.remove(at:)(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

{
  v42 = a4;
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v24 = __src;
    if (a4 != __src || &__src[8 * v11] <= a4)
    {
      memmove(a4, __src, 8 * v11);
    }

    v13 = &v42[8 * v11];
    if (v9 >= 8 && v24 > v5)
    {
      do
      {
        v41 = v24;
        v25 = v24 - 8;
        v26 = v4 - 8;
        v27 = v13;
        while (1)
        {
          v28 = v26;
          v29 = v26 + 8;
          v30 = *(v27 - 1);
          v27 -= 8;
          v31 = v25;
          v32 = *v25;
          v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v34 = *(v30 + v33);
          v35 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
          swift_beginAccess();
          LODWORD(v34) = *(v34 + v35);
          v36 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
          swift_beginAccess();
          v37 = *(v32 + v36);
          v38 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
          swift_beginAccess();
          if (*(v37 + v38) < v34)
          {
            break;
          }

          if (v29 != v13)
          {
            *v28 = *v27;
          }

          v26 = v28 - 8;
          v13 = v27;
          v25 = v31;
          if (v27 <= v42)
          {
            v13 = v27;
            v24 = v41;
            goto LABEL_37;
          }
        }

        v4 = v28;
        if (v29 != v41)
        {
          *v28 = *v31;
        }

        if (v13 <= v42)
        {
          break;
        }

        v24 = v31;
      }

      while (v31 > v5);
      v24 = v31;
    }
  }

  else
  {
    v12 = __src;
    if (a4 != __dst || &__dst[8 * v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v13 = &v42[8 * v8];
    if (v6 >= 8 && v12 < v4)
    {
      v40 = v13;
      while (1)
      {
        v14 = *v12;
        v15 = *v42;
        v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v17 = *(v14 + v16);
        v18 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
        swift_beginAccess();
        LODWORD(v17) = *(v17 + v18);
        v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
        swift_beginAccess();
        v20 = *(v15 + v19);
        v21 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
        swift_beginAccess();
        if (*(v20 + v21) >= v17)
        {
          break;
        }

        v22 = v12;
        v23 = v5 == v12;
        v12 += 8;
        v13 = v40;
        if (!v23)
        {
          goto LABEL_17;
        }

LABEL_18:
        v5 += 8;
        if (v42 >= v13 || v12 >= v4)
        {
          goto LABEL_20;
        }
      }

      v22 = v42;
      v42 += 8;
      v13 = v40;
      if (v5 == v22)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    v24 = v5;
  }

LABEL_37:
  if (v24 != v42 || v24 >= &v42[(v13 - v42 + (v13 - v42 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v24, v42, 8 * ((v13 - v42) / 8));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_24:
      v36 = v6;
      v24 = v6 - 8;
      v25 = v5 - 8;
      v26 = v14;
      do
      {
        v27 = v25;
        v28 = v25 + 8;
        v29 = *(v26 - 1);
        v26 -= 8;
        v30 = v24;
        v31 = *v24;
        v32 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        v33 = *(v29 + v32);
        v34 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        if (*(v31 + v34) < v33)
        {
          v5 = v27;
          if (v28 != v36)
          {
            *v27 = *v30;
          }

          if (v14 <= v4 || (v6 = v30, v30 <= v7))
          {
            v6 = v30;
            goto LABEL_35;
          }

          goto LABEL_24;
        }

        if (v28 != v14)
        {
          *v27 = *v26;
        }

        v25 = v27 - 8;
        v14 = v26;
        v24 = v30;
      }

      while (v26 > v4);
      v14 = v26;
      v6 = v36;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = v5;
        v16 = *v6;
        v17 = *v4;
        v18 = v6;
        v19 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        v20 = *(v16 + v19);
        v21 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
        swift_beginAccess();
        if (*(v17 + v21) >= v20)
        {
          break;
        }

        v22 = v18;
        v6 = v18 + 8;
        if (v7 != v18)
        {
          goto LABEL_15;
        }

LABEL_16:
        v7 += 8;
        if (v4 < v14)
        {
          v5 = v15;
          if (v6 < v15)
          {
            continue;
          }
        }

        goto LABEL_18;
      }

      v22 = v4;
      v23 = v7 == v4;
      v4 += 8;
      v6 = v18;
      if (v23)
      {
        goto LABEL_16;
      }

LABEL_15:
      *v7 = *v22;
      goto LABEL_16;
    }

LABEL_18:
    v6 = v7;
  }

LABEL_35:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6;
      v17 = *v4;
      swift_beginAccess();
      v18 = *(v16 + 16);
      swift_beginAccess();
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      swift_beginAccess();
      v21 = *(v17 + 16);
      swift_beginAccess();
      v22 = v19 == *(v21 + 16) && v20 == *(v21 + 24);
      if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v22 = v7 == v4;
      v4 += 8;
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v22 = v7 == v6;
    v6 += 8;
    if (v22)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
    do
    {
      v33 = v6;
      v23 = v6 - 8;
      v5 -= 8;
      v24 = v14;
      while (1)
      {
        v25 = *(v24 - 1);
        v24 -= 8;
        v6 = v23;
        v26 = *v23;
        swift_beginAccess();
        v27 = *(v25 + 16);
        swift_beginAccess();
        v28 = *(v27 + 16);
        v29 = *(v27 + 24);
        swift_beginAccess();
        v30 = *(v26 + 16);
        swift_beginAccess();
        v31 = v28 == *(v30 + 16) && v29 == *(v30 + 24);
        if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        if (v5 + 8 != v14)
        {
          *v5 = *v24;
        }

        v5 -= 8;
        v14 = v24;
        v23 = v6;
        if (v24 <= v4)
        {
          v14 = v24;
          v6 = v33;
          goto LABEL_43;
        }
      }

      if (v5 + 8 != v33)
      {
        *v5 = *v6;
      }
    }

    while (v14 > v4 && v6 > v7);
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

double *specialized Array.replaceSubrange<A>(_:with:)(double *result, uint64_t a2, double a3, double a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v6 + 3) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

uint64_t specialized IntervalWorkout.isEquivalent(to:)(void *a1, uint64_t a2)
{
  v15[3] = swift_getObjectType();
  v15[4] = &protocol witness table for IntervalWorkout;
  v15[0] = a1;
  outlined init with copy of Equivalent(v15, &v13);
  v3 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v13);

  v5 = v13;
  v4 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v13);

  if (v5 != v13 || v4 != v14)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v7 = IntervalWorkout.blocks.getter();
  v8 = IntervalWorkout.blocks.getter();
  v9 = specialized _arrayForceCast<A, B>(_:)(v8);

  v10 = specialized Array.isEquivalent(to:)(v9, v7);

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v10 & 1;
}

uint64_t specialized IntervalWorkout.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v19[3] = a3;
  v19[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of Equivalent(v19, &v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v17);

  v9 = v17;
  v8 = v18;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v17);

  if (v9 != v17 || v8 != v18)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_6;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v11 = IntervalWorkout.blocks.getter();
  v12 = IntervalWorkout.blocks.getter();
  v13 = specialized _arrayForceCast<A, B>(_:)(v12);

  v14 = specialized Array.isEquivalent(to:)(v13, v11);

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v14 & 1;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
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

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
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
    v4 = MEMORY[0x20F2E7A20](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}