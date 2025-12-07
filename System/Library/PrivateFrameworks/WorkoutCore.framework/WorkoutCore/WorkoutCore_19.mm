Swift::Void __swiftcall PowerZonesAccumulator.notifyZonesUpdateIfNeeded()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong powerZonesConfigurationDidUpdate];
    swift_unknownObjectRelease();
  }

  if ([v0 isAccumulating])
  {
    [v0 update];
  }
}

uint64_t PowerZonesAccumulator.updateTargetZone(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v2 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_processingQueue);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in PowerZonesAccumulator.updateTargetZone(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_22;
  v14 = _Block_copy(aBlock);

  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v14);
  _Block_release(v14);
  (*(v19 + 8))(v7, v4);
  (*(v8 + 8))(v11, v18);
}

void closure #1 in PowerZonesAccumulator.updateTargetZone(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesAlertTargetZone);
    *(Strong + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesAlertTargetZone) = a2;
    v5 = Strong;
    v6 = a2;
  }
}

Swift::Void __swiftcall PowerZonesAccumulator.finalZonesElapsedTimes(_:)(Swift::OpaquePointer a1)
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

  PowerZonesAccumulator.updateMetadata()();
}

Swift::Void __swiftcall PowerZonesAccumulator.updateMetadata()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
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
    HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(v14, v9, v6, v25, v26);

    _s10Foundation4DateVSgWOhTm_3(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVSgWOhTm_3(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter(v27);

    v19 = [v1 builder];
    MEMORY[0x28223BE20](v19, v20);
    *(&v25 - 2) = v1;
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.setter(v9);

    v21 = [v1 builder];
    v22 = OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_lastProcessedEventDate;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v22, v9);
    HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.setter(v9);

    v23 = [v1 builder];
    MEMORY[0x28223BE20](v23, v24);
    *(&v25 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    OS_dispatch_queue.sync<A>(execute:)();
    HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.setter(v25, v26);
  }
}

void PowerZonesAccumulator.trackTargetZone(for:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v1 builder];
  [v14 elapsedTime];
  v16 = v15;

  if (specialized ZonesAlertTrackingProtocol.alertPreconditionSatified(_:)(v16))
  {
    v65 = v10;
    v67 = v5;
    v17 = [a1 quantity];
    [v17 doubleValueForUnit_];
    v19 = v18;

    v20 = *&v2[OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesAlertTargetZone];
    v21 = COERCE_DOUBLE(PowerZonesAlertTargetZone.applicableRange.getter());
    v23 = v22;
    v25 = v24;

    v66 = v9;
    if (v25)
    {
      v26 = 0;
    }

    else if (v19 >= v23)
    {
      v26 = 3;
    }

    else if (v19 < v21)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    v27 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
    swift_beginAccess();
    if (v26 && v2[v27] != v26)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static WOLog.zones);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      v31 = os_log_type_enabled(v29, v30);
      v64 = v27;
      if (v31)
      {
        v32 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        aBlock[0] = v63;
        *v32 = 136315394;
        v33 = _typeName(_:qualified:)();
        v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, aBlock);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;
        if (v26 == 1)
        {
          v37 = 0x776F6C6562;
          v36 = 0xE500000000000000;
        }

        else if (v26 == 2)
        {
          v36 = 0xE600000000000000;
          v37 = 0x6E6968746977;
        }

        else
        {
          v36 = 0xE500000000000000;
          v37 = 0x65766F6261;
        }

        v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v36, aBlock);

        *(v32 + 14) = v38;
        _os_log_impl(&dword_20AEA4000, v29, v30, "%s should fire alert for: %s", v32, 0x16u);
        v39 = v63;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v39, -1, -1);
        MEMORY[0x20F2E9420](v32, -1, -1);

        v27 = v64;
      }

      else
      {
      }

      LOBYTE(aBlock[0]) = v26;
      PowerZonesAccumulator.createZoneAlert(for:with:)(aBlock, v19);
      if (v40)
      {
        v41 = v40;
        type metadata accessor for OS_dispatch_queue();
        v63 = static OS_dispatch_queue.main.getter();
        v42 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v43 = swift_allocObject();
        *(v43 + 16) = v42;
        *(v43 + 24) = v41;
        aBlock[4] = partial apply for closure #1 in PowerZonesAccumulator.trackTargetZone(for:);
        aBlock[5] = v43;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_13;
        v44 = _Block_copy(aBlock);
        v62 = v41;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x277D84F90];
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v45 = v63;
        MEMORY[0x20F2E7580](0, v13, v8, v44);
        v46 = v44;
        v27 = v64;
        _Block_release(v46);

        (*(v67 + 8))(v8, v4);
        (*(v65 + 8))(v13, v66);
      }
    }

    if (v2[v27] != v26)
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      __swift_project_value_buffer(v47, static WOLog.zones);
      v48 = v2;
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = 1701736302;
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        aBlock[0] = v53;
        *v52 = 136315650;
        v54 = _typeName(_:qualified:)();
        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, aBlock);

        *(v52 + 4) = v56;
        *(v52 + 12) = 2080;
        if (v2[v27] > 1u)
        {
          if (v2[v27] == 2)
          {
            v57 = 0xE600000000000000;
            v58 = 0x6E6968746977;
          }

          else
          {
            v57 = 0xE500000000000000;
            v58 = 0x65766F6261;
          }
        }

        else if (v2[v27])
        {
          v57 = 0xE500000000000000;
          v58 = 0x776F6C6562;
        }

        else
        {
          v57 = 0xE400000000000000;
          v58 = 1701736302;
        }

        v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v57, aBlock);

        *(v52 + 14) = v59;
        *(v52 + 22) = 2080;
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            v60 = 0xE600000000000000;
            v51 = 0x6E6968746977;
          }

          else
          {
            v60 = 0xE500000000000000;
            v51 = 0x65766F6261;
          }
        }

        else if (v26)
        {
          v60 = 0xE500000000000000;
          v51 = 0x776F6C6562;
        }

        else
        {
          v60 = 0xE400000000000000;
        }

        v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v60, aBlock);

        *(v52 + 24) = v61;
        _os_log_impl(&dword_20AEA4000, v49, v50, "%s zone state transitioned from: %s to: %s", v52, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v53, -1, -1);
        MEMORY[0x20F2E9420](v52, -1, -1);
      }

      v2[v27] = v26;
    }
  }
}

void closure #1 in PowerZonesAccumulator.trackTargetZone(for:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      [v10 alertSource:v11 didTriggerAlert:a2];

      swift_unknownObjectRelease();
    }

    static Date.now.getter();
    v12 = type metadata accessor for Date();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    v13 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
    swift_beginAccess();
    outlined assign with take of Date?(v6, v8 + v13);
    swift_endAccess();
  }
}

void PowerZonesAccumulator.createZoneAlert(for:with:)(char *a1, double a2)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = qword_20B433A90[*a1];
  v14 = &(*(v2 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesAlertTargetZone))[OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type];
  swift_beginAccess();
  v15 = *(v14 + 16);
  if ((v15 & 0xC0) != 0x40)
  {
    return;
  }

  v16 = *v14;
  v17 = *(v14 + 8);
  if (!v17)
  {
LABEL_42:
    outlined consume of PowerZonesAlertZoneType(v16, v17, v15);
    return;
  }

  v18 = (v17 & 0xC000000000000001);
  v61 = v13;
  v62 = v15;
  v63 = v2;
  if ((v17 & 0xC000000000000001) == 0)
  {
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v16 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v2 = (v17 + 8 * v16);
      v19 = v2[4];
      v4 = v16;
      v20 = v17;
      outlined copy of PowerZonesAlertZoneType(v16, v17, v15);

      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_50;
  }

  v55 = v17;
  v56 = v16;
  v2 = (v17 + 8 * v16);

  v4 = v56;
  v20 = v55;
  v19 = MEMORY[0x20F2E7A20](v56, v55);
LABEL_7:
  v64 = v12;
  v65 = v20;
  v21 = *(v19 + 32);
  v22 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  v59 = v9;
  v60 = v8;
  if (!v21)
  {
    v3 = v2;
    v14 = v63;
    goto LABEL_19;
  }

  v23 = objc_opt_self();
  v8 = [v23 wattUnit];
  v5 = *(v19 + 16) + 1.0;
  v24 = objc_opt_self();
  v22 = [v24 quantityWithUnit:v8 doubleValue:v5];

  v3 = v2;
  v14 = v63;
  if (!v22)
  {
    goto LABEL_20;
  }

  v8 = *(v63 + OBJC_IVAR____TtC11WorkoutCore16ZonesAccumulator_quantitySampleUnit);
  v2 = &selRef_adjustedStatisticsForStatistics_;
  [(SEL *)v22 doubleValueForUnit:v8];
  v5 = v25;

  if (v18)
  {
    goto LABEL_58;
  }

  v22 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v4 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_61:
    __break(1u);
    return;
  }

  v26 = v3[4];

  while (1)
  {
    v27 = *(v26 + 40);
    v28 = __OFSUB__(v27, 1);
    v29 = v27 - 1;
    if (v28)
    {
      goto LABEL_60;
    }

    if (*(v26 + 32) != v29)
    {
      break;
    }

LABEL_19:

LABEL_20:
    if (v18)
    {
LABEL_50:
      v24 = MEMORY[0x20F2E7A20](v4, v65);
      v23 = 0x277CCD000;
    }

    else
    {
      v23 = 0x277CCD000uLL;
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        swift_once();
        goto LABEL_36;
      }

      if (v4 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v24 = v3[4];
    }

    v35 = *(v24 + 40);
    v28 = __OFSUB__(v35, 1);
    v36 = v35 - 1;
    v22 = v64;
    if (v28)
    {
      goto LABEL_52;
    }

    if (*(v24 + 32) == v36)
    {
    }

    else
    {
      v8 = [objc_opt_self() wattUnit];
      v5 = *(v24 + 24);
      v37 = [objc_opt_self() quantityWithUnit:v8 doubleValue:v5];

      if (v37)
      {
        goto LABEL_34;
      }
    }

    if (v18)
    {
      v38 = MEMORY[0x20F2E7A20](v4, v65);
LABEL_32:
      if (*(v38 + 32))
      {
        v39 = [objc_opt_self() wattUnit];
        v37 = [objc_opt_self() quantityWithUnit:v39 doubleValue:*(v38 + 16) + 1.0];

        if (v37)
        {
LABEL_34:
          [v37 doubleValueForUnit_];
          v41 = v40;

          type metadata accessor for TargetZone();
          v33 = swift_allocObject();
          *(v33 + 16) = 5;
          *(v33 + 24) = v41;
          *(v33 + 32) = v41;
          v34 = (v41 > 0.0) & ~_stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_35;
        }
      }

      else
      {
      }

      v16 = v4;
      v17 = v65;
      LOBYTE(v15) = v62;
      goto LABEL_42;
    }

    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v38 = v3[4];

      goto LABEL_32;
    }

    __break(1u);
LABEL_58:
    v26 = MEMORY[0x20F2E7A20](v4, v65);
    v22 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  }

  v58 = v8;
  v8 = [v23 wattUnit];
  v30 = [v24 v22[126]];

  if (!v30)
  {
    goto LABEL_20;
  }

  [v30 v2[185]];
  v32 = v31;

  type metadata accessor for TargetZone();
  v33 = swift_allocObject();
  *(v33 + 16) = 5;
  *(v33 + 24) = v5;
  *(v33 + 32) = v32;
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v34 = 0;
    v22 = v64;
  }

  else
  {
    v22 = v64;
    v34 = v5 > 0.0 || v32 > 0.0;
  }

LABEL_35:
  *(v33 + 40) = v34;

  Date.init()();
  v42 = *(v14 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_activityType);
  v43 = type metadata accessor for WorkoutAlertZone();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone] = v33;
  *&v44[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue] = a2;
  *&v44[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType] = v42;

  v45 = v42;
  *&v44[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType] = FIUIDistanceTypeForActivityType();
  v66.receiver = v44;
  v66.super_class = v43;
  v18 = objc_msgSendSuper2(&v66, sel_init);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v18 setEventDate_];

  [v18 setType_];
  if (one-time initialization token for zones != -1)
  {
    goto LABEL_54;
  }

LABEL_36:
  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static WOLog.zones);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v18;
    *v51 = v18;
    v52 = v18;
    _os_log_impl(&dword_20AEA4000, v48, v49, "Created zone alert: %@", v50, 0xCu);
    _s10Foundation4DateVSgWOhTm_3(v51, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v53 = v51;
    v22 = v64;
    MEMORY[0x20F2E9420](v53, -1, -1);
    MEMORY[0x20F2E9420](v50, -1, -1);
  }

  else
  {
  }

  v54 = v60;
  outlined consume of PowerZonesAlertZoneType(v4, v65, v62);

  (*(v59 + 8))(v22, v54);
}

uint64_t PowerZonesAccumulator.__ivar_destroyer()
{

  _s10Foundation4DateVSgWOhTm_3(v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  sub_20AECE1DC(v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_workoutAlertDelegate);
  v1 = v0 + OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_powerZonesConfigurationDelegate;

  return sub_20AECE1DC(v1);
}

id PowerZonesAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PowerZonesAccumulator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.getter in conformance PowerZonesAccumulator@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.setter in conformance PowerZonesAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

void protocol witness for ZonesAlertTrackingProtocol.oldZoneState.getter in conformance PowerZonesAccumulator(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void protocol witness for ZonesAlertTrackingProtocol.oldZoneState.setter in conformance PowerZonesAccumulator(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityPowerZonesAccumulator_oldZoneState;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s10Foundation4DateVSgWOhTm_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for PowerZonesAccumulator(uint64_t a1)
{
  result = type metadata singleton initialization cache for PowerZonesAccumulator;
  if (!type metadata singleton initialization cache for PowerZonesAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_16Tm_0@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

void type metadata completion function for PowerZonesAccumulator(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id WorkoutConfiguration.displayDetail(_:)(void *a1)
{
  v2 = v1;
  type metadata accessor for GoalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v1;
    static Published.subscript.getter(v72);

    v5 = v72[0];
    v6 = [v72[0] goalTypeIdentifier];

    if (v6)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v72);

      v7 = v72[0];
      swift_beginAccess();
      v8 = FIUIDistanceTypeForActivityType();
      v9 = NLSessionActivityGoal.displayString(formattingManager:distanceType:localizedOpenString:)(a1, v8, 0, 0, 0);
      v11 = v10;

      v71[0] = v9;
      v71[1] = v11;
      lazy protocol witness table accessor for type String and conformance String();
      v12 = StringProtocol.localizedLowercase.getter();
    }

    else
    {

      return 0;
    }

    return v12;
  }

  type metadata accessor for IntervalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v13 = v1;
    static Published.subscript.getter(v72);

    v14 = v72[0];
    v12 = IntervalWorkout.displayName.getter();

    return v12;
  }

  type metadata accessor for RaceWorkoutConfiguration(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = v16;
    v2 = v2;
    v18 = RaceWorkoutConfiguration.cityAndLengthTitle(_:)(a1);
    if (v19)
    {
      v12 = v18;

      return v12;
    }

    v31 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    swift_beginAccess();
    v32 = *(v17 + v31);
    swift_beginAccess();
    v33 = FIUIDistanceTypeForActivityType();
    v34 = [a1 unitManager];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 userDistanceUnitForDistanceType_];

      v37 = [a1 localizedStringWithDistanceInMeters:v36 distanceUnit:2 unitStyle:2 decimalPrecision:v32];
      if (v37)
      {
        v38 = v37;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        lazy protocol witness table accessor for type String and conformance String();
        v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

        return v12;
      }

      return 0;
    }

    __break(1u);
  }

  else
  {
    type metadata accessor for PacerWorkoutConfiguration(0);
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v20 = v1;
      static Published.subscript.getter(v72);

      v21 = v72[0];
      v22 = [v72[0] goalTypeIdentifier];

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v72);

      v23 = v72[0];
      [v72[0] doubleValue];
      v25 = v24;

      v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v27 = [a1 localizedCompactGoalDescriptionForGoalType:v22 goalValue:*&v20[v26] activityType:v25];
      if (v27)
      {
        v28 = v27;
        v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;
      }

      else
      {
        v70 = 0;
        v30 = 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v71);

      v43 = v71[0];
      v44 = [v71[0] goalTypeIdentifier];

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v71);

      v45 = v71[0];
      [v71[0] doubleValue];
      v47 = v46;

      v48 = [a1 localizedGoalDescriptionForGoalType:v44 goalValue:*&v20[v26] activityType:v47];
      if (v48)
      {
        v49 = v48;
        v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v52 = v51;

        if (v30)
        {
          if (v52)
          {
            type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v54 = [objc_opt_self() bundleForClass_];
            v55 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B45B910);
            v56 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
            v57 = [v54 localizedStringForKey:v55 value:0 table:v56];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_20B4282E0;
            v59 = MEMORY[0x277D837D0];
            *(v58 + 56) = MEMORY[0x277D837D0];
            v60 = lazy protocol witness table accessor for type String and conformance String();
            *(v58 + 32) = v70;
            *(v58 + 40) = v30;
            *(v58 + 96) = v59;
            *(v58 + 104) = v60;
            *(v58 + 64) = v60;
            *(v58 + 72) = v50;
            *(v58 + 80) = v52;
            v12 = String.init(format:_:)();

            return v12;
          }
        }
      }

      return 0;
    }

    type metadata accessor for MultiSportWorkoutConfiguration(0);
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v39 = v1;
      static Published.subscript.getter(v72);

      v41 = v72[0];
      v40 = v72[1];

      v42 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v42 = v41 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v72);

        return v72[0];
      }

      else
      {
        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        v61 = swift_getObjCClassFromMetadata();
        v62 = [objc_opt_self() bundleForClass_];
        v63 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B458850);
        v64 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v65 = [v62 localizedStringForKey:v63 value:0 table:v64];

        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      return v12;
    }
  }

  _StringGuts.grow(_:)(49);

  v66 = [v2 description];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  MEMORY[0x20F2E6D80](v67, v69);

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, 0x800000020B45B8E0, "WorkoutCore/WorkoutConfigurationDisplayingDetails.swift", 55, 2, 57, 0);
  __break(1u);
  return result;
}

