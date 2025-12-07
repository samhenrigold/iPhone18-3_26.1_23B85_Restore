uint64_t storeEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized FIUIWorkoutActivityType.ActivityType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000020B455A80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F6F646E497369 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020B455AA0 == a2)
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

uint64_t getEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityTypeMetadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityTypeMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FIUIWorkoutActivityType.ActivityTypeMetadata.CodingKeys(unsigned int *a1, int a2)
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

double WorkoutStep.workoutKitAlertRepresentation.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
LABEL_54:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_13:
          __break(1u);
          goto LABEL_14;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v7 = *(v4 + 8 * v6 + 32);

        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      if (*(v7 + 40))
      {
        break;
      }

      ++v6;
      if (v8 == v5)
      {
        goto LABEL_14;
      }
    }

    v17 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
    swift_beginAccess();
    v18 = *(v2 + v17);
    v19 = v33;
    TargetZone.workoutKitRepresentation(activityType:)(v18, &v29);

    if (v19)
    {
      return result;
    }

    if (!*(&v30 + 1))
    {
      v33 = 0;
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_14:

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
LABEL_15:
  outlined destroy of WorkoutAlert?(&v29);
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v10 = 0;
    v3 = v4 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v11 = MEMORY[0x20F2E7A20](v10, v4);
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v11 = *(v4 + 8 * v10 + 32);

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      swift_beginAccess();
      v13 = *(v11 + 40);

      if (v13 == 1)
      {
        goto LABEL_44;
      }

      ++v10;
    }

    while (v12 != v9);
  }

  v14 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (v15)
  {
    v16 = *(v2 + v14);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v16 = static HeartRateTargetZone.defaultZone;
  }

  if (*(v16 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v16 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
  {
    v23 = v15;

LABEL_44:

    goto LABEL_45;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v22 = v15;

  if (v21)
  {

LABEL_45:
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    goto LABEL_46;
  }

  HeartRateTargetZone.workoutKitRepresentation.getter(&v29);

  if (*(&v30 + 1))
  {
LABEL_42:
    outlined init with take of WorkoutAlert(&v29, v32);
    outlined init with take of WorkoutAlert(v32, a1);
    return result;
  }

LABEL_46:
  outlined destroy of WorkoutAlert?(&v29);
  v24 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (v24)
  {
    v25 = v24;
    v26 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
    swift_beginAccess();
    v27 = *(v2 + v26);
    PowerZonesAlertTargetZone.workoutKitRepresentation(activityType:)(v27, &v29);

    if (*(&v30 + 1))
    {
      goto LABEL_42;
    }
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  outlined destroy of WorkoutAlert?(&v29);
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t WorkoutStep.workoutCoreRepresentation(activityType:configurationContext:stepType:validator:)(void *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v73 = &v63[-v10];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v11);
  v13 = &v63[-v12];
  v14 = type metadata accessor for UUID();
  v77 = *(v14 - 8);
  v78 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v76 = &v63[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for WorkoutGoal();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = *a2;
  v22 = &v63[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = *a3;
  WorkoutStep.goal.getter();
  WorkoutStep.alert.getter();
  v72 = WorkoutStep.displayName.getter();
  v24 = v23;
  LOBYTE(v81) = 1;
  v79 = a1;
  v25 = v86;
  v26 = WorkoutGoal.workoutCoreRepresentation(activityType:configurationType:validator:)(a1, &v81, a4);
  if (v25)
  {

    outlined destroy of WorkoutAlert?(v85);
    (*(v18 + 8))(v22, v17);
    return v21;
  }

  v64 = v21;
  v65 = a4;
  v66 = v22;
  v67 = 0;
  v68 = v18;
  v86 = v17;
  v27 = v26;
  v28 = v76;
  UUID.init()();
  type metadata accessor for WorkoutStep(0);
  v21 = swift_allocObject();
  v29 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v81 = 0;
  v82 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  (*(v70 + 32))(v21 + v29, v13, v71);
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v30 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v81) = 0;
  v31 = v73;
  Published.init(initialValue:)();
  (*(v74 + 32))(v21 + v30, v31, v75);
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v21 + 16) = v69;
  swift_beginAccess();
  v80 = v27;
  type metadata accessor for NLSessionActivityGoal();
  v32 = v27;
  Published.init(initialValue:)();
  swift_endAccess();
  v34 = v78;
  v33 = v79;
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v79;
  v35 = v77;
  (*(v77 + 16))(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v28, v34);
  swift_getKeyPath();
  swift_getKeyPath();
  v81 = v72;
  v82 = v24;
  v36 = v33;

  static Published.subscript.setter();
  v37 = v32;

  (*(v35 + 8))(v28, v34);
  outlined init with copy of WorkoutAlert?(v85, &v81);
  v38 = v83;
  if (v83)
  {
    v39 = v84;
    __swift_project_boxed_opaque_existential_1(&v81, v83);
    LOBYTE(v80) = v64;
    v40 = WorkoutAlert.targetZone(activityType:configurationContext:validator:)(v36, &v80, v65, v38, v39);
    __swift_destroy_boxed_opaque_existential_1(&v81);
    v41 = v86;
    v42 = v66;
    if (v40)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_20B425990;
      *(v43 + 32) = v40;
      v44 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
      swift_beginAccess();
      *(v21 + v44) = v43;

      swift_getKeyPath();
      swift_getKeyPath();
      v45 = static Published.subscript.modify();
      *v46 = !*v46;
      v45(&v81, 0);

LABEL_10:

      outlined destroy of WorkoutAlert?(v85);
      (*(v68 + 8))(v42, v41);
      return v21;
    }
  }

  else
  {
    outlined destroy of WorkoutAlert?(&v81);
    v41 = v86;
    v42 = v66;
  }

  outlined init with copy of WorkoutAlert?(v85, &v81);
  v47 = v83;
  if (v83)
  {
    __swift_project_boxed_opaque_existential_1(&v81, v83);
    v48 = WorkoutAlert.heartRateTargetZone.getter(v47);
    __swift_destroy_boxed_opaque_existential_1(&v81);
    if (v48)
    {
      v49 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
      swift_beginAccess();
      v50 = *(v21 + v49);
      *(v21 + v49) = v48;
      v51 = v48;

      swift_getKeyPath();
      swift_getKeyPath();
      v52 = static Published.subscript.modify();
      *v53 = !*v53;
      v52(&v81, 0);

      goto LABEL_10;
    }
  }

  else
  {
    outlined destroy of WorkoutAlert?(&v81);
  }

  outlined init with copy of WorkoutAlert?(v85, &v81);
  v54 = v83;
  if (v83)
  {
    __swift_project_boxed_opaque_existential_1(&v81, v83);
    v55 = WorkoutAlert.powerZonesAlertTargetZone(activityType:)(v36, v54);
    __swift_destroy_boxed_opaque_existential_1(&v81);
    v56 = v68;
    if (v55)
    {
      v57 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
      swift_beginAccess();
      v58 = *(v21 + v57);
      *(v21 + v57) = v55;
      v59 = v55;

      swift_getKeyPath();
      swift_getKeyPath();
      v60 = static Published.subscript.modify();
      *v61 = !*v61;
      v60(&v81, 0);
    }

    else
    {
    }

    outlined destroy of WorkoutAlert?(v85);
    (*(v56 + 8))(v42, v41);
  }

  else
  {

    outlined destroy of WorkoutAlert?(v85);
    (*(v68 + 8))(v42, v41);
    outlined destroy of WorkoutAlert?(&v81);
  }

  return v21;
}

uint64_t outlined destroy of WorkoutAlert?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of WorkoutAlert?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutAlert(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for AudioRoutingControlManager();
  v0 = swift_allocObject();
  result = AudioRoutingControlManager.init()();
  static AudioRoutingControlManager.shared = v0;
  return result;
}

{
  result = specialized MusicSiriRepresentationAppIntentDispatcher.init()();
  static MusicSiriRepresentationAppIntentDispatcher.shared = result;
  unk_27C7299A0 = v1;
  return result;
}

uint64_t AudioRoutingControlManager.__allocating_init()()
{
  v0 = swift_allocObject();
  AudioRoutingControlManager.init()();
  return v0;
}

uint64_t static AudioRoutingControlManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t AudioRoutingControlManager.init()()
{
  v11[0] = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v11[0] - 8);
  MEMORY[0x28223BE20](v11[0], v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.userInitiated.getter();
  v11[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v11[0]);
  *(v0 + 128) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
  v9 = [objc_allocWithZone(MEMORY[0x277CEF7E0]) init];
  *(v0 + 112) = v9;
  [v9 setDispatchQueue_];
  return v0;
}

uint64_t AudioRoutingControlManager.activate()()
{
  v1[14] = v0;
  v2 = type metadata accessor for NSNotificationCenter.Publisher();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](AudioRoutingControlManager.activate(), v0, 0);
}

{
  if (*(v0[14] + 120))
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
      _os_log_impl(&dword_20AEA4000, v2, v3, "AAAudioRoutingControl is already active", v4, 2u);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[18] = __swift_project_value_buffer(v7, static WOLog.audio);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Activating AAAudioRoutingControl", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v11 = v0[14];

    v13 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, v12, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = AudioRoutingControlManager.activate();
    v15 = v0[14];
    v16 = MEMORY[0x277D839B0];

    return MEMORY[0x2822008A0](v0 + 21, v11, v13, 0x6574617669746361, 0xEA00000000002928, partial apply for closure #1 in AudioRoutingControlManager.activate(), v15, v16);
  }
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = AudioRoutingControlManager.activate();
  }

  else
  {
    v4 = AudioRoutingControlManager.activate();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[20];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[20];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Error activating AAAudioRoutingControl, error=%@", v6, 0xCu);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  swift_getErrorValue();
  if (Error.code.getter() == -6721)
  {
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_20AEA4000, v10, v11, "AudioRoutingControlManager already active, marking as activated", v12, 2u);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }

    v13 = v0[20];
    v14 = v0[14];

    *(v14 + 120) = 1;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v16, "Activated AAAudioRoutingControl", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    v19 = v0[16];
    v18 = v0[17];
    v20 = v0[14];
    v21 = v0[15];

    v22 = [objc_opt_self() defaultCenter];
    v23 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B455AF0);
    NSNotificationCenter.publisher(for:object:)();

    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, 255, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);

    v24 = Publisher<>.sink(receiveValue:)();

    (*(v19 + 8))(v18, v21);
    v25 = type metadata accessor for AnyCancellable();
    v26 = MEMORY[0x277CBCDA0];
    v0[5] = v25;
    v0[6] = v26;
    v0[2] = v24;
    swift_beginAccess();
    outlined assign with take of Cancellable?((v0 + 2), v20 + 136);
    swift_endAccess();

    v27 = v0[1];
  }

  else
  {
    swift_willThrow();

    v27 = v0[1];
  }

  return v27();
}

uint64_t AudioRoutingControlManager.activate()(uint64_t a1)
{
  v2 = *(v1 + 168);
  *(*(v1 + 112) + 120) = v2;
  v3 = Logger.logObject.getter();
  if (v2 == 1)
  {
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v4, "Activated AAAudioRoutingControl", v5, 2u);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    v7 = *(v1 + 128);
    v6 = *(v1 + 136);
    v8 = *(v1 + 112);
    v9 = *(v1 + 120);

    v10 = [objc_opt_self() defaultCenter];
    v11 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B455AF0);
    NSNotificationCenter.publisher(for:object:)();

    lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher, 255, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);

    v12 = Publisher<>.sink(receiveValue:)();

    (*(v7 + 8))(v6, v9);
    v13 = type metadata accessor for AnyCancellable();
    v14 = MEMORY[0x277CBCDA0];
    *(v1 + 40) = v13;
    *(v1 + 48) = v14;
    *(v1 + 16) = v12;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v1 + 16, v8 + 136);
    swift_endAccess();
  }

  else
  {
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v3, v15, "AudioRoutingControlManager not activated", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }
  }

  v17 = *(v1 + 8);

  return v17();
}

