uint64_t closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 104) = a1;
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  *(v6 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  *(v6 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  *(v6 + 168) = swift_task_alloc();
  *(v6 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  *(v6 + 200) = swift_task_alloc();
  *(v6 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v6 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), 0, 0);
}

uint64_t closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = v0[29];
    v3 = v0[30];
    v4 = v0[27];
    v5 = v0[28];
    v6 = v0[26];
    v7 = v0[12];
    v8 = Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator;
    v0[31] = *(Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
    v0[32] = *(v8 + 8);
    v9 = Strong;
    swift_unknownObjectRetain();

    v10 = type metadata accessor for UUID();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = [v7 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v13(v2, 0, 1, v12);
    v13(v5, 1, 1, v12);
    v14 = [v7 endDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v13(v4, 0, 1, v12);
    [v7 duration];
    v15 = [objc_opt_self() seconds];
    type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    Measurement.init(value:unit:)();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    v62 = *(*(v16 - 8) + 56);
    v62(v6, 0, 1, v16);
    v17 = [v7 totalDistance];
    if (v17)
    {
      v18 = v17;
      v19 = [objc_opt_self() meterUnit];
      [v18 doubleValueForUnit_];
    }

    v27 = v0[24];
    v28 = v0[21];
    v29 = v0[22];
    v30 = v0[20];
    v55 = v0[19];
    v56 = v0[18];
    v57 = v0[17];
    v58 = v0[16];
    v59 = v0[12];
    v60 = v0[25];
    v31 = [objc_opt_self() meters];
    type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    Measurement.init(value:unit:)();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v61 = *(*(v32 - 8) + 56);
    v61(v27, 0, 1, v32);
    type metadata accessor for UnitPace();
    static UnitPace.secondsPerMeter.getter();
    Measurement.init(value:unit:)();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
    v34 = *(*(v33 - 8) + 56);
    v34(v29, 0, 1, v33);
    static UnitPace.secondsPerMeter.getter();
    Measurement.init(value:unit:)();
    v34(v28, 0, 1, v33);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
    (*(*(v35 - 8) + 56))(v30, 1, 1, v35);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    v37 = *(*(v36 - 8) + 56);
    v37(v55, 1, 1, v36);
    v37(v56, 1, 1, v36);
    v37(v57, 1, 1, v36);
    v37(v58, 1, 1, v36);
    v62(v60, 1, 1, v16);
    v38 = [v59 metadata];
    if (v38)
    {
      v39 = v38;
      v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v40 = 0;
    }

    v41 = v0[23];
    v42 = v0[15];
    v43 = v0[12];
    v0[33] = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v40, 0xD00000000000002CLL, 0x800000020B456CA0);

    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    (*(*(v44 - 8) + 56))(v42, 1, 1, v44);
    v61(v41, 1, 1, v32);
    v45 = [v43 metadata];
    if (v45)
    {
      v46 = v45;
      v47 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v47 = 0;
    }

    v0[34] = v47;
    v48 = v0[14];
    v0[35] = swift_getObjectType();
    v49 = type metadata accessor for HKActivitySummaryRepresentable();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
    v50 = dispatch thunk of Actor.unownedExecutor.getter();
    v52 = v51;
    v53 = closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:);
    goto LABEL_15;
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20)
  {
    v0[38] = objc_opt_self();
    type metadata accessor for MainActor();
    v0[39] = static MainActor.shared.getter();
    v50 = dispatch thunk of Actor.unownedExecutor.getter();
    v52 = v54;
    v53 = closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:);
LABEL_15:

    return MEMORY[0x2822009F8](v53, v50, v52);
  }

  v21 = v20 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator;
  v0[36] = *(v20 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v22 = *(v21 + 8);
  v23 = v20;
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v63 = (*(v22 + 224) + **(v22 + 224));
  v25 = swift_task_alloc();
  v0[37] = v25;
  *v25 = v0;
  v25[1] = closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:);

  return v63(ObjectType, v22);
}

{
  v17 = v0[29];
  v18 = v0[30];
  v15 = v0[27];
  v16 = v0[28];
  v1 = v0[25];
  v13 = v0[24];
  v14 = v0[26];
  v2 = v0[23];
  v11 = v0[22];
  v12 = v0[21];
  v9 = v0[19];
  v10 = v0[20];
  v8 = v0[18];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v18, 0, v17, v16, v15, v14, v13, v11, v12, v10, v9, v8, v3, v4, v1, v0[33], v6, v2, v0[34], 0, v5, v0[35], v0[32]);
  swift_unknownObjectRelease();

  _sSo8NSObjectCSgWOhTm_14(v5, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v1, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v8, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v9, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v10, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), 0, 0);
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator;
    v0[36] = *(Strong + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
    v3 = *(v2 + 8);
    v4 = Strong;
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v10 = (*(v3 + 224) + **(v3 + 224));
    v6 = swift_task_alloc();
    v0[37] = v6;
    *v6 = v0;
    v6[1] = closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:);

    return v10(ObjectType, v3);
  }

  else
  {
    v0[38] = objc_opt_self();
    type metadata accessor for MainActor();
    v0[39] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), v9, v8);
  }
}

{

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), 0, 0);
}

{
  *(v0 + 304) = objc_opt_self();
  type metadata accessor for MainActor();
  *(v0 + 312) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), v2, v1);
}

{
  v1 = *(v0 + 304);

  *(v0 + 320) = [v1 sharedApplication];

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:), 0, 0);
}

{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_outroBackgroundTaskIdentifier];
  }

  else
  {
    v2 = *MEMORY[0x277D767B0];
  }

  v3 = *(v0 + 320);
  [v3 endBackgroundTask_];

  v4 = *(v0 + 8);

  return v4();
}

Swift::Void __swiftcall LiveWorkoutContextManager.cancelAnyPendingAnnouncements()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements(), v6);
}

uint64_t closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements()()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 288) + **(v1 + 288));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements();

  return v5(ObjectType, v1);
}

Swift::Void __swiftcall LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)(Swift::Bool a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v1;
  *(v8 + 40) = a1;
  v9 = v1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:), v8);
}

uint64_t closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v1 + 296) + **(v1 + 296));
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:);
  v4 = *(v0 + 32);

  return v6(v4, ObjectType, v1);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id LiveWorkoutContextManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LiveWorkoutContextManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveWorkoutContextManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void LiveWorkoutContextManager.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  v130 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  v125 = *(v3 - 8);
  v4 = *(v125 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v126 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v127 = &v125 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v125 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v125 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v22 = &v125 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v125 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v129 = &v125 - v28;
  if (a2 > 7)
  {
    if (a2 > 11)
    {
      switch(a2)
      {
        case 12:
          v80 = [v130 powerProvider];
          if (!v80)
          {
            return;
          }

          v81 = v80;
          [v80 averagePower];
          if (v82 == 0.0)
          {
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
            v84 = v127;
            (*(*(v83 - 8) + 56))(v127, 1, 1, v83);
          }

          else
          {
            [v81 averagePower];
            v103 = [objc_opt_self() watts];
            type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
            v84 = v127;
            Measurement.init(value:unit:)();
            v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
            (*(*(v104 - 8) + 56))(v84, 0, 1, v104);
          }

          v105 = v129;
          v106 = v125;
          v107 = v126;
          static TaskPriority.userInitiated.getter();
          v108 = type metadata accessor for TaskPriority();
          (*(*(v108 - 8) + 56))(v105, 0, 1, v108);
          outlined init with copy of Measurement<NSUnitPower>?(v84, v107, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
          v109 = (*(v106 + 80) + 40) & ~*(v106 + 80);
          v110 = swift_allocObject();
          v110[2] = 0;
          v110[3] = 0;
          v111 = v128;
          v110[4] = v128;
          outlined init with take of Measurement<NSUnitPower>?(v107, v110 + v109);
          v112 = v111;
          _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v105, &async function pointer to partial apply for closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v110);
          swift_unknownObjectRelease();

          _sSo8NSObjectCSgWOhTm_14(v105, &_sScPSgMd, &_sScPSgMR);
          v96 = v84;
          v94 = &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd;
          v95 = &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR;
          goto LABEL_50;
        case 37:
          [objc_msgSend(v130 heartRateProvider)];
          v90 = v133;
          swift_unknownObjectRelease();
          v39 = v129;
          static TaskPriority.userInitiated.getter();
          v91 = type metadata accessor for TaskPriority();
          (*(*(v91 - 8) + 56))(v39, 0, 1, v91);
          v41 = swift_allocObject();
          v41[2] = 0;
          v41[3] = 0;
          v92 = v128;
          v41[4] = v128;
          v41[5] = v90;
          v93 = v92;
          v44 = &async function pointer to partial apply for closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
          break;
        case 40:
          [objc_msgSend(v130 heartRateProvider)];
          v38 = v132;
          swift_unknownObjectRelease();
          v39 = v129;
          static TaskPriority.userInitiated.getter();
          v40 = type metadata accessor for TaskPriority();
          (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
          v41 = swift_allocObject();
          v41[2] = 0;
          v41[3] = 0;
          v42 = v128;
          v41[4] = v128;
          v41[5] = v38;
          v43 = v42;
          v44 = &async function pointer to partial apply for closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
          break;
        default:
          return;
      }

      goto LABEL_36;
    }

    if (a2 == 8)
    {
      v70 = [v130 paceProvider];
      v71 = 0.0;
      if (v70)
      {
        v72 = v70;
        v73 = [v70 isPaceAvailable];
        v33 = v129;
        if (v73 && ([v72 averagePaceInMetersPerSecond], v74 != 0.0))
        {
          [v72 averagePaceInMetersPerSecond];
          v114 = v113;
          swift_unknownObjectRelease();
          v71 = 1.0 / v114;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v33 = v129;
      }

      v115 = v128;
      static TaskPriority.userInitiated.getter();
      v116 = type metadata accessor for TaskPriority();
      (*(*(v116 - 8) + 56))(v33, 0, 1, v116);
      v117 = swift_allocObject();
      *(v117 + 16) = 0;
      *(v117 + 24) = 0;
      *(v117 + 32) = v115;
      *(v117 + 40) = v71;
      v118 = v115;
      v119 = &async function pointer to partial apply for specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
      goto LABEL_48;
    }

    if (a2 == 10)
    {
      v50 = swift_allocBox();
      v52 = v51;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
      v54 = *(*(v53 - 8) + 56);
      v54(v52, 1, 1, v53);
      v55 = [v130 elevationProvider];
      if (v55)
      {
        v56 = [v55 elevationGain];
        swift_unknownObjectRelease();
        if (v56)
        {
          v57 = [objc_opt_self() meterUnit];
          [v56 doubleValueForUnit_];

          v58 = [objc_opt_self() meters];
          type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
          Measurement.init(value:unit:)();
          v54(v12, 0, 1, v53);
          outlined assign with take of Measurement<NSUnitLength>?(v12, v52);
        }
      }

      v59 = v129;
      static TaskPriority.userInitiated.getter();
      v60 = type metadata accessor for TaskPriority();
      (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
      v61 = swift_allocObject();
      v61[2] = 0;
      v61[3] = 0;
      v62 = v128;
      v61[4] = v128;
      v61[5] = v50;
      v63 = v62;

      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v59, &async function pointer to partial apply for closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v61);

      _sSo8NSObjectCSgWOhTm_14(v59, &_sScPSgMd, &_sScPSgMR);
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 != 3)
      {
        if (a2 != 4)
        {
          if (a2 != 5)
          {
            return;
          }

          v29 = v130;
          [objc_msgSend(v130 heartRateProvider)];
          v30 = v131;
          swift_unknownObjectRelease();
          [objc_msgSend(v29 heartRateProvider)];
          v31 = v132;
          swift_unknownObjectRelease();
          v32 = [v29 heartRateProvider];
          v33 = v129;
          static TaskPriority.userInitiated.getter();
          v34 = type metadata accessor for TaskPriority();
          (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
          v35 = swift_allocObject();
          v35[2] = 0;
          v35[3] = 0;
          v36 = v128;
          v35[4] = v128;
          v35[5] = v32;
          v35[6] = v30;
          v35[7] = v31;
          v37 = v36;
          swift_unknownObjectRetain();
          _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v33, &async function pointer to partial apply for closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v35);
          swift_unknownObjectRelease();
          goto LABEL_49;
        }

        v85 = [v130 paceProvider];
        v86 = 0.0;
        if (v85)
        {
          v87 = v85;
          v88 = [v85 isPaceAvailable];
          v33 = v129;
          if (v88 && ([v87 currentPaceInMetersPerSecond], v89 != 0.0))
          {
            [v87 currentPaceInMetersPerSecond];
            v121 = v120;
            swift_unknownObjectRelease();
            v86 = 1.0 / v121;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v33 = v129;
        }

        v122 = v128;
        static TaskPriority.userInitiated.getter();
        v123 = type metadata accessor for TaskPriority();
        (*(*(v123 - 8) + 56))(v33, 0, 1, v123);
        v117 = swift_allocObject();
        *(v117 + 16) = 0;
        *(v117 + 24) = 0;
        *(v117 + 32) = v122;
        *(v117 + 40) = v86;
        v124 = v122;
        v119 = &async function pointer to partial apply for specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
LABEL_48:
        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v33, v119, v117);
LABEL_49:

        v94 = &_sScPSgMd;
        v95 = &_sScPSgMR;
        v96 = v33;
        goto LABEL_50;
      }

      [objc_msgSend(v130 elapsedTimeProvider)];
      v76 = v75;
      swift_unknownObjectRelease();
      v39 = v129;
      static TaskPriority.userInitiated.getter();
      v77 = type metadata accessor for TaskPriority();
      (*(*(v77 - 8) + 56))(v39, 0, 1, v77);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v78 = v128;
      v41[4] = v128;
      v41[5] = v76;
      v79 = v78;
      v44 = &async function pointer to partial apply for closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
LABEL_36:
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v39, v44, v41);

      v94 = &_sScPSgMd;
      v95 = &_sScPSgMR;
      v96 = v39;
LABEL_50:
      _sSo8NSObjectCSgWOhTm_14(v96, v94, v95);
      return;
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return;
      }

      [objc_msgSend(v130 energyBurnProvider)];
      v46 = v45;
      swift_unknownObjectRelease();
      v39 = v129;
      static TaskPriority.userInitiated.getter();
      v47 = type metadata accessor for TaskPriority();
      (*(*(v47 - 8) + 56))(v39, 0, 1, v47);
      v41 = swift_allocObject();
      v41[2] = 0;
      v41[3] = 0;
      v48 = v128;
      v41[4] = v128;
      v41[5] = v46;
      v49 = v48;
      v44 = &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
      goto LABEL_36;
    }

    v64 = v130;
    [objc_msgSend(v130 distanceProvider)];
    v66 = v65;
    swift_unknownObjectRelease();
    v67 = [objc_msgSend(v64 distanceProvider)];
    swift_unknownObjectRelease();
    if (v67)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = *(v18 + 32);
      v68(v16, v22, v17);
      (*(v18 + 56))(v16, 0, 1, v17);
      v68(v25, v16, v17);
      v69 = v129;
    }

    else
    {
      (*(v18 + 56))(v16, 1, 1, v17);
      static Date.now.getter();
      v97 = (*(v18 + 48))(v16, 1, v17);
      v69 = v129;
      if (v97 != 1)
      {
        _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    static TaskPriority.userInitiated.getter();
    v98 = type metadata accessor for TaskPriority();
    (*(*(v98 - 8) + 56))(v69, 0, 1, v98);
    (*(v18 + 16))(v22, v25, v17);
    v99 = (*(v18 + 80) + 48) & ~*(v18 + 80);
    v100 = swift_allocObject();
    *(v100 + 2) = 0;
    *(v100 + 3) = 0;
    v101 = v128;
    *(v100 + 4) = v128;
    *(v100 + 5) = v66;
    (*(v18 + 32))(&v100[v99], v22, v17);
    v102 = v101;
    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v69, &async function pointer to partial apply for closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v100);

    _sSo8NSObjectCSgWOhTm_14(v69, &_sScPSgMd, &_sScPSgMR);
    (*(v18 + 8))(v25, v17);
  }
}