id RaceWorkoutConfiguration.cityAndLengthTitle(_:)(void *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  v7 = *(v1 + v6);
  swift_beginAccess();

  v8 = FIUIDistanceTypeForActivityType();
  result = [a1 unitManager];
  if (result)
  {
    v10 = result;
    v11 = [result userDistanceUnitForDistanceType_];

    v12 = [a1 localizedStringWithDistanceInMeters:v11 distanceUnit:2 unitStyle:2 decimalPrecision:v7];
    v13 = 0xE000000000000000;
    v14 = MEMORY[0x277D837D0];
    if (v12)
    {
      v15 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type String and conformance String();
      v16 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v13 = v17;
    }

    else
    {
      v16 = 0;
    }

    v18 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v18 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {
      goto LABEL_12;
    }

    v19 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
      v22 = MEMORY[0x20F2E6C00](0xD00000000000001DLL, 0x800000020B45B930);
      v23 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v24 = [v21 localizedStringForKey:v22 value:0 table:v23];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_20B4282E0;
      *(v25 + 56) = v14;
      v26 = lazy protocol witness table accessor for type String and conformance String();
      *(v25 + 32) = v16;
      *(v25 + 40) = v13;
      *(v25 + 96) = v14;
      *(v25 + 104) = v26;
      *(v25 + 64) = v26;
      *(v25 + 72) = v5;
      *(v25 + 80) = v4;
      v27 = String.init(format:_:)();

      return v27;
    }

    else
    {
LABEL_12:

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id RaceWorkoutConfiguration.displayDistanceFor(_:formatter:)(_BYTE *a1, void *a2)
{
  if (*a1 == 1)
  {
    v4 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  }

  v5 = (v2 + *v4);
  swift_beginAccess();
  v6 = *v5;
  swift_beginAccess();
  v7 = FIUIDistanceTypeForActivityType();
  result = [a2 unitManager];
  if (result)
  {
    v9 = result;
    v10 = [result userDistanceUnitForDistanceType_];

    v11 = [a2 localizedStringWithDistanceInMeters:v10 distanceUnit:2 unitStyle:2 decimalPrecision:v6];
    if (!v11)
    {
      return 0;
    }

    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v13 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WorkoutConfiguration.logLabel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v26[2] = *(v8 + v9);
  v27 = dispatch thunk of CustomStringConvertible.description.getter();
  v28 = v10;
  MEMORY[0x20F2E6D80](32, 0xE100000000000000);
  v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v11, v2);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v15 = specialized Collection.prefix(_:)(4, v12, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = MEMORY[0x20F2E6D00](v15, v17, v19, v21);
  v24 = v23;

  MEMORY[0x20F2E6D80](v22, v24);

  return v27;
}

id WorkoutConfiguration.displayDetail(formatter:)(void *a1)
{
  v2 = v1;
  v4 = WorkoutConfiguration.displayDetail(_:)(a1);
  if (v5)
  {
    v6 = v5;
    v7 = v4;
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = MEMORY[0x20F2E6C00](0xD000000000000024, 0x800000020B455FD0);
    v10 = [v8 BOOLForKey_];

    if (v10)
    {
      v33 = v7;
      v34 = v6;
      MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
      v11 = WorkoutConfiguration.logLabel.getter();
      MEMORY[0x20F2E6D80](v11);

      MEMORY[0x20F2E6D80](41, 0xE100000000000000);
      return v33;
    }

    return v7;
  }

  else
  {
    type metadata accessor for GoalWorkoutConfiguration(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v13 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      v14 = v2;
      static Published.subscript.getter(&v33);

      v15 = v33;
      v16 = [v33 goalTypeIdentifier];

      if (v16)
      {

        return 0;
      }

      else
      {
        v17 = [objc_opt_self() standardUserDefaults];
        v18 = MEMORY[0x20F2E6C00](0xD000000000000024, 0x800000020B455FD0);
        v19 = [v17 BOOLForKey_];

        if (v19)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v20 = v13;
          static Published.subscript.getter(&v33);

          v21 = v33;
          v22 = [v33 goalTypeIdentifier];

          _HKWorkoutGoalType.displayName(formattingManager:)(a1, v22);
          v24 = v23;
          v26 = v25;

          v33 = v24;
          v34 = v26;
          MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
          v27 = WorkoutConfiguration.logLabel.getter();
          MEMORY[0x20F2E6D80](v27);

          MEMORY[0x20F2E6D80](41, 0xE100000000000000);

          return v33;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v28 = v13;
        static Published.subscript.getter(&v33);

        v29 = v33;
        v30 = [v33 goalTypeIdentifier];

        _HKWorkoutGoalType.displayName(formattingManager:)(a1, v30);
        v32 = v31;

        return v32;
      }
    }
  }

  return result;
}

uint64_t key path getter for IntervalWorkoutConfiguration.intervalWorkout : IntervalWorkoutConfiguration@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for IntervalWorkoutConfiguration.intervalWorkout : IntervalWorkoutConfiguration(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static Published.subscript.setter();
}

uint64_t GuidedFeaturedActivityPickerItem.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title);

  return v1;
}

uint64_t GuidedFeaturedActivityPickerItem.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle);

  return v1;
}

uint64_t GuidedFeaturedActivityPickerItem.recencyTag.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag);

  return v1;
}

id @objc GuidedFeaturedActivityPickerItem.title.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x20F2E6C00](v4, v5);

  return v6;
}

uint64_t GuidedFeaturedActivityPickerItem.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier);

  return v1;
}

id GuidedFeaturedActivityPickerItem.compoundItem.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  v2 = type metadata accessor for CompoundActivityPickerItem();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v1;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v0 | 0x8000000000000000;
  v7.receiver = v3;
  v7.super_class = v2;
  v4 = v0;
  v5 = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id GuidedFeaturedActivityPickerItem.__allocating_init(activityType:title:subtitle:artwork:mediaType:recencyTag:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v19 = objc_allocWithZone(v11);
  *&v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType] = a1;
  v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type] = 2;
  v20 = &v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title];
  *v20 = a2;
  v20[1] = a3;
  v21 = &v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle];
  *v21 = a4;
  v21[1] = a5;
  outlined init with copy of Artwork?(a6, &v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] = a7;
  v22 = &v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag];
  *v22 = a8;
  v22[1] = a9;
  v23 = &v19[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier];
  *v23 = a10;
  v23[1] = a11;
  v27.receiver = v19;
  v27.super_class = v11;
  v24 = objc_msgSendSuper2(&v27, sel_init);
  outlined destroy of Artwork?(a6, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  return v24;
}

id GuidedFeaturedActivityPickerItem.init(activityType:title:subtitle:artwork:mediaType:recencyTag:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *&v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType] = a1;
  v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type] = 2;
  v15 = &v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title];
  *v15 = a2;
  v15[1] = a3;
  v16 = &v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle];
  *v16 = a4;
  v16[1] = a5;
  outlined init with copy of Artwork?(a6, &v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] = a7;
  v17 = &v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag];
  *v17 = a8;
  v17[1] = a9;
  v18 = &v11[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier];
  *v18 = a10;
  v18[1] = a11;
  v21.receiver = v11;
  v21.super_class = type metadata accessor for GuidedFeaturedActivityPickerItem(0);
  v19 = objc_msgSendSuper2(&v21, sel_init);
  outlined destroy of Artwork?(a6, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  return v19;
}

uint64_t type metadata accessor for GuidedFeaturedActivityPickerItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for GuidedFeaturedActivityPickerItem;
  if (!type metadata singleton initialization cache for GuidedFeaturedActivityPickerItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id GuidedFeaturedActivityPickerItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GuidedFeaturedActivityPickerItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedFeaturedActivityPickerItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t GuidedFeaturedActivityPickerItem.copy(with:)@<X0>(void *a1@<X8>)
{
  v29 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24[-v4];
  v6 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  v7 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title + 8);
  v27 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title);
  v28 = v6;
  v8 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle + 8);
  v26 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle);
  outlined init with copy of Artwork?(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork, &v24[-v4], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v25 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType);
  v9 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag);
  v10 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8);
  v12 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier);
  v11 = *(v1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier + 8);
  v13 = type metadata accessor for GuidedFeaturedActivityPickerItem(0);
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType] = v6;
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type] = 2;
  v15 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title];
  v16 = v26;
  *v15 = v27;
  v15[1] = v7;
  v17 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle];
  *v17 = v16;
  v17[1] = v8;
  outlined init with copy of Artwork?(v5, &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] = v25;
  v18 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag];
  *v18 = v9;
  v18[1] = v10;
  v19 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier];
  *v19 = v12;
  v19[1] = v11;
  v30.receiver = v14;
  v30.super_class = v13;

  v20 = v28;
  v21 = objc_msgSendSuper2(&v30, sel_init);
  result = outlined destroy of Artwork?(v5, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v23 = v29;
  v29[3] = v13;
  *v23 = v21;
  return result;
}

id protocol witness for CompoundActivityPickerItemProtocol.compoundItem.getter in conformance GuidedFeaturedActivityPickerItem()
{
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  v2 = type metadata accessor for CompoundActivityPickerItem();
  v3 = objc_allocWithZone(v2);
  v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v1;
  *&v3[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v0 | 0x8000000000000000;
  v7.receiver = v3;
  v7.super_class = v2;
  v4 = v0;
  v5 = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id protocol witness for Identifiable.id.getter in conformance GuidedFeaturedActivityPickerItem@<X0>(void *a1@<X8>)
{
  result = [*v1 id];
  *a1 = result;
  return result;
}

uint64_t GuidedFeaturedActivityPickerItem.symbolName.getter()
{
  if (*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType) > 1u)
  {
    if (*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType) - 2 < 2)
    {
      return 0x656D2E656C707061;
    }

    return 0xD000000000000012;
  }

  if (!*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType))
  {
    return 0xD000000000000012;
  }

  return 0xD00000000000001ELL;
}

uint64_t GuidedFeaturedActivityPickerItem.description.getter()
{
  _StringGuts.grow(_:)(43);

  v13[0] = 0xD000000000000027;
  v13[1] = 0x800000020B45B9C0;
  v1 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = 0xE600000000000000;
      v3 = 0x6E6F74747562;
    }

    else if (v1 == 4)
    {
      v2 = 0xE700000000000000;
      v3 = 0x646567616E616DLL;
    }

    else
    {
      v2 = 0xE800000000000000;
      v3 = 0x646E756F706D6F63;
    }
  }

  else if (*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type))
  {
    if (v1 == 1)
    {
      v2 = 0xE900000000000064;
      v3 = 0x6574636964657270;
    }

    else
    {
      v2 = 0xE600000000000000;
      v3 = 0x646564697567;
    }
  }

  else
  {
    v2 = 0xE800000000000000;
    v3 = 0x647261646E617473;
  }

  MEMORY[0x20F2E6D80](v3, v2);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v4 = v13[0];
  strcpy(v13, "title: ");
  v13[1] = 0xE700000000000000;
  MEMORY[0x20F2E6D80](*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title), *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title + 8));
  MEMORY[0x20F2E6D80](2108457, 0xE300000000000000);

  MEMORY[0x20F2E6D80](v13[0], 0xE700000000000000);

  strcpy(v13, "subtitle: ");
  HIDWORD(v13[1]) = -369098752;
  MEMORY[0x20F2E6D80](*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle), *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle + 8));
  MEMORY[0x20F2E6D80](2108457, 0xE300000000000000);

  MEMORY[0x20F2E6D80](v13[0], v13[1]);

  strcpy(v13, "artwork: ");
  WORD1(v13[1]) = 0;
  HIDWORD(v13[1]) = -385875968;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v5 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v5);

  MEMORY[0x20F2E6D80](2108457, 0xE300000000000000);

  MEMORY[0x20F2E6D80](v13[0], v13[1]);

  _StringGuts.grow(_:)(16);

  strcpy(v13, "recencyTag: ");
  HIWORD(v13[1]) = -5120;
  v12 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v6 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v6);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);

  MEMORY[0x20F2E6D80](v13[0], v13[1]);

  _StringGuts.grow(_:)(16);

  strcpy(v13, "identifier: ");
  HIWORD(v13[1]) = -5120;
  MEMORY[0x20F2E6D80](*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier), *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier + 8));
  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);

  MEMORY[0x20F2E6D80](v13[0], v13[1]);

  _StringGuts.grow(_:)(16);

  strcpy(v13, "activityType: ");
  HIBYTE(v13[1]) = -18;
  v7 = [*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType) description];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x20F2E6D80](v8, v10);

  MEMORY[0x20F2E6D80](v13[0], v13[1]);

  return v4;
}

Swift::Int GuidedFeaturedActivityPickerItem.hash.getter()
{
  v1 = type metadata accessor for Artwork();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v12 - v8;
  Hasher.init()();
  NSObject.hash(into:)();
  MEMORY[0x20F2E7FF0](*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type));
  String.hash(into:)();
  String.hash(into:)();
  outlined init with copy of Artwork?(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork, v9, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type Artwork and conformance Artwork(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, MEMORY[0x277D53A78], MEMORY[0x277D53A88]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
  }

  v10 = *(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType);
  if (v10 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x20F2E5300](v10);
    String.hash(into:)();
  }

  if (*(v0 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  return Hasher.finalize()();
}

uint64_t GuidedFeaturedActivityPickerItem.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Artwork?(a1, v5, &_sypSgMd, &_sypSgMR);
  if (!v6)
  {
    outlined destroy of Artwork?(v5, &_sypSgMd, &_sypSgMR);
    goto LABEL_5;
  }

  type metadata accessor for GuidedFeaturedActivityPickerItem(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = specialized static GuidedFeaturedActivityPickerItem.== infix(_:_:)(v1, v4);

  return v2 & 1;
}

id static GuidedFeaturedActivityPickerItem.guidedWalkCanonical()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = MEMORY[0x20F2E5300](1);
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = static HealthDataConstants.mediaTypeProperty.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v8;
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Artwork?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v9 = objc_allocWithZone(MEMORY[0x277D0A810]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithActivityTypeIdentifier:52 isIndoor:0 metadata:isa];

  static GuidedFeaturedActivityPickerItem.artworkCanonical()();
  v12 = type metadata accessor for Artwork();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  v13 = type metadata accessor for GuidedFeaturedActivityPickerItem(0);
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType] = v11;
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type] = 2;
  v15 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title];
  strcpy(&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title], "Time to Walk");
  v15[13] = 0;
  *(v15 + 7) = -5120;
  v16 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle];
  *v16 = 0xD000000000000011;
  v16[1] = 0x800000020B45B9F0;
  outlined init with copy of Artwork?(v3, &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] = 1;
  *&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag] = xmmword_20B433C20;
  v17 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier];
  *v17 = 0xD000000000000024;
  v17[1] = 0x800000020B45BA10;
  v20.receiver = v14;
  v20.super_class = v13;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  outlined destroy of Artwork?(v3, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  return v18;
}

uint64_t static GuidedFeaturedActivityPickerItem.artworkCanonical()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v9 - v2;
  v4 = type metadata accessor for ArtworkFlavorDescriptor();
  MEMORY[0x28223BE20](v4 - 8, v5);
  ArtworkFlavorDescriptor.init(family:flavor:variant:)();
  URL.init(string:)();
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v3, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    URL.absoluteString.getter();
    (*(v7 + 8))(v3, v6);
    return Artwork.init(backgroundColor:flavorDescriptor:height:template:textColor:width:)();
  }

  return result;
}

id static GuidedFeaturedActivityPickerItem.guidedRunCanonical()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v20 - v2;
  v4 = MEMORY[0x20F2E5300](0);
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = static HealthDataConstants.mediaTypeProperty.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v8;
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Artwork?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v9 = objc_allocWithZone(MEMORY[0x277D0A810]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v9 initWithActivityTypeIdentifier:37 isIndoor:0 metadata:isa];

  static GuidedFeaturedActivityPickerItem.artworkCanonical()();
  v12 = type metadata accessor for Artwork();
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  v13 = type metadata accessor for GuidedFeaturedActivityPickerItem(0);
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType] = v11;
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type] = 2;
  v15 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title];
  *v15 = 0x206F7420656D6954;
  v15[1] = 0xEB000000006E7552;
  v16 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle];
  *v16 = 0xD000000000000011;
  v16[1] = 0x800000020B45B9F0;
  outlined init with copy of Artwork?(v3, &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] = 0;
  *&v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag] = xmmword_20B433C20;
  v17 = &v14[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier];
  *v17 = 0xD000000000000024;
  v17[1] = 0x800000020B45BA40;
  v20.receiver = v14;
  v20.super_class = v13;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  outlined destroy of Artwork?(v3, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  return v18;
}

uint64_t outlined init with copy of Artwork?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized static GuidedFeaturedActivityPickerItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7ArtworkVSg_ADtMd, &_s11SeymourCore7ArtworkVSg_ADtMR);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v35 - v15;
  type metadata accessor for NSObject();
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type) != *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_type) || (*(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title) != *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title) || *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title + 8) != *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_title + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle) != *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle) || *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle + 8) != *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_subtitle + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = v5;
  v18 = OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork;
  v19 = *(v13 + 48);
  outlined init with copy of Artwork?(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_artwork, v16, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v20 = a2 + v18;
  v21 = v17;
  outlined init with copy of Artwork?(v20, &v16[v19], &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  v22 = *(v17 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v19], 1, v4) == 1)
    {
      outlined destroy of Artwork?(v16, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
      goto LABEL_18;
    }

LABEL_14:
    outlined destroy of Artwork?(v16, &_s11SeymourCore7ArtworkVSg_ADtMd, &_s11SeymourCore7ArtworkVSg_ADtMR);
    goto LABEL_15;
  }

  outlined init with copy of Artwork?(v16, v12, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  if (v22(&v16[v19], 1, v4) == 1)
  {
    (*(v17 + 8))(v12, v4);
    goto LABEL_14;
  }

  (*(v17 + 32))(v8, &v16[v19], v4);
  lazy protocol witness table accessor for type Artwork and conformance Artwork(&lazy protocol witness table cache variable for type Artwork and conformance Artwork, MEMORY[0x277D53A78], MEMORY[0x277D53A90]);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v21 + 8);
  v26(v8, v4);
  v26(v12, v4);
  outlined destroy of Artwork?(v16, &_s11SeymourCore7ArtworkVSgMd, &_s11SeymourCore7ArtworkVSgMR);
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v27 = *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType);
  if (*(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType) == 4)
  {
    if (v27 != 4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v27 == 4)
    {
      goto LABEL_15;
    }

    v28 = MEMORY[0x20F2E5300]();
    v30 = v29;
    if (v28 == MEMORY[0x20F2E5300](v27) && v30 == v31)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  v33 = *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8);
  v34 = *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag + 8);
  if (v33)
  {
    if (v34 && (*(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag) == *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_recencyTag) && v33 == v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_33;
    }

LABEL_15:
    v23 = 0;
    return v23 & 1;
  }

  if (v34)
  {
    goto LABEL_15;
  }

LABEL_33:
  if (*(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier) == *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier) && *(a1 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier + 8) == *(a2 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_identifier + 8))
  {
    v23 = 1;
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v23 & 1;
}

uint64_t instantiation function for generic protocol witness table for GuidedFeaturedActivityPickerItem(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Artwork and conformance Artwork(&lazy protocol witness table cache variable for type GuidedFeaturedActivityPickerItem and conformance GuidedFeaturedActivityPickerItem, type metadata accessor for GuidedFeaturedActivityPickerItem, &protocol conformance descriptor for GuidedFeaturedActivityPickerItem);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Artwork and conformance Artwork(&lazy protocol witness table cache variable for type GuidedFeaturedActivityPickerItem and conformance GuidedFeaturedActivityPickerItem, type metadata accessor for GuidedFeaturedActivityPickerItem, &protocol conformance descriptor for GuidedFeaturedActivityPickerItem);
  *(a1 + 8) = result;
  return result;
}

void type metadata completion function for GuidedFeaturedActivityPickerItem(uint64_t a1)
{
  type metadata accessor for Artwork?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Artwork?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Artwork?)
  {
    type metadata accessor for Artwork();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Artwork?);
    }
  }
}

