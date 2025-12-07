uint64_t closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:);
  v7 = v0[8];

  return WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(v7);
}

uint64_t one-time initialization function for workoutBuddyStateChanged()
{
  result = MEMORY[0x20F2E6C00](0xD000000000000018, 0x800000020B469490);
  static NSNotificationName.workoutBuddyStateChanged = result;
  return result;
}

id static NSNotificationName.workoutBuddyStateChanged.getter()
{
  if (one-time initialization token for workoutBuddyStateChanged != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.workoutBuddyStateChanged;

  return v1;
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.headphonesConnectionStatusUpdated(_:);

  return WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:)(a5);
}

uint64_t WorkoutVoiceMomentCoordinator.handleAnnouncement(_:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.handleAnnouncement(_:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.handleAnnouncement(_:)()
{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Announcing utterance in live voice", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[12];

  v6 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v5 + v6, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm_2(v0 + 2, v7);
  LOBYTE(v6) = (*(v8 + 24))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  if (v6)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Workout Buddy not available. Falling back to default announcement services", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = v0[12];

    v13 = v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = v0[10];
      v14 = v0[11];
      v16 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v16 + 24))(v15, v14, ObjectType, v16);
      swift_unknownObjectRelease();
    }

    v18 = swift_task_alloc();
    v0[13] = v18;
    *v18 = v0;
    v18[1] = WorkoutVoiceMomentCoordinator.handleAnnouncement(_:);

    return WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(0);
  }

  else
  {
    v20 = swift_task_alloc();
    v0[14] = v20;
    *v20 = v0;
    v20[1] = WorkoutVoiceMomentCoordinator.handleAnnouncement(_:);
    v21 = v0[11];
    v22 = v0[10];

    return WorkoutVoiceMomentCoordinator.announceUtterance(_:)(v22, v21);
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WorkoutVoiceMomentCoordinator.stopInFlightAnnouncement()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.stopInFlightAnnouncement();

  return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
}

uint64_t protocol witness for WorkoutBuddyAnnouncementHandler.handleAnnouncement(_:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for WorkoutBuddyAnnouncementHandler.handleAnnouncement(_:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.handleAnnouncement(_:)(a1, a2);
}

uint64_t protocol witness for WorkoutBuddyAnnouncementHandler.stopInFlightAnnouncement() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyAnnouncementHandler.stopInFlightAnnouncement() in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
}

double closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:), v8);

  return result;
}

uint64_t closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:), v6, v5);
}

uint64_t closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:), Strong, 0);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v2 = *(v0 + 8);

    return v2();
  }
}

{
  WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(0);

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:), v1, v2);
}

{

  **(v0 + 40) = *(v0 + 80) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t outlined init with copy of WorkoutVoiceMomentCoordinator.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double specialized MusicMomentHandler.setDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
  MusicMomentHandler.stopActiveTasks()();
  *(a2 + 144) = v7;
  swift_unknownObjectWeakAssign();
  *(a2 + 112) = CFAbsoluteTimeGetCurrent();
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type MusicMomentHandler and conformance MusicMomentHandler, type metadata accessor for MusicMomentHandler, &protocol conformance descriptor for MusicMomentHandler);
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = v9;
  v10[4] = a2;
  swift_retain_n();
  *(a2 + 152) = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in MusicMomentHandler.setDelegate(_:), v10);

  return result;
}

uint64_t specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMomentType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A22VoiceMomentCoordinatorC5StateO_AEtMd, &_s11WorkoutCore0A22VoiceMomentCoordinatorC5StateO_AEtMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v25 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(a1, &v25 - v16);
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(a2, &v17[v18]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 6, v19);
  if (v21 <= 2)
  {
    if (!v21)
    {
      outlined init with copy of WorkoutVoiceMomentCoordinator.State(v17, v12);
      if (!v20(&v17[v18], 6, v19))
      {
        (*(v5 + 32))(v8, &v17[v18], v4);
        v22 = static WorkoutVoiceMomentType.== infix(_:_:)();
        v24 = *(v5 + 8);
        v24(v8, v4);
        v24(v12, v4);
        outlined destroy of WorkoutVoiceMomentCoordinator.State(v17, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
        return v22 & 1;
      }

      (*(v5 + 8))(v12, v4);
      goto LABEL_20;
    }

    if (v21 == 1)
    {
      if (v20(&v17[v18], 6, v19) != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v20(&v17[v18], 6, v19) == 2)
    {
      goto LABEL_16;
    }

LABEL_20:
    outlined destroy of Measurement<NSUnitDuration>?(v17, &_s11WorkoutCore0A22VoiceMomentCoordinatorC5StateO_AEtMd, &_s11WorkoutCore0A22VoiceMomentCoordinatorC5StateO_AEtMR);
    v22 = 0;
    return v22 & 1;
  }

  if (v21 > 4)
  {
    if (v21 == 5)
    {
      if (v20(&v17[v18], 6, v19) != 5)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    if (v20(&v17[v18], 6, v19) == 6)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  if (v21 == 3)
  {
    if (v20(&v17[v18], 6, v19) != 3)
    {
      goto LABEL_20;
    }
  }

  else if (v20(&v17[v18], 6, v19) != 4)
  {
    goto LABEL_20;
  }

LABEL_16:
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v17, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v22 = 1;
  return v22 & 1;
}

uint64_t partial apply for closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset;

  return closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset();
}

uint64_t lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for WorkoutVoiceMomentCoordinator.State(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady();

  return closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(a1, v4, v5, v6);
}

uint64_t specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 192) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v2 + 136) = swift_task_alloc();
  v3 = type metadata accessor for WorkoutState();
  *(v2 + 144) = v3;
  *(v2 + 152) = *(v3 - 8);
  *(v2 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v1, 0);
}

uint64_t specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v2 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.workoutVoice);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Workout Buddy is Muted, skipping connection status update", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.workoutVoice);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 192);
      v13 = swift_slowAlloc();
      *v13 = 67109120;
      *(v13 + 4) = v12;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Setting Workout Buddy connected to %{BOOL}d", v13, 8u);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    v14 = *(v0 + 128);

    v15 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
    swift_beginAccess();
    outlined init with copy of WorkoutBuddyAvailabilityProviding(v14 + v15, v0 + 16);
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v16);
    v19 = (*(v17 + 8) + **(v17 + 8));
    v18 = swift_task_alloc();
    *(v0 + 168) = v18;
    *v18 = v0;
    v18[1] = specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

    return v19(v16, v17);
  }
}

{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  v0[23] = v2;

  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v2, 0);
}

{
  v1 = *(v0 + 128);
  *(v0 + 193) = *(*(v0 + 184) + 112);
  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v1, 0);
}

{
  if (*(v0 + 193))
  {
    v1 = 1;
  }

  else
  {
    v1 = FIShowAudioTranscriptions();
  }

  v2 = *(v0 + 176);
  if (v2 != 1)
  {
    outlined consume of WorkoutVoiceAvailabilityProvider.State(v2);
    v1 = 0;
  }

  v3 = *(v0 + 128);
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_startedDisconnected;
  v5 = *(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_startedDisconnected);
  if (v5 == 2)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
    swift_beginAccess();
    (*(v7 + 16))(v6, v3 + v9, v8);
    WorkoutState.duration.getter();
    v11 = v10;
    (*(v7 + 8))(v6, v8);
    if (((v11 <= 45.0) & v1) == 1)
    {
      v12 = *(v0 + 128);
      v13 = *(v0 + 136);
      *(v3 + v4) = 0;
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
      v15 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
      v16 = swift_allocObject();
      v16[2] = v12;
      v16[3] = v15;
      v16[4] = v12;
      swift_retain_n();
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v13, &closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply, v16);
    }

    else if (*(v3 + v4) == 2)
    {
LABEL_7:
      *(v3 + v4) = (*(v0 + 192) & 1) == 0;
    }
  }

  v18 = *(v0 + 128);
  v17 = *(v0 + 136);
  v19 = *(v0 + 192);
  WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()();
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v21;
  *(v22 + 32) = v18;
  *(v22 + 40) = v19;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v17, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v22);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v2, 0);
}

uint64_t outlined destroy of WorkoutVoiceMomentCoordinator.State(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError()
{
  result = lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError;
  if (!lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError;
  if (!lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError);
  }

  return result;
}

uint64_t outlined assign with take of WorkoutVoiceMoment?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded();

  return closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:);

  return closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(a1, v4, v5, v6);
}

uint64_t keypath_get_54Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return outlined init with copy of Measurement<NSUnitDuration>?(v8 + v9, a5, a3, a4);
}

uint64_t getEnumTagSinglePayload for TimeBasedProgressMomentSupportError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TimeBasedProgressMomentSupportError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.setDelegate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 152) + **(a4 + 152));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.setDelegate(_:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.setMetricsPublisher(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 168) + **(a3 + 168));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.setMetricsPublisher(_:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.conditionsMetForMomentInference()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 192) + **(a2 + 192));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.conditionsMetForMomentInference();

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.generatePeriodicProgressMomentIfSupported()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 208) + **(a2 + 208));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.generatePeriodicProgressMomentIfSupported();

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.checkForBreakthroughs()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 216) + **(a2 + 216));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.checkForBreakthroughs();

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.generateOutroMoment()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 224) + **(a2 + 224));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.generateOutroMoment();

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 232) + **(a2 + 232));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.announceMoment(momentGenerationDuration:moment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v14 = (*(a4 + 240) + **(a4 + 240));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.announceMoment(momentGenerationDuration:moment:);
  v12.n128_f64[0] = a5;

  return v14(a1, a2, a3, a4, v12);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 248) + **(a4 + 248));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 256) + **(a3 + 256));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 272) + **(a4 + 272));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.stopActiveTasks(isGeneratingOutro:workoutWasEnded:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.cancelAnyPendingAnnouncements()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 288) + **(a2 + 288));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.cancelAnyPendingAnnouncements();

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.setWorkoutBuddyMuted(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 296) + **(a3 + 296));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.setWorkoutBuddyMuted(_:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of WorkoutBuddyMomentCoordinating.updateSplitEvents(_:shouldAnnounceSplit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 304) + **(a4 + 304));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of WorkoutBuddyMomentCoordinating.updateSplitEvents(_:shouldAnnounceSplit:);

  return v11(a1, a2, a3, a4);
}

void type metadata completion function for WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  type metadata accessor for WorkoutState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(319, &lazy cache variable for type metadata for Published<WorkoutVoiceMomentCoordinator.State>, type metadata accessor for WorkoutVoiceMomentCoordinator.State, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(319, &lazy cache variable for type metadata for InferenceResult?, MEMORY[0x277D0A020], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(319, &lazy cache variable for type metadata for WorkoutVoiceMoment?, MEMORY[0x277D0A268], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for InferenceClient();
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(319, &lazy cache variable for type metadata for AnnounceUtteranceRequest?, MEMORY[0x277D0A510], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(uint64_t a1)
{
  v6 = (*(*v1 + 872) + **(*v1 + 872));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:);

  return v6(a1);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.setDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 880) + **(*v2 + 880));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.setDelegate(_:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 896) + **(*v1 + 896));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:);

  return v6(a1);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference()()
{
  v4 = (*(*v0 + 920) + **(*v0 + 920));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference();

  return v4();
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 944) + **(*v2 + 944));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(uint64_t a1, uint64_t a2, double a3)
{
  v11 = (*(*v3 + 984) + **(*v3 + 984));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:);
  v9.n128_f64[0] = a3;

  return v11(a1, a2, v9);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported()()
{
  v4 = (*(*v0 + 1000) + **(*v0 + 1000));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported();

  return v4();
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.checkForBreakthroughs()()
{
  v4 = (*(*v0 + 1008) + **(*v0 + 1008));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.checkForBreakthroughs();

  return v4();
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.generateOutroMoment()()
{
  v4 = (*(*v0 + 1016) + **(*v0 + 1016));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.generateOutroMoment();

  return v4();
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 1048) + **(*v2 + 1048));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 1064) + **(*v2 + 1064));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.cancelAnyPendingAnnouncements()()
{
  v4 = (*(*v0 + 1152) + **(*v0 + 1152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.cancelAnyPendingAnnouncements();

  return v4();
}

uint64_t dispatch thunk of WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 1168) + **(*v1 + 1168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:);

  return v6(a1);
}

void type metadata accessor for Published<WorkoutVoiceMomentCoordinator.State>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata completion function for WorkoutVoiceMomentCoordinator.State(uint64_t a1)
{
  type metadata accessor for (momentType: WorkoutVoiceMomentType)();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void type metadata accessor for (momentType: WorkoutVoiceMomentType)()
{
  if (!lazy cache variable for type metadata for (momentType: WorkoutVoiceMomentType))
  {
    v0 = type metadata accessor for WorkoutVoiceMomentType();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (momentType: WorkoutVoiceMomentType));
    }
  }
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(a1, v4, v5, v6);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);

  return closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(a1, v5, v4);
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();

  return closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()(a1, v4, v5, v7, v6);
}

void *__swift_project_boxed_opaque_existential_1Tm_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:);

  return closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset;

  return closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset(a1, v4, v5, v6);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didsetpartial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didsetpartial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didsetpartial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset(a1, v4, v5, v6);
}

uint64_t block_copy_helper_228(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);

  return closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(a1, v5, v4);
}

uint64_t outlined assign with copy of AnnounceUtteranceRequest?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset;

  return closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset(a1, v4, v5, v6);
}

uint64_t outlined init with copy of Measurement<NSUnitDuration>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didsetpartial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didsetpartial apply;

  return closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript();

  return closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:);

  return closure #1 in closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

  return closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(a1, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_8(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in MusicMomentHandler.setDelegate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in MusicMomentHandler.setDelegate(_:);

  return closure #1 in MusicMomentHandler.setDelegate(_:)(a1, v4, v5, v6);
}

uint64_t specialized WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(void *a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, char *a10, char *a11)
{
  v12 = v11;
  v288 = a8;
  v289 = a7;
  v290 = a6;
  v280 = a5;
  v253 = a4;
  v291 = a3;
  v277 = a2;
  v245 = a1;
  v287 = a9;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v261 = &v239 - v15;
  v259 = type metadata accessor for WorkoutVoiceSession.Mode();
  v258 = *(v259 - 8);
  MEMORY[0x28223BE20](v259, v16);
  v260 = &v239 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = type metadata accessor for FitnessIntelligenceConnection();
  v285 = *(v286 - 8);
  MEMORY[0x28223BE20](v286, v18);
  v257 = &v239 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence0A17ContextDemoConfigVSgMd, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMR);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v252 = &v239 - v22;
  v263 = type metadata accessor for FitnessContextDemoConfig();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263, v23);
  v255 = &v239 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v251 = &v239 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v250 = &v239 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v249 = &v239 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v248 = &v239 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v39 = MEMORY[0x28223BE20](v37 - 8, v38);
  v247 = &v239 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v276 = &v239 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v275 = &v239 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v274 = &v239 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v273 = &v239 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v54 = MEMORY[0x28223BE20](v52 - 8, v53);
  v272 = &v239 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v56);
  v271 = &v239 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v60 = MEMORY[0x28223BE20](v58 - 8, v59);
  v244 = &v239 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v62);
  v270 = &v239 - v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  MEMORY[0x28223BE20](v64 - 8, v65);
  v269 = &v239 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v69 = MEMORY[0x28223BE20](v67 - 8, v68);
  v268 = &v239 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69, v71);
  v267 = &v239 - v72;
  v243 = type metadata accessor for Date();
  v242 = *(v243 - 8);
  MEMORY[0x28223BE20](v243, v73);
  v266 = &v239 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = type metadata accessor for WorkoutGoal();
  v283 = *(v284 - 8);
  MEMORY[0x28223BE20](v284, v75);
  v265 = &v239 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for WorkoutState();
  v281 = *(v282 - 8);
  v78 = MEMORY[0x28223BE20](v282, v77);
  v256 = &v239 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = v79;
  MEMORY[0x28223BE20](v78, v80);
  v296 = &v239 - v81;
  v279 = type metadata accessor for UUID();
  v278 = *(v279 - 8);
  v83 = MEMORY[0x28223BE20](v279, v82);
  v264 = &v239 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v83, v85);
  v292 = &v239 - v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v89 = MEMORY[0x28223BE20](v87 - 8, v88);
  v91 = &v239 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v89, v92);
  v241 = &v239 - v93;
  v94 = type metadata accessor for WorkoutVoiceTranscript();
  v95 = *(v94 - 8);
  v293 = v94;
  v294 = v95;
  v97 = MEMORY[0x28223BE20](v94, v96);
  v246 = &v239 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = MEMORY[0x28223BE20](v97, v99);
  v240 = &v239 - v101;
  MEMORY[0x28223BE20](v100, v102);
  v295 = &v239 - v103;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  v105 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v106);
  v108 = &v239 - v107;
  v109 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v111 = MEMORY[0x28223BE20](v109, v110);
  v113 = &v239 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v111, v114);
  v116 = &v239 - v115;
  swift_defaultActor_initialize();
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isAnnouncementHandlerSet) = 0;
  v117 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator__state;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v118 - 8) + 56))(v116, 1, 6, v118);
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v116, v113);
  Published.init(initialValue:)();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v116, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v119 = v12 + v117;
  v120 = v287;
  (*(v105 + 32))(v119, v108, v104);
  v121 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_outroInferenceResult;
  v122 = type metadata accessor for InferenceResult();
  (*(*(v122 - 8) + 56))(v12 + v121, 1, 1, v122);
  v123 = v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  *v123 = 0;
  *(v123 + 8) = 1;
  v124 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
  v125 = type metadata accessor for WorkoutVoiceMoment();
  v126 = *(*(v125 - 8) + 56);
  v126(v12 + v124, 1, 1, v125);
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasCheckedForHealthDataAvailability) = 0;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession) = 0;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider) = 0;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_metricsPublisher) = 0;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_startedDisconnected) = 2;
  v127 = (v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey);
  *v127 = 0xD00000000000001DLL;
  v127[1] = 0x800000020B4694B0;
  v128 = v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey;
  strcpy((v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey), "workoutIsMuted");
  *(v128 + 15) = -18;
  v129 = (v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey);
  *v129 = 0xD000000000000011;
  v129[1] = 0x800000020B4694D0;
  v126(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight, 1, 1, v125);
  v130 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  v131 = type metadata accessor for AnnounceUtteranceRequest();
  (*(*(v131 - 8) + 56))(v12 + v130, 1, 1, v131);
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) = 0;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_didPrefetchOutroContext) = 0;
  v132 = [v120 configuration];
  v297 = v12;
  *(v12 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration) = v132;
  v133 = [v120 configuration];
  v134 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v135 = *&v133[v134];

  if (v135 == 10 && (v136 = [objc_opt_self() standardUserDefaults], v137 = *v127, v138 = v127[1], , v139 = MEMORY[0x20F2E6C00](v137, v138), , v140 = objc_msgSend(v136, sel_stringForKey_, v139), v136, v139, v140))
  {
    v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v143 = v142;

    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v144 = type metadata accessor for Logger();
    v145 = __swift_project_value_buffer(v144, static WOLog.workoutVoice);

    v146 = Logger.logObject.getter();
    v147 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      *&v298 = v149;
      *v148 = 136315138;
      *(v148 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v141, v143, &v298);
      _os_log_impl(&dword_20AEA4000, v146, v147, "Found a persisted session identifier for recovery: %s", v148, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v149);
      MEMORY[0x20F2E9420](v149, -1, -1);
      MEMORY[0x20F2E9420](v148, -1, -1);
    }

    v150 = v278;
    v151 = v292;
    v152 = v294;
    v153 = v241;
    UUID.init(uuidString:)();

    v154 = v297;
    outlined init with take of InferenceResult?(v153, v297 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v155 = [v120 builder];
    v156 = v279;
    if (v155)
    {
      v241 = v145;
      v157 = v155;
      v158 = [v155 metadata];

      v159 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(v159 + 16) && (v160 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, 0x800000020B4687C0), (v161 & 1) != 0))
      {
        outlined init with copy of Any(*(v159 + 56) + 32 * v160, &v298);

        if (swift_dynamicCast())
        {
          lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceTranscript and conformance WorkoutVoiceTranscript, MEMORY[0x277D0A498], MEMORY[0x277D0A490]);
          v162 = v240;
          v163 = v293;
          SnapshotSerializable.init(protobufData:)();
          (*(v152 + 32))(v295, v162, v163);
          v154 = v297;
          goto LABEL_16;
        }
      }

      else
      {
      }

      v154 = v297;
    }

    WorkoutVoiceTranscript.init(entries:)();
  }

  else
  {
    v150 = v278;
    v154 = v297;
    v156 = v279;
    (*(v278 + 56))(v297 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, 1, 1, v279);
    WorkoutVoiceTranscript.init(entries:)();
    v151 = v292;
  }

