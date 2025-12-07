uint64_t getEnumTagSinglePayload for WOAnalyticsEvent.SharingEngagementType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WOAnalyticsEvent.SharingEngagementType(uint64_t result, unsigned int a2, unsigned int a3)
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

id one-time initialization function for msOutdoorRun()
{
  result = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0 isPartOfMultiSport:1 metadata:0];
  static FIUIWorkoutActivityType.msOutdoorRun = result;
  return result;
}

id one-time initialization function for msIndoorRun()
{
  result = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:1 isPartOfMultiSport:1 metadata:0];
  static FIUIWorkoutActivityType.msIndoorRun = result;
  return result;
}

id one-time initialization function for msOutdoorCycle()
{
  result = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:13 isIndoor:0 isPartOfMultiSport:1 metadata:0];
  static FIUIWorkoutActivityType.msOutdoorCycle = result;
  return result;
}

id one-time initialization function for msIndoorCycle()
{
  result = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:13 isIndoor:1 isPartOfMultiSport:1 metadata:0];
  static FIUIWorkoutActivityType.msIndoorCycle = result;
  return result;
}

void one-time initialization function for poolSwim(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v6;
  *(inited + 48) = a2;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [objc_opt_self() activityTypeWithHKWorkoutActivityTypeIdentifier:46 isIndoor:0 metadata:isa];

  *a3 = v8;
}

void one-time initialization function for msPoolSwim(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v6;
  *(inited + 48) = a2;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Any)(inited + 32);
  v7 = objc_allocWithZone(MEMORY[0x277D0A810]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v7 initWithActivityTypeIdentifier:46 isIndoor:0 isPartOfMultiSport:1 metadata:isa];

  *a3 = v9;
}

id one-time initialization function for outdoorRun(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  result = [objc_opt_self() activityTypeWithHKWorkoutActivityTypeIdentifier:a2 isIndoor:a3 & 1 metadata:0];
  *a4 = result;
  return result;
}

id static FIUIWorkoutActivityType.outdoorRun.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id VoiceFeedbackAvailabilityProvider.__allocating_init(workoutExperienceTypeBlock:workoutUltraModeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR____TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider_workoutExperienceTypeBlock];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider_workoutUltraModeBlock];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id VoiceFeedbackAvailabilityProvider.init(workoutExperienceTypeBlock:workoutUltraModeBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = &v4[OBJC_IVAR____TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider_workoutExperienceTypeBlock];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = &v4[OBJC_IVAR____TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider_workoutUltraModeBlock];
  *v6 = a3;
  *(v6 + 1) = a4;
  v8.receiver = v4;
  v8.super_class = type metadata accessor for VoiceFeedbackAvailabilityProvider();
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Bool __swiftcall VoiceFeedbackAvailabilityProvider.isVoiceFeedbackAvailable()()
{
  v1 = v0;
  v2 = (*(v0 + OBJC_IVAR____TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider_workoutExperienceTypeBlock))();
  if (v2 == 1)
  {
    v3 = 1;
LABEL_4:
    v4 = v2 == 4;
    goto LABEL_5;
  }

  v3 = v2 == 2;
  if (v2)
  {
    goto LABEL_4;
  }

  v4 = 1;
LABEL_5:
  v5 = FIUIIsWorkoutVoiceFeedbackEnabled();
  v6 = specialized static Locale.appLanguageId.getter();
  v8 = v7;
  if (one-time initialization token for languageFallbacks != -1)
  {
    swift_once();
  }

  v9 = static VoiceFeedbackUtilities.languageFallbacks;
  if (*(static VoiceFeedbackUtilities.languageFallbacks + 2))
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v8);
    if (v11)
    {
      v12 = v10;

      v13 = (v9[7] + 16 * v12);
      v6 = *v13;
      v8 = v13[1];
    }
  }

  v14 = specialized Collection.prefix(_:)(2, v6, v8);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = MEMORY[0x20F2E6D00](v14, v16, v18, v20);
  v23 = v22;

  v43 = v21;
  v24 = MEMORY[0x20F2E6C00](v21, v23);
  v25 = FIUIIsWorkoutVoiceFeedbackSupportedForLanguage();

  v26 = (*(v1 + OBJC_IVAR____TtC11WorkoutCore33VoiceFeedbackAvailabilityProvider_workoutUltraModeBlock))();
  v44[3] = &type metadata for WorkoutFeatures;
  v44[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v44[0]) = 0;
  v27 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_0(v44);
  v28 = [objc_opt_self() sharedPreferences];
  v29 = [v28 nanoAssistantEnabled];

  v42 = v3;
  if ((v4 | v5 ^ 1 | v3))
  {
    goto LABEL_11;
  }

  if (v27)
  {
    v30 = v29;
    if ((v26 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    v30 = 0;
    goto LABEL_12;
  }

  v30 = v25;
  if (v26)
  {
    goto LABEL_11;
  }

LABEL_12:
  v41 = v29;
  v31 = v5;
  if (one-time initialization token for voiceFeedback != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static WOLog.voiceFeedback);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v25;
    v38 = v36;
    v44[0] = v36;
    *v35 = 67111170;
    *(v35 + 4) = v30;
    *(v35 + 8) = 1024;
    *(v35 + 10) = v27 & 1;
    *(v35 + 14) = 1024;
    *(v35 + 16) = v31;
    *(v35 + 20) = 1024;
    *(v35 + 22) = v42;
    *(v35 + 26) = 1024;
    *(v35 + 28) = v4;
    *(v35 + 32) = 1024;
    *(v35 + 34) = v37;
    *(v35 + 38) = 2080;
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v23, v44);

    *(v35 + 40) = v39;
    *(v35 + 48) = 1024;
    *(v35 + 50) = v26 & 1;
    *(v35 + 54) = 1024;
    *(v35 + 56) = v41;
    _os_log_impl(&dword_20AEA4000, v33, v34, "voice_feedback_enabled=%{BOOL}d announce_ffctl_enabled=%{BOOL}d user_default_enabled=%{BOOL}d video_workout=%{BOOL}d guided_audio=%{BOOL}d language_supported=%{BOOL}d language_code=%s workout_ultra_mode=%{BOOL}d siri_enabled=%{BOOL}d", v35, 0x3Cu);
    __swift_destroy_boxed_opaque_existential_1Tm_0(v38);
    MEMORY[0x20F2E9420](v38, -1, -1);
    MEMORY[0x20F2E9420](v35, -1, -1);
  }

  else
  {
  }

  return v30;
}

id VoiceFeedbackAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceFeedbackAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceFeedbackAvailabilityProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

uint64_t TrackRunningTracker.laneNumber.getter()
{
  v1 = OBJC_IVAR___WOTrackRunningTracker_laneNumber;
  swift_beginAccess();
  return *(v0 + v1);
}

void TrackRunningTracker.laneNumber.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOTrackRunningTracker_laneNumber;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t TrackRunningTracker.lapCount.getter()
{
  v1 = OBJC_IVAR___WOTrackRunningTracker_lapCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void TrackRunningTracker.lapCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOTrackRunningTracker_lapCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t (*TrackRunningTracker.workoutAlertDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WOTrackRunningTracker_workoutAlertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return TrackRunningTracker.workoutAlertDelegate.modify;
}

id @objc TrackRunningTracker.workoutAlertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t TrackRunningTracker.workoutAlertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*TrackRunningTracker.eventPersistenceDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WOTrackRunningTracker_eventPersistenceDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return TrackRunningTracker.eventPersistenceDelegate.modify;
}

void TrackRunningTracker.workoutAlertDelegate.modify(void **a1, char a2)
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

id TrackRunningTracker.init(activityType:locationProvider:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___WOTrackRunningTracker_laneNumber] = 1;
  *&v2[OBJC_IVAR___WOTrackRunningTracker_lapCount] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___WOTrackRunningTracker_activityType] = a1;
  v5 = a1;
  *&v2[OBJC_IVAR___WOTrackRunningTracker_trackAlerts] = specialized static TrackAlertsStore.read(for:)(v5);
  v8.receiver = v2;
  v8.super_class = type metadata accessor for TrackRunningTracker();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  specialized LocationProvider.addObserver(_:)(v6, a2);

  return v6;
}

void closure #1 in TrackRunningTracker.didUpdateFromLaneNumber(_:with:reason:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 32);
  v5 = OBJC_IVAR___WOTrackRunningTracker_laneNumber;
  swift_beginAccess();
  *(a1 + v5) = v4;
}

uint64_t TrackRunningTracker.didUpdateFromLapNumber(_:with:)(void *a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(aBlock);

  if (LOBYTE(aBlock[0]) == 1)
  {
    _sSo17OS_dispatch_queueCMaTm_3(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v13 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    v14[2] = v2;
    v19 = v7;
    v15 = v20;
    v14[3] = v21;
    v14[4] = v15;
    aBlock[4] = partial apply for closure #1 in TrackRunningTracker.didUpdateFromLapNumber(_:with:);
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_6;
    v16 = _Block_copy(aBlock);
    v17 = v15;
    v18 = v2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v11, v6, v16);
    _Block_release(v16);

    (*(v22 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v19);
  }

  return result;
}

void closure #1 in TrackRunningTracker.didUpdateFromLapNumber(_:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR___WOTrackRunningTracker_lapCount;
  swift_beginAccess();
  v7 = *(a1 + v6);
  swift_beginAccess();
  v8 = *(a2 + 40);
  if (v7 == v8)
  {
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.trackRunning);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_29;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "[TrackRunningTracker] current lapCount is equal to new lapNumber. Not adding lap event.";
    goto LABEL_28;
  }

  *(a1 + v6) = v8;
  if (!a3)
  {
LABEL_24:
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static WOLog.trackRunning);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_29;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "[TrackRunningTracker] previousLapNumber is nil. Not adding lap event.";
LABEL_28:
    _os_log_impl(&dword_20AEA4000, v10, v11, v13, v12, 2u);
    MEMORY[0x20F2E9420](v12, -1, -1);
    goto LABEL_29;
  }

  v10 = a3;
  if (([v10 integerValue]& 0x8000000000000000) != 0)
  {

    goto LABEL_24;
  }

  v14 = *(a2 + 16);
  if (!v14 || (v15 = [v14 trackRunInfo]) == 0)
  {
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.trackRunning);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "[TrackRunningTracker] LapInfo is nil. Not adding lap event.";
    goto LABEL_21;
  }

  v16 = v15;
  [v15 lapInfo];
  v17 = v40;
  *v47 = *v41;
  *&v47[12] = *&v41[12];
  v18 = v42;
  v19 = v43;
  v50 = v44;
  v51 = v45;
  v46 = v40;
  v48 = v42;
  v49 = v43;

  if (v40 <= 0)
  {
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static WOLog.trackRunning);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = "[TrackRunningTracker] New lap count <= 0. Not adding lap event.";
LABEL_21:
    _os_log_impl(&dword_20AEA4000, v26, v27, v29, v28, 2u);
    MEMORY[0x20F2E9420](v28, -1, -1);
LABEL_22:

LABEL_29:
    return;
  }

  if (v42 >= 0.0)
  {
    TrackRunningTracker.addLapEvent(lapInfo:)(&v46);
    v32 = *(a1 + OBJC_IVAR___WOTrackRunningTracker_trackAlerts);
    swift_beginAccess();
    if (*(v32 + 16) != 1)
    {
      goto LABEL_29;
    }

    v33 = *(a1 + OBJC_IVAR___WOTrackRunningTracker_activityType);
    v34 = type metadata accessor for WorkoutAlertLapChange();
    v35 = objc_allocWithZone(v34);
    *&v35[OBJC_IVAR___WorkoutAlertLapChange_activityType] = v33;
    *&v35[OBJC_IVAR___WorkoutAlertLapChange_lapNumber] = v17;
    *&v35[OBJC_IVAR___WorkoutAlertLapChange_lapDuration] = v18;
    *&v35[OBJC_IVAR___WorkoutAlertLapChange_lapDistance] = round(v19);
    v39.receiver = v35;
    v39.super_class = v34;
    v36 = v33;
    v37 = objc_msgSendSuper2(&v39, sel_init);
    [v37 setType_];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_29;
    }

    [Strong alertSource:a1 didTriggerAlert:v37];

    swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for trackRunning != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.trackRunning);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v18;
      _os_log_impl(&dword_20AEA4000, v21, v22, "[TrackRunningTracker] New lap has a negative lap duration (%f. Not adding lap event.", v23, 0xCu);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    v24 = [objc_allocWithZone(type metadata accessor for AutoBugCaptureReporter()) init];
    specialized AutoBugCaptureReporter.reportSnapshot(type:subtype:context:thresholdValues:)(0x7552206B63617254, 0xED0000676E696E6ELL, 0xD000000000000022, 0x800000020B457690, 0, 0, 0, 0);
  }
}