void closure #1 in AudioRoutingControlManager.activate()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in AudioRoutingControlManager.activate();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_67;
  v12 = _Block_copy(aBlock);

  [v9 activateWithCompletion_];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in AudioRoutingControlManager.activate()(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t closure #2 in AudioRoutingControlManager.activate()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v9 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, v8, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v9;
  v10[4] = a2;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #2 in AudioRoutingControlManager.activate(), v10);
}

uint64_t closure #1 in closure #2 in AudioRoutingControlManager.activate()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #2 in AudioRoutingControlManager.activate();

  return AudioRoutingControlManager.handleAudioAccessoryDiedNotification()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay(), v0, 0);
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
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay(), v6, 0);
  }
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay(), v1, 0);
}

{
  return (*(v0 + 8))(*(v0 + 40));
}

uint64_t AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if (*(v3 + 120))
  {
    v4 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, a2, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
    v5 = swift_task_alloc();
    v2[4] = v5;
    type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
    *v5 = v2;
    v5[1] = AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();
    v7 = v2[2];

    return MEMORY[0x2822007B8](v2 + 5, v3, v4, 0xD000000000000026, 0x800000020B455B10, partial apply for closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay(), v7, v6);
  }

  else
  {
    v8 = swift_task_alloc();
    v2[3] = v8;
    *v8 = v2;
    v8[1] = AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();

    return AudioRoutingControlManager.activate()();
  }
}

{
  v3 = *(v2 + 16);
  v4 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, a2, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
  *v5 = v2;
  v5[1] = AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();
  v7 = *(v2 + 16);

  return MEMORY[0x2822007B8](v2 + 40, v3, v4, 0xD000000000000026, 0x800000020B455B10, partial apply for closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay(), v7, v6);
}

void closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMd, &_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - v7;
  v9 = *(a2 + 112);
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned AASmartRoutingDeviceNearbyAndStreamingStatus, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_56;
  v12 = _Block_copy(aBlock);

  [v9 areHeadphonesNearbyAndEligibleToPlay_];
  _Block_release(v12);
}

uint64_t closure #1 in closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(unsigned __int8 a1, void *a2)
{
  AASmartRoutingDeviceNearbyAndStreamingStatusToString(a1);
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.audio);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v7, v8))
    {

      goto LABEL_12;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v9 = 136315394;
    v12 = String.init(cString:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v25);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = a2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_20AEA4000, v7, v8, "smart routing areHeadphonesNearbyAndEligibleToPlay=%s error=(%@)", v9, 0x16u);
    outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.audio);
    v7 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25 = v20;
      *v19 = 136315138;
      v21 = String.init(cString:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_20AEA4000, v7, v18, "smart routing areHeadphonesNearbyAndEligibleToPlay=%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }
  }

LABEL_12:
  LOBYTE(v25) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMd, &_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned AASmartRoutingDeviceNearbyAndStreamingStatus, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();

  return AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()();
}

uint64_t @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(unsigned __int8 a1)
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
    (*(v8 + 16))(v8, a1, 0);
  }

  _Block_release(*(v6 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones(), v0, 0);
}

{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {
    v6 = *(v2 + 16);

    return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones(), v6, 0);
  }
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones(), v1, 0);
}

{
  v1 = *(v0 + 48);
  if (v1 <= 1)
  {
    if (*(v0 + 48))
    {
      if (v1 != 1)
      {
LABEL_8:
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
          _os_log_impl(&dword_20AEA4000, v3, v4, "Unknown default isNearbyAndEligibleStatus when calling AAAudioRoutingControl's areHeadphonesNearbyAndEligibleToPlay", v5, 2u);
          MEMORY[0x20F2E9420](v5, -1, -1);
        }
      }

LABEL_13:
      v6 = 0;
LABEL_18:
      v9 = *(v0 + 8);

      return v9(v6);
    }
  }

  else if (v1 != 4)
  {
    if (v1 == 3)
    {
      v6 = 1;
      goto LABEL_18;
    }

    if (v1 != 2)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones();

  return AudioRoutingControlManager.otherDevicePlayingAudioToConnectedHeadphones()();
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones()(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if (*(v3 + 120))
  {
    v4 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, a2, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
    v5 = swift_task_alloc();
    v2[4] = v5;
    type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
    *v5 = v2;
    v5[1] = AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones();
    v7 = v2[2];

    return MEMORY[0x2822007B8](v2 + 6, v3, v4, 0xD000000000000026, 0x800000020B455B10, closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()partial apply, v7, v6);
  }

  else
  {
    v8 = swift_task_alloc();
    v2[3] = v8;
    *v8 = v2;
    v8[1] = AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones();

    return AudioRoutingControlManager.activate()();
  }
}

{
  v3 = *(v2 + 16);
  v4 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, a2, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  type metadata accessor for AASmartRoutingDeviceNearbyAndStreamingStatus(0);
  *v5 = v2;
  v5[1] = AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones();
  v7 = *(v2 + 16);

  return MEMORY[0x2822007B8](v2 + 48, v3, v4, 0xD000000000000026, 0x800000020B455B10, closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()partial apply, v7, v6);
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout(), v0, 0);
}

{
  v1 = v0[2];
  if (*(v1 + 120))
  {
    [*(v1 + 112) prewarmAudioAccessoriesForFitnessWorkout];
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[3] = v4;
    *v4 = v0;
    v4[1] = AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout();

    return AudioRoutingControlManager.activate()();
  }
}

{
  v2 = *v1;
  *(*v1 + 32) = v0;

  v3 = *(v2 + 16);
  if (v0)
  {
    v4 = AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout();
  }

  else
  {
    v4 = AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  [*(*(v0 + 16) + 112) prewarmAudioAccessoriesForFitnessWorkout];
  v1 = *(v0 + 8);

  return v1();
}

{
  v16 = v0;
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.audio);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x800000020B455B40, &v15);
    *(v8 + 12) = 2112;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "%s Failed to activate AudioRoutingControlManager: %@", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioToConnectedHeadphones()()
{
  *(v1 + 88) = v0;
  v2 = swift_task_alloc();
  *(v1 + 96) = v2;
  *v2 = v1;
  v2[1] = AudioRoutingControlManager.otherDevicePlayingAudioToConnectedHeadphones();

  return AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()();
}

{
  v71 = v0;
  v1 = [objc_opt_self() sharedAVSystemController];
  if (!v1)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.audio);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "AVSystemController does not have a shared object, probably in simulator", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    goto LABEL_19;
  }

  v2 = v1;
  if ([v1 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v69 = 0u;
    v70 = 0u;
  }

  v7 = v70;
  *(v0 + 16) = v69;
  *(v0 + 32) = v7;
  if (!*(v0 + 40))
  {
    outlined destroy of NSObject?(v0 + 16, &_sypSgMd, &_sypSgMR);
LABEL_15:
    if (one-time initialization token for audio == -1)
    {
LABEL_16:
      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static WOLog.audio);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_20AEA4000, v13, v14, "No pickable audio routes to determine if connected device is playing audio", v15, 2u);
        MEMORY[0x20F2E9420](v15, -1, -1);
      }

LABEL_19:
      v16 = *(v0 + 104);
      goto LABEL_20;
    }

LABEL_61:
    swift_once();
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDySSypGGMd, &_sSaySDySSypGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = *(v0 + 80);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = objc_opt_self();
    v11 = 0;
    v68 = v0;
    v60 = v8;
    v61 = v2;
    v58 = v10;
    v59 = v9;
    while (v11 < *(v8 + 16))
    {
      v62 = v11;

      specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v21 = [v10 otherConnectedDevicesFromRouteDescription_];

      if (v21)
      {
        _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for MPAVAuxiliaryDevice, 0x277CD5D08);
        v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v22 >> 62)
        {
          v23 = __CocoaSet.count.getter();
          v24 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
          if (v23)
          {
LABEL_29:
            v25 = 0;
            v67 = v22 & 0xC000000000000001;
            v63 = v22 & 0xFFFFFFFFFFFFFF8;
            v64 = v23;
            v65 = v22;
            while (1)
            {
              if (v67)
              {
                v26 = MEMORY[0x20F2E7A20](v25, v22);
              }

              else
              {
                if (v25 >= *(v63 + 16))
                {
                  goto LABEL_59;
                }

                v26 = *(v22 + 8 * v25 + 32);
              }

              v27 = v26;
              v28 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                break;
              }

              if (one-time initialization token for audio != -1)
              {
                swift_once();
              }

              v29 = type metadata accessor for Logger();
              __swift_project_value_buffer(v29, static WOLog.audio);
              v2 = v27;
              v30 = Logger.logObject.getter();
              v0 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v30, v0))
              {
                v31 = swift_slowAlloc();
                v32 = swift_slowAlloc();
                *&v69 = v32;
                *v31 = 136315650;
                v33 = [v2 deviceName];
                v66 = v32;
                if (v33)
                {
                  v34 = v33;
                  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v37 = v36;
                }

                else
                {
                  v35 = 0;
                  v37 = 0;
                }

                v68[6] = v35;
                v68[7] = v37;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
                v38 = Optional.description.getter();
                v40 = v39;

                v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v69);

                *(v31 + 4) = v41;
                *(v31 + 12) = 2082;
                v42 = [v2 productName];
                if (v42)
                {
                  v43 = v42;
                  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v46 = v45;
                }

                else
                {
                  v44 = 0;
                  v46 = 0;
                }

                v68[8] = v44;
                v68[9] = v46;
                v47 = Optional.description.getter();
                v49 = v48;

                v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v69);

                *(v31 + 14) = v50;
                *(v31 + 22) = 1024;
                v24 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
                LODWORD(v50) = [v2 isPlaying];

                *(v31 + 24) = v50;
                _os_log_impl(&dword_20AEA4000, v30, v0, "Pickable audio route has connected device. name=%s product_name=%{public}s playing_audio=%{BOOL}d", v31, 0x1Cu);
                swift_arrayDestroy();
                MEMORY[0x20F2E9420](v66, -1, -1);
                MEMORY[0x20F2E9420](v31, -1, -1);

                v23 = v64;
                v22 = v65;
              }

              else
              {
              }

              v51 = [v2 v24[72]];

              if (v51)
              {

                v52 = 1;
                v0 = v68;
                v2 = v61;
                goto LABEL_53;
              }

              ++v25;
              if (v28 == v23)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_59:
            __break(1u);
            break;
          }
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v24 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
          if (v23)
          {
            goto LABEL_29;
          }
        }

LABEL_23:

        v0 = v68;
        v8 = v60;
        v2 = v61;
        v10 = v58;
        v9 = v59;
      }

      v11 = v62 + 1;
      if (v62 + 1 == v9)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

LABEL_52:

  v52 = 0;