LABEL_16:
  *(v154 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionActivity) = v120;
  outlined init with copy of Measurement<NSUnitDuration>?(v154 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v164 = *(v150 + 48);
  v165 = v164(v91, 1, v156);
  v166 = v280;
  if (v165 == 1)
  {
    v167 = v120;
    UUID.init()();
    if (v164(v91, 1, v156) != 1)
    {
      outlined destroy of Measurement<NSUnitDuration>?(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v150 + 32))(v151, v91, v156);
    v168 = v120;
  }

  v241 = a11;
  v240 = a10;
  v169 = v245;
  v239 = static WorkoutVoiceAlert.makeConfiguredAlerts(activityType:unitManager:)(v245, v166);
  (*(v150 + 16))(v264, v151, v156);
  (*(v283 + 16))(v265, v291, v284);
  v245 = v169;
  Date.init()();
  v170 = *(v242 + 56);
  v171 = v243;
  v170(v267, 1, 1, v243);
  v170(v268, 1, 1, v171);
  v172 = type metadata accessor for WeatherCondition();
  (*(*(v172 - 8) + 56))(v269, 1, 1, v172);
  v173 = objc_opt_self();
  v174 = v277;
  v175 = [v173 miles];
  _sSo8NSObjectCMaTm_4(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v176 = v270;
  Measurement.init(value:unit:)();
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v178 = *(*(v177 - 8) + 56);
  v178(v176, 0, 1, v177);
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v180 = *(*(v179 - 8) + 56);
  v180(v271, 1, 1, v179);
  v180(v272, 1, 1, v179);
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v181 - 8) + 56))(v273, 1, 1, v181);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v183 = *(*(v182 - 8) + 56);
  v183(v274, 1, 1, v182);
  v183(v275, 1, 1, v182);
  v183(v276, 1, 1, v182);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v184 - 8) + 56))(v248, 1, 1, v184);
  v178(v244, 1, 1, v177);
  v185 = MEMORY[0x277D84F90];
  v243 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12HKSampleTypeC_SaySo0C0CGTt0g5Tf4g_n(v185);
  v186 = type metadata accessor for WorkoutMediaDetails();
  (*(*(v186 - 8) + 56))(v249, 1, 1, v186);
  v187 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v187 - 8) + 56))(v250, 1, 1, v187);
  v183(v247, 1, 1, v182);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  (*(*(v188 - 8) + 56))(v251, 1, 1, v188);
  v189 = v296;
  v190 = v245;
  WorkoutState.init(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  v191 = (v281 + 16);
  v192 = *(v281 + 16);
  v192(v297 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState, v189, v282);
  type metadata accessor for NLWorkoutDemoUtilities();
  v193 = v252;
  static NLWorkoutDemoUtilities.fitnessContextDemoConfig()(v252);
  v194 = v262;
  v195 = v263;
  if ((*(v262 + 48))(v193, 1, v263) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v193, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMd, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMR);
    type metadata accessor for WorkoutVoiceSession();
    (*(v285 + 16))(v257, v290, v286);
    (*(v258 + 104))(v260, *MEMORY[0x277D0A360], v259);
    (*(v294 + 16))(v246, v295, v293);
    v196 = v280;
    v197 = WorkoutVoiceSession.__allocating_init(connection:unitManager:mode:transcript:)();
    v198 = 0;
  }

  else
  {
    (*(v194 + 32))(v255, v193, v195);
    v199 = v290;
    v200 = v286;
    v201 = v285;
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v276 = v191;
    v277 = v192;
    v202 = type metadata accessor for Logger();
    __swift_project_value_buffer(v202, static WOLog.workoutVoice);
    v203 = Logger.logObject.getter();
    v204 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      *v205 = 0;
      _os_log_impl(&dword_20AEA4000, v203, v204, "[DemoMode] Using demo config", v205, 2u);
      MEMORY[0x20F2E9420](v205, -1, -1);
    }

    type metadata accessor for WorkoutVoiceSession();
    (*(v201 + 16))(v257, v199, v200);
    v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV4date_So21FIWorkoutActivityTypeC08activityF019FitnessIntelligence0H17ContextDemoConfigV6configtMd, &_s10Foundation4DateV4date_So21FIWorkoutActivityTypeC08activityF019FitnessIntelligence0H17ContextDemoConfigV6configtMR);
    v207 = *(v206 + 48);
    v208 = *(v206 + 64);
    v209 = v280;
    v210 = v260;
    static Date.now.getter();
    v211 = v190;
    *&v210[v207] = v190;
    v212 = v262;
    v213 = v255;
    v214 = v263;
    (*(v262 + 16))(&v210[v208], v255, v263);
    (*(v258 + 104))(v210, *MEMORY[0x277D0A358], v259);
    (*(v294 + 16))(v246, v295, v293);
    v215 = v211;
    v197 = WorkoutVoiceSession.__allocating_init(connection:unitManager:mode:transcript:)();
    (*(v212 + 8))(v213, v214);
    v198 = 1;
    v192 = v277;
  }

  v216 = v297;
  *(v297 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession) = v197;
  *(v216 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isDemoMode) = v198;
  v217 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_inferenceClient;
  v277 = type metadata accessor for InferenceClient();
  v280 = *(v277 - 1);
  (*(v280 + 2))(v216 + v217, v289, v277);
  v218 = v288;
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v288, v216 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider);
  v219 = (v216 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
  v220 = v241;
  *v219 = v240;
  v219[1] = v220;
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v218, &v298);
  type metadata accessor for WorkoutBuddyDisplayStateHandler();
  v221 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v221 + 112) = 131330;
  *(v221 + 116) = 6;
  *(v221 + 128) = 0;
  swift_unknownObjectWeakInit();
  outlined init with take of WorkoutBuddyAvailabilityProviding(&v298, v221 + 136);
  *(v216 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler) = v221;
  v222 = *(v216 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  type metadata accessor for BreakthroughMomentChecker();
  v223 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v223 + 136) = 0;
  swift_unknownObjectWeakInit();
  *(v223 + 120) = v222;
  *(v223 + 112) = 0;
  *(v216 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_breakthroughMomentChecker) = v223;
  type metadata accessor for MusicMomentHandler();
  swift_allocObject();
  *(v216 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler) = MusicMomentHandler.init()();
  _sSo8NSObjectCMaTm_4(0, &lazy cache variable for type metadata for FIWorkoutDefaultMetricsProvider, 0x277D095E8);
  v224 = v282;
  *(&v299 + 1) = v282;
  v300 = MEMORY[0x277D09FA0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v298);
  v226 = v296;
  v192(boxed_opaque_existential_1, v296, v224);
  v227 = static FIWorkoutDefaultMetricsProvider.getSupportedMetrics(for:)();
  __swift_destroy_boxed_opaque_existential_1Tm_19(&v298);
  *(v216 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_supportedMetrics) = v227;
  type metadata accessor for BluetoothHeadphonesMonitor();
  v298 = 0u;
  v299 = 0u;
  v300 = 0;
  swift_allocObject();
  *(v216 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor) = BluetoothHeadphonesMonitor.init(routeDetectorFactory:)(&v298);
  v228 = type metadata accessor for TaskPriority();
  v229 = *(*(v228 - 8) + 56);
  v230 = v261;
  v229(v261, 1, 1, v228);
  v231 = v256;
  v192(v256, v226, v224);
  v232 = v281;
  v233 = (*(v281 + 80) + 40) & ~*(v281 + 80);
  v234 = swift_allocObject();
  *(v234 + 2) = 0;
  *(v234 + 3) = 0;
  *(v234 + 4) = v216;
  (*(v232 + 32))(&v234[v233], v231, v224);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v230, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), v234);

  v229(v230, 1, 1, v228);
  v235 = swift_allocObject();
  v235[2] = 0;
  v235[3] = 0;
  v236 = v287;
  v235[4] = v287;
  v235[5] = v216;
  v237 = v236;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v230, &async function pointer to partial apply for closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), v235);

  __swift_destroy_boxed_opaque_existential_1Tm_19(v288);
  (*(v280 + 1))(v289, v277);
  (*(v285 + 8))(v290, v286);
  (*(v283 + 8))(v291, v284);
  (*(v232 + 8))(v296, v224);
  (*(v278 + 8))(v292, v279);
  (*(v294 + 8))(v295, v293);
  return v216;
}

uint64_t outlined destroy of Measurement<NSUnitDuration>?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of WorkoutBuddyAvailabilityProviding(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _sSo8NSObjectCMaTm_4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t partial apply for closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(uint64_t a1)
{
  v4 = *(type metadata accessor for WorkoutState() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);

  return closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);

  return closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(a1, v4, v5, v7, v6);
}

uint64_t outlined init with take of InferenceResult?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t ElevationSampleBridge.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WOElevationSample_bridgedValue;
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ElevationSampleBridge.value.getter()
{
  v1 = v0 + OBJC_IVAR___WOElevationSample_bridgedValue;
  v2 = *(v1 + *(type metadata accessor for ElevationSample(0) + 20));

  return v2;
}

id ElevationSampleBridge.__allocating_init(_:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  outlined init with copy of ElevationSample(a1, v3 + OBJC_IVAR___WOElevationSample_bridgedValue);
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  outlined destroy of ElevationSample(a1);
  return v4;
}

id ElevationSampleBridge.init(_:)(uint64_t a1)
{
  outlined init with copy of ElevationSample(a1, v1 + OBJC_IVAR___WOElevationSample_bridgedValue);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ElevationSampleBridge(0);
  v3 = objc_msgSendSuper2(&v5, sel_init);
  outlined destroy of ElevationSample(a1);
  return v3;
}

uint64_t type metadata accessor for ElevationSampleBridge(uint64_t a1)
{
  result = type metadata singleton initialization cache for ElevationSampleBridge;
  if (!type metadata singleton initialization cache for ElevationSampleBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ElevationSampleBridge.__allocating_init(date:value:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___WOElevationSample_bridgedValue];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  *&v6[*(type metadata accessor for ElevationSample(0) + 20)] = a2;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

id ElevationSampleBridge.init(date:value:)(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR___WOElevationSample_bridgedValue];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  *&v5[*(type metadata accessor for ElevationSample(0) + 20)] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ElevationSampleBridge(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  (*(v7 + 8))(a1, v6);
  return v8;
}

id ElevationSampleBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ElevationSampleBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ElevationSampleBridge(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for ElevationSampleBridge(uint64_t a1)
{
  result = type metadata accessor for ElevationSample(319);
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

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id RaceCoordinator.__allocating_init(configuration:builder:healthStore:)(char *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized RaceCoordinator.init(configuration:builder:healthStore:)(a1, a2, a3);

  return v8;
}

Class @objc RaceCoordinator.clusterUUID.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5);
  v10.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);

  return v10.super.isa;
}

uint64_t RaceCoordinator.clusterUUID.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t RaceCoordinator.routeTitle.getter()
{
  v1 = (v0 + OBJC_IVAR___WORaceCoordinator_routeTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double RaceCoordinator.routeTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WORaceCoordinator_routeTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double RaceCoordinator.routeDelegate.getter()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double RaceCoordinator.routeDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WORaceCoordinator_routeDelegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

id RaceCoordinator.init(configuration:builder:healthStore:)(char *a1, void *a2, void *a3)
{
  v6 = specialized RaceCoordinator.init(configuration:builder:healthStore:)(a1, a2, a3);

  return v6;
}

Swift::Void __swiftcall RaceCoordinator.activate()()
{
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.race);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = &OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v22 = v7;
    *v6 = 136315650;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    if (v2[OBJC_IVAR___WORaceCoordinator_raceFilter])
    {
      v11 = 1953718604;
    }

    else
    {
      v11 = 0x6C616E6F73726550;
    }

    if (v2[OBJC_IVAR___WORaceCoordinator_raceFilter])
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xED00007473654220;
    }

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v22);

    *(v6 + 14) = v13;
    v5 = &OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityBeginDate;
    *(v6 + 22) = 2080;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v22);

    *(v6 + 24) = v16;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Race Coordinator: Activating with cluster: %s, raceFilter: %s, workoutUUID: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v17 = *&v2[OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 24];
  v18 = *&v2[OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR___WORaceCoordinator_raceRouteDataStore], v17);
  v19 = v5[59];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v18 + 16);

  v21(&v2[v19], 0, partial apply for closure #1 in RaceCoordinator.activate(), v20, v17, v18, -1.0);
}

void closure #1 in RaceCoordinator.activate()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  if (v14)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.race);
    v18 = v13;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = MEMORY[0x20F2E7F50](aBlock[7], aBlock[8]);
      v25 = v24;
      outlined consume of Result<RaceRoute, Error>(v13, 1);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, aBlock);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_20AEA4000, v19, v20, "Race Coordinator: Not activating due to query route failure %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_20(v22);
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {

      outlined consume of Result<RaceRoute, Error>(v13, 1);
    }

    return;
  }

  v62 = v9;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static WOLog.race);

  v61[1] = v28;
  v29 = Logger.logObject.getter();
  LOBYTE(v30) = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v63 = v13 >> 62;
  v64 = v4;
  if (!v31)
  {
    outlined consume of Result<RaceRoute, Error>(v13, 0);
    goto LABEL_15;
  }

  v32 = swift_slowAlloc();
  *v32 = 134217984;
  if (v13 >> 62)
  {
    goto LABEL_53;
  }

  v33 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v32 + 4) = v33;
    v34 = v32;
    outlined consume of Result<RaceRoute, Error>(v13, 0);
    _os_log_impl(&dword_20AEA4000, v29, v30, "Race Coordinator: queried route of total length %ld", v34, 0xCu);
    MEMORY[0x20F2E9420](v34, -1, -1);
LABEL_15:

    type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v30 = static OS_dispatch_queue.main.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = v16;
    *(v35 + 24) = v13;
    aBlock[4] = partial apply for closure #1 in closure #1 in RaceCoordinator.activate();
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_26;
    v36 = _Block_copy(aBlock);
    outlined copy of Result<RaceRoute, Error>(v13, 0);
    v16 = v16;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v12, v7, v36);
    _Block_release(v36);

    (*(v64 + 8))(v7, v3);
    (*(v62 + 8))(v12, v8);
    v8 = v63;
    if (!v63)
    {
      break;
    }

    if (v13 < 0)
    {
      v29 = v13;
    }

    else
    {
      v29 = (v13 & 0xFFFFFFFFFFFFFF8);
    }

    v3 = __CocoaSet.count.getter();
    v32 = __CocoaSet.count.getter();
    if ((v32 & 0x8000000000000000) == 0)
    {
      if (v3 >= 0xE10)
      {
        v60 = 3600;
      }

      else
      {
        v60 = v3;
      }

      if (v3 >= 0)
      {
        v38 = v60;
      }

      else
      {
        v38 = 3600;
      }

      if (__CocoaSet.count.getter() < v38)
      {
        goto LABEL_64;
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_53:
    v59 = v32;
    v33 = __CocoaSet.count.getter();
    v32 = v59;
  }

  v37 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37 >= 0xE10)
  {
    v38 = 3600;
  }

  else
  {
    v38 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v37 < v38)
  {
LABEL_64:
    __break(1u);
    return;
  }

LABEL_20:
  if ((v13 & 0xC000000000000001) == 0)
  {

    goto LABEL_28;
  }

  if (!v38)
  {

    if (v8)
    {
      goto LABEL_29;
    }

LABEL_28:
    v41 = 0;
    v42 = (v13 & 0xFFFFFFFFFFFFFF8);
    v43 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
    v44 = (2 * v38) | 1;
    goto LABEL_31;
  }

  type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);

  v39 = 0;
  do
  {
    v40 = v39 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v39);
    v39 = v40;
  }

  while (v38 != v40);
  if (!v8)
  {
    goto LABEL_28;
  }

LABEL_29:
  outlined consume of Result<RaceRoute, Error>(v13, 0);
  v42 = _CocoaArrayWrapper.subscript.getter();
  v41 = v45;
  v44 = v46;
  if ((v46 & 1) == 0)
  {
LABEL_30:
    specialized _copyCollectionToContiguousArray<A>(_:)(v42, v43, v41, v44);
    v44 = v47;
    goto LABEL_37;
  }

LABEL_31:
  v48 = v43;
  v49 = type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v50 = swift_dynamicCastClass();
  if (!v50)
  {
    swift_unknownObjectRelease();
    v50 = MEMORY[0x277D84F90];
  }

  v51 = *(v50 + 16);

  if (__OFSUB__(v44 >> 1, v41))
  {
    __break(1u);
LABEL_55:
    v52 = __CocoaSet.count.getter();
    goto LABEL_42;
  }

  if (v51 != (v44 >> 1) - v41)
  {
    swift_unknownObjectRelease();
    v43 = v48;
    goto LABEL_30;
  }

  v44 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v44)
  {
    goto LABEL_38;
  }

  v44 = MEMORY[0x277D84F90];
LABEL_37:
  swift_unknownObjectRelease();
LABEL_38:

  v42 = Logger.logObject.getter();
  LOBYTE(v48) = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v42, v48))
  {

    goto LABEL_44;
  }

  v49 = swift_slowAlloc();
  *v49 = 134217984;
  if ((v44 & 0x8000000000000000) != 0 || (v44 & 0x4000000000000000) != 0)
  {
    goto LABEL_55;
  }

  v52 = *(v44 + 16);
LABEL_42:
  *(v49 + 4) = v52;

  _os_log_impl(&dword_20AEA4000, v42, v48, "Race Coordinator: activating route with rolling window of length %ld", v49, 0xCu);
  MEMORY[0x20F2E9420](v49, -1, -1);

LABEL_44:
  v53 = OBJC_IVAR___WORaceCoordinator_racePositionProvider;
  v54 = specialized _arrayForceCast<A, B>(_:)(v44);

  v55 = specialized _arrayConditionalCast<A, B>(_:)(v54);

  v56 = MEMORY[0x277D84F90];
  if (v55)
  {
    v56 = v55;
  }

  aBlock[0] = v56;
  RacePositionProvider.activate(raceRoute:activity:)(aBlock, *&v16[OBJC_IVAR___WORaceCoordinator_activity]);

  v57 = *&v16[v53] + OBJC_IVAR___WORacePositionProvider_routeProviderDelegate;
  swift_beginAccess();
  *(v57 + 8) = &protocol witness table for RaceCoordinator;
  swift_unknownObjectWeakAssign();
  v58 = *&v16[OBJC_IVAR___WORaceCoordinator_raceLocationProvider];
  RaceLocationProvider.activate()();
}

double RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.race);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = a1;
    *(v13 + 12) = 2048;
    *(v13 + 14) = a4;
    _os_log_impl(&dword_20AEA4000, v11, v12, "Race Coordinator: requesting %ld from timestamp %f", v13, 0x16u);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  v14 = *(v5 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 24);
  v15 = *(v5 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore), v14);
  v16 = OBJC_IVAR___WORaceCoordinator_referenceWorkoutUUID;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = *(v15 + 16);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ())?(a2);
  v18(v5 + v16, a1, partial apply for closure #1 in RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:), v17, v14, v15, a4);

  return result;
}