uint64_t closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  *(v5 + 32) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  *(v5 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  *(v5 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v25 = v0[12];
  v26 = v0[11];
  v27 = v0[10];
  v28 = v0[9];
  v29 = v0[8];
  v30 = v0[7];
  v31 = v0[6];
  v32 = v0[15];
  v33 = v0[5];
  v34 = v0[13];
  v35 = v0[4];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[21] = *v7;
  v0[22] = v7[1];
  v0[23] = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v2, 1, 1, v9);
  v10(v3, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v25, 1, 1, v15);
  v16(v26, 1, 1, v15);
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
  static NSUnitEnergy.largeCalories.getter();
  Measurement.init(value:unit:)();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v27, 0, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v28, 1, 1, v18);
  v19(v29, 1, 1, v18);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v12(v32, 1, 1, v11);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
  v14(v34, 1, 1, v13);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  v23 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v23, v22);
}

uint64_t closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a6;
  *(v6 + 24) = a1;
  *(v6 + 16) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  *(v6 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  *(v6 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  *(v6 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  *(v6 + 128) = swift_task_alloc();
  *(v6 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v6 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_distanceSampler);
  v0[22] = v2;
  if (v2)
  {
    v3 = closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
    v4 = 0;
  }

  else
  {
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[18];
    v8 = v0[19];
    v9 = v0[17];
    v10 = v0[15];
    v34 = v0[13];
    v35 = v0[12];
    v36 = v0[11];
    v37 = v0[10];
    v38 = v0[9];
    v39 = v0[8];
    v40 = v0[7];
    v41 = v0[16];
    v42 = v0[6];
    v43 = v0[14];
    v11 = (v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
    v0[23] = *v11;
    v0[24] = v11[1];
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 56);
    v14(v6, 1, 1, v13);
    v14(v8, 1, 1, v13);
    v14(v7, 1, 1, v13);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
    v16 = *(*(v15 - 8) + 56);
    v16(v9, 1, 1, v15);
    v17 = [objc_opt_self() meters];
    type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    Measurement.init(value:unit:)();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    v19 = *(*(v18 - 8) + 56);
    v19(v10, 0, 1, v18);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
    v21 = *(*(v20 - 8) + 56);
    v21(v34, 1, 1, v20);
    v21(v35, 1, 1, v20);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
    (*(*(v22 - 8) + 56))(v36, 1, 1, v22);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    v24 = *(*(v23 - 8) + 56);
    v24(v37, 1, 1, v23);
    v24(v38, 1, 1, v23);
    v24(v39, 1, 1, v23);
    v24(v40, 1, 1, v23);
    v16(v41, 1, 1, v15);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
    (*(*(v25 - 8) + 56))(v42, 1, 1, v25);
    v19(v43, 1, 1, v18);
    v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo14HKQuantityTypeC_SaySo0C6SampleCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v27 = v0[5];
    v0[26] = swift_getObjectType();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v26);
    v0[27] = v28;

    v29 = type metadata accessor for HKActivitySummaryRepresentable();
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
    v30 = dispatch thunk of Actor.unownedExecutor.getter();
    v32 = v31;
    v3 = closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
    v2 = v30;
    v4 = v32;
  }

  return MEMORY[0x2822009F8](v3, v2, v4);
}

{
  DistanceSampler.updateDistance(_:date:)(*(v0 + 32), *(v0 + 24));

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v42 = v0[14];
  v43 = v0[22];
  v33 = v0[13];
  v34 = v0[12];
  v35 = v0[11];
  v36 = v0[10];
  v37 = v0[9];
  v38 = v0[8];
  v39 = v0[7];
  v40 = v0[16];
  v41 = v0[6];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[23] = *v7;
  v0[24] = v7[1];
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v3, 1, 1, v9);
  v10(v2, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = [objc_opt_self() meters];
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  Measurement.init(value:unit:)();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v15 = *(*(v14 - 8) + 56);
  v15(v6, 0, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v17 = *(*(v16 - 8) + 56);
  v17(v33, 1, 1, v16);
  v17(v34, 1, 1, v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v18 - 8) + 56))(v35, 1, 1, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v20 = *(*(v19 - 8) + 56);
  v20(v36, 1, 1, v19);
  v20(v37, 1, 1, v19);
  v20(v38, 1, 1, v19);
  v20(v39, 1, 1, v19);
  v12(v40, 1, 1, v11);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v21 - 8) + 56))(v41, 1, 1, v21);
  v15(v42, 1, 1, v14);
  if (v43)
  {
    v22 = v0[22];
    v23 = closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
    v24 = 0;
  }

  else
  {
    v25 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo14HKQuantityTypeC_SaySo0C6SampleCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v26 = v0[5];
    v0[26] = swift_getObjectType();
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v25);
    v0[27] = v27;

    v28 = type metadata accessor for HKActivitySummaryRepresentable();
    (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
    v29 = dispatch thunk of Actor.unownedExecutor.getter();
    v31 = v30;
    v23 = closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);
    v22 = v29;
    v24 = v31;
  }

  return MEMORY[0x2822009F8](v23, v22, v24);
}

{
  *(v0 + 200) = DistanceSampler.samplesByType.getter();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

{
  v1 = v0[25];
  v2 = v0[5];
  v0[26] = swift_getObjectType();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v1);
  v0[27] = v3;

  v4 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v6, v5);
}

{
  v17 = v0[21];
  v16 = v0[20];
  v15 = v0[19];
  v1 = v0[16];
  v13 = v0[17];
  v14 = v0[18];
  v2 = v0[14];
  v10 = v0[13];
  v11 = v0[12];
  v12 = v0[15];
  v3 = v0[10];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v18 = v0[11];
  v19 = v0[7];
  v7 = v0[5];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v17, 0, v16, v15, v14, v13, v12, v10, v11, v18, v3, v5, v4, v19, v1, 0, v6, v2, 0, v0[27], v7, v0[26], v0[24]);

  _sSo8NSObjectCSgWOhTm_14(v7, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v1, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v10, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v8 = v0[1];

  return v8();
}

uint64_t closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:)(a1);
}

uint64_t closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:)(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  *(v2 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  *(v2 + 64) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  *(v2 + 128) = swift_task_alloc();
  *(v2 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v2 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

uint64_t LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:)()
{
  v1 = (v0[3] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[24] = *v1;
  v2 = v1[1];
  v0[25] = v2;
  v0[26] = swift_getObjectType();
  v0[27] = *(v2 + 312);
  v0[28] = (v2 + 312) & 0xFFFFFFFFFFFFLL | 0xDC46000000000000;
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[29] = v4;
  v0[30] = v3;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), v4, v3);
}

{
  (*(v0 + 216))(*(v0 + 208), *(v0 + 200));

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

{
  if (*(v0 + 305))
  {
    v1 = 1;
  }

  else
  {
    if (one-time initialization token for progressMomentPeriod != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 184);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = __swift_project_value_buffer(v3, static LiveWorkoutContextManager.Constants.progressMomentPeriod);
    (*(v4 + 16))(v2, v5, v3);
    v1 = 0;
  }

  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v29 = *(v0 + 176);
  v30 = *(v0 + 136);
  v31 = *(v0 + 120);
  v32 = *(v0 + 112);
  v33 = *(v0 + 104);
  v34 = *(v0 + 96);
  v35 = *(v0 + 88);
  v36 = *(v0 + 80);
  v37 = *(v0 + 72);
  v38 = *(v0 + 64);
  v39 = *(v0 + 128);
  v40 = *(v0 + 56);
  v10 = *(v0 + 32);
  v11 = *(*(v0 + 40) + 56);
  v11(*(v0 + 184), v1, 1, v10);
  v12 = type metadata accessor for UUID();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = type metadata accessor for Date();
  v14 = *(*(v13 - 8) + 56);
  v14(v7, 1, 1, v13);
  v14(v9, 1, 1, v13);
  v14(v8, 1, 1, v13);
  v15 = objc_opt_self();
  *(v0 + 248) = v15;
  v16 = [v15 seconds];
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  Measurement.init(value:unit:)();
  v11(v29, 0, 1, v10);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v18 = *(*(v17 - 8) + 56);
  v18(v30, 1, 1, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v20 = *(*(v19 - 8) + 56);
  v20(v31, 1, 1, v19);
  v20(v32, 1, 1, v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v21 - 8) + 56))(v33, 1, 1, v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v23 = *(*(v22 - 8) + 56);
  v23(v34, 1, 1, v22);
  v23(v35, 1, 1, v22);
  v23(v36, 1, 1, v22);
  v23(v37, 1, 1, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v24 - 8) + 56))(v38, 1, 1, v24);
  v18(v39, 1, 1, v17);
  v25 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v25 - 8) + 56))(v40, 1, 1, v25);
  v26 = *(v0 + 232);
  v27 = *(v0 + 240);

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), v26, v27);
}

{
  v1 = v0[25];
  v19 = v0[20];
  v20 = v0[21];
  v18 = v0[19];
  v16 = v0[22];
  v17 = v0[18];
  v15 = v0[17];
  v2 = v0[16];
  v13 = v0[15];
  v14 = v0[14];
  v12 = v0[13];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v20, 0, v19, v18, v17, v16, v15, v13, v14, v12, v4, v3, v5, v6, v0[23], 0, v7, v2, 0, 0, v8, v0[26], v1);
  _sSo8NSObjectCSgWOhTm_14(v8, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v0[32] = *(v1 + 200);
  v0[33] = (v1 + 200) & 0xFFFFFFFFFFFFLL | 0x22D000000000000;
  v9 = v0[29];
  v10 = v0[30];

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), v9, v10);
}

{
  *(v0 + 306) = (*(v0 + 256))(*(v0 + 208), *(v0 + 200)) & 1;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_isPaused) & 1) == 0 && *(v0 + 306))
  {
    v3 = OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastProgressMomentElapsedTime;
    v4 = v2 - *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastProgressMomentElapsedTime);
    if (one-time initialization token for progressMomentPeriod != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 248);
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 32);
    __swift_project_value_buffer(v8, static LiveWorkoutContextManager.Constants.progressMomentPeriod);
    v9 = [v5 seconds];
    Measurement<>.converted(to:)();

    Measurement.value.getter();
    v11 = v10;
    (*(v7 + 8))(v6, v8);
    if (v11 <= v4)
    {
      v19 = *(v0 + 200);
      *(v1 + v3) = *(v0 + 16);
      v24 = (*(v19 + 208) + **(v19 + 208));
      v20 = swift_task_alloc();
      *(v0 + 272) = v20;
      *v20 = v0;
      v20[1] = LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:);
      v14 = *(v0 + 200);
      v15 = *(v0 + 208);
      v16 = v24;

      return v16(v15, v14);
    }

    v1 = *(v0 + 24);
    v2 = *(v0 + 16);
    if (v2 - *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastBreakthroughCheckElapsedTime) >= 30.0)
    {
      v21 = *(v0 + 200);
      *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_lastBreakthroughCheckElapsedTime) = v2;
      v25 = (*(v21 + 216) + **(v21 + 216));
      v22 = swift_task_alloc();
      *(v0 + 280) = v22;
      *v22 = v0;
      v22[1] = LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:);
      v14 = *(v0 + 200);
      v15 = *(v0 + 208);
      v16 = v25;

      return v16(v15, v14);
    }
  }

  if (v2 > 45.0 && (*(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated) & 1) == 0 && (*(v0 + 306) & 1) == 0)
  {
    v12 = *(v0 + 200);
    *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated) = 1;
    v23 = (*(v12 + 192) + **(v12 + 192));
    v13 = swift_task_alloc();
    *(v0 + 288) = v13;
    *v13 = v0;
    v13[1] = LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:);
    v14 = *(v0 + 200);
    v15 = *(v0 + 208);
    v16 = v23;

    return v16(v15, v14);
  }

  _sSo8NSObjectCSgWOhTm_14(*(v0 + 184), &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);

  v17 = *(v0 + 8);

  return v17();
}

{

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

{
  if (*(v0 + 16) <= 45.0 || (v1 = *(v0 + 24), (*(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated) & 1) != 0) || (*(v0 + 306) & 1) != 0)
  {
    _sSo8NSObjectCSgWOhTm_14(*(v0 + 184), &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v2 = *(v0 + 200);
    *(v1 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_gracePeriodPassedAndPotentialFallbackEvaluated) = 1;
    v8 = (*(v2 + 192) + **(v2 + 192));
    v3 = swift_task_alloc();
    *(v0 + 288) = v3;
    *v3 = v0;
    v3[1] = LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:);
    v4 = *(v0 + 200);
    v5 = *(v0 + 208);

    return v8(v5, v4);
  }
}

{

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

{
  if (*(v0 + 307))
  {
    _sSo8NSObjectCSgWOhTm_14(*(v0 + 184), &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.workoutVoice);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, v4, v5, "Have not recovered availability/headphones within the grace period. Falling back to Siri for the rest of the workout", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v7 = *(v0 + 200);

    v11 = (*(v7 + 256) + **(v7 + 256));
    v8 = swift_task_alloc();
    *(v0 + 296) = v8;
    *v8 = v0;
    v8[1] = LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:);
    v10 = *(v0 + 200);
    v9 = *(v0 + 208);

    return v11(1, v9, v10);
  }
}

{

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

{
  LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(0, 0);
  _sSo8NSObjectCSgWOhTm_14(*(v0 + 184), &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:)(char a1)
{
  *(*v1 + 307) = a1;

  return MEMORY[0x2822009F8](LiveWorkoutContextManager.handleDurationMetricUpdate(elapsedTime:), 0, 0);
}

uint64_t specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  *(v5 + 32) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  *(v5 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  *(v5 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[12];
  v26 = v0[11];
  v27 = v0[10];
  v28 = v0[9];
  v29 = v0[8];
  v30 = v0[7];
  v31 = v0[6];
  v32 = v0[15];
  v33 = v0[5];
  v34 = v0[13];
  v35 = v0[4];
  v8 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[21] = *v8;
  v0[22] = v8[1];
  v0[23] = swift_getObjectType();
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v2, 1, 1, v10);
  v11(v4, 1, 1, v10);
  v11(v3, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v25 = *(*(v14 - 8) + 56);
  v25(v6, 1, 1, v14);
  type metadata accessor for UnitPace();
  static UnitPace.secondsPerMeter.getter();
  Measurement.init(value:unit:)();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v7, 0, 1, v15);
  v16(v26, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v27, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v28, 1, 1, v18);
  v19(v29, 1, 1, v18);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v13(v32, 1, 1, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
  v25(v34, 1, 1, v14);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v21 - 8) + 56))(v35, 1, 1, v21);
  v23 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v23, v22);
}

{
  v17 = v0[20];
  v16 = v0[19];
  v14 = v0[16];
  v15 = v0[17];
  v1 = v0[15];
  v2 = v0[13];
  v11 = v0[12];
  v12 = v0[11];
  v13 = v0[14];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v18 = v0[10];
  v19 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[18];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v17, 0, v16, v8, v15, v14, v13, v11, v12, v18, v4, v3, v19, v5, v1, 0, v7, v2, 0, 0, v6, v0[23], v0[22]);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v1, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v9 = v0[1];

  return v9();
}