void closure #1 in TrackRunningTracker.didUpdateFromProximity(_:to:with:)(void *a1, char a2, uint64_t a3)
{
  if (a1)
  {
    v8 = a1;
    if ([v8 integerValue] < 3 && a2 == 3)
    {
      v5 = type metadata accessor for WorkoutAlertTrackStatusChange();
      v9.receiver = objc_allocWithZone(v5);
      v9.super_class = v5;
      v6 = objc_msgSendSuper2(&v9, sel_init);
      [v6 setType_];
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong alertSource:a3 didTriggerAlert:v6];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t TrackRunningTracker.addLapEvent(lapInfo:)(double *a1)
{
  v3 = type metadata accessor for DateInterval();
  v55 = *(v3 - 8);
  v56 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v48 - v13;
  v15 = a1[4];
  Date.init(timeIntervalSinceReferenceDate:)();
  v52 = v14;
  v53 = v7;
  v16 = *(v7 + 16);
  v54 = v6;
  v16(v11, v14, v6);
  DateInterval.init(start:duration:)();
  v17 = round(a1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B4290B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v19;
  v20 = *a1;
  *(inited + 72) = MEMORY[0x277D849A8];
  v49 = v20;
  *(inited + 48) = v20;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v21;
  v22 = OBJC_IVAR___WOTrackRunningTracker_laneNumber;
  swift_beginAccess();
  v51 = v1;
  v48 = v22;
  v23 = *&v1[v22];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 96) = v23;
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v24;
  v25 = objc_opt_self();
  v26 = [v25 secondUnit];
  v27 = objc_opt_self();
  v28 = [v27 quantityWithUnit:v26 doubleValue:v15];

  v29 = _sSo17OS_dispatch_queueCMaTm_3(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  *(inited + 168) = v29;
  *(inited + 144) = v28;
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v30;
  v31 = [v25 meterUnit];
  v32 = v50;
  v33 = [v27 quantityWithUnit:v31 doubleValue:v17];

  *(inited + 216) = v29;
  *(inited + 192) = v33;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v35 = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = [objc_opt_self() workoutEventWithType:3 dateInterval:isa metadata:v35];

  if (one-time initialization token for trackRunning != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static WOLog.trackRunning);
  v38 = v51;
  v39 = v51;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 67109888;
    *(v42 + 4) = v49;
    *(v42 + 8) = 2048;
    *(v42 + 10) = *&v38[v48];

    *(v42 + 18) = 2048;
    *(v42 + 20) = v15;
    *(v42 + 28) = 2048;
    *(v42 + 30) = v17;
    _os_log_impl(&dword_20AEA4000, v40, v41, "[TrackRunningTracker] - completed lap. lapNumber=%d, laneNumber=%ld,\n                                       duration=%f distance=%f", v42, 0x26u);
    MEMORY[0x20F2E9420](v42, -1, -1);
  }

  else
  {

    v40 = v39;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v44 = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_20B425990;
    *(v45 + 32) = v36;
    _sSo17OS_dispatch_queueCMaTm_3(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    v46 = v36;
    v36 = Array._bridgeToObjectiveC()().super.isa;

    [v44 addWorkoutEvents_];

    swift_unknownObjectRelease();
  }

  (*(v55 + 8))(v32, v56);
  return (*(v53 + 8))(v52, v54);
}

id TrackRunningTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrackRunningTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackRunningTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t key path getter for TrackRunningCoordinator.trackModeEnabledLocal : TrackRunningCoordinator@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for TrackRunningCoordinator.trackModeEnabledLocal : TrackRunningCoordinator(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t specialized LocationProvider.addObserver(_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = &protocol witness table for TrackRunningTracker;
  v14[4] = a2;
  aBlock[4] = partial apply for closure #1 in LocationProvider.addObserver(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_31_0;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a2;
  static DispatchQoS.unspecified.getter();
  v19[1] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v8, v15);
  _Block_release(v15);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

uint64_t specialized TrackRunningTracker.didUpdateFromLaneNumber(_:with:reason:)(uint64_t a1)
{
  v17 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(aBlock);

  if (LOBYTE(aBlock[0]) == 1)
  {
    _sSo17OS_dispatch_queueCMaTm_3(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v12 = static OS_dispatch_queue.main.getter();
    v13 = swift_allocObject();
    v14 = v17;
    *(v13 + 16) = v1;
    *(v13 + 24) = v14;
    aBlock[4] = partial apply for closure #1 in TrackRunningTracker.didUpdateFromLaneNumber(_:with:reason:);
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_25;
    v15 = _Block_copy(aBlock);
    v16 = v1;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v10, v5, v15);
    _Block_release(v15);

    (*(v18 + 8))(v5, v2);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

uint64_t specialized TrackRunningTracker.didUpdateFromProximity(_:to:with:)(void *a1, char *a2)
{
  v22 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(aBlock);

  if (LOBYTE(aBlock[0]) == 1)
  {
    _sSo17OS_dispatch_queueCMaTm_3(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v14 = static OS_dispatch_queue.main.getter();
    v15 = swift_allocObject();
    v16 = v22;
    *(v15 + 16) = v22;
    *(v15 + 24) = v12;
    v17 = v23;
    *(v15 + 32) = v23;
    aBlock[4] = partial apply for closure #1 in TrackRunningTracker.didUpdateFromProximity(_:to:with:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_19;
    v18 = _Block_copy(aBlock);
    v19 = v16;
    v20 = v17;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v11, v6, v18);
    _Block_release(v18);

    (*(v24 + 8))(v6, v3);
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

void keypath_get_4Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_5Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t keypath_get_8Tm@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

double TimeProviding.timelineFrequency.getter()
{
  return 1.0;
}

{
  return 1.0;
}

id NLSessionActivity.coreLiveWorkoutConfiguration.getter()
{
  v1 = [v0 configuration];

  return v1;
}

void HeartRateTargetZone.protobuf.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v3 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  UnknownStorage.init()();
  v4 = a1 + v3[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + v3[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v3[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  *a1 = *(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type);
  *(a1 + 8) = 1;
  v7 = v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  swift_beginAccess();
  if ((*(v7 + 16) & 1) == 0)
  {
    v8 = *(v7 + 8);
    *v4 = *v7;
    *(v4 + 8) = 0;
    *v5 = v8;
    *(v5 + 8) = 0;
  }

  v9 = v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  swift_beginAccess();
  if ((*(v9 + 8) & 1) == 0)
  {
    v10 = *v9;
    if (*v9 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v10 <= 0x7FFFFFFF)
    {
      *v6 = v10;
      *(v6 + 4) = 0;
      return;
    }

    __break(1u);
  }
}

unsigned __int8 *Apple_Workout_Core_HeartRateTargetZone.decoded.getter()
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v2 = v0 + *(result + 6);
  if (*(v2 + 8) & 1) != 0 || (v3 = v0 + *(result + 7), (*(v3 + 8)))
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v4 = *v2;
    v5 = *v3;
    if (*v2 > *v3)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
  }

  v7 = (v0 + *(result + 8));
  v8 = *(v7 + 4);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v7;
  }

  v10 = *(v0 + 8);
  v13 = *v0;
  v14 = v10;
  Apple_Workout_Core_HeartRateZoneType.decoded.getter(&v12);
  v11 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  return HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v12, v4, v5, v6, v9, v8, 0);
}

void Apple_Workout_Core_HeartRateZoneType.decoded.getter(_BYTE *a1@<X8>)
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

    LOBYTE(v3) = 2;
  }

  *a1 = v3;
}

Swift::Int DataLinkMirroredError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DataLinkMirroredError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkMirroredError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

double static Double.machTimestamp.getter()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v0 = mach_absolute_time();
  v2[0] = 0;
  mach_timebase_info(v2);
  if (!is_mul_ok(v0, v2[0].numer))
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  if (!v2[0].denom)
  {
    goto LABEL_5;
  }

  return (v0 * v2[0].numer / v2[0].denom) / 1000000000.0;
}

unint64_t lazy protocol witness table accessor for type DataLinkMirroredError and conformance DataLinkMirroredError()
{
  result = lazy protocol witness table cache variable for type DataLinkMirroredError and conformance DataLinkMirroredError;
  if (!lazy protocol witness table cache variable for type DataLinkMirroredError and conformance DataLinkMirroredError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkMirroredError and conformance DataLinkMirroredError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataLinkMirroredError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DataLinkMirroredError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Apple_Workout_Core_HKQuantity.unit.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Apple_Workout_Core_HKQuantity.unit.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Apple_Workout_Core_HKQuantity.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_HKQuantity(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Workout_Core_HKQuantity(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_HKQuantity;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_HKQuantity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_HKQuantity.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_HKQuantity(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_HKQuantity.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  return UnknownStorage.init()();
}

uint64_t static Apple_Workout_Core_HKQuantity._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_HKQuantity._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_HKQuantity.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_HKQuantity.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    v6 = v3[2];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_Core_HKQuantity(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static Apple_Workout_Core_HKQuantity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_HKQuantity.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_HKQuantity@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_HKQuantity@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_HKQuantity@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_HKQuantity._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_HKQuantity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_HKQuantity(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UnknownStorage and conformance UnknownStorage(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RaceInformationPublisher.routePoints.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for RaceInformationPublisher.routePoints : RaceInformationPublisher@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for RaceInformationPublisher.routePoints : RaceInformationPublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RaceInformationPublisher.routePoints.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*RaceInformationPublisher.routePoints.modify(uint64_t *a1))()
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
  return RaceInformationPublisher.routePoints.modify;
}

uint64_t key path setter for RaceInformationPublisher.$routePoints : RaceInformationPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore14RaceChartPointVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore14RaceChartPointVG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMd, &_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t RaceInformationPublisher.$routePoints.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore14RaceChartPointVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore14RaceChartPointVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMd, &_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RaceInformationPublisher.$routePoints.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore14RaceChartPointVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore14RaceChartPointVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__routePoints;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMd, &_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RaceInformationPublisher.$routePoints.modify;
}

uint64_t RaceInformationPublisher.raceFilter.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);
}

uint64_t key path getter for RaceInformationPublisher.raceFilter : RaceInformationPublisher@<X0>(_BYTE *a4@<X8>)
{
  return key path getter for RaceInformationPublisher.raceFilter : RaceInformationPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t key path setter for RaceInformationPublisher.raceFilter : RaceInformationPublisher(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RaceInformationPublisher.raceFilter.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*RaceInformationPublisher.raceFilter.modify(uint64_t *a1))()
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
  return RaceInformationPublisher.raceFilter.modify;
}

uint64_t key path setter for RaceInformationPublisher.$raceFilter : RaceInformationPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t RaceInformationPublisher.$raceFilter.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*RaceInformationPublisher.$raceFilter.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__raceFilter;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RaceInformationPublisher.$raceFilter.modify;
}

double key path getter for RaceInformationPublisher.lastWorkoutDuration : RaceInformationPublisher@<D0>(double *a4@<X8>)
{
  return key path getter for RaceInformationPublisher.lastWorkoutDuration : RaceInformationPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t (*RaceInformationPublisher.lastWorkoutDuration.modify(uint64_t *a1))()
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
  return RaceInformationPublisher.lastWorkoutDuration.modify;
}

uint64_t key path setter for RaceInformationPublisher.$lastWorkoutDuration : RaceInformationPublisher(char *a1, uint64_t *a2)
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

uint64_t RaceInformationPublisher.$lastWorkoutDuration.setter(uint64_t a1)
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

uint64_t (*RaceInformationPublisher.$lastWorkoutDuration.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__lastWorkoutDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RaceInformationPublisher.$lastWorkoutDuration.modify;
}

double RaceInformationPublisher.lastWorkoutDuration.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path setter for RaceInformationPublisher.lastWorkoutDuration : RaceInformationPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RaceInformationPublisher.lastWorkoutDuration.setter(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*RaceInformationPublisher.bestWorkoutDuration.modify(uint64_t *a1))()
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
  return RaceInformationPublisher.bestWorkoutDuration.modify;
}

void RaceInformationPublisher.routePoints.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t RaceInformationPublisher.$routePoints.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for RaceInformationPublisher.$routePoints : RaceInformationPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for RaceInformationPublisher.$bestWorkoutDuration : RaceInformationPublisher(char *a1, uint64_t *a2)
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

uint64_t RaceInformationPublisher.$bestWorkoutDuration.setter(uint64_t a1)
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

uint64_t (*RaceInformationPublisher.$bestWorkoutDuration.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__bestWorkoutDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RaceInformationPublisher.$bestWorkoutDuration.modify;
}

void RaceInformationPublisher.$routePoints.modify(uint64_t a1, char a2)
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

uint64_t RaceInformationPublisher.setRaceInfo(from:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v2);

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  swift_beginAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t RaceInformationPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__routePoints;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMd, &_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__raceFilter;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__lastWorkoutDuration;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__bestWorkoutDuration, v6);
  return v0;
}

uint64_t RaceInformationPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__routePoints;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMd, &_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__raceFilter;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__lastWorkoutDuration;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__bestWorkoutDuration, v6);

  return swift_deallocClassInstance();
}

uint64_t RaceInformationPublisher.init()()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v2);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMd, &_s7Combine9PublishedVySay11WorkoutCore14RaceChartPointVGGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - v13;
  v15 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__routePoints;
  v23 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore14RaceChartPointVGMd, &_sSay11WorkoutCore14RaceChartPointVGMR);
  Published.init(initialValue:)();
  (*(v11 + 32))(v0 + v15, v14, v10);
  v16 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__raceFilter;
  LOBYTE(v23) = 0;
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v16, v9, v5);
  v17 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__lastWorkoutDuration;
  v23 = 0;
  Published.init(initialValue:)();
  v18 = *(v1 + 32);
  v19 = v22;
  v18(v0 + v17, v4, v22);
  v20 = OBJC_IVAR____TtC11WorkoutCore24RaceInformationPublisher__bestWorkoutDuration;
  v23 = 0;
  Published.init(initialValue:)();
  v18(v0 + v20, v4, v19);
  return v0;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance RaceInformationPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t RaceInformationPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  RaceInformationPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_RaceInformationPublisher(v3, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  return v4;
}

uint64_t RaceInformationPublisher.protobuf.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v21);

  v8 = *(v21 + 16);
  if (v8)
  {
    v19[1] = v1;
    v20 = a1;
    v19[0] = v21;
    v9 = (v21 + 40);
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = *(v9 - 1);
      v11 = *v9;
      result = UnknownStorage.init()();
      v14 = v7 + *(v3 + 28);
      *v14 = 0;
      v14[8] = 1;
      v15 = v7 + *(v3 + 32);
      *v15 = 0;
      v15[8] = 1;
      if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v12 <= -1.0)
      {
        goto LABEL_18;
      }

      if (v12 >= 4294967300.0)
      {
        goto LABEL_19;
      }

      *v7 = v12;
      v16 = v11 * 100.0;
      if (COERCE__INT64(fabs(v11 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_20;
      }

      if (v16 <= -2147483650.0)
      {
        goto LABEL_21;
      }

      if (v16 >= 2147483650.0)
      {
        goto LABEL_22;
      }

      v7[1] = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10[2] + 1, 1, v10, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E15_RaceChartPointVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E15_RaceChartPointVGMR, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
      }

      v18 = v10[2];
      v17 = v10[3];
      if (v18 >= v17 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v10, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E15_RaceChartPointVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E15_RaceChartPointVGMR, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
      }

      v10[2] = v18 + 1;
      outlined init with take of Apple_Workout_Core_RaceChartPoint(v7, v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v18);
      v9 += 2;
      if (!--v8)
      {

        a1 = v20;
        *v20 = v10;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {

LABEL_16:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v21);

    a1[1] = (v21 & 1) == 0;
    *(a1 + 16) = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v21);

    a1[3] = v21;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v21);

    a1[4] = v21;
  }

  return result;
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = MEMORY[0x277D84F90];

  v33 = a1;
  static Published.subscript.setter();
  v30 = v1;
  v8 = *(*v1 + 16);
  if (v8)
  {
    v9 = *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v31 = *(v4 + 72);
    v32 = v3;
    do
    {
      outlined init with copy of Apple_Workout_Core_RaceChartPoint(v9, v7);
      v11 = (v7 + *(v3 + 28));
      if (v11[1])
      {
        LODWORD(v10) = *v7;
        v12 = v10;
        v13 = v7[1] / 100.0;
      }

      else
      {
        v12 = *v11;
        v14 = (v7 + *(v3 + 32));
        if (*(v14 + 8))
        {
          v13 = 0.0;
        }

        else
        {
          v13 = *v14;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      v15 = static Published.subscript.modify();
      v17 = v16;
      v18 = *v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18, &_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMR);
        *v17 = v18;
      }

      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18, &_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMR);
        *v17 = v18;
      }

      *(v18 + 2) = v21 + 1;
      v22 = &v18[16 * v21];
      *(v22 + 4) = v12;
      *(v22 + 5) = v13;
      v15(&v36, 0);

      outlined destroy of Apple_Workout_Core_RaceInformationPublisher(v7, type metadata accessor for Apple_Workout_Core_RaceChartPoint);
      v3 = v32;
      v9 += v31;
      --v8;
    }

    while (v8);
  }

  v23 = v30;
  v24 = *(v30 + 16);
  v36 = *(v30 + 8);
  v37 = v24;
  Apple_Workout_Core_RaceFilter.decoded.getter(&v35);
  v25 = v35;
  swift_getKeyPath();
  swift_getKeyPath();
  v34 = v25;

  static Published.subscript.setter();
  v26 = *(v23 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v26;

  static Published.subscript.setter();
  v27 = *(v23 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v27;

  return static Published.subscript.setter();
}

uint64_t RaceInformationPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static RaceInformationPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance RaceInformationPublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  RaceInformationPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_RaceInformationPublisher(v3, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance RaceInformationPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static RaceInformationPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance RaceInformationPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static RaceInformationPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void Apple_Workout_Core_RaceFilter.decoded.getter(BOOL *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8) == 1)
  {
    v4 = v3 == 0;
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.core);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = v3;
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v4 = 1;
  }

  *a1 = v4;
}