void closure #1 in RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  LOBYTE(v14) = *(a1 + 8);
  v17 = one-time initialization token for race;
  if (v14)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.race);
    v19 = v16;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined consume of Result<RaceRoute, Error>(v16, 1);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = MEMORY[0x20F2E7F50](aBlock[7], aBlock[8]);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_20AEA4000, v20, v21, "Race Coordinator: Failed to query more points %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_20(v23);
      MEMORY[0x20F2E9420](v23, -1, -1);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    if (a2)
    {
      a2(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v36 = v7;

    if (v17 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.race);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v35 = a3;
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      if (v16 >> 62)
      {
        v31 = __CocoaSet.count.getter();
      }

      else
      {
        v31 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v30 + 4) = v31;
      outlined consume of Result<RaceRoute, Error>(v16, 0);
      _os_log_impl(&dword_20AEA4000, v28, v29, "Race Coordinator: queried route of length %ld", v30, 0xCu);
      MEMORY[0x20F2E9420](v30, -1, -1);
      a3 = v35;
    }

    else
    {
      outlined consume of Result<RaceRoute, Error>(v16, 0);
    }

    type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v32 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    v33[2] = a2;
    v33[3] = a3;
    v33[4] = v16;
    aBlock[4] = partial apply for closure #1 in closure #1 in RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_20_1;
    v34 = _Block_copy(aBlock);
    outlined copy of (@escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ())?(a2);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v15, v10, v34);
    _Block_release(v34);

    (*(v36 + 8))(v10, v6);
    (*(v12 + 8))(v15, v11);
  }
}

Swift::Void __swiftcall RaceCoordinator.recoverRoutePoints()()
{
  v1 = *(v0 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 24);
  v2 = *(v0 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___WORaceCoordinator_raceRouteDataStore), v1);
  v3 = OBJC_IVAR___WORaceCoordinator_referenceWorkoutUUID;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v2 + 16);

  v5(v0 + v3, 0, partial apply for closure #1 in RaceCoordinator.recoverRoutePoints(), v4, v1, v2, -1.0);
}

void closure #1 in RaceCoordinator.recoverRoutePoints()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = one-time initialization token for race;
    if (v14)
    {
      if (one-time initialization token for race != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static WOLog.race);
      v19 = v13;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        aBlock[0] = v23;
        *v22 = 136315138;
        swift_getErrorValue();
        v24 = MEMORY[0x20F2E7F50](aBlock[7], aBlock[8]);
        v26 = v25;
        outlined consume of Result<RaceRoute, Error>(v13, 1);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, aBlock);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_20AEA4000, v20, v21, "Race Coordinator: Failed to query whole route %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_20(v23);
        MEMORY[0x20F2E9420](v23, -1, -1);
        MEMORY[0x20F2E9420](v22, -1, -1);
      }

      else
      {

        outlined consume of Result<RaceRoute, Error>(v13, 1);
      }
    }

    else
    {

      if (v17 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static WOLog.race);

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      v31 = os_log_type_enabled(v29, v30);
      v38 = v4;
      if (v31)
      {
        v32 = swift_slowAlloc();
        *v32 = 134217984;
        if (v13 >> 62)
        {
          v33 = __CocoaSet.count.getter();
        }

        else
        {
          v33 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v32 + 4) = v33;
        outlined consume of Result<RaceRoute, Error>(v13, 0);
        _os_log_impl(&dword_20AEA4000, v29, v30, "Race Coordinator: recovering full route of length %ld", v32, 0xCu);
        MEMORY[0x20F2E9420](v32, -1, -1);
      }

      else
      {
        outlined consume of Result<RaceRoute, Error>(v13, 0);
      }

      type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v34 = static OS_dispatch_queue.main.getter();
      v35 = swift_allocObject();
      *(v35 + 16) = v16;
      *(v35 + 24) = v13;
      aBlock[4] = partial apply for closure #1 in closure #1 in RaceCoordinator.recoverRoutePoints();
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_73;
      v36 = _Block_copy(aBlock);
      v37 = v16;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x277D84F90];
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F2E7580](0, v12, v7, v36);
      _Block_release(v36);

      (*(v38 + 8))(v7, v3);
      (*(v9 + 8))(v12, v8);
    }
  }
}

double closure #1 in closure #1 in RaceCoordinator.activate()(uint64_t a1)
{
  v2 = OBJC_IVAR___WORaceCoordinator_routeDelegate;
  swift_beginAccess();
  v4 = *(a1 + v2);
  if (v4)
  {
    type metadata accessor for CLRoutePoint(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
    swift_unknownObjectRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v4 setRoutePoints_];

    swift_unknownObjectRelease();
  }

  return result;
}

id RaceCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RaceCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized RaceCoordinator.init(configuration:builder:healthStore:)(char *a1, void *a2, void *a3)
{
  v4 = v3;
  v37 = a2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR___WORaceCoordinator_routeDelegate] = 0;
  v12 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v13(&v4[OBJC_IVAR___WORaceCoordinator_clusterUUID], &a1[v12], v7);
  swift_getKeyPath();
  swift_getKeyPath();
  v14 = a1;
  static Published.subscript.getter(v40);

  if (LOBYTE(v40[0]) == 1)
  {
    v15 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  }

  else
  {
    v15 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  }

  v16 = &v14[*v15];
  swift_beginAccess();
  v13(v11, v16, v7);
  (*(v8 + 32))(&v4[OBJC_IVAR___WORaceCoordinator_referenceWorkoutUUID], v11, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v40);

  v4[OBJC_IVAR___WORaceCoordinator_raceFilter] = v40[0];
  v17 = &v14[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  swift_beginAccess();
  v18 = *v17;
  v19 = *(v17 + 1);
  v20 = &v4[OBJC_IVAR___WORaceCoordinator_routeTitle];
  *v20 = v18;
  v20[1] = v19;
  v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v22 = *&v14[v21];

  v23 = v22;

  v24 = [v23 identifier];
  v25 = OBJC_IVAR___WORaceCoordinator_activity;
  *&v4[OBJC_IVAR___WORaceCoordinator_activity] = v24;
  v26 = type metadata accessor for RaceRouteDataStore();
  v27 = swift_allocObject();
  *(v27 + 24) = a3;
  *(v27 + 16) = [objc_allocWithZone(MEMORY[0x277CCD868]) initWithHealthStore_];
  v28 = &v4[OBJC_IVAR___WORaceCoordinator_raceRouteDataStore];
  v28[3] = v26;
  v28[4] = &protocol witness table for RaceRouteDataStore;
  *v28 = v27;
  v29 = *&v4[v25];
  v30 = objc_allocWithZone(type metadata accessor for RaceLocationProvider());
  v31 = RaceLocationProvider.init(activity:)(v29);
  *&v4[OBJC_IVAR___WORaceCoordinator_raceLocationProvider] = v31;
  v32 = objc_allocWithZone(type metadata accessor for RacePositionProvider());
  v33 = v31;
  v34 = v37;
  v35 = specialized RacePositionProvider.init(raceLocationProvider:builder:)(v33, v34, v32);

  *&v4[OBJC_IVAR___WORaceCoordinator_racePositionProvider] = v35;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  return objc_msgSendSuper2(&v39, sel_init);
}

uint64_t outlined init with copy of RaceRouteDataStoring(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed [CLRoutePoint]) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for RaceCoordinator(uint64_t a1)
{
  result = type metadata singleton initialization cache for RaceCoordinator;
  if (!type metadata singleton initialization cache for RaceCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for RaceCoordinator(uint64_t a1)
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

double outlined consume of Result<RaceRoute, Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t type metadata accessor for CLRoutePoint(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t partial apply for closure #1 in closure #1 in RaceCoordinator.queryForPoints(timestampAnchor:numberOfPoints:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double outlined copy of Result<RaceRoute, Error>(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

id MultiSportTransitionsStoreBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultiSportTransitionsStoreBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiSportTransitionsStoreBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MultiSportTransitionsStoreBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for MultiSportTransitionsStoreBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t WorkoutPlan.Route.routePoints(timestampAnchor:pointsLimit:)(uint64_t a1, double a2)
{
  v35 = a1;
  v3 = type metadata accessor for RoutePoint();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x277D84F90];
  result = WorkoutPlan.Route.points.getter();
  v9 = result;
  v34 = *(result + 16);
  if (v34)
  {
    v10 = 0;
    v11 = 0;
    v33 = result + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v32[1] = v4 + 16;
    v12 = (v4 + 8);
    v13 = MEMORY[0x277D84F90];
    v14 = 0.0;
    while (v11 < *(v9 + 16))
    {
      (*(v4 + 16))(v7, v33 + *(v4 + 72) * v11, v3);
      if (v10)
      {
        v15 = v10;
        [v15 latitude_deg];
        v17 = v16;
        [v15 longitude_deg];
        v19 = v18;
        RoutePoint.coordinate.getter();
        v20 = CLLocationCoordinate2D.distance(from:)(__PAIR128__(v19, v17));

        v14 = v14 + v20;
      }

      RoutePoint.coordinate.getter();
      v22 = v21;
      RoutePoint.coordinate.getter();
      v24 = v23;
      v25 = COERCE_DOUBLE(RoutePoint.altitude.getter());
      if (v26)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v25;
      }

      v28 = [objc_allocWithZone(MEMORY[0x277CBFC78]) initWithLatitude:1 longitude:v22 altitude:v24 odometer:v27 timestamp:v14 signalEnvironmentType:v14];
      v29 = v28;
      if (v14 >= a2)
      {
        v30 = v28;
        MEMORY[0x20F2E6F30]();
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32[0] = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v13 = v36;
      }

      else
      {
      }

      if (v35 < 1)
      {
        result = (*v12)(v7, v3);
      }

      else
      {
        if (v13 >> 62)
        {
          v31 = __CocoaSet.count.getter();
        }

        else
        {
          v31 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        result = (*v12)(v7, v3);
        if (v31 == v35)
        {

          return v13;
        }
      }

      ++v11;
      v10 = v29;
      if (v34 == v11)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {

    v29 = 0;
    v13 = MEMORY[0x277D84F90];
LABEL_24:

    return v13;
  }

  return result;
}

id RacePositionProvider.__allocating_init(raceLocationProvider:builder:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = specialized RacePositionProvider.__allocating_init(raceLocationProvider:builder:)(v7, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm_21(a1);
  return v8;
}

double RacePositionProvider.raceDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*RacePositionProvider.raceDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___WORacePositionProvider_raceDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return RacePositionProvider.raceDelegate.modify;
}

void RacePositionProvider.raceDelegate.modify(void **a1, char a2)
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

double RacePositionProvider.routeProviderDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___WORacePositionProvider_routeProviderDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*RacePositionProvider.routeProviderDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___WORacePositionProvider_routeProviderDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return RacePositionProvider.routeProviderDelegate.modify;
}

void RacePositionProvider.routeProviderDelegate.modify(uint64_t a1, char a2)
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

id RacePositionProvider.init(raceLocationProvider:builder:)(void *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = specialized RacePositionProvider.init(raceLocationProvider:builder:)(v9, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm_21(a1);
  return v11;
}

double RacePositionProvider.activate(raceRoute:activity:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v10 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.app);
  v16._countAndFlagsBits = 0xD000000000000026;
  v16._object = 0x800000020B469770;
  v17._object = 0x800000020B4697A0;
  v17._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v16, v17);
  v22 = *(v3 + OBJC_IVAR___WORacePositionProvider_queue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a2;
  v19[4] = v14;
  aBlock[4] = partial apply for closure #1 in RacePositionProvider.activate(raceRoute:activity:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_74;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v20);
  _Block_release(v20);
  (*(v24 + 8))(v9, v6);
  (*(v10 + 8))(v13, v23);

  return result;
}

void closure #1 in RacePositionProvider.activate(raceRoute:activity:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v8 = Strong;
  v9 = Strong + OBJC_IVAR___WORacePositionProvider_state;
  if (*(Strong + OBJC_IVAR___WORacePositionProvider_state + 8) != 2 || *(Strong + OBJC_IVAR___WORacePositionProvider_state) != 1)
  {
LABEL_19:

    return;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CBFC48]) init];
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  v3 = v11;
  v12 = [v11 configureWithWorkoutActivityType:a2 bufferSize:3600 offRouteGraceDurationInSec:180];
  if (v12)
  {
    v4 = v12;
    if (one-time initialization token for race == -1)
    {
LABEL_10:
      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static WOLog.race);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v4;
        _os_log_impl(&dword_20AEA4000, v14, v15, "Race Position Provider: Failed to initialize CLRacingRouteManager with result %lu", v16, 0xCu);
        MEMORY[0x20F2E9420](v16, -1, -1);
      }

      if (v4 == 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 8;
      }

      if (v4 == 1)
      {
        v18 = 7;
      }

      else
      {
        v18 = v17;
      }

      lazy protocol witness table accessor for type RaceError and conformance RaceError();
      v19 = swift_allocError();
      *v20 = v18;

      v21 = *v9;
      *v9 = v19;
      v22 = *(v9 + 8);
      *(v9 + 8) = 1;
      outlined consume of RacePositionProvider.State(v21, v22);
      v23 = &v8[OBJC_IVAR___WORacePositionProvider_position];
      *v23 = 3;
      *(v23 + 2) = 0;
      v23[12] = 1;
      goto LABEL_19;
    }

LABEL_49:
    swift_once();
    goto LABEL_10;
  }

  if ([v3 numberOfRoutePointsToAdd] < 1)
  {
LABEL_47:
    RacePositionProvider.subscribeToLocationUpdates()();

    return;
  }

  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v25 = [v3 addRoutePoints_];

  if (!v25)
  {
    if (a3 >> 62)
    {
      v31 = __CocoaSet.count.getter();
      if (!v31)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v31)
      {
LABEL_37:
        if (one-time initialization token for race != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static WOLog.race);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 134217984;
          if (a3 >> 62)
          {
            v42 = __CocoaSet.count.getter();
          }

          else
          {
            v42 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v41 + 4) = v42;

          _os_log_impl(&dword_20AEA4000, v39, v40, "Race Position Provider: Activated CLRacingRouteManager with %ld points", v41, 0xCu);
          MEMORY[0x20F2E9420](v41, -1, -1);
        }

        else
        {
        }

        v43 = *v9;
        *v9 = v3;
        v44 = *(v9 + 8);
        *(v9 + 8) = 0;
        v45 = v3;
        outlined consume of RacePositionProvider.State(v43, v44);
        goto LABEL_47;
      }
    }

    v32 = __OFSUB__(v31, 1);
    v33 = v31 - 1;
    if (v32)
    {
      __break(1u);
    }

    else if ((a3 & 0xC000000000000001) == 0)
    {
      if ((v33 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v33 < *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v34 = *(a3 + 8 * v33 + 32);
LABEL_36:
        v35 = v34;
        [v34 timestamp_s];
        v37 = v36;

        *&v8[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp] = v37;
        goto LABEL_37;
      }

      __break(1u);
      return;
    }

    v34 = MEMORY[0x20F2E7A20](v33, a3);
    goto LABEL_36;
  }

  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static WOLog.race);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134218240;
    if (a3 >> 62)
    {
      v30 = __CocoaSet.count.getter();
    }

    else
    {
      v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v29 + 4) = v30;

    *(v29 + 12) = 2048;
    *(v29 + 14) = v25;
    _os_log_impl(&dword_20AEA4000, v27, v28, "Race Position Provider: Failed to add %ld points to CLRacingRouteManager with result %lu", v29, 0x16u);
    MEMORY[0x20F2E9420](v29, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall RacePositionProvider.subscribeToLocationUpdates()()
{
  v1 = *(v0 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider + 24);
  v2 = *(v0 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider), v1);
  (*(v2 + 8))(v1, v2);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine12AnyPublisherVy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(&lazy protocol witness table cache variable for type AnyPublisher<RaceLocation, RaceError> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine12AnyPublisherVy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR, MEMORY[0x277CBCD90]);
  Publisher.sink(receiveCompletion:receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #1 in RacePositionProvider.subscribeToLocationUpdates()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (v2 != 9)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      lazy protocol witness table accessor for type RaceError and conformance RaceError();
      v5 = swift_allocError();
      *v6 = v2;
      v7 = &v4[OBJC_IVAR___WORacePositionProvider_state];
      v8 = *&v4[OBJC_IVAR___WORacePositionProvider_state];
      *v7 = v5;
      LOBYTE(v6) = v7[8];
      v7[8] = 1;
      outlined consume of RacePositionProvider.State(v8, v6);
    }

    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.race);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136315138;
      v14 = lazy protocol witness table accessor for type RaceError and conformance RaceError();
      v15 = MEMORY[0x20F2E7F50](&type metadata for RaceError, v14);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v18);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_20AEA4000, v10, v11, "Race Position Provider: Transitioning to failed state with %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_21(v13);
      MEMORY[0x20F2E9420](v13, -1, -1);
      MEMORY[0x20F2E9420](v12, -1, -1);
    }
  }
}

void closure #2 in RacePositionProvider.subscribeToLocationUpdates()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = v2;
    RacePositionProvider.handleLocationUpdate(_:)(&v5);
  }
}

void RacePositionProvider.handleLocationUpdate(_:)(uint64_t *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR___WORacePositionProvider_state + 8))
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.race);
    v73 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v73, v15, "Race Position Provider: handleLocation - no active evaluator", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

LABEL_19:
    v35 = v73;

    return;
  }

  v17 = *(v1 + OBJC_IVAR___WORacePositionProvider_state);
  if (*(v1 + OBJC_IVAR___WORacePositionProvider_shouldProcessLocations) != 1)
  {
    v30 = one-time initialization token for race;
    v31 = v17;
    if (v30 == -1)
    {
LABEL_16:
      v32 = type metadata accessor for Logger();
      __swift_project_value_buffer(v32, static WOLog.race);
      v73 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v73, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_20AEA4000, v73, v33, "Race Position Provider: workout paused - do not process location update", v34, 2u);
        MEMORY[0x20F2E9420](v34, -1, -1);
      }

      outlined consume of RacePositionProvider.State(v17, 0);
      goto LABEL_19;
    }

LABEL_46:
    swift_once();
    goto LABEL_16;
  }

  v70 = v11;
  v71 = v4;
  v72 = v10;
  v18 = *a1;
  v81 = 1;
  v19 = *(v1 + OBJC_IVAR___WORacePositionProvider_queue);
  v20 = swift_allocObject();
  v20[2].isa = v17;
  v20[3].isa = &v81;
  v20[4].isa = v1;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in RacePositionProvider.handleLocationUpdate(_:);
  *(v21 + 24) = v20;
  v73 = v20;
  v79 = _sIg_Ieg_TRTA_6;
  v80 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v76 = 1107296256;
  v77 = thunk for @escaping @callee_guaranteed () -> ();
  v78 = &block_descriptor_76;
  v22 = _Block_copy(&aBlock);
  outlined copy of RacePositionProvider.State(v17, 0);
  outlined copy of RacePositionProvider.State(v17, 0);
  v23 = v1;

  dispatch_sync(v19, v22);
  _Block_release(v22);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v81 != 1)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static WOLog.race);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_31;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Race Position Provider: handleLocation - Skipping location processing while filling buffer";
    goto LABEL_30;
  }

  v24 = [v17 advanceToPoint_];
  if (!v24)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static WOLog.race);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_31;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Race Position Provider: handleLocation - positionEvaluator failed to process point";
LABEL_30:
    _os_log_impl(&dword_20AEA4000, v37, v38, v40, v39, 2u);
    MEMORY[0x20F2E9420](v39, -1, -1);
LABEL_31:
    outlined consume of RacePositionProvider.State(v17, 0);

    return;
  }

  v25 = v24;
  v26 = [v24 state];
  v27 = 0.0;
  if (v26 > 2)
  {
    if ((v26 - 4) >= 2)
    {
      if (v26 == 3)
      {
        v28 = 1;
        v29 = 2;
        goto LABEL_37;
      }

      if (v26 == 6)
      {
        v28 = 1;
        v29 = 4;
        goto LABEL_37;
      }
    }

LABEL_36:
    v28 = 1;
    v29 = 3;
    goto LABEL_37;
  }

  if (!v26)
  {
    goto LABEL_36;
  }

  if (v26 == 1)
  {
    [v25 timeAhead_s];
    v42 = v64;
    [v25 currentDistance_m];
    v28 = 0;
    v27 = v65;
    goto LABEL_38;
  }

  if (v26 != 2)
  {
    goto LABEL_36;
  }

  v28 = 1;
  v29 = 1;