LABEL_53:
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static WOLog.audio);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 67109120;
    *(v56 + 4) = v52;
    _os_log_impl(&dword_20AEA4000, v54, v55, "otherDevicePlayingAudioToConnectedHeadphones=%{BOOL}d", v56, 8u);
    MEMORY[0x20F2E9420](v56, -1, -1);
  }

  v57 = *(v0 + 104);

  v16 = v52 | v57;
LABEL_20:
  v17 = *(v0 + 8);

  return v17(v16 & 1);
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioToConnectedHeadphones()(char a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioToConnectedHeadphones(), v2, 0);
}

uint64_t AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), v0, 0);
}

{
  v1 = [objc_allocWithZone(MEMORY[0x277CD5D10]) init];
  v0[3] = v1;
  v2 = objc_allocWithZone(MEMORY[0x277CD5D48]);
  v3 = v1;
  v4 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B455C10);
  v5 = [v2 initWithDataSource:v3 name:v4];
  v0[4] = v5;

  [v5 setFetchAvailableRoutesSynchronously_];
  v6 = [v5 availableRoutes];
  _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for MPAVRoute, 0x277CD5D38);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[5] = v7;

  if (v7 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v9 = v0[2];
    v10 = lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type AudioRoutingControlManager and conformance AudioRoutingControlManager, v8, type metadata accessor for AudioRoutingControlManager, &protocol conformance descriptor for AudioRoutingControlManager);
    v11 = swift_task_alloc();
    v0[6] = v11;
    *(v11 + 16) = v7;
    v12 = swift_task_alloc();
    v0[7] = v12;
    *v12 = v0;
    v12[1] = AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
    v13 = MEMORY[0x277D839B0];
    v14 = MEMORY[0x277D839B0];
    v15 = MEMORY[0x277D839B0];

    return MEMORY[0x282200600](v0 + 8, v13, v14, v9, v10, &async function pointer to partial apply for closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), v11, v15);
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
    _os_log_impl(&dword_20AEA4000, v17, v18, "No available routes for companion", v19, 2u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  v20 = v0[1];

  return v20(0);
}

{
  v1 = *(*v0 + 16);

  return MEMORY[0x2822009F8](AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), v1, 0);
}

{
  v1 = *(v0 + 64);
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.audio);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v1;
    _os_log_impl(&dword_20AEA4000, v3, v4, "otherDevicePlayingAudioToConnectedHeadphonesWhenWatchNotConnectedToHeadphones=%{BOOL}d", v8, 8u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v9 = *(v0 + 8);

  return v9(v1);
}

uint64_t closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScG8IteratorVySb_GMd, &_sScG8IteratorVySb_GMR);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), 0, 0);
}

uint64_t closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()()
{
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    TaskGroup.makeAsyncIterator()();
    *(v0 + 145) = 0;
    v27 = swift_task_alloc();
    *(v0 + 136) = v27;
    *v27 = v0;
    v27[1] = closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
    v7 = *(v0 + 112);
    v4 = v0 + 144;
    v5 = 0;
    v6 = 0;

    return MEMORY[0x2822002E8](v4, v5, v6, v7);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  v3 = *(v0 + 80);
  v4 = objc_opt_self();
  v33 = v4;
  if (v2 >= 1)
  {
    v8 = 0;
    v31 = *v3;
    v32 = v2;
    v30 = v1 & 0xC000000000000001;
    v29 = *(v0 + 88) + 32;
    while (1)
    {
      if (v30)
      {
        v11 = MEMORY[0x20F2E7A20](v8, *(v0 + 88));
      }

      else
      {
        v11 = *(v29 + 8 * v8);
      }

      v12 = v11;
      v13 = *(v0 + 96);
      v14 = *(v0 + 104);
      v15 = [objc_allocWithZone(MEMORY[0x277D278F0]) init];
      v34 = v12;
      v16 = [v33 pathWithRoute:v12 bundleID:0 playerID:0];
      [v15 setPlayerPath_];

      [v15 setQualityOfService_];
      v17 = type metadata accessor for TaskPriority();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v14, 1, 1, v17);
      v19 = swift_allocObject();
      v19[2] = 0;
      v20 = v19 + 2;
      v19[3] = 0;
      v19[4] = v15;
      outlined init with copy of TaskPriority?(v14, v13);
      LODWORD(v16) = (*(v18 + 48))(v13, 1, v17);
      v21 = v15;
      v22 = *(v0 + 96);
      if (v16 == 1)
      {
        outlined destroy of NSObject?(*(v0 + 96), &_sScPSgMd, &_sScPSgMR);
        if (!*v20)
        {
          goto LABEL_14;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v18 + 8))(v22, v17);
        if (!*v20)
        {
LABEL_14:
          v23 = 0;
          v25 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v23 = dispatch thunk of Actor.unownedExecutor.getter();
      v25 = v24;
      swift_unknownObjectRelease();
LABEL_15:
      v26 = swift_allocObject();
      *(v26 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
      *(v26 + 24) = v19;

      if (v25 | v23)
      {
        v9 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v23;
        *(v0 + 40) = v25;
      }

      else
      {
        v9 = 0;
      }

      ++v8;
      v10 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v9;
      *(v0 + 64) = v31;
      swift_task_create();

      outlined destroy of NSObject?(v10, &_sScPSgMd, &_sScPSgMR);
      if (v32 == v8)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return MEMORY[0x2822002E8](v4, v5, v6, v7);
}

{

  return MEMORY[0x2822009F8](closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), 0, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 145);
  if (v1 == 2)
  {
    v3 = *(v0 + 72);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    *v3 = v2;

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    *(v0 + 145) = (v2 | v1) & 1;
    v6 = swift_task_alloc();
    *(v0 + 136) = v6;
    *v6 = v0;
    v6[1] = closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
    v7 = *(v0 + 112);

    return MEMORY[0x2822002E8](v0 + 144, 0, 0, v7);
  }
}

uint64_t closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a1;
  *(v4 + 32) = a4;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), 0, 0);
}

uint64_t closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  v4 = _sSo17OS_dispatch_queueCMaTm_0(0, &lazy cache variable for type metadata for MPCPlayerResponse, 0x277D278F8);
  *v3 = v0;
  v3[1] = closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000003ALL, 0x800000020B455C40, partial apply for closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones(), v2, v4);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
  }

  else
  {

    v2 = closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = [v1 state];

  **(v0 + 24) = (v2 < 6) & (0x2Cu >> v2);
  v3 = *(v0 + 8);

  return v3();
}

{

  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.audio);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Failed to get player responses for companion with error=%@", v8, 0xCu);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  **(v0 + 24) = 0;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPCPlayerResponse?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v11 = _Block_copy(aBlock);

  v12 = [a2 performWithCompletion_];
  _Block_release(v11);
  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(void *a1, id a2)
{
  if (a1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (!a2)
    {
      lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError();
      swift_allocError();
      v5 = v4;
      a2 = 0;
      *v5 = 1;
    }

    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t AudioRoutingControlManager.handleAudioAccessoryDiedNotification()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](AudioRoutingControlManager.handleAudioAccessoryDiedNotification(), v0, 0);
}

{
  if (one-time initialization token for audio != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v1, static WOLog.audio);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "handleAudioAccessoryDiedNotification reactivating AudioRoutingControlManager", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[2];

  *(v5 + 120) = 0;
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = AudioRoutingControlManager.handleAudioAccessoryDiedNotification();

  return AudioRoutingControlManager.activate()();
}

{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    v3 = v2[2];

    return MEMORY[0x2822009F8](AudioRoutingControlManager.handleAudioAccessoryDiedNotification(), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

{
  v1 = *(v0 + 40);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v3, v4, "failed reactivating AudioRoutingControlManager error=%@", v7, 0xCu);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t AudioRoutingControlManager.deinit()
{
  outlined destroy of NSObject?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AudioRoutingControlManager.__deallocating_deinit()
{
  outlined destroy of NSObject?(v0 + 136, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t outlined assign with take of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore16ZonesAccumulatorC5EntryOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore16ZonesAccumulatorC5EntryOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys6UInt32VGMd, &_ss23_ContiguousArrayStorageCys6UInt32VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_e1_D14StatePublisherV0D12PausedReasonOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_e1_D14StatePublisherV0D12PausedReasonOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D15MediaSuggestionVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D15MediaSuggestionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore21AnyActivityPickerItemVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore21AnyActivityPickerItemVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore11MetricValueVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore11MetricValueVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_6(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t dispatch thunk of AudioRoutingControlManager.activate()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of AudioRoutingControlManager.activate();

  return v4();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();

  return v4();
}

uint64_t dispatch thunk of AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones();

  return v4();
}

uint64_t dispatch thunk of AudioRoutingControlManager.otherDevicePlayingAudioToNearbyHeadphones()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of AudioRoutingControlManager.prewarmAudioAccessoriesForFitnessWorkout();

  return v4();
}

uint64_t partial apply for closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();

  return closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(a1, a2, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t partial apply for closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones();

  return closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzlTRSb_TG5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo17MPCPlayerResponseCs5Error_pGMd, &_sScCySo17MPCPlayerResponseCs5Error_pGMR);

  return closure #1 in closure #1 in closure #1 in closure #1 in AudioRoutingControlManager.otherDevicePlayingAudioWhenWatchNotConnectedToHeadphones()(a1, a2);
}

unint64_t lazy protocol witness table accessor for type NLPlaybackError and conformance NLPlaybackError()
{
  result = lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError;
  if (!lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError;
  if (!lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NLPlaybackError and conformance NLPlaybackError);
  }

  return result;
}

uint64_t partial apply for @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay();

  return @objc closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(v2, v3);
}

uint64_t objectdestroy_42Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sIeAgH_ytIeAgHr_TRTATQ0_;

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(unsigned __int8 a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMd, &_sScCySo44AASmartRoutingDeviceNearbyAndStreamingStatusVs5NeverOGMR);

  return closure #1 in closure #1 in AudioRoutingControlManager.areHeadphonesNearbyAndEligibleToPlay()(a1, a2);
}

const char *AASmartRoutingDeviceNearbyAndStreamingStatusToString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "?";
  }

  else
  {
    return off_277D89590[a1];
  }
}

uint64_t partial apply for closure #1 in closure #2 in AudioRoutingControlManager.activate()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in closure #2 in AudioRoutingControlManager.activate();

  return closure #1 in closure #2 in AudioRoutingControlManager.activate()();
}

uint64_t objectdestroy_35Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in AudioRoutingControlManager.activate()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5Error_pGMd, &_sScCySbs5Error_pGMR);

  return closure #1 in closure #1 in AudioRoutingControlManager.activate()(a1);
}

void MirroredBlobContentType.init(protobuf:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
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
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 134218242;
      *(v7 + 4) = v3;
      *(v7 + 12) = 2080;
      *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6675626F746F7270, 0xE800000000000000, &v9);
      _os_log_impl(&dword_20AEA4000, v5, v6, "Unrecognized MirroredBlobContentType rawValue: %ld, defaulted to %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 0;
  }

  *a2 = v3;
}