uint64_t closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 16) = a6;
  *(v7 + 24) = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  *(v7 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  *(v7 + 56) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  *(v7 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  *(v7 + 104) = swift_task_alloc();
  *(v7 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  *(v7 + 136) = swift_task_alloc();
  *(v7 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v7 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[23] = *v1;
  v2 = v1[1];
  v0[24] = v2;
  v0[25] = swift_getObjectType();
  v0[26] = *(v2 + 176);
  v0[27] = (v2 + 176) & 0xFFFFFFFFFFFFLL | 0xDE3C000000000000;
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[28] = v4;
  v0[29] = v3;

  return MEMORY[0x2822009F8](closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v4, v3);
}

{
  (*(v0 + 208))(*(v0 + 24), *(v0 + 200), *(v0 + 192));

  return MEMORY[0x2822009F8](closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[16];
  v23 = v0[14];
  v24 = v0[13];
  v25 = v0[12];
  v27 = v0[11];
  v28 = v0[10];
  v29 = v0[9];
  v30 = v0[8];
  v31 = v0[17];
  v32 = v0[7];
  v33 = v0[15];
  v34 = v0[6];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);
  v9(v1, 1, 1, v8);
  v9(v4, 1, 1, v8);
  v9(v3, 1, 1, v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v11 = *(*(v10 - 8) + 56);
  v11(v5, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v26 = *(*(v12 - 8) + 56);
  v26(v6, 1, 1, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v14 = *(*(v13 - 8) + 56);
  v14(v23, 1, 1, v13);
  v14(v24, 1, 1, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v15 - 8) + 56))(v25, 1, 1, v15);
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitFrequency, 0x277CCAE00);
  static NSUnitFrequency.beatsPerMinute.getter();
  Measurement.init(value:unit:)();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v17 = *(*(v16 - 8) + 56);
  v17(v27, 0, 1, v16);
  v17(v28, 1, 1, v16);
  v17(v29, 1, 1, v16);
  static NSUnitFrequency.beatsPerMinute.getter();
  Measurement.init(value:unit:)();
  v17(v30, 0, 1, v16);
  v11(v31, 1, 1, v10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v18 - 8) + 56))(v32, 1, 1, v18);
  v26(v33, 1, 1, v12);
  v19 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v19 - 8) + 56))(v34, 1, 1, v19);
  v20 = v0[28];
  v21 = v0[29];

  return MEMORY[0x2822009F8](closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v20, v21);
}

{
  v17 = v0[22];
  v16 = v0[21];
  v14 = v0[18];
  v15 = v0[19];
  v1 = v0[17];
  v2 = v0[15];
  v11 = v0[14];
  v12 = v0[13];
  v13 = v0[16];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v18 = v0[12];
  v19 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[20];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v17, 0, v16, v8, v15, v14, v13, v11, v12, v18, v4, v3, v19, v5, v1, 0, v7, v2, 0, 0, v6, v0[25], v0[24]);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v1, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v9 = v0[1];

  return v9();
}

uint64_t specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  *(v5 + 32) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  *(v5 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  *(v5 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v2 = v0[19];
  v1 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v24 = v0[12];
  v26 = v0[11];
  v27 = v0[10];
  v28 = v0[9];
  v29 = v0[8];
  v30 = v0[7];
  v31 = v0[6];
  v32 = v0[15];
  v33 = v0[5];
  v34 = v0[13];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v35 = v0[4];
  v0[21] = *v7;
  v0[22] = v7[1];
  v0[23] = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v2, 1, 1, v9);
  v10(v3, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v25 = *(*(v13 - 8) + 56);
  v25(v6, 1, 1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v15 = *(*(v14 - 8) + 56);
  v15(v24, 1, 1, v14);
  type metadata accessor for UnitPace();
  static UnitPace.secondsPerMeter.getter();
  Measurement.init(value:unit:)();
  v15(v26, 0, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v16 - 8) + 56))(v27, 1, 1, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v18 = *(*(v17 - 8) + 56);
  v18(v28, 1, 1, v17);
  v18(v29, 1, 1, v17);
  v18(v30, 1, 1, v17);
  v18(v31, 1, 1, v17);
  v12(v32, 1, 1, v11);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v19 - 8) + 56))(v33, 1, 1, v19);
  v25(v34, 1, 1, v13);
  v20 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  v22 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v22, v21);
}

uint64_t closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  v5[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[22] = swift_task_alloc();
  v5[23] = swift_projectBox();

  return MEMORY[0x2822009F8](closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v34 = v0[23];
  v35 = v0[15];
  v25 = v0[14];
  v26 = v0[13];
  v27 = v0[12];
  v28 = v0[11];
  v29 = v0[10];
  v30 = v0[9];
  v31 = v0[8];
  v32 = v0[17];
  v7 = v0[6];
  v33 = v0[7];
  v8 = (v0[5] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[24] = *v8;
  v36 = v7;
  v0[25] = v8[1];
  v0[26] = swift_getObjectType();
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = type metadata accessor for Date();
  v11 = *(*(v10 - 8) + 56);
  v11(v3, 1, 1, v10);
  v11(v2, 1, 1, v10);
  v11(v5, 1, 1, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v13 = *(*(v12 - 8) + 56);
  v13(v4, 1, 1, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v25, 1, 1, v15);
  v16(v26, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v27, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v28, 1, 1, v18);
  v19(v29, 1, 1, v18);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v13(v32, 1, 1, v12);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitPower>?(v34, v35, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v21 - 8) + 56))(v36, 1, 1, v21);
  v23 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v23, v22);
}

{
  v17 = v0[22];
  v16 = v0[21];
  v1 = v0[17];
  v14 = v0[18];
  v15 = v0[19];
  v2 = v0[15];
  v11 = v0[14];
  v12 = v0[13];
  v13 = v0[16];
  v3 = v0[11];
  v4 = v0[10];
  v18 = v0[12];
  v19 = v0[9];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[6];
  v8 = v0[20];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v17, 0, v16, v8, v15, v14, v13, v11, v12, v18, v3, v4, v19, v6, v1, 0, v5, v2, 0, 0, v7, v0[26], v0[25]);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v1, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v19, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v9 = v0[1];

  return v9();
}

uint64_t closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  v5[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v5[5] = swift_task_alloc();
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v6 = v0[13];
  v31 = v0[14];
  v32 = v0[12];
  v24 = v0[11];
  v25 = v0[10];
  v26 = v0[9];
  v27 = v0[8];
  v28 = v0[7];
  v29 = v0[6];
  v30 = v0[5];
  v33 = v0[4];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[20] = *v7;
  v0[21] = v7[1];
  v0[22] = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v10(v3, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v24, 1, 1, v15);
  v16(v25, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v27, 1, 1, v18);
  v19(v28, 1, 1, v18);
  v19(v29, 1, 1, v18);
  v19(v30, 1, 1, v18);
  v12(v31, 1, 1, v11);
  v14(v32, 1, 1, v13);
  v20 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v20 - 8) + 56))(v33, 1, 1, v20);
  v22 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v22, v21);
}

{
  v16 = v0[19];
  v14 = v0[17];
  v15 = v0[18];
  v12 = v0[15];
  v13 = v0[16];
  v1 = v0[14];
  v2 = v0[12];
  v10 = v0[11];
  v11 = v0[13];
  v3 = v0[9];
  v4 = v0[8];
  v18 = v0[7];
  v5 = v0[6];
  v6 = v0[4];
  v17 = v0[5];
  v7 = v0[10];
  WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(v16, 0, v15, v14, v13, v12, v11, v10, v7, v3, v4, v18, v5, v17, v1, 0, v0[3], v2, 0, 0, v6, v0[22], v0[21]);
  _sSo8NSObjectCSgWOhTm_14(v6, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v2, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v1, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v17, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v5, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v18, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v4, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v3, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v7, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v10, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v11, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  _sSo8NSObjectCSgWOhTm_14(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v14, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  _sSo8NSObjectCSgWOhTm_14(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  v8 = v0[1];

  return v8();
}

uint64_t closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  *(v5 + 32) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  *(v5 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  *(v5 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v24 = v0[12];
  v25 = v0[11];
  v27 = v0[10];
  v28 = v0[9];
  v29 = v0[8];
  v30 = v0[7];
  v31 = v0[6];
  v32 = v0[15];
  v33 = v0[5];
  v34 = v0[13];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v35 = v0[4];
  v0[21] = *v7;
  v0[22] = v7[1];
  v0[23] = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  v10(v3, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v26 = *(*(v13 - 8) + 56);
  v26(v6, 1, 1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v15 = *(*(v14 - 8) + 56);
  v15(v24, 1, 1, v14);
  v15(v25, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v16 - 8) + 56))(v27, 1, 1, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v18 = *(*(v17 - 8) + 56);
  v18(v28, 1, 1, v17);
  v18(v29, 1, 1, v17);
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitFrequency, 0x277CCAE00);
  static NSUnitFrequency.beatsPerMinute.getter();
  Measurement.init(value:unit:)();
  v18(v30, 0, 1, v17);
  v18(v31, 1, 1, v17);
  v12(v32, 1, 1, v11);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v19 - 8) + 56))(v33, 1, 1, v19);
  v26(v34, 1, 1, v13);
  v20 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  v22 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v22, v21);
}

uint64_t closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  *(v5 + 32) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  *(v5 + 40) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = swift_task_alloc();
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  *(v5 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v5 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), 0, 0);
}

uint64_t closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v24 = v0[12];
  v25 = v0[11];
  v27 = v0[10];
  v28 = v0[9];
  v29 = v0[8];
  v30 = v0[7];
  v31 = v0[6];
  v32 = v0[15];
  v33 = v0[5];
  v34 = v0[13];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v35 = v0[4];
  v0[21] = *v7;
  v0[22] = v7[1];
  v0[23] = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  v10(v3, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v26 = *(*(v13 - 8) + 56);
  v26(v6, 1, 1, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v15 = *(*(v14 - 8) + 56);
  v15(v24, 1, 1, v14);
  v15(v25, 1, 1, v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v16 - 8) + 56))(v27, 1, 1, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v18 = *(*(v17 - 8) + 56);
  v18(v28, 1, 1, v17);
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitFrequency, 0x277CCAE00);
  static NSUnitFrequency.beatsPerMinute.getter();
  Measurement.init(value:unit:)();
  v18(v29, 0, 1, v17);
  v18(v30, 1, 1, v17);
  v18(v31, 1, 1, v17);
  v12(v32, 1, 1, v11);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v19 - 8) + 56))(v33, 1, 1, v19);
  v26(v34, 1, 1, v13);
  v20 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v20 - 8) + 56))(v35, 1, 1, v20);
  v22 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:), v22, v21);
}

void LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = *&v3[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_splitProvider];
  if (v10)
  {
    v11 = one-time initialization token for workoutVoice;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.workoutVoice);
    swift_unknownObjectRetain();
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134218240;
      [v13 distanceInMeters];
      *(v16 + 4) = v17;
      *(v16 + 12) = 2048;
      [v10 definedSplitDistance];
      *(v16 + 14) = v18;
      _os_log_impl(&dword_20AEA4000, v14, v15, "SplitComplete event received, distanceInMeters %f and display split target %f", v16, 0x16u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v3;
    v20[5] = v13;
    v20[6] = v10;
    v20[7] = a2;
    v21 = v13;
    v22 = v3;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:), v20);
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.workoutVoice);
    v28 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v28, v24, "Received a split but no split provider was declared", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    v26 = v28;
  }
}

uint64_t closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  v17 = *(v5 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_activityType);
  v18 = *(v0 + 48);
  v16 = *(v5 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_unitManager);
  [*(v0 + 24) distanceInMeters];
  v6 = objc_opt_self();
  v7 = [v6 meters];
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  Measurement.init(value:unit:)();
  [v4 definedSplitDistance];
  v8 = [v6 meters];
  Measurement.init(value:unit:)();
  v9 = specialized static LiveWorkoutContextManager.shouldAnnounceSplitWithMotivation(activityType:unitManager:splitDistance:splitDefinedDistance:liveWorkoutConfiguration:)(v17, v16, v1, v2);
  v10 = *(v3 + 8);
  v10(v2, v18);
  v10(v1, v18);
  v11 = *(v5 + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator + 8);
  ObjectType = swift_getObjectType();
  v19 = (*(v11 + 304) + **(v11 + 304));
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:);
  v14 = *(v0 + 40);

  return v19(v14, v9 & 1, ObjectType, v11);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

Swift::Void __swiftcall LiveWorkoutContextManager.activityRingsUpdated(with:)(HKActivitySummary with)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v40 - v6;
  v8 = type metadata accessor for CacheIndex();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HKActivitySummaryRepresentable();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v40 - v20;
  MEMORY[0x20F2E5840]([(objc_class *)with.super.isa _activitySummaryIndex]);
  static HKActivitySummaryRepresentable.from(_:pausedIntervals:rings:moveTotal:moveMinutestotal:exerciseTotal:standTotal:stepsTotal:flightsTotal:distanceTotal:activityMoveMode:isWheelchairUser:)();
  (*(v9 + 8))(v12, v8);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.workoutVoice);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v25 = 136315138;
    v26 = _typeName(_:qualified:)();
    LODWORD(ObjectType) = v24;
    v28 = v18;
    v29 = v14;
    v30 = v21;
    v31 = v13;
    v32 = v7;
    v33 = v2;
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v43);

    *(v25 + 4) = v34;
    v2 = v33;
    v7 = v32;
    v13 = v31;
    v21 = v30;
    v14 = v29;
    v18 = v28;
    _os_log_impl(&dword_20AEA4000, v23, ObjectType, "%s Activity summary updated. Updating workout context.", v25, 0xCu);
    v35 = v40;
    __swift_destroy_boxed_opaque_existential_1Tm_18(v40);
    MEMORY[0x20F2E9420](v35, -1, -1);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  v36 = type metadata accessor for TaskPriority();
  (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
  (*(v14 + 16))(v18, v21, v13);
  v37 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v38 = swift_allocObject();
  *(v38 + 2) = 0;
  *(v38 + 3) = 0;
  *(v38 + 4) = v2;
  (*(v14 + 32))(&v38[v37], v18, v13);
  v39 = v2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:), v38);

  (*(v14 + 8))(v21, v13);
}

uint64_t closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  v5[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  v5[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v26 = v0[12];
  v27 = v0[11];
  v28 = v0[10];
  v29 = v0[9];
  v30 = v0[8];
  v31 = v0[7];
  v32 = v0[6];
  v33 = v0[15];
  v34 = v0[5];
  v35 = v0[13];
  v36 = v0[4];
  v37 = v0[3];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[21] = *v7;
  v0[22] = v7[1];
  v0[23] = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  v10(v3, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v26, 1, 1, v15);
  v16(v27, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v28, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v29, 1, 1, v18);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v19(v32, 1, 1, v18);
  v12(v33, 1, 1, v11);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  v14(v35, 1, 1, v13);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v36, v37, v21);
  (*(v22 + 56))(v36, 0, 1, v21);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:), v24, v23);
}

uint64_t LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v45 = a1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for CacheIndex();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HKActivitySummaryRepresentable();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v42 - v21;
  MEMORY[0x20F2E5840]([a2 _activitySummaryIndex]);
  static HKActivitySummaryRepresentable.from(_:pausedIntervals:rings:moveTotal:moveMinutestotal:exerciseTotal:standTotal:stepsTotal:flightsTotal:distanceTotal:activityMoveMode:isWheelchairUser:)();
  (*(v10 + 8))(v13, v9);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static WOLog.workoutVoice);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v47 = v43;
    *v26 = 136315394;
    v27 = _typeName(_:qualified:)();
    LODWORD(ObjectType) = v25;
    v29 = v19;
    v30 = v15;
    v31 = v22;
    v32 = v14;
    v33 = v8;
    v34 = v3;
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v47);

    *(v26 + 4) = v35;
    v3 = v34;
    v8 = v33;
    v14 = v32;
    v22 = v31;
    v15 = v30;
    v19 = v29;
    *(v26 + 12) = 2048;
    *(v26 + 14) = v45;
    _os_log_impl(&dword_20AEA4000, v24, ObjectType, "%s Ring of type %ld was closed. Updating workout context.", v26, 0x16u);
    v36 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm_18(v43);
    MEMORY[0x20F2E9420](v36, -1, -1);
    MEMORY[0x20F2E9420](v26, -1, -1);
  }

  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v8, 1, 1, v37);
  (*(v15 + 16))(v19, v22, v14);
  v38 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = v3;
  (*(v15 + 32))(&v39[v38], v19, v14);
  v40 = v3;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:), v39);

  return (*(v15 + 8))(v22, v14);
}

uint64_t closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  v5[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  v5[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)()
{
  v1 = v0[19];
  v2 = v0[20];
  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[16];
  v6 = v0[14];
  v26 = v0[12];
  v27 = v0[11];
  v28 = v0[10];
  v29 = v0[9];
  v30 = v0[8];
  v31 = v0[7];
  v32 = v0[6];
  v33 = v0[15];
  v34 = v0[5];
  v35 = v0[13];
  v36 = v0[4];
  v37 = v0[3];
  v7 = (v0[2] + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator);
  v0[21] = *v7;
  v0[22] = v7[1];
  v0[23] = swift_getObjectType();
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v1, 1, 1, v9);
  v10(v3, 1, 1, v9);
  v10(v4, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v14 = *(*(v13 - 8) + 56);
  v14(v6, 1, 1, v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v26, 1, 1, v15);
  v16(v27, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v28, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v29, 1, 1, v18);
  v19(v30, 1, 1, v18);
  v19(v31, 1, 1, v18);
  v19(v32, 1, 1, v18);
  v12(v33, 1, 1, v11);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v20 - 8) + 56))(v34, 1, 1, v20);
  v14(v35, 1, 1, v13);
  v21 = type metadata accessor for HKActivitySummaryRepresentable();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v36, v37, v21);
  (*(v22 + 56))(v36, 0, 1, v21);
  v24 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:), v24, v23);
}