LABEL_37:
  v42 = v29;
LABEL_38:
  v43 = (v23 + OBJC_IVAR___WORacePositionProvider_position);
  *v43 = v42;
  v43[2] = v27;
  *(v43 + 12) = v28;
  v44 = *(v23 + OBJC_IVAR___WORacePositionProvider_result);
  *(v23 + OBJC_IVAR___WORacePositionProvider_result) = v25;
  v69 = v25;

  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static WOLog.race);
  v46 = v23;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v68 = v46;

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v49 = 136315138;
    v51 = *v43;
    v52 = *(v43 + 2);
    v53 = *(v43 + 12);
    v74 = v50;
    aBlock = v51;
    LODWORD(v76) = v52;
    BYTE4(v76) = v53;
    v54 = RacePosition.description.getter();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v74);

    *(v49 + 4) = v56;
    _os_log_impl(&dword_20AEA4000, v47, v48, "Race Position Provider: Updated race position to %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_21(v50);
    MEMORY[0x20F2E9420](v50, -1, -1);
    MEMORY[0x20F2E9420](v49, -1, -1);
  }

  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v67 = static OS_dispatch_queue.main.getter();
  v57 = swift_allocObject();
  v58 = v68;
  v59 = v69;
  v57[2] = v68;
  v57[3] = v59;
  v57[4] = v17;
  v79 = partial apply for closure #2 in RacePositionProvider.handleLocationUpdate(_:);
  v80 = v57;
  aBlock = MEMORY[0x277D85DD0];
  v76 = 1107296256;
  v77 = thunk for @escaping @callee_guaranteed () -> ();
  v78 = &block_descriptor_82;
  v60 = _Block_copy(&aBlock);
  outlined copy of RacePositionProvider.State(v17, 0);
  v61 = v58;
  v62 = v59;

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v63 = v67;
  MEMORY[0x20F2E7580](0, v13, v7, v60);
  _Block_release(v60);

  outlined consume of RacePositionProvider.State(v17, 0);
  (*(v71 + 8))(v7, v3);
  (*(v70 + 8))(v13, v72);
}

void closure #1 in RacePositionProvider.handleLocationUpdate(_:)(void *a1, _BYTE *a2, char *a3)
{
  v6 = [a1 numberOfRoutePointsToAdd];
  if (v6 >= 1)
  {
    v7 = v6;
    *a2 = 0;
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.race);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = v7;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Race Position Provider: CLRacingRouteManager requested %ld additional points", v11, 0xCu);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = &a3[OBJC_IVAR___WORacePositionProvider_routeProviderDelegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v13 = *(v12 + 1);
      ObjectType = swift_getObjectType();
      v15 = *&a3[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp];
      v16 = swift_allocObject();
      *(v16 + 16) = a1;
      *(v16 + 24) = a3;
      v17 = *(v13 + 8);
      v18 = a1;
      v19 = a3;
      v17(v7, partial apply for closure #1 in RacePositionProvider.addLocationPoints(numberOfPoints:positionEvaluator:), v16, ObjectType, v13, v15);

      swift_unknownObjectRelease();
    }
  }
}

void closure #2 in RacePositionProvider.handleLocationUpdate(_:)(char *a1, uint64_t a2, void *a3)
{
  aBlock[20] = *MEMORY[0x277D85DE8];
  v6 = [a1 updateHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();
    _Block_release(v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong didUpdate_];
    swift_unknownObjectRelease();
  }

  v9 = [a3 getRaceParameters];
  if (v9)
  {
    v10 = v9;
    aBlock[0] = 0;
    v11 = [objc_opt_self() archivedDataWithRootObject:v9 requiringSecureCoding:1 error:aBlock];
    v12 = aBlock[0];
    if (v11)
    {
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = *&a1[OBJC_IVAR___WORacePositionProvider_metadataDelegate];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD00000000000002BLL;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B4697C0;
      *(inited + 48) = v13;
      *(inited + 56) = v15;
      outlined copy of Data._Representation(v13, v15);
      v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      _sSo8NSObjectCSgWOhTm_15(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v19 = *(v16 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v21 = swift_allocObject();
      v21[2] = v18;
      aBlock[4] = closure #1 in MetadataSavingDelegate.insertOrUpdateMetadata(_:)partial apply;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_89;
      v22 = _Block_copy(aBlock);

      [v19 addMetadata:isa completion:v22];
      _Block_release(v22);

      outlined consume of Data._Representation(v13, v15);
    }

    else
    {
      v26 = v12;
      v27 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for race != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static WOLog.race);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_20AEA4000, v29, v30, "Race Position Provider: Failed to encode CLRacingRouteParameters", v31, 2u);
        MEMORY[0x20F2E9420](v31, -1, -1);
      }
    }
  }

  else
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.race);
    v10 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v10, v24, "Race Position Provider: Received nil CLRacingRouteParameters on location update", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }
  }
}

void closure #1 in RacePositionProvider.addLocationPoints(numberOfPoints:positionEvaluator:)(unint64_t a1, void *a2, char *a3)
{
  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for CLRoutePoint, 0x277CBFC78);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v9 = [a2 addRoutePoints_];

  if (v9)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.race);

    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134218240;
      if (a1 >> 62)
      {
        v13 = __CocoaSet.count.getter();
      }

      else
      {
        v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v12 + 4) = v13;

      *(v12 + 12) = 2048;
      *(v12 + 14) = v9;
      _os_log_impl(&dword_20AEA4000, oslog, v11, "Race Position Provider: Failed to add %ld points to CLRacingRouteManager with result %lu", v12, 0x16u);
      MEMORY[0x20F2E9420](v12, -1, -1);
LABEL_31:

      return;
    }

    goto LABEL_26;
  }

  if (a1 >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    v3 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(a1 + 8 * v15 + 32);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_41;
    }
  }

  v16 = MEMORY[0x20F2E7A20](v14 - 1, a1);
LABEL_15:
  v17 = v16;
  v4 = &selRef_totalDiskCapacity;
  [v16 timestamp_s];
  v19 = v18;

  *&a3[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp] = v19;
  if (v3)
  {
    a3 = MEMORY[0x20F2E7A20](0, a1);
    v20 = MEMORY[0x20F2E7A20](v15, a1);
    goto LABEL_21;
  }

  v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v21)
  {
    __break(1u);
    goto LABEL_43;
  }

  if (v15 >= v21)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v22 = *(a1 + 32 + 8 * v15);
  a3 = *(a1 + 32);
  v20 = v22;
LABEL_21:
  v15 = v20;
  if (one-time initialization token for race != -1)
  {
LABEL_41:
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static WOLog.race);

  oslog = a3;
  v24 = v15;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134218496;
    if (a1 >> 62)
    {
      v28 = __CocoaSet.count.getter();
    }

    else
    {
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v27 + 4) = v28;

    *(v27 + 12) = 2048;
    [oslog v4[81]];
    *(v27 + 14) = v29;
    *(v27 + 22) = 2048;
    [v24 v4[81]];
    *(v27 + 24) = v30;
    _os_log_impl(&dword_20AEA4000, v25, v26, "Race Position Provider: Added %ld points from timestamp %f to %f to CLRacingRouteManager", v27, 0x20u);
    MEMORY[0x20F2E9420](v27, -1, -1);

    goto LABEL_31;
  }

LABEL_26:
}

Swift::Void __swiftcall RacePositionProvider.updateWithElapsedTime(_:)(Swift::Double a1)
{
  v2 = *(v1 + OBJC_IVAR___WORacePositionProvider_metadataDelegate);
  v3 = OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime;
  v4 = *(v2 + OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime);
  if (v4 < a1 && *(v2 + OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout) <= a1 - v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = [Strong metadata];
      swift_unknownObjectRelease();
      v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v9 = *(v2 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    aBlock[4] = _s11WorkoutCore22MetadataSavingDelegateC014insertOrUpdateC0yySDySSypGFySb_s5Error_pSgtYbcfU_TA_0;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_11_0;
    v12 = _Block_copy(aBlock);

    [v9 addMetadata:isa completion:v12];
    _Block_release(v12);

    *(v2 + v3) = a1;
  }
}

Swift::Void __swiftcall RacePositionProvider.accumulatorDidStop()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___WORacePositionProvider_metadataDelegate);
  MetadataSavingDelegate.saveMetadata()();
  v3 = *(v0 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider + 24);
  v4 = *(v0 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider), *(v1 + OBJC_IVAR___WORacePositionProvider_raceLocationProvider + 24));
  (*(v4 + 16))(v3, v4);
  v5 = OBJC_IVAR___WOMetadataSavingDelegate_builder;
  v6 = *(v2 + OBJC_IVAR___WOMetadataSavingDelegate_builder);
  v7 = MEMORY[0x20F2E6C00](0xD00000000000002BLL, 0x800000020B4697C0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0xD00000000000002BLL;
  *(v8 + 24) = 0x800000020B4697C0;
  v29 = _s11WorkoutCore22MetadataSavingDelegateC06removeC0yySSFySb_s5Error_pSgtYbcfU_TA_0;
  v30 = v8;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v28 = &block_descriptor_17;
  v9 = _Block_copy(&v25);

  [v6 _removeMetadata_completion_];
  _Block_release(v9);

  v10 = *(v2 + v5);
  v11 = MEMORY[0x20F2E6C00](0xD000000000000026, 0x800000020B465260);
  v12 = swift_allocObject();
  *(v12 + 16) = 0xD000000000000026;
  *(v12 + 24) = 0x800000020B465260;
  v29 = closure #1 in MetadataSavingDelegate.removeMetadata(_:)partial apply;
  v30 = v12;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v28 = &block_descriptor_24_5;
  v13 = _Block_copy(&v25);

  [v10 _removeMetadata_completion_];
  _Block_release(v13);

  v14 = *(v2 + v5);
  v15 = MEMORY[0x20F2E6C00](0xD000000000000028, 0x800000020B465290);
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000028;
  *(v16 + 24) = 0x800000020B465290;
  v29 = closure #1 in MetadataSavingDelegate.removeMetadata(_:)partial apply;
  v30 = v16;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v28 = &block_descriptor_31_4;
  v17 = _Block_copy(&v25);

  [v14 _removeMetadata_completion_];
  _Block_release(v17);

  v18 = *(v2 + v5);
  v19 = MEMORY[0x20F2E6C00](0xD00000000000002DLL, 0x800000020B4652C0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD00000000000002DLL;
  *(v20 + 24) = 0x800000020B4652C0;
  v29 = closure #1 in MetadataSavingDelegate.removeMetadata(_:)partial apply;
  v30 = v20;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v28 = &block_descriptor_38_0;
  v21 = _Block_copy(&v25);

  [v18 _removeMetadata_completion_];
  _Block_release(v21);

  v22 = v1 + OBJC_IVAR___WORacePositionProvider_state;
  v23 = *(v1 + OBJC_IVAR___WORacePositionProvider_state);
  *v22 = 1;
  v24 = *(v22 + 8);
  *(v22 + 8) = 2;
  outlined consume of RacePositionProvider.State(v23, v24);
}

void RacePositionProvider.sessionActivity(_:didChangeFrom:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3 - 3;
  if (a3 - 3) <= 6 && ((0x6Fu >> v4))
  {
    *(v3 + OBJC_IVAR___WORacePositionProvider_shouldProcessLocations) = 0x1000000uLL >> (8 * v4);
  }
}

Swift::Void __swiftcall RacePositionProvider.recoverFrom(_:)(HKLiveWorkoutBuilder a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v84 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v1[OBJC_IVAR___WORacePositionProvider_state];
  v13 = *&v1[OBJC_IVAR___WORacePositionProvider_state];
  *v12 = 0;
  v14 = v12[8];
  v12[8] = 2;
  outlined consume of RacePositionProvider.State(v13, v14);
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.race);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_20AEA4000, v16, v17, "Race Position Provider: Recovery - Beginning recovery attempt", v18, 2u);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  v19 = [(objc_class *)a1.super.super.isa metadata];
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v20 + 16) || (v21 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002BLL, 0x800000020B4697C0), (v22 & 1) == 0) || (outlined init with copy of Any(*(v20 + 56) + 32 * v21, &aBlock), (swift_dynamicCast() & 1) == 0))
  {

    v26 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_20AEA4000, v26, v29, "Race Position Provider: Recovery - No recovery object saved. Unable to recover race.", v30, 2u);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    goto LABEL_14;
  }

  v24 = v93[0];
  v23 = v93[1];
  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for CLRacingRouteParameters, 0x277CBFC50);
  v82 = v24;
  v83 = v23;
  v25 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v31 = v25;
  if (!v25)
  {

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20AEA4000, v26, v27, "Race Position Provider: Recovery - Failed to decode CLRacingRouteParameters", v28, 2u);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    goto LABEL_11;
  }

  v32 = [objc_allocWithZone(MEMORY[0x277CBFC48]) init];
  if (![v32 setRaceParameters_])
  {

    v26 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v46))
    {
      v47 = v32;
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_20AEA4000, v26, v46, "Race Position Provider: Recovery - Failed to recover race with CLRacingRouteParameters", v48, 2u);
      MEMORY[0x20F2E9420](v48, -1, -1);
    }

    else
    {
    }

LABEL_11:
    outlined consume of Data._Representation(v82, v83);
LABEL_14:

    return;
  }

  v79 = v32;
  v33 = v31;
  v80 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  LODWORD(v78) = v34;
  v35 = os_log_type_enabled(v80, v34);
  v81 = v33;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v81;
    *v37 = v31;
    v38 = v81;
    _os_log_impl(&dword_20AEA4000, v80, v78, "Race Position Provider: Recovery - Successfully recovery with CLRacingRouteParameters: %@", v36, 0xCu);
    _sSo8NSObjectCSgWOhTm_15(v37, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v37, -1, -1);
    MEMORY[0x20F2E9420](v36, -1, -1);
  }

  v39 = CLRacingRouteParameters.lastResult.getter();
  v40 = *&v2[OBJC_IVAR___WORacePositionProvider_result];
  *&v2[OBJC_IVAR___WORacePositionProvider_result] = v39;
  v41 = v39;

  v42 = [v41 state];
  v43 = 0.0;
  if (v42 > 2)
  {
    if ((v42 - 4) >= 2)
    {
      if (v42 == 3)
      {
        v44 = 1;
        v45 = 2;
        goto LABEL_33;
      }

      if (v42 == 6)
      {
        v44 = 1;
        v45 = 4;
        goto LABEL_33;
      }
    }

LABEL_32:
    v44 = 1;
    v45 = 3;
    goto LABEL_33;
  }

  if (!v42)
  {
    goto LABEL_32;
  }

  if (v42 != 1)
  {
    if (v42 == 2)
    {
      v44 = 1;
      v45 = 1;
LABEL_33:
      v49 = v45;
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  [v41 timeAhead_s];
  v49 = v72;
  [v41 currentDistance_m];
  v44 = 0;
  v43 = v73;
LABEL_34:
  v50 = &v2[OBJC_IVAR___WORacePositionProvider_position];
  *v50 = v49;
  v50[2] = v43;
  *(v50 + 12) = v44;
  v51 = v41;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v93[0] = v77;
    v78 = v54;
    *v54 = 136315138;
    v55 = [v51 state];
    LODWORD(v80) = v53;
    if (v55 > 2)
    {
      if ((v55 - 4) >= 2)
      {
        if (v55 == 3)
        {
          v57 = 2;
          goto LABEL_45;
        }

        if (v55 == 6)
        {
          v57 = 4;
LABEL_45:
          aBlock = v57;
          LODWORD(v88) = 0;
          v56 = 1;
          goto LABEL_46;
        }
      }
    }

    else if (v55)
    {
      if (v55 == 1)
      {
        [v51 timeAhead_s];
        v75 = v74;
        [v51 currentDistance_m];
        v56 = 0;
        *&v76 = v76;
        aBlock = v75;
        LODWORD(v88) = LODWORD(v76);
        goto LABEL_46;
      }

      if (v55 == 2)
      {
        v56 = 1;
        aBlock = 1;
        LODWORD(v88) = 0;
LABEL_46:
        BYTE4(v88) = v56;
        v58 = RacePosition.description.getter();
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, v93);

        v61 = v78;
        *(v78 + 4) = v60;
        _os_log_impl(&dword_20AEA4000, v52, v80, "Race Position Provider: Recovery - Recovered with CLRacingRoutePerformanceResults position %s", v61, 0xCu);
        v62 = v77;
        __swift_destroy_boxed_opaque_existential_1Tm_21(v77);
        MEMORY[0x20F2E9420](v62, -1, -1);
        MEMORY[0x20F2E9420](v61, -1, -1);
        goto LABEL_47;
      }
    }

    v57 = 3;
    goto LABEL_45;
  }

LABEL_47:

  _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v78 = static OS_dispatch_queue.main.getter();
  v63 = swift_allocObject();
  v63[2] = v2;
  v63[3] = v51;
  v63[4] = v20;
  v91 = partial apply for closure #1 in RacePositionProvider.recoverFrom(_:);
  v92 = v63;
  aBlock = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v89 = thunk for @escaping @callee_guaranteed () -> ();
  v90 = &block_descriptor_44_0;
  v64 = _Block_copy(&aBlock);
  v80 = v51;
  v65 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v66 = v86;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v67 = v78;
  MEMORY[0x20F2E7580](0, v11, v7, v64);
  _Block_release(v64);

  (*(v85 + 8))(v7, v66);
  (*(v84 + 8))(v11, v8);
  v68 = v79;
  [v79 recoverRaceAtTimestamp];
  *&v65[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp] = v69;
  v70 = *v12;
  *v12 = v68;
  LOBYTE(v67) = v12[8];
  v12[8] = 0;
  v71 = v68;
  outlined consume of RacePositionProvider.State(v70, v67);
  RacePositionProvider.subscribeToLocationUpdates()();

  outlined consume of Data._Representation(v82, v83);
}

double closure #1 in RacePositionProvider.recoverFrom(_:)(char *a1, uint64_t a2)
{
  v3 = [a1 updateHandler];
  if (v3)
  {
    v4 = v3;
    (*(v3 + 2))();
    _Block_release(v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    [v7 recoverWith:a2 metadata:isa];

    swift_unknownObjectRelease();
  }

  return result;
}

id RacePositionProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RacePositionProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RacePositionProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void RacePositionProvider.racePosition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___WORacePositionProvider_position + 8);
  v3 = *(v1 + OBJC_IVAR___WORacePositionProvider_position + 12);
  *a1 = *(v1 + OBJC_IVAR___WORacePositionProvider_position);
  *(a1 + 8) = v2;
  *(a1 + 12) = v3;
}

void protocol witness for RacePositionProviding.racePosition.getter in conformance RacePositionProvider(uint64_t a1@<X8>)
{
  v2 = *v1 + OBJC_IVAR___WORacePositionProvider_position;
  v3 = *v2;
  v4 = *(v2 + 8);
  LOBYTE(v2) = *(v2 + 12);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v2;
}

id specialized RacePositionProvider.init(raceLocationProvider:builder:)(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v32 = a2;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v13, v14);
  v15 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v36[3] = a4;
  v36[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v18 = &a3[OBJC_IVAR___WORacePositionProvider_position];
  *v18 = 0;
  *(v18 + 2) = 0;
  v18[12] = 0;
  *&a3[OBJC_IVAR___WORacePositionProvider_result] = 0;
  v29 = OBJC_IVAR___WORacePositionProvider_queue;
  v28[1] = _sSo17NSKeyedUnarchiverCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_10(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_11(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v12, *MEMORY[0x277D85260], v31);
  *&a3[v29] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  a3[OBJC_IVAR___WORacePositionProvider_shouldProcessLocations] = 1;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v19 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v19 = MEMORY[0x277D84FA0];
  }

  *&a3[OBJC_IVAR___WORacePositionProvider_subscriptions] = v19;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR___WORacePositionProvider_routeProviderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR___WORacePositionProvider_lastPointTimestamp] = 0;
  outlined init with copy of RaceLocationProviding(v36, &a3[OBJC_IVAR___WORacePositionProvider_raceLocationProvider]);
  v20 = &a3[OBJC_IVAR___WORacePositionProvider_state];
  *v20 = 1;
  v20[8] = 2;
  v21 = type metadata accessor for MetadataSavingDelegate();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR___WOMetadataSavingDelegate_lastSaveTime] = 0;
  swift_unknownObjectWeakInit();
  v23 = v32;
  *&v22[OBJC_IVAR___WOMetadataSavingDelegate_builder] = v32;
  *&v22[OBJC_IVAR___WOMetadataSavingDelegate_kSaveNewMetadataTimeout] = 0x404E000000000000;
  v34.receiver = v22;
  v34.super_class = v21;
  v24 = v23;
  *&a3[OBJC_IVAR___WORacePositionProvider_metadataDelegate] = objc_msgSendSuper2(&v34, sel_init);
  v25 = type metadata accessor for RacePositionProvider();
  v33.receiver = a3;
  v33.super_class = v25;
  v26 = objc_msgSendSuper2(&v33, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm_21(v36);
  return v26;
}