uint64_t MirroredBlobContentType.description.getter()
{
  v1 = 0x6675626F746F7270;
  v2 = 0x61646F4365636172;
  if (*v0 != 2)
  {
    v2 = 0x6C61767265746E69;
  }

  if (*v0)
  {
    v1 = 0x61646579656B736ELL;
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

WorkoutCore::MirroredBlobContentType_optional __swiftcall MirroredBlobContentType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredBlobContentType()
{
  v1 = 0x6675626F746F7270;
  v2 = 0x61646F4365636172;
  if (*v0 != 2)
  {
    v2 = 0x6C61767265746E69;
  }

  if (*v0)
  {
    v1 = 0x61646579656B736ELL;
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

void protocol witness for MirroredEnumProtocol.init(protobuf:) in conformance MirroredBlobContentType(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = v2;
  MirroredBlobContentType.init(protobuf:)(&v3, a2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredBlobContentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredBlobContentType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredBlobContentType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredBlobContentType and conformance MirroredBlobContentType();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredBlobContentType and conformance MirroredBlobContentType()
{
  result = lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredBlobContentType and conformance MirroredBlobContentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlobContentType and conformance Apple_Workout_Core_MirroredBlobContentType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredBlobContentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredBlobContentType(uint64_t result, unsigned int a2, unsigned int a3)
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

WorkoutCore::WorkoutBlockType_optional __swiftcall WorkoutBlockType.init(rawValue:)(Swift::Int rawValue)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutBlockType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutBlockType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutBlockType@<X0>(void *result@<X0>, char *a2@<X8>)
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutBlock.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7370657473;
  if (v2 != 1)
  {
    v5 = 1684632949;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746E756F63;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0x7370657473;
  if (*a2 != 1)
  {
    v8 = 1684632949;
    v3 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746E756F63;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE500000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutBlock.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutBlock.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutBlock.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutBlock.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutBlock.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutBlock.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7370657473;
  if (v2 != 1)
  {
    v5 = 1684632949;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746E756F63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WorkoutBlock.CodingKeys()
{
  v1 = 0x7370657473;
  if (*v0 != 1)
  {
    v1 = 1684632949;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F63;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutBlock.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutBlock.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutBlock.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutBlock.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutBlock.repetitions.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for WorkoutBlock.repetitions : WorkoutBlock@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t WorkoutBlock.repetitions.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  if (!v3)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000032, 0x800000020B455D70, "WorkoutCore/WorkoutBlock.swift", 30, 2, 30, 0);
    __break(1u);
  }

  return result;
}

uint64_t (*WorkoutBlock.repetitions.modify(void *a1))(uint64_t *a1)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1 + 1);

  *a1 = a1[1];
  return WorkoutBlock.repetitions.modify;
}

uint64_t key path setter for WorkoutBlock.$repetitions : WorkoutBlock(uint64_t a1, uint64_t *a2)
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

uint64_t WorkoutBlock.$repetitions.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutBlock.$repetitions.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutBlock.$repetitions.modify;
}

uint64_t WorkoutBlock.steps.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for WorkoutBlock.steps : WorkoutBlock@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for WorkoutBlock.steps : WorkoutBlock(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutBlock.steps.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*WorkoutBlock.steps.modify(uint64_t *a1))()
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
  return WorkoutBlock.steps.modify;
}

void WorkoutBlock.steps.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t WorkoutBlock.$repetitions.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WorkoutBlock.$repetitions : WorkoutBlock(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutBlock.$steps : WorkoutBlock(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutBlock.$steps.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutBlock.$steps.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D4StepCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutBlock.$steps.modify;
}

void WorkoutBlock.$repetitions.modify(uint64_t a1, char a2)
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

uint64_t WorkoutBlock.blockType.getter@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a1 = v3 != 1;
  return result;
}

uint64_t WorkoutBlock.hash(into:)(uint64_t a1)
{
  WorkoutBlock.equivalentHash(into:)(a1);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t WorkoutBlock.equivalentHash(into:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  MEMORY[0x20F2E7FF0](v7);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  v2 = v7;
  if (!(v7 >> 62))
  {
    result = MEMORY[0x20F2E7FF0](*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v6 = __CocoaSet.count.getter();
  MEMORY[0x20F2E7FF0](v6);
  result = __CocoaSet.count.getter();
  v4 = result;
  if (!result)
  {
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v5, v2);
      }

      else
      {
      }

      ++v5;
      WorkoutStep.equivalentHash(into:)(a1);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      dispatch thunk of Hashable.hash(into:)();
    }

    while (v4 != v5);
  }

  __break(1u);
  return result;
}

uint64_t WorkoutBlock.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Published.init(initialValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  Published.init(initialValue:)();
  v3 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t WorkoutBlock.init(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v19 = 1;
  Published.init(initialValue:)();
  (*(v9 + 32))(v1 + v13, v12, v8);
  v14 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v19 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  Published.init(initialValue:)();
  (*(v4 + 32))(v1 + v14, v7, v3);
  v15 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 32))(v1 + v15, a1, v16);
  return v1;
}

uint64_t WorkoutBlock.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  WorkoutBlock.init(from:)(a1);
  return v2;
}

char *WorkoutBlock.init(from:)(void *a1)
{
  v3 = v1;
  v61 = a1;
  v55 = *v1;
  v56 = v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v47 = &v45 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D5BlockC10CodingKeys33_5D74E672B45A4C730D6E0D240D85CBC9LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D5BlockC10CodingKeys33_5D74E672B45A4C730D6E0D240D85CBC9LLOGMR);
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v45 - v22;
  v24 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v63 = 1;
  Published.init(initialValue:)();
  v57 = v20;
  v25 = *(v20 + 32);
  v51 = v24;
  v60 = v19;
  v25(&v3[v24], v23, v19);
  v26 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v63 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  Published.init(initialValue:)();
  v58 = v15;
  v59 = v14;
  v27 = *(v15 + 32);
  v48 = v26;
  v27(&v3[v26], v18, v14);
  __swift_project_boxed_opaque_existential_1(v61, v61[3]);
  lazy protocol witness table accessor for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys();
  v53 = v13;
  v28 = v56;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    v31 = v58;
    v32 = v59;
    v35 = v3;
    (*(v57 + 8))(&v3[OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions], v60);
    (*(v31 + 8))(&v3[OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps], v32);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v51;
    v30 = v52;
    LOBYTE(v63) = 0;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_beginAccess();
    (*(v57 + 8))(&v3[v29], v60);
    v64 = v34;
    v35 = v3;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v63) = 1;
    lazy protocol witness table accessor for type [WorkoutStep] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutStep] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, &protocol conformance descriptor for WorkoutStep, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v58;
    v37 = v64;
    v38 = v48;
    swift_beginAccess();
    (*(v36 + 8))(&v3[v38], v59);
    v62 = v37;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v63) = 2;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v63) = 2;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
      v39 = v49;
      v40 = v53;
      v41 = v54;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v30 + 8))(v40, v41);
      v42 = v50;
      v43 = v47;
    }

    else
    {
      v44 = v46;
      UUID.init()();
      (*(v30 + 8))(v53, v54);
      v43 = v44;
      v39 = v49;
      v42 = v50;
    }

    (*(v42 + 32))(&v35[OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid], v43, v39);
  }

  __swift_destroy_boxed_opaque_existential_1(v61);
  return v35;
}