uint64_t outlined destroy of Artwork?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Artwork and conformance Artwork(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ExertionValue.Group.localizedTitle.getter()
{
  v1 = *v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  if (v1 <= 1)
  {
    if (v1)
    {
      v4 = 1498628421;
      goto LABEL_10;
    }

    v5 = 0x44455050494B53;
    v6 = 0xE700000000000000;
  }

  else if (v1 == 2)
  {
    v5 = 0x4554415245444F4DLL;
    v6 = 0xEF54524F4646455FLL;
  }

  else
  {
    if (v1 == 3)
    {
      v4 = 1146241352;
LABEL_10:
      v5 = v4 | 0x4646455F00000000;
      v6 = 0xEB0000000054524FLL;
      goto LABEL_11;
    }

    v5 = 0x5F54554F5F4C4C41;
    v6 = 0xEE0054524F464645;
  }

LABEL_11:
  v7 = MEMORY[0x20F2E6C00](v5, v6);
  v8 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v9 = [v3 localizedStringForKey:v7 value:0 table:v8];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v10;
}

uint64_t ExertionValue.Group.localizedDescription.getter()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  if (v2 > 1)
  {
    v3 = "ALL_OUT_EFFORT_DESCRIPTION";
    if (v2 == 3)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v3 = "https://www.apple.com";
      v4 = 0xD00000000000001ALL;
    }

    if (v2 == 2)
    {
      v5 = "HARD_EFFORT_DESCRIPTION";
    }

    else
    {
      v5 = v3;
    }

    if (v2 == 2)
    {
      v1 = 0xD00000000000001BLL;
    }

    else
    {
      v1 = v4;
    }

    goto LABEL_13;
  }

  if (v2)
  {
    v5 = "MODERATE_EFFORT_DESCRIPTION";
LABEL_13:
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    v8 = MEMORY[0x20F2E6C00](v1, v5 | 0x8000000000000000);
    v9 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v2;
}

WorkoutCore::ExertionValue::Group_optional __swiftcall ExertionValue.Group.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExertionValue.Group()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExertionValue.Group(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t ExertionValue.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x20F2E7FF0](*v0);
  return MEMORY[0x20F2E7FF0](v1);
}

Swift::Int ExertionValue.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExertionValue()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExertionValue()
{
  v1 = *(v0 + 8);
  MEMORY[0x20F2E7FF0](*v0);
  return MEMORY[0x20F2E7FF0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExertionValue(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  MEMORY[0x20F2E7FF0](v3);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ExertionValue.Group and conformance ExertionValue.Group()
{
  result = lazy protocol witness table cache variable for type ExertionValue.Group and conformance ExertionValue.Group;
  if (!lazy protocol witness table cache variable for type ExertionValue.Group and conformance ExertionValue.Group)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExertionValue.Group and conformance ExertionValue.Group);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExertionValue and conformance ExertionValue()
{
  result = lazy protocol witness table cache variable for type ExertionValue and conformance ExertionValue;
  if (!lazy protocol witness table cache variable for type ExertionValue and conformance ExertionValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExertionValue and conformance ExertionValue);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExertionValue(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ExertionValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExertionValue.Group(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ExertionValue.Group(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t MirroredHostCommand.description.getter()
{
  v1 = 0x75716552676E6970;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

void MirroredHostCommand.init(protobuf:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if ((a1[1] & 1) == 0)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.dataLink);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_20AEA4000, v5, v6, "Unrecognized MirroredHostCommand rawValue: %ld", v7, 0xCu);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a2 = v3;
}

WorkoutCore::MirroredHostCommand_optional __swiftcall MirroredHostCommand.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredHostCommand()
{
  v1 = 0x75716552676E6970;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000020;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostCommand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostCommand(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MirroredHostCommand and conformance MirroredHostCommand()
{
  result = lazy protocol witness table cache variable for type MirroredHostCommand and conformance MirroredHostCommand;
  if (!lazy protocol witness table cache variable for type MirroredHostCommand and conformance MirroredHostCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostCommand and conformance MirroredHostCommand);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostCommand(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredHostCommand(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t NLWorkout.catalogWorkout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 catalogWorkoutBridge];
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
    v6 = type metadata accessor for CatalogWorkout();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a1, &v4[v5], v6);

    v7 = *(v13 + 56);
    v8 = a1;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for CatalogWorkout();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a1;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t key path getter for NLWorkout.catalogWorkout : NLWorkout@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 catalogWorkoutBridge];
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
    v6 = type metadata accessor for CatalogWorkout();
    v13 = *(v6 - 8);
    (*(v13 + 16))(a2, &v4[v5], v6);

    v7 = *(v13 + 56);
    v8 = a2;
    v9 = 0;
    v10 = v6;
  }

  else
  {
    v11 = type metadata accessor for CatalogWorkout();
    v7 = *(*(v11 - 8) + 56);
    v10 = v11;
    v8 = a2;
    v9 = 1;
  }

  return v7(v8, v9, 1, v10);
}

uint64_t key path setter for NLWorkout.catalogWorkout : NLWorkout(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  outlined init with copy of CatalogWorkout?(a1, &v7 - v4);
  return NLWorkout.catalogWorkout.setter(v5);
}

uint64_t NLWorkout.catalogWorkout.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for CatalogWorkout();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v22 - v14;
  outlined init with copy of CatalogWorkout?(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of CatalogWorkout?(v6);
    [v1 setCatalogWorkoutBridge_];
    return outlined destroy of CatalogWorkout?(a1);
  }

  else
  {
    (*(v8 + 32))(v15, v6, v7);
    v17 = *(v8 + 16);
    v17(v12, v15, v7);
    v18 = type metadata accessor for CatalogWorkoutCoreBridge(0);
    v19 = objc_allocWithZone(v18);
    v17(&v19[OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue], v12, v7);
    v22.receiver = v19;
    v22.super_class = v18;
    v20 = objc_msgSendSuper2(&v22, sel_init);
    v21 = *(v8 + 8);
    v21(v12, v7);
    [v1 setCatalogWorkoutBridge_];

    outlined destroy of CatalogWorkout?(a1);
    return (v21)(v15, v7);
  }
}

uint64_t outlined init with copy of CatalogWorkout?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CatalogWorkout?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*NLWorkout.catalogWorkout.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 catalogWorkoutBridge];
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
    v10 = type metadata accessor for CatalogWorkout();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v6, &v8[v9], v10);

    (*(v11 + 56))(v6, 0, 1, v10);
  }

  else
  {
    v12 = type metadata accessor for CatalogWorkout();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  return NLWorkout.catalogWorkout.modify;
}

void NLWorkout.catalogWorkout.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of CatalogWorkout?(v3, v2);
    NLWorkout.catalogWorkout.setter(v2);
    outlined destroy of CatalogWorkout?(v3);
  }

  else
  {
    NLWorkout.catalogWorkout.setter(v3);
  }

  free(v3);

  free(v2);
}

char *CompoundActivityItemsDataSource.init(compoundObservables:standardActivityTypeProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_observers;
  *&v2[v5] = [objc_opt_self() weakObjectsHashTable];
  *&v2[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundItems] = MEMORY[0x277D84F98];
  *&v2[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_standardActivityTypeProvider] = a2;
  *&v2[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundObservables] = a1;
  v68.receiver = v2;
  v68.super_class = type metadata accessor for CompoundActivityItemsDataSource();
  swift_unknownObjectRetain();
  v6 = objc_msgSendSuper2(&v68, sel_init);
  v7 = *&v6[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundObservables];
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v55 = OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_compoundItems;
  v12 = (v9 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v56 = v6;
  v13 = v6;
  v14 = 0;
  v57 = v13;
  v54 = v7;
  while (v11)
  {
LABEL_12:
    v16 = __clz(__rbit64(v11)) | (v14 << 6);
    v17 = *(*(v7 + 48) + 8 * v16);
    outlined init with copy of CompoundActivityItemsDataSourceObservable(*(v7 + 56) + 40 * v16, v65);
    aBlock = v17;
    v18 = v66;
    v19 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    (*(v19 + 16))(v57, &protocol witness table for CompoundActivityItemsDataSource, v18, v19);
    outlined init with copy of CompoundActivityItemsDataSourceObservable(v65, &v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore41CompoundActivityItemsDataSourceObservable_pMd, &_s11WorkoutCore41CompoundActivityItemsDataSourceObservable_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore41CompoundActivityItemsDataSourceCachedSync_pMd, &_s11WorkoutCore41CompoundActivityItemsDataSourceCachedSync_pMR);
    if (!swift_dynamicCast())
    {
      v59 = 0;
      memset(v58, 0, sizeof(v58));
      outlined destroy of CompoundActivityItemsDataSourceCachedSync?(v58, &_s11WorkoutCore41CompoundActivityItemsDataSourceCachedSync_pSgMd, &_s11WorkoutCore41CompoundActivityItemsDataSourceCachedSync_pSgMR);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = *&v56[v55];
      v35 = v60;
      *&v56[v55] = 0x8000000000000000;
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      v38 = v35[2];
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        goto LABEL_38;
      }

      v42 = v37;
      if (v35[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_26;
        }

        v49 = v36;
        specialized _NativeDictionary.copy()();
        v36 = v49;
        v44 = v60;
        if (v42)
        {
          goto LABEL_4;
        }

LABEL_27:
        v44[(v36 >> 6) + 8] |= 1 << v36;
        *(v44[6] + 8 * v36) = v17;
        *(v44[7] + 8 * v36) = MEMORY[0x277D84F90];
        v45 = v44[2];
        v40 = __OFADD__(v45, 1);
        v46 = v45 + 1;
        if (v40)
        {
          goto LABEL_40;
        }

        v44[2] = v46;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_41;
        }

LABEL_26:
        v44 = v60;
        if ((v42 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_4:
        *(v44[7] + 8 * v36) = MEMORY[0x277D84F90];
      }

      *&v56[v55] = v44;
      swift_endAccess();
      v13 = v57;
      goto LABEL_6;
    }

    outlined init with take of CompoundActivityItemsDataSourceCachedSync(v58, v61);
    v20 = v62;
    v21 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v22 = (*(v21 + 16))(v20, v21);
    swift_beginAccess();
    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v58[0] = *&v56[v55];
    v24 = *&v58[0];
    *&v56[v55] = 0x8000000000000000;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_37;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if (v23)
      {
        v33 = *&v58[0];
        if ((v25 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v33 = *&v58[0];
        if ((v30 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v23);
      v31 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_41;
      }

      v26 = v31;
      v33 = *&v58[0];
      if ((v30 & 1) == 0)
      {
LABEL_30:
        v33[(v26 >> 6) + 8] |= 1 << v26;
        *(v33[6] + 8 * v26) = v17;
        *(v33[7] + 8 * v26) = v22;
        v47 = v33[2];
        v40 = __OFADD__(v47, 1);
        v48 = v47 + 1;
        if (v40)
        {
          goto LABEL_39;
        }

        v33[2] = v48;
        goto LABEL_32;
      }
    }

    *(v33[7] + 8 * v26) = v22;

LABEL_32:
    *&v56[v55] = v33;
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1Tm_3(v61);
    v13 = v57;
    v7 = v54;
LABEL_6:
    v11 &= v11 - 1;
    outlined destroy of CompoundActivityItemsDataSourceCachedSync?(&aBlock, &_sSo31NLCompoundActivityPickerSectionV3key_11WorkoutCore08CompoundB25ItemsDataSourceObservable_p5valuetMd, &_sSo31NLCompoundActivityPickerSectionV3key_11WorkoutCore08CompoundB25ItemsDataSourceObservable_p5valuetMR);
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v50 = *&v13[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_standardActivityTypeProvider];
      v51 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v66 = partial apply for closure #2 in CompoundActivityItemsDataSource.init(compoundObservables:standardActivityTypeProvider:);
      v67 = v51;
      aBlock = MEMORY[0x277D85DD0];
      v65[0] = 1107296256;
      v65[1] = thunk for @escaping @callee_guaranteed () -> ();
      v65[2] = &block_descriptor_23;
      v52 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v50 setDidPopulateBlock_];
      _Block_release(v52);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v13;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  type metadata accessor for NLCompoundActivityPickerSection(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void closure #2 in CompoundActivityItemsDataSource.init(compoundObservables:standardActivityTypeProvider:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    CompoundActivityItemsDataSource.updateObservers()();
  }
}

id CompoundActivityItemsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompoundActivityItemsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompoundActivityItemsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id CompoundActivityItemsDataSource.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return specialized CompoundActivityItemsDataSource.addObserver(_:)(a1, v2);
}

id CompoundActivityItemsDataSource.removeObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return specialized CompoundActivityItemsDataSource.removeObserver(_:)(a1, v2);
}

uint64_t outlined init with copy of CompoundActivityItemsDataSourceObservable(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of CompoundActivityItemsDataSourceCachedSync(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 key path getter for HeartRatePrecisionStartAccumulator.heartRateData : HeartRatePrecisionStartAccumulator@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v6;
  return result;
}

void key path setter for HeartRatePrecisionStartAccumulator.heartRateData : HeartRatePrecisionStartAccumulator(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 8) = v4;
  v6 = *(a1 + 2);
  *(v5 + 16) = *(a1 + 1);
  *(v5 + 32) = v6;
  HeartRatePrecisionStartAccumulator.heartRateData.didset();
}

void HeartRatePrecisionStartAccumulator.heartRateData.didset()
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static WOLog.app);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      swift_beginAccess();
      lazy protocol witness table accessor for type Double and conformance Double();
      v7 = BinaryFloatingPoint.formatted()();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7._countAndFlagsBits, v7._object, &v11);

      *(v5 + 4) = v8;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[HeartRatePrecisionStartAccumulator] Updated heart_rate=%s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }
  }

  v9 = [v0 updateHandler];
  if (v9)
  {
    v10 = v9;
    (*(v9 + 2))();
    _Block_release(v10);
  }
}

uint64_t HeartRatePrecisionStartAccumulator.disabledForSession.getter()
{
  v1 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  swift_beginAccess();
  return *(v0 + v1);
}

void HeartRatePrecisionStartAccumulator.disabledForSession.setter(char a1)
{
  v3 = a1 & 1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  swift_beginAccess();
  v10 = *(v1 + v9);
  *(v1 + v9) = a1;
  if (v10 != v3)
  {
    if (a1)
    {
      HeartRatePrecisionStartAccumulator.stopQuery()();
    }

    else
    {
      Date.init()();
      HeartRatePrecisionStartAccumulator.startQuery(startDate:)();
      (*(v5 + 8))(v8, v4);
    }
  }
}

void key path setter for HeartRatePrecisionStartAccumulator.disabledForSession : HeartRatePrecisionStartAccumulator(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  v11 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  swift_beginAccess();
  v12 = *(v10 + v11);
  *(v10 + v11) = v9;
  if (v9 != v12)
  {
    if (v9)
    {
      HeartRatePrecisionStartAccumulator.stopQuery()();
    }

    else
    {
      Date.init()();
      HeartRatePrecisionStartAccumulator.startQuery(startDate:)();
      (*(v5 + 8))(v8, v4);
    }
  }
}

void (*HeartRatePrecisionStartAccumulator.disabledForSession.modify(uint64_t *a1))(unsigned __int8 **a1, char a2, __n128 a3)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for Date();
  *(v5 + 32) = v6;
  v7 = *(v6 - 8);
  *(v5 + 40) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  swift_beginAccess();
  *(v5 + 64) = *(v1 + v9);
  return HeartRatePrecisionStartAccumulator.disabledForSession.modify;
}

void HeartRatePrecisionStartAccumulator.disabledForSession.modify(unsigned __int8 **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = *(*a1 + 7);
  v5 = *(*a1 + 3);
  v6 = (*a1)[64];
  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  if (a2)
  {
    if (((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_8;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (((v6 ^ v7) & 1) == 0)
    {
      goto LABEL_8;
    }

    if (!v6)
    {
LABEL_4:
      v9 = *(v3 + 5);
      v8 = *(v3 + 6);
      v10 = *(v3 + 4);
      Date.init()();
      HeartRatePrecisionStartAccumulator.startQuery(startDate:)();
      (*(v9 + 8))(v8, v10);
      goto LABEL_8;
    }
  }

  HeartRatePrecisionStartAccumulator.stopQuery()();
LABEL_8:
  free(*(v3 + 6));

  free(v3);
}

id HeartRatePrecisionStartAccumulator.__allocating_init(healthStore:staleTimeout:delegate:heartRateSupported:)(void *a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v9 = objc_allocWithZone(v5);
  v10 = &v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData];
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  *&v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query] = 0;
  *&v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleDataTimer] = 0;
  swift_unknownObjectWeakInit();
  v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_didCollectFirstHeartRateSample] = 0;
  v11 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession] = 0;
  *&v9[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleTimeout] = a4;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v9[v11] = a3 ^ 1;
  v14.receiver = v9;
  v14.super_class = v5;
  v12 = objc_msgSendSuper2(&v14, sel_initWithHealthStore_, a1);

  swift_unknownObjectRelease();
  return v12;
}

id HeartRatePrecisionStartAccumulator.init(healthStore:staleTimeout:delegate:heartRateSupported:)(void *a1, uint64_t a2, char a3, double a4)
{
  v5 = specialized HeartRatePrecisionStartAccumulator.init(healthStore:staleTimeout:delegate:heartRateSupported:)(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

void HeartRatePrecisionStartAccumulator.startQuery(startDate:)()
{
  v1 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  swift_beginAccess();
  if (v0[v1])
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.app);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "[HeartRatePrecisionStartAccumulator] heart rate readings disabled, not starting heart rate query";
    goto LABEL_12;
  }

  if (![v0 isAccumulating] || (v7 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query, *&v0[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query]))
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.app);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_13;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "[HeartRatePrecisionStartAccumulator] Not starting heart rate query, either query already started or accumulator not accumulating";
LABEL_12:
    _os_log_impl(&dword_20AEA4000, v3, v4, v6, v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
LABEL_13:

    return;
  }

  v9 = v0;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.app);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[HeartRatePrecisionStartAccumulator] Starting heart rate query", v13, 2u);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  _sSo17OS_dispatch_queueCMaTm_8(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  v14 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (v14)
  {
    v15 = v14;
    v16 = v9;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v20 = [v18 predicateForSamplesWithStartDate:isa endDate:0 options:0];

    v21 = objc_allocWithZone(MEMORY[0x277CCCFF0]);
    v31 = partial apply for closure #1 in HeartRatePrecisionStartAccumulator.startQuery(startDate:);
    v32 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
    v30 = &block_descriptor_28;
    v22 = _Block_copy(&aBlock);

    v23 = v15;
    v24 = [v21 initWithType:v23 predicate:v20 anchor:0 limit:0 resultsHandler:v22];

    _Block_release(v22);

    [v24 setIgnoreDeletedObjects_];
    v31 = partial apply for closure #1 in HeartRatePrecisionStartAccumulator.startQuery(startDate:);
    v32 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ();
    v30 = &block_descriptor_31_1;
    v25 = _Block_copy(&aBlock);

    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ())?(partial apply for closure #1 in HeartRatePrecisionStartAccumulator.startQuery(startDate:));

    [v24 setUpdateHandler_];
    _Block_release(v25);

    v26 = [v16 healthStore];
    [v26 executeQuery_];

    v3 = *&v16[v7];
    *&v16[v7] = v24;
    goto LABEL_13;
  }

  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, 0x800000020B45BF00, "WorkoutCore/HeartRatePrecisionStartAccumulator.swift", 52, 2, 94, 0);
  __break(1u);
}