id specialized RacePositionProvider.__allocating_init(raceLocationProvider:builder:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for RacePositionProvider());
  (*(v9 + 16))(v11, a1, a4);
  return specialized RacePositionProvider.init(raceLocationProvider:builder:)(v11, a2, v12, a4, a5);
}

void outlined consume of RacePositionProvider.State(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore20RacePositionProviderC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t getEnumTagSinglePayload for RacePositionProvider.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RacePositionProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for RacePositionProvider.State(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

id outlined copy of RacePositionProvider.State(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RaceError and conformance RaceError()
{
  result = lazy protocol witness table cache variable for type RaceError and conformance RaceError;
  if (!lazy protocol witness table cache variable for type RaceError and conformance RaceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceError and conformance RaceError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceError and conformance RaceError;
  if (!lazy protocol witness table cache variable for type RaceError and conformance RaceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceError and conformance RaceError);
  }

  return result;
}

uint64_t RacePosition.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 12) == 1)
  {
    v3 = v1 > 1;
    if (v1 ^ 3 | v2)
    {
      v4 = 0x64657269707865;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v1 ^ 2 | v2)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
    }

    if (v1 | v2)
    {
      v6 = 0x6574756F5266666FLL;
    }

    else
    {
      v6 = 0x6E4F746559746F6ELL;
    }

    if (v3)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    _StringGuts.grow(_:)(41);
    MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45B2E0);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45B300);
    Float.write<A>(to:)();
    return 0;
  }
}

id CLRacingRouteParameters.lastResult.getter()
{
  v1 = [v0 lastProjectedDataPoint];
  [v1 timeSinceStart];
  v35 = v2;
  [v1 offRouteTime];
  v4 = v3;

  v5 = [v0 lastOnRouteDataPoint];
  [v5 timeSinceStart];
  v7 = v6;
  [v5 offRouteTime];
  v9 = v8;

  v10 = [v0 lastOnRouteDataPoint];
  [v10 distanceAlongReference];
  v12 = v11;

  v13 = [v0 lastProjectedDataPoint];
  [v13 distanceAlongReference];
  v15 = v14;

  v16 = [v0 lastOnRouteDataPoint];
  [v16 averagePace];
  v18 = v17;

  v19 = [v0 lastProjectedDataPoint];
  [v19 distanceSinceStart];
  v21 = v20;
  [v19 offRouteDistance];
  v23 = v22;

  v24 = [v0 racingRouteVariables];
  v25 = [v24 userIsOffRoute];

  if (v25)
  {
    v26 = 2;
  }

  else
  {
    v27 = [v0 racingRouteVariables];
    v28 = [v27 raceSessionExpired];

    if (v28)
    {
      v26 = 6;
    }

    else
    {
      v29 = [v0 racingRouteVariables];
      v30 = [v29 raceEndPointDetected];

      if (v30)
      {
        v26 = 3;
      }

      else
      {
        v31 = [v0 racingRouteVariables];
        v32 = [v31 raceStartPointDetected];

        v26 = v32;
      }
    }
  }

  v33 = objc_allocWithZone(MEMORY[0x277CBFC58]);

  return [v33 initWithTimeAhead:v26 currentDistance:v35 - v4 - (v7 - v9) referenceDistance:v12 currentAveragePace:v15 totalOverlapDistance:v18 state:v21 - v23];
}

uint64_t HKWorkoutEvent.isDownhillRun.getter()
{
  if ([v0 type] != 7)
  {
    goto LABEL_9;
  }

  v1 = [v0 metadata];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v3 + 16))
  {

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v6, v16);
  _sSo8NSNumberCMaTm_1(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = v15;
  if ([v15 integerValue] == 1 || objc_msgSend(v15, sel_integerValue) == 3)
  {

LABEL_9:
    v10 = 0;
    return v10 & 1;
  }

LABEL_12:
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(v3);
  v12 = v11;
  if (one-time initialization token for metadataKeys != -1)
  {
    swift_once();
  }

  v13 = specialized Set._isDisjoint<A>(with:)(static DownhillRun.metadataKeys, v12);

  v10 = v13 ^ 1;
  return v10 & 1;
}

Class @objc HKWorkoutBuilder.downhillRunEvents.getter(void *a1)
{
  v1 = a1;
  v2 = HKWorkoutBuilder.downhillRunEvents.getter();

  if (v2)
  {
    _sSo8NSNumberCMaTm_1(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t HKWorkoutBuilder.downhillRunEvents.getter()
{
  v1 = [v0 workoutConfiguration];
  v2 = [v1 activityType];

  if (v2 != 67 && v2 != 61)
  {
    return 0;
  }

  v3 = [v0 workoutEvents];
  _sSo8NSNumberCMaTm_1(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    v7 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F2E7A20](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if ([v8 v7[476]] == 7)
      {
        v11 = [v9 metadata];
        if (v11)
        {
          v12 = v11;
          v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          if (*(v13 + 16))
          {
            v24 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15);
            v17 = v16;

            if (v17)
            {
              outlined init with copy of Any(*(v13 + 56) + 32 * v24, v26);
              _sSo8NSNumberCMaTm_1(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
              if (swift_dynamicCast())
              {
                v18 = v25;
                if ([v25 integerValue] == 1 || objc_msgSend(v25, sel_integerValue) == 3)
                {

LABEL_25:
                  v7 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
                  goto LABEL_7;
                }

LABEL_22:
                _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(v13);
                v20 = v19;
                if (one-time initialization token for metadataKeys != -1)
                {
                  swift_once();
                }

                v21 = specialized Set._isDisjoint<A>(with:)(static DownhillRun.metadataKeys, v20);

                if ((v21 & 1) == 0)
                {
                  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  specialized ContiguousArray._endMutation()();
                  v7 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
                  goto LABEL_7;
                }

                goto LABEL_25;
              }
            }
          }

          else
          {
          }

          v18 = 0;
          goto LABEL_22;
        }
      }

LABEL_7:
      ++v6;
      if (v10 == i)
      {
        v22 = v27;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_34:

  return v22;
}

uint64_t specialized Set._isDisjoint<A>(with:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v10 = Hasher._finalize()();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

id GhostPacerAccumulatorFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GhostPacerAccumulatorFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GhostPacerAccumulatorFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GhostPacerAccumulatorFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GhostPacerAccumulatorFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id specialized static GhostPacerAccumulatorFactory.make(activityType:liveWorkoutConfiguration:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for PacerWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    static Published.subscript.getter(&v20);

    v5 = v20;
    v6 = [v20 value];

    if (v6)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v20);

      v7 = v20;
      v8 = [v20 value];

      if (v8)
      {
        v9 = objc_opt_self();
        v10 = [v9 meterUnit];
        [v6 doubleValueForUnit_];
        v12 = v11;

        v13 = [v9 secondUnit];
        [v8 doubleValueForUnit_];
        v15 = v14;

        v16 = objc_allocWithZone(type metadata accessor for GhostPacerAccumulator());
        v17 = a1;
        v18 = specialized GhostPacerAccumulator.init(activityType:goalDistance:goalFinishTime:)(v17, v12, v15);

        return v18;
      }
    }

    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000005CLL, 0x800000020B469A30, "WorkoutCore/GhostPacerAccumulatorFactory.swift", 46, 2, 21, 0);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000004FLL, 0x800000020B4699E0, "WorkoutCore/GhostPacerAccumulatorFactory.swift", 46, 2, 17, 0);
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for RaceSessionConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceSessionConstants(_WORD *result, int a2, int a3)
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

unint64_t CLRacingRouteConfigurationState.description.getter(uint64_t a1)
{
  v1 = 0xD000000000000012;
  v2 = 0xD00000000000001ELL;
  if (a1 == 1)
  {
    v2 = 0xD000000000000012;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6564656563637573;
  }
}

uint64_t CLRacingRoutePerformanceResults.racePosition.getter@<X0>(uint64_t a1@<X8>)
{
  result = [v1 state];
  if (result > 2)
  {
    if ((result - 4) >= 2)
    {
      if (result == 3)
      {
        v5 = 2;
        goto LABEL_11;
      }

      if (result == 6)
      {
        v5 = 4;
LABEL_11:
        *a1 = v5;
        *(a1 + 8) = 0;
        v4 = 1;
        goto LABEL_12;
      }
    }

LABEL_10:
    v5 = 3;
    goto LABEL_11;
  }

  if (!result)
  {
    goto LABEL_10;
  }

  if (result == 1)
  {
    [v1 timeAhead_s];
    v7 = v6;
    result = [v1 currentDistance_m];
    v4 = 0;
    *&v8 = v8;
    *a1 = v7;
    *(a1 + 8) = LODWORD(v8);
    goto LABEL_12;
  }

  if (result != 2)
  {
    goto LABEL_10;
  }

  v4 = 1;
  *a1 = 1;
  *(a1 + 8) = 0;
LABEL_12:
  *(a1 + 12) = v4;
  return result;
}

uint64_t CLRacingRoutePerformanceResults.racePositionState.getter@<X0>(char *a1@<X8>)
{
  result = [v1 state];
  if (result > 2)
  {
    if (result == 3)
    {
      v4 = 4;
      goto LABEL_13;
    }

    if (result == 6)
    {
      v4 = 6;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (result != 1)
  {
    if (result == 2)
    {
      v4 = 3;
      goto LABEL_13;
    }

LABEL_8:
    v4 = 5;
    goto LABEL_13;
  }

  [v1 timeAhead_s];
  v6 = v5;
  result = [v1 currentDistance_m];
  if (v6 >= 0.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

LABEL_13:
  *a1 = v4;
  return result;
}

Swift::Int RaceLocationProvider.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceLocationProvider.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceLocationProvider.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t RaceLocationProvider.locationPublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR, MEMORY[0x277CBCE20]);
  return Publisher.eraseToAnyPublisher()();
}

id RaceLocationProvider.init(activity:)(uint64_t a1)
{
  v17 = a1;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v3);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = OBJC_IVAR___WORaceLocationProvider__locationPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  swift_allocObject();
  *&v1[v10] = PassthroughSubject.init()();
  v15 = OBJC_IVAR___WORaceLocationProvider_queue;
  v11 = _sSo17OS_dispatch_queueCMaTm_18(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v14[0] = "unsupportedWorkout";
  v14[1] = v11;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_6(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v16);
  *&v1[v15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR___WORaceLocationProvider_distance] = 0;
  *&v1[OBJC_IVAR___WORaceLocationProvider_elapsedTime] = 0;
  *&v1[OBJC_IVAR___WORaceLocationProvider_kForceLocationUpdateTimeout] = 0x4000000000000000;
  *&v1[OBJC_IVAR___WORaceLocationProvider_lastLocationUpdateTime] = 0;
  *&v1[OBJC_IVAR___WORaceLocationProvider_lastLocation] = 0;
  v1[OBJC_IVAR___WORaceLocationProvider_state] = 0;
  *&v1[OBJC_IVAR___WORaceLocationProvider_activity] = v17;
  v12 = type metadata accessor for RaceLocationProvider();
  v18.receiver = v1;
  v18.super_class = v12;
  return objc_msgSendSuper2(&v18, sel_init);
}

Swift::Void __swiftcall RaceLocationProvider.activate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR___WORaceLocationProvider_queue);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in RaceLocationProvider.activate();
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_75;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v8, v4, v10);
  _Block_release(v10);
  (*(v13 + 8))(v4, v1);
  (*(v5 + 8))(v8, v12);
}

void closure #1 in RaceLocationProvider.activate()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.race);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Race Location Provider: Activating location updates", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v7 = static LocationManager.shared;
    v8 = v2;
    specialized LocationManager.add(observer:)(v8, v7);

    *(v8 + OBJC_IVAR___WORaceLocationProvider_state) = 1;
  }
}

uint64_t lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

Swift::Void __swiftcall RaceLocationProvider.updateWithElapsedTime(_:)(Swift::Double a1)
{
  v2 = v1;
  if (a1 - *(v1 + OBJC_IVAR___WORaceLocationProvider_lastLocationUpdateTime) > 2.0)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.race);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v6, "Race Location Provider: Location update timeout, processing last-known location with updated timestamp.", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    v8 = *(v2 + OBJC_IVAR___WORaceLocationProvider_lastLocation);
    if (v8)
    {
      v9 = v8;
      [v9 latitude_deg];
      v11 = v10;
      [v9 longitude_deg];
      v13 = v12;
      [v9 altitude_m];
      v15 = v14;
      [v9 odometer_m];
      v17 = v16;
      v18 = [v9 signalEnvironmentType];
      v19 = [objc_allocWithZone(MEMORY[0x277CBFC78]) initWithLatitude:v18 longitude:v11 altitude:v13 odometer:v15 timestamp:v17 signalEnvironmentType:a1];
      RaceLocationProvider.updateLocation(_:)(v19);
    }
  }

  *(v2 + OBJC_IVAR___WORaceLocationProvider_elapsedTime) = a1;
}

double RaceLocationProvider.updateLocation(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR___WORaceLocationProvider_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in RaceLocationProvider.updateLocation(_:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_7;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_6(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);

  return result;
}

void closure #1 in RaceLocationProvider.updateLocation(_:)(uint64_t a1, void *a2)
{
  if (*(a1 + OBJC_IVAR___WORaceLocationProvider_state))
  {

    v4 = a2;
    PassthroughSubject.send(_:)();

    *(a1 + OBJC_IVAR___WORaceLocationProvider_lastLocationUpdateTime) = *(a1 + OBJC_IVAR___WORaceLocationProvider_elapsedTime);
    v5 = *(a1 + OBJC_IVAR___WORaceLocationProvider_lastLocation);
    *(a1 + OBJC_IVAR___WORaceLocationProvider_lastLocation) = v4;
    v6 = v4;
  }

  else
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.race);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v8, "Race Location Provider: Workout inactive. Location update ignored.", v9, 2u);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }
  }
}

Swift::Void __swiftcall RaceLocationProvider.stopUpdatingLocation()()
{
  v1 = v0;
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.race);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Race Location Provider: Stopping location updates", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static LocationManager.shared;
  v7 = *(static LocationManager.shared + OBJC_IVAR___WOCoreLocationManager_queue);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = _s11WorkoutCore15LocationManagerC6remove8observeryAA0cD8Observer_p_tFyyXEfU_TA_2;
  *(v9 + 24) = v8;
  v20[4] = _sIg_Ieg_TRTA_7;
  v20[5] = v9;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed () -> ();
  v20[3] = &block_descriptor_15_6;
  v10 = _Block_copy(v20);
  v11 = v1;
  v12 = v6;

  v13 = v7;
  v14 = v10;
  v15 = v13;
  label = dispatch_queue_get_label(v15);
  v17 = dispatch_queue_get_label(0);

  if (label == v17)
  {
    v18 = objc_autoreleasePoolPush();
    v14[2](v14);
    objc_autoreleasePoolPop(v18);
  }

  else
  {
    dispatch_sync(v15, v14);
  }

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v11[OBJC_IVAR___WORaceLocationProvider_state] = 0;
  }
}

id RaceLocationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RaceLocationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RaceLocationProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for RaceLocationProviding.locationPublisher.getter in conformance RaceLocationProvider()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR);
  lazy protocol witness table accessor for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type PassthroughSubject<RaceLocation, RaceError> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore12RaceLocationVAD0F5ErrorOGMR, MEMORY[0x277CBCE20]);
  return Publisher.eraseToAnyPublisher()();
}

void specialized RaceLocationProvider.authorizationStatusDidUpdate(authorizationStatus:locationManager:)(int a1)
{
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.race);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    type metadata accessor for CLAuthorizationStatus(0);
    v5 = String.init<A>(describing:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_20AEA4000, oslog, v2, "Race Location Provider: Authorization status changed to: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x20F2E9420](v4, -1, -1);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  else
  {
  }
}

void specialized RaceLocationProvider.locationDidUpdate(locations:locationManager:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v1 = a1;
    v3 = __CocoaSet.count.getter();
    a1 = v1;
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_33;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_33:
    v6 = MEMORY[0x20F2E7A20](v5, a1);
    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = *(a1 + 8 * v5 + 32);
LABEL_8:
  v1 = v6;
  if ([v6 type] != 1 && objc_msgSend(v1, sel_type) != 9 && objc_msgSend(v1, sel_type) != 3 && objc_msgSend(v1, sel_type) != 11)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static WOLog.race);
    v1 = v1;
    v40 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v40, v29))
    {
      goto LABEL_27;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v31;
    *v30 = 136315138;
    [v1 type];
    type metadata accessor for CLLocationType(0);
    v37 = String.init<A>(describing:)();
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v41);

    *(v30 + 4) = v39;
    v35 = "Race Location Provider: Ignoring location update. Invalid location type: %s";
    goto LABEL_21;
  }

  [v1 horizontalAccuracy];
  if (v7 >= 50.0)
  {
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.race);
    v1 = v1;
    v40 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v40, v29))
    {
      goto LABEL_27;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v31;
    *v30 = 136315138;
    [v1 horizontalAccuracy];
    v32 = Double.description.getter();
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v41);

    *(v30 + 4) = v34;
    v35 = "Race Location Provider: Ignoring location update. Low horizontal accuracy: %s";
LABEL_21:
    _os_log_impl(&dword_20AEA4000, v40, v29, v35, v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v30, -1, -1);

    return;
  }

  [v1 coordinate];
  v9 = v8;
  [v1 coordinate];
  v11 = v10;
  [v1 altitude];
  v13 = v12;
  v14 = *&v2[OBJC_IVAR___WORaceLocationProvider_distance];
  v15 = *&v2[OBJC_IVAR___WORaceLocationProvider_elapsedTime];
  v16 = [v1 signalEnvironmentType];
  v2 = [objc_allocWithZone(MEMORY[0x277CBFC78]) initWithLatitude:v16 longitude:v9 altitude:v11 odometer:v13 timestamp:v14 signalEnvironmentType:v15];
  if (one-time initialization token for race != -1)
  {
LABEL_36:
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.race);
  v40 = v2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v41 = v21;
    *v20 = 136315138;
    v22 = v40;
    v23 = [v22 description];
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v41);

    *(v20 + 4) = v27;
    _os_log_impl(&dword_20AEA4000, v18, v19, "Race Location Provider: Observed location: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  RaceLocationProvider.updateLocation(_:)(v40);
LABEL_27:
}

void specialized RaceLocationProvider.locationDidFail(error:locationManager:)(void *a1)
{
  if (one-time initialization token for race != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.race);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, oslog, v4, "Race Location Provider: Location error: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }
}