uint64_t key path setter for RaceWorkoutConfiguration.raceFilter : RaceWorkoutConfiguration(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher)
  {
    type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher);
  }

  return result;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x277CC9578]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore15ElevationSampleVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore15ElevationSampleVGMR, type metadata accessor for ElevationSample);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E21_DataLinkMessageEntryVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E21_DataLinkMessageEntryVGMR, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E17_CyclingPowerZoneVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E17_CyclingPowerZoneVGMR, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E11_TargetZoneVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E11_TargetZoneVGMR, type metadata accessor for Apple_Workout_Core_TargetZone);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10WorkoutKit10RoutePointVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit10RoutePointVGMR, MEMORY[0x277CE3FE0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E9_LiveZoneVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E9_LiveZoneVGMR, type metadata accessor for Apple_Workout_Core_LiveZone);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_e1_D16ChartDataElementVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_e1_D16ChartDataElementVGMR, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E14_MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E14_MetricPlatterVGMR, type metadata accessor for Apple_Workout_Core_MetricPlatter);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E13_DateIntervalVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E13_DateIntervalVGMR, type metadata accessor for Apple_Workout_Core_DateInterval);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E18_PublisherSequenceVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_E18_PublisherSequenceVGMR, type metadata accessor for Apple_Workout_Core_PublisherSequence);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_e1_D16NotificationUnitVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore06Apple_d1_e1_D16NotificationUnitVGMR, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR, MEMORY[0x277CC8918]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore18ActivityPickerItem_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore18ActivityPickerItem_pGMR, &_s11WorkoutCore18ActivityPickerItem_pMd, &_s11WorkoutCore18ActivityPickerItem_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation12DateIntervalVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12DateIntervalVGMR, MEMORY[0x277CC88A8]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence17WorkoutVoiceAlertVGMd, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence17WorkoutVoiceAlertVGMR, MEMORY[0x277D0A238]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore17TrackInfoObserver_pGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore17TrackInfoObserver_pGMR, &_s11WorkoutCore17TrackInfoObserver_pMd, &_s11WorkoutCore17TrackInfoObserver_pMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyyycGMd, &_ss23_ContiguousArrayStorageCyyycGMR, &_syycMd, &_syycMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore9ChronicleC5Entry33_4187E426563C81360BECB91D6C999F5FLLVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore9ChronicleC5Entry33_4187E426563C81360BECB91D6C999F5FLLVGMR, type metadata accessor for Chronicle.Entry);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCyySo21CLAuthorizationStatusVcGMd, &_ss23_ContiguousArrayStorageCyySo21CLAuthorizationStatusVcGMR, &_syycMd, &_syycMR);
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3, char *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo18_HKWorkoutGoalTypeVGMd, &_ss23_ContiguousArrayStorageCySo18_HKWorkoutGoalTypeVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore19WindowedAccumulatorC6Sample33_F335A3D6900FCBD2DC08458B4BDD2C84LLVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore19WindowedAccumulatorC6Sample33_F335A3D6900FCBD2DC08458B4BDD2C84LLVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMd, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySd_SdtGMd, &_ss23_ContiguousArrayStorageCySd_SdtGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySuGMd, &_ss23_ContiguousArrayStorageCySuGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore21WindowedDiscreteEntryVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore21WindowedDiscreteEntryVGMR);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCySo19FIWorkoutMetricTypeVGMd, &_ss23_ContiguousArrayStorageCySo19FIWorkoutMetricTypeVGMR);
}

uint64_t outlined init with take of Apple_Workout_Core_RaceChartPoint(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v17 = _swift_stdlib_malloc_size_0(v16);
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

uint64_t specialized static RaceInformationPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RaceInformationPublisher(0);
  v11 = swift_allocObject();
  RaceInformationPublisher.init()();
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_RaceInformationPublisher.decodeInto(publisher:)(v11);
    outlined destroy of Apple_Workout_Core_RaceInformationPublisher(v10, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  }

  return v11;
}

uint64_t type metadata accessor for RaceInformationPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for RaceInformationPublisher;
  if (!type metadata singleton initialization cache for RaceInformationPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RaceInformationPublisher(uint64_t a1)
{
  type metadata accessor for Published<[RaceChartPoint]>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<RaceFilter>(319, &lazy cache variable for type metadata for Published<RaceFilter>, &type metadata for RaceFilter);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<RaceFilter>(319, &lazy cache variable for type metadata for Published<Double>, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<[RaceChartPoint]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[RaceChartPoint]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore14RaceChartPointVGMd, &_sSay11WorkoutCore14RaceChartPointVGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[RaceChartPoint]>);
    }
  }
}

void type metadata accessor for Published<RaceFilter>(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t outlined init with copy of Apple_Workout_Core_RaceChartPoint(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_RaceInformationPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void WaterTemperatureAccumulator.currentWaterTemperatureQuantity.didset()
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
    v7 = swift_slowAlloc();
    v23[0] = v7;
    *v5 = 136315906;
    v8 = WaterTemperatureAccumulator.logPrefix.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v23);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    v11 = [v2 builder];
    v12 = specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v11);

    if (v12 == 46 && (v13 = *&v2[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity]) != 0)
    {
      *(v5 + 14) = v13;
      v14 = v13;
    }

    else
    {
      v13 = 0;
      *(v5 + 14) = 0;
    }

    *v6 = v13;
    *(v5 + 22) = 1024;
    v15 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
    swift_beginAccess();
    LODWORD(v15) = v2[v15];

    *(v5 + 24) = v15;
    *(v5 + 28) = 2080;
    if (v2[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureSource])
    {
      v16 = 0xD000000000000018;
    }

    else
    {
      v16 = 0x7369746174534B48;
    }

    if (v2[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureSource])
    {
      v17 = 0x800000020B454080;
    }

    else
    {
      v17 = 0xEC00000073636974;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v23);

    *(v5 + 30) = v18;
    _os_log_impl(&dword_20AEA4000, v3, v4, "%s didSet currentWaterTemperature: %@, was stale: %{BOOL}d, source: %s", v5, 0x26u);
    _sSo8NSObjectCSgWOhTm_0(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v6, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  else
  {
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in WaterTemperatureAccumulator.currentWaterTemperatureQuantity.didset, v19);

  v20 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
  swift_beginAccess();
  v2[v20] = 0;
  v21 = [v2 updateHandler];
  if (v21)
  {
    v22 = v21;
    (*(v21 + 2))();
    _Block_release(v22);
  }
}

void closure #1 in WaterTemperatureAccumulator.currentWaterTemperatureQuantity.didset(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
    v4 = Strong;
    swift_beginAccess();
    v4[v3] = 1;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 updateHandler];

    if (v7)
    {
      v7[2](v7);
      _Block_release(v7);
    }
  }
}

uint64_t WaterTemperatureAccumulator.currentWaterTemperatureStale.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
  swift_beginAccess();
  return *(v0 + v1);
}

void WaterTemperatureAccumulator.currentWaterTemperatureStale.setter(char a1)
{
  v3 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id @objc WaterTemperatureAccumulator.currentWaterTemperature.getter(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = [v4 builder];
  v6 = specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v5);

  if (v6 == 46)
  {
    v7 = *&v4[*a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void *WaterTemperatureAccumulator.currentWaterTemperature.getter(void *a1)
{
  v3 = [v1 builder];
  v4 = specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v3);

  if (v4 != 46)
  {
    return 0;
  }

  v5 = *&v1[*a1];
  v6 = v5;
  return v5;
}

void key path setter for WaterTemperatureAccumulator.invalidationTimer : WaterTemperatureAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *WaterTemperatureAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void WaterTemperatureAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0x7369746174534B48;
  }

  if (v2)
  {
    v4 = 0xEC00000073636974;
  }

  else
  {
    v4 = 0x800000020B454080;
  }

  if (*a2)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v5 = 0x7369746174534B48;
  }

  if (*a2)
  {
    v6 = 0x800000020B454080;
  }

  else
  {
    v6 = 0xEC00000073636974;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WaterTemperatureAccumulator.CurrentWaterTemperatureSource.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource(unint64_t *a1@<X8>)
{
  v2 = 0x800000020B454080;
  v3 = 0x7369746174534B48;
  if (*v1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xEC00000073636974;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x7369746174534B48;
  }
}

uint64_t WaterTemperatureAccumulator.logPrefix.getter()
{
  v1 = (v0 + OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    _StringGuts.grow(_:)(32);
    MEMORY[0x20F2E6D80](0xD00000000000001DLL, 0x800000020B4579B0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](93, 0xE100000000000000);
    v2 = 0;
    *v1 = 0;
    v1[1] = 0xE000000000000000;
  }

  return v2;
}

id WaterTemperatureAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id WaterTemperatureAccumulator.init(builder:)(void *a1)
{
  *&v1[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity] = 0;
  v1[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureStale] = 1;
  *&v1[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_averageWaterTemperatureQuantity] = 0;
  v3 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_degreeCelsius;
  *&v1[v3] = [objc_opt_self() degreeCelsiusUnit];
  *&v1[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_invalidationTimer] = 0;
  *&v1[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_waterSubmersionManager] = 0;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = MEMORY[0x20F2E6C00](0xD000000000000029, 0x800000020B457820);
  v6 = [v4 BOOLForKey_];

  v1[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureSource] = v6 ^ 1;
  v7 = &v1[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator____lazy_storage___logPrefix];
  v8 = type metadata accessor for WaterTemperatureAccumulator();
  *v7 = 0;
  v7[1] = 0;
  v29.receiver = v1;
  v29.super_class = v8;
  v9 = objc_msgSendSuper2(&v29, sel_initWithBuilder_, a1);
  v10 = one-time initialization token for app;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.app);
  v13 = v11;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v14, v15))
  {
    goto LABEL_6;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v28 = v17;
  *v16 = 136315394;
  v18 = WaterTemperatureAccumulator.logPrefix.getter();
  v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v28);

  *(v16 + 4) = v20;
  *(v16 + 12) = 2080;
  v21 = [v13 builder];
  specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v21);

  result = _HKWorkoutActivityNameForActivityType();
  if (result)
  {
    v23 = result;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v28);

    *(v16 + 14) = v27;
    _os_log_impl(&dword_20AEA4000, v14, v15, "%s init, currentWorkoutActivity: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
LABEL_6:

    return v13;
  }

  __break(1u);
  return result;
}

id WaterTemperatureAccumulator.__deallocating_deinit()
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

  if (!os_log_type_enabled(v3, v4))
  {
    goto LABEL_6;
  }

  v5 = swift_slowAlloc();
  v6 = swift_slowAlloc();
  v18 = v6;
  *v5 = 136315394;
  v7 = WaterTemperatureAccumulator.logPrefix.getter();
  v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v18);

  *(v5 + 4) = v9;
  *(v5 + 12) = 2080;
  v10 = [v2 builder];
  specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v10);

  result = _HKWorkoutActivityNameForActivityType();
  if (result)
  {
    v12 = result;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v18);

    *(v5 + 14) = v16;
    _os_log_impl(&dword_20AEA4000, v3, v4, "%s deinit, currentWorkoutActivity: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
LABEL_6:

    v17 = type metadata accessor for WaterTemperatureAccumulator();
    v19.receiver = v2;
    v19.super_class = v17;
    return objc_msgSendSuper2(&v19, sel_dealloc);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall WaterTemperatureAccumulator.update(with:duration:)(HKStatistics with, Swift::Double duration)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v176 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v9 = type metadata accessor for Logger();
    v10 = __swift_project_value_buffer(v9, static WOLog.app);
    v11 = v2;
    v12 = with.super.isa;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v174 = v6;
      v175 = v5;
      v177 = v10;
      v15 = v12;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v181 = v18;
      *v16 = 136315650;
      v19 = WaterTemperatureAccumulator.logPrefix.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v181);

      *(v16 + 4) = v21;
      *(v16 + 12) = 2112;
      *(v16 + 14) = v15;
      *v17 = v15;
      *(v16 + 22) = 2080;
      v22 = v15;
      v23 = v15;
      v24 = v11;
      v25 = [v11 builder];
      specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v25);

      v26 = _HKWorkoutActivityNameForActivityType();
      if (!v26)
      {
        __break(1u);
        goto LABEL_67;
      }

      v27 = v26;
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v181);

      *(v16 + 24) = v31;
      _os_log_impl(&dword_20AEA4000, v13, v14, "%s update with statistics: %@, currentWorkoutActivity: %s", v16, 0x20u);
      _sSo8NSObjectCSgWOhTm_0(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);

      v11 = v24;
      v12 = v22;
      v10 = v177;
      v6 = v174;
      v5 = v175;
    }

    else
    {
    }

    if (![v11 isAccumulating])
    {
      v180 = v11;
      v46 = v12;
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v181 = v51;
        *v49 = 136315650;
        v52 = WaterTemperatureAccumulator.logPrefix.getter();
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v181);

        *(v49 + 4) = v54;
        *(v49 + 12) = 2112;
        *(v49 + 14) = v46;
        *v50 = v46;
        *(v49 + 22) = 1024;
        v55 = v46;
        v56 = [v180 isAccumulating];

        *(v49 + 24) = v56;
        _os_log_impl(&dword_20AEA4000, v47, v48, "%s skip update with statistics: %@, not accumulating (isAccumulating: %{BOOL}d)", v49, 0x1Cu);
        _sSo8NSObjectCSgWOhTm_0(v50, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        v57 = v50;
        goto LABEL_21;
      }

      goto LABEL_27;
    }

    v32 = [v11 builder];
    v33 = specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v32);

    if (v33 != 46)
    {
      v58 = v11;
      v59 = v12;
      v180 = Logger.logObject.getter();
      v60 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v180, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v181 = v63;
        *v61 = 136315650;
        v64 = WaterTemperatureAccumulator.logPrefix.getter();
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v181);

        *(v61 + 4) = v66;
        *(v61 + 12) = 2112;
        *(v61 + 14) = v59;
        *v62 = v59;
        *(v61 + 22) = 2080;
        v67 = v59;
        v68 = [v58 builder];
        specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v68);

        v69 = _HKWorkoutActivityNameForActivityType();
        if (v69)
        {
          v70 = v69;
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v181);

          *(v61 + 24) = v74;
          _os_log_impl(&dword_20AEA4000, v180, v60, "%s skip update with statistics: %@, currentWorkoutActivity does not support Water Temperature: %s", v61, 0x20u);
          _sSo8NSObjectCSgWOhTm_0(v62, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x20F2E9420](v62, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v63, -1, -1);
          MEMORY[0x20F2E9420](v61, -1, -1);

          return;
        }

LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

LABEL_27:
      v75 = v180;

      return;
    }

    v34 = [(objc_class *)v12 sources];
    v173 = v11;
    if (!v34)
    {
      v36 = 0;
      v37 = 0;
      goto LABEL_37;
    }

    with.super.isa = v34;
    type metadata accessor for HKSource(0, &lazy cache variable for type metadata for HKSource, 0x277CCDA00);
    v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v2 >> 62)
    {
      break;
    }

    v35 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_35;
    }