void closure #1 in HeartRatePrecisionStartAccumulator.startQuery(startDate:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    v6 = a2;
    v10 = __CocoaSet.count.getter();
    a2 = v6;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v10 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      return;
    }
  }

  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) == 0)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v12 < *(v9 + 16))
    {
      v13 = *(a2 + 8 * v12 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_32;
  }

  v13 = MEMORY[0x20F2E7A20](v12, a2, a3, a4, a5, a6);
LABEL_9:
  v22 = v13;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v6 = v14;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_19:
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        HeartRatePrecisionStartAccumulator.process(sample:)(v6);
      }

      return;
    }

    v7 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_didCollectFirstHeartRateSample;
    if (*(Strong + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_didCollectFirstHeartRateSample))
    {
LABEL_18:

      goto LABEL_19;
    }

    v8 = Strong;
    if (one-time initialization token for app == -1)
    {
LABEL_13:
      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static WOLog.app);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_20AEA4000, v17, v18, "[HeartRatePrecisionStartAccumulator] didCollectFirstHKHeartRateSample", v19, 2u);
        MEMORY[0x20F2E9420](v19, -1, -1);
      }

      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      WorkoutSignposter.emit(signpost:)(7);
      Strong = v8;
      *(v8 + v7) = 1;
      goto LABEL_18;
    }

LABEL_32:
    swift_once();
    goto LABEL_13;
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v9 = a3;
  v11 = *(a1 + 32);
  if (a3)
  {
    _sSo17OS_dispatch_queueCMaTm_8(0, &lazy cache variable for type metadata for HKSample, 0x277CCD8A8);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (a4)
  {
    _sSo17OS_dispatch_queueCMaTm_8(0, &lazy cache variable for type metadata for HKDeletedObject, 0x277CCD2E0);
    a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v12 = a2;
  v13 = a5;
  v14 = a6;
  v11(v12, v9, a4, a5, a6);
}

void HeartRatePrecisionStartAccumulator.stopQuery()()
{
  v1 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query;
  v2 = *&v0[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query];
  if (v2)
  {
    v3 = v0;
    v4 = one-time initialization token for app;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.app);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20AEA4000, v7, v8, "[HeartRatePrecisionStartAccumulator] Stopping heart rate query", v9, 2u);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    v10 = [v3 healthStore];
    [v10 stopQuery_];

    v11 = *&v3[v1];
    *&v3[v1] = 0;
  }
}

uint64_t HeartRatePrecisionStartAccumulator.process(sample:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v6 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 quantity];
  v16 = [objc_opt_self() _countPerMinuteUnit];
  [v15 doubleValueForUnit_];
  v18 = v17;

  v19 = [a1 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v21 = v20;
  (*(v11 + 8))(v14, v10);
  _sSo17OS_dispatch_queueCMaTm_8(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v18;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = v21;
  aBlock[4] = partial apply for closure #1 in HeartRatePrecisionStartAccumulator.process(sample:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_24_1;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v25);
  _Block_release(v25);

  (*(v29 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v28);
}

void closure #1 in HeartRatePrecisionStartAccumulator.process(sample:)(uint64_t a1, _OWORD *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (Strong + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData);
    swift_beginAccess();
    v6 = a2[1];
    *v5 = *a2;
    v5[1] = v6;
    v5[2] = a2[2];
    HeartRatePrecisionStartAccumulator.heartRateData.didset();
    HeartRatePrecisionStartAccumulator.scheduleStaleDataTimer()();
  }
}

void HeartRatePrecisionStartAccumulator.scheduleStaleDataTimer()()
{
  v1 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleDataTimer;
  [*(v0 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleDataTimer) invalidate];
  v2 = objc_opt_self();
  v3 = *(v0 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleTimeout);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = partial apply for closure #1 in HeartRatePrecisionStartAccumulator.scheduleStaleDataTimer();
  v8[5] = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v8[3] = &block_descriptor_24;
  v5 = _Block_copy(v8);

  v6 = [v2 scheduledTimerWithTimeInterval:0 repeats:v5 block:v3];
  _Block_release(v5);
  v7 = *(v0 + v1);
  *(v0 + v1) = v6;
}

void closure #1 in HeartRatePrecisionStartAccumulator.scheduleStaleDataTimer()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      [v5 heartRateProviderDidBecomeStale_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

__n128 @objc HeartRatePrecisionStartAccumulator.heartRateData.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v4;
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  *(a2 + 16) = result;
  *(a2 + 32) = v6;
  return result;
}

__n128 HeartRatePrecisionStartAccumulator.heartRateData.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;
  result = *(v3 + 16);
  v6 = *(v3 + 32);
  *(a1 + 16) = result;
  *(a1 + 32) = v6;
  return result;
}

id HeartRatePrecisionStartAccumulator.__allocating_init(healthStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithHealthStore_];

  return v3;
}

id HeartRatePrecisionStartAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeartRatePrecisionStartAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeartRatePrecisionStartAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized HeartRatePrecisionStartAccumulator.init(healthStore:staleTimeout:delegate:heartRateSupported:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v8 = &v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_heartRateData];
  *v8 = 0u;
  v8[1] = 0u;
  v8[2] = 0u;
  *&v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_query] = 0;
  *&v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleDataTimer] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_didCollectFirstHeartRateSample] = 0;
  v9 = OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession;
  v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_disabledForSession] = 0;
  *&v4[OBJC_IVAR___WOHeartRatePrecisionStartAccumulator_staleTimeout] = a4;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v4[v9] = a3 ^ 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HeartRatePrecisionStartAccumulator();
  return objc_msgSendSuper2(&v11, sel_initWithHealthStore_, a1);
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKAnchoredObjectQuery, @guaranteed [HKSample]?, @guaranteed [HKDeletedObject]?, @guaranteed HKQueryAnchor?, @guaranteed Error?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id HKHealthStore.cmCalorieUserInfo.getter()
{
  v2 = v1;
  v3 = v0;
  v104[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Calendar();
  v103 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v91 - v10;
  v99 = type metadata accessor for Date();
  v102 = *(v99 - 8);
  v13 = MEMORY[0x28223BE20](v99, v12);
  v96 = v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v97 = v91 - v16;
  v100 = type metadata accessor for DateComponents();
  v98 = *(v100 - 8);
  v18 = MEMORY[0x28223BE20](v100, v17);
  v95 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = v91 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v101 = v91 - v25;
  v104[0] = 0;
  v26 = [v3 biologicalSexWithError_];
  v27 = v104[0];
  if (!v26 || ((v28 = v26, v29 = v104[0], v30 = [v28 biologicalSex], v28, v30 > 3) ? (v93 = 0) : (v93 = qword_20B4340B8[v30]), v104[0] = 0, v31 = objc_msgSend(v3, sel_wheelchairUseWithError_, v104), v27 = v104[0], !v31))
  {
    v35 = v27;
LABEL_9:
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  v32 = v31;
  v33 = v104[0];
  v34 = [v32 wheelchairUse];

  if (v34 > 2)
  {
    v92 = 0;
  }

  else
  {
    v92 = qword_20B4340D8[v34];
  }

  v94 = v4;
  v104[0] = 0;
  v37 = [v3 _heightCharacteristicQuantityWithError_];
  v38 = v104[0];
  if (v37)
  {
    v39 = v37;
    v40 = objc_opt_self();
    v41 = v38;
    v42 = [v40 meterUnitWithMetricPrefix_];
    [v39 0x1FBD82CC3];
    v44 = v43;
  }

  else
  {
    v45 = v104[0];
    v46 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v2 = 0;
    v44 = 1.7;
  }

  v104[0] = 0;
  v47 = [v3 _bodyMassCharacteristicQuantityWithError_];
  v48 = v104[0];
  if (v47)
  {
    v49 = v47;
    v50 = objc_opt_self();
    v51 = v48;
    v52 = [v50 gramUnitWithMetricPrefix_];
    [v49 0x1FBD82CC3];
    v54 = v53;
  }

  else
  {
    v55 = v104[0];
    v56 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v2 = 0;
    v54 = 68.0299988;
  }

  v57 = v94;
  v104[0] = 0;
  v58 = [v3 dateOfBirthComponentsWithError_];
  v59 = v104[0];
  if (v58)
  {
    v60 = v58;
    v91[1] = v2;
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v59;

    v62 = v98;
    (*(v98 + 32))(v101, v23, v100);
    static Calendar.current.getter();
    Calendar.date(from:)();
    v63 = v103 + 8;
    v64 = *(v103 + 8);
    v64(v7, v57);
    v65 = v102;
    v66 = v99;
    if ((*(v102 + 48))(v11, 1, v99) == 1)
    {
      (*(v62 + 8))(v101, v100);
      outlined destroy of Date?(v11);
      v67 = 30.0;
    }

    else
    {
      (*(v65 + 32))(v97, v11, v66);
      static Calendar.current.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd, &_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMR);
      v103 = v63;
      v70 = type metadata accessor for Calendar.Component();
      v71 = *(v70 - 8);
      v72 = *(v71 + 80);
      v91[0] = v64;
      v73 = v65;
      v74 = (v72 + 32) & ~v72;
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_20B423A90;
      (*(v71 + 104))(v75 + v74, *MEMORY[0x277CC9988], v70);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5Tf4g_n(v75);
      swift_setDeallocating();
      (*(v71 + 8))(v75 + v74, v70);
      swift_deallocClassInstance();
      v76 = v96;
      Date.init()();
      v77 = v95;
      v78 = v97;
      Calendar.dateComponents(_:from:to:)();

      v79 = *(v73 + 8);
      v102 = v73 + 8;
      v80 = v99;
      v79(v76, v99);
      (v91[0])(v7, v94);
      v81 = DateComponents.year.getter();
      LOBYTE(v76) = v82;
      v83 = *(v62 + 8);
      v84 = v77;
      v85 = v100;
      v83(v84, v100);
      v79(v78, v80);
      v83(v101, v85);
      v67 = 30.0;
      if ((v76 & 1) == 0)
      {
        v67 = v81;
      }
    }
  }

  else
  {
    v68 = v104[0];
    v69 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v67 = 30.0;
  }

  v104[0] = 0;
  v86 = [v3 _cardioFitnessMedicationsUseWithError_];
  if (!v86)
  {
    v35 = v104[0];
    goto LABEL_9;
  }

  v87 = v86;
  v88 = v104[0];
  v89 = [v87 takingBetaBlockers];

  v90 = objc_allocWithZone(MEMORY[0x277CC1C48]);
  return [v90 initWithAge:v93 gender:v92 height:v89 weight:v67 condition:v44 betaBlockerUse:v54];
}

uint64_t MultiSportWorkoutConfiguration.analyticsSubActivities.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v31);

  v1 = v31[0];
  if (v31[0] >> 62)
  {
    result = __CocoaSet.count.getter();
    v2 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_19:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v2 = *((v31[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = MEMORY[0x277D84F90];
  v30 = v1;
  do
  {
    if (v4)
    {
      v6 = MEMORY[0x20F2E7A20](v3, v1);
    }

    else
    {
      v6 = *(v1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    [*&v7[v8] effectiveTypeIdentifier];
    v9 = _HKWorkoutActivityNameForActivityType();
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14._object = 0x800000020B456540;
      v14._countAndFlagsBits = 0xD000000000000015;
      if (String.hasPrefix(_:)(v14))
      {
        v15 = String.count.getter();
        v16 = specialized Collection.dropFirst(_:)(v15, v11, v13);
        v18 = v17;
        v20 = v19;
        v21 = v2;
        v22 = v4;
        v24 = v23;

        v11 = MEMORY[0x20F2E6D00](v16, v18, v20, v24);
        v13 = v25;
        v4 = v22;
        v2 = v21;
        v1 = v30;
      }
    }

    else
    {
      v11 = 0xD000000000000010;
      v13 = 0x800000020B456520;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    }

    v27 = *(v5 + 2);
    v26 = *(v5 + 3);
    if (v27 >= v26 >> 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v5);
    }

    ++v3;

    *(v5 + 2) = v27 + 1;
    v28 = &v5[16 * v27];
    *(v28 + 4) = v11;
    *(v28 + 5) = v13;
  }

  while (v2 != v3);
LABEL_20:

  if (*(v5 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v29 = BidirectionalCollection<>.joined(separator:)();
  }

  else
  {

    return 1701736302;
  }

  return v29;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t key path getter for ActivityPickerDataSource.predictedItems : ActivityPickerDataSource@<X0>(void *a4@<X8>)
{
  return key path getter for ActivityPickerDataSource.predictedItems : ActivityPickerDataSource(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t (*ActivityPickerDataSource.predictedItems.modify(uint64_t *a1))()
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
  return ActivityPickerDataSource.predictedItems.modify;
}

uint64_t key path setter for ActivityPickerDataSource.$predictedItems : ActivityPickerDataSource(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t ActivityPickerDataSource.$predictedItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivityPickerDataSource.$predictedItems.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore27PredictedActivityPickerItemCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__predictedItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPickerDataSource.$predictedItems.modify;
}

uint64_t (*ActivityPickerDataSource.addWorkoutItems.modify(uint64_t *a1))()
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
  return ActivityPickerDataSource.addWorkoutItems.modify;
}

uint64_t key path setter for ActivityPickerDataSource.$addWorkoutItems : ActivityPickerDataSource(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t ActivityPickerDataSource.$addWorkoutItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivityPickerDataSource.$addWorkoutItems.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__addWorkoutItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPickerDataSource.$addWorkoutItems.modify;
}

uint64_t (*ActivityPickerDataSource.managedConfigurationSourceItems.modify(uint64_t *a1))()
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
  return ActivityPickerDataSource.managedConfigurationSourceItems.modify;
}

uint64_t key path setter for ActivityPickerDataSource.$managedConfigurationSourceItems : ActivityPickerDataSource(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t ActivityPickerDataSource.$managedConfigurationSourceItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivityPickerDataSource.$managedConfigurationSourceItems.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__managedConfigurationSourceItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPickerDataSource.$managedConfigurationSourceItems.modify;
}

uint64_t (*ActivityPickerDataSource.compoundItems.modify(uint64_t *a1))()
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
  return ActivityPickerDataSource.compoundItems.modify;
}

uint64_t key path setter for ActivityPickerDataSource.$compoundItems : ActivityPickerDataSource(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t ActivityPickerDataSource.$compoundItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivityPickerDataSource.$compoundItems.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__compoundItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPickerDataSource.$compoundItems.modify;
}

uint64_t key path setter for ActivityPickerDataSource.predictedItems : ActivityPickerDataSource(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ActivityPickerDataSource.predictedItems.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t ActivityPickerDataSource.predictedItems.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ActivityPickerDataSource.activityPickerItems.modify(uint64_t *a1))()
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
  return ActivityPickerDataSource.activityPickerItems.modify;
}

void ActivityPickerDataSource.predictedItems.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for ActivityPickerDataSource.$predictedItems : ActivityPickerDataSource(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ActivityPickerDataSource.$activityPickerItems : ActivityPickerDataSource(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t ActivityPickerDataSource.$predictedItems.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ActivityPickerDataSource.$activityPickerItems.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ActivityPickerDataSource.$activityPickerItems.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__activityPickerItems;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ActivityPickerDataSource.$activityPickerItems.modify;
}

void ActivityPickerDataSource.$predictedItems.modify(uint64_t a1, char a2)
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

void ActivityPickerDataSource.topItem.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_sections);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  v4 = v1 + 32;
  v71 = *(v1 + 16);
  v72 = *(v0 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_sections);
  while (v3 < *(v1 + 16))
  {
    v5 = *(v4 + v3);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v73);

        v25 = v73;
        if (v73 >> 62)
        {
          v26 = __CocoaSet.count.getter();
          if (v26)
          {
LABEL_30:
            v73 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26 & ~(v26 >> 63), 0);
            if (v26 < 0)
            {
              goto LABEL_82;
            }

            v8 = v73;
            if ((v25 & 0xC000000000000001) != 0)
            {
              v27 = 0;
              do
              {
                v28 = MEMORY[0x20F2E7A20](v27, v25);
                v73 = v8;
                v30 = *(v8 + 16);
                v29 = *(v8 + 24);
                if (v30 >= v29 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
                  v8 = v73;
                }

                ++v27;
                v31 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem, type metadata accessor for ButtonActivityPickerItem, &protocol conformance descriptor for ButtonActivityPickerItem);
                *(v8 + 16) = v30 + 1;
                v32 = v8 + 16 * v30;
                *(v32 + 32) = v28;
                *(v32 + 40) = v31;
              }

              while (v26 != v27);
            }

            else
            {
              v42 = 32;
              do
              {
                v43 = *(v25 + v42);
                v73 = v8;
                v45 = *(v8 + 16);
                v44 = *(v8 + 24);
                v46 = v43;
                if (v45 >= v44 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
                  v8 = v73;
                }

                v47 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem, type metadata accessor for ButtonActivityPickerItem, &protocol conformance descriptor for ButtonActivityPickerItem);
                *(v8 + 16) = v45 + 1;
                v48 = v8 + 16 * v45;
                *(v48 + 32) = v46;
                *(v48 + 40) = v47;
                v42 += 8;
                --v26;
              }

              while (v26);
            }

            goto LABEL_68;
          }
        }

        else
        {
          v26 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v26)
          {
            goto LABEL_30;
          }
        }
      }

      else if (v5 == 4)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v73);

        v15 = v73;
        if (v73 >> 62)
        {
          v16 = __CocoaSet.count.getter();
          if (v16)
          {
LABEL_20:
            v73 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
            if (v16 < 0)
            {
              goto LABEL_85;
            }

            v8 = v73;
            if ((v15 & 0xC000000000000001) != 0)
            {
              v17 = 0;
              do
              {
                v18 = MEMORY[0x20F2E7A20](v17, v15);
                v73 = v8;
                v20 = *(v8 + 16);
                v19 = *(v8 + 24);
                if (v20 >= v19 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
                  v8 = v73;
                }

                ++v17;
                v21 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, type metadata accessor for ManagedConfigurationSourcePickerItem, &protocol conformance descriptor for ManagedConfigurationSourcePickerItem);
                *(v8 + 16) = v20 + 1;
                v22 = v8 + 16 * v20;
                *(v22 + 32) = v18;
                *(v22 + 40) = v21;
              }

              while (v16 != v17);
            }

            else
            {
              v56 = 32;
              do
              {
                v57 = *(v15 + v56);
                v73 = v8;
                v59 = *(v8 + 16);
                v58 = *(v8 + 24);
                v60 = v57;
                if (v59 >= v58 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
                  v8 = v73;
                }

                v61 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, type metadata accessor for ManagedConfigurationSourcePickerItem, &protocol conformance descriptor for ManagedConfigurationSourcePickerItem);
                *(v8 + 16) = v59 + 1;
                v62 = v8 + 16 * v59;
                *(v62 + 32) = v60;
                *(v62 + 40) = v61;
                v56 += 8;
                --v16;
              }

              while (v16);
            }

            goto LABEL_68;
          }
        }

        else
        {
          v16 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v73);

        v34 = v73;
        if (v73 >> 62)
        {
          v35 = __CocoaSet.count.getter();
          if (v35)
          {
LABEL_42:
            v73 = MEMORY[0x277D84F90];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 & ~(v35 >> 63), 0);
            if (v35 < 0)
            {
              goto LABEL_84;
            }

            v8 = v73;
            if ((v34 & 0xC000000000000001) != 0)
            {
              v36 = 0;
              do
              {
                v37 = MEMORY[0x20F2E7A20](v36, v34);
                v73 = v8;
                v39 = *(v8 + 16);
                v38 = *(v8 + 24);
                if (v39 >= v38 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
                  v8 = v73;
                }

                ++v36;
                v40 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem, &protocol conformance descriptor for CompoundActivityPickerItem);
                *(v8 + 16) = v39 + 1;
                v41 = v8 + 16 * v39;
                *(v41 + 32) = v37;
                *(v41 + 40) = v40;
              }

              while (v35 != v36);
            }

            else
            {
              v63 = 32;
              do
              {
                v64 = *(v34 + v63);
                v73 = v8;
                v66 = *(v8 + 16);
                v65 = *(v8 + 24);
                v67 = v64;
                if (v66 >= v65 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1);
                  v8 = v73;
                }

                v68 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem, &protocol conformance descriptor for CompoundActivityPickerItem);
                *(v8 + 16) = v66 + 1;
                v69 = v8 + 16 * v66;
                *(v69 + 32) = v67;
                *(v69 + 40) = v68;
                v63 += 8;
                --v35;
              }

              while (v35);
            }