unint64_t lazy protocol witness table accessor for type RaceLocationProvider.State and conformance RaceLocationProvider.State()
{
  result = lazy protocol witness table cache variable for type RaceLocationProvider.State and conformance RaceLocationProvider.State;
  if (!lazy protocol witness table cache variable for type RaceLocationProvider.State and conformance RaceLocationProvider.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceLocationProvider.State and conformance RaceLocationProvider.State);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceLocationProvider.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RaceLocationProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
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

id LiveWorkoutConfiguration.analyticsAlertsConfigured(formattingManager:)(void *a1)
{
  v171 = MEMORY[0x277D84FA0];
  result = [a1 unitManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = *&v1[OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration];
  v5 = &OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v165 = v6;
  v156 = [v3 userDistanceHKUnitForActivityType_];

  type metadata accessor for IntervalWorkoutConfiguration(0);
  v164 = v4;
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v151 = v4;
    static Published.subscript.getter(v170);

    v7 = v170[0];
    v8 = IntervalWorkout.blocks.getter();

    v9 = v8;
    v153 = v8;
    if (v8 >> 62)
    {
      goto LABEL_261;
    }

    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v6;
    if (v10)
    {
LABEL_5:
      v12 = 0;
      v154 = (v9 & 0xC000000000000001);
      v149 = v9 + 32;
      v150 = v9 & 0xFFFFFFFFFFFFFF8;
      v157 = 0x800000020B4544B0;
      v152 = v10;
      do
      {
        if (v154)
        {
          v13 = v12;
          MEMORY[0x20F2E7A20](v12);
          v14 = __OFADD__(v13, 1);
          v15 = v13 + 1;
          if (v14)
          {
            goto LABEL_260;
          }
        }

        else
        {
          if (v12 >= *(v150 + 16))
          {
            __break(1u);
LABEL_264:
            v79 = __CocoaSet.count.getter();
            if (!v79)
            {
              goto LABEL_265;
            }

LABEL_160:
            v80 = 0;
            v4 = 0xD000000000000013;
            v158 = v79;
            while (2)
            {
              if ((v157 & 0xC000000000000001) != 0)
              {
                v81 = MEMORY[0x20F2E7A20](v80, v157);
              }

              else
              {
                if (v80 >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_259;
                }

                v81 = *(v157 + 32 + 8 * v80);
              }

              v82 = v81;
              v14 = __OFADD__(v80, 1);
              v83 = v80 + 1;
              if (v14)
              {
                goto LABEL_257;
              }

              v84 = *v5;
              swift_beginAccess();
              v159 = v84;
              v85 = *&v82[v84];
              v161 = v82;
              v86 = v85;
              specialized static TargetZoneStorage.defaultZones(activityType:)(v86);
              v88 = v87;

              v163 = v83;
              if (v88 >> 62)
              {
                v89 = __CocoaSet.count.getter();
                if (v89)
                {
LABEL_170:
                  if (v89 < 1)
                  {
                    goto LABEL_258;
                  }

                  for (i = 0; i != v89; ++i)
                  {
                    if ((v88 & 0xC000000000000001) != 0)
                    {
                      v101 = MEMORY[0x20F2E7A20](i, v88);
                    }

                    else
                    {
                      v101 = *(v88 + 8 * i + 32);
                    }

                    swift_beginAccess();
                    if (*(v101 + 40))
                    {
                      v91 = *(v101 + 16);
                      v92 = 1701736302;
                      if (v91 == 6)
                      {
                        v92 = 0x5F65676172657661;
                      }

                      v93 = 0xED00007265776F70;
                      if (v91 != 6)
                      {
                        v93 = 0xE400000000000000;
                      }

                      if (v91 == 4)
                      {
                        v94 = 0x5F65676172657661;
                      }

                      else
                      {
                        v94 = 0xD000000000000013;
                      }

                      v95 = 0xEF65636E65646163;
                      if (v91 != 4)
                      {
                        v95 = 0x800000020B4544E0;
                      }

                      if (*(v101 + 16) <= 5u)
                      {
                        v92 = v94;
                        v93 = v95;
                      }

                      v96 = 0xD000000000000012;
                      if (v91 != 2)
                      {
                        v96 = 0xD000000000000015;
                      }

                      v97 = 0x800000020B4544B0;
                      if (v91 == 2)
                      {
                        v97 = 0x800000020B454490;
                      }

                      v98 = 0x5F676E696C6C6F72;
                      if (*(v101 + 16))
                      {
                        v98 = 0x5F65676172657661;
                      }

                      if (*(v101 + 16) <= 1u)
                      {
                        v96 = v98;
                        v97 = 0xEC00000065636170;
                      }

                      if (*(v101 + 16) <= 3u)
                      {
                        v99 = v96;
                      }

                      else
                      {
                        v99 = v92;
                      }

                      if (*(v101 + 16) <= 3u)
                      {
                        v100 = v97;
                      }

                      else
                      {
                        v100 = v93;
                      }

                      specialized Set._Variant.insert(_:)(&v168, v99, v100);
                    }

                    else
                    {
                    }
                  }
                }
              }

              else
              {
                v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v89)
                {
                  goto LABEL_170;
                }
              }

              if ([*&v82[v159] supportsTimeSplits])
              {
                v102 = [objc_opt_self() timeSplitForActivityType_];
                v103 = [v102 enabled];

                if (v103)
                {
                  specialized Set._Variant.insert(_:)(&v168, 1701669236, 0xE400000000000000);
                }
              }

              v80 = v163;
              if ([*&v82[v159] supportsDistanceSplits])
              {
                v104 = objc_opt_self();
                v105 = *&v82[v159];

                v106 = [v104 distanceSplitForActivityType:v105 userDistanceUnit:v156];
                LODWORD(v105) = [v106 enabled];

                if (v105)
                {
                  specialized Set._Variant.insert(_:)(&v168, 0x74696C7073, 0xE500000000000000);
                }

                else
                {
                }
              }

              else
              {
              }

              v5 = &OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
              if (v163 == v158)
              {
                goto LABEL_265;
              }

              continue;
            }
          }

          v16 = v12;

          v14 = __OFADD__(v16, 1);
          v15 = v16 + 1;
          if (v14)
          {
            goto LABEL_260;
          }
        }

        v155 = v15;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v168);

        v160 = v168;
        if (v168 >> 62)
        {
          v17 = __CocoaSet.count.getter();
          v11 = v165;
          if (!v17)
          {
            goto LABEL_6;
          }

LABEL_15:
          v18 = 0;
          v162 = v17;
          while (2)
          {
            if ((v160 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x20F2E7A20](v18, v160);
              v14 = __OFADD__(v18, 1);
              v31 = v18 + 1;
              if (v14)
              {
                goto LABEL_255;
              }
            }

            else
            {
              if (v18 >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_256;
              }

              v30 = *(v160 + 32 + 8 * v18);

              v14 = __OFADD__(v18, 1);
              v31 = v18 + 1;
              if (v14)
              {
                goto LABEL_255;
              }
            }

            v32 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
            swift_beginAccess();
            v33 = *(v30 + v32);
            v166 = v31;
            if (v33 >> 62)
            {
              v34 = __CocoaSet.count.getter();
            }

            else
            {
              v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v34)
            {
              v4 = 0;
              v5 = (v33 & 0xC000000000000001);
              do
              {
                if (v5)
                {
                  v35 = MEMORY[0x20F2E7A20](v4, v33);
                  v36 = v4 + 1;
                  if (__OFADD__(v4, 1))
                  {
                    goto LABEL_247;
                  }
                }

                else
                {
                  if (v4 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_248;
                  }

                  v35 = *(v33 + 8 * v4 + 32);

                  v36 = v4 + 1;
                  if (__OFADD__(v4, 1))
                  {
LABEL_247:
                    __break(1u);
LABEL_248:
                    __break(1u);
LABEL_249:
                    __break(1u);
LABEL_250:
                    __break(1u);
LABEL_251:
                    __break(1u);
LABEL_252:
                    __break(1u);
LABEL_253:
                    __break(1u);
LABEL_254:
                    __break(1u);
LABEL_255:
                    __break(1u);
LABEL_256:
                    __break(1u);
LABEL_257:
                    __break(1u);
LABEL_258:
                    __break(1u);
LABEL_259:
                    __break(1u);
LABEL_260:
                    __break(1u);
LABEL_261:
                    v10 = __CocoaSet.count.getter();
                    v9 = v153;
                    v11 = v165;
                    if (!v10)
                    {
                      goto LABEL_262;
                    }

                    goto LABEL_5;
                  }
                }

                swift_beginAccess();
                if (*(v35 + 40))
                {

                  v19 = *(v35 + 16);
                  v20 = 1701736302;
                  if (v19 == 6)
                  {
                    v20 = 0x5F65676172657661;
                  }

                  v21 = 0xED00007265776F70;
                  if (v19 != 6)
                  {
                    v21 = 0xE400000000000000;
                  }

                  if (v19 == 4)
                  {
                    v22 = 0x5F65676172657661;
                  }

                  else
                  {
                    v22 = 0xD000000000000013;
                  }

                  v23 = 0xEF65636E65646163;
                  if (v19 != 4)
                  {
                    v23 = 0x800000020B4544E0;
                  }

                  if (*(v35 + 16) <= 5u)
                  {
                    v20 = v22;
                    v21 = v23;
                  }

                  v24 = 0xD000000000000012;
                  if (v19 != 2)
                  {
                    v24 = 0xD000000000000015;
                  }

                  v25 = 0x800000020B4544B0;
                  if (v19 == 2)
                  {
                    v25 = 0x800000020B454490;
                  }

                  v26 = 0x5F676E696C6C6F72;
                  if (*(v35 + 16))
                  {
                    v26 = 0x5F65676172657661;
                  }

                  if (*(v35 + 16) <= 1u)
                  {
                    v24 = v26;
                    v25 = 0xEC00000065636170;
                  }

                  if (*(v35 + 16) <= 3u)
                  {
                    v27 = v24;
                  }

                  else
                  {
                    v27 = v20;
                  }

                  if (*(v35 + 16) <= 3u)
                  {
                    v28 = v25;
                  }

                  else
                  {
                    v28 = v21;
                  }

                  specialized Set._Variant.insert(_:)(&v168, v27, v28);

                  goto LABEL_42;
                }

                ++v4;
              }

              while (v36 != v34);
            }

            v37 = *(v30 + v32);
            if (v37 >> 62)
            {
              v38 = __CocoaSet.count.getter();
            }

            else
            {
              v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v38)
            {
              v39 = 0;
              v5 = (v37 & 0xC000000000000001);
              do
              {
                if (v5)
                {
                  v4 = MEMORY[0x20F2E7A20](v39, v37);
                  v40 = v39 + 1;
                  if (__OFADD__(v39, 1))
                  {
                    goto LABEL_249;
                  }
                }

                else
                {
                  if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_250;
                  }

                  v4 = *(v37 + 8 * v39 + 32);

                  v40 = v39 + 1;
                  if (__OFADD__(v39, 1))
                  {
                    goto LABEL_249;
                  }
                }

                swift_beginAccess();
                v41 = *(v4 + 40);

                if (v41 == 1)
                {
                  goto LABEL_90;
                }

                ++v39;
              }

              while (v40 != v38);
            }

            v42 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
            swift_beginAccess();
            v4 = *(v30 + v42);
            if (v4)
            {
              v43 = *(v30 + v42);
            }

            else
            {
              if (one-time initialization token for defaultZone != -1)
              {
                swift_once();
              }

              v43 = static HeartRateTargetZone.defaultZone;
            }

            v44 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
            if (v43[OBJC_IVAR___WOCoreHeartRateTargetZone_type] && v43[OBJC_IVAR___WOCoreHeartRateTargetZone_type] != 1)
            {
              v50 = v4;

LABEL_90:

LABEL_91:
              v51 = *(v30 + v32);
              if (v51 >> 62)
              {
                v52 = __CocoaSet.count.getter();
              }

              else
              {
                v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (!v52)
              {
LABEL_104:

                v56 = *(v30 + v32);
                if (v56 >> 62)
                {
                  v57 = __CocoaSet.count.getter();
                }

                else
                {
                  v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v57)
                {
                  v58 = 0;
                  v5 = (v56 & 0xC000000000000001);
                  while (1)
                  {
                    if (v5)
                    {
                      v4 = MEMORY[0x20F2E7A20](v58, v56);
                      v59 = v58 + 1;
                      if (__OFADD__(v58, 1))
                      {
                        goto LABEL_253;
                      }
                    }

                    else
                    {
                      if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_254;
                      }

                      v4 = *(v56 + 8 * v58 + 32);

                      v59 = v58 + 1;
                      if (__OFADD__(v58, 1))
                      {
                        goto LABEL_253;
                      }
                    }

                    swift_beginAccess();
                    v60 = *(v4 + 40);

                    if (v60 == 1)
                    {
                      break;
                    }

                    ++v58;
                    if (v59 == v57)
                    {
                      goto LABEL_117;
                    }
                  }

                  v29 = v162;
                }

                else
                {
LABEL_117:

                  v61 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
                  swift_beginAccess();
                  v62 = *(v30 + v61);
                  if (v62)
                  {
                    v63 = *(v30 + v61);
                    v29 = v162;
                  }

                  else
                  {
                    v29 = v162;
                    if (one-time initialization token for defaultZone != -1)
                    {
                      swift_once();
                    }

                    v63 = static HeartRateTargetZone.defaultZone;
                  }

                  if (*(v63 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v63 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
                  {
                    v66 = v62;
                  }

                  else
                  {
                    v64 = _stringCompareWithSmolCheck(_:_:expecting:)();
                    v65 = v62;

                    if ((v64 & 1) == 0)
                    {

                      v4 = v164;
                      goto LABEL_43;
                    }
                  }
                }

                v67 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
                swift_beginAccess();
                v68 = *(v30 + v67);
                if (v68)
                {
                  v5 = *(v30 + v67);
                }

                else
                {
                  if (one-time initialization token for defaultZone != -1)
                  {
                    swift_once();
                  }

                  v5 = static PowerZonesAlertTargetZone.defaultZone;
                }

                v69 = v5 + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
                swift_beginAccess();
                v70 = *v69;
                v71 = *(v69 + 1);
                v72 = v69[16];
                v73 = v72 >> 6;
                if (v72 >> 6 > 1)
                {
                  if (v73 != 2)
                  {
                    v78 = v68;
                    outlined consume of PowerZonesAlertZoneType(v70, v71, v72);
                    outlined consume of PowerZonesAlertZoneType(0, 0, 192);

                    v4 = v164;
                    goto LABEL_43;
                  }
                }

                else if (v73)
                {
                  outlined copy of PowerZonesAlertZoneType(*v69, *(v69 + 1), v69[16]);
                }

                v74 = v68;
                outlined consume of PowerZonesAlertZoneType(v70, v71, v72);
                outlined consume of PowerZonesAlertZoneType(0, 0, 192);
                v75 = v69[16] >> 6;
                if (v75 > 1)
                {
                  v4 = v164;
                  if (v75 == 2)
                  {
                    v76 = 0xD000000000000017;
                    v77 = "power_zone_alert_off";
                  }

                  else
                  {
                    v76 = 0xD000000000000014;
                    v77 = "oneType.target(value: ";
                  }
                }

                else
                {
                  v4 = v164;
                  if (v75)
                  {
                    v76 = 0xD00000000000001ALL;
                    v77 = "power_zone_alert_custom";
                  }

                  else
                  {
                    v76 = 0xD000000000000017;
                    v77 = "power_zone_alert_automatic";
                  }
                }

                specialized Set._Variant.insert(_:)(&v168, v76, v77 | 0x8000000000000000);

                goto LABEL_150;
              }

              v53 = 0;
              v5 = (v51 & 0xC000000000000001);
              while (1)
              {
                if (v5)
                {
                  v4 = MEMORY[0x20F2E7A20](v53, v51);
                  v54 = v53 + 1;
                  if (__OFADD__(v53, 1))
                  {
                    goto LABEL_251;
                  }
                }

                else
                {
                  if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_252;
                  }

                  v4 = *(v51 + 8 * v53 + 32);

                  v54 = v53 + 1;
                  if (__OFADD__(v53, 1))
                  {
                    goto LABEL_251;
                  }
                }

                swift_beginAccess();
                v55 = *(v4 + 40);

                if (v55 == 1)
                {
                  break;
                }

                ++v53;
                if (v54 == v52)
                {
                  goto LABEL_104;
                }
              }

LABEL_42:

              v29 = v162;
              v4 = v164;
            }

            else
            {
              v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v46 = v4;

              if (v45)
              {

                goto LABEL_91;
              }

              v47 = v43[v44];
              v4 = v164;
              if (v43[v44])
              {
                v29 = v162;
                if (v47 == 1)
                {
                  v48 = 0xD000000000000016;
                  v49 = "heart_rate_zone_off";
                }

                else
                {
                  v48 = 0xD000000000000013;
                  v49 = "lastLocationUpdateTime";
                }
              }

              else
              {
                v48 = 0xD000000000000019;
                v49 = "heart_rate_zone_custom";
                v29 = v162;
              }

              specialized Set._Variant.insert(_:)(&v168, v48, v49 | 0x8000000000000000);

LABEL_150:
            }

LABEL_43:
            v18 = v166;
            v11 = v165;
            if (v166 == v29)
            {
              goto LABEL_6;
            }

            continue;
          }
        }

        v17 = *((v168 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = v165;
        if (v17)
        {
          goto LABEL_15;
        }

LABEL_6:

        v12 = v155;
      }

      while (v155 != v152);
    }

LABEL_262:

    goto LABEL_302;
  }

  type metadata accessor for MultiSportWorkoutConfiguration(0);
  if (!swift_dynamicCastClass())
  {
    v107 = LiveWorkoutConfiguration.currentTargetZones.getter();
    v108 = v107;
    if (v107 >> 62)
    {
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        goto LABEL_283;
      }
    }

    else
    {
      v4 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_283;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      goto LABEL_317;
    }

    for (j = 0; j != v4; ++j)
    {
      if ((v108 & 0xC000000000000001) != 0)
      {
        v120 = MEMORY[0x20F2E7A20](j, v108);
      }

      else
      {
        v120 = *(v108 + 8 * j + 32);
      }

      swift_beginAccess();
      if (*(v120 + 40))
      {
        v110 = *(v120 + 16);
        v111 = 1701736302;
        if (v110 == 6)
        {
          v111 = 0x5F65676172657661;
        }

        v112 = 0xED00007265776F70;
        if (v110 != 6)
        {
          v112 = 0xE400000000000000;
        }

        if (v110 == 4)
        {
          v113 = 0x5F65676172657661;
        }

        else
        {
          v113 = 0xD000000000000013;
        }

        v114 = 0xEF65636E65646163;
        if (v110 != 4)
        {
          v114 = 0x800000020B4544E0;
        }

        if (*(v120 + 16) <= 5u)
        {
          v111 = v113;
          v112 = v114;
        }

        v115 = 0xD000000000000015;
        if (v110 == 2)
        {
          v115 = 0xD000000000000012;
          v116 = 0x800000020B454490;
        }

        else
        {
          v116 = 0x800000020B4544B0;
        }

        v117 = 0x5F676E696C6C6F72;
        if (*(v120 + 16))
        {
          v117 = 0x5F65676172657661;
        }

        if (*(v120 + 16) <= 1u)
        {
          v115 = v117;
          v116 = 0xEC00000065636170;
        }

        if (*(v120 + 16) <= 3u)
        {
          v118 = v115;
        }

        else
        {
          v118 = v111;
        }

        if (*(v120 + 16) <= 3u)
        {
          v119 = v116;
        }

        else
        {
          v119 = v112;
        }

        specialized Set._Variant.insert(_:)(&v169, v118, v119);
      }

      else
      {
      }
    }

LABEL_283:

    v1 = LiveWorkoutConfiguration.currentActivityType.getter();
    swift_beginAccess();
    v133 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
    v132 = off_27C728570;

    v134 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v133, v132, v1);

    if (v134)
    {
      specialized HeartRateTargetZone.__allocating_init(dict:)(v134);
      if (v135)
      {
        v136 = v135;

        v4 = v164;
LABEL_288:
        v137 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
        if (*(v136 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v136 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
        {

          goto LABEL_300;
        }

        v138 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v138)
        {

          goto LABEL_301;
        }

        v139 = 0xD000000000000013;
        if (*(v136 + v137))
        {
          if (*(v136 + v137) == 1)
          {
            v140 = "heart_rate_zone_off";
            v139 = 0xD000000000000016;
LABEL_299:
            specialized Set._Variant.insert(_:)(&v168, v139, v140 | 0x8000000000000000);

            goto LABEL_300;
          }

          v141 = "heart_rate_zone_off";
        }

        else
        {
          v139 = 0xD000000000000019;
          v141 = "heart_rate_zone_automatic";
        }

        v140 = v141 - 32;
        goto LABEL_299;
      }
    }

    v4 = v164;
    if (one-time initialization token for defaultZone == -1)
    {
LABEL_287:
      v136 = static HeartRateTargetZone.defaultZone;

      goto LABEL_288;
    }

LABEL_317:
    swift_once();
    goto LABEL_287;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v154 = v4;
  static Published.subscript.getter(v170);

  v157 = v170[0];
  if (v170[0] >> 62)
  {
    goto LABEL_264;
  }

  v79 = *((v170[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v79)
  {
    goto LABEL_160;
  }

LABEL_265:

  v121 = LiveWorkoutConfiguration.currentActivityType.getter();
  swift_beginAccess();
  v123 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
  v122 = off_27C728570;

  v124 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v123, v122, v121);

  if (!v124 || (specialized HeartRateTargetZone.__allocating_init(dict:)(v124), !v125))
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v125 = static HeartRateTargetZone.defaultZone;
  }

  v126 = v125;

  v4 = v164;
  v127 = OBJC_IVAR___WOCoreHeartRateTargetZone_type;
  if (*(v126 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) && *(v126 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) != 1)
  {

LABEL_300:

    goto LABEL_301;
  }

  v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v128 & 1) == 0)
  {
    v129 = 0xD000000000000013;
    if (*(v126 + v127))
    {
      if (*(v126 + v127) == 1)
      {
        v130 = "heart_rate_zone_off";
        v129 = 0xD000000000000016;
LABEL_281:
        specialized Set._Variant.insert(_:)(&v168, v129, v130 | 0x8000000000000000);

        goto LABEL_300;
      }

      v131 = "heart_rate_zone_off";
    }

    else
    {
      v129 = 0xD000000000000019;
      v131 = "heart_rate_zone_automatic";
    }

    v130 = v131 - 32;
    goto LABEL_281;
  }