void LiveWorkoutContextManager.workout(_:didMoveToState:)(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v29 - v11;
  if (a2 == 5)
  {
    v22 = *&v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_sessionActivity];
    v23 = MEMORY[0x20F2E6C00](0xD00000000000002BLL, 0x800000020B4687C0);
    [v22 removeMetadata:v23 forceTopLevel:1];

    goto LABEL_10;
  }

  if (a2 != 4)
  {
LABEL_10:
    v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_isPaused] = a2 == 3;
    return;
  }

  v13 = [a1 catalogWorkoutBridge];
  if (!v13)
  {
    v24 = type metadata accessor for CatalogWorkout();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    _sSo8NSObjectCSgWOhTm_14(v12, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
    if ((v2[OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_isPaused] & 1) == 0)
    {
      v25 = type metadata accessor for TaskPriority();
      (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = v2;
      v26[5] = a1;
      v27 = v2;
      v28 = a1;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:), v26);
    }

    goto LABEL_10;
  }

  v14 = v13;
  v15 = OBJC_IVAR___WOCoreCatalogWorkout_bridgedValue;
  v16 = type metadata accessor for CatalogWorkout();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v12, &v14[v15], v16);

  (*(v17 + 56))(v12, 0, 1, v16);
  _sSo8NSObjectCSgWOhTm_14(v12, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.workoutVoice);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_20AEA4000, v19, v20, "This workout is a Catalog Workout. Stopping Workout Buddy", v21, 2u);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:), 0, 0);
}

uint64_t closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore25LiveWorkoutContextManager_momentCoordinator + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 232) + **(v1 + 232));
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:);

  return v5(ObjectType, v1);
}

{

  return MEMORY[0x2822009F8](closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:), 0, 0);
}

{
  v35 = v0;
  v1 = [*(v0 + 24) startDate];
  if (v1)
  {
    v2 = v1;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 72);
    v4 = *(v0 + 80);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.workoutVoice);
    v33 = *(v6 + 16);
    v33(v3, v4, v5);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 72);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    if (v10)
    {
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v14 = 136315138;
      lazy protocol witness table accessor for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      v32 = *(v13 + 8);
      v32(v11, v12);
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v34);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Updating start date to %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_18(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    else
    {

      v32 = *(v13 + 8);
      v32(v11, v12);
    }

    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    v21 = *(v0 + 40);
    v22 = *(v0 + 48);
    v23 = *(v0 + 32);
    v24 = *(v0 + 16);
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
    v33(v20, v19, v21);
    v26 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v27 = swift_allocObject();
    *(v27 + 2) = 0;
    *(v27 + 3) = 0;
    *(v27 + 4) = v24;
    (*(v22 + 32))(&v27[v26], v20, v21);
    v28 = v24;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v23, &closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)partial apply, v27);

    v32(v19, v21);
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double specialized static LiveWorkoutContextManager.Constants.minDistanceThresholdForSplitMomentsInMeters(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v18 - v9;
  [a1 effectiveTypeIdentifier];
  v11 = objc_opt_self();
  v12 = [v11 miles];
  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  Measurement.init(value:unit:)();
  v13 = [v11 meters];
  Measurement<>.converted(to:)();

  v14 = *(v3 + 8);
  v14(v7, v2);
  Measurement.value.getter();
  v16 = v15;
  v14(v10, v2);
  return v16;
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.setDelegate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LiveWorkoutContextManager.setDelegate(_:);

  return closure #1 in LiveWorkoutContextManager.setDelegate(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:);

  return closure #1 in LiveWorkoutContextManager.setAlertDelegate(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:);

  return closure #1 in LiveWorkoutContextManager.setMetricsPublisher(_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:);

  return closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:);

  return closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply;

  return closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(a1, v4, v5, v6, v7, v8);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply;

  return closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(a1, v4, v5, v6, v7, v8);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 41);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)partial apply;

  return closure #1 in LiveWorkoutContextManager.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:);

  return closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:)(v8, a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in LiveWorkoutContextManager.generateOutroMoment(for:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements();

  return closure #1 in LiveWorkoutContextManager.cancelAnyPendingAnnouncements()(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:);

  return closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)(a1, v4, v5, v6, v7);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.setWorkoutBuddyMuted(_:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #10 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v7, a1, v4, v5, v6);
}

uint64_t partial apply for closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #9 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v7, a1, v4, v5, v6);
}

uint64_t outlined init with take of Measurement<NSUnitPower>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #8 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #7 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(a1, v4, v5, v7, v6);
}

uint64_t outlined assign with take of Measurement<NSUnitLength>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return specialized closure #6 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v7, a1, v4, v5, v6);
}

uint64_t objectdestroy_2Tm_1(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 40));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t partial apply for closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #5 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v8, v9, a1, v4, v5, v6, v7);
}

uint64_t partial apply for specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return specialized closure #4 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v7, a1, v4, v5, v6);
}

uint64_t partial apply for closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #3 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v2);
}

uint64_t partial apply for closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #2 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v9, a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_18Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:);

  return closure #1 in LiveWorkoutContextManager.dataProvider(_:didUpdate:)(v7, a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:);

  return closure #1 in LiveWorkoutContextManager.splitComplete(_:currentSplitEvents:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t specialized static LiveWorkoutContextManager.shouldAnnounceSplitWithMotivation(activityType:unitManager:splitDistance:splitDefinedDistance:liveWorkoutConfiguration:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - v10;
  v12 = [a2 userDistanceHKUnitForActivityType_];
  v13 = [a1 identifier];
  v14 = [a1 isIndoor];
  v15 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:v13 isIndoor:v14];
  v16 = [objc_opt_self() distanceSplitForActivityType:v15 userDistanceUnit:v12];
  if (!LiveWorkoutConfiguration.configureWithWorkoutVoiceMotivation(shouldLog:)(0))
  {
    goto LABEL_10;
  }

  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  if ((static Measurement.== infix<A, B>(_:_:)() & 1) == 0 || ![v16 enabled] || objc_msgSend(v16, sel_type) != 1)
  {
    goto LABEL_10;
  }

  v17 = specialized static LiveWorkoutContextManager.Constants.minDistanceThresholdForSplitMomentsInMeters(_:)(a1);
  Measurement.value.getter();
  if (v17 > v18)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.workoutVoice);
    (*(v8 + 16))(v11, a3, v7);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v20, v21))
    {

      (*(v8 + 8))(v11, v7);
      return 0;
    }

    v22 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v31;
    *v22 = 136315394;
    lazy protocol witness table accessor for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>(&lazy protocol witness table cache variable for type Measurement<NSUnitLength> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR, MEMORY[0x277CC8800]);
    v30 = v21;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v8 + 8))(v11, v7);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v32);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v17;
    _os_log_impl(&dword_20AEA4000, v20, v30, "Skipping split announcement. splitDistance=%s less than threshold=%f", v22, 0x16u);
    v27 = v31;
    __swift_destroy_boxed_opaque_existential_1Tm_18(v31);
    MEMORY[0x20F2E9420](v27, -1, -1);
    MEMORY[0x20F2E9420](v22, -1, -1);

LABEL_10:
    return 0;
  }

  return 1;
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:)(uint64_t a1)
{
  v4 = *(type metadata accessor for HKActivitySummaryRepresentable() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:);

  return closure #1 in LiveWorkoutContextManager.activityRingsUpdated(with:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)(uint64_t a1)
{
  v4 = *(type metadata accessor for HKActivitySummaryRepresentable() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:);

  return closure #1 in LiveWorkoutContextManager.completedActivityRing(_:activitySummary:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:);

  return closure #1 in LiveWorkoutContextManager.workout(_:didMoveToState:)(a1, v4, v5, v7, v6);
}

uint64_t dispatch thunk of LiveWorkoutContextManager.generateIntroMomentWhenReady()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1B8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of LiveWorkoutContextManager.generateIntroMomentWhenReady();

  return v5();
}

uint64_t dispatch thunk of LiveWorkoutContextManagerDelegate.receivedInferenceResponse(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of LiveWorkoutContextManagerDelegate.receivedInferenceResponse(_:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutBuddyAnnouncementHandler.handleAnnouncement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of WorkoutBuddyAnnouncementHandler.handleAnnouncement(_:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of WorkoutBuddyAnnouncementHandler.stopInFlightAnnouncement()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of WorkoutBuddyAnnouncementHandler.stopInFlightAnnouncement();

  return v7(a1, a2);
}

uint64_t objectdestroy_14Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)partial apply;

  return closure #1 in LiveWorkoutContextManager.updateWorkoutStartDate(date:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t lazy protocol witness table accessor for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type PassthroughSubject<WorkoutVoiceAvailabilityProvider.State, Never> and conformance PassthroughSubject<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t type metadata accessor for NSUnitPower(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with copy of Measurement<NSUnitPower>?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_165(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_165TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:);

  return closure #1 in closure #1 in LiveWorkoutContextManager.init(activityType:lastKnownLocation:goal:activityRingProgressMonitor:unitManager:splitProvider:isMachineWorkout:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:workout:momentCoordinator:)(a1, v4, v5, v7, v6);
}

uint64_t MirroredClientMachTimestampResponse.init(protobuf:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = outlined destroy of Apple_Workout_Core_MirroredClientMachTimestampResponse(a1);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredClientMachTimestampResponse(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

WorkoutCore::MirroredClientMachTimestampResponse __swiftcall MirroredClientMachTimestampResponse.init(hostMachTimestamp:clientMachTimestamp:)(Swift::Double hostMachTimestamp, Swift::Double clientMachTimestamp)
{
  *v2 = hostMachTimestamp;
  v2[1] = clientMachTimestamp;
  result.clientMachTimestamp = clientMachTimestamp;
  result.hostMachTimestamp = hostMachTimestamp;
  return result;
}

uint64_t MirroredClientMachTimestampResponse.description.getter()
{
  _StringGuts.grow(_:)(46);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C3A0);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45A0B0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t MirroredClientMachTimestampResponse.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse();
  return static Message.with(_:)();
}

double *closure #1 in MirroredClientMachTimestampResponse.protobuf.getter(double *result, double a2, double a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

__n128 partial apply for closure #1 in MirroredClientMachTimestampResponse.protobuf.getter(__n128 *a1)
{
  result = v1[1];
  *a1 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse)
  {
    type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredClientMachTimestampResponse()
{
  _StringGuts.grow(_:)(46);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45C3A0);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000017, 0x800000020B45A0B0);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredClientMachTimestampResponse@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  result = outlined destroy of Apple_Workout_Core_MirroredClientMachTimestampResponse(a1);
  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredClientMachTimestampResponse()
{
  type metadata accessor for Apple_Workout_Core_MirroredClientMachTimestampResponse(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientMachTimestampResponse and conformance Apple_Workout_Core_MirroredClientMachTimestampResponse();
  return static Message.with(_:)();
}

uint64_t MirroredClientMachTimestampResponse.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x20F2E8020](*&v3);
}

Swift::Int MirroredClientMachTimestampResponse.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x20F2E8020](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x20F2E8020](*&v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredClientMachTimestampResponse(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x20F2E8020](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x20F2E8020](*&v5);
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredClientMachTimestampResponse(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MirroredClientMachTimestampResponse(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredClientMachTimestampResponse(uint64_t result, int a2, int a3)
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

uint64_t Apple_Workout_Core_LocationPositionPublisher.init()@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v2;
  v3 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  UnknownStorage.init()();
  v4 = *(v3 + 28);
  v5 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_LocationPositionPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_LocationPositionPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.routePosition.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0) + 28);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v1 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  outlined init with take of Apple_Workout_Core_RacePosition(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t outlined init with take of Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL Apple_Workout_Core_LocationPositionPublisher.hasRoutePosition.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(v0 + *(v5 + 28), v4);
  v6 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v4, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  return v7;
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.routePosition.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RacePosition(v6, a1);
  }

  v10 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v6, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_LocationPositionPublisher.routePosition : Apple_Workout_Core_LocationPositionPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1 + *(v8 + 28), v7);
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_RacePosition(v7, a2);
  }

  v11 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v7, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_LocationPositionPublisher.routePosition : Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_RacePosition(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0) + 28);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(a2 + v9, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  outlined init with take of Apple_Workout_Core_RacePosition(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_LocationPositionPublisher.routePosition.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_RacePosition?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_RacePosition(v8, v14);
  }

  return Apple_Workout_Core_LocationPositionPublisher.routePosition.modify;
}

void Apple_Workout_Core_LocationPositionPublisher.routePosition.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_RacePosition((*a1)[5], v4);
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    outlined init with take of Apple_Workout_Core_RacePosition(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_RacePosition(v5);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v9 + v3, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    outlined init with take of Apple_Workout_Core_RacePosition(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined init with copy of Apple_Workout_Core_RacePosition(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_RacePosition(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall Apple_Workout_Core_LocationPositionPublisher.clearRoutePosition()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0) + 28);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v0 + v1, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_LocationPositionPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_LocationPositionPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in Apple_Workout_Core_LocationPositionPublisher.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 2:
          dispatch thunk of Decoder.decodeRepeatedBytesField(value:)();
          break;
        case 1:
          type metadata accessor for Apple_Workout_Core_CLLocation(0);
          lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_LocationPositionPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  type metadata accessor for Apple_Workout_Core_RacePosition(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition, &protocol conformance descriptor for Apple_Workout_Core_RacePosition);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Workout_Core_CLLocation(0), lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3[1] + 16) || (result = dispatch thunk of Visitor.visitRepeatedBytesField(value:fieldNumber:)(), !v4))
    {
      result = closure #1 in Apple_Workout_Core_LocationPositionPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (!v4)
      {
        type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_LocationPositionPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1 + *(v14 + 28), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v8, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  }

  outlined init with take of Apple_Workout_Core_RacePosition(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePosition and conformance Apple_Workout_Core_RacePosition, type metadata accessor for Apple_Workout_Core_RacePosition, &protocol conformance descriptor for Apple_Workout_Core_RacePosition);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_RacePosition(v13);
}

Swift::Int Apple_Workout_Core_LocationPositionPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher, &protocol conformance descriptor for Apple_Workout_Core_LocationPositionPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_LocationPositionPublisher@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v4;
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_LocationPositionPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher, &protocol conformance descriptor for Apple_Workout_Core_LocationPositionPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_LocationPositionPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_LocationPositionPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_LocationPositionPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher, &protocol conformance descriptor for Apple_Workout_Core_LocationPositionPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher, &protocol conformance descriptor for Apple_Workout_Core_LocationPositionPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_LocationPositionPublisher.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMR);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v23 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C11_CLLocationV_Tt1g5(*a1, *a2) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4DataV_Tt1g5(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0) + 28);
  v18 = *(v13 + 48);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a1 + v17, v16);
  outlined init with copy of Apple_Workout_Core_RacePosition?(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
LABEL_12:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of Apple_Workout_Core_RacePosition?(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_RacePosition(v12);
LABEL_8:
    _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSg_ADtMR);
    goto LABEL_9;
  }

  outlined init with take of Apple_Workout_Core_RacePosition(&v16[v18], v8);
  v22 = static Apple_Workout_Core_RacePosition.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_RacePosition(v8);
  outlined destroy of Apple_Workout_Core_RacePosition(v12);
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(v16, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_9:
  v20 = 0;
  return v20 & 1;
}