LABEL_11:
    v174 = v6;
    v175 = v5;
    v172 = v12;
    v177 = v10;
    v178 = v2;
    v6 = 0;
    v36 = 0;
    v179 = (v2 & 0xFFFFFFFFFFFFFF8);
    v180 = (v2 & 0xC000000000000001);
    v37 = 0xE000000000000000;
    while (1)
    {
      if (v180)
      {
        v38 = MEMORY[0x20F2E7A20](v6, v2);
      }

      else
      {
        if (v6 >= v179[2])
        {
          goto LABEL_32;
        }

        v38 = *(v2 + 8 * v6 + 32);
      }

      with.super.isa = v38;
      v39 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v181 = v36;
      v182 = v37;

      MEMORY[0x20F2E6D80](32, 0xE100000000000000);
      v40 = v35;
      v42 = v181;
      v41 = v182;
      v43 = [(objc_class *)with.super.isa name];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v45 = v44;

      v181 = v42;
      v182 = v41;
      v35 = v40;

      MEMORY[0x20F2E6D80](v5, v45);
      v2 = v178;

      v36 = v181;
      v37 = v182;
      ++v6;
      if (v39 == v40)
      {
        v10 = v177;
        v12 = v172;
        v6 = v174;
        v5 = v175;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v35 = __CocoaSet.count.getter();
  if (v35)
  {
    goto LABEL_11;
  }

LABEL_35:
  v36 = 0;
  v37 = 0xE000000000000000;
LABEL_36:

LABEL_37:
  static Date.timeIntervalSinceReferenceDate.getter();
  v77 = v76;
  v78 = [(objc_class *)v12 endDate];
  v79 = v176;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v81 = v80;
  (*(v6 + 8))(v79, v5);
  v82 = [(objc_class *)v12 mostRecentQuantity];
  if (!v82)
  {

    v99 = v173;
    v100 = v12;
    v47 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v47, v101))
    {
      goto LABEL_22;
    }

    v49 = swift_slowAlloc();
    v102 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v181 = v51;
    *v49 = 136315394;
    v103 = WaterTemperatureAccumulator.logPrefix.getter();
    v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v103, v104, &v181);

    *(v49 + 4) = v105;
    *(v49 + 12) = 2112;
    *(v49 + 14) = v100;
    *v102 = v100;
    v106 = v100;
    _os_log_impl(&dword_20AEA4000, v47, v101, "%s cannot get mostRecentQuantity from statistics: %@", v49, 0x16u);
    _sSo8NSObjectCSgWOhTm_0(v102, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    v57 = v102;
LABEL_21:
    MEMORY[0x20F2E9420](v57, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x20F2E9420](v51, -1, -1);
    MEMORY[0x20F2E9420](v49, -1, -1);
LABEL_22:

    return;
  }

  v83 = v77 - v81;
  v84 = v173;
  v85 = v173[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureSource];
  v179 = v82;
  v180 = v37;
  if ((v85 & 1) == 0)
  {
    v107 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity;
    v108 = *&v173[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity];
    *&v173[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity] = v82;
    v109 = v82;

    WaterTemperatureAccumulator.currentWaterTemperatureQuantity.didset();

    v110 = v84;
    v87 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v87, v111))
    {
      v172 = v12;
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v183 = v178;
      *v112 = 136316674;
      v114 = WaterTemperatureAccumulator.logPrefix.getter();
      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v115, &v183);

      *(v112 + 4) = v116;
      *(v112 + 12) = 2112;
      v117 = [v110 builder];
      v118 = specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v117);

      v177 = v10;
      if (v118 == 46 && (v119 = *&v173[v107]) != 0)
      {
        *(v112 + 14) = v119;
        v120 = v119;
      }

      else
      {
        v119 = 0;
        *(v112 + 14) = 0;
      }

      *v113 = v119;
      *(v112 + 22) = 2048;
      *(v112 + 24) = duration;
      *(v112 + 32) = 2048;
      *(v112 + 34) = v83;
      *(v112 + 42) = 2080;
      v181 = v36;
      v182 = v180;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v121 = Optional.description.getter();
      v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v121, v122, &v183);

      *(v112 + 44) = v123;
      *(v112 + 52) = 2080;
      v124 = [v110 builder];
      specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v124);

      v125 = _HKWorkoutActivityNameForActivityType();
      if (v125)
      {
        v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v128 = v127;

        v129 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, &v183);

        *(v112 + 54) = v129;
        *(v112 + 62) = 2080;
        *(v112 + 64) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7369746174534B48, 0xEC00000073636974, &v183);
        _os_log_impl(&dword_20AEA4000, v87, v111, "%s received current Water Temperature: %@, duration: %f, WaterTemperature-delay: %f s, sources: %s, currentWorkoutActivity: %s, from: %s", v112, 0x48u);
        _sSo8NSObjectCSgWOhTm_0(v113, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v113, -1, -1);
        v130 = v178;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v130, -1, -1);
        MEMORY[0x20F2E9420](v112, -1, -1);

        goto LABEL_56;
      }

      goto LABEL_69;
    }

LABEL_50:
    goto LABEL_57;
  }

  v86 = v173;
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v87, v88))
  {
    goto LABEL_50;
  }

  v172 = v12;
  v89 = swift_slowAlloc();
  v90 = swift_slowAlloc();
  v91 = swift_slowAlloc();
  v181 = v91;
  *v89 = 136315906;
  v92 = WaterTemperatureAccumulator.logPrefix.getter();
  v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v181);

  *(v89 + 4) = v94;
  *(v89 + 12) = 2112;
  v95 = [v86 builder];
  v96 = specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v95);

  if (v96 == 46 && (v97 = *&v86[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity]) != 0)
  {
    *(v89 + 14) = v97;
    v98 = v97;
  }

  else
  {
    v97 = 0;
    *(v89 + 14) = 0;
  }

  *v90 = v97;
  *(v89 + 22) = 2080;
  *(v89 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7369746174534B48, 0xEC00000073636974, &v181);
  *(v89 + 32) = 2080;
  *(v89 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000020B454080, &v181);
  _os_log_impl(&dword_20AEA4000, v87, v88, "%s skip updating received current Water Temperature: %@ from: %s, updating from this source: %s", v89, 0x2Au);
  _sSo8NSObjectCSgWOhTm_0(v90, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x20F2E9420](v90, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x20F2E9420](v91, -1, -1);
  MEMORY[0x20F2E9420](v89, -1, -1);

LABEL_56:
  v12 = v172;
LABEL_57:
  v131 = [(objc_class *)v12 averageQuantity];
  v132 = v180;
  if (v131)
  {
    v133 = v131;
    v134 = v173;
    v135 = *&v173[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_averageWaterTemperatureQuantity];
    *&v173[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_averageWaterTemperatureQuantity] = v131;
    v136 = v131;

    v137 = v136;
    v138 = v134;
    v139 = Logger.logObject.getter();
    v140 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v139, v140))
    {
      LODWORD(v176) = v140;
      v141 = v132;
      v142 = swift_slowAlloc();
      v143 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v183 = v178;
      *v142 = 136316418;
      v144 = WaterTemperatureAccumulator.logPrefix.getter();
      v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, &v183);

      *(v142 + 4) = v146;
      *(v142 + 12) = 2112;
      *(v142 + 14) = v137;
      v177 = v143;
      *v143 = v133;
      *(v142 + 22) = 2048;
      *(v142 + 24) = duration;
      *(v142 + 32) = 2048;
      *(v142 + 34) = v83;
      *(v142 + 42) = 2080;
      v181 = v36;
      v182 = v141;
      v147 = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v148 = Optional.description.getter();
      v150 = v149;

      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, &v183);

      *(v142 + 44) = v151;
      *(v142 + 52) = 2080;
      v152 = [v138 builder];
      specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v152);

      v153 = _HKWorkoutActivityNameForActivityType();
      if (v153)
      {
        v154 = v153;
        v155 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v157 = v156;

        v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v157, &v183);

        *(v142 + 54) = v158;
        _os_log_impl(&dword_20AEA4000, v139, v176, "%s received average Water Temperature: %@, duration: %f, WaterTemperature-delay: %f s, sources: %s, currentWorkoutActivity: %s", v142, 0x3Eu);
        v159 = v177;
        _sSo8NSObjectCSgWOhTm_0(v177, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v159, -1, -1);
        v160 = v178;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v160, -1, -1);
        MEMORY[0x20F2E9420](v142, -1, -1);
        goto LABEL_65;
      }

LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
    }

    else
    {

LABEL_65:

      [v138 update];
    }
  }

  else
  {

    v161 = v173;
    v162 = v12;
    v163 = Logger.logObject.getter();
    v164 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v181 = v167;
      *v165 = 136315394;
      v168 = WaterTemperatureAccumulator.logPrefix.getter();
      v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v169, &v181);

      *(v165 + 4) = v170;
      *(v165 + 12) = 2112;
      *(v165 + 14) = v162;
      *v166 = v162;
      v171 = v162;
      _os_log_impl(&dword_20AEA4000, v163, v164, "%s cannot get mostRecentQuantity from statistics: %@", v165, 0x16u);
      _sSo8NSObjectCSgWOhTm_0(v166, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v166, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v167);
      MEMORY[0x20F2E9420](v167, -1, -1);
      MEMORY[0x20F2E9420](v165, -1, -1);
    }
  }
}

Swift::Void __swiftcall WaterTemperatureAccumulator.accumulatorDidStop()()
{
  v1 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_waterSubmersionManager;
  v2 = *&v0[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_waterSubmersionManager];
  if (v2)
  {
    [v2 setDelegate_];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.app);
  v5 = v0;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v7 = 136316162;
    v10 = WaterTemperatureAccumulator.logPrefix.getter();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v28);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    if (v5[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureSource])
    {
      v13 = 0xD000000000000018;
    }

    else
    {
      v13 = 0x7369746174534B48;
    }

    if (v5[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureSource])
    {
      v14 = 0x800000020B454080;
    }

    else
    {
      v14 = 0xEC00000073636974;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v28);

    *(v7 + 14) = v15;
    *(v7 + 22) = 2112;
    v16 = *&v5[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity];
    *(v7 + 24) = v16;
    *v8 = v16;
    *(v7 + 32) = 2112;
    v17 = *&v5[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_averageWaterTemperatureQuantity];
    *(v7 + 34) = v17;
    v8[1] = v17;
    *(v7 + 42) = 2080;
    v18 = v16;
    v19 = v17;
    v20 = [v5 builder];
    specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v20);

    v21 = _HKWorkoutActivityNameForActivityType();
    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v28);

    *(v7 + 44) = v26;
    _os_log_impl(&dword_20AEA4000, oslog, v6, "%s accumulatorDidStop, current water temperature source: %s, final Water Temperature (current: %@, average: %@), currentWorkoutActivity: %s", v7, 0x34u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance WaterTemperatureAccumulator()
{
  v1 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance WaterTemperatureAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall WaterTemperatureAccumulator.manager(_:didUpdate:)(CMWaterSubmersionManager _, CMWaterSubmersionEvent didUpdate)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.app);
  v6 = didUpdate.super.isa;
  v7 = v2;
  v8 = _.super.isa;
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v10 = 136315906;
    v13 = WaterTemperatureAccumulator.logPrefix.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v22);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v8;
    *(v10 + 22) = 2112;
    *(v10 + 24) = v6;
    *v11 = v8;
    v11[1] = v6;
    *(v10 + 32) = 2080;
    v16 = v6;
    v17 = v8;
    [(objc_class *)v16 state];
    type metadata accessor for CMWaterSubmersionState(0);
    v18 = String.init<A>(reflecting:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

    *(v10 + 34) = v20;
    _os_log_impl(&dword_20AEA4000, oslog, v9, "%s CMWaterSubmersionManager: %@, didUpdate CMWaterSubmersionEvent: %@, CMWaterSubmersionState: %s", v10, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall WaterTemperatureAccumulator.manager(_:didUpdate:)(CMWaterSubmersionManager _, CMWaterTemperature didUpdate)
{
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v5 = *(v89 - 8);
  v7 = MEMORY[0x28223BE20](v89, v6);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v84 - v11);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static WOLog.app);
  v15 = v2;
  v16 = _.super.isa;
  v17 = didUpdate.super.isa;
  v90 = v14;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v91 = v88;
    *v20 = 136315650;
    v87 = v18;
    v22 = WaterTemperatureAccumulator.logPrefix.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v91);
    LODWORD(v86) = v19;
    v25 = v9;
    v26 = v17;
    v27 = v15;
    v28 = v12;
    v29 = v5;
    v30 = v24;

    *(v20 + 4) = v30;
    v5 = v29;
    v12 = v28;
    v15 = v27;
    v17 = v26;
    v9 = v25;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v16;
    *(v20 + 22) = 2112;
    *(v20 + 24) = v17;
    *v21 = v16;
    v21[1] = v17;
    v31 = v16;
    v32 = v17;
    v18 = v87;
    _os_log_impl(&dword_20AEA4000, v87, v86, "%s CMWaterSubmersionManager: %@, didUpdate CMWaterTemperature: %@", v20, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v21, -1, -1);
    v33 = v88;
    __swift_destroy_boxed_opaque_existential_0(v88);
    MEMORY[0x20F2E9420](v33, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  if (v15[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureSource] == 1)
  {
    v34 = [objc_opt_self() degreeCelsiusUnit];
    v35 = v17;
    v36 = [(objc_class *)v17 temperature];
    v87 = type metadata accessor for HKSource(0, &lazy cache variable for type metadata for NSUnitTemperature, 0x277CCAE48);
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = [objc_opt_self() celsius];
    v38 = v89;
    Measurement<>.converted(to:)();

    v39 = *(v5 + 8);
    v39(v9, v38);
    Measurement.value.getter();
    v41 = v40;
    v88 = (v5 + 8);
    v39(v12, v38);
    v42 = [objc_opt_self() quantityWithUnit:v34 doubleValue:v41];

    v43 = OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity;
    v44 = *&v15[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity];
    *&v15[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity] = v42;
    v45 = v42;

    WaterTemperatureAccumulator.currentWaterTemperatureQuantity.didset();
    v46 = v15;
    v47 = v35;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v48, v49))
    {

LABEL_21:
      [v46 update];
      return;
    }

    v90 = v12;
    v50 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v91 = v85;
    *v50 = 136316162;
    v51 = WaterTemperatureAccumulator.logPrefix.getter();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v91);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2112;
    v54 = [v46 builder];
    v55 = specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v54);

    if (v55 == 46 && (v56 = *&v15[v43]) != 0)
    {
      *(v50 + 14) = v56;
      v57 = v56;
    }

    else
    {
      v56 = 0;
      *(v50 + 14) = 0;
    }

    v71 = v86;
    *v86 = v56;
    *(v50 + 22) = 2048;
    v72 = [(objc_class *)v47 temperatureUncertainty];
    v73 = v90;
    static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

    v74 = v89;
    Measurement.value.getter();
    v76 = v75;
    v39(v73, v74);
    *(v50 + 24) = v76;
    *(v50 + 32) = 2080;
    v77 = [v46 builder];
    specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v77);

    v78 = _HKWorkoutActivityNameForActivityType();
    if (v78)
    {
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v91);

      *(v50 + 34) = v82;
      *(v50 + 42) = 2080;
      *(v50 + 44) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000020B454080, &v91);
      _os_log_impl(&dword_20AEA4000, v48, v49, "%s received current Water Temperature: %@, uncertainty: %f, currentWorkoutActivity: %s, from: %s", v50, 0x34u);
      _sSo8NSObjectCSgWOhTm_0(v71, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v71, -1, -1);
      v83 = v85;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v83, -1, -1);
      MEMORY[0x20F2E9420](v50, -1, -1);
      goto LABEL_21;
    }

    __break(1u);
  }

  else
  {
    v58 = v15;
    v90 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v91 = v62;
      *v60 = 136315906;
      v63 = WaterTemperatureAccumulator.logPrefix.getter();
      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v91);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2112;
      v66 = [v58 builder];
      v67 = specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v66);

      if (v67 == 46 && (v68 = *&v58[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity]) != 0)
      {
        *(v60 + 14) = v68;
        v69 = v68;
      }

      else
      {
        v68 = 0;
        *(v60 + 14) = 0;
      }

      *v61 = v68;
      *(v60 + 22) = 2080;
      *(v60 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000020B454080, &v91);
      *(v60 + 32) = 2080;
      *(v60 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7369746174534B48, 0xEC00000073636974, &v91);
      _os_log_impl(&dword_20AEA4000, v90, v59, "%s skip updating received current Water Temperature: %@ from: %s, updating from this source: %s", v60, 0x2Au);
      _sSo8NSObjectCSgWOhTm_0(v61, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v61, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v62, -1, -1);
      MEMORY[0x20F2E9420](v60, -1, -1);
    }

    else
    {
      v70 = v90;
    }
  }
}

void WaterTemperatureAccumulator.manager(_:errorOccurred:)(void *a1, void *a2)
{
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.app);
  v6 = v2;
  v7 = a1;
  v8 = a2;
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315650;
    v13 = WaterTemperatureAccumulator.logPrefix.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    *(v10 + 22) = 2080;
    swift_getErrorValue();
    v16 = v7;
    v17 = Error.localizedDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_20AEA4000, oslog, v9, "%s CMWaterSubmersionManager: %@, errorOccurred: %s", v10, 0x20u);
    _sSo8NSObjectCSgWOhTm_0(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  else
  {
  }
}

uint64_t CMWaterSubmersionState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 1:
      return 0x656D627553746F6ELL;
    case 2:
      return 0x656772656D627573;
  }

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CMWaterSubmersionState()
{
  v1 = *v0;
  if (!*v0)
  {
    return 0x6E776F6E6B6E75;
  }

  if (v1 == 1)
  {
    return 0x656D627553746F6ELL;
  }

  if (v1 == 2)
  {
    return 0x656772656D627573;
  }

  return dispatch thunk of CustomStringConvertible.description.getter();
}

id specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(void *a1)
{
  v2 = [a1 workoutConfiguration];
  v3 = [v2 activityType];

  if (v3 == 82 && (v4 = [a1 currentWorkoutActivity]) != 0)
  {
    v5 = v4;
    v6 = [v4 workoutConfiguration];
  }

  else
  {
    v6 = [a1 workoutConfiguration];
  }

  v7 = [v6 activityType];

  return v7;
}

void specialized WaterTemperatureAccumulator.accumulatorDidStart(withStart:handler:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v49[-v9];
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.app);
  outlined init with copy of Date?(a1, v10);
  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v13, v14))
  {

    _sSo8NSObjectCSgWOhTm_0(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    goto LABEL_16;
  }

  v15 = swift_slowAlloc();
  v52 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v53 = v16;
  *v15 = 136316418;
  v17 = WaterTemperatureAccumulator.logPrefix.getter();
  v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v53);

  *(v15 + 4) = v19;
  *(v15 + 12) = 2080;
  outlined init with copy of Date?(v10, v7);
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v7, 1, v20);

  if (v22 == 1)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v50 = v14;
  v51 = v16;
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v23 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v25 = [v23 stringFromDate_];

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  _sSo8NSObjectCSgWOhTm_0(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v21 + 8))(v7, v20);
  v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v53);

  *(v15 + 14) = v29;
  *(v15 + 22) = 2080;
  if (v12[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureSource])
  {
    v30 = 0xD000000000000018;
  }

  else
  {
    v30 = 0x7369746174534B48;
  }

  if (v12[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureSource])
  {
    v31 = 0x800000020B454080;
  }

  else
  {
    v31 = 0xEC00000073636974;
  }

  v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v53);

  *(v15 + 24) = v32;
  *(v15 + 32) = 2112;
  v33 = *&v12[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_currentWaterTemperatureQuantity];
  *(v15 + 34) = v33;
  v34 = v52;
  *v52 = v33;
  *(v15 + 42) = 2112;
  v35 = *&v12[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_averageWaterTemperatureQuantity];
  *(v15 + 44) = v35;
  v34[1] = v35;
  *(v15 + 52) = 2080;
  v36 = v33;
  v37 = v35;
  v38 = [v12 builder];
  specialized static WaterTemperatureAccumulator.currentWorkoutActivity(builder:)(v38);

  v39 = _HKWorkoutActivityNameForActivityType();
  if (!v39)
  {
    goto LABEL_20;
  }

  v40 = v39;
  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v53);

  *(v15 + 54) = v44;
  _os_log_impl(&dword_20AEA4000, v13, v50, "%s accumulatorDidStart with startDate: %s, current water temperature source: %s, reset Water Temperature (current: %@, average: %@), currentWorkoutActivity: %s", v15, 0x3Eu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  swift_arrayDestroy();
  MEMORY[0x20F2E9420](v34, -1, -1);
  v45 = v51;
  swift_arrayDestroy();
  MEMORY[0x20F2E9420](v45, -1, -1);
  MEMORY[0x20F2E9420](v15, -1, -1);

LABEL_16:
  v46 = [objc_allocWithZone(MEMORY[0x277CC1D88]) init];
  v47 = *&v12[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_waterSubmersionManager];
  *&v12[OBJC_IVAR___NLSessionActivityWaterTemperatureAccumulator_waterSubmersionManager] = v46;
  v48 = v46;

  if (v48)
  {
    [v48 setDelegate_];
  }

  [v12 update];
}

uint64_t type metadata accessor for HKSource(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t getEnumTagSinglePayload for WaterTemperatureAccumulator.CurrentWaterTemperatureSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WaterTemperatureAccumulator.CurrentWaterTemperatureSource(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type WaterTemperatureAccumulator.CurrentWaterTemperatureSource and conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource()
{
  result = lazy protocol witness table cache variable for type WaterTemperatureAccumulator.CurrentWaterTemperatureSource and conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource;
  if (!lazy protocol witness table cache variable for type WaterTemperatureAccumulator.CurrentWaterTemperatureSource and conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WaterTemperatureAccumulator.CurrentWaterTemperatureSource and conformance WaterTemperatureAccumulator.CurrentWaterTemperatureSource);
  }

  return result;
}

void WorkoutStep.protobuf.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v130 = &v118 - v5;
  v129 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v132 = *(v129 - 8);
  v7 = MEMORY[0x28223BE20](v129, v6);
  v119 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v121 = &v118 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v128 = &v118 - v13;
  v127 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v131 = *(v127 - 8);
  v15 = MEMORY[0x28223BE20](v127, v14);
  v126 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v120 = &v118 - v18;
  v19 = type metadata accessor for Apple_Workout_Core_TargetZone(0);
  v136 = *(v19 - 8);
  v137 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v135 = &v118 - v25;
  v125 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v122 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v26);
  v124 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v118 - v30;
  v123 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v32 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v33);
  v35 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v36 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v36) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
  swift_beginAccess();
  v133 = v1;
  v37 = *(v1 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v134 = v36;
  v39 = *(a1 + v36);
  if (v37 > 1)
  {
    v40 = v32;
    if (v37 == 2)
    {
      v41 = v122;
      v42 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
        swift_allocObject();
        v39 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v39);
        *(a1 + v134) = v39;
      }

      v43 = v123;
      swift_beginAccess();
      *(v39 + 16) = 0;
    }

    else
    {
      v41 = v122;
      v42 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
        swift_allocObject();
        v39 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v39);
        *(a1 + v134) = v39;
      }

      v43 = v123;
      swift_beginAccess();
      *(v39 + 16) = 1;
    }
  }

  else
  {
    v40 = v32;
    if (v37)
    {
      v41 = v122;
      v42 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
        swift_allocObject();
        v39 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v39);
        *(a1 + v134) = v39;
      }

      v43 = v123;
      swift_beginAccess();
      *(v39 + 16) = 3;
    }

    else
    {
      v41 = v122;
      v42 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
        swift_allocObject();
        v39 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v39);
        *(a1 + v134) = v39;
      }

      v43 = v123;
      swift_beginAccess();
      *(v39 + 16) = 2;
    }
  }

  *(v39 + 24) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v138);

  v44 = v138;
  NLSessionActivityGoal.protobuf.getter(v35);

  v45 = v134;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(a1 + v45);
  if ((v46 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v47 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v47);
    *(a1 + v45) = v47;
  }

  outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v35, v42, type metadata accessor for Apple_Workout_Core_Goal);
  (*(v40 + 56))(v42, 0, 1, v43);
  v48 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Goal?(v42, v47 + v48, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v49 = v133;
  static Published.subscript.getter(&v138);

  v50 = v139;
  v51 = v134;
  v52 = v124;
  if (v139)
  {
    v53 = v138;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(a1 + v51);
    if ((v54 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v55 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v55);
      *(a1 + v51) = v55;
    }

    v56 = (v55 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
    swift_beginAccess();
    *v56 = v53;
    v56[1] = v50;
  }

  v57 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v58 = *(v49 + v57);
  FIUIWorkoutActivityType.protobuf.getter(v52);

  v59 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(a1 + v51);
  if ((v59 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v60 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v60);
    *(a1 + v51) = v60;
  }

  v61 = v135;
  v62 = v125;
  outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v52, v135, type metadata accessor for Apple_Workout_Core_Activity);
  (*(v41 + 56))(v61, 0, 1, v62);
  v63 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Goal?(v61, v60 + v63, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  swift_endAccess();
  v64 = UUID.uuidString.getter();
  v66 = v65;
  v67 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *(a1 + v51);
  if ((v67 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v68 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v68);
    *(a1 + v51) = v68;
  }

  v69 = (v68 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  *v69 = v64;
  v69[1] = v66;

  v70 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v71 = *(v49 + v70);
  if (v71 >> 62)
  {
    v72 = __CocoaSet.count.getter();
    if (v72)
    {
      goto LABEL_30;
    }

LABEL_42:
    v74 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v72)
  {
    goto LABEL_42;
  }

LABEL_30:
  if (v72 < 1)
  {
    __break(1u);
LABEL_72:
    swift_once();
    goto LABEL_48;
  }

  v125 = a1;
  v135 = v71 & 0xC000000000000001;

  v73 = 0;
  v74 = MEMORY[0x277D84F90];
  do
  {
    if (v135)
    {
      v75 = MEMORY[0x20F2E7A20](v73, v71);
    }

    else
    {
      v75 = *(v71 + 8 * v73 + 32);
    }

    *v22 = 0;
    v22[8] = 1;
    UnknownStorage.init()();
    *v22 = *(v75 + 16);
    v22[8] = 1;
    swift_beginAccess();
    *(v22 + 2) = *(v75 + 24);
    swift_beginAccess();
    *(v22 + 3) = *(v75 + 32);
    swift_beginAccess();
    v22[32] = *(v75 + 40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v74[2] + 1, 1, v74);
    }

    v77 = v74[2];
    v76 = v74[3];
    if (v77 >= v76 >> 1)
    {
      v74 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v74);
    }

    ++v73;

    v74[2] = v77 + 1;
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v22, v74 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v77, type metadata accessor for Apple_Workout_Core_TargetZone);
  }

  while (v72 != v73);

  a1 = v125;
  v49 = v133;
  v51 = v134;
LABEL_43:
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *(a1 + v51);
  if ((v78 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v79 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v79);
    *(a1 + v51) = v79;
  }

  v80 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  *(v79 + v80) = v74;

  v63 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v81 = *(v49 + v63);
  if (v81)
  {
    v82 = *(v49 + v63);
    v64 = v120;
    goto LABEL_49;
  }

  v64 = v120;
  if (one-time initialization token for defaultZone != -1)
  {
    goto LABEL_72;
  }

LABEL_48:
  v82 = static HeartRateTargetZone.defaultZone;
  v81 = 0;
LABEL_49:
  v83 = v81;
  HeartRateTargetZone.protobuf.getter(v64);

  v84 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *(a1 + v51);
  if ((v84 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v85 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v85);
    *(a1 + v51) = v85;
  }

  v86 = v128;
  outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v64, v128, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v87 = *(v131 + 56);
  v131 += 56;
  v87(v86, 0, 1, v127);
  v88 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Goal?(v86, v85 + v88, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  swift_endAccess();
  v89 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v90 = *(v49 + v89);
  if (v90)
  {
    v91 = *(v49 + v89);
    v92 = v121;
  }

  else
  {
    v92 = v121;
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v91 = static PowerZonesAlertTargetZone.defaultZone;
    v90 = 0;
  }

  v93 = v90;
  PowerZonesAlertTargetZone.protobuf.getter(v92);

  v94 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *(a1 + v51);
  if ((v94 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v95 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v95);
    *(a1 + v51) = v95;
  }

  v96 = v130;
  outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v92, v130, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v97 = *(v132 + 56);
  v132 += 56;
  v97(v96, 0, 1, v129);
  v98 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_Goal?(v96, v95 + v98, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  swift_endAccess();
  v99 = v133;
  v100 = *(v133 + v63);
  if (v100)
  {
    v101 = v100;
    HeartRateTargetZone.protobuf.getter(v126);
    v102 = v134;
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v103 = *(a1 + v102);
    }

    else
    {
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();

      v103 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v104);

      *(a1 + v102) = v103;
    }

    v105 = v128;
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v126, v128, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    v87(v105, 0, 1, v127);
    v106 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Goal?(v105, v103 + v106, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    swift_endAccess();
  }

  v107 = *(v99 + v89);
  v108 = v134;
  if (v107)
  {
    v109 = v107;
    v110 = v119;
    PowerZonesAlertTargetZone.protobuf.getter(v119);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v111 = *(a1 + v108);
    }

    else
    {
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();

      v111 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v112);

      *(a1 + v108) = v111;
    }

    v113 = v130;
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v110, v130, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    v97(v113, 0, 1, v129);
    v114 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Goal?(v113, v111 + v114, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    swift_endAccess();
  }

  v115 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *(a1 + v108);
  if ((v115 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v116 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v116);
    *(a1 + v108) = v116;
  }

  v117 = v116 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  *v117 = 1;
  *(v117 + 4) = 0;
}