LABEL_301:
  v11 = v165;
LABEL_302:
  if ([*(v4 + v11) supportsTimeSplits])
  {
    v142 = [objc_opt_self() timeSplitForActivityType_];
    v143 = [v142 enabled];

    v11 = v165;
    if (v143)
    {
      specialized Set._Variant.insert(_:)(&v168, 1701669236, 0xE400000000000000);
    }
  }

  if ([*(v4 + v11) supportsDistanceSplits])
  {
    v144 = [objc_opt_self() distanceSplitForActivityType:*(v4 + v11) userDistanceUnit:v156];
    v145 = [v144 enabled];

    v11 = v165;
    if (v145)
    {
      specialized Set._Variant.insert(_:)(&v168, 0x74696C7073, 0xE500000000000000);
    }
  }

  type metadata accessor for RaceWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    if ([*(v4 + v11) supportsRaceRoute])
    {
      v146 = *(v4 + v11);
      v147 = specialized static RaceAlertsStore.read(for:)(v146);

      swift_beginAccess();
      LODWORD(v146) = *(v147 + 16);

      if (v146 == 1)
      {
        specialized Set._Variant.insert(_:)(&v167, 1701011826, 0xE400000000000000);
      }
    }
  }

  if (*(v171 + 16))
  {
    v167 = v171;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
    lazy protocol witness table accessor for type Set<String> and conformance Set<A>();
    lazy protocol witness table accessor for type String and conformance String();
    v148 = Sequence<>.joined(separator:)();
  }

  else
  {
    v148 = 1701736302;
  }

  return v148;
}

uint64_t LiveWorkoutConfiguration.analyticsActivityType.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  [*(v1 + v2) effectiveTypeIdentifier];
  v3 = _HKWorkoutActivityNameForActivityType();
  if (!v3)
  {
    return 0xD000000000000010;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._object = 0x800000020B456540;
  v8._countAndFlagsBits = 0xD000000000000015;
  if (String.hasPrefix(_:)(v8))
  {
    v9 = String.count.getter();
    v10 = specialized Collection.dropFirst(_:)(v9, v5, v7);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v5 = MEMORY[0x20F2E6D00](v10, v12, v14, v16);
  }

  return v5;
}

uint64_t LiveWorkoutConfiguration.analyticsConfigurationType.getter(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration) *a1];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t lazy protocol witness table accessor for type Set<String> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<String> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance Set<A>);
  }

  return result;
}

void one-time initialization function for precisionStart(uint64_t a1, _BYTE *a2)
{
  if (one-time initialization token for kMGQWatchAppButtonCapability != -1)
  {
    swift_once();
  }

  v3 = static MobileGestaltConstants.kMGQWatchAppButtonCapability;
  v4 = MGGetBoolAnswer();

  *a2 = v4;
}

uint64_t static DeviceFeatures.precisionStart.getter(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

id DeviceFeatures.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceFeatures.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceFeatures();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceFeatures.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceFeatures();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t LaneChangeReason.description.getter()
{
  v1 = 0x6C65532072657355;
  if (*v0 != 1)
  {
    v1 = 0x7465442D6F747541;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E616843206F4ELL;
  }
}

WorkoutCore::LaneChangeReason_optional __swiftcall LaneChangeReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type LaneChangeReason and conformance LaneChangeReason()
{
  result = lazy protocol witness table cache variable for type LaneChangeReason and conformance LaneChangeReason;
  if (!lazy protocol witness table cache variable for type LaneChangeReason and conformance LaneChangeReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaneChangeReason and conformance LaneChangeReason);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LaneChangeReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LaneChangeReason(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance LaneChangeReason()
{
  v1 = 0x6C65532072657355;
  if (*v0 != 1)
  {
    v1 = 0x7465442D6F747541;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E616843206F4ELL;
  }
}

uint64_t getEnumTagSinglePayload for LaneChangeReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LaneChangeReason(uint64_t result, unsigned int a2, unsigned int a3)
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

WorkoutCore::RepetitionCounter __swiftcall RepetitionCounter.init(repetition:maxRepetitions:)(Swift::Int repetition, Swift::Int maxRepetitions)
{
  *v2 = repetition;
  v2[1] = maxRepetitions;
  result.maxRepetitions = maxRepetitions;
  result.repetition = repetition;
  return result;
}

uint64_t getEnumTagSinglePayload for RepetitionCounter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RepetitionCounter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

void IntervalWorkoutConfiguration.workoutKitRepresentation.getter(uint64_t a1@<X8>)
{
  v3 = v1;
  v121 = a1;
  v151 = type metadata accessor for IntervalStep.Purpose();
  v132 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v4);
  v155 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for IntervalStep();
  v150 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v6);
  v146 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for IntervalBlock();
  v135 = *(v134 - 8);
  v9 = MEMORY[0x28223BE20](v134, v8);
  v136 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v127 = &v107 - v12;
  v126 = type metadata accessor for WorkoutGoal();
  v125 = *(v126 - 8);
  v14 = MEMORY[0x28223BE20](v126, v13);
  v123 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v154 = &v107 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v107 - v20;
  v22 = type metadata accessor for WorkoutStep();
  v23 = *(v22 - 8);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v117 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v148 = &v107 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v145 = &v107 - v32;
  MEMORY[0x28223BE20](v31, v33);
  v153 = &v107 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v37 = MEMORY[0x28223BE20](v35 - 8, v36);
  v120 = &v107 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v119 = &v107 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v116 = &v107 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v118 = &v107 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v152 = &v107 - v50;
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v107 - v52;
  v54 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v55 = *(v3 + v54);
  v56 = FIUIWorkoutActivityType.healthKitRepresentation.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v157);

  v57 = v157;
  v58 = IntervalWorkout.warmupStep.getter();

  v133 = v53;
  v129 = v3;
  v149 = v22;
  v131 = v23;
  if (v58)
  {
    v59 = [v56 activityType];
    v60 = [v56 locationType];
    v61 = [v56 swimmingLocationType];
    v144 = type metadata accessor for CustomWorkout();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v157);

    v62 = v157;
    _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06CustomD0V_Tt3g5(v59, v60, v61, v21);
    if (v2)
    {

      return;
    }

    v124 = v56;

    WorkoutStep.workoutKitAlertRepresentation.getter(&v157);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v158);

    v90 = v153;
    WorkoutStep.init(goal:alert:displayName:)();
    WorkoutStep.validate<A>(for:location:swimmingLocation:kind:)();

    v23 = v131;
    v93 = v152;
    v22 = v149;
    (v131[4])(v152, v90, v149);
    v110 = v23[7];
    v110(v93, 0, 1, v22);
    outlined init with take of WorkoutStep?(v93, v133);
    v56 = v124;
  }

  else
  {
    v110 = v23[7];
    v110(v53, 1, 1, v22);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v157);

  v63 = v157;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v157);

  v64 = v157;
  if (v157 >> 62)
  {
LABEL_43:
    v65 = __CocoaSet.count.getter();
    if (v65)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v65 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v65)
    {
LABEL_7:
      v66 = MEMORY[0x277D84F90];
      v160 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65 & ~(v65 >> 63), 0);
      if (v65 < 0)
      {
        goto LABEL_52;
      }

      v67 = 0;
      v68 = v160;
      v69 = v64 & 0xC000000000000001;
      v109 = v64 & 0xFFFFFFFFFFFFFF8;
      v108 = v64 + 32;
      v140 = (v132 + 104);
      v138 = (v23 + 4);
      v128 = *MEMORY[0x277CE4028];
      v137 = v150 + 32;
      v22 = v135 + 32;
      v141 = *MEMORY[0x277CE4020];
      v115 = v64;
      v113 = v65;
      v112 = v64 & 0xC000000000000001;
      v124 = v56;
      v111 = (v135 + 32);
      while (1)
      {
        if (__OFADD__(v67, 1))
        {
          goto LABEL_42;
        }

        v130 = v68;
        v114 = v67 + 1;
        if (v69)
        {
          v70 = MEMORY[0x20F2E7A20]();
        }

        else
        {
          if (v67 >= *(v109 + 16))
          {
            goto LABEL_53;
          }

          v70 = *(v108 + 8 * v67);
        }

        v153 = [v56 activityType];
        v152 = [v56 locationType];
        v56 = [v56 swimmingLocationType];
        IntervalBlock.init(steps:iterations:)();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v157);

        IntervalBlock.iterations.setter();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v157);

        v71 = v157;
        v64 = v70;
        if (v157 >> 62)
        {
          v83 = v157;
          v72 = __CocoaSet.count.getter();
          v71 = v83;
          if (v72)
          {
LABEL_16:
            v73 = v71;
            v159 = v66;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v72 & ~(v72 >> 63), 0);
            if ((v72 & 0x8000000000000000) == 0)
            {
              v139 = v72;
              v74 = 0;
              v23 = v159;
              v75 = v73;
              v144 = v73 & 0xC000000000000001;
              v122 = v73 & 0xFFFFFFFFFFFFFF8;
              v143 = v64;
              v142 = v73;
              while (1)
              {
                v22 = v74 + 1;
                if (__OFADD__(v74, 1))
                {
                  break;
                }

                if (v144)
                {
                  v76 = MEMORY[0x20F2E7A20](v74, v75);
                }

                else
                {
                  if (v74 >= *(v122 + 16))
                  {
                    goto LABEL_41;
                  }

                  v76 = *(v75 + 8 * v74 + 32);
                }

                swift_beginAccess();
                v77 = v141;
                if (*(v76 + 16))
                {
                  if (*(v76 + 16) != 1)
                  {
                    v91 = type metadata accessor for ImportError();
                    lazy protocol witness table accessor for type ImportError and conformance ImportError();
                    swift_allocError();
                    (*(*(v91 - 8) + 104))(v92, *MEMORY[0x277CE4008], v91);
                    swift_willThrow();

LABEL_39:
                    (*(v135 + 8))(v136, v134);
                    outlined destroy of WorkoutStep?(v133);

                    return;
                  }

                  v77 = v128;
                }

                (*v140)(v155, v77, v151);
                type metadata accessor for CustomWorkout();
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter(&v157);

                v78 = v157;
                _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06CustomD0V_Tt3g5(v153, v152, v56, v154);
                if (v2)
                {
                  (*(v132 + 8))(v155, v151);

                  goto LABEL_39;
                }

                WorkoutStep.workoutKitAlertRepresentation.getter(&v157);
                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter(&v156);

                v79 = v148;
                WorkoutStep.init(goal:alert:displayName:)();
                WorkoutStep.validate<A>(for:location:swimmingLocation:kind:)();
                (*v138)(v145, v79, v149);
                v80 = v146;
                IntervalStep.init(_:step:)();

                v159 = v23;
                v82 = v23[2];
                v81 = v23[3];
                if (v82 >= v81 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1);
                  v23 = v159;
                }

                v23[2] = v82 + 1;
                (*(v150 + 32))(v23 + ((*(v150 + 80) + 32) & ~*(v150 + 80)) + *(v150 + 72) * v82, v80, v147);
                ++v74;
                v64 = v143;
                v75 = v142;
                if (v22 == v139)
                {
                  goto LABEL_32;
                }
              }

              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            return;
          }
        }

        else
        {
          v72 = *((v157 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v72)
          {
            goto LABEL_16;
          }
        }

LABEL_32:

        v84 = v136;
        IntervalBlock.steps.setter();

        v22 = v111;
        v85 = *v111;
        v86 = v127;
        v87 = v134;
        (*v111)(v127, v84, v134);
        v68 = v130;
        v160 = v130;
        v89 = *(v130 + 16);
        v88 = *(v130 + 24);
        v56 = v124;
        if (v89 >= v88 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1);
          v68 = v160;
        }

        *(v68 + 16) = v89 + 1;
        v85((v68 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v89), v86, v87);
        v67 = v114;
        v23 = v131;
        v64 = v115;
        v66 = MEMORY[0x277D84F90];
        v69 = v112;
        if (v114 == v113)
        {
          v130 = v68;

          v22 = v149;
          goto LABEL_45;
        }
      }
    }
  }

  v130 = MEMORY[0x277D84F90];
LABEL_45:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v157);

  v94 = v157;
  v95 = IntervalWorkout.cooldownStep.getter();

  if (v95)
  {
    v96 = [v56 activityType];
    v97 = [v56 locationType];
    v98 = [v56 swimmingLocationType];
    type metadata accessor for CustomWorkout();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v157);

    v99 = v157;
    _sSo21NLSessionActivityGoalC11WorkoutCoreE24workoutKitRepresentation3for8location16swimmingLocation4kind0dG00dC0OSo09HKWorkoutB4TypeV_So0n7SessionlO0VSo0n8SwimminglO0VxmtKlFAI06CustomD0V_Tt3g5(v96, v97, v98, v123);
    if (v2)
    {
      outlined destroy of WorkoutStep?(v133);

      return;
    }

    WorkoutStep.workoutKitAlertRepresentation.getter(&v157);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v156);

    v103 = v117;
    WorkoutStep.init(goal:alert:displayName:)();
    WorkoutStep.validate<A>(for:location:swimmingLocation:kind:)();

    v104 = v116;
    v105 = v103;
    v106 = v149;
    (v131[4])(v116, v105, v149);
    v110(v104, 0, 1, v106);
    v100 = v118;
    outlined init with take of WorkoutStep?(v104, v118);
  }

  else
  {
    v100 = v118;
    v110(v118, 1, 1, v22);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v157);

  v101 = v157;
  IntervalWorkout.displayName.getter();

  v102 = v133;
  outlined init with copy of WorkoutStep?(v133, v119);
  outlined init with copy of WorkoutStep?(v100, v120);
  CustomWorkout.init(configuration:displayName:warmup:blocks:cooldown:)();
  outlined destroy of WorkoutStep?(v100);
  outlined destroy of WorkoutStep?(v102);
}