uint64_t WorkoutBlock.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D5BlockC10CodingKeys33_5D74E672B45A4C730D6E0D240D85CBC9LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D5BlockC10CodingKeys33_5D74E672B45A4C730D6E0D240D85CBC9LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v10);

  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v10);

    v9[7] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    lazy protocol witness table accessor for type [WorkoutStep] and conformance <A> [A](&lazy protocol witness table cache variable for type [WorkoutStep] and conformance <A> [A], &lazy protocol witness table cache variable for type WorkoutStep and conformance WorkoutStep, &protocol conformance descriptor for WorkoutStep, MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    LOBYTE(v10) = 2;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t WorkoutBlock.isEquivalent(to:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized WorkoutBlock.isEquivalent(to:)(v4, v1, v2, v3);
}

uint64_t WorkoutBlock.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t WorkoutBlock.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutBlock(uint64_t a1)
{
  WorkoutBlock.equivalentHash(into:)(a1);
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutBlock(uint64_t a1)
{
  Hasher.init(_seed:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  MEMORY[0x20F2E7FF0](v6);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v1 = v6;
  if (!(v6 >> 62))
  {
    result = MEMORY[0x20F2E7FF0](*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:

    type metadata accessor for UUID();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    dispatch thunk of Hashable.hash(into:)();
    return Hasher._finalize()();
  }

  v5 = __CocoaSet.count.getter();
  MEMORY[0x20F2E7FF0](v5);
  result = __CocoaSet.count.getter();
  v3 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v3 >= 1)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v4, v1);
      }

      else
      {
      }

      ++v4;
      WorkoutStep.equivalentHash(into:)(v7);
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      dispatch thunk of Hashable.hash(into:)();
    }

    while (v3 != v4);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

char *protocol witness for Decodable.init(from:) in conformance WorkoutBlock@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = WorkoutBlock.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for Equivalent.isEquivalent(to:) in conformance WorkoutBlock(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return specialized WorkoutBlock.isEquivalent(to:)(v5, v2, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutBlock@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t static WorkoutBlock.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return specialized WorkoutBlock.isEquivalent(to:)(a2, a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutBlock(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return specialized WorkoutBlock.isEquivalent(to:)(v3, v2);
}

uint64_t WorkoutBlock.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutBlock@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t lazy protocol witness table accessor for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlock.CodingKeys and conformance WorkoutBlock.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [WorkoutStep] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    lazy protocol witness table accessor for type UUID and conformance UUID(a2, type metadata accessor for WorkoutStep, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized WorkoutBlock.isEquivalent(to:)(uint64_t a1, uint64_t *a2)
{
  v8[3] = *a2;
  v8[4] = &protocol witness table for WorkoutBlock;
  v8[0] = a1;
  outlined init with copy of Equivalent(v8, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v2 = v7[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  if (v2 != v7[0])
  {

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v3 = v7[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v4 = specialized _arrayForceCast<A, B>(_:)(v7[0]);

  v5 = specialized Array.isEquivalent(to:)(v4, v3);

LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5 & 1;
}

uint64_t specialized WorkoutBlock.isEquivalent(to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of Equivalent(v13, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v7 = v12[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  if (v7 != v12[0])
  {

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v8 = v12[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v12);

  v9 = specialized _arrayForceCast<A, B>(_:)(v12[0]);

  v10 = specialized Array.isEquivalent(to:)(v9, v8);

LABEL_6:
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10 & 1;
}

uint64_t type metadata accessor for WorkoutBlock(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutBlock;
  if (!type metadata singleton initialization cache for WorkoutBlock)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t specialized WorkoutBlock.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutBlock.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id specialized static WorkoutBlock.workStep(activityType:activityMoveMode:)(void *a1, uint64_t a2)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v5);
  v7 = &v39 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:a1 activityMoveMode:a2];
  if (result)
  {
    v18 = result;
    specialized static IntervalWorkout.supportedGoalTypes(for:)(result);
    v20 = v19;

    v21 = *(v20 + 16);
    v22 = 32;
    v23 = v21;
    v40 = a1;
    while (v23)
    {
      v24 = *(v20 + v22);
      v22 += 8;
      --v23;
      if (v24 == 1)
      {

        v25 = [objc_opt_self() meterUnit];
        v26 = [objc_opt_self() quantityWithUnit:v25 doubleValue:100.0];

        v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v26];
LABEL_10:
        v31 = v27;

        goto LABEL_12;
      }
    }

    v28 = 32;
    while (v21)
    {
      v29 = *(v20 + v28);
      v28 += 8;
      --v21;
      if (v29 == 2)
      {

        v30 = [objc_opt_self() secondUnit];
        v26 = [objc_opt_self() quantityWithUnit:v30 doubleValue:30.0];

        v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v26];
        goto LABEL_10;
      }
    }

    v31 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
LABEL_12:
    v32 = v31;
    UUID.init()();
    type metadata accessor for WorkoutStep(0);
    v33 = swift_allocObject();
    v34 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
    v44 = 0;
    v45 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    Published.init(initialValue:)();
    (*(v8 + 32))(v33 + v34, v11, v41);
    *(v33 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
    *(v33 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
    v35 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
    LOBYTE(v44) = 0;
    Published.init(initialValue:)();
    (*(v4 + 32))(v33 + v35, v7, v42);
    *(v33 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
    *(v33 + 16) = 0;
    swift_beginAccess();
    v43 = v32;
    type metadata accessor for NLSessionActivityGoal();
    v36 = v32;
    Published.init(initialValue:)();
    swift_endAccess();
    v37 = v40;
    *(v33 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v40;
    (*(v13 + 16))(v33 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v16, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = 0;
    v45 = 0;
    v38 = v37;

    static Published.subscript.setter();

    (*(v13 + 8))(v16, v12);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id specialized static WorkoutBlock.restStep(activityType:activityMoveMode:)(void *a1, uint64_t a2)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v5);
  v7 = &v39 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v9);
  v11 = &v39 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:a1 activityMoveMode:a2];
  if (result)
  {
    v18 = result;
    specialized static IntervalWorkout.supportedGoalTypes(for:)(result);
    v20 = v19;

    v21 = *(v20 + 16);
    v22 = 32;
    v23 = v21;
    v40 = a1;
    while (v23)
    {
      v24 = *(v20 + v22);
      v22 += 8;
      --v23;
      if (v24 == 2)
      {

        v25 = [objc_opt_self() secondUnit];
        v26 = [objc_opt_self() quantityWithUnit:v25 doubleValue:30.0];

        v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v26];
LABEL_10:
        v31 = v27;

        goto LABEL_12;
      }
    }

    v28 = 32;
    while (v21)
    {
      v29 = *(v20 + v28);
      v28 += 8;
      --v21;
      if (v29 == 1)
      {

        v30 = [objc_opt_self() meterUnit];
        v26 = [objc_opt_self() quantityWithUnit:v30 doubleValue:100.0];

        v27 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v26];
        goto LABEL_10;
      }
    }

    v31 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
LABEL_12:
    v32 = v31;
    UUID.init()();
    type metadata accessor for WorkoutStep(0);
    v33 = swift_allocObject();
    v34 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
    v44 = 0;
    v45 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    Published.init(initialValue:)();
    (*(v8 + 32))(v33 + v34, v11, v41);
    *(v33 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
    *(v33 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
    v35 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
    LOBYTE(v44) = 0;
    Published.init(initialValue:)();
    (*(v4 + 32))(v33 + v35, v7, v42);
    *(v33 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
    *(v33 + 16) = 1;
    swift_beginAccess();
    v43 = v32;
    type metadata accessor for NLSessionActivityGoal();
    v36 = v32;
    Published.init(initialValue:)();
    swift_endAccess();
    v37 = v40;
    *(v33 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v40;
    (*(v13 + 16))(v33 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v16, v12);
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = 0;
    v45 = 0;
    v38 = v37;

    static Published.subscript.setter();

    (*(v13 + 8))(v16, v12);
    return v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static WorkoutBlock.canonical(activityType:activityMoveMode:)(void *a1, uint64_t a2)
{
  v30 = a2;
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v2 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v3);
  v5 = &v29 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  type metadata accessor for WorkoutBlock(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v33[0] = 1;
  Published.init(initialValue:)();
  v18 = v10;
  v19 = v30;
  (*(v7 + 32))(v16 + v17, v18, v6);
  v20 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v33[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(v16 + v20, v5, v31);
  v21 = v32;
  (*(v12 + 32))(v16 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v15, v11);
  WorkoutBlock.repetitions.setter(4);
  specialized static WorkoutBlock.workStep(activityType:activityMoveMode:)(v21, v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = static Published.subscript.modify();
  v24 = v23;
  MEMORY[0x20F2E6F30]();
  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v22(v33, 0);

  specialized static WorkoutBlock.restStep(activityType:activityMoveMode:)(v21, v19);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = static Published.subscript.modify();
  v27 = v26;
  MEMORY[0x20F2E6F30]();
  if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v25(v33, 0);

  return v16;
}

unint64_t lazy protocol witness table accessor for type WorkoutBlockType and conformance WorkoutBlockType()
{
  result = lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType;
  if (!lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType;
  if (!lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBlockType and conformance WorkoutBlockType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [WorkoutBlockType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutBlockType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutBlockType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A9BlockTypeOGMd, &_sSay11WorkoutCore0A9BlockTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutBlockType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutBlockType(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutBlockType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for WorkoutBlock(uint64_t a1)
{
  type metadata accessor for Published<Int>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<[WorkoutStep]>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<[WorkoutStep]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[WorkoutStep]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[WorkoutStep]>);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutBlock.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutBlock.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined init with copy of Equivalent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0x5379616C70736964;
    }

    if (v2)
    {
      v3 = 0x800000020B455000;
    }

    else
    {
      v3 = 0xEB000000006E6170;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x800000020B455020;
    v4 = 0xD000000000000012;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x800000020B455040;
    }

    else
    {
      v3 = 0x800000020B455060;
    }

    v4 = 0xD000000000000011;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x5379616C70736964;
    }

    if (a2)
    {
      v7 = 0x800000020B455000;
    }

    else
    {
      v7 = 0xEB000000006E6170;
    }

    if (v4 != v8)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0x800000020B455040;
    if (a2 != 3)
    {
      v5 = 0x800000020B455060;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a2 == 2)
    {
      v7 = 0x800000020B455020;
    }

    else
    {
      v7 = v5;
    }

    if (v4 != v6)
    {
      goto LABEL_34;
    }
  }

  if (v3 != v7)
  {
LABEL_34:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_35;
  }

  v9 = 1;
LABEL_35:

  return v9 & 1;
}

{
  v2 = 0xEF64656C62616E45;
  v3 = 0x79616C506F747561;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x677553616964656DLL;
      v6 = 0xEF6E6F6974736567;
    }

    else
    {
      v6 = 0x800000020B454810;
      v5 = 0xD000000000000019;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0x79616C506F747561;
    }

    if (v4)
    {
      v6 = 0x800000020B4547E0;
    }

    else
    {
      v6 = 0xEF64656C62616E45;
    }
  }

  v7 = 0x677553616964656DLL;
  v8 = 0x800000020B454810;
  if (a2 == 2)
  {
    v8 = 0xEF6E6F6974736567;
  }

  else
  {
    v7 = 0xD000000000000019;
  }

  if (a2)
  {
    v3 = 0xD000000000000013;
    v2 = 0x800000020B4547E0;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0xEC00000050544663;
  v3 = 0x6974616D6F747561;
  v4 = a1;
  v5 = 0xEF657A695373656ELL;
  v6 = 0xD000000000000011;
  v7 = 0x800000020B453FB0;
  if (a1 != 4)
  {
    v6 = 0x6E6F697461657263;
    v7 = 0xEC00000065746144;
  }

  if (a1 == 3)
  {
    v6 = 0x6F5A6C61756E616DLL;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0xD000000000000011;
  v9 = 0x800000020B453F70;
  v10 = 0x54466C61756E616DLL;
  v11 = 0xE900000000000050;
  if (a1 == 1)
  {
    v10 = 0x6974616D6F747561;
    v11 = 0xEC00000050544663;
  }

  if (a1)
  {
    v8 = v10;
    v9 = v11;
  }

  if (a1 <= 2u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0x800000020B453FB0;
        if (v12 != 0xD000000000000011)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v2 = 0xEC00000065746144;
        if (v12 != 0x6E6F697461657263)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_29;
    }

    v3 = 0x6F5A6C61756E616DLL;
    v2 = 0xEF657A695373656ELL;
  }

  else
  {
    if (!a2)
    {
      v2 = 0x800000020B453F70;
      if (v12 != 0xD000000000000011)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

    if (a2 != 1)
    {
      v2 = 0xE900000000000050;
      if (v12 != 0x54466C61756E616DLL)
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }
  }

  if (v12 != v3)
  {
LABEL_32:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

LABEL_29:
  if (v13 != v2)
  {
    goto LABEL_32;
  }

  v14 = 1;
LABEL_33:

  return v14 & 1;
}

{
  v2 = 0x65756C6176;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6E6F697461657263;
    }

    else
    {
      v4 = 0x7461446863746566;
    }

    if (v3 == 2)
    {
      v5 = 0xEC00000065746144;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656372756F73;
    }

    else
    {
      v4 = 0x65756C6176;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x6E6F697461657263;
  v8 = 0xEC00000065746144;
  if (a2 != 2)
  {
    v7 = 0x7461446863746566;
    v8 = 0xE900000000000065;
  }

  if (a2)
  {
    v2 = 0x656372756F73;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 0xEC00000065636170;
  v3 = 0x5F676E696C6C6F72;
  v4 = a1;
  v5 = 0xED00007265776F70;
  v6 = 1701736302;
  if (a1 == 6)
  {
    v6 = 0x5F65676172657661;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v7 = 0x5F65676172657661;
  v8 = 0xEF65636E65646163;
  if (a1 != 4)
  {
    v7 = 0xD000000000000013;
    v8 = 0x800000020B4544E0;
  }

  if (a1 > 5u)
  {
    v8 = v5;
  }

  else
  {
    v6 = v7;
  }

  v9 = 0xD000000000000012;
  v10 = 0x800000020B454490;
  if (a1 != 2)
  {
    v9 = 0xD000000000000015;
    v10 = 0x800000020B4544B0;
  }

  v11 = 0x5F65676172657661;
  if (!a1)
  {
    v11 = 0x5F676E696C6C6F72;
  }

  if (a1 <= 1u)
  {
    v9 = v11;
    v10 = 0xEC00000065636170;
  }

  if (a1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (v4 <= 3)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xED00007265776F70;
        if (v12 != 0x5F65676172657661)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v12 != 1701736302)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEF65636E65646163;
      if (v12 != 0x5F65676172657661)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v2 = 0x800000020B4544E0;
      if (v12 != 0xD000000000000013)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x800000020B454490;
        if (v12 != 0xD000000000000012)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0x800000020B4544B0;
      v3 = 0xD000000000000015;
    }

    else if (a2)
    {
      if (v12 != 0x5F65676172657661)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v12 != v3)
    {
LABEL_43:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v13 != v2)
  {
    goto LABEL_43;
  }

  v14 = 1;
LABEL_44:

  return v14 & 1;
}

{
  v2 = 1701869940;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x756F427265707075;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xEA0000000000646ELL;
    }

    else
    {
      v5 = 0x800000020B454030;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F427265776F6CLL;
    }

    else
    {
      v4 = 1701869940;
    }

    if (v3)
    {
      v5 = 0xEA0000000000646ELL;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x756F427265707075;
  v8 = 0x800000020B454030;
  if (a2 == 2)
  {
    v8 = 0xEA0000000000646ELL;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x756F427265776F6CLL;
    v6 = 0xEA0000000000646ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v2 = NSString.init(stringLiteral:)();
  v3 = NSString.init(stringLiteral:)();
  v4 = static NSObject.== infix(_:_:)();

  return v4 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x614E656372756F73;
    }

    if (v2)
    {
      v4 = 0x800000020B455080;
    }

    else
    {
      v4 = 0xEA0000000000656DLL;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6D49656372756F73;
    v4 = 0xEF61746144656761;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x72617453636E7973;
    }

    else
    {
      v3 = 1684632949;
    }

    if (v2 == 3)
    {
      v4 = 0xED00006574614474;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0xD000000000000016;
    }

    else
    {
      v6 = 0x614E656372756F73;
    }

    if (a2)
    {
      v5 = 0x800000020B455080;
    }

    else
    {
      v5 = 0xEA0000000000656DLL;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEF61746144656761;
    if (v3 != 0x6D49656372756F73)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xED00006574614474;
    if (v3 != 0x72617453636E7973)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v3 != 1684632949)
    {
LABEL_34:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

{
  v2 = "audioTranscriptionsEnabled";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD000000000000022;
    }

    if (v3 == 2)
    {
      v4 = "oneMasterTypePace";
    }

    else
    {
      v4 = "oneMasterTypeCadence";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "oneMasterTypeNone";
    }

    else
    {
      v4 = "audioTranscriptionsEnabled";
    }

    v5 = 0xD000000000000021;
  }

  v6 = "oneMasterTypePace";
  v7 = 0xD000000000000024;
  if (a2 != 2)
  {
    v7 = 0xD000000000000022;
    v6 = "oneMasterTypeCadence";
  }

  if (a2)
  {
    v2 = "oneMasterTypeNone";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD000000000000021;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x6E6F697461657263;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2 == 2)
    {
      v4 = 0xEC00000065746144;
    }

    else
    {
      v4 = 0x800000020B454000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x746E756F63;
    }

    if (v2)
    {
      v4 = 0x800000020B453FE0;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v7 = 0x6E6F697461657263;
    }

    else
    {
      v7 = 0xD000000000000010;
    }

    if (a2 == 2)
    {
      v6 = 0xEC00000065746144;
    }

    else
    {
      v6 = 0x800000020B454000;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0x746E756F63;
    }

    if (a2)
    {
      v6 = 0x800000020B453FE0;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    if (v3 != v5)
    {
      goto LABEL_32;
    }
  }

  if (v4 != v6)
  {
LABEL_32:
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x7974697669746361;
  v5 = 0xEC00000065707954;
  v6 = 0x6C61567472656C61;
  v7 = 0xEA00000000006575;
  if (a1 != 4)
  {
    v6 = 0x746144746E657665;
    v7 = 0xE900000000000065;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6F5A746567726174;
  v9 = 0xEA0000000000656ELL;
  if (a1 != 1)
  {
    v8 = 0x65636E6174736964;
    v9 = 0xEC00000065707954;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701869940;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701869940)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xEA0000000000656ELL;
      if (v10 != 0x6F5A746567726174)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v13 = 0x65636E6174736964;
LABEL_29:
    v12 = 0xEC00000065707954;
    if (v10 != v13)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v13 = 0x7974697669746361;
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    v12 = 0xEA00000000006575;
    if (v10 != 0x6C61567472656C61)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v12 = 0xE900000000000065;
    if (v10 != 0x746144746E657665)
    {
LABEL_34:
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_35;
    }
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v14 = 1;
LABEL_35:

  return v14 & 1;
}

{
  v2 = 0xD000000000000015;
  v3 = "alertValue";
  if (a1 > 3u)
  {
    v4 = "wo_disconnect_powerbeats";
    v10 = 0xD00000000000001DLL;
    if (a1 != 6)
    {
      v10 = 0xD000000000000020;
      v4 = "wo_connect_heart_rate_monitor";
    }

    v6 = "wo_disconnect_airpods";
    v11 = 0xD000000000000018;
    if (a1 == 4)
    {
      v11 = 0xD000000000000015;
    }

    else
    {
      v6 = "wo_connect_powerbeats";
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = "wo_disconnect_watch";
    v5 = 0xD000000000000012;
    if (a1 != 2)
    {
      v5 = 0xD000000000000015;
      v4 = "wo_connect_airpods";
    }

    v6 = "wo_connect_watch";
    v7 = 0xD000000000000013;
    if (!a1)
    {
      v7 = 0xD000000000000010;
      v6 = "alertValue";
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  if (v8)
  {
    v12 = v6;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "wo_disconnect_powerbeats";
        v2 = 0xD00000000000001DLL;
      }

      else
      {
        v3 = "wo_connect_heart_rate_monitor";
        v2 = 0xD000000000000020;
      }
    }

    else if (a2 == 4)
    {
      v3 = "wo_disconnect_airpods";
    }

    else
    {
      v3 = "wo_connect_powerbeats";
      v2 = 0xD000000000000018;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "wo_disconnect_watch";
      v2 = 0xD000000000000012;
    }

    else
    {
      v3 = "wo_connect_airpods";
    }
  }

  else if (a2)
  {
    v3 = "wo_connect_watch";
    v2 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (v9 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

{
  v2 = 0xEC00000065707954;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000013;
    }

    else
    {
      v6 = 0x7974697669746361;
    }

    if (v3)
    {
      v7 = 0x800000020B454C70;
    }

    else
    {
      v7 = 0xEC00000065707954;
    }
  }

  else
  {
    v4 = 0x6E6F697461636F6CLL;
    if (a1 == 3)
    {
      v5 = 0xEC00000065707954;
    }

    else
    {
      v4 = 0xD000000000000011;
      v5 = 0x800000020B454CA0;
    }

    if (a1 == 2)
    {
      v6 = 0x646574754D7369;
    }

    else
    {
      v6 = v4;
    }

    if (v3 == 2)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = v5;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0xD000000000000013;
    }

    else
    {
      v11 = 0x7974697669746361;
    }

    if (a2)
    {
      v10 = 0x800000020B454C70;
    }

    else
    {
      v10 = 0xEC00000065707954;
    }

    if (v6 != v11)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v8 = 0x6E6F697461636F6CLL;
    if (a2 != 3)
    {
      v8 = 0xD000000000000011;
      v2 = 0x800000020B454CA0;
    }

    if (a2 == 2)
    {
      v9 = 0x646574754D7369;
    }

    else
    {
      v9 = v8;
    }

    if (a2 == 2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v2;
    }

    if (v6 != v9)
    {
      goto LABEL_37;
    }
  }

  if (v7 != v10)
  {
LABEL_37:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_38;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

{
  v2 = "art_rate_monitor";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "incompatibleGizmoVersion";
      v4 = 0xD000000000000017;
    }

    else
    {
      v5 = "fitnessTrackingDisabled";
      v4 = 0xD00000000000001BLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000018;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3)
    {
      v5 = "gizmoWorkoutAppMissing";
    }

    else
    {
      v5 = "art_rate_monitor";
    }
  }

  if (a2 > 1u)
  {
    v2 = "incompatibleGizmoVersion";
    v6 = "fitnessTrackingDisabled";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000017;
    }

    else
    {
      v8 = 0xD00000000000001BLL;
    }
  }

  else
  {
    v6 = "gizmoWorkoutAppMissing";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000018;
    }

    else
    {
      v8 = 0xD000000000000016;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7955819;
    }

    else
    {
      v3 = 1701869940;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x65756C6176;
  }

  else if (a1 == 3)
  {
    v3 = 0x694C676E69727473;
    v4 = 0xED00006C61726574;
  }

  else
  {
    v3 = 0x7974697669746361;
    v4 = 0xEC00000065707954;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7955819;
    }

    else
    {
      v9 = 1701869940;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x694C676E69727473;
    v6 = 0xED00006C61726574;
    if (a2 != 3)
    {
      v5 = 0x7974697669746361;
      v6 = 0xEC00000065707954;
    }

    if (a2 == 2)
    {
      v7 = 0x65756C6176;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEF6E6F6974617275;
  v5 = 0x4164657461657263;
  if (a1 == 2)
  {
    v5 = 0x4479616C70736964;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  v6 = 0xD000000000000010;
  if (a1)
  {
    v6 = 0x7374696E75;
  }

  else
  {
    v3 = 0x800000020B454460;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v10 = 0xEF6E6F6974617275;
    v9 = 0xE900000000000074;
    if (a2 == 2)
    {
      v12 = 0x4479616C70736964;
    }

    else
    {
      v12 = 0x4164657461657263;
    }
  }

  else
  {
    v9 = 0xE500000000000000;
    v10 = 0x800000020B454460;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0x7374696E75;
    }

    else
    {
      v12 = 0xD000000000000010;
    }
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v7 == v12 && v8 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x697263736E617274;
    v10 = 0xEA00000000007470;
    if (a1 != 6)
    {
      v9 = 1701736314;
      v10 = 0xE400000000000000;
    }

    v11 = 0x706D6F4365636172;
    v12 = 0xEC0000006574656CLL;
    if (a1 != 4)
    {
      v11 = 0x647261646E617473;
      v12 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x6E6F7473656C696DLL;
    v5 = 0xE900000000000065;
    if (a1 != 2)
    {
      v4 = 0x6D6F437265636170;
      v5 = 0xED00006574656C70;
    }

    v6 = 0xD000000000000012;
    if (a1)
    {
      v3 = 0x800000020B454400;
    }

    else
    {
      v6 = 0x6C61767265746E69;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEA00000000007470;
        if (v7 != 0x697263736E617274)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        if (v7 != 1701736314)
        {
LABEL_47:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEC0000006574656CLL;
      if (v7 != 0x706D6F4365636172)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE800000000000000;
      if (v7 != 0x647261646E617473)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE900000000000065;
      if (v7 != 0x6E6F7473656C696DLL)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xED00006574656C70;
      if (v7 != 0x6D6F437265636170)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x800000020B454400;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x6C61767265746E69)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 1684632949;
    }

    else
    {
      v2 = 1701667182;
    }

    v3 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x6C4270756D726177;
    v3 = 0xEB000000006B636FLL;
  }

  else if (a1 == 3)
  {
    v2 = 0x6E776F646C6F6F63;
    v3 = 0xED00006B636F6C42;
  }

  else
  {
    v2 = 0x636F6C4270657473;
    v3 = 0xEA0000000000736BLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1684632949;
    }

    else
    {
      v8 = 1701667182;
    }

    v7 = 0xE400000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x6E776F646C6F6F63;
    v5 = 0xED00006B636F6C42;
    if (a2 != 3)
    {
      v4 = 0x636F6C4270657473;
      v5 = 0xEA0000000000736BLL;
    }

    if (a2 == 2)
    {
      v6 = 0x6C4270756D726177;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xEB000000006B636FLL;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

BOOL specialized == infix<A>(_:_:)(char a1, char a2)
{
  v9 = a1;
  v8 = a2;
  AppleExertionScale.rawValue.getter(&v6);
  AppleExertionScale.rawValue.getter(&v4);
  return v6 == v4 && v7 == v5;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore16CyclingPowerZoneC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (a2 >> 62)
  {
    v9 = v10;
  }

  if (v8 == v9)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v29 = a2 & 0xC000000000000001;
      v11 = 4;
      while (1)
      {
        v12 = v11 - 4;
        v13 = v11 - 3;
        if (__OFADD__(v11 - 4, 1))
        {
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x20F2E7A20](v11 - 4, a1);
          v14 = result;
          if (v29)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v14 = *(a1 + 8 * v11);

          if (v29)
          {
LABEL_22:
            v15 = MEMORY[0x20F2E7A20](v11 - 4, a2);
            goto LABEL_27;
          }
        }

        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v15 = *(a2 + 8 * v11);

LABEL_27:
        v33 = type metadata accessor for Zone();
        v32[0] = v15;
        outlined init with copy of Any(v32, v31);

        if (!swift_dynamicCast())
        {
          goto LABEL_51;
        }

        if (*(v14 + 16) != *(v30 + 16) || *(v14 + 24) != *(v30 + 24) || *(v14 + 32) != *(v30 + 32))
        {

          goto LABEL_51;
        }

        v16 = *(v14 + 40);
        v17 = *(v30 + 40);

        __swift_destroy_boxed_opaque_existential_0(v32);

        result = v16 == v17;
        if (v16 == v17)
        {
          ++v11;
          if (v13 != v5)
          {
            continue;
          }
        }

        return result;
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v5 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_58;
      }

      if (!v21)
      {
        break;
      }

      v23 = *v18;
      v24 = *v19;
      v33 = type metadata accessor for Zone();
      v32[0] = v24;
      outlined init with copy of Any(v32, v31);
      swift_retain_n();

      if (!swift_dynamicCast())
      {
        goto LABEL_51;
      }

      if (*(v23 + 16) != *(v30 + 16) || *(v23 + 24) != *(v30 + 24) || *(v23 + 32) != *(v30 + 32))
      {

LABEL_51:
        __swift_destroy_boxed_opaque_existential_0(v32);

        return 0;
      }

      v25 = *(v23 + 40);
      v26 = *(v30 + 40);

      __swift_destroy_boxed_opaque_existential_0(v32);

      v28 = v22-- != 0;
      result = v25 == v26;
      if (v25 == v26)
      {
        --v21;
        --v20;
        ++v18;
        ++v19;
        if (v28)
        {
          continue;
        }
      }

      return result;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore11MetricValueV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 9)
    {
      v6 = *(i - 1);
      v7 = *i;
      v9 = i[1];
      v8 = i[2];
      v10 = i[3];
      v28 = i[5];
      v11 = *(v3 - 1);
      v12 = *v3;
      v13 = v3[1];
      v14 = v3[2];
      v15 = v3[3];
      v27 = v3[5];
      v25 = *(v3 + 48);
      v26 = *(i + 48);
      v23 = i[4];
      v24 = v3[4];
      if (v6)
      {
        if (!v11)
        {
          return 0;
        }

        if (*(i - 2) != *(v3 - 2) || v6 != v11)
        {
          v22 = i[3];
          v16 = v3[3];
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v15 = v16;
          v10 = v22;
          if ((v17 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v11)
      {
        return 0;
      }

      if (v7 != v12 || v9 != v13)
      {
        v18 = v10;
        v19 = v15;
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v15 = v19;
        v10 = v18;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      if (v10)
      {
        if (!v15 || (v8 != v14 || v10 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v15)
      {
        return 0;
      }

      if (!v28)
      {
        break;
      }

      if (!v27)
      {
        return 0;
      }

      if (v23 != v24 || v28 != v27)
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v21 & 1) == 0)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (v26 != v25)
      {
        return 0;
      }

LABEL_7:
      v3 += 9;
      if (!--v2)
      {
        return 1;
      }
    }

    result = 0;
    if (v27)
    {
      return result;
    }

LABEL_6:
    if ((v26 ^ v25))
    {
      return result;
    }

    goto LABEL_7;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSo19HKWorkoutMetricTypeV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore10TargetZoneC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_141:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_137:
    v31 = 0;
    return v31 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_137;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_85;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_85:
    v31 = 1;
    return v31 & 1;
  }

  if (v5 < 0)
  {
    goto LABEL_148;
  }

  if (((a2 | a1) & 0xC000000000000001) != 0)
  {
    v51 = a2 & 0xC000000000000001;
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        __break(1u);
        goto LABEL_141;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x20F2E7A20](v11 - 4, a1);
        v14 = result;
        if (v51)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v14 = *(a1 + 8 * v11);

        if (v51)
        {
LABEL_21:
          v15 = MEMORY[0x20F2E7A20](v11 - 4, a2);
          goto LABEL_26;
        }
      }

      if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_147;
      }

      v15 = *(a2 + 8 * v11);

LABEL_26:
      v16 = *(v14 + 16);
      v17 = *(v15 + 16);
      if (v16 > 3)
      {
        if (*(v14 + 16) > 5u)
        {
          if (v16 == 6)
          {
            v18 = 0x5F65676172657661;
            v19 = 0xED00007265776F70;
            if (*(v15 + 16) <= 3u)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v19 = 0xE400000000000000;
            v18 = 1701736302;
            if (*(v15 + 16) <= 3u)
            {
              goto LABEL_32;
            }
          }
        }

        else if (v16 == 4)
        {
          v18 = 0x5F65676172657661;
          v19 = 0xEF65636E65646163;
          if (*(v15 + 16) <= 3u)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v18 = 0xD000000000000013;
          v19 = 0x800000020B4544E0;
          if (*(v15 + 16) <= 3u)
          {
            goto LABEL_32;
          }
        }
      }

      else if (*(v14 + 16) > 1u)
      {
        if (v16 == 2)
        {
          v18 = 0xD000000000000012;
        }

        else
        {
          v18 = 0xD000000000000015;
        }

        if (v16 == 2)
        {
          v19 = 0x800000020B454490;
        }

        else
        {
          v19 = 0x800000020B4544B0;
        }

        if (*(v15 + 16) <= 3u)
        {
LABEL_32:
          if (*(v15 + 16) > 1u)
          {
            if (v17 == 2)
            {
              v26 = 0xD000000000000012;
            }

            else
            {
              v26 = 0xD000000000000015;
            }

            if (v17 == 2)
            {
              v21 = 0x800000020B454490;
            }

            else
            {
              v21 = 0x800000020B4544B0;
            }

            if (v18 != v26)
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (*(v15 + 16))
            {
              v20 = 0x5F65676172657661;
            }

            else
            {
              v20 = 0x5F676E696C6C6F72;
            }

            v21 = 0xEC00000065636170;
            if (v18 != v20)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_73;
        }
      }

      else
      {
        if (*(v14 + 16))
        {
          v18 = 0x5F65676172657661;
        }

        else
        {
          v18 = 0x5F676E696C6C6F72;
        }

        v19 = 0xEC00000065636170;
        if (*(v15 + 16) <= 3u)
        {
          goto LABEL_32;
        }
      }

      if (*(v15 + 16) > 5u)
      {
        v22 = v17 == 6;
        if (v17 == 6)
        {
          v23 = 0x5F65676172657661;
        }

        else
        {
          v23 = 1701736302;
        }

        v24 = 0xED00007265776F70;
        v25 = 0xE400000000000000;
      }

      else
      {
        v22 = v17 == 4;
        if (v17 == 4)
        {
          v23 = 0x5F65676172657661;
        }

        else
        {
          v23 = 0xD000000000000013;
        }

        v24 = 0xEF65636E65646163;
        v25 = 0x800000020B4544E0;
      }

      if (v22)
      {
        v21 = v24;
      }

      else
      {
        v21 = v25;
      }

      if (v18 != v23)
      {
LABEL_75:
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_136;
        }

        goto LABEL_76;
      }

LABEL_73:
      if (v19 != v21)
      {
        goto LABEL_75;
      }

LABEL_76:
      swift_beginAccess();
      v28 = *(v14 + 24);
      swift_beginAccess();
      if (v28 != *(v15 + 24))
      {
        goto LABEL_136;
      }

      swift_beginAccess();
      v29 = *(v14 + 32);
      swift_beginAccess();
      if (v29 != *(v15 + 32))
      {
        goto LABEL_136;
      }

      swift_beginAccess();
      v30 = *(v14 + 40);

      swift_beginAccess();
      v4 = *(v15 + 40);

      if (((v30 ^ v4) & 1) == 0)
      {
        ++v11;
        if (v13 != v5)
        {
          continue;
        }
      }

      v31 = v30 ^ v4 ^ 1;
      return v31 & 1;
    }
  }

  v32 = a1 + 32;
  v33 = a2 + 32;
  v34 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v5 - 1;
  while (v34)
  {
    if (!v35)
    {
      goto LABEL_145;
    }

    v37 = v36;
    v38 = *v32;
    v39 = *(*v32 + 16);
    if (v39 > 3)
    {
      if (*(*v32 + 16) > 5u)
      {
        if (v39 == 6)
        {
          v40 = 0x5F65676172657661;
          v41 = 0xED00007265776F70;
        }

        else
        {
          v41 = 0xE400000000000000;
          v40 = 1701736302;
        }
      }

      else if (v39 == 4)
      {
        v40 = 0x5F65676172657661;
        v41 = 0xEF65636E65646163;
      }

      else
      {
        v40 = 0xD000000000000013;
        v41 = 0x800000020B4544E0;
      }
    }

    else if (*(*v32 + 16) > 1u)
    {
      if (v39 == 2)
      {
        v40 = 0xD000000000000012;
        v41 = 0x800000020B454490;
      }

      else
      {
        v40 = 0xD000000000000015;
        v41 = 0x800000020B4544B0;
      }
    }

    else
    {
      if (*(*v32 + 16))
      {
        v40 = 0x5F65676172657661;
      }

      else
      {
        v40 = 0x5F676E696C6C6F72;
      }

      v41 = 0xEC00000065636170;
    }

    v42 = *v33;
    v43 = *(*v33 + 16);
    if (v43 > 3)
    {
      if (*(*v33 + 16) > 5u)
      {
        if (v43 == 6)
        {
          v45 = 0xED00007265776F70;
          if (v40 != 0x5F65676172657661)
          {
            goto LABEL_130;
          }
        }

        else
        {
          v45 = 0xE400000000000000;
          if (v40 != 1701736302)
          {
            goto LABEL_130;
          }
        }
      }

      else if (v43 == 4)
      {
        v45 = 0xEF65636E65646163;
        if (v40 != 0x5F65676172657661)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v45 = 0x800000020B4544E0;
        if (v40 != 0xD000000000000013)
        {
          goto LABEL_130;
        }
      }
    }

    else if (*(*v33 + 16) > 1u)
    {
      if (v43 == 2)
      {
        v45 = 0x800000020B454490;
        if (v40 != 0xD000000000000012)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v45 = 0x800000020B4544B0;
        if (v40 != 0xD000000000000015)
        {
          goto LABEL_130;
        }
      }
    }

    else
    {
      if (*(*v33 + 16))
      {
        v44 = 0x5F65676172657661;
      }

      else
      {
        v44 = 0x5F676E696C6C6F72;
      }

      v45 = 0xEC00000065636170;
      if (v40 != v44)
      {
        goto LABEL_130;
      }
    }

    if (v41 == v45)
    {

      goto LABEL_131;
    }

LABEL_130:
    v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v46 & 1) == 0)
    {
      goto LABEL_136;
    }

LABEL_131:
    swift_beginAccess();
    v47 = *(v38 + 24);
    swift_beginAccess();
    if (v47 != *(v42 + 24) || (swift_beginAccess(), v48 = *(v38 + 32), swift_beginAccess(), v48 != *(v42 + 32)))
    {
LABEL_136:

      goto LABEL_137;
    }

    swift_beginAccess();
    v49 = *(v38 + 40);

    swift_beginAccess();
    v50 = *(v42 + 40);

    if (((v49 ^ v50) & 1) == 0)
    {
      --v35;
      --v34;
      v36 = v37 - 1;
      v32 += 8;
      v33 += 8;
      if (v37)
      {
        continue;
      }
    }

    v31 = v49 ^ v50 ^ 1;
    return v31 & 1;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C11_CLLocationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v9);
  v12 = (&v20 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_16:
    v18 = 0;
    return v18 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_Core_DateInterval(v15, v12, type metadata accessor for Apple_Workout_Core_CLLocation);
      outlined init with copy of Apple_Workout_Core_DateInterval(v16, v8, type metadata accessor for Apple_Workout_Core_CLLocation);
      if (*v12 != *v8 || v12[1] != v8[1] || v12[2] != v8[2] || v12[3] != v8[3] || v12[4] != v8[4] || v12[5] != v8[5])
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_CLLocation);
      outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_CLLocation);
      if (v18)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_CLLocation);
    outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_CLLocation);
    goto LABEL_16;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          MEMORY[0x20F2E42A0]();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        outlined copy of Data._Representation(v7, v6);
        outlined copy of Data._Representation(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          outlined copy of Data._Representation(v7, v6);
          outlined copy of Data._Representation(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          MEMORY[0x20F2E42A0]();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          closure #1 in static Data.== infix(_:_:)(v24, v25, v26, v33);
          outlined consume of Data._Representation(v9, v8);
          outlined consume of Data._Representation(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        outlined copy of Data._Representation(v7, v6);
        outlined copy of Data._Representation(v9, v8);
      }

      closure #1 in static Data.== infix(_:_:)(v33, v9, v8, &v32);
      outlined consume of Data._Representation(v9, v8);
      outlined consume of Data._Representation(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C15_RaceChartPointV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v9);
  v12 = (&v30 - v11);
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (v13 && a1 != a2)
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      while (1)
      {
        outlined init with copy of Apple_Workout_Core_DateInterval(v15, v12, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
        outlined init with copy of Apple_Workout_Core_DateInterval(v16, v8, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
        v18 = *(v4 + 28);
        v19 = (v12 + v18);
        v20 = *(v12 + v18 + 8);
        v21 = (v8 + v18);
        v22 = *(v8 + v18 + 8);
        if (v20)
        {
          if (!v22)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (*v19 != *v21)
          {
            LOBYTE(v22) = 1;
          }

          if (v22)
          {
LABEL_23:
            outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
            outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
            goto LABEL_24;
          }
        }

        v23 = *(v4 + 32);
        v24 = (v12 + v23);
        v25 = *(v12 + v23 + 8);
        v26 = (v8 + v23);
        v27 = *(v8 + v23 + 8);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (*v24 != *v26)
          {
            LOBYTE(v27) = 1;
          }

          if (v27)
          {
            goto LABEL_23;
          }
        }

        if (*v12 != *v8 || v12[1] != v8[1])
        {
          goto LABEL_23;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
        outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
        if (v28)
        {
          v16 += v17;
          v15 += v17;
          if (--v13)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_24:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B16ChartDataElementV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v9);
  v12 = (&v30 - v11);
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (v13 && a1 != a2)
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      while (1)
      {
        outlined init with copy of Apple_Workout_Core_DateInterval(v15, v12, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        outlined init with copy of Apple_Workout_Core_DateInterval(v16, v8, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        v18 = *(v4 + 28);
        v19 = (v12 + v18);
        v20 = *(v12 + v18 + 8);
        v21 = (v8 + v18);
        v22 = *(v8 + v18 + 8);
        if (v20)
        {
          if (!v22)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (*v19 != *v21)
          {
            LOBYTE(v22) = 1;
          }

          if (v22)
          {
LABEL_23:
            outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
            outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
            goto LABEL_24;
          }
        }

        v23 = *(v4 + 32);
        v24 = (v12 + v23);
        v25 = *(v12 + v23 + 8);
        v26 = (v8 + v23);
        v27 = *(v8 + v23 + 8);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (*v24 != *v26)
          {
            LOBYTE(v27) = 1;
          }

          if (v27)
          {
            goto LABEL_23;
          }
        }

        if (*v12 != *v8 || v12[1] != v8[1])
        {
          goto LABEL_23;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v28 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
        if (v28)
        {
          v16 += v17;
          v15 += v17;
          if (--v13)
          {
            continue;
          }
        }

        return v28 & 1;
      }
    }

    v28 = 1;
  }

  else
  {
LABEL_24:
    v28 = 0;
  }

  return v28 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C21_DataLinkMessageEntryV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v115 = type metadata accessor for Google_Protobuf_Timestamp();
  v112 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v4);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v89 - v9;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMR);
  MEMORY[0x28223BE20](v103, v11);
  v13 = &v89 - v12;
  v104 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v110 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v14);
  v16 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v89 - v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMR);
  MEMORY[0x28223BE20](v101, v21);
  v111 = &v89 - v22;
  v113 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v109 = *(v113 - 8);
  MEMORY[0x28223BE20](v113, v23);
  v105 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v89 - v27;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMR);
  MEMORY[0x28223BE20](v106, v29);
  v31 = &v89 - v30;
  v114 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  v33 = MEMORY[0x28223BE20](v114, v32);
  v108 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v107 = &v89 - v37;
  v38 = *(a1 + 16);
  if (v38 != *(a2 + 16))
  {
LABEL_34:
    v85 = 0;
    return v85 & 1;
  }

  if (!v38 || a1 == a2)
  {
    v85 = 1;
    return v85 & 1;
  }

  v91 = v20;
  v90 = v16;
  v95 = v10;
  v93 = v6;
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = a1 + v39;
  v41 = a2 + v39;
  v96 = (v110 + 48);
  v99 = (v112 + 48);
  v100 = (v109 + 48);
  v92 = (v112 + 32);
  v94 = (v112 + 8);
  v42 = *(v36 + 72);
  v97 = v28;
  v98 = v42;
  v43 = v13;
  v44 = v107;
  v45 = v108;
  v102 = v31;
  while (1)
  {
    v110 = v40;
    result = outlined init with copy of Apple_Workout_Core_DateInterval(v40, v44, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
    if (!v38)
    {
      break;
    }

    v109 = v38;
    v112 = v41;
    outlined init with copy of Apple_Workout_Core_DateInterval(v41, v45, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
    v47 = *(v114 + 20);
    v48 = *(v106 + 48);
    outlined init with copy of Apple_Workout_Core_Zone?(v44 + v47, v31, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    outlined init with copy of Apple_Workout_Core_Zone?(v45 + v47, &v31[v48], &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    v49 = *v100;
    v50 = v113;
    if ((*v100)(v31, 1, v113) == 1)
    {
      if (v49(&v31[v48], 1, v50) != 1)
      {
        goto LABEL_26;
      }

      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v31, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
      v51 = v112;
    }

    else
    {
      v52 = v97;
      outlined init with copy of Apple_Workout_Core_Zone?(v31, v97, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
      if (v49(&v31[v48], 1, v50) == 1)
      {
        outlined destroy of Apple_Workout_Core_DateInterval(v52, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
        v45 = v108;
LABEL_26:
        v86 = &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMd;
        v87 = &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMR;
        v88 = v31;
        goto LABEL_29;
      }

      v53 = v105;
      outlined init with take of Apple_Workout_Core_Zone(&v31[v48], v105, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
      v54 = *(v101 + 48);
      v55 = v111;
      outlined init with copy of Apple_Workout_Core_Zone?(v52, v111, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
      outlined init with copy of Apple_Workout_Core_Zone?(v53, v55 + v54, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
      v56 = *v96;
      if ((*v96)(v55, 1, v104) == 1)
      {
        v57 = v52;
        v58 = v56(v111 + v54, 1, v104);
        v51 = v112;
        if (v58 != 1)
        {
          goto LABEL_31;
        }

        outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v111, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
        v59 = v102;
        v45 = v108;
      }

      else
      {
        v60 = v111;
        v61 = v91;
        outlined init with copy of Apple_Workout_Core_Zone?(v111, v91, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
        v62 = v56(v60 + v54, 1, v104);
        v51 = v112;
        if (v62 == 1)
        {
          outlined destroy of Apple_Workout_Core_DateInterval(v61, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
          v57 = v97;
LABEL_31:
          outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v111, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMR);
          v59 = v102;
          v45 = v108;
LABEL_32:
          outlined destroy of Apple_Workout_Core_DateInterval(v105, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
          outlined destroy of Apple_Workout_Core_DateInterval(v57, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
          outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v59, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
          v44 = v107;
          goto LABEL_33;
        }

        v63 = v43;
        v64 = v90;
        outlined init with take of Apple_Workout_Core_Zone(v60 + v54, v90, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
        v65 = static Apple_Workout_Core_DataLinkMessage.OneOf_Message.== infix(_:_:)(v61, v64);
        v66 = v64;
        v43 = v63;
        v67 = v108;
        outlined destroy of Apple_Workout_Core_DateInterval(v66, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
        v68 = v61;
        v45 = v67;
        outlined destroy of Apple_Workout_Core_DateInterval(v68, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
        outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v60, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
        v57 = v97;
        v59 = v102;
        if ((v65 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v69 = v105;
      v70 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v69, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
      outlined destroy of Apple_Workout_Core_DateInterval(v57, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v59, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
      v44 = v107;
      if ((v70 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    v71 = *(v114 + 24);
    v72 = *(v103 + 48);
    outlined init with copy of Apple_Workout_Core_Zone?(v44 + v71, v43, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    v73 = v45;
    outlined init with copy of Apple_Workout_Core_Zone?(v45 + v71, v43 + v72, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    v74 = *v99;
    v75 = v43;
    v76 = v43;
    v77 = v115;
    if ((*v99)(v75, 1, v115) == 1)
    {
      v78 = v74(v76 + v72, 1, v77);
      v43 = v76;
      v45 = v73;
      if (v78 != 1)
      {
        goto LABEL_28;
      }

      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v43, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
      v31 = v102;
    }

    else
    {
      v79 = v95;
      outlined init with copy of Apple_Workout_Core_Zone?(v76, v95, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
      if (v74(v76 + v72, 1, v77) == 1)
      {
        (*v94)(v79, v77);
        v43 = v76;
        v45 = v108;
LABEL_28:
        v86 = &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMd;
        v87 = &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMR;
        v88 = v43;
LABEL_29:
        outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v88, v86, v87);
LABEL_33:
        outlined destroy of Apple_Workout_Core_DateInterval(v45, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
        outlined destroy of Apple_Workout_Core_DateInterval(v44, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
        goto LABEL_34;
      }

      v80 = v93;
      (*v92)(v93, v76 + v72, v115);
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Google_Protobuf_Timestamp and conformance Google_Protobuf_Timestamp, MEMORY[0x277D21570], MEMORY[0x277D21578]);
      v81 = dispatch thunk of static Equatable.== infix(_:_:)();
      v82 = *v94;
      v83 = v80;
      v44 = v107;
      v84 = v115;
      (*v94)(v83, v115);
      v82(v79, v84);
      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v76, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
      v43 = v76;
      v45 = v108;
      v31 = v102;
      if ((v81 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v85 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_DateInterval(v45, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
    outlined destroy of Apple_Workout_Core_DateInterval(v44, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
    if (v85)
    {
      v38 = v109 - 1;
      v41 = v51 + v98;
      v40 = v110 + v98;
      if (v109 != 1)
      {
        continue;
      }
    }

    return v85 & 1;
  }

  __break(1u);
  return result;
}