uint64_t Apple_Workout_Core_WorkoutStep.decoded.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v196 = &v191 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v203 = &v191 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v201 = &v191 - v9;
  v10 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v218 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v195 = &v191 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v200 = &v191 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v194 = &v191 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v197 = &v191 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v199 = &v191 - v24;
  v25 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v216 = *(v25 - 8);
  v217 = v25;
  v27 = MEMORY[0x28223BE20](v25, v26);
  v193 = (&v191 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27, v29);
  v198 = (&v191 - v30);
  v31 = type metadata accessor for Apple_Workout_Core_TargetZone(0);
  v202 = *(v31 - 8);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v191 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v214 = *(v35 - 8);
  v215 = v35;
  MEMORY[0x28223BE20](v35, v36);
  v213 = &v191 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v211 = *(v38 - 8);
  v212 = v38;
  MEMORY[0x28223BE20](v38, v39);
  v210 = &v191 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v209 = &v191 - v43;
  v44 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v206 = *(v44 - 8);
  v207 = v44;
  MEMORY[0x28223BE20](v44, v45);
  v208 = &v191 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  MEMORY[0x28223BE20](v47 - 8, v48);
  v50 = &v191 - v49;
  v51 = type metadata accessor for Apple_Workout_Core_Goal(0);
  *&v223 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v52);
  v204 = (&v191 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v54 - 8, v55);
  v57 = &v191 - v56;
  v58 = type metadata accessor for UUID();
  v59 = *(v58 - 8);
  v61 = MEMORY[0x28223BE20](v58, v60);
  v225 = &v191 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61, v63);
  v221 = &v191 - v64;
  v65 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  swift_beginAccess();
  v66 = *(v65 + 16);
  v224 = v65;
  v67 = *(v65 + 24);
  v219 = v10;
  v220 = v58;
  if (v67)
  {
    v205 = 0x1000302u >> (8 * v66);
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    __swift_project_value_buffer(v68, static WOLog.core);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 134217984;
      *(v71 + 4) = v66;
      v72 = v71;
      v58 = v220;
      MEMORY[0x20F2E9420](v72, -1, -1);
    }

    v205 = 0;
  }

  v73 = v50;
  swift_beginAccess();

  UUID.init(uuidString:)();

  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v57, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    __swift_project_value_buffer(v74, static WOLog.core);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_20AEA4000, v75, v76, "Unable to decode step uuid! Generating random UUID instead.", v77, 2u);
      MEMORY[0x20F2E9420](v77, -1, -1);
    }

    UUID.init()();
  }

  else
  {
    (*(v59 + 32))(v221, v57, v58);
  }

  v78 = v224;
  v79 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Goal?(v78 + v79, v50, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v80 = v223 + 48;
  v81 = *(v223 + 48);
  v82 = v81(v50, 1, v51);
  v222 = v59;
  if (v82 == 1)
  {
    *&v223 = v80;
    v83 = v204;
    *v204 = 0;
    *(v83 + 8) = 1;
    UnknownStorage.init()();
    v84 = *(v51 + 24);
    v85 = v51;
    v86 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
    v87 = *(v86 - 8);
    v192 = v73;
    v88 = *(v87 + 56);
    v89 = v83 + v84;
    v78 = v224;
    v88(v89, 1, 1, v86);
    v88(v83 + *(v85 + 28), 1, 1, v86);
    v90 = v192;
    v91 = v81(v192, 1, v85);
    v92 = v209;
    v94 = v206;
    v93 = v207;
    if (v91 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v90, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    }
  }

  else
  {
    v83 = v204;
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v50, v204, type metadata accessor for Apple_Workout_Core_Goal);
    v92 = v209;
    v94 = v206;
    v93 = v207;
  }

  v95 = Apple_Workout_Core_Goal.decoded.getter();
  outlined destroy of Apple_Workout_Core_Goal(v83, type metadata accessor for Apple_Workout_Core_Goal);
  v96 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Goal?(v78 + v96, v92, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v97 = *(v94 + 48);
  if (v97(v92, 1, v93) == 1)
  {
    v98 = v208;
    *(v208 + 8) = 0;
    *v98 = 0;
    v98[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    UnknownStorage.init()();
    if (v97(v92, 1, v93) != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_0(v92, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    v98 = v208;
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v92, v208, type metadata accessor for Apple_Workout_Core_Activity);
  }

  *&v223 = Apple_Workout_Core_Activity.decoded.getter();
  outlined destroy of Apple_Workout_Core_Goal(v98, type metadata accessor for Apple_Workout_Core_Activity);
  v99 = v222;
  v100 = *(v222 + 16);
  v100(v225, v221, v58);
  type metadata accessor for WorkoutStep(0);
  v101 = v58;
  v102 = swift_allocObject();
  v103 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v226 = 0;
  v227 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v104 = v210;
  Published.init(initialValue:)();
  (*(v211 + 32))(v102 + v103, v104, v212);
  *(v102 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v102 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v105 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v226) = 0;
  v106 = v213;
  Published.init(initialValue:)();
  (*(v214 + 32))(v102 + v105, v106, v215);
  *(v102 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v102 + 16) = v205;
  swift_beginAccess();
  v228 = v95;
  type metadata accessor for NLSessionActivityGoal();
  v107 = v95;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v102 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v223;
  v108 = v225;
  v100((v102 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid), v225, v101);
  swift_getKeyPath();
  swift_getKeyPath();
  v226 = 0;
  v227 = 0;

  static Published.subscript.setter();

  v109 = *(v99 + 8);
  v222 = v99 + 8;
  v215 = v109;
  v109(v108, v101);
  v110 = v224;
  v111 = (v224 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  v112 = v111[1];
  if (v112)
  {
    v113 = *v111;
    swift_getKeyPath();
    swift_getKeyPath();
    v226 = v113;
    v227 = v112;
    v110 = v224;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v226 = 0;
    v227 = 0;
  }

  static Published.subscript.setter();
  v114 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  v115 = *(v110 + v114);
  v116 = *(v115 + 16);
  if (v116)
  {
    v117 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
    v118 = v115 + ((*(v202 + 80) + 32) & ~*(v202 + 80));
    v225 = *(v202 + 72);
    v214 = v115;

    *&v119 = 134217984;
    v223 = v119;
    do
    {
      outlined init with copy of Apple_Workout_Core_TargetZone(v118, v34);
      v120 = *v34;
      if ((v34[8] & 1) == 0)
      {
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v121 = type metadata accessor for Logger();
        __swift_project_value_buffer(v121, static WOLog.core);
        v122 = Logger.logObject.getter();
        v123 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = v223;
          *(v124 + 4) = v120;
          MEMORY[0x20F2E9420](v124, -1, -1);
        }

        LOBYTE(v120) = 7;
      }

      v125 = *(v34 + 2);
      v126 = *(v34 + 3);
      v127 = v34[32];
      type metadata accessor for TargetZone();
      v128 = swift_allocObject();
      *(v128 + 16) = v120;
      *(v128 + 24) = v125;
      *(v128 + 32) = v126;
      *(v128 + 40) = v127;
      v129 = swift_beginAccess();
      MEMORY[0x20F2E6F30](v129);
      if (*((*(v102 + v117) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v102 + v117) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      swift_getKeyPath();
      swift_getKeyPath();
      v130 = static Published.subscript.modify();
      *v131 = !*v131;
      v130(&v226, 0);

      outlined destroy of Apple_Workout_Core_Goal(v34, type metadata accessor for Apple_Workout_Core_TargetZone);
      v118 += v225;
      --v116;
    }

    while (v116);

    v110 = v224;
  }

  v132 = v110 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  v133 = (v216 + 48);
  if ((*(v132 + 4) & 1) != 0 || *v132 != 1)
  {
    v146 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
    swift_beginAccess();
    v147 = v110 + v146;
    v148 = v199;
    outlined init with copy of Apple_Workout_Core_Goal?(v147, v199, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    v149 = *v133;
    v150 = v217;
    if ((*v133)(v148, 1, v217) == 1)
    {
      v151 = v198;
      *v198 = 0;
      *(v151 + 8) = 1;
      UnknownStorage.init()();
      v152 = v151 + v150[6];
      *v152 = 0;
      v152[8] = 1;
      v153 = v151 + v150[7];
      *v153 = 0;
      v153[8] = 1;
      v154 = v151 + v150[8];
      *v154 = 0;
      v154[4] = 1;
      v155 = v151;
      v156 = v149(v148, 1, v150);
      v157 = v218;
      v158 = v201;
      if (v156 != 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v148, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
      }
    }

    else
    {
      v155 = v198;
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v148, v198, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
      v157 = v218;
      v158 = v201;
    }

    v159 = Apple_Workout_Core_HeartRateTargetZone.decoded.getter();
    outlined destroy of Apple_Workout_Core_Goal(v155, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    v160 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
    swift_beginAccess();
    v161 = *(v102 + v160);
    *(v102 + v160) = v159;
    v162 = v159;

    swift_getKeyPath();
    swift_getKeyPath();
    v163 = static Published.subscript.modify();
    *v164 = !*v164;
    v163(&v226, 0);

    v165 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
    v166 = v224;
    swift_beginAccess();
    outlined init with copy of Apple_Workout_Core_Goal?(v166 + v165, v158, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    v167 = *(v157 + 48);
    v168 = v219;
    if (v167(v158, 1, v219) == 1)
    {
      v169 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
      v170 = v200;
      (*(*(v169 - 8) + 56))(v200, 1, 1, v169);
      UnknownStorage.init()();
      if (v167(v158, 1, v168) != 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v158, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
      }
    }

    else
    {
      v170 = v200;
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v158, v200, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    }

    v171 = Apple_Workout_Core_PowerZonesAlertTargetZone.decoded.getter();
    outlined destroy of Apple_Workout_Core_Goal(v170, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    v172 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
    goto LABEL_62;
  }

  v134 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  v135 = v197;
  outlined init with copy of Apple_Workout_Core_Goal?(v110 + v134, v197, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v136 = v110;
  v137 = *v133;
  v138 = v217;
  v139 = (*v133)(v135, 1, v217);
  _s10Foundation4UUIDVSgWOhTm_0(v135, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v140 = v203;
  if (v139 != 1)
  {
    v141 = v194;
    outlined init with copy of Apple_Workout_Core_Goal?(v136 + v134, v194, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    if (v137(v141, 1, v138) == 1)
    {
      v142 = v193;
      *v193 = 0;
      *(v142 + 8) = 1;
      UnknownStorage.init()();
      v143 = v142 + v138[6];
      *v143 = 0;
      v143[8] = 1;
      v144 = v142 + v138[7];
      *v144 = 0;
      v144[8] = 1;
      v145 = v142 + v138[8];
      *v145 = 0;
      v145[4] = 1;
      if (v137(v141, 1, v138) != 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v141, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
      }
    }

    else
    {
      v142 = v193;
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v141, v193, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    }

    v173 = Apple_Workout_Core_HeartRateTargetZone.decoded.getter();
    outlined destroy of Apple_Workout_Core_Goal(v142, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    v174 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
    swift_beginAccess();
    v175 = *(v102 + v174);
    *(v102 + v174) = v173;
    v176 = v173;

    swift_getKeyPath();
    swift_getKeyPath();
    v177 = static Published.subscript.modify();
    *v178 = !*v178;
    v177(&v226, 0);

    v136 = v224;
    v140 = v203;
  }

  v179 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_Goal?(v136 + v179, v140, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v180 = v219;
  v181 = *(v218 + 48);
  if (v181(v140, 1, v219) != 1)
  {
    _s10Foundation4UUIDVSgWOhTm_0(v140, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    v182 = v136 + v179;
    v183 = v196;
    outlined init with copy of Apple_Workout_Core_Goal?(v182, v196, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    if (v181(v183, 1, v180) == 1)
    {
      v184 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
      v185 = v195;
      (*(*(v184 - 8) + 56))(v195, 1, 1, v184);
      UnknownStorage.init()();
      if (v181(v183, 1, v180) != 1)
      {
        _s10Foundation4UUIDVSgWOhTm_0(v183, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
      }
    }

    else
    {
      v185 = v195;
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(v183, v195, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    }

    v171 = Apple_Workout_Core_PowerZonesAlertTargetZone.decoded.getter();
    outlined destroy of Apple_Workout_Core_Goal(v185, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    v172 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
LABEL_62:
    swift_beginAccess();
    v186 = *(v102 + v172);
    *(v102 + v172) = v171;
    v187 = v171;

    swift_getKeyPath();
    swift_getKeyPath();
    v188 = static Published.subscript.modify();
    *v189 = !*v189;
    v188(&v226, 0);

    v215(v221, v220);
    return v102;
  }

  v215(v221, v220);
  _s10Foundation4UUIDVSgWOhTm_0(v140, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return v102;
}

uint64_t outlined init with copy of Apple_Workout_Core_TargetZone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_TargetZone(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_Goal?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_Goal(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Apple_Workout_Core_Goal?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

double Apple_Workout_Core_WorkoutChartDataElement.dateSinceReferenceDeprecated.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_WorkoutChartDataElement;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_WorkoutChartDataElement)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutChartDataElement.dateSinceReferenceDeprecated.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_WorkoutChartDataElement.dateSinceReferenceDeprecated.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_WorkoutChartDataElement.dateSinceReferenceDeprecated.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutChartDataElement.clearDateSinceReferenceDeprecated()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Apple_Workout_Core_WorkoutChartDataElement.valueDeprecated.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutChartDataElement.valueDeprecated.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_WorkoutChartDataElement.valueDeprecated.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_WorkoutChartDataElement.valueDeprecated.modify;
}

uint64_t Apple_Workout_Core_WorkoutChartDataElement.valueDeprecated.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutChartDataElement.clearValueDeprecated()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_WorkoutChartDataElement.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_WorkoutChartDataElement.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_WorkoutChartDataElement.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  result = UnknownStorage.init()();
  v4 = a1 + *(v2 + 28);
  *v4 = 0;
  v4[8] = 1;
  v5 = a1 + *(v2 + 32);
  *v5 = 0;
  v5[8] = 1;
  return result;
}

uint64_t static Apple_Workout_Core_WorkoutChartDataElement._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_WorkoutChartDataElement._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_WorkoutChartDataElement.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutChartDataElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_WorkoutChartDataElement.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_Core_WorkoutChartDataElement.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    if (v3[1])
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutChartDataElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_WorkoutChartDataElement.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

Swift::Int Apple_Workout_Core_WorkoutChartDataElement.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement, &protocol conformance descriptor for Apple_Workout_Core_WorkoutChartDataElement);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutChartDataElement@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  result = UnknownStorage.init()();
  v5 = *(a1 + 32);
  v6 = a2 + *(a1 + 28);
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WorkoutChartDataElement@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement, &protocol conformance descriptor for Apple_Workout_Core_WorkoutChartDataElement);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_WorkoutChartDataElement@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_WorkoutChartDataElement._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement, &protocol conformance descriptor for Apple_Workout_Core_WorkoutChartDataElement);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement, &protocol conformance descriptor for Apple_Workout_Core_WorkoutChartDataElement);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_WorkoutChartDataElement.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 32);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

void type metadata completion function for Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LiveZones.__allocating_init(zones:currentZoneIndex:isStale:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;
  *(v8 + 16) = a1;
  swift_beginAccess();
  *(v8 + 24) = a2;
  *(v8 + 32) = a3 & 1;
  *(v8 + 33) = a4;
  return v8;
}

uint64_t LiveZonesProtocol.longestZoneDuration.getter(uint64_t a1, uint64_t a2)
{
  return LiveZonesProtocol.longestZoneDuration.getter(a1, a2);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14[-v8];
  v17 = (*(a2 + 24))(a1, a2);
  v15 = a1;
  v16 = a2;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.max(by:)();

  v10 = *(AssociatedTypeWitness - 8);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v6 + 8))(v9, v5);
    return 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v10 + 8))(v9, AssociatedTypeWitness);
    return *&v13;
  }
}

BOOL closure #1 in LiveZonesProtocol.longestZoneDuration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  v6 = swift_checkMetadataState();
  v7 = v5(v6, AssociatedConformanceWitness);
  return v7 < v5(v6, AssociatedConformanceWitness);
}

double LiveZones.zones.getter()
{
  specialized LiveZones.zones.getter();

  return result;
}

uint64_t LiveZones.zones.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

void LiveZones.currentZoneIndex.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2 & 1;
}

uint64_t LiveZones.elapsedTimeInCurrentZone.getter()
{
  swift_beginAccess();
  if (*(v0 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  if ((Range.contains(_:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();

  Array.subscript.getter();

  v2 = (*(*v4 + 168))(v1);

  return *&v2;
}

unint64_t LiveZones.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of LiveZones.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LiveZones<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance LiveZones<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LiveZones<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance LiveZones<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LiveZones<A>.CodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[1];
  v5._countAndFlagsBits = *a1;
  v5._object = v3;
  result = LiveZones.CodingKeys.init(rawValue:)(v5);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LiveZones<A>.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20AEC92F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance LiveZones<A>.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = LiveZones.CodingKeys.init(stringValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance LiveZones<A>.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized LiveZones.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LiveZones<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance LiveZones<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t LiveZones.init(zones:currentZoneIndex:isStale:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v4 + 16) = a1;
  swift_beginAccess();
  *(v4 + 24) = a2;
  *(v4 + 32) = a3 & 1;
  *(v4 + 33) = a4;
  return v4;
}

uint64_t LiveZones.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  LiveZones.init(from:)(a1, v3, v4, v5);
  return v2;
}

uint64_t LiveZones.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*v4 + 80);
  type metadata accessor for LiveZones.CodingKeys(255, v7, a3, a4);
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedDecodingContainer();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v21 - v10;
  v24 = v4;
  v25 = a1;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    v14 = v24;
    type metadata accessor for LiveZones(0, v7, v12, v13);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v22;
    type metadata accessor for Array();
    LOBYTE(v27) = 0;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    v16 = v23;
    v17 = v11;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v24;
    *(v24 + 16) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, MEMORY[0x277D83BB8], MEMORY[0x277D84F58]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v15;
    v19 = v27;
    LOBYTE(v15) = v28;
    swift_beginAccess();
    *(v14 + 24) = v19;
    *(v14 + 32) = v15;
    LOBYTE(v27) = 2;
    LOBYTE(v15) = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v18 + 8))(v17, v16);
    *(v14 + 33) = v15 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v14;
}

uint64_t LiveZones.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for LiveZones.CodingKeys(255, *(*v5 + 80), a3, a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v16[0] = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v19 = *(v5 + 16);
  v18 = 0;
  type metadata accessor for Array();
  v11 = v7;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = v16[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v12)
  {
    return (*(v16[0] + 8))(v10, v7);
  }

  v14 = v16[0];
  swift_beginAccess();
  v15 = *(v5 + 32);
  v19 = *(v5 + 24);
  v20 = v15;
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  lazy protocol witness table accessor for type Int? and conformance <A> A?(&lazy protocol witness table cache variable for type Int? and conformance <A> A?, MEMORY[0x277D83B90], MEMORY[0x277D84F40]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_beginAccess();
  v17 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v14 + 8))(v10, v11);
}

uint64_t LiveZones.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double protocol witness for LiveZonesProtocol.zones.getter in conformance LiveZones<A>()
{
  specialized LiveZones.zones.getter();

  return result;
}

uint64_t (*protocol witness for LiveZonesProtocol.zones.modify in conformance LiveZones<A>(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = LiveZones.zones.modify(v2);
  return protocol witness for LiveZonesProtocol.zones.modify in conformance LiveZones<A>;
}

uint64_t (*protocol witness for LiveZonesProtocol.currentZoneIndex.modify in conformance LiveZones<A>(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = LiveZones.currentZoneIndex.modify(v2);
  return protocol witness for LiveZonesProtocol.currentZoneIndex.modify in conformance LiveZones<A>;
}

uint64_t (*protocol witness for LiveZonesProtocol.isStale.modify in conformance LiveZones<A>(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = LiveZones.isStale.modify(v2);
  return protocol witness for LiveZonesProtocol.isStale.modify in conformance LiveZones<A>;
}

void protocol witness for LiveZonesProtocol.zones.modify in conformance LiveZones<A>(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Decodable.init(from:) in conformance LiveZones<A>@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = LiveZones.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static LiveZones.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_beginAccess();

  swift_getWitnessTable();
  v4 = static Array<A>.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
LABEL_8:
    v7 = 0;
    return v7 & 1;
  }

  swift_beginAccess();
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  swift_beginAccess();
  v7 = *(a2 + 32);
  if ((v6 & 1) == 0)
  {
    if (v5 != *(a2 + 24))
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(a2 + 32))
  {
LABEL_9:
    swift_beginAccess();
    v8 = *(a1 + 33);
    swift_beginAccess();
    v7 = v8 ^ *(a2 + 33) ^ 1;
  }

  return v7 & 1;
}

uint64_t lazy protocol witness table accessor for type Int? and conformance <A> A?(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LiveZones.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LiveZones.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t WorkoutDeviceBluetoothLEDeviceScanner.latestDeviceList.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

NSObject *WorkoutDeviceBluetoothLEDeviceScanner.init()()
{
  v1 = type metadata accessor for DispatchQoS.QoSClass();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo9HRCDeviceCGGMd, &_s7Combine9PublishedVyShySo9HRCDeviceCGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v31 - v9;
  *&v0[OBJC_IVAR____TtC11WorkoutCore37WorkoutDeviceBluetoothLEDeviceScanner_sourceObserver] = 0;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo9HRCDeviceC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = MEMORY[0x277D84FA0];
  }

  v12 = OBJC_IVAR____TtC11WorkoutCore37WorkoutDeviceBluetoothLEDeviceScanner__latestDeviceList;
  v33 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySo9HRCDeviceCGMd, &_sShySo9HRCDeviceCGMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v0[v12], v10, v6);
  v13 = type metadata accessor for WorkoutDeviceBluetoothLEDeviceScanner(0);
  v32.receiver = v0;
  v32.super_class = v13;
  v14 = objc_msgSendSuper2(&v32, sel_init);
  v15 = OBJC_IVAR____TtC11WorkoutCore37WorkoutDeviceBluetoothLEDeviceScanner_sourceObserver;
  v16 = *&v14[OBJC_IVAR____TtC11WorkoutCore37WorkoutDeviceBluetoothLEDeviceScanner_sourceObserver];
  *&v14[OBJC_IVAR____TtC11WorkoutCore37WorkoutDeviceBluetoothLEDeviceScanner_sourceObserver] = 0;
  v17 = v14;

  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.devices);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_20AEA4000, v19, v20, "Initializing HRCBluetoothLESourceObserver", v21, 2u);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  _sSo17OS_dispatch_queueCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v2 + 104))(v5, *MEMORY[0x277D851B8], v1);
  v22 = v17;
  v23 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v5, v1);
  v24 = [objc_allocWithZone(MEMORY[0x277D13060]) initWithDelegate:v22 onQueue:v23];

  v25 = *&v14[v15];
  *&v14[v15] = v24;
  v26 = v24;

  v27 = v22;
  if (!v26)
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20AEA4000, v27, v28, "Error: Failed to initialize HRCBluetoothLESourceObserver.", v29, 2u);
      MEMORY[0x20F2E9420](v29, -1, -1);
    }

    v26 = v22;
  }

  return v22;
}