LABEL_68:

            v2 = v71;
            v1 = v72;
            v4 = v70;
            if (*(v8 + 16))
            {
              goto LABEL_80;
            }

            goto LABEL_78;
          }
        }

        else
        {
          v35 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v35)
          {
            goto LABEL_42;
          }
        }
      }
    }

    else
    {
      if (!*(v4 + v3))
      {
        v23 = ActivityPickerDataSource.standardItems.getter();
        v24 = specialized _arrayForceCast<A, B>(_:)(v23);
        goto LABEL_38;
      }

      if (v5 != 1)
      {
        v33 = ActivityPickerDataSource.guidedItems.getter();
        v24 = specialized _arrayForceCast<A, B>(_:)(v33);
LABEL_38:
        v8 = v24;

        if (*(v8 + 16))
        {
          goto LABEL_80;
        }

        goto LABEL_78;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v73);

      v6 = v73;
      if (v73 >> 62)
      {
        v7 = __CocoaSet.count.getter();
        if (v7)
        {
LABEL_9:
          v73 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
          if (v7 < 0)
          {
            goto LABEL_83;
          }

          v8 = v73;
          if ((v6 & 0xC000000000000001) != 0)
          {
            v9 = 0;
            do
            {
              v10 = MEMORY[0x20F2E7A20](v9, v6);
              v73 = v8;
              v12 = *(v8 + 16);
              v11 = *(v8 + 24);
              if (v12 >= v11 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
                v8 = v73;
              }

              ++v9;
              v13 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type PredictedActivityPickerItem and conformance PredictedActivityPickerItem, type metadata accessor for PredictedActivityPickerItem, &protocol conformance descriptor for PredictedActivityPickerItem);
              *(v8 + 16) = v12 + 1;
              v14 = v8 + 16 * v12;
              *(v14 + 32) = v10;
              *(v14 + 40) = v13;
            }

            while (v7 != v9);
          }

          else
          {
            v49 = 32;
            do
            {
              v50 = *(v6 + v49);
              v73 = v8;
              v52 = *(v8 + 16);
              v51 = *(v8 + 24);
              v53 = v50;
              if (v52 >= v51 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
                v8 = v73;
              }

              v54 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type PredictedActivityPickerItem and conformance PredictedActivityPickerItem, type metadata accessor for PredictedActivityPickerItem, &protocol conformance descriptor for PredictedActivityPickerItem);
              *(v8 + 16) = v52 + 1;
              v55 = v8 + 16 * v52;
              *(v55 + 32) = v53;
              *(v55 + 40) = v54;
              v49 += 8;
              --v7;
            }

            while (v7);
          }

          goto LABEL_68;
        }
      }

      else
      {
        v7 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_9;
        }
      }
    }

    v8 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_80:
      *(v8 + 32);

      return;
    }

LABEL_78:
    ++v3;

    if (v3 == v2)
    {
      return;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
}

uint64_t ActivityPickerDataSource.__allocating_init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(void *a1, void *a2, char *a3, void *a4, uint64_t a5)
{
  v103 = a5;
  v104 = a2;
  v105 = a4;
  v89 = a3;
  v86 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMR);
  v100 = *(v5 - 8);
  v101 = v5;
  v7 = MEMORY[0x28223BE20](v5, v6);
  v99 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v98 = &v76 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
  MEMORY[0x28223BE20](v97, v11);
  v90 = &v76 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  MEMORY[0x28223BE20](v94, v13);
  v85 = &v76 - v14;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
  MEMORY[0x28223BE20](v91, v15);
  v84 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMd, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMR);
  v18 = *(v17 - 8);
  v92 = v17;
  v93 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v87 = &v76 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMR);
  v22 = *(v21 - 8);
  v95 = v21;
  v96 = v22;
  MEMORY[0x28223BE20](v21, v23);
  v88 = &v76 - v24;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  v83 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v25);
  v82 = &v76 - v26;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v27);
  v79 = &v76 - v28;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  v29 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v30);
  v32 = &v76 - v31;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  v33 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v34);
  v36 = &v76 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v76 - v40;
  v42 = swift_allocObject();
  v43 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__predictedItems;
  v44 = MEMORY[0x277D84F90];
  v106 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore27PredictedActivityPickerItemCGMd, &_sSay11WorkoutCore27PredictedActivityPickerItemCGMR);
  Published.init(initialValue:)();
  (*(v38 + 32))(v42 + v43, v41, v37);
  v45 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__addWorkoutItems;
  v106 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore24ButtonActivityPickerItemCGMd, &_sSay11WorkoutCore24ButtonActivityPickerItemCGMR);
  Published.init(initialValue:)();
  (*(v33 + 32))(v42 + v45, v36, v77);
  v46 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__managedConfigurationSourceItems;
  v106 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMd, &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMR);
  Published.init(initialValue:)();
  (*(v29 + 32))(v42 + v46, v32, v78);
  v47 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__compoundItems;
  v106 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore26CompoundActivityPickerItemCGMd, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMR);
  v48 = v79;
  Published.init(initialValue:)();
  (*(v80 + 32))(v42 + v47, v48, v81);
  v49 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__activityPickerItems;
  v106 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore21AnyActivityPickerItemVGMd, &_sSay11WorkoutCore21AnyActivityPickerItemVGMR);
  v50 = v82;
  Published.init(initialValue:)();
  (*(v83 + 32))(v42 + v49, v50, v102);
  *(v42 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_sections) = &outlined read-only object #0 of ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:);
  v51 = v86;
  *(v42 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_standardActivityItemsDataSource) = v86;
  outlined init with copy of ActivityItemsDataSourceSync(v104, v42 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource);
  outlined init with copy of ActivityItemsDataSourceSync(v105, v42 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource);
  v52 = v89;
  *(v42 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource) = v89;
  *(v42 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityTypesProvider) = v103;
  swift_beginAccess();
  v86 = v51;
  v89 = v52;
  swift_unknownObjectRetain();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v53 = MEMORY[0x277CBCEC8];
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR, MEMORY[0x277CBCEC8]);
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[CompoundActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR, v53);
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[ButtonActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR, v53);
  v54 = v87;
  Publishers.CombineLatest3.init(_:_:_:)();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CombineLatest3<Published<[ManagedConfigurationSourcePickerItem]>.Publisher, Published<[CompoundActivityPickerItem]>.Publisher, Published<[ButtonActivityPickerItem]>.Publisher> and conformance Publishers.CombineLatest3<A, B, C>, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMd, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMR, MEMORY[0x277CBCAF8]);
  v55 = v88;
  v56 = v92;
  Publisher.map<A>(_:)();
  (*(v93 + 8))(v54, v56);
  swift_beginAccess();
  v57 = v98;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.CombineLatest3<Published<[ManagedConfigurationSourcePickerItem]>.Publisher, Published<[CompoundActivityPickerItem]>.Publisher, Published<[ButtonActivityPickerItem]>.Publisher>, [AnyActivityPickerItem]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMR, MEMORY[0x277CBCC08]);
  v58 = v95;
  Publisher<>.assign(to:)();
  (*(v96 + 8))(v55, v58);
  v59 = v100;
  v60 = v101;
  (*(v100 + 16))(v99, v57, v101);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v59 + 8))(v57, v60);
  v61 = v104;
  v62 = v104[3];
  v63 = v104[4];
  __swift_project_boxed_opaque_existential_1(v104, v62);
  v64 = *(v63 + 8);
  v65 = *(v64 + 16);

  v65(v66, &protocol witness table for ActivityPickerDataSource, v62, v64);

  v67 = v105;
  v68 = v105[3];
  v69 = v105[4];
  __swift_project_boxed_opaque_existential_1(v105, v68);
  v70 = *(v69 + 8);
  v71 = *(v70 + 16);

  v71(v72, &protocol witness table for ActivityPickerDataSource, v68, v70);

  v73 = v89;
  [*&v89[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_observers] addObject_];
  v74 = [objc_opt_self() defaultCenter];
  [v74 addObserver:v42 selector:sel_handleHKUserPreferenceDidChangeWithNotification_ name:*MEMORY[0x277CCCE80] object:0];

  __swift_destroy_boxed_opaque_existential_1Tm_4(v67);
  __swift_destroy_boxed_opaque_existential_1Tm_4(v61);

  swift_unknownObjectRelease();
  return v42;
}

uint64_t ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(void *a1, void *a2, char *a3, void *a4, uint64_t a5)
{
  v7 = specialized ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(a1, a2, a3, a4, a5);

  swift_unknownObjectRelease();
  return v7;
}

char *closure #1 in ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v58 = a3;
    v59 = __CocoaSet.count.getter();
    a3 = v58;
    v5 = v59;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = a3;
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v61 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    v6 = v61;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = MEMORY[0x20F2E7A20](v8, a1);
        v10 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, type metadata accessor for ManagedConfigurationSourcePickerItem, &protocol conformance descriptor for ManagedConfigurationSourcePickerItem);
        v62 = v6;
        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          v14 = v10;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v10 = v14;
          v6 = v62;
        }

        ++v8;
        *(v6 + 16) = v12 + 1;
        v13 = v6 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v10;
      }

      while (v5 != v8);
    }

    else
    {
      v15 = (a1 + 32);
      v16 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, type metadata accessor for ManagedConfigurationSourcePickerItem, &protocol conformance descriptor for ManagedConfigurationSourcePickerItem);
      do
      {
        v18 = *(v61 + 16);
        v17 = *(v61 + 24);
        v19 = *v15;
        if (v18 >= v17 >> 1)
        {
          v21 = v17 > 1;
          v22 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v18 + 1, 1);
          v19 = v22;
        }

        *(v61 + 16) = v18 + 1;
        v20 = v61 + 16 * v18;
        *(v20 + 32) = v19;
        *(v20 + 40) = v16;
        ++v15;
        --v5;
      }

      while (v5);
    }
  }

  if (a2 >> 62)
  {
    v23 = __CocoaSet.count.getter();
  }

  else
  {
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v63 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0);
    if ((v23 & 0x8000000000000000) == 0)
    {
      v24 = v63;
      if ((a2 & 0xC000000000000001) != 0)
      {
        v25 = 0;
        v26 = v60;
        do
        {
          v27 = MEMORY[0x20F2E7A20](v25, a2);
          v28 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem, &protocol conformance descriptor for CompoundActivityPickerItem);
          v64 = v24;
          v30 = *(v24 + 16);
          v29 = *(v24 + 24);
          if (v30 >= v29 >> 1)
          {
            v32 = v28;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
            v26 = v60;
            v28 = v32;
            v24 = v64;
          }

          ++v25;
          *(v24 + 16) = v30 + 1;
          v31 = v24 + 16 * v30;
          *(v31 + 32) = v27;
          *(v31 + 40) = v28;
        }

        while (v23 != v25);
      }

      else
      {
        v43 = (a2 + 32);
        v44 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem, &protocol conformance descriptor for CompoundActivityPickerItem);
        v26 = v60;
        do
        {
          v46 = *(v63 + 16);
          v45 = *(v63 + 24);
          v47 = *v43;
          if (v46 >= v45 >> 1)
          {
            v49 = v45 > 1;
            v50 = v47;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v49, v46 + 1, 1);
            v26 = v60;
            v47 = v50;
          }

          *(v63 + 16) = v46 + 1;
          v48 = v63 + 16 * v46;
          *(v48 + 32) = v47;
          *(v48 + 40) = v44;
          ++v43;
          --v23;
        }

        while (v23);
      }

      goto LABEL_26;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v26 = v60;
LABEL_26:
  if (v26 >> 62)
  {
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = MEMORY[0x277D84F90];
  if (!v33)
  {
LABEL_45:
    specialized Array.append<A>(contentsOf:)(v24);
    specialized Array.append<A>(contentsOf:)(v34);
    return v6;
  }

  v65 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = v65;
    v35 = v60;
    if ((v60 & 0xC000000000000001) != 0)
    {
      v36 = 0;
      do
      {
        v37 = MEMORY[0x20F2E7A20](v36, v35);
        v38 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem, type metadata accessor for ButtonActivityPickerItem, &protocol conformance descriptor for ButtonActivityPickerItem);
        v66 = v34;
        v40 = *(v34 + 16);
        v39 = *(v34 + 24);
        if (v40 >= v39 >> 1)
        {
          v42 = v38;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          v35 = v60;
          v38 = v42;
          v34 = v66;
        }

        ++v36;
        *(v34 + 16) = v40 + 1;
        v41 = v34 + 16 * v40;
        *(v41 + 32) = v37;
        *(v41 + 40) = v38;
      }

      while (v33 != v36);
    }

    else
    {
      v51 = (v60 + 32);
      v52 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ButtonActivityPickerItem and conformance ButtonActivityPickerItem, type metadata accessor for ButtonActivityPickerItem, &protocol conformance descriptor for ButtonActivityPickerItem);
      do
      {
        v67 = v34;
        v54 = *(v34 + 16);
        v53 = *(v34 + 24);
        v55 = *v51;
        if (v54 >= v53 >> 1)
        {
          v57 = v55;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
          v55 = v57;
          v34 = v67;
        }

        *(v34 + 16) = v54 + 1;
        v56 = v34 + 16 * v54;
        *(v56 + 32) = v55;
        *(v56 + 40) = v52;
        ++v51;
        --v33;
      }

      while (v33);
    }

    goto LABEL_45;
  }

LABEL_51:
  __break(1u);
  return result;
}

char *specialized thunk for @escaping @callee_guaranteed (@guaranteed [ManagedConfigurationSourcePickerItem], @guaranteed [CompoundActivityPickerItem], @guaranteed [ButtonActivityPickerItem]) -> (@owned [AnyActivityPickerItem])@<X0>(unint64_t *a1@<X0>, char **a2@<X8>)
{
  result = closure #1 in ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t ActivityPickerDataSource.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource;
  outlined init with copy of ActivityItemsDataSourceSync(v0 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource, v21);
  v3 = v22;
  v4 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(*(v4 + 8) + 24))(v0, &protocol witness table for ActivityPickerDataSource, v3);
  __swift_destroy_boxed_opaque_existential_1Tm_4(v21);
  v5 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource;
  outlined init with copy of ActivityItemsDataSourceSync(v0 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource, v21);
  v6 = v22;
  v7 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(*(v7 + 8) + 24))(v0, &protocol witness table for ActivityPickerDataSource, v6);
  __swift_destroy_boxed_opaque_existential_1Tm_4(v21);
  v8 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource;
  [*(*(v1 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource) + OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_observers) removeObject_];
  v9 = [objc_opt_self() defaultCenter];
  [v9 removeObserver_];

  v10 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__predictedItems;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__addWorkoutItems;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v14 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__managedConfigurationSourceItems;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__compoundItems;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  v18 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__activityPickerItems;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);

  __swift_destroy_boxed_opaque_existential_1Tm_4((v1 + v2));
  __swift_destroy_boxed_opaque_existential_1Tm_4((v1 + v5));

  swift_unknownObjectRelease();

  return v1;
}

uint64_t ActivityPickerDataSource.__deallocating_deinit()
{
  ActivityPickerDataSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall ActivityPickerDataSource.reloadData()()
{
  v1 = v0;
  swift_beginAccess();
  v2 = static NLActivityPickerSection.allCases;
  v3 = *(static NLActivityPickerSection.allCases + 2);
  v4 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource;
  v5 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource;

  if (!v3)
  {
LABEL_14:

    return;
  }

  v6 = 0;
  v7 = (v1 + v4);
  v8 = (v1 + v5);
  while (v6 < v2[2])
  {
    v12 = v2[v6 + 4];
    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_5;
      }

      if (v12 != 1)
      {
        goto LABEL_16;
      }

      v10 = v8[3];
      v9 = v8[4];
      v11 = v8;
      goto LABEL_4;
    }

    if (v12 == 2)
    {
      v10 = v7[3];
      v9 = v7[4];
      v11 = v7;
LABEL_4:
      __swift_project_boxed_opaque_existential_1(v11, v10);
      (*(*(v9 + 8) + 32))(v10);
      goto LABEL_5;
    }

    if (v12 != 3)
    {
      goto LABEL_16;
    }

    CompoundActivityItemsDataSource.updateObservers()();
LABEL_5:
    if (v3 == ++v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000035, 0x800000020B45BFE0, "WorkoutCore/ActivityPickerDataSource.swift", 42, 2, 182, 0);
  __break(1u);
}

void ActivityPickerDataSource.reload(section:)(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v2 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource;
      goto LABEL_7;
    }

    if (a1 != 3)
    {
      goto LABEL_11;
    }

    CompoundActivityItemsDataSource.updateObservers()();
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v2 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource;
LABEL_7:
      v3 = (v1 + v2);
      v4 = *(v1 + v2 + 24);
      v5 = *(v1 + v2 + 32);
      __swift_project_boxed_opaque_existential_1(v3, v4);
      (*(*(v5 + 8) + 32))(v4);
      return;
    }

LABEL_11:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000035, 0x800000020B45BFE0, "WorkoutCore/ActivityPickerDataSource.swift", 42, 2, 182, 0);
    __break(1u);
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ActivityPickerDataSource@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityPickerDataSource(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double static NLActivityPickerSection.allCases.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static NLActivityPickerSection.allCases.setter(void *a1)
{
  swift_beginAccess();
  static NLActivityPickerSection.allCases = a1;
}

double protocol witness for static CaseIterable.allCases.getter in conformance NLActivityPickerSection@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static NLActivityPickerSection.allCases;

  return result;
}