void type metadata completion function for Apple_Workout_Core_LocationPositionPublisher(uint64_t a1)
{
  type metadata accessor for [Apple_Workout_Core_CLLocation](319, &lazy cache variable for type metadata for [Apple_Workout_Core_CLLocation], type metadata accessor for Apple_Workout_Core_CLLocation, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Data]();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Apple_Workout_Core_CLLocation](319, &lazy cache variable for type metadata for Apple_Workout_Core_RacePosition?, type metadata accessor for Apple_Workout_Core_RacePosition, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [Data]()
{
  if (!lazy cache variable for type metadata for [Data])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Data]);
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_CLLocation](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MirroredStartFilePathURL.filePath.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MirroredStartFilePathURL.url.getter@<X0>(uint64_t a3@<X8>)
{
  return MirroredStartFilePathURL.url.getter(a3);
}

{
  v4 = [objc_allocWithZone(MEMORY[0x277CCACE0]) init];
  [v4 setScheme_];
  v5 = MEMORY[0x20F2E6C00](0x6465726F7272696DLL, 0xED00007472617453);
  [v4 setHost_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  type metadata accessor for URLQueryItem();
  *(swift_allocObject() + 16) = xmmword_20B423A90;
  URLQueryItem.init(name:value:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setQueryItems_];

  v7 = [v4 URL];
  if (v7)
  {
    v8 = v7;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = 0;
    v4 = v8;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for URL();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, v9, 1, v10);
}

void MirroredStartFilePathURL.init(from:)(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URLQueryItem();
  v56 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v55 = &v50 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  v16 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v20 = [v16 initWithURL:v18 resolvingAgainstBaseURL:0];

  v21 = *(v12 + 8);
  v21(v15, v11);
  if (!v20)
  {
    v31 = a1;
LABEL_14:
    v21(v31, v11);
LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v57 = a1;
  v22 = [v20 scheme];
  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_12;
  }

  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v26)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v24 != v27 || v26 != v28)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_18;
    }

LABEL_13:

    v31 = v57;
    goto LABEL_14;
  }

LABEL_18:
  v32 = [v20 host];
  if (!v32)
  {
    goto LABEL_13;
  }

  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v34 == 0x6465726F7272696DLL && v36 == 0xED00007472617453)
  {

    goto LABEL_23;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v37 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_23:
  v38 = [v20 queryItems];
  if (!v38)
  {
    v21(v57, v11);

    goto LABEL_15;
  }

  v51 = a2;
  v39 = v38;
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v57;
  v52 = *(v40 + 16);
  if (!v52)
  {
LABEL_31:
    v21(v41, v11);

    a2 = v51;
    goto LABEL_15;
  }

  v42 = 0;
  v53 = v56 + 16;
  v54 = (v56 + 8);
  while (1)
  {
    if (v42 >= *(v40 + 16))
    {
      __break(1u);
      return;
    }

    (*(v56 + 16))(v8, v40 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42, v4);
    if (URLQueryItem.name.getter() == 0x68746150656C6966 && v43 == 0xE800000000000000)
    {

      goto LABEL_35;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      break;
    }

    ++v42;
    (*v54)(v8, v4);
    v41 = v57;
    if (v52 == v42)
    {
      goto LABEL_31;
    }
  }

  v41 = v57;
LABEL_35:

  v45 = v55;
  v46 = v56 + 32;
  (*(v56 + 32))(v55, v8, v4);
  v47 = URLQueryItem.value.getter();
  v49 = v48;

  v21(v41, v11);
  (*(v46 - 24))(v45, v4);
  a2 = v51;
  if (!v49)
  {
    goto LABEL_15;
  }

  *v51 = v47;
  a2[1] = v49;
}

void MirroredStartBase64EncodedURL.init(from:)(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URLQueryItem();
  v56 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v55 = &v50 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11);
  v16 = objc_allocWithZone(MEMORY[0x277CCACE0]);
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v20 = [v16 initWithURL:v18 resolvingAgainstBaseURL:0];

  v21 = *(v12 + 8);
  v21(v15, v11);
  if (!v20)
  {
    v31 = a1;
LABEL_14:
    v21(v31, v11);
LABEL_15:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  v57 = a1;
  v22 = [v20 scheme];
  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_12;
  }

  v23 = v22;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v26)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v24 != v27 || v26 != v28)
  {
    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v30)
    {
      goto LABEL_18;
    }

LABEL_13:

    v31 = v57;
    goto LABEL_14;
  }

LABEL_18:
  v32 = [v20 host];
  if (!v32)
  {
    goto LABEL_13;
  }

  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  if (v34 == 0x6465726F7272696DLL && v36 == 0xED00007472617453)
  {

    goto LABEL_23;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v37 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_23:
  v38 = [v20 queryItems];
  if (!v38)
  {
    v21(v57, v11);

    goto LABEL_15;
  }

  v51 = a2;
  v39 = v38;
  v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = v57;
  v52 = *(v40 + 16);
  if (!v52)
  {
LABEL_31:
    v21(v41, v11);

    a2 = v51;
    goto LABEL_15;
  }

  v42 = 0;
  v53 = v56 + 16;
  v54 = (v56 + 8);
  while (1)
  {
    if (v42 >= *(v40 + 16))
    {
      __break(1u);
      return;
    }

    (*(v56 + 16))(v8, v40 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v42, v4);
    if (URLQueryItem.name.getter() == 0x6E45343665736162 && v43 == 0xED00006465646F63)
    {

      goto LABEL_35;
    }

    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v44)
    {
      break;
    }

    ++v42;
    (*v54)(v8, v4);
    v41 = v57;
    if (v52 == v42)
    {
      goto LABEL_31;
    }
  }

  v41 = v57;
LABEL_35:

  v45 = v55;
  v46 = v56 + 32;
  (*(v56 + 32))(v55, v8, v4);
  v47 = URLQueryItem.value.getter();
  v49 = v48;

  v21(v41, v11);
  (*(v46 - 24))(v45, v4);
  a2 = v51;
  if (!v49)
  {
    goto LABEL_15;
  }

  *v51 = v47;
  a2[1] = v49;
}

uint64_t URL.mirroredStartFilePathURL.getter(uint64_t (*a1)(char *))
{
  v3 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1);
  return a1(v6);
}

uint64_t getEnumTagSinglePayload for MirroredStartFilePathURL(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for MirroredStartFilePathURL(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t FIUIWorkoutActivityType.isPedestrianCalorimetryOptimized.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  result = 1;
  if (v1 > 0x29)
  {
    return v1 == 75;
  }

  if (((1 << v1) & 0x100820000ALL) != 0)
  {
    return result;
  }

  if (((1 << v1) & 0x20002000000) != 0)
  {
    return [v0 isIndoor] ^ 1;
  }

  else
  {
    return v1 == 75;
  }
}

uint64_t FIUIWorkoutActivityType.hasMotionCalorimetryFloor.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  result = 1;
  if (v1 > 60)
  {
    if (v1 != 61 && v1 != 67)
    {
      return 0;
    }
  }

  else if (v1 != 31)
  {
    if (v1 == 39)
    {
      return [v0 isIndoor] ^ 1;
    }

    return 0;
  }

  return result;
}