uint64_t WorkoutDeviceBluetoothLEDeviceScanner.handleUpdatedSourceList(_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v7);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.devices);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *(a1 + 16);
    }

    *(v12 + 4) = v13;

    _os_log_impl(&dword_20AEA4000, v10, v11, "HRCBluetoothLESourceObserverDelegate: Device list received. Count: %ld", v12, 0xCu);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  else
  {
  }

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    _sSo17OS_dispatch_queueCMaTm_4(0, &lazy cache variable for type metadata for HRCDevice, 0x277D13068);
    v27 = v6;
    lazy protocol witness table accessor for type HRCDevice and conformance NSObject();
    v18 = Set.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);
    v6 = v27;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v14, v15, "HRCBluetoothLESourceObserverDelegate: Device list received. Devices: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  _sSo17OS_dispatch_queueCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in WorkoutDeviceBluetoothLEDeviceScanner.handleUpdatedSourceList(_:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_7;
  v24 = _Block_copy(aBlock);

  v25 = v29;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v25, v6, v24);
  _Block_release(v24);

  (*(v3 + 8))(v6, v2);
  return (*(v30 + 8))(v25, v28);
}

void closure #1 in WorkoutDeviceBluetoothLEDeviceScanner.handleUpdatedSourceList(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = a2;
    v5 = v4;

    static Published.subscript.setter();
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.devices);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v15);

      if ((v15 & 0xC000000000000001) != 0)
      {
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *(v15 + 16);
      }

      *(v10 + 4) = v11;

      _os_log_impl(&dword_20AEA4000, v8, v9, "HRCBluetoothLESourceObserverDelegate: Device list updated on main thread. Count: %ld", v10, 0xCu);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    else
    {

      v8 = v7;
    }
  }

  else
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.devices);
    v8 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v13, "WorkoutDeviceBluetoothLEDeviceScanner is nil. Not updating device list.", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }
  }
}

id WorkoutDeviceBluetoothLEDeviceScanner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDeviceBluetoothLEDeviceScanner(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkoutDeviceBluetoothLEDeviceScanner(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutDeviceBluetoothLEDeviceScanner;
  if (!type metadata singleton initialization cache for WorkoutDeviceBluetoothLEDeviceScanner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutDeviceBluetoothLEDeviceScanner(uint64_t a1)
{
  type metadata accessor for Published<Set<HRCDevice>>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Set<HRCDevice>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Set<HRCDevice>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySo9HRCDeviceCGMd, &_sShySo9HRCDeviceCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Set<HRCDevice>>);
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutDeviceBluetoothLEDeviceScanner@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDeviceBluetoothLEDeviceScanner(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for WorkoutDeviceBluetoothLEDeviceScanner.latestDeviceList : WorkoutDeviceBluetoothLEDeviceScanner@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for WorkoutDeviceBluetoothLEDeviceScanner.latestDeviceList : WorkoutDeviceBluetoothLEDeviceScanner(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type HRCDevice and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type HRCDevice and conformance NSObject;
  if (!lazy protocol witness table cache variable for type HRCDevice and conformance NSObject)
  {
    _sSo17OS_dispatch_queueCMaTm_4(255, &lazy cache variable for type metadata for HRCDevice, 0x277D13068);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HRCDevice and conformance NSObject);
  }

  return result;
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_RaceChartPoint.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  result = UnknownStorage.init()();
  v4 = a1 + *(v2 + 28);
  *v4 = 0;
  v4[8] = 1;
  v5 = a1 + *(v2 + 32);
  *v5 = 0;
  v5[8] = 1;
  return result;
}

uint64_t type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double Apple_Workout_Core_RaceChartPoint.odometerMDeprecated.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double Apple_Workout_Core_RaceChartPoint.altitudeMDeprecated.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

unint64_t Apple_Workout_Core_RaceFilter.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_RaceFilter.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_RaceFilter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_Core_RaceFilter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_RaceFilter@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_RaceFilter(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RaceFilter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RaceFilter(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RaceFilter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_RaceFilter(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.routePoints.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

void Apple_Workout_Core_RaceInformationPublisher.raceFilter.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.raceFilter.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_RaceChartPoint.odometerMDeprecated.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_RaceChartPoint.odometerMDeprecated.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_RaceChartPoint.odometerMDeprecated.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_RaceChartPoint.clearOdometerMDeprecated()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_RaceChartPoint.altitudeMDeprecated.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_RaceChartPoint.altitudeMDeprecated.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_RaceChartPoint.altitudeMDeprecated.modify;
}

uint64_t Apple_Workout_Core_RaceChartPoint.altitudeMDeprecated.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_RaceChartPoint.clearAltitudeMDeprecated()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_RaceChartPoint.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_RaceChartPoint.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_RaceChartPoint(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 9)
      {
        if (result == 10 || result == 11)
        {
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result == 3)
      {
        type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
        lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint, type metadata accessor for Apple_Workout_Core_RaceChartPoint, &protocol conformance descriptor for Apple_Workout_Core_RaceChartPoint);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 9)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_RaceInformationPublisher.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
    lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint, type metadata accessor for Apple_Workout_Core_RaceChartPoint, &protocol conformance descriptor for Apple_Workout_Core_RaceChartPoint);
    v6 = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v4)
    {
      return v6;
    }

    v5 = 0;
  }

  if (v3[1])
  {
    lazy protocol witness table accessor for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter();
    v7 = v5;
    v6 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return v6;
    }
  }

  else
  {
    v7 = v5;
  }

  if (!v3[3] || (v6 = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v7))
  {
    if (!v3[4] || (v6 = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v7))
    {
      type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_RaceFilter and conformance Apple_Workout_Core_RaceFilter);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RaceInformationPublisher@<X0>(uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RaceInformationPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RaceInformationPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RaceInformationPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher, &protocol conformance descriptor for Apple_Workout_Core_RaceInformationPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RaceInformationPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher, &protocol conformance descriptor for Apple_Workout_Core_RaceInformationPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RaceInformationPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher, &protocol conformance descriptor for Apple_Workout_Core_RaceInformationPublisher);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_RaceFilter._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Apple_Workout_Core_RaceChartPoint.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      else if (result == 4)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }
    }

    else if (result == 1 || result == 2)
    {
      type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_RaceChartPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_RaceChartPoint.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_Core_RaceChartPoint.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*v3)
    {
      dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
    }

    if (v3[1])
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_RaceChartPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_RaceChartPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

Swift::Int Apple_Workout_Core_RaceInformationPublisher.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_RaceChartPoint@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  result = UnknownStorage.init()();
  v5 = *(a1 + 32);
  v6 = a2 + *(a1 + 28);
  *v6 = 0;
  v6[8] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_RaceChartPoint@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_RaceChartPoint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_RaceChartPoint(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint, type metadata accessor for Apple_Workout_Core_RaceChartPoint, &protocol conformance descriptor for Apple_Workout_Core_RaceChartPoint);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_RaceFilter@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_RaceChartPoint(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint, type metadata accessor for Apple_Workout_Core_RaceChartPoint, &protocol conformance descriptor for Apple_Workout_Core_RaceChartPoint);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_RaceInformationPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_RaceChartPoint(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint, type metadata accessor for Apple_Workout_Core_RaceChartPoint, &protocol conformance descriptor for Apple_Workout_Core_RaceChartPoint);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_RaceInformationPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_RaceInformationPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C15_RaceChartPointV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a1 + 16))
  {
    v4 = v4 != 0;
  }

  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static Apple_Workout_Core_RaceChartPoint.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RaceChartPoint(0);
  v5 = *(v4 + 28);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 32);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  if (*a1 == *a2 && a1[1] == a2[1])
  {
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_RaceChartPoint and conformance Apple_Workout_Core_RaceChartPoint(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_RaceFilter] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_RaceFilter] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_RaceFilter] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B11_RaceFilterOGMd, &_sSay11WorkoutCore06Apple_a1_B11_RaceFilterOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_RaceFilter] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_RaceFilter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_RaceFilter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_RaceFilter(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_RaceFilter(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_RaceInformationPublisher(uint64_t a1)
{
  type metadata accessor for [Apple_Workout_Core_RaceChartPoint](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_RaceChartPoint](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Apple_Workout_Core_RaceChartPoint])
  {
    type metadata accessor for Apple_Workout_Core_RaceChartPoint(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Apple_Workout_Core_RaceChartPoint]);
    }
  }
}

void type metadata completion function for Apple_Workout_Core_RaceChartPoint(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t TargetZone.ZoneType.displayString(activityType:)(void *a1)
{
  v2 = *v1;
  if (v2 <= 3)
  {
    if (*v1 <= 1u)
    {
      if (!*v1)
      {
        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v4 = [objc_opt_self() bundleForClass_];
        v5 = 0xD00000000000001DLL;
        v6 = 0x800000020B457D40;
LABEL_31:
        v27 = MEMORY[0x20F2E6C00](v5, v6);
        v28 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v29 = [v4 localizedStringForKey:v27 value:0 table:v28];

        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v24;
      }

      v17 = FIUIDistanceTypeForActivityType();
      v18 = MEMORY[0x20F2E8410](v17);
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v19 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      if (v18 == 4)
      {
        v13 = "AVERAGE_SPEED_LONG_DESCRIPTION";
        goto LABEL_16;
      }

      v26 = "AVERAGE_PACE_LONG_DESCRIPTION";
LABEL_27:
      v23 = v26 - 32;
      v5 = 0xD00000000000001DLL;
      goto LABEL_30;
    }

    if (v2 == 2)
    {
      v10 = FIUIDistanceTypeForActivityType();
      v11 = MEMORY[0x20F2E8410](v10);
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v12 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      if (v11 == 4)
      {
        v13 = "CURRENT_SPEED_LONG_DESCRIPTION";
LABEL_16:
        v6 = (v13 - 32) | 0x8000000000000000;
LABEL_19:
        v5 = 0xD00000000000001ELL;
        goto LABEL_31;
      }

      v26 = "CURRENT_PACE_LONG_DESCRIPTION";
      goto LABEL_27;
    }

    v21 = MEMORY[0x20F2E8390]([a1 effectiveTypeIdentifier]);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v22 = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    if (v21)
    {
      v9 = "CURRENT_CADENCE_LONG_DESCRIPTION_PEDOMETER";
      goto LABEL_22;
    }

    v25 = "CURRENT_CADENCE_LONG_DESCRIPTION_CYCLING";
    goto LABEL_29;
  }

  if (*v1 <= 5u)
  {
    if (v2 == 4)
    {
      v7 = MEMORY[0x20F2E8390]([a1 effectiveTypeIdentifier]);
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v8 = swift_getObjCClassFromMetadata();
      v4 = [objc_opt_self() bundleForClass_];
      if (v7)
      {
        v9 = "AVERAGE_CADENCE_LONG_DESCRIPTION_PEDOMETER";
LABEL_22:
        v23 = v9 - 32;
        v5 = 0xD00000000000002ALL;
LABEL_30:
        v6 = v23 | 0x8000000000000000;
        goto LABEL_31;
      }

      v25 = "AVERAGE_CADENCE_LONG_DESCRIPTION_CYCLING";
LABEL_29:
      v23 = v25 - 32;
      v5 = 0xD000000000000028;
      goto LABEL_30;
    }

    v14 = "AVERAGE_POWER_LONG_DESCRIPTION";
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v20 = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
LABEL_18:
    v4 = v16;
    v6 = v14 | 0x8000000000000000;
    goto LABEL_19;
  }

  if (v2 == 6)
  {
    v14 = "tePoints";
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v15 = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    goto LABEL_18;
  }

  return 0;
}

Swift::Int StartButtonState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StartButtonState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StartButtonState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type StartButtonState and conformance StartButtonState()
{
  result = lazy protocol witness table cache variable for type StartButtonState and conformance StartButtonState;
  if (!lazy protocol witness table cache variable for type StartButtonState and conformance StartButtonState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartButtonState and conformance StartButtonState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StartButtonState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StartButtonState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t HKWorkout.sessionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x800000020B457D60), (v7 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v6, v10);

      if (swift_dynamicCast())
      {
        UUID.init(uuidString:)();
      }
    }

    else
    {
    }
  }

  v9 = type metadata accessor for UUID();
  return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
}