uint64_t ActivityPickerDataSource.compoundItemsPublisher.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[CompoundActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR, MEMORY[0x277CBCEC8]);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t protocol witness for ActivityPickerDataSourceObserving.compoundItemsPublisher.getter in conformance ActivityPickerDataSource()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - v3;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[CompoundActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR, MEMORY[0x277CBCEC8]);
  v5 = Publisher.eraseToAnyPublisher()();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t protocol witness for ActivityPickerDataSourceObserving.compoundItems.getter in conformance ActivityPickerDataSource()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void ActivityPickerDataSource.checkForUpdatedSelectedActivityPickerItem(selectedItem:)(void **a1@<X0>, unint64_t a2@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_89;
  }

  v5 = type metadata accessor for CompoundActivityPickerItem();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    type metadata accessor for ManagedConfigurationSourcePickerItem();
    v131 = swift_dynamicCastClass();
    if (!v131)
    {
LABEL_89:
      *a2 = 0;
      *(a2 + 8) = 0;
      return;
    }

    v24 = one-time initialization token for activityPicker;
    v25 = v4;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    v27 = __swift_project_value_buffer(v26, static WOLog.activityPicker);
    v28 = v25;
    v123 = v27;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();

    v124 = a2;
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v2 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v136[0] = v5;
      *v31 = 136315394;
      v32 = _typeName(_:qualified:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v136);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2112;
      *(v31 + 14) = v131;
      *v2 = v131;
      v35 = v28;
      _os_log_impl(&dword_20AEA4000, v29, v30, "[%s]: current selected managed item: %@", v31, 0x16u);
      outlined destroy of NSObject?(v2);
      MEMORY[0x20F2E9420](v2, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_4(v5);
      MEMORY[0x20F2E9420](v5, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    swift_getKeyPath();
    KeyPath = swift_getKeyPath();
    static Published.subscript.getter(v136);

    v36 = v136[0];
    v126 = v28;
    if (v136[0] >> 62)
    {
      v37 = __CocoaSet.count.getter();
      if (v37)
      {
LABEL_17:
        a2 = 0;
        v128 = OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider;
        v9 = v36 & 0xC000000000000001;
        do
        {
          if (v9)
          {
            v38 = MEMORY[0x20F2E7A20](a2, v36);
          }

          else
          {
            if (a2 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_80;
            }

            v38 = *(v36 + 8 * a2 + 32);
          }

          KeyPath = v38;
          v39 = a2 + 1;
          if (__OFADD__(a2, 1))
          {
            goto LABEL_79;
          }

          v40 = *&v38[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider];
          v41 = *(v131 + v128);
          swift_beginAccess();
          v5 = *(v40 + 32);
          v2 = *(v40 + 40);
          swift_beginAccess();
          v42 = v5 == *(v41 + 32) && v2 == *(v41 + 40);
          if (v42 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            v69 = KeyPath;
            v70 = Logger.logObject.getter();
            v71 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v70, v71))
            {
              v72 = swift_slowAlloc();
              v73 = swift_slowAlloc();
              v74 = swift_slowAlloc();
              v135 = v74;
              *v72 = 136315394;
              v75 = _typeName(_:qualified:)();
              v77 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v135);

              *(v72 + 4) = v77;
              *(v72 + 12) = 2112;
              *(v72 + 14) = v69;
              *v73 = v69;
              v78 = v69;
              _os_log_impl(&dword_20AEA4000, v70, v71, "[%s]: updated selected managed item: %@", v72, 0x16u);
              outlined destroy of NSObject?(v73);
              MEMORY[0x20F2E9420](v73, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm_4(v74);
              MEMORY[0x20F2E9420](v74, -1, -1);
              MEMORY[0x20F2E9420](v72, -1, -1);
            }

            v79 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem, type metadata accessor for ManagedConfigurationSourcePickerItem, &protocol conformance descriptor for ManagedConfigurationSourcePickerItem);
            *v124 = v69;
            v124[1] = v79;
            return;
          }

          ++a2;
        }

        while (v39 != v37);
      }
    }

    else
    {
      v37 = *((v136[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        goto LABEL_17;
      }
    }

LABEL_88:

    a2 = v124;
    goto LABEL_89;
  }

  v2 = *(v6 + OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value);
  if ((v2 & 0x8000000000000000) == 0)
  {
    _sSo17OS_dispatch_queueCMaTm_9(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    v7 = *(v2 + OBJC_IVAR___NLStandardActivityPickerItem_activityType);
    v8 = one-time initialization token for multiSport;
    v9 = v2;
    v123 = v4;
    KeyPath = v7;
    if (v8 != -1)
    {
      goto LABEL_81;
    }

    while (1)
    {
      v11 = static FIUIWorkoutActivityType.multiSport;
      v12 = static NSObject.== infix(_:_:)();

      v130 = v11;
      if ((v12 & 1) == 0)
      {
        break;
      }

      if (one-time initialization token for activityPicker != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static WOLog.activityPicker);
      v14 = v9;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      v120 = v14;
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v14;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        v136[0] = v125;
        *v18 = 136315394;
        v20 = _typeName(_:qualified:)();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v136);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2112;
        *(v18 + 14) = v17;
        *v19 = v2;
        v23 = v17;
        _os_log_impl(&dword_20AEA4000, v15, v16, "[%s]: current selected multiSport item: %@", v18, 0x16u);
        outlined destroy of NSObject?(v19);
        MEMORY[0x20F2E9420](v19, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm_4(v125);
        MEMORY[0x20F2E9420](v125, -1, -1);
        MEMORY[0x20F2E9420](v18, -1, -1);
      }

      v124 = a2;
      v80 = ActivityPickerDataSource.standardItems.getter();
      v9 = v80;
      v122 = v5;
      if (v80 >> 62)
      {
        a2 = __CocoaSet.count.getter();
        if (!a2)
        {
LABEL_87:

          goto LABEL_88;
        }
      }

      else
      {
        a2 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a2)
        {
          goto LABEL_87;
        }
      }

      KeyPath = 0;
      v5 = v9 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v81 = MEMORY[0x20F2E7A20](KeyPath, v9);
        }

        else
        {
          if (KeyPath >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v81 = *(v9 + 8 * KeyPath + 32);
        }

        v82 = v81;
        v2 = KeyPath + 1;
        if (__OFADD__(KeyPath, 1))
        {
          break;
        }

        v83 = OBJC_IVAR___NLStandardActivityPickerItem_activityType;
        v84 = *&v81[OBJC_IVAR___NLStandardActivityPickerItem_activityType];
        v85 = v130;
        v86 = v84;
        LOBYTE(v84) = static NSObject.== infix(_:_:)();

        if (v84)
        {

          v87 = v82;
          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v136[0] = v92;
            *v90 = 136315394;
            v93 = _typeName(_:qualified:)();
            v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, v136);

            *(v90 + 4) = v95;
            *(v90 + 12) = 2112;
            *(v90 + 14) = v87;
            *v91 = v87;
            v96 = v87;
            _os_log_impl(&dword_20AEA4000, v88, v89, "[%s]: updated selected multiSport item: %@", v90, 0x16u);
            outlined destroy of NSObject?(v91);
            MEMORY[0x20F2E9420](v91, -1, -1);
            __swift_destroy_boxed_opaque_existential_1Tm_4(v92);
            MEMORY[0x20F2E9420](v92, -1, -1);
            MEMORY[0x20F2E9420](v90, -1, -1);
          }

          v97 = *&v82[v83];
          v98 = objc_allocWithZone(v122);
          v98[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
          *&v98[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v97;
          *&v98[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v87;
          v134.receiver = v98;
          v134.super_class = v122;
          v99 = v87;
          v100 = v97;
          v101 = objc_msgSendSuper2(&v134, sel_init);

          v102 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem, &protocol conformance descriptor for CompoundActivityPickerItem);
          *v124 = v101;
          v124[1] = v102;
          return;
        }

        ++KeyPath;
        if (v2 == a2)
        {
          goto LABEL_87;
        }
      }

LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      swift_once();
    }

LABEL_53:

    goto LABEL_89;
  }

  v43 = v2 & 0x7FFFFFFFFFFFFFFFLL;
  v44 = one-time initialization token for activityPicker;
  v45 = (v2 & 0x7FFFFFFFFFFFFFFFLL);
  v127 = v4;
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  v47 = __swift_project_value_buffer(v46, static WOLog.activityPicker);
  v9 = v45;
  v123 = v47;
  v48 = Logger.logObject.getter();
  KeyPath = static os_log_type_t.default.getter();

  v129 = v9;
  v124 = a2;
  v121 = v5;
  if (os_log_type_enabled(v48, KeyPath))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v136[0] = v51;
    *v49 = 136315394;
    v52 = _typeName(_:qualified:)();
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v136);

    *(v49 + 4) = v54;
    *(v49 + 12) = 2112;
    *(v49 + 14) = v129;
    *v50 = v43;
    v55 = v129;
    _os_log_impl(&dword_20AEA4000, v48, KeyPath, "[%s]: current selected guided item: %@", v49, 0x16u);
    outlined destroy of NSObject?(v50);
    v56 = v50;
    v9 = v129;
    MEMORY[0x20F2E9420](v56, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_4(v51);
    MEMORY[0x20F2E9420](v51, -1, -1);
    MEMORY[0x20F2E9420](v49, -1, -1);
  }

  v57 = ActivityPickerDataSource.guidedItems.getter();
  v58 = v57;
  if (v57 >> 62)
  {
    a2 = __CocoaSet.count.getter();
    if (a2)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

  a2 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a2)
  {
LABEL_85:

    goto LABEL_88;
  }

LABEL_36:
  v5 = 0;
  v132 = OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType;
  v2 = v58 & 0xC000000000000001;
  while (1)
  {
    if (v2)
    {
      v59 = MEMORY[0x20F2E7A20](v5, v58);
      v60 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v5 >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_77;
      }

      v59 = *(v58 + 8 * v5 + 32);
      v60 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }
    }

    KeyPath = *(v9 + v132);
    if (v59[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType] != 4)
    {
      break;
    }

    if (KeyPath == 4)
    {
      v61 = v59;
      goto LABEL_73;
    }

LABEL_38:

    ++v5;
    if (v60 == a2)
    {
      goto LABEL_85;
    }
  }

  if (KeyPath == 4)
  {
    goto LABEL_38;
  }

  v61 = v59;
  v62 = MEMORY[0x20F2E5300](v59[OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_mediaType]);
  v64 = v63;
  v65 = MEMORY[0x20F2E5300](KeyPath);
  KeyPath = v66;
  if (v62 != v65 || v64 != v66)
  {
    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v59 = v61;
    v9 = v129;
    if (v68)
    {
      goto LABEL_73;
    }

    goto LABEL_38;
  }

  v9 = v129;
LABEL_73:

  v103 = v61;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v136[0] = v108;
    *v106 = 136315394;
    v109 = _typeName(_:qualified:)();
    v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v109, v110, v136);

    *(v106 + 4) = v111;
    *(v106 + 12) = 2112;
    *(v106 + 14) = v103;
    *v107 = v103;
    v112 = v103;
    _os_log_impl(&dword_20AEA4000, v104, v105, "[%s]: updated selected guided item: %@", v106, 0x16u);
    outlined destroy of NSObject?(v107);
    v113 = v107;
    v9 = v129;
    MEMORY[0x20F2E9420](v113, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_4(v108);
    MEMORY[0x20F2E9420](v108, -1, -1);
    MEMORY[0x20F2E9420](v106, -1, -1);
  }

  v114 = *(v103 + OBJC_IVAR___NLGuidedFeaturedActivityPickerItem_activityType);
  v115 = objc_allocWithZone(v121);
  v115[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_type] = 5;
  *&v115[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_activityType] = v114;
  *&v115[OBJC_IVAR____TtC11WorkoutCore26CompoundActivityPickerItem_value] = v103 | 0x8000000000000000;
  v133.receiver = v115;
  v133.super_class = v121;
  v116 = v103;
  v117 = v114;
  v118 = objc_msgSendSuper2(&v133, sel_init);

  v119 = lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem, type metadata accessor for CompoundActivityPickerItem, &protocol conformance descriptor for CompoundActivityPickerItem);
  *v124 = v118;
  v124[1] = v119;
}

uint64_t specialized ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:)(void *a1, void *a2, char *a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v93 = a3;
  v94 = a5;
  v108 = a2;
  v109 = a4;
  v90 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore21AnyActivityPickerItemVG_GMR);
  v105 = *(v7 - 8);
  v106 = v7;
  v9 = MEMORY[0x28223BE20](v7, v8);
  v104 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v103 = &v80 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR);
  MEMORY[0x28223BE20](v102, v13);
  v95 = &v80 - v14;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR);
  MEMORY[0x28223BE20](v99, v15);
  v89 = &v80 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR);
  MEMORY[0x28223BE20](v96, v17);
  v88 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMd, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMR);
  v20 = *(v19 - 8);
  v97 = v19;
  v98 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v91 = &v80 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMR);
  v24 = *(v23 - 8);
  v100 = v23;
  v101 = v24;
  MEMORY[0x28223BE20](v23, v25);
  v92 = &v80 - v26;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMd, &_s7Combine9PublishedVySay11WorkoutCore21AnyActivityPickerItemVGGMR);
  v87 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v27);
  v86 = &v80 - v28;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore26CompoundActivityPickerItemCGGMR);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v29);
  v82 = &v80 - v30;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCGGMR);
  v31 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v32);
  v34 = &v80 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore24ButtonActivityPickerItemCGGMR);
  v83 = v35;
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v80 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMd, &_s7Combine9PublishedVySay11WorkoutCore27PredictedActivityPickerItemCGGMR);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v80 - v43;
  v45 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__predictedItems;
  v110 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore27PredictedActivityPickerItemCGMd, &_sSay11WorkoutCore27PredictedActivityPickerItemCGMR);
  Published.init(initialValue:)();
  (*(v41 + 32))(v6 + v45, v44, v40);
  v46 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__addWorkoutItems;
  v47 = MEMORY[0x277D84F90];
  v110 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore24ButtonActivityPickerItemCGMd, &_sSay11WorkoutCore24ButtonActivityPickerItemCGMR);
  Published.init(initialValue:)();
  (*(v36 + 32))(v6 + v46, v39, v35);
  v48 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__managedConfigurationSourceItems;
  v110 = v47;
  v49 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMd, &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMR);
  Published.init(initialValue:)();
  (*(v31 + 32))(v6 + v48, v34, v81);
  v50 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__compoundItems;
  v110 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore26CompoundActivityPickerItemCGMd, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMR);
  v51 = v82;
  Published.init(initialValue:)();
  (*(v84 + 32))(v6 + v50, v51, v85);
  v52 = OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource__activityPickerItems;
  v110 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore21AnyActivityPickerItemVGMd, &_sSay11WorkoutCore21AnyActivityPickerItemVGMR);
  v53 = v86;
  Published.init(initialValue:)();
  (*(v87 + 32))(v6 + v52, v53, v107);
  *(v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_sections) = &outlined read-only object #0 of ActivityPickerDataSource.init(standardActivityItemsDataSource:addWorkoutActivityItemsDataSource:compoundActivityItemsDataSource:managedConfigurationsDataSource:compoundActivityTypesProvider:);
  v54 = v90;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_standardActivityItemsDataSource) = v90;
  outlined init with copy of ActivityItemsDataSourceSync(v108, v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_addWorkoutActivityItemsDataSource);
  outlined init with copy of ActivityItemsDataSourceSync(v109, v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_managedConfigurationsDataSource);
  v56 = v93;
  v55 = v94;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityItemsDataSource) = v93;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore24ActivityPickerDataSource_compoundActivityTypesProvider) = v55;
  swift_beginAccess();
  v57 = v54;
  v93 = v56;
  swift_unknownObjectRetain();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Published.projectedValue.getter();
  swift_endAccess();
  v58 = MEMORY[0x277CBCEC8];
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GMR, MEMORY[0x277CBCEC8]);
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[CompoundActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore26CompoundActivityPickerItemCG_GMR, v58);
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[ButtonActivityPickerItem]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore24ButtonActivityPickerItemCG_GMR, v58);
  v59 = v91;
  Publishers.CombineLatest3.init(_:_:_:)();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.CombineLatest3<Published<[ManagedConfigurationSourcePickerItem]>.Publisher, Published<[CompoundActivityPickerItem]>.Publisher, Published<[ButtonActivityPickerItem]>.Publisher> and conformance Publishers.CombineLatest3<A, B, C>, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMd, &_s7Combine10PublishersO0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAIySayAJ016CompoundActivitykL0CG_GAIySayAJ06ButtonnkL0CG_GGMR, MEMORY[0x277CBCAF8]);
  v60 = v92;
  v61 = v97;
  Publisher.map<A>(_:)();
  (*(v98 + 8))(v59, v61);
  swift_beginAccess();
  v62 = v103;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.Map<Publishers.CombineLatest3<Published<[ManagedConfigurationSourcePickerItem]>.Publisher, Published<[CompoundActivityPickerItem]>.Publisher, Published<[ButtonActivityPickerItem]>.Publisher>, [AnyActivityPickerItem]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMd, &_s7Combine10PublishersO3MapVy_AC0A7Latest3Vy_AA9PublishedV9PublisherVySay11WorkoutCore36ManagedConfigurationSourcePickerItemCG_GAKySayAL016CompoundActivitylM0CG_GAKySayAL06ButtonolM0CG_GGSayAL03AnyolM0VGGMR, MEMORY[0x277CBCC08]);
  v63 = v100;
  Publisher<>.assign(to:)();
  (*(v101 + 8))(v60, v63);
  v64 = v105;
  v65 = v106;
  (*(v105 + 16))(v104, v62, v106);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();
  (*(v64 + 8))(v62, v65);
  v66 = v108;
  v67 = v108[3];
  v68 = v108[4];
  __swift_project_boxed_opaque_existential_1(v108, v67);
  v69 = *(v68 + 8);
  v70 = *(v69 + 16);

  v70(v71, &protocol witness table for ActivityPickerDataSource, v67, v69);

  v72 = v109;
  v73 = v109[3];
  v74 = v109[4];
  __swift_project_boxed_opaque_existential_1(v109, v73);
  v75 = *(v74 + 8);
  v76 = *(v75 + 16);

  v76(v77, &protocol witness table for ActivityPickerDataSource, v73, v75);

  [*&v93[OBJC_IVAR____TtC11WorkoutCore31CompoundActivityItemsDataSource_observers] addObject_];
  v78 = [objc_opt_self() defaultCenter];
  [v78 addObserver:v6 selector:sel_handleHKUserPreferenceDidChangeWithNotification_ name:*MEMORY[0x277CCCE80] object:0];

  __swift_destroy_boxed_opaque_existential_1Tm_4(v72);
  __swift_destroy_boxed_opaque_existential_1Tm_4(v66);
  return v6;
}