void MockManagedConfigurationsProvider.init()(void *a1@<X8>)
{
  v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v501 = *(v497 - 1);
  MEMORY[0x28223BE20](v497, v2);
  v496 = &v463 - v3;
  v495 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v500 = *(v495 - 8);
  MEMORY[0x28223BE20](v495, v4);
  v494 = &v463 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v528 = *(v6 - 1);
  MEMORY[0x28223BE20](v6, v7);
  v525 = &v463 - v8;
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v522 = *(v518 - 8);
  MEMORY[0x28223BE20](v518, v9);
  v517 = (&v463 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v520 = &v463 - v13;
  v14 = type metadata accessor for UUID();
  v529 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v519 = &v463 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v526 = &v463 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v463 - v22;
  v535 = type metadata accessor for Date();
  v538 = *(v535 - 8);
  MEMORY[0x28223BE20](v535, v24);
  v26 = &v463 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [objc_opt_self() systemBlueColor];
  v28 = [objc_opt_self() configurationWithHierarchicalColor_];

  v29 = v28;
  v30 = MEMORY[0x20F2E6C00](0x6E61636972727568, 0xE900000000000065);
  v31 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v31)
  {
    __break(1u);
    goto LABEL_25;
  }

  v524 = v6;
  v32 = UIImagePNGRepresentation(v31);

  if (!v32)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v476 = v29;
  v477 = a1;
  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  outlined copy of Data._Representation(v33, v35);
  static Date.now.getter();
  UUID.init()();
  type metadata accessor for ExternalProvider(0);
  v36 = swift_allocObject();
  v36[2] = 0xD000000000000011;
  v36[3] = 0x800000020B468A30;
  v36[4] = 0xD00000000000001CLL;
  v36[5] = 0x800000020B468A50;
  v473 = v35;
  v474 = v33;
  v36[6] = v33;
  v36[7] = v35;
  v37 = v535;
  (*(v538 + 32))(v36 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_syncStartDate, v26, v535);
  v38 = v529[4];
  v533 = v14;
  v492 = v38;
  v493 = v529 + 4;
  v38(v36 + OBJC_IVAR____TtC11WorkoutCore16ExternalProvider_uuid, v23, v14);
  type metadata accessor for QueriedExternalProvider();
  v39 = swift_allocObject();
  *(v39 + 16) = v36;
  v475 = v39;
  *(v39 + 24) = 0;
  v40 = (v39 + 24);
  swift_beginAccess();
  *v40 = 2;
  v41 = one-time initialization token for outdoorCycle;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = specialized static IntervalWorkoutConfiguration.canonical(activityType:activityMoveMode:)(static FIUIWorkoutActivityType.outdoorCycle, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v565);

  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v565, "Sprint Session");
  HIBYTE(v565[1]) = -18;
  static Published.subscript.setter();
  v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *&v42[v43] = v36;
  swift_retain_n();
  v44 = v42;

  static Date.now.getter();
  v45 = v520;
  Date.addingTimeInterval(_:)();
  v46 = v538;
  v47 = *(v538 + 8);
  v521 = v538 + 8;
  v515 = v47;
  v47(v26, v37);
  v48 = *(v46 + 56);
  v538 = v46 + 56;
  v534 = v48;
  v48(v45, 0, 1, v37);
  v49 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v491 = v44;
  outlined assign with take of Date?(v45, &v44[v49]);
  swift_endAccess();
  v50 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 location:1 isPartOfMultiSport:0 metadata:0];
  v503 = objc_opt_self();
  v51 = [v503 minuteUnit];
  v499 = objc_opt_self();
  v52 = [v499 quantityWithUnit:v51 doubleValue:10.0];

  v53 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v52];
  v54 = v50;
  UUID.init()();
  v55 = type metadata accessor for WorkoutStep(0);
  v56 = swift_allocObject();
  v506 = v26;
  v57 = v56;
  v58 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v565[0] = 0;
  v565[1] = 0;
  v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v59 = v517;
  Published.init(initialValue:)();
  v60 = v522[4];
  v522 += 4;
  v507 = v60;
  (v60)(v57 + v58, v59, v518);
  *(v57 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v57 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v61 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v565[0]) = 0;
  v62 = v525;
  Published.init(initialValue:)();
  v63 = v23;
  v523 = *(v528 + 32);
  v528 += 32;
  v523(v57 + v61, v62, v524);
  v64 = v57;
  *(v57 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v57 + 16) = 0;
  swift_beginAccess();
  v565[4] = v53;
  v530 = type metadata accessor for NLSessionActivityGoal();
  v65 = v53;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v64 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v54;
  v66 = v529;
  v536 = v529[2];
  v531 = v529 + 2;
  v67 = v533;
  v536(v64 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v63, v533);
  swift_getKeyPath();
  swift_getKeyPath();
  v516 = v36;
  v565[0] = 0;
  v565[1] = 0;

  static Published.subscript.setter();

  v527 = v66[1];
  v537 = v66 + 1;
  v527(v63, v67);
  v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v68 = swift_allocObject();
  v505 = xmmword_20B425990;
  *(v68 + 16) = xmmword_20B425990;
  v504 = type metadata accessor for TargetZone();
  v69 = swift_allocObject();
  *(v69 + 16) = 2;
  *(v69 + 24) = xmmword_20B4474E0;
  *(v69 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v68 + 32) = v69;
  v70 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  *(v64 + v70) = v68;
  v490 = v64;

  swift_getKeyPath();
  swift_getKeyPath();
  v71 = static Published.subscript.modify();
  *v72 = !*v72;
  v71(v565, 0);

  v73 = [v503 mileUnit];
  v74 = v499;
  v75 = [v499 quantityWithUnit:v73 doubleValue:1.0];

  v76 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v75];
  v77 = v54;
  v513 = v77;
  UUID.init()();
  v78 = swift_allocObject();
  v79 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v565[0] = 0;
  v565[1] = 0;
  v80 = v517;
  Published.init(initialValue:)();
  (v507)(v78 + v79, v80, v518);
  *(v78 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v78 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v81 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v565[0]) = 0;
  v82 = v525;
  Published.init(initialValue:)();
  v523(v78 + v81, v82, v524);
  *(v78 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v78 + 16) = 0;
  swift_beginAccess();
  v564 = v76;
  v83 = v76;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v78 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v77;
  v84 = v533;
  v536(v78 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v63, v533);
  swift_getKeyPath();
  swift_getKeyPath();
  v565[0] = 0;
  v565[1] = 0;

  static Published.subscript.setter();

  v85 = v527;
  v527(v63, v84);
  v86 = swift_allocObject();
  *(v86 + 16) = v505;
  v87 = swift_allocObject();
  *(v87 + 16) = 3;
  *(v87 + 24) = xmmword_20B4474F0;
  *(v87 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v86 + 32) = v87;
  v88 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  *(v78 + v88) = v86;

  swift_getKeyPath();
  swift_getKeyPath();
  v89 = static Published.subscript.modify();
  *v90 = !*v90;
  v89(v565, 0);

  v91 = [v503 minuteUnit];
  v92 = [v74 quantityWithUnit:v91 doubleValue:10.0];

  v93 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v92];
  v94 = v513;
  v513 = v94;
  UUID.init()();
  v498 = v55;
  v95 = swift_allocObject();
  v96 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v565[0] = 0;
  v565[1] = 0;
  v97 = v517;
  Published.init(initialValue:)();
  (v507)(v95 + v96, v97, v518);
  *(v95 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v95 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v98 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v565[0]) = 0;
  v99 = v525;
  Published.init(initialValue:)();
  v523(v95 + v98, v99, v524);
  *(v95 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v95 + 16) = 0;
  swift_beginAccess();
  v563 = v93;
  v100 = v93;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v95 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v94;
  v101 = v63;
  v102 = v63;
  v103 = v533;
  v536(v95 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v102, v533);
  swift_getKeyPath();
  swift_getKeyPath();
  v565[0] = 0;
  v565[1] = 0;

  static Published.subscript.setter();

  v85(v101, v103);
  v104 = swift_allocObject();
  *(v104 + 16) = v505;
  v105 = swift_allocObject();
  *(v105 + 16) = 5;
  *(v105 + 24) = xmmword_20B447500;
  v485 = "dence";
  *(v105 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v104 + 32) = v105;
  v106 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  *(v95 + v106) = v104;

  swift_getKeyPath();
  swift_getKeyPath();
  v107 = static Published.subscript.modify();
  *v108 = !*v108;
  v107(v565, 0);

  v109 = [v503 minuteUnit];
  v110 = [v499 quantityWithUnit:v109 doubleValue:5.0];

  v111 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v110];
  v112 = v513;
  v513 = v112;
  v113 = v101;
  UUID.init()();
  v114 = swift_allocObject();
  v115 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v565[0] = 0;
  v565[1] = 0;
  v116 = v517;
  Published.init(initialValue:)();
  (v507)(v114 + v115, v116, v518);
  *(v114 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v114 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v117 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v565[0]) = 0;
  v118 = v525;
  Published.init(initialValue:)();
  v523(v114 + v117, v118, v524);
  *(v114 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v114 + 16) = 1;
  swift_beginAccess();
  v562 = v111;
  v119 = v111;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v114 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v112;
  v120 = v533;
  v536(v114 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v113, v533);
  swift_getKeyPath();
  swift_getKeyPath();
  v565[0] = 0;
  v565[1] = 0;

  static Published.subscript.setter();

  v527(v113, v120);
  LOBYTE(v565[0]) = 1;
  v121 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  v122 = HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(v565, 0x4054000000000000, 0x4059000000000000, 0, 0, 1, 0);
  v123 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v124 = *(v114 + v123);
  *(v114 + v123) = v122;
  v125 = v122;

  swift_getKeyPath();
  swift_getKeyPath();
  v126 = static Published.subscript.modify();
  *v127 = !*v127;
  v126(v565, 0);

  UUID.init()();
  v484 = type metadata accessor for WorkoutBlock(0);
  v128 = swift_allocObject();
  v129 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v565[0] = 1;
  v130 = v494;
  Published.init(initialValue:)();
  v131 = *(v500 + 32);
  v500 += 32;
  v483 = v131;
  v131((v128 + v129), v130, v495);
  v132 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v565[0] = MEMORY[0x277D84F90];
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  v134 = v496;
  v482 = v133;
  Published.init(initialValue:)();
  v135 = *(v501 + 32);
  v501 += 32;
  v481 = v135;
  v135((v128 + v132), v134, v497);
  v492(v128 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v113, v533);
  v136 = swift_allocObject();
  *(v136 + 16) = xmmword_20B447510;
  *(v136 + 32) = v490;
  *(v136 + 40) = v78;
  *(v136 + 48) = v95;
  *(v136 + 56) = v114;
  swift_getKeyPath();
  swift_getKeyPath();
  v565[0] = v136;

  v472 = v78;

  v471 = v95;

  v470 = v114;

  v489 = v128;

  static Published.subscript.setter();
  WorkoutBlock.repetitions.setter(4);
  v478 = v513;
  v137 = v113;
  UUID.init()();
  v138 = type metadata accessor for IntervalWorkout(0);
  v139 = objc_allocWithZone(v138);
  v140 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0, 0xE000000000000000, v113, 0, 0);
  v532 = v113;
  UUID.init()();
  v509 = specialized Occurrence.__allocating_init(count:)(0);
  v141 = v526;
  v142 = v533;
  v143 = v536;
  v536(v526, v137, v533);
  v479 = type metadata accessor for IntervalWorkoutConfiguration(0);
  v144 = objc_allocWithZone(v479);
  v145 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  LOBYTE(v565[0]) = 0;
  v146 = v525;
  Published.init(initialValue:)();
  v523(&v144[v145], v146, v524);
  swift_beginAccess();
  v561 = v140;
  v502 = v140;
  v480 = v138;
  Published.init(initialValue:)();
  swift_endAccess();
  v147 = v519;
  v148 = v142;
  v143(v519, v141, v142);
  v149 = v143;
  *&v144[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v150 = v535;
  v151 = v534;
  v534(&v144[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v535);
  v151(&v144[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v150);
  v152 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v153 = type metadata accessor for WorkoutPlan.Route();
  v154 = *(v153 - 1);
  v512 = *(v154 + 56);
  v513 = v153;
  v511 = v154 + 56;
  v512(&v144[v152], 1, 1);
  v155 = v529[7];
  v529 += 7;
  v510 = v155;
  v155(&v144[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v148);
  v156 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v144[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v149(&v144[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v147, v148);
  *&v144[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v478;
  v144[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v144[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v509;
  swift_beginAccess();
  *&v144[v156] = 0;
  v144[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v157 = type metadata accessor for WorkoutConfiguration(0);
  v560.receiver = v144;
  v509 = v157;
  v560.super_class = v157;
  v158 = objc_msgSendSuper2(&v560, sel_init);

  v159 = v527;
  v527(v147, v148);
  v159(v141, v148);
  v159(v532, v148);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v565);

  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v565, "Alerts!");
  v565[1] = 0xE700000000000000;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v565);

  v160 = v565[0];
  swift_getKeyPath();
  swift_getKeyPath();

  v161 = static Published.subscript.modify();
  v163 = v162;
  MEMORY[0x20F2E6F30]();
  if (*((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v502 = *((*v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v161(v565, 0);

  v164 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *(v158 + v164) = v516;

  v165 = v158;

  v166 = v506;
  static Date.now.getter();
  v167 = v520;
  Date.addingTimeInterval(_:)();
  v168 = v535;
  v515(v166, v535);
  v534(v167, 0, 1, v168);
  v169 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v488 = v165;
  outlined assign with take of Date?(v167, v165 + v169);
  swift_endAccess();
  v487 = [objc_opt_self() activityTypeWithHKWorkoutActivityTypeIdentifier:60 isIndoor:0 metadata:0];
  v170 = [v503 minuteUnit];
  v171 = [v499 quantityWithUnit:v170 doubleValue:60.0];

  v172 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v171];
  v173 = v532;
  UUID.init()();
  v486 = specialized Occurrence.__allocating_init(count:)(0);
  v174 = v526;
  v175 = v533;
  v176 = v536;
  v536(v526, v173, v533);
  v177 = v176;
  v502 = type metadata accessor for GoalWorkoutConfiguration(0);
  v178 = objc_allocWithZone(v502);
  swift_beginAccess();
  v559 = v172;
  v469 = v172;
  Published.init(initialValue:)();
  swift_endAccess();
  v179 = v519;
  v177(v519, v174, v175);
  *&v178[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v180 = v535;
  v181 = v534;
  v534(&v178[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v535);
  v181(&v178[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v180);
  (v512)(&v178[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v513);
  v510(&v178[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v175);
  v182 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v178[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v177(&v178[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v179, v175);
  v183 = v486;
  *&v178[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v487;
  v178[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v178[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v183;
  swift_beginAccess();
  *&v178[v182] = 0;
  v178[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v558.receiver = v178;
  v558.super_class = v509;
  v184 = objc_msgSendSuper2(&v558, sel_init);

  v185 = v527;
  v527(v179, v175);
  v186 = v526;
  v185(v526, v175);
  v187 = v532;
  v185(v532, v175);
  v188 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *(v184 + v188) = v516;

  v189 = v184;

  static Date.now.getter();
  v190 = v520;
  Date.addingTimeInterval(_:)();
  v191 = v535;
  v515(v166, v535);
  v534(v190, 0, 1, v191);
  v192 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v486 = v189;
  outlined assign with take of Date?(v190, v189 + v192);
  swift_endAccess();
  v478 = v478;
  UUID.init()();
  v193 = objc_allocWithZone(v480);
  v194 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0, 0xE000000000000000, v187, 0, 0);
  UUID.init()();
  v469 = specialized Occurrence.__allocating_init(count:)(0);
  v195 = v186;
  v196 = v175;
  v197 = v536;
  v536(v186, v187, v196);
  v198 = objc_allocWithZone(v479);
  v199 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  LOBYTE(v565[0]) = 0;
  v200 = v525;
  Published.init(initialValue:)();
  v523(&v198[v199], v200, v524);
  swift_beginAccess();
  v557 = v194;
  v468 = v194;
  Published.init(initialValue:)();
  swift_endAccess();
  v201 = v519;
  v202 = v533;
  v203 = v197;
  v197(v519, v195, v533);
  *&v198[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v204 = v534;
  v534(&v198[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v191);
  v204(&v198[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v191);
  (v512)(&v198[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v513);
  v510(&v198[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v202);
  v205 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v198[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v206 = v202;
  v203(&v198[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v201, v202);
  v207 = v478;
  *&v198[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v478;
  v198[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v198[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v469;
  swift_beginAccess();
  *&v198[v205] = 0;
  v198[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v556.receiver = v198;
  v556.super_class = v509;
  v208 = objc_msgSendSuper2(&v556, sel_init);

  v209 = v527;
  v527(v201, v202);
  v209(v526, v202);
  v210 = v532;
  v209(v532, v202);
  swift_getKeyPath();
  swift_getKeyPath();
  v466 = v208;
  static Published.subscript.getter(v565);

  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v565, "Power Alerts");
  BYTE5(v565[1]) = 0;
  HIWORD(v565[1]) = -5120;
  static Published.subscript.setter();
  UUID.init()();
  v211 = swift_allocObject();
  v212 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v565[0] = 1;
  v213 = v494;
  Published.init(initialValue:)();
  v483(&v211[v212], v213, v495);
  v214 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v565[0] = MEMORY[0x277D84F90];
  v215 = v496;
  Published.init(initialValue:)();
  v481(&v211[v214], v215, v497);
  v492(&v211[OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid], v210, v202);
  WorkoutBlock.repetitions.setter(5);
  v216 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v217 = v207;
  UUID.init()();
  v218 = swift_allocObject();
  v219 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v565[0] = 0;
  v565[1] = 0;
  v220 = v517;
  Published.init(initialValue:)();
  (v507)(&v218[v219], v220, v518);
  *&v218[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones] = MEMORY[0x277D84F90];
  *&v218[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone] = 0;
  v221 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v565[0]) = 0;
  v222 = v525;
  Published.init(initialValue:)();
  v223 = v524;
  v523(&v218[v221], v222, v524);
  *&v218[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone] = 0;
  v218[16] = 0;
  swift_beginAccess();
  v555 = v216;
  v224 = v216;
  Published.init(initialValue:)();
  swift_endAccess();
  v478 = v217;
  *&v218[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType] = v217;
  v536(&v218[OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid], v210, v206);
  swift_getKeyPath();
  swift_getKeyPath();
  v565[0] = 0;
  v565[1] = 0;

  static Published.subscript.setter();

  v527(v210, v206);
  v225 = swift_allocObject();
  *(v225 + 16) = v505;
  v226 = swift_allocObject();
  *(v226 + 16) = 5;
  *(v226 + 24) = xmmword_20B447520;
  *(v226 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v225 + 32) = v226;
  v227 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  *&v218[v227] = v225;

  swift_getKeyPath();
  swift_getKeyPath();
  v228 = static Published.subscript.modify();
  *v229 = !*v229;
  v228(v565, 0);

  swift_getKeyPath();
  swift_getKeyPath();

  v230 = static Published.subscript.modify();
  v232 = v231;
  MEMORY[0x20F2E6F30]();
  v233 = v223;
  if (*((*v232 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v232 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v469 = *((*v232 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v469 = v218;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v230(v565, 0);

  v234 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v235 = v478;
  v236 = v532;
  UUID.init()();
  v237 = swift_allocObject();
  v238 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v565[0] = 0;
  v565[1] = 0;
  v239 = v517;
  Published.init(initialValue:)();
  (v507)(v237 + v238, v239, v518);
  *(v237 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v237 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v240 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v565[0]) = 0;
  v241 = v525;
  Published.init(initialValue:)();
  v523(v237 + v240, v241, v233);
  *(v237 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v237 + 16) = 0;
  swift_beginAccess();
  v554 = v234;
  v242 = v234;
  Published.init(initialValue:)();
  swift_endAccess();
  v468 = v235;
  *(v237 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v235;
  v243 = v533;
  v536(v237 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v236, v533);
  swift_getKeyPath();
  swift_getKeyPath();
  v565[0] = 0;
  v565[1] = 0;

  static Published.subscript.setter();

  v527(v236, v243);
  v244 = swift_allocObject();
  *(v244 + 16) = v505;
  v245 = swift_allocObject();
  *(v245 + 16) = 6;
  *(v245 + 24) = xmmword_20B447530;
  *(v245 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v244 + 32) = v245;
  v246 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  *(v237 + v246) = v244;

  swift_getKeyPath();
  swift_getKeyPath();
  v247 = static Published.subscript.modify();
  *v248 = !*v248;
  v247(v565, 0);

  swift_getKeyPath();
  swift_getKeyPath();

  v249 = static Published.subscript.modify();
  v251 = v250;
  MEMORY[0x20F2E6F30]();
  if (*((*v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v467 = v237;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v249(v565, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v252 = v466;
  static Published.subscript.getter(v565);

  v253 = v565[0];
  swift_getKeyPath();
  swift_getKeyPath();

  v254 = static Published.subscript.modify();
  v256 = v255;
  MEMORY[0x20F2E6F30]();
  if (*((*v256 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v256 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v478 = *((*v256 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v478 = v211;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v254(v565, 0);

  v257 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *&v252[v257] = v516;

  v258 = v252;

  v259 = v506;
  static Date.now.getter();
  v260 = v520;
  Date.addingTimeInterval(_:)();
  v261 = v535;
  v515(v259, v535);
  v534(v260, 0, 1, v261);
  v262 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v466 = v258;
  outlined assign with take of Date?(v260, &v258[v262]);
  swift_endAccess();
  v465 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:13 location:1 isPartOfMultiSport:0 metadata:0];
  v263 = v532;
  UUID.init()();
  v264 = objc_allocWithZone(v480);
  v265 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0, 0xE000000000000000, v263, 0, 0);
  UUID.init()();
  v464 = specialized Occurrence.__allocating_init(count:)(0);
  v266 = v526;
  v267 = v533;
  v536(v526, v263, v533);
  v268 = objc_allocWithZone(v479);
  v269 = OBJC_IVAR____TtC11WorkoutCore28IntervalWorkoutConfiguration__forceUpdatePublisher;
  LOBYTE(v565[0]) = 0;
  v270 = v525;
  Published.init(initialValue:)();
  v523(&v268[v269], v270, v524);
  swift_beginAccess();
  v553 = v265;
  v479 = v265;
  Published.init(initialValue:)();
  swift_endAccess();
  v271 = v519;
  v272 = v266;
  v273 = v536;
  v536(v519, v266, v267);
  *&v268[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v274 = v534;
  v534(&v268[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v261);
  v274(&v268[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v261);
  v275 = v271;
  (v512)(&v268[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v513);
  v510(&v268[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v267);
  v276 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v268[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v273(&v268[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v275, v267);
  v277 = v465;
  *&v268[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v465;
  v268[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 1;
  *&v268[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v464;
  swift_beginAccess();
  *&v268[v276] = 0;
  v268[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v552.receiver = v268;
  v552.super_class = v509;
  v278 = objc_msgSendSuper2(&v552, sel_init);

  v279 = v527;
  v527(v275, v267);
  v279(v272, v267);
  v280 = v532;
  v279(v532, v267);
  swift_getKeyPath();
  swift_getKeyPath();
  v480 = v278;
  static Published.subscript.getter(v565);

  swift_getKeyPath();
  swift_getKeyPath();
  strcpy(v565, "Power Alerts");
  BYTE5(v565[1]) = 0;
  HIWORD(v565[1]) = -5120;
  static Published.subscript.setter();
  UUID.init()();
  v281 = swift_allocObject();
  v282 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v565[0] = 1;
  v283 = v494;
  Published.init(initialValue:)();
  v483((v281 + v282), v283, v495);
  v284 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v565[0] = MEMORY[0x277D84F90];
  v285 = v496;
  Published.init(initialValue:)();
  v481((v281 + v284), v285, v497);
  v286 = v280;
  v492(v281 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v280, v267);
  WorkoutBlock.repetitions.setter(5);
  v287 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v288 = v277;
  v289 = v286;
  UUID.init()();
  v290 = swift_allocObject();
  v291 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v565[0] = 0;
  v565[1] = 0;
  v292 = v517;
  Published.init(initialValue:)();
  (v507)(v290 + v291, v292, v518);
  *(v290 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v290 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v293 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v565[0]) = 0;
  v294 = v525;
  Published.init(initialValue:)();
  v523(v290 + v293, v294, v524);
  *(v290 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v290 + 16) = 0;
  swift_beginAccess();
  v551 = v287;
  v295 = v287;
  Published.init(initialValue:)();
  swift_endAccess();
  v497 = v288;
  *(v290 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v288;
  v296 = v533;
  v536(v290 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v289, v533);
  swift_getKeyPath();
  swift_getKeyPath();
  v565[0] = 0;
  v565[1] = 0;

  static Published.subscript.setter();

  v279(v289, v296);
  v297 = swift_allocObject();
  *(v297 + 16) = v505;
  v298 = swift_allocObject();
  *(v298 + 16) = 5;
  *(v298 + 24) = xmmword_20B447540;
  *(v298 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v297 + 32) = v298;
  v299 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  *(v290 + v299) = v297;

  swift_getKeyPath();
  swift_getKeyPath();
  v300 = static Published.subscript.modify();
  *v301 = !*v301;
  v300(v565, 0);

  swift_getKeyPath();
  swift_getKeyPath();

  v501 = v281;
  v302 = static Published.subscript.modify();
  v304 = v303;
  MEMORY[0x20F2E6F30]();
  if (*((*v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v500 = *((*v304 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v500 = v290;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v302(v565, 0);

  v305 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  v306 = v497;
  v307 = v532;
  UUID.init()();
  v308 = swift_allocObject();
  v309 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v565[0] = 0;
  v565[1] = 0;
  v310 = v517;
  Published.init(initialValue:)();
  (v507)(v308 + v309, v310, v518);
  *(v308 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v308 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v311 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v565[0]) = 0;
  v312 = v525;
  Published.init(initialValue:)();
  v523(v308 + v311, v312, v524);
  *(v308 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v308 + 16) = 0;
  swift_beginAccess();
  v550 = v305;
  v313 = v305;
  Published.init(initialValue:)();
  swift_endAccess();
  v522 = v306;
  *(v308 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v306;
  v314 = v533;
  v536(v308 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v307, v533);
  swift_getKeyPath();
  swift_getKeyPath();
  v565[0] = 0;
  v565[1] = 0;

  static Published.subscript.setter();

  v527(v307, v314);
  v315 = swift_allocObject();
  *(v315 + 16) = v505;
  v316 = swift_allocObject();
  *(v316 + 16) = 6;
  *(v316 + 24) = xmmword_20B447550;
  *(v316 + 40) = (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0;
  *(v315 + 32) = v316;
  v317 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  *(v308 + v317) = v315;

  swift_getKeyPath();
  swift_getKeyPath();
  v318 = static Published.subscript.modify();
  *v319 = !*v319;
  v318(v565, 0);

  swift_getKeyPath();
  swift_getKeyPath();

  v320 = static Published.subscript.modify();
  v322 = v321;
  MEMORY[0x20F2E6F30]();
  if (*((*v322 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v322 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v518 = v308;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v320(v565, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v323 = v480;
  static Published.subscript.getter(v565);

  v324 = v565[0];
  swift_getKeyPath();
  swift_getKeyPath();

  v325 = static Published.subscript.modify();
  v327 = v326;
  MEMORY[0x20F2E6F30]();
  if (*((*v327 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v327 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v325(v565, 0);

  v328 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v329 = v516;
  *(v323 + v328) = v516;

  v330 = v323;

  v331 = v506;
  static Date.now.getter();
  v332 = v520;
  Date.addingTimeInterval(_:)();
  v333 = v535;
  v334 = v515;
  v515(v331, v535);
  v335 = v534;
  v534(v332, 0, 1, v333);
  v336 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v517 = v330;
  outlined assign with take of Date?(v332, v330 + v336);
  swift_endAccess();
  v337 = specialized static GoalWorkoutConfiguration.canonical()();
  v338 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *&v337[v338] = v329;

  v339 = v337;

  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v340 = v535;
  v334(v331, v535);
  v341 = v340;
  v335(v332, 0, 1, v340);
  v342 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v508 = v339;
  outlined assign with take of Date?(v332, &v339[v342]);
  swift_endAccess();
  v343 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  v344 = specialized static PacerWorkoutConfiguration.canonical(activityType:)(v343);

  v345 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *&v344[v345] = v329;

  v346 = v344;

  static Date.now.getter();
  v347 = v332;
  Date.addingTimeInterval(_:)();
  v348 = v341;
  v349 = v341;
  v350 = v515;
  v515(v331, v349);
  v351 = v332;
  v352 = v534;
  v534(v351, 0, 1, v348);
  v353 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v507 = v346;
  outlined assign with take of Date?(v347, &v346[v353]);
  swift_endAccess();
  v354 = specialized static MultiSportWorkoutConfiguration.canonical()();
  v355 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *&v354[v355] = v329;

  v356 = v354;

  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v357 = v535;
  v350(v331, v535);
  v352(v347, 0, 1, v357);
  v358 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  *&v505 = v356;
  outlined assign with take of Date?(v347, &v356[v358]);
  swift_endAccess();
  v359 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 location:1 isPartOfMultiSport:1 metadata:0];
  v524 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:13 location:1 isPartOfMultiSport:1 metadata:0];
  v523 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:46 location:1 isPartOfMultiSport:1 metadata:0];
  v528 = swift_allocObject();
  *(v528 + 16) = xmmword_20B42C8E0;
  v360 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v525 = v359;
  v361 = [v360 initWithGoalTypeIdentifier:0 value:0];
  v362 = v532;
  UUID.init()();
  v504 = specialized Occurrence.__allocating_init(count:)(0);
  v363 = v526;
  v364 = v533;
  v365 = v536;
  v536(v526, v362, v533);
  v366 = objc_allocWithZone(v502);
  swift_beginAccess();
  v548 = v361;
  v498 = v361;
  Published.init(initialValue:)();
  swift_endAccess();
  v367 = v519;
  v365(v519, v363, v364);
  v368 = v365;
  *&v366[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v369 = v535;
  v370 = v534;
  v534(&v366[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v535);
  v370(&v366[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v369);
  (v512)(&v366[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v513);
  v510(&v366[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v364);
  v371 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v366[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v368(&v366[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v367, v364);
  *&v366[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v525;
  v366[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v366[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v504;
  swift_beginAccess();
  *&v366[v371] = 0;
  v366[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v549.receiver = v366;
  v549.super_class = v509;
  v372 = objc_msgSendSuper2(&v549, sel_init);

  v373 = v527;
  v527(v367, v364);
  v374 = v526;
  v373(v526, v364);
  v373(v362, v364);
  *(v528 + 32) = v372;
  v375 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v524 = v524;
  v376 = [v375 initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v504 = specialized Occurrence.__allocating_init(count:)(0);
  v377 = v362;
  v378 = v536;
  v536(v374, v377, v364);
  v379 = objc_allocWithZone(v502);
  swift_beginAccess();
  v546 = v376;
  v498 = v376;
  Published.init(initialValue:)();
  swift_endAccess();
  v378(v367, v374, v364);
  *&v379[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v380 = v535;
  v381 = v534;
  v534(&v379[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v535);
  v381(&v379[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v380);
  (v512)(&v379[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v513);
  v510(&v379[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v364);
  v382 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v379[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v383 = v367;
  v378(&v379[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v367, v364);
  *&v379[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v524;
  v379[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v379[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v504;
  swift_beginAccess();
  *&v379[v382] = 0;
  v379[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v547.receiver = v379;
  v547.super_class = v509;
  v384 = objc_msgSendSuper2(&v547, sel_init);

  v373(v367, v364);
  v385 = v526;
  v373(v526, v364);
  v386 = v532;
  v373(v532, v364);
  *(v528 + 40) = v384;
  v387 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v523 = v523;
  v388 = [v387 initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v504 = specialized Occurrence.__allocating_init(count:)(0);
  v378(v385, v386, v364);
  v389 = objc_allocWithZone(v502);
  swift_beginAccess();
  v543 = v388;
  v498 = v388;
  Published.init(initialValue:)();
  swift_endAccess();
  v378(v383, v385, v364);
  *&v389[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v390 = v535;
  v391 = v534;
  v534(&v389[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v535);
  v391(&v389[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v390);
  (v512)(&v389[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v513);
  v510(&v389[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v364);
  v392 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v389[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v393 = v519;
  v378(&v389[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v519, v364);
  *&v389[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v523;
  v389[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v389[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v504;
  v394 = v385;
  v395 = v393;
  v396 = v516;
  v397 = v364;
  swift_beginAccess();
  *&v389[v392] = 0;
  v389[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v545.receiver = v389;
  v545.super_class = v509;
  v398 = objc_msgSendSuper2(&v545, sel_init);

  v373(v395, v364);
  v373(v394, v364);
  v399 = v532;
  v373(v532, v397);
  v400 = v399;
  v401 = v528;
  *(v528 + 48) = v398;
  UUID.init()();
  v402 = specialized Occurrence.__allocating_init(count:)(0);
  v403 = specialized MultiSportWorkoutConfiguration.__allocating_init(_:uuid:occurrence:)(v401, v400, v402);
  swift_getKeyPath();
  swift_getKeyPath();
  v543 = 0xD000000000000017;
  v544 = 0x800000020B468A70;
  v404 = v403;
  static Published.subscript.setter();
  v405 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *&v404[v405] = v396;

  v406 = v404;

  v407 = v506;
  static Date.now.getter();
  v408 = v520;
  Date.addingTimeInterval(_:)();
  v409 = v407;
  v410 = v535;
  v515(v409, v535);
  v534(v408, 0, 1, v410);
  v411 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v528 = v406;
  outlined assign with take of Date?(v408, &v406[v411]);
  swift_endAccess();
  if (one-time initialization token for hiit != -1)
  {
    swift_once();
  }

  v504 = static FIUIWorkoutActivityType.hiit;
  v412 = [v503 minuteUnit];
  v413 = [v499 quantityWithUnit:v412 doubleValue:30.0];

  v414 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v413];
  UUID.init()();
  v499 = specialized Occurrence.__allocating_init(count:)(0);
  v415 = v526;
  v416 = v533;
  v417 = v536;
  v536(v526, v532, v533);
  v418 = objc_allocWithZone(v502);
  swift_beginAccess();
  v541 = v414;
  v503 = v414;
  Published.init(initialValue:)();
  swift_endAccess();
  v419 = v519;
  v417(v519, v415, v416);
  *&v418[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v420 = v535;
  v421 = v534;
  v534(&v418[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v535);
  v421(&v418[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v420);
  (v512)(&v418[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v513);
  v510(&v418[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v416);
  v422 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v418[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v417(&v418[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v419, v416);
  v423 = v504;
  *&v418[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v504;
  v418[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v418[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v499;
  v424 = v532;
  swift_beginAccess();
  *&v418[v422] = 0;
  v418[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v542.receiver = v418;
  v542.super_class = v509;
  v425 = v423;
  v426 = objc_msgSendSuper2(&v542, sel_init);

  v427 = v527;
  v527(v419, v416);
  v427(v415, v416);
  v427(v424, v416);
  v428 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *(v426 + v428) = v516;

  v429 = v426;

  v430 = v506;
  static Date.now.getter();
  v431 = v520;
  Date.addingTimeInterval(_:)();
  v515(v430, v420);
  v421(v431, 0, 1, v420);
  v432 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v504 = v429;
  outlined assign with take of Date?(v431, v429 + v432);
  swift_endAccess();
  if (one-time initialization token for functionalStrengthTraining != -1)
  {
    swift_once();
  }

  v503 = static FIUIWorkoutActivityType.functionalStrengthTraining;
  v433 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v499 = specialized Occurrence.__allocating_init(count:)(0);
  v434 = v526;
  v435 = v424;
  v436 = v536;
  v536(v526, v435, v416);
  v437 = objc_allocWithZone(v502);
  swift_beginAccess();
  v539 = v433;
  v502 = v433;
  Published.init(initialValue:)();
  swift_endAccess();
  v438 = v519;
  v436(v519, v434, v416);
  *&v437[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v439 = v535;
  v440 = v534;
  v534(&v437[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v535);
  v440(&v437[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v439);
  (v512)(&v437[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v513);
  v510(&v437[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v416);
  v441 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v437[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v436(&v437[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v438, v416);
  v442 = v503;
  *&v437[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v503;
  v437[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v437[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v499;
  swift_beginAccess();
  *&v437[v441] = 0;
  v437[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v540.receiver = v437;
  v540.super_class = v509;
  v443 = v442;
  v444 = objc_msgSendSuper2(&v540, sel_init);

  v445 = v438;
  v446 = v527;
  v527(v445, v416);
  v446(v526, v416);
  v446(v532, v416);
  v447 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *(v444 + v447) = v516;
  v448 = v444;

  v449 = v506;
  static Date.now.getter();
  v450 = v520;
  Date.addingTimeInterval(_:)();
  v515(v449, v439);
  v440(v450, 0, 1, v439);
  v451 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  outlined assign with take of Date?(v450, v448 + v451);
  swift_endAccess();
  v452 = swift_allocObject();
  *(v452 + 16) = xmmword_20B447560;
  v453 = v488;
  *(v452 + 32) = v491;
  *(v452 + 40) = v453;
  v454 = v466;
  v455 = v517;
  *(v452 + 48) = v466;
  *(v452 + 56) = v455;
  v456 = v507;
  v457 = v508;
  *(v452 + 64) = v486;
  *(v452 + 72) = v457;
  v459 = v504;
  v458 = v505;
  *(v452 + 80) = v456;
  *(v452 + 88) = v458;
  v460 = v528;
  *(v452 + 96) = v528;
  *(v452 + 104) = v459;
  *(v452 + 112) = v448;

  outlined consume of Data._Representation(v474, v473);

  v461 = v477;
  v462 = v475;
  *v477 = v516;
  v461[1] = v462;
  v461[2] = v452;
}

uint64_t getEnumTagSinglePayload for MockManagedConfigurationsProvider(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for MockManagedConfigurationsProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id @nonobjc ISSymbol.__allocating_init(forTypeIdentifier:with:variantOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x20F2E6C00](a1);

  v11[0] = 0;
  v7 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v6 withResolutionStrategy:a3 variantOptions:a4 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v7;
}

uint64_t specialized static SmartRoutingDeviceSymbolNameProvider.symbolName(forProductID:)(uint64_t a1)
{
  v1 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25[-v4];
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UTType.init(_rawBluetoothProductID:rawVendorID:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of UTType?(v5);
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v11 = 0x7073646F70726961;
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.devices);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109120;
      *(v15 + 4) = v1;
      _os_log_impl(&dword_20AEA4000, v13, v14, "[WorkoutDeviceSymbolNameProvider] Unable to determine UTType for product id: %u", v15, 8u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    type metadata accessor for ISSymbol();
    v16 = UTType.identifier.getter();
    v18 = @nonobjc ISSymbol.__allocating_init(forTypeIdentifier:with:variantOptions:)(v16, v17, 1, 1);
    if (v18)
    {
      v23 = v18;
      v20 = [v18 name];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      if (one-time initialization token for devices != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static WOLog.devices);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 67109120;
        *(v22 + 4) = v1;
        _os_log_impl(&dword_20AEA4000, v20, v21, "[WorkoutDeviceSymbolNameProvider] Unable to find SF Symbol for product id: %u", v22, 8u);
        MEMORY[0x20F2E9420](v22, -1, -1);
      }

      v11 = 0x7073646F70726961;
    }

    (*(v7 + 8))(v10, v6);
  }

  return v11;
}

uint64_t outlined destroy of UTType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for ISSymbol()
{
  result = lazy cache variable for type metadata for ISSymbol;
  if (!lazy cache variable for type metadata for ISSymbol)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ISSymbol);
  }

  return result;
}

Swift::Int FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:)(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  v5 = [v2 effectiveTypeIdentifier];
  if (v5 == 13)
  {
    if ([v2 isIndoor])
    {
      v6 = &outlined read-only object #3 of FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:);
    }

    else
    {
      v6 = &outlined read-only object #4 of FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:);
    }

LABEL_17:

    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore10TargetZoneC0H4TypeO_Tt0g5Tf4g_n(v6);
  }

  if (v5 != 37)
  {
    if (v5 == 71 && ([v2 isIndoor] & 1) == 0)
    {
      v6 = &outlined read-only object #0 of FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:);
      goto LABEL_17;
    }

    return MEMORY[0x277D84FA0];
  }

  if ([v2 isIndoor])
  {
    if (v4 == 1)
    {
      v7 = type metadata accessor for WorkoutKitFeatures();
      v10[3] = v7;
      v10[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
      (*(*(v7 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FC8], v7);
      LOBYTE(v7) = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v10);
      if (v7)
      {
        return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore10TargetZoneC0H4TypeO_Tt0g5Tf4g_n(&outlined read-only object #1 of FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:));
      }
    }

    return MEMORY[0x277D84FA0];
  }

  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore10TargetZoneC0H4TypeO_Tt0g5Tf4g_n(&outlined read-only object #2 of FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:));
  v10[0] = result;
  if (a1 == 1)
  {
    specialized Set._Variant.insert(_:)(&v11, 6);
    specialized Set._Variant.insert(_:)(&v11, 5);
    return v10[0];
  }

  return result;
}

BOOL FIUIWorkoutActivityType.supportsPaceAlerts(activityMoveMode:configurationContext:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v7 = *a2;
  v4 = FIUIWorkoutActivityType.supportedTargetZoneAlerts(activityMoveMode:configurationContext:)(a1, &v7);
  v5 = *(specialized _NativeSet.genericIntersection<A>(_:)(a3, v4) + 16);

  return v5 != 0;
}

void FIUIWorkoutActivityType.pacePerUserUnit(pace:formattingManager:)(void *a1, double a2)
{
  v4 = FIUIPaceFormatForWorkoutActivityType();
  v5 = FIUIDistanceTypeForActivityType();
  if (v4 == 4)
  {
    v4 = [objc_opt_self() meterUnit];
    v6 = [objc_opt_self() quantityWithUnit:v4 doubleValue:a2];

    [a1 speedPerHourWithDistance:v6 overDuration:4 paceFormat:v5 distanceType:1.0];
    v8 = v7;

    a2 = round(v8);
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (a2 <= -9.22337204e18)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (a2 < 9.22337204e18)
    {
      return;
    }

    __break(1u);
  }

  v9 = [a1 unitManager];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = [objc_opt_self() meterUnit];
  v12 = [objc_opt_self() quantityWithUnit:v11 doubleValue:a2];

  [v10 paceWithDistance:v12 overDuration:v4 paceFormat:v5 distanceType:1.0];
  v14 = v13;
  v15 = v13;

  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }
}

id @objc NLSessionActivityGoal.description.getter(void *a1)
{
  v1 = a1;
  v2 = NLSessionActivityGoal.description.getter();
  v4 = v3;

  v5 = MEMORY[0x20F2E6C00](v2, v4);

  return v5;
}

uint64_t NLSessionActivityGoal.description.getter()
{
  v1 = v0;
  if ([v0 goalTypeIdentifier] != 2 || (v2 = objc_msgSend(v0, sel_requiredDistance)) == 0)
  {
    v5 = [v0 goalTypeIdentifier];
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v3 = 0xE400000000000000;
        v4 = 1701669204;
        goto LABEL_14;
      }

      if (v5 == 3)
      {
        v3 = 0xE600000000000000;
        v4 = 0x796772656E45;
        goto LABEL_14;
      }
    }

    else
    {
      if (!v5)
      {
        v3 = 0xE400000000000000;
        v4 = 1852141647;
        goto LABEL_14;
      }

      if (v5 == 1)
      {
        v3 = 0xE800000000000000;
        v4 = 0x65636E6174736944;
        goto LABEL_14;
      }
    }

    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E55;
    goto LABEL_14;
  }

  v3 = 0xED000065636E6174;
  v4 = 0x7369442B656D6954;
LABEL_14:
  MEMORY[0x20F2E6D80](v4, v3);

  if ([v0 goalTypeIdentifier])
  {
    v6 = [v0 value];
    if (v6)
    {
      v7 = v6;
      if ([v0 goalTypeIdentifier] == 2 && (v8 = objc_msgSend(v0, sel_requiredDistance)) != 0)
      {

        _StringGuts.grow(_:)(21);

        v9 = [v7 description];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        MEMORY[0x20F2E6D80](v10, v12);

        MEMORY[0x20F2E6D80](0x636E617473696420, 0xEB00000000203A65);
        v13 = [v1 requiredDistance];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 description];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v20 = Optional.description.getter();
        v22 = v21;

        MEMORY[0x20F2E6D80](v20, v22);

        v17 = 0x203A656D6974;
        v19 = 0xE600000000000000;
      }

      else
      {
        v16 = [v7 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      MEMORY[0x20F2E6D80](v17, v19);

      MEMORY[0x20F2E6D80](41, 0xE100000000000000);

      MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
    }
  }

  return 0x3D6C616F67;
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_WorkoutBuddyStatePublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_WorkoutBuddyStatePublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Apple_Workout_Core_WorkoutBuddyStatePublisher.state.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.state.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 6;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 2)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutBuddyStatePublisher.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (v5 = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 8) || (lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(), v5 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return v5;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState);
  }

  return result;
}

Swift::Int Apple_Workout_Core_WorkoutBuddyStatePublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutBuddyStatePublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutBuddyStatePublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutBuddyStatePublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static Apple_Workout_Core_WorkoutBuddyStatePublisher._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_WorkoutBuddyStatePublisher@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t specialized static Apple_Workout_Core_WorkoutBuddyStatePublisher.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 1);
  v4 = *(a2 + 1);
  if (a2[16] == 1)
  {
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        if (v3 == 3)
        {
          goto LABEL_10;
        }
      }

      else if (v4 == 4)
      {
        if (v3 == 4)
        {
          goto LABEL_10;
        }
      }

      else if (v3 == 5)
      {
        goto LABEL_10;
      }
    }

    else if (v4)
    {
      if (v4 == 1)
      {
        if (v3 == 1)
        {
          goto LABEL_10;
        }
      }

      else if (v3 == 2)
      {
        goto LABEL_10;
      }
    }

    else if (!v3)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 != v4)
  {
    return 0;
  }

LABEL_10:
  type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherV0adE0OGMd, &_sSay11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherV0adE0OGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState(uint64_t result, int a2)
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id AtomicLazy.init(initializationBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for AtomicLazy(0, a3, a3, a5);
  (*(*(a3 - 8) + 56))(&a4[*(v9 + 28)], 1, 1, a3);
  v10 = *(v9 + 32);
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *&a4[v10] = result;
  *a4 = a1;
  *(a4 + 1) = a2;
  return result;
}

id AtomicLazy.load()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - v10;
  [*(v3 + *(a1 + 32)) lock];
  v12 = *(a1 + 28);
  (*(v8 + 16))(v11, v3 + v12, v7);
  v13 = *(v6 - 8);
  if ((*(v13 + 48))(v11, 1, v6) == 1)
  {
    v14 = *(v8 + 8);
    v15 = v14(v11, v7);
    (*v3)(v15);
    v14(v3 + v12, v7);
    (*(v13 + 16))(v3 + v12, a2, v6);
    (*(v13 + 56))(v3 + v12, 0, 1, v6);
  }

  else
  {
    (*(v13 + 32))(a2, v11, v6);
  }

  return [*(v3 + *(type metadata accessor for AtomicLazy(0 v6];
}

uint64_t type metadata completion function for AtomicLazy(uint64_t a1)
{
  result = type metadata accessor for ()();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NSLock();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AtomicLazy(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void storeEnumTagSinglePayload for AtomicLazy(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    *a1 = a2 - 1;
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

unint64_t type metadata accessor for NSLock()
{
  result = lazy cache variable for type metadata for NSLock;
  if (!lazy cache variable for type metadata for NSLock)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSLock);
  }

  return result;
}

Swift::String __swiftcall String.workoutLocalized()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x20F2E6C00](v3, v2);
  v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::String __swiftcall String.kahanaLocalized()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x20F2E6C00](v3, v2);
  v7 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

id String.fitnessUILocalizedString(feature:)(unsigned __int8 *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  result = MEMORY[0x20F2E82D0]();
  if (result)
  {
    v7 = result;
    v8 = v5 == 0;
    if (v5)
    {
      v9 = 0xEB00000000656C62;
    }

    else
    {
      v9 = 0x800000020B468B60;
    }

    if (v8)
    {
      v10 = 0xD000000000000011;
    }

    else
    {
      v10 = 0x617A696C61636F4CLL;
    }

    v15._object = 0xE000000000000000;
    v11._countAndFlagsBits = a2;
    v11._object = a3;
    v12 = v9;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, *&v10, v7, v13, v15)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String __swiftcall String.widgetKitLocalized()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x20F2E6C00](v3, v2);
  v7 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B468B80);
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

Swift::Int FitnessUILocalizationFeature.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FitnessUILocalizationFeature()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FitnessUILocalizationFeature(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type FitnessUILocalizationFeature and conformance FitnessUILocalizationFeature()
{
  result = lazy protocol witness table cache variable for type FitnessUILocalizationFeature and conformance FitnessUILocalizationFeature;
  if (!lazy protocol witness table cache variable for type FitnessUILocalizationFeature and conformance FitnessUILocalizationFeature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FitnessUILocalizationFeature and conformance FitnessUILocalizationFeature);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FitnessUILocalizationFeature(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for FitnessUILocalizationFeature(_WORD *result, int a2, int a3)
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

uint64_t IntervalsMetricsPublisher.intervalStartDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_7(a1, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_13(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

double IntervalsMetricsPublisher.intervalTotalStepCount.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double IntervalsMetricsPublisher.intervalThisStep.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double IntervalsMetricsPublisher.intervalCurrentStepIndex.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

void IntervalsMetricsPublisher.intervalDistance.setter(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t (*IntervalsMetricsPublisher.intervalProgress.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalProgress.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalDistance.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalDistance.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalProgress : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalProgress.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalProgress.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalProgress;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalProgress.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalThisStep.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalThisStep.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalThisStep : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalsMetricsPublisher.$intervalThisStep.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalsMetricsPublisher.$intervalThisStep.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalThisStep;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalThisStep.modify;
}

uint64_t IntervalsMetricsPublisher.intervalThisStep.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*IntervalsMetricsPublisher.intervalNextStep.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalNextStep.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalNextStep : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalsMetricsPublisher.$intervalNextStep.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalsMetricsPublisher.$intervalNextStep.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D4StepCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalNextStep;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalNextStep.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalDistance : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalDistance.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalDistance.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistance;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalDistance.modify;
}

double key path getter for IntervalsMetricsPublisher.intervalAveragePace : IntervalsMetricsPublisher@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = v4;
  *a2 = v4;
  return result;
}

void key path setter for IntervalsMetricsPublisher.intervalAveragePace : IntervalsMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t (*IntervalsMetricsPublisher.intervalAveragePace.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalAveragePace.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalAveragePace : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalAveragePace.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalAveragePace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalAveragePace.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalCurrentPace.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalCurrentPace.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalCurrentPace : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalCurrentPace.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalCurrentPace.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPace;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalCurrentPace.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalAveragePower.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalAveragePower.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalAveragePower : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalAveragePower.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalAveragePower.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalAveragePower.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalCurrentPower.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalCurrentPower.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalCurrentPower : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalCurrentPower.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalCurrentPower.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalCurrentPower.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalAverageCadence.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalAverageCadence.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalAverageCadence : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalAverageCadence.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalAverageCadence.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAverageCadence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalAverageCadence.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalCurrentCadence.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalCurrentCadence.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalCurrentCadence : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalCurrentCadence.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalCurrentCadence.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentCadence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalCurrentCadence.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalTotalTime.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalTotalTime.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalTotalTime : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalTotalTime.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalTotalTime.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalTotalTime.modify;
}

double IntervalsMetricsPublisher.intervalStartDate.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t (*IntervalsMetricsPublisher.intervalStartDate.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalStartDate.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalStartDate : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalsMetricsPublisher.$intervalStartDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalsMetricsPublisher.$intervalStartDate.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalStartDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalStartDate.modify;
}

double IntervalsMetricsPublisher.intervalAveragePace.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*IntervalsMetricsPublisher.intervalActiveEnergy.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalActiveEnergy.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalActiveEnergy : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalActiveEnergy.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalActiveEnergy.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalActiveEnergy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalActiveEnergy.modify;
}

uint64_t (*IntervalsMetricsPublisher.intervalCurrentStepIndex.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalCurrentStepIndex.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalCurrentStepIndex : IntervalsMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySiSg_GMd, &_s7Combine9PublishedV9PublisherVySiSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalsMetricsPublisher.$intervalCurrentStepIndex.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySiSg_GMd, &_s7Combine9PublishedV9PublisherVySiSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalsMetricsPublisher.$intervalCurrentStepIndex.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySiSg_GMd, &_s7Combine9PublishedV9PublisherVySiSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentStepIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalCurrentStepIndex.modify;
}

uint64_t IntervalsMetricsPublisher.intervalTotalStepCount.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t (*IntervalsMetricsPublisher.intervalTotalStepCount.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalTotalStepCount.modify;
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalTotalStepCount : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
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

uint64_t IntervalsMetricsPublisher.$intervalTotalStepCount.setter(uint64_t a1)
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

uint64_t (*IntervalsMetricsPublisher.$intervalTotalStepCount.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalStepCount;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalTotalStepCount.modify;
}

uint64_t IntervalsMetricsPublisher.intervalCurrentStepIndex.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*IntervalsMetricsPublisher.intervalDistanceGoalAchievedDuration.modify(uint64_t *a1))()
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
  return IntervalsMetricsPublisher.intervalDistanceGoalAchievedDuration.modify;
}

void IntervalsMetricsPublisher.intervalProgress.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t IntervalsMetricsPublisher.$intervalProgress.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for IntervalsMetricsPublisher.$intervalProgress : IntervalsMetricsPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for IntervalsMetricsPublisher.$intervalDistanceGoalAchievedDuration : IntervalsMetricsPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t IntervalsMetricsPublisher.$intervalDistanceGoalAchievedDuration.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*IntervalsMetricsPublisher.$intervalDistanceGoalAchievedDuration.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistanceGoalAchievedDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return IntervalsMetricsPublisher.$intervalDistanceGoalAchievedDuration.modify;
}

void IntervalsMetricsPublisher.$intervalProgress.modify(uint64_t a1, char a2)
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

uint64_t IntervalsMetricsPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  IntervalsMetricsPublisher.init()();
  return v0;
}

uint64_t IntervalsMetricsPublisher.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v71 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v68 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v65 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v62 = &v57 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = MEMORY[0x28223BE20](v61, v14);
  v60 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v59 = &v57 - v18;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  v19 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v20);
  v22 = &v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v57 = v23;
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v57 - v26;
  v28 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalProgress;
  v74 = 0;
  Published.init(initialValue:)();
  v29 = *(v24 + 32);
  v29(v0 + v28, v27, v23);
  v30 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalThisStep;
  v74 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A4StepCSgMd, &_s11WorkoutCore0A4StepCSgMR);
  Published.init(initialValue:)();
  v31 = *(v19 + 32);
  v32 = v0 + v30;
  v33 = v58;
  v31(v32, v22, v58);
  v34 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalNextStep;
  v74 = 0;
  Published.init(initialValue:)();
  v31(v1 + v34, v22, v33);
  v35 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistance;
  v74 = 0;
  Published.init(initialValue:)();
  v36 = v1;
  v37 = v1 + v35;
  v38 = v57;
  v29(v37, v27, v57);
  v39 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePace;
  v74 = 0;
  Published.init(initialValue:)();
  v29(v36 + v39, v27, v38);
  v40 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPace;
  v74 = 0;
  Published.init(initialValue:)();
  v29(v36 + v40, v27, v38);
  v41 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePower;
  v74 = 0;
  Published.init(initialValue:)();
  v29(v36 + v41, v27, v38);
  v42 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPower;
  v74 = 0;
  Published.init(initialValue:)();
  v29(v36 + v42, v27, v38);
  v43 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAverageCadence;
  v74 = 0;
  Published.init(initialValue:)();
  v29(v36 + v43, v27, v38);
  v44 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentCadence;
  v74 = 0;
  Published.init(initialValue:)();
  v29(v36 + v44, v27, v38);
  v45 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalTime;
  v74 = 0;
  Published.init(initialValue:)();
  v29(v36 + v45, v27, v38);
  v58 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalStartDate;
  v46 = type metadata accessor for Date();
  v47 = v59;
  (*(*(v46 - 8) + 56))(v59, 1, 1, v46);
  _s10Foundation4DateVSgWOcTm_7(v47, v60, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v48 = v62;
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_13(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(v63 + 32))(v36 + v58, v48, v64);
  v49 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalActiveEnergy;
  v74 = 0;
  Published.init(initialValue:)();
  v29(v36 + v49, v27, v38);
  v50 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentStepIndex;
  v74 = 0;
  v75 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v51 = v65;
  Published.init(initialValue:)();
  (*(v66 + 32))(v36 + v50, v51, v67);
  v52 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalStepCount;
  v74 = 0;
  v53 = v68;
  Published.init(initialValue:)();
  (*(v69 + 32))(v36 + v52, v53, v70);
  v54 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistanceGoalAchievedDuration;
  v74 = 0;
  v75 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v55 = v71;
  Published.init(initialValue:)();
  (*(v72 + 32))(v36 + v54, v55, v73);
  return v36;
}