uint64_t static HKWorkout.shouldTrackPaceWithOdometer(for:)(void *a1)
{
  v2 = [a1 identifier];
  if ((v2 - 70) < 2)
  {
    return 1;
  }

  if (v2 == 13)
  {
    return [a1 isIndoor] ^ 1;
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance BreakthroughMomentCheckerState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance BreakthroughMomentCheckerState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t BreakthroughMomentChecker.startChecking()()
{
  v1[5] = v0;
  v2 = type metadata accessor for WorkoutState();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](BreakthroughMomentChecker.startChecking(), v0, 0);
}

{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v0[12] = v3;
    v0[13] = v2;

    return MEMORY[0x2822009F8](BreakthroughMomentChecker.startChecking(), v3, v2);
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v6, "No delegate, exiting without starting checking for breakthrough moments", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  v0[14] = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v7 = *(v4 + 16);
  v0[15] = v7;
  v0[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v2 + v6, v3);

  return MEMORY[0x2822009F8](BreakthroughMomentChecker.startChecking(), v5, 0);
}

{
  v32 = v0;
  v1 = WorkoutState.activityType.getter();
  v2 = [v1 supportsWorkoutVoiceMotivationBreakthroughMoments];

  if (!v2)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v3 = v0[15];
    v4 = v0[10];
    v5 = v0[8];
    v6 = v0[6];
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.workoutVoice);
    v3(v5, v4, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[10];
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];
    if (v10)
    {
      v30 = v0[6];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315138;
      v17 = WorkoutState.activityType.getter();
      v18 = [v17 localizedName];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v11;
      v21 = v20;

      v22 = *(v13 + 8);
      v22(v12, v30);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v31);

      *(v15 + 4) = v23;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Current Activity type %s doesn't support breakthrough moments", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x20F2E9420](v16, -1, -1);
      MEMORY[0x20F2E9420](v15, -1, -1);

      swift_unknownObjectRelease();
      v22(v29, v30);
    }

    else
    {

      swift_unknownObjectRelease();
      v24 = *(v13 + 8);
      v24(v12, v14);
      v24(v11, v14);
    }

    goto LABEL_9;
  }

  if (*(v0[5] + 112))
  {
    (*(v0[7] + 8))(v0[10], v0[6]);
    swift_unknownObjectRelease();
LABEL_9:

    v25 = v0[1];

    return v25();
  }

  v27 = v0[12];
  v28 = v0[13];

  return MEMORY[0x2822009F8](BreakthroughMomentChecker.startChecking(), v27, v28);
}

{
  (*(v0 + 120))(*(v0 + 72), *(v0 + 88) + *(v0 + 112), *(v0 + 48));
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = BreakthroughMomentChecker.startChecking();
  v2 = *(v0 + 72);

  return BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)(v2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);

  v6 = *(v3 + 8);
  *(v1 + 144) = v6;
  *(v1 + 152) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v4);

  return MEMORY[0x2822009F8](BreakthroughMomentChecker.startChecking(), v5, 0);
}

{
  v1 = v0[18];
  v2 = v0[10];
  v3 = v0[6];
  swift_unknownObjectRelease();
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for WorkoutVoiceMomentType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), v1, 0);
}

uint64_t BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)()
{
  *(*(v0 + 24) + 112) = 1;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 64) = __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Requesting a Breakthrough Moment", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v15 = *(v0 + 16);
    (*(*(v0 + 40) + 104))(*(v0 + 48), *MEMORY[0x277D0A460], *(v0 + 32));
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    v6[1] = vextq_s8(v15, v15, 8uLL);
    v7 = swift_task_alloc();
    *(v0 + 88) = v7;
    *v7 = v0;
    v7[1] = BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
    v9 = *(v0 + 48);
    v8 = *(v0 + 56);
    v10 = *(v0 + 16);

    return WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(v8, v9, v10, &async function pointer to partial apply for closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), v6);
  }

  else
  {
    v12 = *(v0 + 56);
    v13 = type metadata accessor for InferenceResult();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    _sSo8NSObjectCSgWOhTm_1(v12, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    *(*(v0 + 24) + 112) = 0;

    v14 = *(v0 + 8);

    return v14();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 96) = v0;

  swift_unknownObjectRelease();

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = *(v2 + 24);
    v7 = BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
  }

  else
  {
    v8 = *(v2 + 24);
    _sSo8NSObjectCSgWOhTm_1(*(v2 + 56), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v7 = BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
    v6 = v8;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

{
  *(*(v0 + 24) + 112) = 0;

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[12];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Could not Check or infer Breakthrough moment with error: %@", v7, 0xCu);
    _sSo8NSObjectCSgWOhTm_1(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }

  *(v0[3] + 112) = 0;

  v11 = v0[1];

  return v11();
}

uint64_t closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for WorkoutVoiceMoment();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMomentType();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), 0, 0);
}

uint64_t closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)()
{
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D0A460], v0[10]);
  v6 = (*MEMORY[0x277D0A340] + MEMORY[0x277D0A340]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[4];

  return v6(v2, v3, v4);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
  }

  else
  {
    v5 = closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v36 = v0;
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  outlined init with copy of WorkoutVoiceMoment?(v0[14], v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[13];
    _sSo8NSObjectCSgWOhTm_1(v0[14], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    _sSo8NSObjectCSgWOhTm_1(v4, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    (*(v0[6] + 56))(v0[2], 1, 1, v0[5]);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[13];
    v8 = v0[9];
    v9 = v0[5];
    v10 = v0[6];
    v11 = *(v10 + 32);
    v0[17] = v11;
    v0[18] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v11(v8, v7, v9);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v12 = v0[8];
    v13 = v0[9];
    v14 = v0[5];
    v15 = v0[6];
    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.workoutVoice);
    v17 = *(v15 + 16);
    v17(v12, v13, v14);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[8];
    if (v20)
    {
      v22 = v0[6];
      v23 = v0[7];
      v24 = v0[5];
      v25 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v25 = 136315138;
      v17(v23, v21, v24);
      v26 = String.init<A>(describing:)();
      v28 = v27;
      v29 = *(v22 + 8);
      v29(v21, v24);
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v35);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_20AEA4000, v18, v19, "Breakthrough moment: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x20F2E9420](v34, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    else
    {
      v31 = v0[5];
      v32 = v0[6];

      v29 = *(v32 + 8);
      v29(v21, v31);
    }

    v0[19] = v29;
    v33 = v0[3];

    return MEMORY[0x2822009F8](closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), v33, 0);
  }
}

{
  *(v0 + 160) = *(*(v0 + 24) + 112);
  return MEMORY[0x2822009F8](closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), 0, 0);
}

{
  if (*(v0 + 160) == 3)
  {
    v1 = *(v0 + 112);
    (*(v0 + 152))(*(v0 + 72), *(v0 + 40));
    _sSo8NSObjectCSgWOhTm_1(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    (*(*(v0 + 48) + 56))(*(v0 + 16), 1, 1, *(v0 + 40));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 24);

    return MEMORY[0x2822009F8](closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), v4, 0);
  }
}

{
  *(*(v0 + 24) + 112) = 2;
  return MEMORY[0x2822009F8](closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:), 0, 0);
}

{
  v1 = v0[17];
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[2];
  _sSo8NSObjectCSgWOhTm_1(v0[14], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v1(v4, v2, v3);
  (*(v0[6] + 56))(v0[2], 0, 1, v0[5]);

  v5 = v0[1];

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall BreakthroughMomentChecker.stopChecking()()
{
  v1 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.workoutVoice);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Stopping checking for breakthroughs", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  *(v1 + 112) = 3;
}

uint64_t BreakthroughMomentChecker.__deallocating_deinit()
{

  outlined destroy of weak BreakthroughMomentCheckerDelegate?(v0 + 128);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t getEnumTagSinglePayload for BreakthroughMomentCheckerState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BreakthroughMomentCheckerState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type BreakthroughMomentCheckerState and conformance BreakthroughMomentCheckerState()
{
  result = lazy protocol witness table cache variable for type BreakthroughMomentCheckerState and conformance BreakthroughMomentCheckerState;
  if (!lazy protocol witness table cache variable for type BreakthroughMomentCheckerState and conformance BreakthroughMomentCheckerState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BreakthroughMomentCheckerState and conformance BreakthroughMomentCheckerState);
  }

  return result;
}

uint64_t partial apply for closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:);

  return closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in BreakthroughMomentChecker.inferIfBreakthroughMomentHappened(workoutState:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with copy of WorkoutVoiceMoment?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PowerZonesAlertTargetZone.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v101 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v4 = MEMORY[0x28223BE20](v101, v3);
  v102 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v95 = &v91 - v7;
  v94 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  v9 = MEMORY[0x28223BE20](v94, v8);
  v96 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v91 - v12;
  v14 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v92 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v105 = &v91 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v91 - v23;
  v106 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  v104 = *(v106 - 8);
  v26 = MEMORY[0x28223BE20](v106, v25);
  *&v103.f64[0] = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v31 = &v91 - v30;
  v33 = MEMORY[0x28223BE20](v29, v32);
  *&v107.f64[0] = &v91 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v91 - v36;
  v38 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  v40 = MEMORY[0x28223BE20](v38, v39);
  v93 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v97 = &v91 - v43;
  v44 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v45 = *(v44 - 8);
  v99 = *(v45 + 56);
  v100 = v44;
  v98 = v45 + 56;
  v99(a1, 1, 1);
  type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  UnknownStorage.init()();
  v46 = v1 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v48 = *v46;
  result = *(v46 + 8);
  v49 = *(v46 + 16);
  v50 = v49 >> 6;
  if (v49 >> 6 <= 1)
  {
    v95 = *v46;
    v91 = a1;
    if (!v50)
    {
      *(v13 + 1) = 0;
      v13[16] = 1;
      v51 = result;
      UnknownStorage.init()();
      v52 = v96;
      *v13 = v95;
      *(v13 + 1) = v51;
      v13[16] = 1;
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v13, v52, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
      v53 = v91;
      outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v91, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
      outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v52, v53, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
      v54 = v100;
LABEL_6:
      swift_storeEnumTagMultiPayload();
      return (v99)(v53, 0, 1, v54);
    }

    v96 = v49;
    v101 = result;

    v62 = v97;
    result = UnknownStorage.init()();
    if (v95 < 0xFFFFFFFF80000000)
    {
      goto LABEL_45;
    }

    if (v95 > 0x7FFFFFFF)
    {
      goto LABEL_46;
    }

    *v62 = v95;
    v63 = v101;
    if (v101)
    {
      if (v101 >> 62)
      {
        goto LABEL_47;
      }

      v64 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v64)
      {
        while (v64 >= 1)
        {
          v102 = v14;
          if ((v63 & 0xC000000000000001) != 0)
          {
            v18 = 0;
            v65 = (v92 + 56);
            v66 = MEMORY[0x277D84F90];
            v103 = vdupq_n_s64(0x4059000000000000uLL);
            while (1)
            {
              v31 = MEMORY[0x20F2E7A20](v18, v101);
              v67 = v106;
              UnknownStorage.init()();
              v68 = *(v67 + 28);
              v69 = *v65;
              (*v65)(&v37[v68], 1, 1, v14);
              *v37 = vrndaq_f64(vmulq_f64(*(v31 + 3), v103));
              UnknownStorage.init()();
              *v24 = *(v31 + 1);
              v70 = *(v31 + 4);
              if (v70 < 0xFFFFFFFF80000000)
              {
                break;
              }

              if (v70 > 0x7FFFFFFF)
              {
                goto LABEL_38;
              }

              *(v24 + 4) = v70;
              v71 = *(v31 + 5);
              if (v71 < 0xFFFFFFFF80000000)
              {
                goto LABEL_39;
              }

              if (v71 > 0x7FFFFFFF)
              {
                goto LABEL_40;
              }

              *(v24 + 5) = v71;
              v72 = v105;
              outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v24, v105, type metadata accessor for Apple_Workout_Core_Zone);
              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(&v37[v68], &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
              v73 = v72;
              v14 = v102;
              outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v73, &v37[v68], type metadata accessor for Apple_Workout_Core_Zone);
              v69(&v37[v68], 0, 1, v14);
              outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v37, *&v107.f64[0], type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
              }

              v75 = v66[2];
              v74 = v66[3];
              if (v75 >= v74 >> 1)
              {
                v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v66);
              }

              ++v18;
              swift_unknownObjectRelease();
              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v24, type metadata accessor for Apple_Workout_Core_Zone);
              v66[2] = v75 + 1;
              outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(*&v107.f64[0], v66 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v75, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v37, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              if (v64 == v18)
              {
                goto LABEL_49;
              }
            }

            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
          }

          else
          {
            v79 = (v63 + 32);
            v80 = (v92 + 56);
            v66 = MEMORY[0x277D84F90];
            v107 = vdupq_n_s64(0x4059000000000000uLL);
            while (1)
            {
              v24 = v64;
              v37 = *v79;
              v81 = v106;

              UnknownStorage.init()();
              v82 = *(v81 + 28);
              v83 = *v80;
              (*v80)(&v31[v82], 1, 1, v14);
              *v31 = vrndaq_f64(vmulq_f64(*(v37 + 3), v107));
              UnknownStorage.init()();
              *v18 = *(v37 + 1);
              v84 = *(v37 + 4);
              if (v84 < 0xFFFFFFFF80000000)
              {
                break;
              }

              if (v84 > 0x7FFFFFFF)
              {
                goto LABEL_42;
              }

              *(v18 + 4) = v84;
              v85 = *(v37 + 5);
              if (v85 < 0xFFFFFFFF80000000)
              {
                goto LABEL_43;
              }

              if (v85 > 0x7FFFFFFF)
              {
                goto LABEL_44;
              }

              *(v18 + 5) = v85;
              v86 = v105;
              outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v18, v105, type metadata accessor for Apple_Workout_Core_Zone);
              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(&v31[v82], &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
              v87 = v86;
              v14 = v102;
              outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v87, &v31[v82], type metadata accessor for Apple_Workout_Core_Zone);
              v83(&v31[v82], 0, 1, v14);
              outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v31, *&v103.f64[0], type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
              }

              v89 = v66[2];
              v88 = v66[3];
              if (v89 >= v88 >> 1)
              {
                v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1, v66);
              }

              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v18, type metadata accessor for Apple_Workout_Core_Zone);
              v66[2] = v89 + 1;
              outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(*&v103.f64[0], v66 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v89, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v31, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
              ++v79;
              v64 = (v24 - 1);
              if (v24 == 1)
              {
                goto LABEL_49;
              }
            }
          }

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
          __break(1u);
LABEL_47:
          result = __CocoaSet.count.getter();
          v63 = v101;
          v64 = result;
          if (!result)
          {
            goto LABEL_48;
          }
        }

        __break(1u);
        return result;
      }

LABEL_48:
      v66 = MEMORY[0x277D84F90];
LABEL_49:
      outlined consume of PowerZonesAlertZoneType(v95, v101, v96);
      v76 = v91;
      v78 = v99;
      v77 = v100;
      v62 = v97;
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
      v76 = v91;
      v78 = v99;
      v77 = v100;
    }

    *(v62 + 8) = v66;
    v90 = v93;
    outlined init with copy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v62, v93, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v76, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v90, v76, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    swift_storeEnumTagMultiPayload();
    (v78)(v76, 0, 1, v77);
    return outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v62, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  }

  if (v50 == 2)
  {
    v53 = a1;
    v55 = v49 & 0x3F;
    v56 = v101;
    v57 = v95;
    v58 = v48;
    v59 = result;
    UnknownStorage.init()();
    v60 = v57 + *(v56 + 28);
    *v57 = v58;
    v57[1] = v59;
    *v60 = v55;
    *(v60 + 4) = 1;
    v61 = v102;
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v57, v102, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    outlined destroy of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?(v53, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(v61, v53, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    v54 = v100;
    goto LABEL_6;
  }

  return result;
}