id specialized static IntervalWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:validator:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v151 = a4;
  v116 = a3;
  v112 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v6);
  v113 = v108 - v7;
  v150 = type metadata accessor for IntervalStep.Purpose();
  v148 = *(v150 - 8);
  v9 = MEMORY[0x28223BE20](v150, v8);
  v149 = v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v157 = v108 - v12;
  v154 = type metadata accessor for WorkoutStep();
  v13 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v14);
  v155 = v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for IntervalStep();
  v152 = *(v158 - 8);
  MEMORY[0x28223BE20](v158, v16);
  v156 = v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v147 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v18);
  v132 = v108 - v19;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v146 = *(v131 - 8);
  MEMORY[0x28223BE20](v131, v20);
  v130 = v108 - v21;
  v138 = type metadata accessor for IntervalBlock();
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138, v22);
  v24 = v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v118 = v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = v108 - v30;
  v135 = type metadata accessor for UUID();
  v129 = *(v135 - 8);
  v33 = MEMORY[0x28223BE20](v135, v32);
  v111 = v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v37 = v108 - v36;
  v38 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v38 setActivityType_];
  [v38 setLocationType_];
  CustomWorkout.activity.getter();
  [v38 setSwimmingLocationType_];
  v153 = HKWorkoutConfiguration.fiuiWorkoutActivityType(isPartOfMultisport:)(0);
  UUID.init()();
  v110 = type metadata accessor for IntervalWorkout(0);
  v39 = objc_allocWithZone(v110);
  v137 = v37;
  v40 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0, 0xE000000000000000, v37, 0, 0);
  v141 = a1;
  v41 = CustomWorkout.displayName.getter();
  v136 = v13;
  if (v42)
  {
    v43 = v41;
    v44 = v42;
    swift_getKeyPath();
    swift_getKeyPath();
    v160[0] = v43;
    v160[1] = v44;
    v45 = v40;
    v13 = v136;
    static Published.subscript.setter();
  }

  v140 = v40;
  CustomWorkout.warmup.getter();
  v117 = *(v13 + 48);
  if (v117(v31, 1, v154) == 1)
  {
    outlined destroy of WorkoutStep?(v31);
    v46 = 0;
  }

  else
  {
    LOBYTE(v160[0]) = 1;
    LOBYTE(v163) = 2;
    v47 = v153;
    v48 = v31;
    v49 = WorkoutStep.workoutCoreRepresentation(activityType:configurationContext:stepType:validator:)(v153, v160, &v163, v151);
    if (v4)
    {

      goto LABEL_32;
    }

    v50 = v49;
    (*(v13 + 8))(v31, v154);
    v46 = v50;
  }

  IntervalWorkout.warmupStep.setter(v46);
  v51 = CustomWorkout.blocks.getter();
  v52 = *(v51 + 16);
  v53 = v150;
  v119 = v38;
  if (!v52)
  {

    v77 = MEMORY[0x277D84F90];
LABEL_28:
    swift_getKeyPath();
    swift_getKeyPath();
    v160[0] = v77;
    v78 = v140;
    static Published.subscript.setter();
    v31 = v118;
    CustomWorkout.cooldown.getter();
    if (v117(v31, 1, v154) == 1)
    {
      v158 = v4;
      outlined destroy of WorkoutStep?(v31);
      v79 = 0;
LABEL_37:
      IntervalWorkout.cooldownStep.setter(v79);
      v86 = *(v129 + 16);
      v87 = v137;
      v88 = v135;
      v86(v137, v112, v135);
      v89 = v86;
      v90 = objc_allocWithZone(type metadata accessor for IntervalWorkoutConfiguration(0));
      v91 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
      LOBYTE(v160[0]) = 0;
      v92 = v113;
      Published.init(initialValue:)();
      (*(v114 + 32))(&v90[v91], v92, v115);
      swift_beginAccess();
      v163 = v78;
      v157 = v78;
      Published.init(initialValue:)();
      swift_endAccess();
      v93 = v111;
      v89(v111, v87, v88);
      v94 = v89;
      *&v90[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
      v95 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
      v96 = type metadata accessor for Date();
      v97 = *(*(v96 - 8) + 56);
      v97(&v90[v95], 1, 1, v96);
      v97(&v90[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v96);
      v98 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
      v99 = type metadata accessor for WorkoutPlan.Route();
      (*(*(v99 - 8) + 56))(&v90[v98], 1, 1, v99);
      v100 = v129;
      (*(v129 + 56))(&v90[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v88);
      v101 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
      *&v90[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
      v94(&v90[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v93, v88);
      v102 = v153;
      *&v90[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v153;
      v90[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
      v103 = v116;
      *&v90[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v116;
      swift_beginAccess();
      *&v90[v101] = 0;
      v90[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
      v104 = type metadata accessor for WorkoutConfiguration(0);
      v159.receiver = v90;
      v159.super_class = v104;
      v105 = v102;
      v106 = v103;
      v48 = objc_msgSendSuper2(&v159, sel_init);

      v107 = *(v100 + 8);
      v107(v93, v88);
      v107(v137, v88);
      return v48;
    }

    LOBYTE(v160[0]) = 1;
    LOBYTE(v163) = 3;
    v47 = v153;
    v48 = v31;
    v80 = WorkoutStep.workoutCoreRepresentation(activityType:configurationContext:stepType:validator:)(v153, v160, &v163, v151);
    if (!v4)
    {
      v158 = 0;
      v85 = v80;
      (*(v13 + 8))(v31, v154);
      v79 = v85;
      goto LABEL_37;
    }

LABEL_32:
    (*(v13 + 8))(v31, v154);
    return v48;
  }

  v108[1] = v13 + 48;
  v160[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v54 = 0;
  v127 = v51 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
  v126 = v139 + 16;
  v125 = (v146 + 4);
  v124 = (v147 + 4);
  v123 = (v129 + 32);
  v145 = v152 + 16;
  v144 = (v148 + 2);
  v55 = (v148 + 11);
  v143 = *MEMORY[0x277CE4020];
  v142 = *MEMORY[0x277CE4028];
  v147 = v148 + 1;
  v146 = (v13 + 8);
  v148 = (v152 + 8);
  v121 = (v139 + 8);
  v56 = v138;
  v122 = v24;
  v120 = v51;
  v109 = v52;
  while (v54 < *(v51 + 16))
  {
    v57 = *(v139 + 72);
    v128 = v54;
    (*(v139 + 16))(v24, v127 + v57 * v54, v56);
    v58 = v137;
    UUID.init()();
    type metadata accessor for WorkoutBlock(0);
    v59 = swift_allocObject();
    v60 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
    v163 = 1;
    v61 = v130;
    Published.init(initialValue:)();
    (*v125)(v59 + v60, v61, v131);
    v62 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
    v163 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    v63 = v132;
    Published.init(initialValue:)();
    (*v124)(v59 + v62, v63, v133);
    (*v123)(v59 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v58, v135);
    v64 = IntervalBlock.iterations.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v163 = v64;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v134 = v59;
    static Published.subscript.getter(&v163);

    if (!v163)
    {
      goto LABEL_40;
    }

    v65 = IntervalBlock.steps.getter();
    v66 = *(v65 + 16);
    if (v66)
    {
      v163 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v67 = 0;
      v68 = v65 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
      while (v67 < *(v65 + 16))
      {
        (*(v152 + 16))(v156, v68 + *(v152 + 72) * v67, v158);
        IntervalStep.step.getter();
        v162 = 1;
        v69 = v157;
        IntervalStep.purpose.getter();
        v70 = v149;
        (*v144)(v149, v69, v53);
        v71 = (*v55)(v70, v53);
        if (v71 == v143)
        {
          v72 = 0;
          v73 = v151;
        }

        else
        {
          v73 = v151;
          if (v71 != v142)
          {

            (*v146)(v155, v154);
            v81 = type metadata accessor for ImportError();
            lazy protocol witness table accessor for type ImportError and conformance ImportError();
            swift_allocError();
            (*(*(v81 - 8) + 104))(v82, *MEMORY[0x277CE4008], v81);
            swift_willThrow();

            v48 = v147;
            v83 = *v147;
            (*v147)(v157, v53);
            (*v148)(v156, v158);
            (*v121)(v122, v138);
            v83(v149, v53);
            goto LABEL_34;
          }

          v72 = 1;
        }

        (*v147)(v157, v53);
        v161 = v72;
        v48 = v155;
        WorkoutStep.workoutCoreRepresentation(activityType:configurationContext:stepType:validator:)(v153, &v162, &v161, v73);
        if (v4)
        {

          (*v146)(v48, v154);
          (*v148)(v156, v158);
          (*v121)(v122, v138);
LABEL_34:

          return v48;
        }

        ++v67;
        (*v146)(v48, v154);
        (*v148)(v156, v158);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v53 = v150;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v66 == v67)
        {

          v74 = v163;
          goto LABEL_23;
        }
      }

      __break(1u);
      break;
    }

    v74 = MEMORY[0x277D84F90];
LABEL_23:
    v56 = v138;
    v75 = v128 + 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v163 = v74;

    static Published.subscript.setter();
    v24 = v122;
    (*v121)(v122, v56);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v54 = v75;
    v76 = v75 == v109;
    v13 = v136;
    v51 = v120;
    if (v76)
    {

      v77 = v160[0];
      v38 = v119;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_40:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000032, 0x800000020B455D70, "WorkoutCore/WorkoutBlock.swift", 30, 2, 30, 0);
  __break(1u);
  return result;
}

uint64_t outlined destroy of WorkoutStep?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of WorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id GuidedActivityTypesMigrator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GuidedActivityTypesMigrator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedActivityTypesMigrator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GuidedActivityTypesMigrator.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GuidedActivityTypesMigrator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized static GuidedActivityTypesMigrator.hide(mediaType:with:)(uint64_t a1, void (*a2)(id))
{
  if (a1 - 2 >= 2)
  {
    if (a1)
    {
      v10 = 52;
    }

    else
    {
      v10 = 37;
    }

    v12 = MEMORY[0x20F2E5300]();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = static HealthDataConstants.mediaTypeProperty.getter();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v16;
    *(inited + 48) = v12;
    *(inited + 56) = v14;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, Any)(inited + 32);
    v17 = objc_allocWithZone(MEMORY[0x277D0A810]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = [v17 initWithActivityTypeIdentifier:v10 isIndoor:0 metadata:isa];

    a2(v19);
  }

  else
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.activityPicker);
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v21 = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x20F2E5300](a1);
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v21);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_20AEA4000, oslog, v4, "[GuidedActivityTypesMigrator] hide: cannot make activity type of mediaType: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    else
    {
    }
  }
}

void specialized static GuidedActivityTypesMigrator.migrateGuidedActivityTypesIfNeeded(with:)(void (*a1)(id))
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B469D30);
  v5 = [v3 BOOLForKey_];

  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.activityPicker);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    *(v9 + 4) = v5 ^ 1;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[GuidedActivityTypesMigrator] migrateGuidedActivityTypesIfNeeded: %{BOOL}d", v9, 8u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  if (v5)
  {
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_15;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "[GuidedActivityTypesMigrator] isFeaturedTileHidden already migrated";
    v13 = v10;
    v14 = oslog;
    v15 = v11;
    v16 = 2;
    goto LABEL_14;
  }

  v17 = [v2 standardUserDefaults];
  v18 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B469D50);
  v19 = [v17 BOOLForKey_];

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v19;
    _os_log_impl(&dword_20AEA4000, v20, v21, "[GuidedActivityTypesMigrator] migrating isFeaturedTileHidden: %{BOOL}d", v22, 8u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  if (v19)
  {
    specialized static GuidedActivityTypesMigrator.hide(mediaType:with:)(1, a1);
    specialized static GuidedActivityTypesMigrator.hide(mediaType:with:)(0, a1);
  }

  v23 = [v2 standardUserDefaults];
  v24 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B469D30);
  [v23 setBool:1 forKey:v24];

  oslog = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v25))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v19;
    v12 = "[GuidedActivityTypesMigrator] migrated  isFeaturedTileHidden: %{BOOL}d";
    v13 = v25;
    v14 = oslog;
    v15 = v11;
    v16 = 8;
LABEL_14:
    _os_log_impl(&dword_20AEA4000, v14, v13, v12, v15, v16);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

LABEL_15:
}

id DataLinkHealthKitClientConnection.__deallocating_deinit(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier;
  v3 = *MEMORY[0x277D767B0];
  if (*&v1[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didDisconnectTaskIdentifier] != *MEMORY[0x277D767B0])
  {
    v4 = [objc_opt_self() sharedApplication];
    [v4 endBackgroundTask_];

    *&v1[v2] = v3;
  }

  v5 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier;
  if (*&v1[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_didFailTaskIdentifier] != v3)
  {
    v6 = [objc_opt_self() sharedApplication];
    [v6 endBackgroundTask_];

    *&v1[v5] = v3;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for DataLinkHealthKitClientConnection();
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t DataLinkHealthKitClientConnection.activateLink(started:activated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v12 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a1;
  v18 = v23;
  v17[4] = a2;
  v17[5] = v18;
  v17[6] = a4;
  aBlock[4] = partial apply for closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_84;
  v19 = _Block_copy(aBlock);
  v20 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v15, v11, v19);
  _Block_release(v19);

  (*(v25 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v24);
}

uint64_t closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.dataLink);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = *&v9[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_store];
    *(v12 + 4) = v14;
    *v13 = v14;
    v15 = v14;
    _os_log_impl(&dword_20AEA4000, v10, v11, "We are setting our remote session handler in %@", v12, 0xCu);
    outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v13, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v18 = &v9[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
  v19 = *&v9[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler];
  v20 = *&v9[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_workoutSessionMirroringStartHandler + 8];
  *v18 = partial apply for closure #1 in closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:);
  v18[1] = v17;

  _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v19, v20);

  v21 = *&v9[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_store];
  v22 = *v18;
  v23 = v18[1];
  if (*v18)
  {
    v27[4] = *v18;
    v27[5] = v23;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    v27[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ();
    v27[3] = &block_descriptor_91_1;
    v24 = _Block_copy(v27);
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ())?(v22);
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ())?(v22);
  }

  else
  {
    outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ())?(0);
    v24 = 0;
  }

  [v21 setWorkoutSessionMirroringStartHandler_];
  _Block_release(v24);
  v25 = _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v22, v23);
  return a4(v25);
}

void closure #1 in closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:)(void *a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
    *(Strong + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session) = a1;
    v8 = a1;

    [v8 setDelegate_];
    v9 = *&v6[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler];
    if (v9)
    {
      v10 = *&v6[OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_presenceHandler + 8];

      v9(1, closure #1 in closure #1 in closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:), 0);
      _s11WorkoutCore16MetricsPublisherCIegg_SgWOe_0(v9, v10);
    }

    a3(0);
  }
}

void closure #1 in closure #1 in closure #1 in DataLinkHealthKitClientConnection.activateLink(started:activated:)()
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.dataLink);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v1, "activateLink: set presenceHandler to true completed", v2, 2u);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKWorkoutSession) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t DataLinkHealthKitClientConnection.sendCommand(_:sequence:closure:)(unsigned __int8 *a1, uint64_t a2, void (*a3)(void, void *), uint64_t a4)
{
  v7 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v10, 1, 1, v12);
  UnknownStorage.init()();
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v10, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  *v10 = v11;
  v10[8] = 1;
  swift_storeEnumTagMultiPayload();
  v13(v10, 0, 1, v12);
  DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(v10, a3, a4);
  return _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v10, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
}

void DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
  if (v6)
  {
    type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
    _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessage);
    v7 = v6;
    v14 = Message.serializedData(partial:)();
    v16 = v15;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.dataLink);
    outlined copy of Data._Representation(v14, v16);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      outlined consume of Data._Representation(v14, v16);
LABEL_25:

      isa = Data._bridgeToObjectiveC()().super.isa;
      v28 = swift_allocObject();
      *(v28 + 16) = a2;
      *(v28 + 24) = a3;
      aBlock[4] = partial apply for closure #1 in DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:);
      aBlock[5] = v28;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_78_0;
      v29 = _Block_copy(aBlock);

      [v7 sendDataToRemoteWorkoutSession:isa completion:v29];

      _Block_release(v29);
      outlined consume of Data._Representation(v14, v16);
      return;
    }

    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = v16 >> 62;
    if ((v16 >> 62) > 1)
    {
      if (v21 != 2)
      {
        v22 = 0;
        goto LABEL_24;
      }

      v24 = *(v14 + 16);
      v23 = *(v14 + 24);
      v25 = __OFSUB__(v23, v24);
      v22 = v23 - v24;
      if (!v25)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v21)
    {
      v22 = BYTE6(v16);
LABEL_24:
      *(v20 + 4) = v22;
      v26 = v20;
      outlined consume of Data._Representation(v14, v16);
      _os_log_impl(&dword_20AEA4000, v18, v19, "Sending data of size %ld", v26, 0xCu);
      MEMORY[0x20F2E9420](v26, -1, -1);
      goto LABEL_25;
    }

    LODWORD(v22) = HIDWORD(v14) - v14;
    if (!__OFSUB__(HIDWORD(v14), v14))
    {
      v22 = v22;
      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.dataLink);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Can't send command if we don't have a session", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    lazy protocol witness table accessor for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError();
    v12 = swift_allocError();
    *v13 = 0;
    a2(0, v12);
  }
}

void closure #1 in DataLinkHealthKitClientConnection.sendDataLinkMessage(_:closure:)(int a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.dataLink);
    v7 = a2;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Error sending data: %@", v10, 0xCu);
      outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    lazy protocol witness table accessor for type DataLinkConnectionCommandError and conformance DataLinkConnectionCommandError();
    v14 = swift_allocError();
    *v15 = a2;
    v16 = a2;
    (a3)(0, v14);
  }

  else
  {
    a3(1);
  }
}

void DataLinkHealthKitClientConnection.sendCurrentKnownSequences()()
{
  v2 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v87 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v86 = (v80 - v12);
  v13 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  MEMORY[0x28223BE20](v15, v16);
  v19 = v80 - v18;
  v20 = *(v0 + OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_session);
  if (!v20)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static WOLog.dataLink);
    v90 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_20AEA4000, v90, v61, "Can't send reset if we don't have a session", v62, 2u);
      MEMORY[0x20F2E9420](v62, -1, -1);
    }

    v63 = v90;

    return;
  }

  v80[0] = v7;
  v80[1] = v6;
  v83 = v17;
  v84 = v2;
  v85 = v5;
  v81 = MEMORY[0x277D84F90];
  *v19 = MEMORY[0x277D84F90];
  v82 = v20;
  v88 = v19;
  UnknownStorage.init()();
  v21 = OBJC_IVAR____TtC11WorkoutCore33DataLinkHealthKitClientConnection_knownSequences;
  swift_beginAccess();
  v22 = *(v0 + v21);
  v23 = v22 + 8;
  v24 = 1 << LOBYTE(v22[4].isa);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  isa = v25 & v22[8].isa;
  v27 = (v24 + 63) >> 6;

  p_cache = &OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider.cache;
  *&v29 = 136446210;
  v89 = v29;
  v90 = v22;
  v30 = 0;
  if (isa)
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_8:
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      swift_once();
      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static WOLog.dataLink);
      v53 = v19;
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        v58 = v19;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v59;
        *v57 = v59;
        _os_log_impl(&dword_20AEA4000, v54, v55, "Failed to send reset: %@", v56, 0xCu);
        outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v57, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v57, -1, -1);
        MEMORY[0x20F2E9420](v56, -1, -1);
      }

      goto LABEL_50;
    }

    if (v31 >= v27)
    {
      break;
    }

    isa = v23[v31].isa;
    ++v30;
    if (isa)
    {
      while (1)
      {
        v32 = __clz(__rbit64(isa));
        isa &= isa - 1;
        v33 = v32 | (v31 << 6);
        v34 = v22[6].isa + 16 * v33;
        v19 = *v34;
        v35 = *(v34 + 8);
        if (v35 == 1 && ((1 << v19) & 0x30001) == 0)
        {
          v45 = *(v22[7].isa + v33);
          v46 = v86;
          *v86 = 0;
          *(v46 + 8) = 1;
          UnknownStorage.init()();
          *v46 = v19;
          *(v46 + 8) = 1;
          *(v46 + 3) = v45;
          outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v46, v87, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v81 + 2) + 1, 1, v81);
          }

          v19 = *(v81 + 2);
          v47 = *(v81 + 3);
          if (v19 >= v47 >> 1)
          {
            v81 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v19 + 1, 1, v81);
          }

          _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v86, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          v48 = v81;
          *(v81 + 2) = v19 + 1;
          outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v87, v48 + ((*(v80[0] + 80) + 32) & ~*(v80[0] + 80)) + *(v80[0] + 72) * v19, type metadata accessor for Apple_Workout_Core_PublisherSequence);
          v88->isa = v48;
          v22 = v90;
          v30 = v31;
          if (!isa)
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (p_cache[310] != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, static WOLog.dataLink);
          v37 = Logger.logObject.getter();
          v1 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v37, v1))
          {
            v38 = swift_slowAlloc();
            v39 = swift_slowAlloc();
            v97 = v39;
            *v38 = v89;
            aBlock = v19;
            LOBYTE(v92) = v35;
            v40 = String.init<A>(describing:)();
            v19 = v41;
            v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v97);

            *(v38 + 4) = v42;
            _os_log_impl(&dword_20AEA4000, v37, v1, "Skipping sequence rest for publisher %{public}s", v38, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v39);
            v43 = v39;
            p_cache = (&OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider + 16);
            MEMORY[0x20F2E9420](v43, -1, -1);
            v44 = v38;
            v22 = v90;
            MEMORY[0x20F2E9420](v44, -1, -1);
          }

          v30 = v31;
          if (!isa)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v31 = v30;
      }
    }
  }

  v49 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v50 = *(*(v49 - 8) + 56);
  v1 = v85;
  v50(v85, 1, 1, v49);
  UnknownStorage.init()();
  v23 = v88;
  v51 = v83;
  outlined init with copy of Apple_Workout_Core_MirroredClientMessage(v88, v83, type metadata accessor for Apple_Workout_Core_SequenceReset);
  outlined destroy of Apple_Workout_Core_MirroredClientMessage.OneOf_Message?(v1, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredClientPrecisionStart(v51, v1, type metadata accessor for Apple_Workout_Core_SequenceReset);
  swift_storeEnumTagMultiPayload();
  v50(v1, 0, 1, v49);
  _s11WorkoutCore06Apple_a1_B29_MirroredClientPrecisionStartVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessage);
  v64 = Message.serializedData(partial:)();
  v66 = v65;
  if (p_cache[310] != -1)
  {
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, static WOLog.dataLink);
  outlined copy of Data._Representation(v64, v66);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v68, v69))
  {
    outlined consume of Data._Representation(v64, v66);
LABEL_49:

    v77 = Data._bridgeToObjectiveC()().super.isa;
    v95 = closure #1 in DataLinkHealthKitClientConnection.sendCurrentKnownSequences();
    v96 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v92 = 1107296256;
    v93 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v94 = &block_descriptor_72_0;
    v78 = _Block_copy(&aBlock);
    v79 = v82;
    [v82 sendDataToRemoteWorkoutSession:v77 completion:v78];
    _Block_release(v78);

    outlined consume of Data._Representation(v64, v66);
LABEL_50:
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v1, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
    _s11WorkoutCore06Apple_a1_B16_DataLinkMessageVWOhTm_1(v23, type metadata accessor for Apple_Workout_Core_SequenceReset);
    return;
  }

  v70 = swift_slowAlloc();
  *v70 = 134217984;
  v71 = v66 >> 62;
  if ((v66 >> 62) > 1)
  {
    if (v71 == 2)
    {
      v74 = *(v64 + 16);
      v73 = *(v64 + 24);
      v75 = __OFSUB__(v73, v74);
      v72 = v73 - v74;
      if (v75)
      {
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      v72 = 0;
    }

LABEL_48:
    *(v70 + 4) = v72;
    v76 = v70;
    outlined consume of Data._Representation(v64, v66);
    _os_log_impl(&dword_20AEA4000, v68, v69, "Sending data of size %ld", v76, 0xCu);
    MEMORY[0x20F2E9420](v76, -1, -1);
    goto LABEL_49;
  }

  if (!v71)
  {
    v72 = BYTE6(v66);
    goto LABEL_48;
  }

LABEL_45:
  LODWORD(v72) = HIDWORD(v64) - v64;
  if (!__OFSUB__(HIDWORD(v64), v64))
  {
    v72 = v72;
    goto LABEL_48;
  }

  __break(1u);
}