uint64_t outlined init with copy of ActivityItemsDataSourceSync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t type metadata accessor for ActivityPickerDataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for ActivityPickerDataSource;
  if (!type metadata singleton initialization cache for ActivityPickerDataSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ActivityPickerDataSource(uint64_t a1)
{
  type metadata accessor for Published<[PredictedActivityPickerItem]>(319, &lazy cache variable for type metadata for Published<[PredictedActivityPickerItem]>, &_sSay11WorkoutCore27PredictedActivityPickerItemCGMd, &_sSay11WorkoutCore27PredictedActivityPickerItemCGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<[PredictedActivityPickerItem]>(319, &lazy cache variable for type metadata for Published<[ButtonActivityPickerItem]>, &_sSay11WorkoutCore24ButtonActivityPickerItemCGMd, &_sSay11WorkoutCore24ButtonActivityPickerItemCGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<[PredictedActivityPickerItem]>(319, &lazy cache variable for type metadata for Published<[ManagedConfigurationSourcePickerItem]>, &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMd, &_sSay11WorkoutCore36ManagedConfigurationSourcePickerItemCGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<[PredictedActivityPickerItem]>(319, &lazy cache variable for type metadata for Published<[CompoundActivityPickerItem]>, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMd, &_sSay11WorkoutCore26CompoundActivityPickerItemCGMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<[PredictedActivityPickerItem]>(319, &lazy cache variable for type metadata for Published<[AnyActivityPickerItem]>, &_sSay11WorkoutCore21AnyActivityPickerItemVGMd, &_sSay11WorkoutCore21AnyActivityPickerItemVGMR);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<[PredictedActivityPickerItem]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

uint64_t specialized ActivityPickerDataSource.handleHKUserPreferenceDidChange(notification:)()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();

  if ([v12 isMainThread])
  {
    CompoundActivityItemsDataSource.updateObservers()();
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_9(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v20 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in ActivityPickerDataSource.handleHKUserPreferenceDidChange(notification:);
    *(v14 + 24) = v1;
    aBlock[4] = closure #1 in static DispatchUtilities.ensureMainQueueOrAsync(block:)partial apply;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_52_0;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type CompoundActivityPickerItem and conformance CompoundActivityPickerItem(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v18 = v7;
    lazy protocol witness table accessor for type Published<[ManagedConfigurationSourcePickerItem]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v19;
    v15 = v20;
    MEMORY[0x20F2E7580](0, v11, v6, v19);
    _Block_release(v16);

    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v18);
  }
}

id FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)(id a1, char a2, uint64_t a3, char a4, unsigned __int8 a5)
{
  v11 = [v5 metadata];
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if ((a4 & 1) == 0)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v26 = type metadata accessor for NSNumber();
    *&v25 = v15;
    outlined init with take of Any(&v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v12, v14, isUniquelyReferenced_nonNull_native);
  }

  v17 = [v5 identifier];
  if (a2)
  {
    a1 = [v5 location];
  }

  if (a5 == 2)
  {
    a5 = [v5 isPartOfMultiSport];
  }

  if (a4)
  {

    v18 = [v5 metadata];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v19 = [v5 auxiliaryTypeIdentifier];
  v20 = objc_allocWithZone(MEMORY[0x277D0A810]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = [v20 initWithActivityTypeIdentifier:v17 location:a1 isPartOfMultiSport:a5 & 1 metadata:isa auxiliaryTypeIdentifier:v19];

  return v22;
}

Swift::OpaquePointer_optional __swiftcall WorkoutConfiguration.metadata()()
{
  v1 = [v0 serialize];
  v2 = [v1 jsonObject];

  if (v2)
  {
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = static WKPrivateMetadataKeys.workoutConfiguration.getter();
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = v7;
    *(inited + 48) = v3;
    *(inited + 56) = v5;
    v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSS_yptWOhTm_0(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.app);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20AEA4000, v11, v12, "Cannot serialize workout configuration to json object", v13, 2u);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    v8 = 0;
  }

  v14 = v8;
  result.value._rawValue = v14;
  result.is_nil = v9;
  return result;
}

uint64_t static WorkoutConfiguration.deserialize(from:)(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static WorkoutConfigurationValidator.shared;

  return specialized static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(a1, 0, v2);
}

uint64_t specialized static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(uint64_t a1, char a2, uint64_t a3)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v6 = static WKPrivateMetadataKeys.workoutConfiguration.getter();
  if (!*(a1 + 16))
  {

LABEL_10:
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.app);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33[0] = v19;
      *v18 = 136315138;
      v20 = static WKPrivateMetadataKeys.workoutConfiguration.getter();
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v33);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v16, v17, "Cannot deserialize workout configuration from metadata, missing key or cannot cast: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v18, -1, -1);
    }

    return 0;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_10;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v8, v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = objc_allocWithZone(MEMORY[0x277D7E7E8]);
  outlined copy of Data._Representation(v31, v32);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v13 = [v11 initWithJsonObject_];

  outlined consume of Data._Representation(v31, v32);
  if (v13)
  {
    type metadata accessor for WorkoutConfiguration(0);
    static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v13, a2 & 1, a3, v33);
    if (v33[3])
    {
      if (swift_dynamicCast())
      {

        outlined consume of Data._Representation(v31, v32);
        return v31;
      }
    }

    else
    {
      _sSS_yptWOhTm_0(v33, &_sypSgMd, &_sypSgMR);
    }

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.app);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Cannot deserialize workout configuration from persistence object", v30, 2u);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    outlined consume of Data._Representation(v31, v32);
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.app);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20AEA4000, v24, v25, "Cannot deserialize workout configuration from json object", v26, 2u);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    outlined consume of Data._Representation(v31, v32);
  }

  return 0;
}

uint64_t _sSS_yptWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem)
  {
    type metadata accessor for MediaPlaybackConfigurationItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem);
  }

  return result;
}

uint64_t type metadata accessor for MediaPlaybackConfigurationItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for MediaPlaybackConfigurationItem;
  if (!type metadata singleton initialization cache for MediaPlaybackConfigurationItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*MediaPlaybackConfigurationItem.autoPlayEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MediaPlaybackConfigurationItem._autoPlayEnabled.modify(v4);
  return MediaPlaybackConfigurationItem.autoPlayEnabled.modify;
}

void key path getter for MediaPlaybackConfigurationItem.autoPlayEnabled : MediaPlaybackConfigurationItem(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t MediaPlaybackConfigurationItem.autoPlayEnabled.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

void MediaPlaybackConfigurationItem.autoPlayEnabled.setter(char a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1 & 1;
  v6 = *a2;
  swift_beginAccess();
  if (*(v4 + v6) == v5)
  {
    *(v4 + v6) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void partial apply for closure #1 in MediaPlaybackConfigurationItem.autoPlayEnabled.setter(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v2 + v4) = v3;
}

uint64_t (*MediaPlaybackConfigurationItem.smartStationEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MediaPlaybackConfigurationItem._smartStationEnabled.modify(v4);
  return MediaPlaybackConfigurationItem.smartStationEnabled.modify;
}

id key path getter for MediaPlaybackConfigurationItem.mediaSuggestion : MediaPlaybackConfigurationItem@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void key path setter for MediaPlaybackConfigurationItem.mediaSuggestion : MediaPlaybackConfigurationItem(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  MediaPlaybackConfigurationItem.mediaSuggestion.setter(v1);
}

void *MediaPlaybackConfigurationItem.mediaSuggestion.getter()
{
  swift_getKeyPath();
  v5 = v0;
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v2 = *(v5 + v1);
  v3 = v2;
  return v2;
}

void MediaPlaybackConfigurationItem.mediaSuggestion.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v11);
    lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for MSSuggestion();
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void closure #1 in MediaPlaybackConfigurationItem.mediaSuggestion.setter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  v6 = a2;
}

uint64_t (*MediaPlaybackConfigurationItem.mediaSuggestion.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = MediaPlaybackConfigurationItem._mediaSuggestion.modify(v4);
  return MediaPlaybackConfigurationItem.mediaSuggestion.modify;
}

void MediaPlaybackConfigurationItem.autoPlayEnabled.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

id MediaPlaybackConfigurationItem.__allocating_init(autoPlayEnabled:smartStationEnabled:mediaSuggestion:)(char a1, char a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  *&v7[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
  ObservationRegistrar.init()();
  v7[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = a1;
  v7[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = a2;
  v9 = *&v7[v8];
  v10 = a3;

  *&v7[v8] = a3;
  v13.receiver = v7;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id MediaPlaybackConfigurationItem.init(autoPlayEnabled:smartStationEnabled:mediaSuggestion:)(char a1, char a2, void *a3)
{
  v7 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  *&v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
  ObservationRegistrar.init()();
  v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = a1;
  v3[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = a2;
  v8 = *&v3[v7];
  v9 = a3;

  *&v3[v7] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for MediaPlaybackConfigurationItem(0);
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MediaPlaybackConfigurationItem.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MediaPlaybackConfigurationItem.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MediaPlaybackConfigurationItem.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MediaPlaybackConfigurationItem.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MediaPlaybackConfigurationItem.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MediaPlaybackConfigurationItem.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xEF64656C62616E45;
  v3 = 0x79616C506F747561;
  v4 = 0xEF6E6F6974736567;
  v5 = 0x677553616964656DLL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000019;
    v4 = 0x800000020B454810;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000020B4547E0;
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MediaPlaybackConfigurationItem.CodingKeys()
{
  v1 = 0x79616C506F747561;
  v2 = 0x677553616964656DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance MediaPlaybackConfigurationItem.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized MediaPlaybackConfigurationItem.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MediaPlaybackConfigurationItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MediaPlaybackConfigurationItem.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void MediaPlaybackConfigurationItem.encode(to:)(void *a1)
{
  v3 = v1;
  v50 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore30MediaPlaybackConfigurationItemC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore30MediaPlaybackConfigurationItemC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v39 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  v49 = v3;
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  LOBYTE(v48) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    goto LABEL_3;
  }

  swift_getKeyPath();
  v48 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  LOBYTE(v47) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  v47 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if (!v11)
  {
    goto LABEL_3;
  }

  v12 = objc_opt_self();
  v45 = 0;
  v13 = v11;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v45];
  v15 = v45;
  if (!v14)
  {
    v20 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_3:
    (*(v6 + 8))(v9, v5);
    return;
  }

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize == 2)
  {
    v19 = specialized static MediaPlaybackDeviceCompatibility.hasNapiliAlignedPairedDevice()();
    static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize = (v19 & 1) == 0;
    if ((v19 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v45 = v16;
    v46 = v18;
    v44 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);

    v21 = v16;
    v22 = v18;
LABEL_38:
    outlined consume of Data._Representation(v21, v22);
    return;
  }

  if ((static MediaPlaybackDeviceCompatibility._cachedShouldMitigateDefaultsSize & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v42 = Data.compressed(using:)();
  v43 = v23;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.mediaPlayback);
  outlined copy of Data._Representation(v16, v18);
  v25 = v42;
  outlined copy of Data._Representation(v42, v43);
  v26 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v26, v41))
  {
    outlined consume of Data._Representation(v25, v43);
    outlined consume of Data._Representation(v16, v18);
LABEL_37:

    v45 = v25;
    v46 = v43;
    v44 = 3;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);

    outlined consume of Data._Representation(v16, v18);
    v21 = v25;
    v22 = v43;
    goto LABEL_38;
  }

  v27 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v45 = v40;
  *v27 = 136315650;
  *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6573667A6CLL, 0xE500000000000000, &v45);
  *(v27 + 12) = 2048;
  v28 = v18 >> 62;
  if ((v18 >> 62) > 1)
  {
    if (v28 != 2)
    {
      v29 = 0;
      goto LABEL_26;
    }

    v31 = v16[2];
    v30 = v16[3];
    v32 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (!v32)
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  else if (!v28)
  {
    v29 = BYTE6(v18);
    goto LABEL_26;
  }

  LODWORD(v29) = HIDWORD(v16) - v16;
  if (__OFSUB__(HIDWORD(v16), v16))
  {
    __break(1u);
    goto LABEL_40;
  }

  v29 = v29;
LABEL_26:
  *(v27 + 14) = v29;
  outlined consume of Data._Representation(v16, v18);
  *(v27 + 22) = 2048;
  v33 = v43;
  v34 = v43 >> 62;
  if ((v43 >> 62) > 1)
  {
    if (v34 != 2)
    {
      v35 = 0;
      goto LABEL_36;
    }

    v37 = v42[2];
    v36 = v42[3];
    v32 = __OFSUB__(v36, v37);
    v35 = v36 - v37;
    if (!v32)
    {
      goto LABEL_36;
    }

    __break(1u);
  }

  else if (!v34)
  {
    v35 = BYTE6(v43);
LABEL_36:
    *(v27 + 24) = v35;
    v39 = v27;
    outlined consume of Data._Representation(v42, v33);
    _os_log_impl(&dword_20AEA4000, v26, v41, "Compressed media suggestion data using %s: %ld bytes --> %ld bytes", v27, 0x20u);
    v38 = v40;
    __swift_destroy_boxed_opaque_existential_0Tm_2(v40);
    MEMORY[0x20F2E9420](v38, -1, -1);
    v25 = v42;
    MEMORY[0x20F2E9420](v39, -1, -1);
    goto LABEL_37;
  }

  LODWORD(v35) = HIDWORD(v42) - v42;
  if (!__OFSUB__(HIDWORD(v42), v42))
  {
    v35 = v35;
    goto LABEL_36;
  }

LABEL_40:
  __break(1u);
}

unint64_t *MediaPlaybackConfigurationItem.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore30MediaPlaybackConfigurationItemC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore30MediaPlaybackConfigurationItemC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v62 - v8;
  v69 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  *&v1[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion] = 0;
  v68 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem___observationRegistrar;
  ObservationRegistrar.init()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm_2(a1);

    v11 = type metadata accessor for ObservationRegistrar();
    (*(*(v11 - 8) + 8))(&v1[v68], v11);
    type metadata accessor for MediaPlaybackConfigurationItem(0);
    swift_deallocPartialClassInstance();
    return v3;
  }

  v10 = v6;
  LOBYTE(v72[0].receiver) = 0;
  v1[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v72[0].receiver) = 1;
  v1[OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  LOBYTE(v70) = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  super_class = v72[0].super_class;
  if (v72[0].super_class >> 60 != 15)
  {
    receiver = v72[0].receiver;
    v15 = Data.decompressed(using:)();
    v66 = v16;
    v67 = v15;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.mediaPlayback);
    outlined copy of Data?(receiver, super_class);
    v65 = super_class;
    outlined copy of Data._Representation(v67, v66);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      outlined consume of Data._Representation(v67, v66);
      v25 = receiver;
      v26 = receiver;
      v27 = v65;
      outlined consume of Data?(v25, v65);
      outlined consume of Data?(v26, v27);

      goto LABEL_33;
    }

    HIDWORD(v62) = v19;
    v63 = v18;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v72[0].receiver = v21;
    *v20 = 136315650;
    result = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6573667A6CLL, 0xE500000000000000, v72);
    *(v20 + 4) = result;
    v64 = v20;
    *(v20 + 12) = 2048;
    v22 = v65;
    v23 = v65 >> 62;
    if ((v65 >> 62) > 1)
    {
      if (v23 != 2)
      {
        v24 = 0;
        goto LABEL_22;
      }

      v29 = receiver[2];
      v28 = receiver[3];
      v30 = __OFSUB__(v28, v29);
      v24 = v28 - v29;
      if (!v30)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v23)
    {
      v24 = BYTE6(v65);
      goto LABEL_22;
    }

    LODWORD(v24) = HIDWORD(receiver) - receiver;
    if (__OFSUB__(HIDWORD(receiver), receiver))
    {
      __break(1u);
      goto LABEL_56;
    }

    v24 = v24;
LABEL_22:
    v31 = v21;
    v32 = v64;
    *(v64 + 14) = v24;
    result = outlined consume of Data?(receiver, v22);
    *(v32 + 11) = 2048;
    v33 = v66;
    v34 = v66 >> 62;
    if ((v66 >> 62) > 1)
    {
      v35 = v67;
      if (v34 != 2)
      {
        v36 = 0;
        goto LABEL_32;
      }

      v38 = v67[2];
      v37 = v67[3];
      v30 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (!v30)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    else
    {
      v35 = v67;
      if (!v34)
      {
        v36 = BYTE6(v66);
LABEL_32:
        v39 = v64;
        *(v64 + 3) = v36;
        outlined consume of Data._Representation(v35, v33);
        _os_log_impl(&dword_20AEA4000, v63, BYTE4(v62), "Decompressed media suggestion data using %s: %ld --> %ld bytes", v39, 0x20u);
        __swift_destroy_boxed_opaque_existential_0Tm_2(v31);
        MEMORY[0x20F2E9420](v31, -1, -1);
        MEMORY[0x20F2E9420](v39, -1, -1);
        outlined consume of Data?(receiver, v65);

        goto LABEL_33;
      }
    }

    LODWORD(v36) = HIDWORD(v35) - v35;
    if (!__OFSUB__(HIDWORD(v35), v35))
    {
      v36 = v36;
      goto LABEL_32;
    }

LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  LOBYTE(v70) = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v72[0].super_class >> 60 == 15)
  {
LABEL_43:
    (*(v10 + 8))(v9, v5);
    goto LABEL_54;
  }

  v66 = v72[0].super_class;
  v67 = v72[0].receiver;
LABEL_33:
  _sSo17NSKeyedUnarchiverCMaTm_1(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20B4238A0;
  *(v40 + 32) = _sSo17NSKeyedUnarchiverCMaTm_1(0, &lazy cache variable for type metadata for LNAction, 0x277D23720);
  *(v40 + 40) = type metadata accessor for MSUnifiedMediaIntent();
  *(v40 + 48) = type metadata accessor for MSIntentWrapper();
  *(v40 + 56) = type metadata accessor for MSPlayMediaAppIntent();
  *(v40 + 64) = _sSo17NSKeyedUnarchiverCMaTm_1(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  *(v40 + 72) = type metadata accessor for MSSuggestion();
  *(v40 + 80) = _sSo17NSKeyedUnarchiverCMaTm_1(0, &lazy cache variable for type metadata for INPlayMediaIntent, 0x277CD3EC0);
  *(v40 + 88) = _sSo17NSKeyedUnarchiverCMaTm_1(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  v41 = v66;

  if (!v71)
  {
    (*(v10 + 8))(v9, v5);
    outlined consume of Data._Representation(v67, v41);
    _sypSgWOhTm_1(&v70, &_sypSgMd, &_sypSgMR);
LABEL_54:
    v61 = type metadata accessor for MediaPlaybackConfigurationItem(0);
    v73.receiver = v3;
    v73.super_class = v61;
    v3 = objc_msgSendSuper2(&v73, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm_2(a1);
    return v3;
  }

  outlined init with take of Any(&v70, v72);
  outlined init with copy of Any(v72, &v70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined consume of Data._Representation(v67, v41);
    __swift_destroy_boxed_opaque_existential_0Tm_2(v72);
    goto LABEL_43;
  }

  v68 = v5;
  v42 = v74;
  v43 = v69;
  v44 = *(&v69->isa + v3);
  v45 = v74;

  v65 = v42;
  *(&v43->isa + v3) = v42;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static WOLog.mediaPlayback);
  v47 = v45;
  v48 = v66;
  outlined copy of Data._Representation(v67, v66);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v49, v50))
  {

    v56 = v67;
    outlined consume of Data._Representation(v67, v48);
LABEL_53:
    outlined consume of Data._Representation(v56, v48);

    __swift_destroy_boxed_opaque_existential_0Tm_2(v72);
    (*(v10 + 8))(v9, v68);
    goto LABEL_54;
  }

  v69 = v49;
  LODWORD(v63) = v50;
  v64 = v47;
  v51 = swift_slowAlloc();
  result = swift_slowAlloc();
  *v51 = 134218242;
  v52 = v48 >> 62;
  v53 = result;
  if ((v48 >> 62) > 1)
  {
    v54 = v67;
    if (v52 != 2)
    {
      v55 = 0;
      goto LABEL_52;
    }

    v58 = v67[2];
    v57 = v67[3];
    v30 = __OFSUB__(v57, v58);
    v55 = v57 - v58;
    if (!v30)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  else
  {
    v54 = v67;
    if (!v52)
    {
      v55 = BYTE6(v66);
LABEL_52:
      *(v51 + 4) = v55;
      v67 = v54;
      v48 = v66;
      outlined consume of Data._Representation(v54, v66);
      *(v51 + 12) = 2112;
      v47 = v64;
      v59 = v65;
      *(v51 + 14) = v64;
      *v53 = v59;
      v60 = v47;
      _os_log_impl(&dword_20AEA4000, v69, v63, "Decoded media suggestion of size (%ld): %@", v51, 0x16u);
      _sypSgWOhTm_1(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v53, -1, -1);
      MEMORY[0x20F2E9420](v51, -1, -1);

      v56 = v67;
      goto LABEL_53;
    }
  }

  LODWORD(v55) = HIDWORD(v54) - v54;
  if (!__OFSUB__(HIDWORD(v54), v54))
  {
    v55 = v55;
    goto LABEL_52;
  }

LABEL_57:
  __break(1u);
  return result;
}

uint64_t MediaPlaybackConfigurationItem.debugDescription.getter()
{
  v1 = v0;
  swift_getKeyPath();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    _StringGuts.grow(_:)(104);
    MEMORY[0x20F2E6D80](0xD000000000000030, 0x800000020B45C210);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
    swift_beginAccess();
    if (*(v1 + v5))
    {
      v6 = 1702195828;
    }

    else
    {
      v6 = 0x65736C6166;
    }

    v7 = 0xE400000000000000;
    if (*(v1 + v5))
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    MEMORY[0x20F2E6D80](v6, v8);

    MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45C250);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
    swift_beginAccess();
    if (*(v1 + v9))
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (*(v1 + v9))
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x20F2E6D80](v10, v11);

    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C290);
    v12 = [v4 title];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v15;
    }

    else
    {
      v14 = 1701736302;
    }

    MEMORY[0x20F2E6D80](v14, v7);

    MEMORY[0x20F2E6D80](0x206D6F726620, 0xE600000000000000);
    v22 = [v4 bundleID];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    MEMORY[0x20F2E6D80](v23, v25);
  }

  else
  {
    _StringGuts.grow(_:)(99);
    MEMORY[0x20F2E6D80](0xD000000000000030, 0x800000020B45C210);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
    swift_beginAccess();
    if (*(v1 + v16))
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (*(v1 + v16))
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    MEMORY[0x20F2E6D80](v17, v18);

    MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45C250);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
    swift_beginAccess();
    if (*(v1 + v19))
    {
      v20 = 1702195828;
    }

    else
    {
      v20 = 0x65736C6166;
    }

    if (*(v1 + v19))
    {
      v21 = 0xE400000000000000;
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    MEMORY[0x20F2E6D80](v20, v21);

    MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B45C270);
  }

  return 0;
}

id MediaPlaybackConfigurationItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MediaPlaybackConfigurationItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaPlaybackConfigurationItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t *protocol witness for Decodable.init(from:) in conformance MediaPlaybackConfigurationItem@<X0>(void *a1@<X0>, unint64_t **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for MediaPlaybackConfigurationItem(0));
  result = MediaPlaybackConfigurationItem.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys;
  if (!lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MediaPlaybackConfigurationItem.CodingKeys and conformance MediaPlaybackConfigurationItem.CodingKeys);
  }

  return result;
}

unint64_t specialized MediaPlaybackConfigurationItem.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MediaPlaybackConfigurationItem.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static MediaPlaybackConfigurationItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type MediaPlaybackConfigurationItem and conformance MediaPlaybackConfigurationItem();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  v5 = *(a1 + v4);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__autoPlayEnabled;
  swift_beginAccess();
  if (v5 != *(a2 + v6))
  {
    goto LABEL_3;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  v8 = *(a1 + v7);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__smartStationEnabled;
  swift_beginAccess();
  if (v8 != *(a2 + v9))
  {
    goto LABEL_3;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (v12)
  {
    v13 = [v12 bundleID];
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v14;
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = OBJC_IVAR____TtC11WorkoutCore30MediaPlaybackConfigurationItem__mediaSuggestion;
  swift_beginAccess();
  v16 = *(a2 + v15);
  if (!v16)
  {
    if (!v38)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v17 = v11;
  v18 = v15;
  v19 = [v16 bundleID];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (!v38)
  {
    v15 = v18;
    v11 = v17;
    if (v22)
    {
LABEL_26:
      v10 = 0;
      goto LABEL_34;
    }

LABEL_18:
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v24 = *(a1 + v11);
    if (v24 && (v25 = [v24 title]) != 0)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = *(a2 + v15);
    if (v30 && (v31 = [v30 title]) != 0)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      if (!v29)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v33 = 0;
      v35 = 0;
      if (!v29)
      {
LABEL_25:
        if (!v35)
        {
          v10 = 1;
          return v10 & 1;
        }

        goto LABEL_26;
      }
    }

    if (v35)
    {
      if (v27 == v33 && v29 == v35)
      {

        v10 = 1;
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_34;
  }

  if (!v22)
  {
LABEL_14:
    v10 = 0;
LABEL_34:

    return v10 & 1;
  }

  v15 = v18;
  v11 = v17;
  if (v37 == v20 && v38 == v22)
  {

    goto LABEL_18;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_18;
  }

LABEL_3:
  v10 = 0;
  return v10 & 1;
}

uint64_t type metadata completion function for MediaPlaybackConfigurationItem(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t getEnumTagSinglePayload for MediaPlaybackConfigurationItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MediaPlaybackConfigurationItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t MirroredHostMachTimestampRequest.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = outlined destroy of Apple_Workout_Core_MirroredHostMachTimestampRequest(a1);
  *a2 = v3;
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredHostMachTimestampRequest(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredHostMachTimestampRequest.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest();
  return static Message.with(_:)();
}

double _s11WorkoutCore32MirroredHostMachTimestampRequestV8protobufAA06Apple_a1_b1_cdefG0VvgyAFzXEfU_TA_0(double *a1)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest)
  {
    type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest);
  }

  return result;
}

uint64_t MirroredHostMachTimestampRequest.description.getter()
{
  _StringGuts.grow(_:)(21);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C3A0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredHostMachTimestampRequest()
{
  _StringGuts.grow(_:)(21);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C3A0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredHostMachTimestampRequest@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = outlined destroy of Apple_Workout_Core_MirroredHostMachTimestampRequest(a1);
  *a2 = v3;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredHostMachTimestampRequest()
{
  type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest();
  return static Message.with(_:)();
}

uint64_t MirroredHostMachTimestampRequest.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x20F2E8020](*&v1);
}

Swift::Int MirroredHostMachTimestampRequest.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x20F2E8020](*&v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostMachTimestampRequest()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x20F2E8020](*&v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredHostMachTimestampRequest()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x20F2E8020](*&v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostMachTimestampRequest(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x20F2E8020](*&v3);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredHostMachTimestampRequest(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostMachTimestampRequest(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredHostMachTimestampRequest(uint64_t result, int a2, int a3)
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

uint64_t closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset;

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WorkoutBuddyDisplayStateHandler.determineState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](WorkoutBuddyDisplayStateHandler.determineState(), v1, 0);
}

{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 64) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](WorkoutBuddyDisplayStateHandler.determineState(), v5, 0);
}

uint64_t WorkoutBuddyDisplayStateHandler.determineState()()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 112);
  if (v2 == 2)
  {
    if (*(v1 + 115))
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

LABEL_9:
    **(v0 + 16) = v3;
    v4 = *(v0 + 8);

    return v4();
  }

  if ((v2 & 1) == 0)
  {
    v3 = 5;
    goto LABEL_9;
  }

  if (*(v1 + 115))
  {
    v3 = 4;
    goto LABEL_9;
  }

  if (*(v1 + 113))
  {
    v3 = 0;
    goto LABEL_9;
  }

  v6 = *(v1 + 114);
  if (v6 != 2 && (v6 & 1) == 0)
  {
    v3 = 3;
    goto LABEL_9;
  }

  v7 = *(v1 + 160);
  *(v0 + 32) = v7;
  v8 = *(v1 + 168);
  __swift_project_boxed_opaque_existential_1((v1 + 136), v7);
  v9 = *(v7 - 8);
  *(v0 + 40) = v9;
  *(v0 + 48) = swift_task_alloc();
  (*(v9 + 16))();
  v11 = (*(v8 + 8) + **(v8 + 8));
  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = WorkoutBuddyDisplayStateHandler.determineState();

  return v11(v7, v8);
}

{
  v1 = *(v0 + 64);

  if (v1 == 1)
  {
    v2 = 2;
  }

  else
  {
    outlined consume of WorkoutVoiceAvailabilityProvider.State(*(v0 + 64));
    v2 = 3;
  }

  **(v0 + 16) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 41) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v2 + 24) = swift_task_alloc();
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:);

  return WorkoutBuddyDisplayStateHandler.determineState()(v2 + 40);
}

uint64_t WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:), v1, 0);
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v1 + 116);
  if (v2 == 6)
  {
    v4 = v3 == 6;
  }

  else
  {
    v4 = v2 == v3;
  }

  v5 = !v4;
  if ((v5 | *(v0 + 41)))
  {
    *(v1 + 116) = v2;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = *(v0 + 24);
      v9 = *(*(v0 + 16) + 117);
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
      type metadata accessor for MainActor();
      swift_unknownObjectRetain();
      v11 = static MainActor.shared.getter();
      v12 = swift_allocObject();
      v13 = MEMORY[0x277D85700];
      *(v12 + 16) = v11;
      *(v12 + 24) = v13;
      *(v12 + 32) = v2;
      *(v12 + 33) = (v9 & 1) == 0;
      *(v12 + 40) = v7;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:), v12);
      swift_unknownObjectRelease();
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t WorkoutBuddyDisplayStateHandler.__deallocating_deinit()
{
  outlined destroy of weak WorkoutBuddyDisplayStateHandlerDelegate?(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t partial apply for closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 33);
  v7 = *(v1 + 40);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:);

  return closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:)(a1, v4, v5, v8, v6, v7);
}

uint64_t partial apply for closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices18SnippetEnvironmentVSgMd, &_s18AppIntentsServices18SnippetEnvironmentVSgMR);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v4[13] = swift_task_alloc();
  v5 = type metadata accessor for AppIntentPerformOptions();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices0A19IntentSuccessResultVySSGMd, &_s18AppIntentsServices0A19IntentSuccessResultVySSGMR);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:), 0, 0);
}

uint64_t MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:)()
{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[21] = __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Starting music siri representation ID playback", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];

  v0[2] = v6;
  v0[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices15IntentParameterCySSGMd, &_s18AppIntentsServices15IntentParameterCySSGMR);
  swift_allocObject();

  v7 = IntentParameter.init(wrappedValue:)();
  v0[22] = v7;
  v0[4] = 1769105779;
  v0[5] = 0xE400000000000000;
  swift_allocObject();
  v8 = IntentParameter.init(wrappedValue:)();
  v0[23] = v8;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = v0[12];
  v9 = v0[13];
  v0[24] = static WorkoutSignposter.shared;
  WorkoutSignposter.emit(signpost:)(13);
  ObjectType = swift_getObjectType();
  v0[6] = v7;
  v0[7] = v8;
  v12 = type metadata accessor for UTType();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = type metadata accessor for SnippetEnvironment();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  static AppIntentPerformOptions.defaultConnectionOperationTimeout.getter();
  AppIntentPerformOptions.init(allowLiveActivities:allowsPrepareBeforePerform:assistantDismissalPolicy:connectionOperationTimeout:donateToTranscript:exportedContentType:interactionMode:kind:preferredBundleIdentifier:preferNoticePresentation:requestUnlockIfNeeded:snippetEnvironment:)();
  type metadata accessor for DefaultPerformAppIntentDelegate();
  swift_allocObject();
  v14 = DefaultPerformAppIntentDelegate.init()();
  v0[25] = v14;
  v15 = swift_task_alloc();
  v0[26] = v15;
  lazy protocol witness table accessor for type StartPlaybackAppIntentRepresentation and conformance StartPlaybackAppIntentRepresentation();
  *v15 = v0;
  v15[1] = MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:);
  v16 = v0[16];
  v17 = v0[11];
  v18 = MEMORY[0x277CEAFA0];
  v19 = v0[20];

  return MEMORY[0x28213DAA0](v19, v0 + 6, v16, v14, v18, ObjectType, &unk_28224B5F0, v17);
}

{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:);
  }

  else
  {
    v5 = MusicSiriRepresentationAppIntentDispatcher.startPlayback(siriRepID:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v25 = v0;
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  WorkoutSignposter.emit(signpost:)(14);
  (*(v3 + 16))(v2, v1, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[19];
  v9 = v0[20];
  v10 = v0[17];
  v11 = v0[18];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type AppIntentSuccessResult<String> and conformance AppIntentSuccessResult<A>();
    v23 = v9;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    log = v5;
    v17 = *(v11 + 8);
    v17(v8, v10);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v24);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_20AEA4000, log, v6, "Response = %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_3(v13);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);

    v19 = v23;
  }

  else
  {

    v17 = *(v11 + 8);
    v17(v8, v10);
    v19 = v9;
  }

  v17(v19, v10);

  v20 = v0[1];

  return v20();
}

{
  v1 = *(v0 + 216);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 216);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Failed to perform Music AppIntent, error: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

unint64_t lazy protocol witness table accessor for type StartPlaybackAppIntentRepresentation and conformance StartPlaybackAppIntentRepresentation()
{
  result = lazy protocol witness table cache variable for type StartPlaybackAppIntentRepresentation and conformance StartPlaybackAppIntentRepresentation;
  if (!lazy protocol witness table cache variable for type StartPlaybackAppIntentRepresentation and conformance StartPlaybackAppIntentRepresentation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartPlaybackAppIntentRepresentation and conformance StartPlaybackAppIntentRepresentation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppIntentSuccessResult<String> and conformance AppIntentSuccessResult<A>()
{
  result = lazy protocol witness table cache variable for type AppIntentSuccessResult<String> and conformance AppIntentSuccessResult<A>;
  if (!lazy protocol witness table cache variable for type AppIntentSuccessResult<String> and conformance AppIntentSuccessResult<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s18AppIntentsServices0A19IntentSuccessResultVySSGMd, &_s18AppIntentsServices0A19IntentSuccessResultVySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppIntentSuccessResult<String> and conformance AppIntentSuccessResult<A>);
  }

  return result;
}

uint64_t specialized MusicSiriRepresentationAppIntentDispatcher.init()()
{
  v0 = type metadata accessor for IntentsServices.PayloadPrivacy();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s18AppIntentsServices0bC0O14InterfaceIdiomOSgMd, &_s18AppIntentsServices0bC0O14InterfaceIdiomOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for IntentsServices.DispatcherOptions();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultEnvironment];
  v16[3] = type metadata accessor for LNEnvironment();
  v16[4] = MEMORY[0x277CEB188];
  v16[0] = v12;
  static IntentsServices.InterfaceIdiom.defaultForCurrentDevice.getter();
  (*(v1 + 104))(v4, *MEMORY[0x277CEB068], v0);
  IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)();
  v13 = static IntentsServices.localDispatcher(clientLabel:source:environment:options:)();
  (*(v8 + 8))(v11, v7);
  __swift_destroy_boxed_opaque_existential_0Tm_3(v16);
  return v13;
}

unint64_t type metadata accessor for LNEnvironment()
{
  result = lazy cache variable for type metadata for LNEnvironment;
  if (!lazy cache variable for type metadata for LNEnvironment)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNEnvironment);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartPlaybackAppIntentRepresentation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for StartPlaybackAppIntentRepresentation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()()
{
  v1[2] = v0;
  v2 = type metadata accessor for Playlist();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist(), 0, 0);
}

{
  v1 = *(v0[2] + 16);
  v0[6] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist();
    v4 = v0[5];

    return WorkoutPlaylistMigration.fetchLibraryPlaylist(with:)(v4, v2);
  }

  else
  {
    lazy protocol witness table accessor for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError();
    swift_allocError();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

{
  v2 = *v1;
  v2[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist(), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[9] = v3;
    *v3 = v2;
    v3[1] = WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist();
    v4 = v2[5];

    return specialized static LibraryPlaylistHelper.playbackIntent(from:)(v4);
  }
}

{
  v1 = v0[10];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = objc_allocWithZone(MEMORY[0x277D27FB8]);
  v7 = v1;
  v8 = MEMORY[0x20F2E6C00](0x6C7070612E6D6F63, 0xEF636973754D2E65);
  v9 = [v6 initWithIntent:v7 bundleID:v8 suggestionSource:0];

  (*(v5 + 8))(v2, v4);

  v10 = v0[1];

  return v10(v9);
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Failed to create MSSuggestion for legacy workout playlist", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist()(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](WorkoutPlaylistMigration.createSuggestionForLegacyWorkoutPlaylist(), 0, 0);
}

uint64_t WorkoutPlaylistMigration.fetchLibraryPlaylist(with:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A15LibraryResponseVyAA8PlaylistVGMd, &_s8MusicKit0A15LibraryResponseVyAA8PlaylistVGMR);
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14LibraryRequestVyAA8PlaylistVGMd, &_s8MusicKit0A14LibraryRequestVyAA8PlaylistVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlaylistMigration.fetchLibraryPlaylist(with:), 0, 0);
}

uint64_t WorkoutPlaylistMigration.fetchLibraryPlaylist(with:)()
{
  v1 = v0[13];
  v2 = v0[5];
  v0[16] = type metadata accessor for Playlist();
  MusicLibraryRequest.init()();
  KeyPath = swift_getKeyPath();
  v4 = [v2 stringValue];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v0[2] = MEMORY[0x20F2E6920](v5, v7);
  v0[3] = v8;
  MEMORY[0x20F2E68E0](KeyPath, v0 + 2, v1, MEMORY[0x277CD7E80]);

  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = WorkoutPlaylistMigration.fetchLibraryPlaylist(with:);
  v10 = v0[13];
  v11 = v0[11];

  return MEMORY[0x282124698](v11, v10);
}

{

  if (v0)
  {

    v1 = WorkoutPlaylistMigration.fetchLibraryPlaylist(with:);
  }

  else
  {
    v1 = WorkoutPlaylistMigration.fetchLibraryPlaylist(with:);
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  MusicLibraryResponse.items.getter();
  (*(v5 + 8))(v2, v4);
  specialized Collection.first.getter(v3);
  (*(v7 + 8))(v6, v8);
  v9 = *(v1 - 8);
  if ((*(v9 + 48))(v3, 1, v1) == 1)
  {
    v11 = v0[14];
    v10 = v0[15];
    v12 = v0[13];
    outlined destroy of Playlist?(v0[12]);
    lazy protocol witness table accessor for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError();
    swift_allocError();
    swift_willThrow();
    (*(v11 + 8))(v10, v12);
  }

  else
  {
    v14 = v0[16];
    v15 = v0[12];
    v16 = v0[4];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v9 + 32))(v16, v15, v14);
  }

  v13 = v0[1];

  return v13();
}

{
  (*(*(v0[16] - 8) + 56))(v0[12], 1, 1);
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  outlined destroy of Playlist?(v0[12]);
  lazy protocol witness table accessor for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError();
  swift_allocError();
  swift_willThrow();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t WorkoutPlaylistMigration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of Playlist?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVSgMd, &_s8MusicKit8PlaylistVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError()
{
  result = lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError;
  if (!lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError;
  if (!lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPlaylistMigrationError and conformance WorkoutPlaylistMigrationError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutPlaylistMigrationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutPlaylistMigrationError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for WorkoutPlaylistMigrationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for WorkoutPlaylistMigrationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t SessionSensorDisconnectAnalyticsEvent.eventName.getter()
{
  v1 = *v0;

  return v1;
}