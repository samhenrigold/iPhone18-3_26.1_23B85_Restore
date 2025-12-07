void TrainingLoadViewModelProvider.startAllDayQuery()()
{
  v1 = v0;
  v2 = *v0;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd, &_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMR);
  v3 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v70 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v70 - v9;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v85 = *(SampleDaySummaryCollection - 8);
  v86 = SampleDaySummaryCollection;
  MEMORY[0x28223BE20](SampleDaySummaryCollection);
  v84 = (&v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  DataType = type metadata accessor for TrainingLoadDataType();
  v89 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v88 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for GregorianDayRange();
  v91 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v90 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v80 = v3;
  v79 = v7;
  v78 = v2;
  v83 = DataType;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    v24 = _typeName(_:qualified:)();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_20C66F000, v19, v20, "[%{public}s] Spinning up allDayQuery", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v27 = v23;
    DataType = v83;
    MEMORY[0x20F30E080](v27, -1, -1);
    MEMORY[0x20F30E080](v22, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  v28 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  aBlock[0] = v1;
  v29 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = *(v1 + 24);
  swift_getKeyPath();
  v32 = v90;
  v31 = v91;
  v33 = v91 + 2;
  if (v30)
  {
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v35 = v87;
    (v31[2])(v32, v1 + v34, v87);
    v36 = v82;
    GregorianDayRange.dayIndexRange.getter();
    (v31[1])(v32, v35);
    v37 = v84;
    static TrainingLoadSampleDaySummaryCollection.fake(inDayRange:separateByActivityType:)();
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v36, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
    v39 = v88;
    v38 = v89;
    (*(v89 + 104))(v88, *MEMORY[0x277D0FEE0], DataType);
    TrainingLoadViewModelProvider.update(for:dataType:)(v37, v39);
    (*(v38 + 8))(v39, DataType);
    (*(v85 + 8))(v37, v86);
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239F990, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.allDayTaskFinished.setter, &block_descriptor_140_0);
  }

  else
  {
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v75 = v28;
    v40 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v41 = v87;
    v76 = v31[2];
    v76(v32, v1 + v40, v87);
    v42 = *MEMORY[0x277D0FEE0];
    v43 = v89;
    v74 = v33;
    v44 = *(v89 + 104);
    v45 = v88;
    v72 = v42;
    v71 = v44;
    v44(v88);
    specialized static DemoUtilities.fetchTrainingLoadSampleDaySummary(dayRange:dataType:)(v32, v45);
    v73 = v29;
    v47 = v46;
    v89 = *(v43 + 8);
    (v89)(v45, DataType);
    v50 = v31[1];
    v48 = v31 + 1;
    v49 = v50;
    v50(v32, v41);
    v70 = v47;
    if (v47)
    {
      swift_getKeyPath();
      v91 = v48;
      aBlock[0] = v1;
      v51 = v45;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v76(v32, v1 + v40, v41);
      GregorianDayRange.dayIndexRange.getter();
      v49(v32, v41);
      v52 = v84;
      TrainingLoadSampleDaySummaryCollection.init(morningIndexRange:daySummaries:)();
      v53 = v83;
      v71(v51, v72, v83);
      TrainingLoadViewModelProvider.update(for:dataType:)(v52, v51);
      (v89)(v51, v53);
      ViewModel = TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239F990, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.allDayTaskFinished.setter, &block_descriptor_140_0);
      (*(v85 + 8))(v52, v86, ViewModel);
    }

    else
    {
      v91 = v49;
      v55 = v76;
      v56 = *(v1 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeAllDayLoadSummaryCollectionSequence);
      if (v56)
      {
        v89 = *(v1 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeAllDayLoadSummaryCollectionSequence + 8);
        swift_getKeyPath();
        v57 = v41;
        aBlock[0] = v1;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v58 = v90;
        v55(v90, v1 + v40, v57);
        v59 = v77;
        v56(v58);
        (v91)(v58, v57);
        v61 = v80;
        v60 = v81;
        v62 = v79;
        (*(v80 + 32))(v79, v59, v81);
        v63 = *(v1 + 16);
        v64 = swift_allocObject();
        v65 = swift_weakInit();
        v91 = &v70;
        MEMORY[0x28223BE20](v65);
        *(&v70 - 4) = v64;
        *(&v70 - 3) = v62;
        *(&v70 - 2) = v78;
        v66 = *(v63 + 16);
        v67 = swift_allocObject();
        *(v67 + 16) = v63;
        *(v67 + 24) = 1;
        *(v67 + 32) = partial apply for closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
        *(v67 + 40) = &v70 - 6;
        v68 = swift_allocObject();
        *(v68 + 16) = closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)partial apply;
        *(v68 + 24) = v67;
        aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
        aBlock[5] = v68;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
        aBlock[3] = &block_descriptor_127;
        v69 = _Block_copy(aBlock);

        dispatch_sync(v66, v69);
        _Block_release(v69);
        LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

        if (v63)
        {
          __break(1u);
        }

        else
        {
          (*(v61 + 8))(v62, v60);
        }
      }

      else
      {
        TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(1, &unk_28239F990, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.allDayTaskFinished.setter, &block_descriptor_140_0);
      }
    }
  }
}

uint64_t closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v30 = a7;
  v26 = a6;
  v27 = a1;
  v28 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd, &_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  (*(v9 + 16))(v12, a4, v8);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v9 + 32))(v21 + v18, v12, v8);
  *(v21 + v19) = v17;
  v22 = (v21 + v20);
  v23 = v28;
  *v22 = v27;
  v22[1] = v23;
  *(v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8)) = v29;

  v24 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v15, v30, v21);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v15, &_sScPSgMd, &_sScPSgMR);
  return v24;
}

uint64_t closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  DataType = type metadata accessor for TrainingLoadDataType();
  v8[12] = DataType;
  v8[13] = *(DataType - 8);
  v8[14] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v8[19] = SampleDaySummaryCollection;
  v8[20] = *(SampleDaySummaryCollection - 8);
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance38TrainingLoadSampleDaySummaryCollectionVSgMd, &_s13HealthBalance38TrainingLoadSampleDaySummaryCollectionVSgMR);
  v8[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_p_GMd, &_sScs8IteratorVy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_p_GMR);
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery(), 0, 0);
}

uint64_t closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd, &_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMR);
  MEMORY[0x20F30BE10](v1);
  swift_beginAccess();
  *(v0 + 232) = *MEMORY[0x277D0FEE0];
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);

  return MEMORY[0x2822005A8](v3, 0, 0, v4, v0 + 40);
}

{

  if (v0)
  {
    v1 = closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
  }

  else
  {
    v1 = closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    (*(v0 + 72))(v4);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    (*(v3 + 32))(*(v0 + 168), v1, v2);
    static WOLog.trainingLoad.getter();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 144);
    v11 = *(v0 + 120);
    v12 = *(v0 + 128);
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136446210;
      v15 = _typeName(_:qualified:)();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_20C66F000, v7, v8, "[%{public}s] Received All day load day summaries", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x20F30E080](v14, -1, -1);
      MEMORY[0x20F30E080](v13, -1, -1);
    }

    (*(v12 + 8))(v10, v11);
    Strong = swift_weakLoadStrong();
    *(v0 + 216) = Strong;
    if (Strong)
    {
      (*(*(v0 + 104) + 104))(*(v0 + 112), *(v0 + 232), *(v0 + 96));
      type metadata accessor for MainActor();
      *(v0 + 224) = static MainActor.shared.getter();
      v20 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery(), v20, v19);
    }

    else
    {
      (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
      v21 = swift_task_alloc();
      *(v0 + 208) = v21;
      *v21 = v0;
      v21[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
      v22 = *(v0 + 176);
      v23 = *(v0 + 184);

      return MEMORY[0x2822005A8](v22, 0, 0, v23, v0 + 40);
    }
  }
}

{
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];

  TrainingLoadViewModelProvider.update(for:dataType:)(v1, v2);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery(), 0, 0);
}

{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();
  v2 = v0[22];
  v3 = v0[23];

  return MEMORY[0x2822005A8](v2, 0, 0, v3, v0 + 5);
}

{
  v24 = v0;
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
  v1 = *(v0 + 40);
  static WOLog.trainingLoad.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 128);
    v22 = *(v0 + 136);
    v6 = *(v0 + 120);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446466;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v0 + 48) = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(reflecting:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v23);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_20C66F000, v3, v4, "[%{public}s] Received error for all day summary query: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v8, -1, -1);
    MEMORY[0x20F30E080](v7, -1, -1);

    v16 = (*(v5 + 8))(v22, v6);
  }

  else
  {
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);

    v16 = (*(v18 + 8))(v17, v19);
  }

  (*(v0 + 72))(v16);

  v20 = *(v0 + 8);

  return v20();
}

void TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(int a1)
{
  v2 = v1;
  LODWORD(v98) = a1;
  v99 = *v1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd, &_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMR);
  v3 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v84 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v84 - v9;
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v11 = *(SampleDaySummaryCollection - 8);
  MEMORY[0x28223BE20](SampleDaySummaryCollection);
  v13 = (&v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  DataType = type metadata accessor for TrainingLoadDataType();
  v88 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v101 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for GregorianDayRange();
  v89 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Logger();
  v16 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.trainingLoad.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v87 = v13;
  v96 = v7;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v85 = SampleDaySummaryCollection;
    v23 = v22;
    v24 = swift_slowAlloc();
    v94 = v3;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136446210;
    v26 = _typeName(_:qualified:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, aBlock);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_20C66F000, v19, v20, "[%{public}s] Spinning up workoutsByActivityTypeQuery", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    v29 = v25;
    v3 = v94;
    MEMORY[0x20F30E080](v29, -1, -1);
    v30 = v23;
    SampleDaySummaryCollection = v85;
    MEMORY[0x20F30E080](v30, -1, -1);
  }

  (*(v16 + 8))(v18, v100);
  swift_getKeyPath();
  v31 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  aBlock[0] = v2;
  v32 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 24))
  {
    swift_getKeyPath();
    aBlock[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v34 = v89;
    v35 = v2 + v33;
    v37 = v103;
    v36 = v104;
    (*(v89 + 16))(v103, v35, v104);
    v38 = v86;
    GregorianDayRange.dayIndexRange.getter();
    (*(v34 + 8))(v37, v36);
    v39 = v87;
    static TrainingLoadSampleDaySummaryCollection.fake(inDayRange:separateByActivityType:)();
    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v38, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
    v41 = v101;
    v40 = DataType;
    *v101 = 13;
    v42 = v88;
    (*(v88 + 104))(v41, *MEMORY[0x277D0FED8], v40);
    TrainingLoadViewModelProvider.update(for:dataType:)(v39, v41);
    (*(v42 + 8))(v41, v40);
    (*(v11 + 8))(v39, SampleDaySummaryCollection);
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239F8A0, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsByActivityTaskFinished.setter, &block_descriptor_115);
    return;
  }

  if ((v98 & 1) == 0)
  {
    v60 = *(v2 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadByActivityTypeSummaryCollectionSequence);
    if (!v60)
    {
      TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(1, &unk_28239F8A0, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsByActivityTaskFinished.setter, &block_descriptor_115);
      return;
    }

    swift_getKeyPath();
    aBlock[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v61 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v62 = v89;
    v64 = v103;
    v63 = v104;
    (*(v89 + 16))(v103, v2 + v61, v104);
    v65 = v95;
    v60(v64);
    (*(v62 + 8))(v64, v63);
    v66 = v96;
    v3[4](v96, v65, v97);
    v67 = *(v2 + 16);
    TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239F8A0, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsByActivityTaskFinished.setter, &block_descriptor_115);
    v68 = swift_allocObject();
    v69 = swift_weakInit();
    MEMORY[0x28223BE20](v69);
    *(&v84 - 4) = v68;
    *(&v84 - 3) = v66;
    *(&v84 - 2) = v99;
    v70 = *(v67 + 16);
    v71 = swift_allocObject();
    *(v71 + 16) = v67;
    *(v71 + 24) = 2;
    *(v71 + 32) = partial apply for closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:);
    *(v71 + 40) = &v84 - 6;
    v72 = swift_allocObject();
    *(v72 + 16) = partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:);
    *(v72 + 24) = v71;
    aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
    aBlock[5] = v72;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_29;
    v73 = _Block_copy(aBlock);

    dispatch_sync(v70, v73);
    _Block_release(v73);
    LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

    if ((v67 & 1) == 0)
    {
      (v3[1])(v66, v97);
      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  v105 = MEMORY[0x277D84F90];
  v43 = [objc_opt_self() _allWorkoutActivityTypes];
  if (!v43)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v44 = v43;
  v98 = v32;
  v99 = v31;
  v84 = v11;
  type metadata accessor for NSNumber(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v45 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v85 = SampleDaySummaryCollection;
  if (v45 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v47 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;

    v100 = v2;
    v97 = v47;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v48 = 0;
    v95 = (v45 & 0xFFFFFFFFFFFFFF8);
    v96 = v45 & 0xC000000000000001;
    v94 = (v89 + 16);
    v93 = *MEMORY[0x277D0FED8];
    v92 = (v88 + 104);
    v91 = (v88 + 8);
    v90 = (v89 + 8);
    while (1)
    {
      if (v96)
      {
        v49 = MEMORY[0x20F30C990](v48, v45);
      }

      else
      {
        if (v48 >= *(v95 + 2))
        {
          goto LABEL_27;
        }

        v49 = *(v45 + 8 * v48 + 32);
      }

      v50 = v49;
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v52 = [v49 unsignedIntegerValue];
      swift_getKeyPath();
      v53 = v100;
      v107 = v100;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v54 = v53 + v97;
      v55 = v103;
      v2 = v104;
      (*v94)(v103, v54, v104);
      v57 = v101;
      v56 = DataType;
      *v101 = v52;
      (*v92)(v57, v93, v56);
      specialized static DemoUtilities.fetchTrainingLoadSampleDaySummary(dayRange:dataType:)(v55, v57);
      v59 = v58;
      (*v91)(v57, v56);
      (*v90)(v55, v2);
      if (v59)
      {
        specialized Array.append<A>(contentsOf:)(v59);
      }

      ++v48;
      if (v51 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_22:

  v74 = v100;

  if (*(v105 + 16))
  {
    swift_getKeyPath();
    v107 = v74;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v75 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v76 = v89;
    v77 = v74 + v75;
    v79 = v103;
    v78 = v104;
    (*(v89 + 16))(v103, v77, v104);
    GregorianDayRange.dayIndexRange.getter();
    (*(v76 + 8))(v79, v78);

    v80 = v87;
    TrainingLoadSampleDaySummaryCollection.init(morningIndexRange:daySummaries:)();
    v82 = v101;
    v81 = DataType;
    *v101 = 13;
    v83 = v88;
    (*(v88 + 104))(v82, *MEMORY[0x277D0FED8], v81);
    TrainingLoadViewModelProvider.update(for:dataType:)(v80, v82);
    (*(v83 + 8))(v82, v81);
    (*(v84 + 8))(v80, v85);
  }

  TrainingLoadViewModelProvider.TaskHolder.workoutsTaskFinished.setter(0, &unk_28239F8A0, partial apply for closure #1 in TrainingLoadViewModelProvider.TaskHolder.workoutsByActivityTaskFinished.setter, &block_descriptor_115);
}

uint64_t closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  DataType = type metadata accessor for TrainingLoadDataType();
  v8[12] = DataType;
  v8[13] = *(DataType - 8);
  v8[14] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  SampleDaySummaryCollection = type metadata accessor for TrainingLoadSampleDaySummaryCollection();
  v8[19] = SampleDaySummaryCollection;
  v8[20] = *(SampleDaySummaryCollection - 8);
  v8[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13HealthBalance38TrainingLoadSampleDaySummaryCollectionVSgMd, &_s13HealthBalance38TrainingLoadSampleDaySummaryCollectionVSgMR);
  v8[22] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_p_GMd, &_sScs8IteratorVy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_p_GMR);
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:), 0, 0);
}

Swift::Void __swiftcall TrainingLoadViewModelProvider.startQuery(isFaking:)(Swift::Bool isFaking)
{
  v2 = v1;
  v3 = isFaking;
  v4 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = MEMORY[0x277D84F78];
  if (*(v2 + 24) == v3)
  {
    *(v2 + 24) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v21[-2] = v2;
    LOBYTE(v21[-1]) = v3;
    v21[1] = v2;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v10 = v2[2];
  TrainingLoadViewModelProvider.TaskHolder.cancelAll()();
  TrainingLoadViewModelProvider.startWorkoutsQuery()();
  v12 = v11;
  TrainingLoadViewModelProvider.startAllDayQuery()();
  v15 = v12 == 1 || v13 == 1;
  TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(v15);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  v18[5] = v4;
  v19 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:), v18);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v7, &_sScPSgMd, &_sScPSgMR);
  v20 = *(v10 + 64);
  *(v10 + 64) = v19;
  if (v20)
  {

    MEMORY[0x20F30BE00](v20, v8 + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  }
}

uint64_t closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = type metadata accessor for Logger();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
  v5[12] = swift_task_alloc();
  v7 = type metadata accessor for NSNotificationCenter.Notifications.Iterator();
  v5[13] = v7;
  v5[14] = *(v7 - 8);
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:), 0, 0);
}

uint64_t closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:)()
{
  v1 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.notifications(named:object:)();

  NSNotificationCenter.Notifications.makeAsyncIterator()();
  swift_beginAccess();
  v2 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:);
  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x282200308](v4, v5, v2);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:);
  }

  else
  {
    v2 = closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return MEMORY[0x2822009F8](closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:), 0, 0);
}

{
  v37 = v0;
  v1 = v0[12];
  v2 = type metadata accessor for Notification();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v0[15], v0[13]);
LABEL_13:

    v31 = v0[1];

    return v31();
  }

  static WOLog.trainingLoad.getter();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[9];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136446210;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v36);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20C66F000, v3, v4, "[%{public}s] did receive significantTimeChangeNotification notification", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x20F30E080](v10, -1, -1);
    MEMORY[0x20F30E080](v9, -1, -1);
  }

  v14 = *(v8 + 8);
  v14(v6, v7);
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (!Strong)
  {
    static WOLog.trainingLoad.getter();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[14];
    v22 = v0[15];
    v23 = v0[13];
    v24 = v0[10];
    v25 = v0[8];
    if (v20)
    {
      v35 = v0[13];
      v34 = v0[15];
      v26 = swift_slowAlloc();
      v33 = v24;
      v27 = swift_slowAlloc();
      v36 = v27;
      *v26 = 136446210;
      v28 = _typeName(_:qualified:)();
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v36);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_20C66F000, v18, v19, "[%{public}s] Self is nil so canceling the significant time change observation", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x20F30E080](v27, -1, -1);
      MEMORY[0x20F30E080](v26, -1, -1);

      v14(v33, v25);
      (*(v21 + 8))(v34, v35);
    }

    else
    {

      v14(v24, v25);
      (*(v21 + 8))(v22, v23);
    }

    _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v0[12], &_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
    goto LABEL_13;
  }

  type metadata accessor for MainActor();
  v0[19] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:), v17, v16);
}

{
  *(v0 + 40) = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v1 = MEMORY[0x277D84A98];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x277D84AC0];

  return MEMORY[0x2821FECA8](v2, v1, v3);
}

{

  TrainingLoadViewModelProvider.refreshDayRange()();

  return MEMORY[0x2822009F8](closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:), 0, 0);
}

{
  v1 = v0[12];

  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v1, &_s10Foundation12NotificationVSgMd, &_s10Foundation12NotificationVSgMR);
  v2 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type NSNotificationCenter.Notifications.Iterator and conformance NSNotificationCenter.Notifications.Iterator, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:);
  v4 = v0[12];
  v5 = v0[13];

  return MEMORY[0x282200308](v4, v5, v2);
}

uint64_t TrainingLoadViewModelProvider.refreshDayRange()()
{
  v1 = v0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
  MEMORY[0x28223BE20](v62);
  v61 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v60 = &v58 - v4;
  v5 = type metadata accessor for DayIndex();
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v76 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v58 - v8;
  v9 = type metadata accessor for Calendar.Identifier();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x28223BE20](v9);
  v65 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar();
  v73 = *(v11 - 8);
  v74 = v11;
  MEMORY[0x28223BE20](v11);
  v69 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v58 - v14;
  v72 = type metadata accessor for Date();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v64 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - v22;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  MEMORY[0x28223BE20](v58);
  v25 = &v58 - v24;
  v26 = type metadata accessor for GregorianDayRange();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v59 = &v58 - v31;
  swift_getKeyPath();
  v78 = v0;
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  swift_beginAccess();
  v33 = *(v27 + 16);
  v63 = v1;
  v33(v29, v1 + v32, v26);
  GregorianDayRange.dayIndexRange.getter();
  (*(v27 + 8))(v29, v26);
  v34 = v75;
  v35 = *(v75 + 16);
  v35(v23, v25, v5);
  v36 = *(v34 + 56);
  v36(v23, 0, 1, v5);
  v36(v20, 1, 1, v5);
  v37 = specialized ClosedRange<>.distance(from:to:)(v23, v20);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v20, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
  _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v23, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
  v38 = v25;
  result = _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(v25, &_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR);
  if (__OFSUB__(v37, 1))
  {
    __break(1u);
  }

  else
  {
    v40 = v68;
    static Date.now.getter();
    v42 = v65;
    v41 = v66;
    v43 = v67;
    (*(v66 + 104))(v65, *MEMORY[0x277CC9830], v67);
    v44 = v71;
    Calendar.init(identifier:)();
    (*(v41 + 8))(v42, v43);
    (*(v70 + 16))(v64, v40, v72);
    v45 = v73 + 16;
    v67 = *(v73 + 16);
    v67(v69, v44, v74);
    v46 = v5;
    DayIndex.init(date:calendar:)();
    static DayIndex.- infix(_:_:)();
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v47 = v5;
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v48 = v60;
      v35(v60, v76, v46);
      v49 = v61;
      v50 = v62;
      v35((v48 + *(v62 + 48)), v77, v46);
      outlined init with copy of (lower: DayIndex, upper: DayIndex)(v48, v49, &_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
      v51 = *(v50 + 48);
      v52 = v75;
      v53 = *(v75 + 32);
      v66 = v45;
      v53(v38, v49, v47);
      v54 = *(v52 + 8);
      v54(v49 + v51, v47);
      outlined init with take of (lower: DayIndex, upper: DayIndex)(v48, v49, &_s9HealthKit8DayIndexV5lower_AC5uppertMd, &_s9HealthKit8DayIndexV5lower_AC5uppertMR);
      v53(&v38[*(v58 + 36)], v49 + *(v50 + 48), v47);
      v54(v49, v47);
      v55 = v71;
      v56 = v74;
      v67(v69, v71, v74);
      v57 = v59;
      GregorianDayRange.init(dayIndexRange:gregorianCalendar:)();
      v54(v76, v47);
      v54(v77, v47);
      (*(v73 + 8))(v55, v56);
      (*(v70 + 8))(v68, v72);
      return TrainingLoadViewModelProvider.dayRange.setter(v57);
    }
  }

  __break(1u);
  return result;
}

void TrainingLoadViewModelProvider.update(for:dataType:)(void (**a1)(char *, uint64_t, uint64_t, __n128), char *a2)
{
  v3 = v2;
  v108 = a1;
  v100 = type metadata accessor for GregorianDayRange();
  v5 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v109 = *(ViewModel - 8);
  MEMORY[0x28223BE20](ViewModel - 8);
  v111 = (&v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v102 = &v92 - v10;
  MEMORY[0x28223BE20](v11);
  v101 = &v92 - v12;
  MEMORY[0x28223BE20](v13);
  v112 = (&v92 - v14);
  MEMORY[0x28223BE20](v15);
  v94 = &v92 - v16;
  DataType = type metadata accessor for TrainingLoadDataType();
  v18 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v92 - v23;
  v25 = *(v18 + 16);
  v25(&v92 - v23, a2, DataType, v22);
  v26 = (*(v18 + 88))(v24, DataType);
  v27 = *MEMORY[0x277D0FED8];
  v98 = v26;
  v113 = v20;
  v114 = DataType;
  v95 = v18;
  if (v26 == v27)
  {
    v92 = a2;
    swift_getKeyPath();
    v28 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
    v120 = v3;
    v29 = lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
    v97 = v28;
    v96 = v29;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v30 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
    swift_beginAccess();
    v93 = v3;
    v31 = *(v3 + v30);
    v32 = *(v31 + 16);

    v106 = v32;
    if (v32)
    {
      v33 = 0;
      v104 = *MEMORY[0x277D0FEE8];
      v111 = (v18 + 104);
      v110 = (v18 + 8);
      v103 = *MEMORY[0x277D0FEE0];
      v55 = MEMORY[0x277D84F90];
      v34 = v94;
      v107 = v5;
      v105 = v31;
      while (v33 < *(v31 + 16))
      {
        v18 = v55;
        v35 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v36 = *(v109 + 72);
        outlined init with copy of TrainingLoadViewModel(v31 + v35 + v36 * v33, v34);
        v37 = *v111;
        v38 = v113;
        v39 = v34;
        v40 = v114;
        (*v111)(v113, v104, v114);
        v41 = static TrainingLoadDataType.== infix(_:_:)();
        v42 = *v110;
        (*v110)(v38, v40);
        if (v41 & 1) != 0 || (v43 = v113, v44 = v114, v37(v113, v103, v114), v45 = static TrainingLoadDataType.== infix(_:_:)(), v42(v43, v44), (v45))
        {
          outlined init with take of TrainingLoadViewModel(v39, v112);
          v55 = v18;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v119 = v18;
          v34 = v39;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1);
            v55 = v119;
          }

          v31 = v105;
          v48 = v55[2];
          v47 = v55[3];
          if (v48 >= v47 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1);
            v55 = v119;
          }

          v55[2] = v48 + 1;
          outlined init with take of TrainingLoadViewModel(v112, v55 + v35 + v48 * v36);
        }

        else
        {
          outlined destroy of TrainingLoadViewModel(v39);
          v55 = v18;
          v34 = v39;
          v31 = v105;
        }

        ++v33;
        v5 = v107;
        if (v106 == v33)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      v55 = MEMORY[0x277D84F90];
LABEL_20:

      SampleDaySummary = TrainingLoadSampleDaySummaryCollection.daySummaries.getter();
      SampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21HKWorkoutActivityTypeV_Say13HealthBalance28TrainingLoadSampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n(SampleDaySummary);
      v106 = 0;

      v67 = SampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n + 8;
      v66 = SampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n[8];
      v112 = SampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n;
      v68 = 1 << *(SampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n + 32);
      v69 = -1;
      if (v68 < 64)
      {
        v69 = ~(-1 << v68);
      }

      v18 = v69 & v66;
      v33 = v93;
      v111 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
      swift_beginAccess();
      v70 = 0;
      v71 = (v68 + 63) >> 6;
      v110 = (v95 + 104);
      v108 = (v5 + 16);
      if (v18)
      {
        goto LABEL_27;
      }

      while (1)
      {
        v72 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          break;
        }

        if (v72 >= v71)
        {

          v18 = v106;
          goto LABEL_34;
        }

        v18 = v67[v72];
        ++v70;
        if (v18)
        {
          v70 = v72;
          do
          {
LABEL_27:
            v73 = (v70 << 9) | (8 * __clz(__rbit64(v18)));
            v5 = v113;
            v74 = *(v112[7] + v73);
            *v113 = *(v112[6] + v73);
            (*v110)(v5, v98, v114);
            swift_getKeyPath();
            v118[0] = v33;

            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v75 = v99;
            (*v108)(v99, v111 + v33, v100);
            v76 = v101;
            TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)(v5, v75, v74, v101);
            outlined init with copy of TrainingLoadViewModel(v76, v102);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
            }

            v78 = v55[2];
            v77 = v55[3];
            if (v78 >= v77 >> 1)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v55);
            }

            v18 &= v18 - 1;
            outlined destroy of TrainingLoadViewModel(v101);
            v55[2] = v78 + 1;
            outlined init with take of TrainingLoadViewModel(v102, v55 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v78);
          }

          while (v18);
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v18 + 8))(v24, DataType);
    swift_getKeyPath();
    v107 = v5;
    v112 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
    v120 = v3;
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
    v49 = a2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v50 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
    v51 = swift_beginAccess();
    v52 = *(v3 + v50);
    MEMORY[0x28223BE20](v51);
    *(&v92 - 2) = v49;

    v18 = 0;
    specialized _ArrayProtocol.filter(_:)(partial apply for closure #3 in TrainingLoadViewModelProvider.update(for:dataType:), (&v92 - 4), v52);
    v53 = DataType;
    v55 = v54;
    (v25)(v20, v49, v53);
    swift_getKeyPath();
    v119 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v56 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
    swift_beginAccess();
    v57 = v3 + v56;
    v58 = v99;
    (*(v107 + 16))(v99, v57, v100);
    v59 = TrainingLoadSampleDaySummaryCollection.daySummaries.getter();
    v60 = v111;
    TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)(v20, v58, v59, v111);
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v33 = v3;
    v5 = v60;
    if (v61)
    {
      goto LABEL_16;
    }
  }

  v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
LABEL_16:
  v63 = v55[2];
  v62 = v55[3];
  if (v63 >= v62 >> 1)
  {
    v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v62 > 1), v63 + 1, 1, v55);
  }

  v55[2] = v63 + 1;
  outlined init with take of TrainingLoadViewModel(v5, v55 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v63);
LABEL_34:
  v118[0] = v55;

  specialized MutableCollection<>.sort(by:)(v118);
  if (v18)
  {

    __break(1u);
  }

  else
  {

    v79 = v118[0];
    swift_beginAccess();

    ViewModelV_Tt1g5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ9WorkoutUI21TrainingLoadViewModelV_Tt1g5(v80, v79);

    if (ViewModelV_Tt1g5)
    {
      v82.n128_f64[0] = TrainingLoadViewModelProvider._viewModels.setter(v79);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v92 - 2) = v33;
      *(&v92 - 1) = v79;
      v117 = v33;
      lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v85 = v113;
    v84 = v114;
    v86 = v95;
    (*(v95 + 104))(v113, *MEMORY[0x277D0FEE8], v114, v82);
    v87 = static TrainingLoadDataType.== infix(_:_:)();
    (*(v86 + 8))(v85, v84);
    if (v87)
    {
      v88 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isLoadingWorkoutViewModelForTheFirstTime;
      swift_beginAccess();
      if (*(v33 + v88))
      {
        v89 = swift_getKeyPath();
        MEMORY[0x28223BE20](v89);
        *(&v92 - 2) = v33;
        *(&v92 - 8) = 0;
        v116 = v33;
        lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(v33 + v88) = 0;
        TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(&unk_20CB82938, &OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isLoadingWorkoutViewModelForTheFirstTime, "[%{public}s] isLoadingWorkoutViewModelForTheFirstTime: %{BOOL}d");
      }

      v90 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isFetchingDataForNewDateRange;
      swift_beginAccess();
      if (*(v33 + v90))
      {
        v91 = swift_getKeyPath();
        MEMORY[0x28223BE20](v91);
        *(&v92 - 2) = v33;
        *(&v92 - 8) = 0;
        v115 = v33;
        lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {
        *(v33 + v90) = 0;
        TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(&unk_20CB82910, &OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isFetchingDataForNewDateRange, "[%{public}s] isFetchingDataForNewDateRange: %{BOOL}d");
      }
    }
  }
}

BOOL closure #3 in TrainingLoadViewModelProvider.update(for:dataType:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TrainingLoadDataType();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadDataType and conformance TrainingLoadDataType, MEMORY[0x277D0FEF0], MEMORY[0x277D0FF00]);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

BOOL closure #4 in TrainingLoadViewModelProvider.update(for:dataType:)(_BYTE *a1, uint64_t a2)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v5 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v34 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - v8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = *MEMORY[0x277D0FEE8];
  v14 = v5[13];
  v14(&v32 - v11, v13, DataType, v10);
  v37 = a1;
  v15 = static TrainingLoadDataType.== infix(_:_:)();
  v36 = v5;
  v16 = v5[1];
  v16(v12, DataType);
  if (v15)
  {
    return 1;
  }

  (v14)(v12, v13, DataType);
  v18 = static TrainingLoadDataType.== infix(_:_:)();
  v16(v12, DataType);
  if (v18)
  {
    return 0;
  }

  v33 = a2;
  v19 = *MEMORY[0x277D0FEE0];
  (v14)(v12, v19, DataType);
  v20 = static TrainingLoadDataType.== infix(_:_:)();
  v16(v12, DataType);
  if (v20)
  {
    return 0;
  }

  (v14)(v12, v19, DataType);
  v21 = v33;
  v22 = static TrainingLoadDataType.== infix(_:_:)();
  v16(v12, DataType);
  if (v22)
  {
    return 1;
  }

  v23 = *(type metadata accessor for TrainingLoadViewModel(0) + 36);
  v24 = *&v37[v23];
  if (v37[v23 + 8])
  {
    v24 = 0.0;
  }

  v25 = v21 + v23;
  if (*(v25 + 8) == 1)
  {
    v27 = v35;
    v26 = v36;
    if (v24 <= 0.0)
    {
      if (v24 >= 0.0)
      {
        goto LABEL_15;
      }

      return 0;
    }

    return 1;
  }

  v27 = v35;
  v26 = v36;
  if (*v25 < v24)
  {
    return 1;
  }

  if (v24 < *v25)
  {
    return 0;
  }

LABEL_15:
  v28 = v37;
  v37 = v26[2];
  (v37)(v27, v28, DataType);
  v29 = v26[11];
  v30 = v29(v27, DataType);
  if (v30 != *MEMORY[0x277D0FED8] || (v31 = v30, v36 = v26[12], (v36)(v27, DataType), v35 = *v27, v27 = v34, (v37)(v34, v33, DataType), v29(v27, DataType) != v31))
  {
    v16(v27, DataType);
    return 1;
  }

  (v36)(v27, DataType);
  return v35 < *v27;
}

uint64_t TrainingLoadViewModelProvider.unitTest_updatedViewModels.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);

  return v1;
}

double key path getter for TrainingLoadViewModelProvider.unitTest_updatedViewModels : TrainingLoadViewModelProvider@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
  v4 = *(v3 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed [TrainingLoadViewModel]) -> ();
  a2[1] = v6;

  return result;
}

double key path setter for TrainingLoadViewModelProvider.unitTest_updatedViewModels : TrainingLoadViewModelProvider(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t TrainingLoadViewModelProvider.deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange;
  v2 = type metadata accessor for GregorianDayRange();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(*(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeAllDayLoadSummaryCollectionSequence), *(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeAllDayLoadSummaryCollectionSequence + 8));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(*(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadSummaryCollectionSequence), *(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadSummaryCollectionSequence + 8));
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(*(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadByActivityTypeSummaryCollectionSequence), *(v0 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadByActivityTypeSummaryCollectionSequence + 8));

  v3 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TrainingLoadViewModelProvider.__deallocating_deinit()
{
  TrainingLoadViewModelProvider.deinit();

  return swift_deallocClassInstance();
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v170 = a1;
  DataType = type metadata accessor for TrainingLoadDataType();
  v6 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v177 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v185 = &v164 - v9;
  MEMORY[0x28223BE20](v10);
  v165 = (&v164 - v11);
  MEMORY[0x28223BE20](v12);
  v166 = (&v164 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v164 - v15;
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v182 = *(ViewModel - 8);
  MEMORY[0x28223BE20](ViewModel);
  v173 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v194 = &v164 - v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v164 - v21;
  MEMORY[0x28223BE20](v23);
  v202 = &v164 - v24;
  MEMORY[0x28223BE20](v25);
  v189 = &v164 - v26;
  MEMORY[0x28223BE20](v27);
  v191 = &v164 - v28;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v187 = a3;
  v33 = *(a3 + 8);
  if (v33 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_140:
    v36 = *v170;
    if (!*v170)
    {
      goto LABEL_180;
    }

    a3 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v190;
    if (isUniquelyReferenced_nonNull_native)
    {
      v159 = a3;
      goto LABEL_143;
    }

LABEL_174:
    v159 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
LABEL_143:
    v204 = v159;
    a3 = *(v159 + 2);
    if (a3 >= 2)
    {
      while (*v187)
      {
        v160 = *&v159[16 * a3];
        v161 = v159;
        v162 = *&v159[16 * a3 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v187 + *(v182 + 72) * v160), (*v187 + *(v182 + 72) * *&v159[16 * a3 + 16]), (*v187 + *(v182 + 72) * v162), v36);
        if (v34)
        {
          goto LABEL_151;
        }

        if (v162 < v160)
        {
          goto LABEL_167;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v161 = specialized _ArrayBuffer._consumeAndCreateNew()(v161);
        }

        if (a3 - 2 >= *(v161 + 2))
        {
          goto LABEL_168;
        }

        v163 = &v161[16 * a3];
        *v163 = v160;
        *(v163 + 1) = v162;
        v204 = v161;
        specialized Array.remove(at:)(a3 - 1);
        v159 = v204;
        a3 = *(v204 + 2);
        if (a3 <= 1)
        {
          goto LABEL_151;
        }
      }

      goto LABEL_178;
    }

    goto LABEL_151;
  }

  v167 = &v164 - v31;
  v168 = v32;
  v34 = *MEMORY[0x277D0FEE8];
  v199 = (v6 + 104);
  v200 = (v6 + 8);
  v195 = *MEMORY[0x277D0FEE0];
  v186 = (v6 + 16);
  v184 = (v6 + 88);
  v183 = *MEMORY[0x277D0FED8];
  v35 = (v6 + 96);
  v36 = 0;
  v176 = v35;
  v37 = MEMORY[0x277D84F90];
  v169 = a4;
  v196 = v22;
  v198 = v34;
  while (1)
  {
    v174 = v37;
    v171 = v36;
    if ((v36 + 1) >= v33)
    {
      v33 = v36 + 1;
      goto LABEL_46;
    }

    v38 = *v187;
    v39 = *(v182 + 72);
    v201 = *v187 + v39 * (v36 + 1);
    v40 = v167;
    outlined init with copy of TrainingLoadViewModel(v201, v167);
    a3 = v168;
    outlined init with copy of TrainingLoadViewModel(v38 + v39 * v36, v168);
    v41 = v190;
    LODWORD(v180) = closure #4 in TrainingLoadViewModelProvider.update(for:dataType:)(v40, a3);
    v190 = v41;
    if (v41)
    {
      outlined destroy of TrainingLoadViewModel(a3);
      outlined destroy of TrainingLoadViewModel(v40);
LABEL_151:

      return;
    }

    outlined destroy of TrainingLoadViewModel(a3);
    outlined destroy of TrainingLoadViewModel(v40);
    v42 = v36 + 2;
    v43 = v38 + v39 * (v36 + 2);
    v44 = v39;
    v181 = v39;
    v36 = v201;
    v188 = v33;
    while (v33 != v42)
    {
      v192 = v43;
      v193 = v42;
      outlined init with copy of TrainingLoadViewModel(v43, v191);
      v201 = v36;
      v46 = v200;
      outlined init with copy of TrainingLoadViewModel(v36, v189);
      a3 = v199;
      v47 = *v199;
      v48 = v34;
      v49 = v34;
      v50 = DataType;
      (*v199)(v16, v48, DataType);
      v51 = static TrainingLoadDataType.== infix(_:_:)();
      v52 = *v46;
      (*v46)(v16, v50);
      if (v51)
      {
        v45 = 1;
        v22 = v196;
        v34 = v49;
      }

      else
      {
        v53 = DataType;
        v47(v16, v49, DataType);
        v54 = static TrainingLoadDataType.== infix(_:_:)();
        v52(v16, v53);
        if (v54 & 1) != 0 || (v55 = v195, v56 = DataType, v47(v16, v195, DataType), v57 = static TrainingLoadDataType.== infix(_:_:)(), v52(v16, v56), v58 = v186, (v57))
        {
          v45 = 0;
        }

        else
        {
          v59 = DataType;
          v47(v16, v55, DataType);
          v60 = v189;
          v61 = static TrainingLoadDataType.== infix(_:_:)();
          v52(v16, v59);
          if (v61)
          {
            v45 = 1;
          }

          else
          {
            v62 = *(ViewModel + 36);
            v63 = *(v191 + v62);
            if (*(v191 + v62 + 8))
            {
              v63 = 0.0;
            }

            v64 = v60 + v62;
            if (*(v64 + 8))
            {
              v22 = v196;
              v34 = v198;
              if (v63 > 0.0)
              {
                goto LABEL_26;
              }

              if (v63 < 0.0)
              {
                goto LABEL_28;
              }
            }

            else
            {
              v22 = v196;
              v34 = v198;
              if (*v64 < v63)
              {
LABEL_26:
                v45 = 1;
                goto LABEL_8;
              }

              if (v63 < *v64)
              {
LABEL_28:
                v45 = 0;
                goto LABEL_8;
              }
            }

            v65 = *v58;
            v66 = v166;
            v67 = DataType;
            (*v58)(v166, v191, DataType);
            v68 = *v184;
            v69 = (*v184)(v66, v67);
            a3 = v183;
            if (v69 == v183 && (v70 = DataType, v179 = *v176, v179(v66, DataType), v178 = *v66, v66 = v165, v65(v165, v189, v70), v68(v66, v70) == a3))
            {
              v179(v66, DataType);
              v45 = v178 < *v66;
            }

            else
            {
              v52(v66, DataType);
              v45 = 1;
            }
          }
        }

        v22 = v196;
        v34 = v198;
      }

LABEL_8:
      v33 = v188;
      outlined destroy of TrainingLoadViewModel(v189);
      outlined destroy of TrainingLoadViewModel(v191);
      v42 = v193 + 1;
      v44 = v181;
      v43 = v192 + v181;
      v36 = v201 + v181;
      if ((v180 ^ v45))
      {
        v33 = v193;
        break;
      }
    }

    a4 = v169;
    if ((v180 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (v33 < v171)
    {
      goto LABEL_173;
    }

    if (v171 < v33)
    {
      a3 = v44 * (v33 - 1);
      v71 = v33 * v44;
      v188 = v33;
      v72 = v171;
      v73 = v171 * v44;
      do
      {
        if (v72 != --v33)
        {
          v74 = *v187;
          if (!*v187)
          {
            goto LABEL_177;
          }

          v36 = v74 + v73;
          outlined init with take of TrainingLoadViewModel(v74 + v73, v173);
          if (v73 < a3 || v36 >= v74 + v71)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v73 != a3)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of TrainingLoadViewModel(v173, v74 + a3);
          v44 = v181;
        }

        ++v72;
        a3 -= v44;
        v71 -= v44;
        v73 += v44;
      }

      while (v72 < v33);
      a4 = v169;
      v22 = v196;
      v33 = v188;
    }

LABEL_46:
    v75 = v187[1];
    if (v33 < v75)
    {
      if (__OFSUB__(v33, v171))
      {
        goto LABEL_170;
      }

      if (v33 - v171 < a4)
      {
        break;
      }
    }

    v36 = v33;
LABEL_57:
    v77 = v171;
LABEL_58:
    if (v36 < v77)
    {
      goto LABEL_169;
    }

    v78 = swift_isUniquelyReferenced_nonNull_native();
    v178 = v36;
    if (v78)
    {
      v37 = v174;
    }

    else
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v174 + 2) + 1, 1, v174);
    }

    a3 = *(v37 + 2);
    v79 = *(v37 + 3);
    v36 = a3 + 1;
    if (a3 >= v79 >> 1)
    {
      v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), a3 + 1, 1, v37);
    }

    *(v37 + 2) = v36;
    v80 = &v37[16 * a3];
    v81 = v178;
    *(v80 + 4) = v77;
    *(v80 + 5) = v81;
    if (!*v170)
    {
      goto LABEL_179;
    }

    if (a3)
    {
      v82 = *v170;
      while (1)
      {
        v83 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v84 = *(v37 + 4);
          v85 = *(v37 + 5);
          v94 = __OFSUB__(v85, v84);
          v86 = v85 - v84;
          v87 = v94;
LABEL_79:
          if (v87)
          {
            goto LABEL_158;
          }

          v100 = &v37[16 * v36];
          v102 = *v100;
          v101 = *(v100 + 1);
          v103 = __OFSUB__(v101, v102);
          v104 = v101 - v102;
          v105 = v103;
          if (v103)
          {
            goto LABEL_161;
          }

          v106 = &v37[16 * v83 + 32];
          v108 = *v106;
          v107 = *(v106 + 1);
          v94 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (v94)
          {
            goto LABEL_164;
          }

          if (__OFADD__(v104, v109))
          {
            goto LABEL_165;
          }

          if (v104 + v109 >= v86)
          {
            if (v86 < v109)
            {
              v83 = v36 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v110 = &v37[16 * v36];
        v112 = *v110;
        v111 = *(v110 + 1);
        v94 = __OFSUB__(v111, v112);
        v104 = v111 - v112;
        v105 = v94;
LABEL_93:
        if (v105)
        {
          goto LABEL_160;
        }

        v113 = &v37[16 * v83];
        v115 = *(v113 + 4);
        v114 = *(v113 + 5);
        v94 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v94)
        {
          goto LABEL_163;
        }

        if (v116 < v104)
        {
          goto LABEL_3;
        }

LABEL_100:
        a3 = v83 - 1;
        if (v83 - 1 >= v36)
        {
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        if (!*v187)
        {
          goto LABEL_176;
        }

        v121 = v37;
        v36 = *&v37[16 * a3 + 32];
        v122 = *&v37[16 * v83 + 40];
        v123 = v190;
        specialized _merge<A>(low:mid:high:buffer:by:)((*v187 + *(v182 + 72) * v36), (*v187 + *(v182 + 72) * *&v37[16 * v83 + 32]), (*v187 + *(v182 + 72) * v122), v82);
        v190 = v123;
        if (v123)
        {
          goto LABEL_151;
        }

        if (v122 < v36)
        {
          goto LABEL_154;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = specialized _ArrayBuffer._consumeAndCreateNew()(v121);
        }

        if (a3 >= *(v121 + 2))
        {
          goto LABEL_155;
        }

        v124 = &v121[16 * a3];
        *(v124 + 4) = v36;
        *(v124 + 5) = v122;
        v204 = v121;
        a3 = &v204;
        specialized Array.remove(at:)(v83);
        v37 = v204;
        v36 = *(v204 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v88 = &v37[16 * v36 + 32];
      v89 = *(v88 - 64);
      v90 = *(v88 - 56);
      v94 = __OFSUB__(v90, v89);
      v91 = v90 - v89;
      if (v94)
      {
        goto LABEL_156;
      }

      v93 = *(v88 - 48);
      v92 = *(v88 - 40);
      v94 = __OFSUB__(v92, v93);
      v86 = v92 - v93;
      v87 = v94;
      if (v94)
      {
        goto LABEL_157;
      }

      v95 = &v37[16 * v36];
      v97 = *v95;
      v96 = *(v95 + 1);
      v94 = __OFSUB__(v96, v97);
      v98 = v96 - v97;
      if (v94)
      {
        goto LABEL_159;
      }

      v94 = __OFADD__(v86, v98);
      v99 = v86 + v98;
      if (v94)
      {
        goto LABEL_162;
      }

      if (v99 >= v91)
      {
        v117 = &v37[16 * v83 + 32];
        v119 = *v117;
        v118 = *(v117 + 1);
        v94 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v94)
        {
          goto LABEL_166;
        }

        if (v86 < v120)
        {
          v83 = v36 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v33 = v187[1];
    v36 = v178;
    a4 = v169;
    if (v178 >= v33)
    {
      goto LABEL_140;
    }
  }

  v76 = v171 + a4;
  if (__OFADD__(v171, a4))
  {
    goto LABEL_171;
  }

  v77 = v171;
  if (v76 >= v75)
  {
    v36 = v187[1];
  }

  else
  {
    v36 = v76;
  }

  if (v36 < v171)
  {
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
    goto LABEL_174;
  }

  if (v33 == v36)
  {
    v36 = v33;
    goto LABEL_58;
  }

  v125 = *v187;
  v126 = *(v182 + 72);
  v127 = *v187 + v126 * (v33 - 1);
  v192 = -v126;
  v193 = v125;
  v128 = v171 - v33;
  v172 = v126;
  v129 = (v125 + v33 * v126);
  v178 = v36;
  while (2)
  {
    v188 = v33;
    v179 = v129;
    v130 = v129;
    v180 = v128;
    a3 = v128;
    v181 = v127;
    v131 = v127;
LABEL_114:
    v201 = a3;
    outlined init with copy of TrainingLoadViewModel(v130, v202);
    outlined init with copy of TrainingLoadViewModel(v131, v22);
    v132 = *v199;
    v133 = DataType;
    (*v199)(v16, v34, DataType);
    v134 = static TrainingLoadDataType.== infix(_:_:)();
    v135 = *v200;
    (*v200)(v16, v133);
    if (v134)
    {
      goto LABEL_131;
    }

    a3 = DataType;
    v132(v16, v198, DataType);
    v136 = static TrainingLoadDataType.== infix(_:_:)();
    v135(v16, a3);
    if (v136 & 1) != 0 || (a3 = DataType, v132(v16, v195, DataType), v137 = static TrainingLoadDataType.== infix(_:_:)(), v135(v16, a3), (v137))
    {
LABEL_110:
      v22 = v196;
      outlined destroy of TrainingLoadViewModel(v196);
      outlined destroy of TrainingLoadViewModel(v202);
LABEL_111:
      v34 = v198;
LABEL_112:
      v33 = v188 + 1;
      v127 = v181 + v172;
      v128 = v180 - 1;
      v129 = v179 + v172;
      v36 = v178;
      if (v188 + 1 == v178)
      {
        goto LABEL_57;
      }

      continue;
    }

    break;
  }

  a3 = DataType;
  v132(v16, v195, DataType);
  v22 = v196;
  v138 = static TrainingLoadDataType.== infix(_:_:)();
  v135(v16, a3);
  if (v138)
  {
    goto LABEL_131;
  }

  v139 = *(ViewModel + 36);
  v140 = *(v202 + v139);
  if (*(v202 + v139 + 8))
  {
    v140 = 0.0;
  }

  v141 = &v22[v139];
  if (v141[8])
  {
    v22 = v196;
    if (v140 <= 0.0)
    {
      if (v140 < 0.0)
      {
        goto LABEL_110;
      }

      goto LABEL_126;
    }

LABEL_131:
    outlined destroy of TrainingLoadViewModel(v22);
    outlined destroy of TrainingLoadViewModel(v202);
  }

  else
  {
    v22 = v196;
    if (*v141 < v140)
    {
      goto LABEL_131;
    }

    if (v140 < *v141)
    {
      goto LABEL_110;
    }

LABEL_126:
    v142 = v135;
    v143 = v185;
    v144 = *v186;
    v145 = DataType;
    (*v186)(v185, v202, DataType);
    v146 = *v184;
    v147 = (*v184)(v143, v145);
    if (v147 != v183 || (v148 = v185, a3 = DataType, v149 = *v176, (*v176)(v185, DataType), v175 = *v148, v150 = v144, v151 = v177, v150(v177, v196, a3), v152 = v146(v151, a3), v143 = v151, v152 != v183))
    {
      v142(v143, DataType);
      v22 = v196;
      goto LABEL_131;
    }

    v153 = v177;
    v149(v177, DataType);
    v154 = *v153;
    v22 = v196;
    outlined destroy of TrainingLoadViewModel(v196);
    outlined destroy of TrainingLoadViewModel(v202);
    if (v175 >= v154)
    {
      goto LABEL_111;
    }
  }

  v34 = v198;
  v155 = v201;
  if (v193)
  {
    v156 = v194;
    outlined init with take of TrainingLoadViewModel(v130, v194);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of TrainingLoadViewModel(v156, v131);
    v131 += v192;
    v130 += v192;
    v157 = __CFADD__(v155, 1);
    a3 = v155 + 1;
    if (v157)
    {
      goto LABEL_112;
    }

    goto LABEL_114;
  }

  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v9 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v107 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v108 = &v98 - v12;
  MEMORY[0x28223BE20](v13);
  v110 = &v98 - v14;
  MEMORY[0x28223BE20](v15);
  v111 = &v98 - v16;
  MEMORY[0x28223BE20](v17);
  v122 = &v98 - v18;
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  MEMORY[0x28223BE20](ViewModel);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v121 = &v98 - v22;
  MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  v112 = &v98 - v26;
  v28 = *(v27 + 72);
  if (!v28)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_104;
  }

  v29 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v28 == -1)
  {
    goto LABEL_105;
  }

  v30 = (a2 - a1) / v28;
  v128 = a4;
  v129 = a1;
  v123 = DataType;
  if (v30 >= v29 / v28)
  {
    v33 = v29 / v28 * v28;
    if (a4 < a2 || &a2[v33] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v33 < 1)
    {
      v67 = &a4[v33];
      goto LABEL_101;
    }

    v63 = -v28;
    v64 = v9;
    v65 = *MEMORY[0x277D0FEE8];
    v111 = (v64 + 104);
    v113 = (v64 + 8);
    LODWORD(v109) = *MEMORY[0x277D0FEE0];
    v105 = (v64 + 16);
    v104 = (v64 + 88);
    v103 = *MEMORY[0x277D0FED8];
    v66 = &a4[v33];
    v115 = v20;
    v67 = &a4[v33];
    LODWORD(v112) = v65;
    v124 = a1;
    v125 = a4;
    v119 = v63;
    v102 = (v64 + 96);
    while (1)
    {
      v106 = v67;
      v68 = a2;
      a2 += v63;
      v126 = a2;
      v114 = v68;
      while (1)
      {
        v118 = a3;
        if (v68 <= a1)
        {
          v129 = v68;
          v127 = v106;
          goto LABEL_102;
        }

        v110 = v67;
        v116 = v66 + v63;
        v117 = v66;
        outlined init with copy of TrainingLoadViewModel(v66 + v63, v121);
        outlined init with copy of TrainingLoadViewModel(a2, v20);
        v70 = *v111;
        v71 = v122;
        v72 = v123;
        (*v111)(v122, v65, v123);
        v73 = static TrainingLoadDataType.== infix(_:_:)();
        v74 = *v113;
        (*v113)(v71, v72);
        if (v73)
        {
          v75 = 1;
LABEL_66:
          a2 = v126;
          v77 = v119;
          a1 = v124;
          goto LABEL_72;
        }

        v70(v71, v65, v72);
        v76 = static TrainingLoadDataType.== infix(_:_:)();
        v74(v71, v72);
        if (v76)
        {
          v75 = 0;
          goto LABEL_66;
        }

        v78 = v109;
        v70(v71, v109, v72);
        v79 = static TrainingLoadDataType.== infix(_:_:)();
        v74(v71, v72);
        a1 = v124;
        if (v79)
        {
          v75 = 0;
          goto LABEL_71;
        }

        v70(v71, v78, v72);
        v80 = v115;
        v81 = static TrainingLoadDataType.== infix(_:_:)();
        v74(v71, v72);
        if (v81)
        {
          goto LABEL_70;
        }

        v84 = *(ViewModel + 36);
        v85 = *(v121 + v84);
        if (*(v121 + v84 + 8))
        {
          v85 = 0.0;
        }

        v86 = v80 + v84;
        v77 = v119;
        v87 = v104;
        v88 = v103;
        if (*(v86 + 8))
        {
          a2 = v126;
          if (v85 > 0.0)
          {
            goto LABEL_86;
          }

          if (v85 >= 0.0)
          {
            goto LABEL_82;
          }
        }

        else
        {
          a2 = v126;
          if (*v86 < v85)
          {
LABEL_86:
            v75 = 1;
            goto LABEL_72;
          }

          if (v85 >= *v86)
          {
LABEL_82:
            v89 = *v105;
            v90 = v108;
            v91 = v123;
            (*v105)(v108, v121, v123);
            v92 = *v87;
            if ((*v87)(v90, v91) == v88)
            {
              v101 = v89;
              v100 = *v102;
              v100(v90, v91);
              v99 = *v90;
              v93 = v107;
              v101(v107, v115, v91);
              if (v92(v93, v91) == v88)
              {
                v100(v93, v91);
                v75 = v99 < *v93;
                goto LABEL_71;
              }

              v94 = v93;
              v95 = v91;
            }

            else
            {
              v94 = v90;
              v95 = v91;
            }

            v74(v94, v95);
LABEL_70:
            v75 = 1;
LABEL_71:
            a2 = v126;
            v77 = v119;
            goto LABEL_72;
          }
        }

        v75 = 0;
LABEL_72:
        v82 = v116;
        v66 = v117;
        v83 = v118;
        a3 = &v118[v77];
        v20 = v115;
        outlined destroy of TrainingLoadViewModel(v115);
        outlined destroy of TrainingLoadViewModel(v121);
        if (v75)
        {
          break;
        }

        v67 = v82;
        if (v83 < v66 || a3 >= v66)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v83 != v66)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v66 = v82;
        v69 = v82 > v125;
        v63 = v119;
        v65 = v112;
        v68 = v114;
        if (!v69)
        {
          a2 = v114;
          goto LABEL_101;
        }
      }

      if (v83 < v114 || a3 >= v114)
      {
        swift_arrayInitWithTakeFrontToBack();
        v97 = v125;
        v67 = v110;
      }

      else
      {
        v96 = v83 == v114;
        v97 = v125;
        v67 = v110;
        if (!v96)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v63 = v119;
      v65 = v112;
      if (v66 <= v97)
      {
LABEL_101:
        v129 = a2;
        v127 = v67;
        goto LABEL_102;
      }
    }
  }

  v31 = v30 * v28;
  v121 = v25;
  if (a4 < a1 || &a1[v31] <= a4)
  {
    swift_arrayInitWithTakeFrontToBack();
    v32 = v112;
  }

  else
  {
    v32 = v112;
    if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  v118 = &a4[v31];
  v127 = &a4[v31];
  if (v31 >= 1 && a2 < a3)
  {
    LODWORD(v119) = *MEMORY[0x277D0FEE8];
    v35 = (v9 + 104);
    v117 = (v9 + 8);
    LODWORD(v113) = *MEMORY[0x277D0FEE0];
    v109 = (v9 + 16);
    v108 = (v9 + 88);
    LODWORD(v107) = *MEMORY[0x277D0FED8];
    v106 = (v9 + 96);
    v114 = (v9 + 104);
    v115 = v28;
    v116 = a3;
    while (1)
    {
      v124 = a1;
      v126 = a2;
      outlined init with copy of TrainingLoadViewModel(a2, v32);
      v125 = a4;
      v36 = v32;
      v37 = v121;
      outlined init with copy of TrainingLoadViewModel(a4, v121);
      v38 = *v35;
      v39 = v122;
      v40 = v123;
      (*v35)(v122, v119, v123);
      v41 = static TrainingLoadDataType.== infix(_:_:)();
      v42 = *v117;
      (*v117)(v39, v40);
      if (v41)
      {
        goto LABEL_22;
      }

      v38(v39, v119, v40);
      v46 = static TrainingLoadDataType.== infix(_:_:)();
      v42(v39, v40);
      v32 = v36;
      if (v46 & 1) != 0 || (v38(v39, v113, v40), v47 = static TrainingLoadDataType.== infix(_:_:)(), v42(v39, v40), (v47))
      {
LABEL_29:
        outlined destroy of TrainingLoadViewModel(v121);
        outlined destroy of TrainingLoadViewModel(v32);
LABEL_30:
        v44 = v124;
        v43 = v115;
        a4 = &v115[v125];
        a2 = v126;
        if (v124 < v125 || v124 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v45 = v116;
        }

        else
        {
          v45 = v116;
          if (v124 != v125)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v128 = a4;
        goto LABEL_37;
      }

      v38(v39, v113, v40);
      v37 = v121;
      v48 = static TrainingLoadDataType.== infix(_:_:)();
      v42(v39, v40);
      if (v48)
      {
        goto LABEL_22;
      }

      v49 = *(ViewModel + 36);
      v50 = *(v36 + v49);
      if (*(v36 + v49 + 8))
      {
        v50 = 0.0;
      }

      v51 = v37 + v49;
      if (*(v51 + 8))
      {
        v52 = v123;
        v37 = v121;
        v36 = v112;
        if (v50 > 0.0)
        {
          goto LABEL_22;
        }

        v32 = v112;
        if (v50 < 0.0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v52 = v123;
        v37 = v121;
        v36 = v112;
        if (*v51 < v50)
        {
          goto LABEL_22;
        }

        v32 = v112;
        if (v50 < *v51)
        {
          goto LABEL_29;
        }
      }

      v53 = *v109;
      v54 = v111;
      (*v109)(v111, v32, v52);
      v55 = *v108;
      v56 = (*v108)(v54, v52);
      if (v56 != v107)
      {
        break;
      }

      v57 = *v106;
      v58 = v111;
      (*v106)(v111, v52);
      v59 = *v58;
      v54 = v110;
      v53(v110, v121, v52);
      v60 = v55(v54, v52);
      if (v60 != v107)
      {
        break;
      }

      v61 = v110;
      v57(v110, v52);
      v62 = *v61;
      outlined destroy of TrainingLoadViewModel(v121);
      outlined destroy of TrainingLoadViewModel(v32);
      if (v59 >= v62)
      {
        goto LABEL_30;
      }

LABEL_23:
      a4 = v125;
      v43 = v115;
      a2 = &v115[v126];
      v44 = v124;
      if (v124 < v126 || v124 >= a2)
      {
        swift_arrayInitWithTakeFrontToBack();
        v45 = v116;
      }

      else
      {
        v45 = v116;
        if (v124 != v126)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

LABEL_37:
      a1 = &v44[v43];
      v129 = a1;
      v35 = v114;
      if (a4 >= v118 || a2 >= v45)
      {
        goto LABEL_102;
      }
    }

    v42(v54, v52);
    v36 = v32;
    v37 = v121;
LABEL_22:
    outlined destroy of TrainingLoadViewModel(v37);
    outlined destroy of TrainingLoadViewModel(v36);
    v32 = v36;
    goto LABEL_23;
  }

LABEL_102:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v129, &v128, &v127);
}

uint64_t specialized ClosedRange<>.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DayIndex();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_G_AHtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(a1, &v23 - v12, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
  outlined init with copy of (lower: DayIndex, upper: DayIndex)(a2, &v13[v15], &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMd, &_sSNsSxRzSZ6StrideRpzrlE5IndexOy9HealthKit03DayB0V_GMR);
  v16 = v5[6];
  LODWORD(a1) = v16(v13, 1, v4);
  v17 = v16(&v13[v15], 1, v4);
  v18 = v17;
  if (a1 == 1)
  {
    if (v17 == 1)
    {
      return 0;
    }
  }

  else
  {
    v16 = v5[4];
    v16(v10, v13, v4);
    if (v18 != 1)
    {
LABEL_11:
      v16(v7, &v13[v15], v4);
      lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
      dispatch thunk of Strideable.distance(to:)();
      v22 = v5[1];
      v22(v7, v4);
      v22(v10, v4);
      return v24;
    }

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR) + 36);
    lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
    dispatch thunk of Strideable.distance(to:)();
    v20 = v5[1];
    ++v5;
    v20(v10, v4);
    result = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      return result;
    }

    __break(1u);
  }

  (v5[4])(v10, &v13[v15], v4);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy9HealthKit8DayIndexVGMd, &_sSNy9HealthKit8DayIndexVGMR) + 36);
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type DayIndex and conformance DayIndex, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6C8]);
  v7 = (v23 + v15);
  dispatch thunk of Strideable.distance(to:)();
  v21 = v5[1];
  ++v5;
  v21(v10, v4);
  result = v24 - 1;
  if (__OFSUB__(v24, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSo21HKWorkoutActivityTypeV_Say13HealthBalance28TrainingLoadSampleDaySummaryVGTt1g5014_s9WorkoutUI29ij78ViewModelProviderC6update33_D5277829893C0F285DEBDE28ED765EEDLL3for8dataTypey13g12Balance0cD26klm32CollectionV_AH0cd4DataQ0OtFSo017dE19Q0VAH0cdtuV0VXEfU0_Tf1nc_nTf4g_n(uint64_t a1)
{
  SampleDaySummary = type metadata accessor for TrainingLoadSampleDaySummary();
  v3 = *(SampleDaySummary - 8);
  MEMORY[0x28223BE20](SampleDaySummary);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v43 - v6;
  v7 = MEMORY[0x277D84F98];
  v54 = MEMORY[0x277D84F98];
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v10 = *(v3 + 16);
  v9 = v3 + 16;
  v45 = *(v9 + 64);
  v11 = *(v9 + 56);
  v48 = (v45 + 32) & ~v45;
  v49 = v10;
  v12 = a1 + v48;
  v52 = (v9 + 16);
  v44 = xmmword_20CB5DA70;
  v46 = SampleDaySummary;
  v47 = v9;
  v51 = v11;
  while (1)
  {
    v16 = SampleDaySummary;
    v17 = SampleDaySummary;
    v18 = v9;
    v49(v53, v12, v17);
    SampleDay = TrainingLoadSampleDaySummary.activityType.getter();
    v21 = (v20 & 1) != 0 ? 3000 : SampleDay;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    v24 = v7[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v27 = v22;
    if (v7[3] < v26)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, 1);
      v7 = v54;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v21);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_22;
      }

      v23 = v28;
    }

    if (v27)
    {
      v30 = v7[7];
      v31 = v16;
      v32 = *v52;
      (*v52)(v50, v53, v31);
      v33 = *(v30 + 8 * v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v23) = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
        *(v30 + 8 * v23) = v33;
      }

      v36 = v33[2];
      v35 = v33[3];
      if (v36 >= v35 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v33);
        *(v30 + 8 * v23) = v33;
      }

      v9 = v47;
      v13 = v48;
      v33[2] = v36 + 1;
      v14 = v51;
      v15 = v33 + v13 + v36 * v51;
      SampleDaySummary = v46;
      v32(v15, v50, v46);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13HealthBalance28TrainingLoadSampleDaySummaryVGMd, &_ss23_ContiguousArrayStorageCy13HealthBalance28TrainingLoadSampleDaySummaryVGMR);
      v37 = v48;
      v38 = swift_allocObject();
      *(v38 + 16) = v44;
      (*v52)((v38 + v37), v53, v16);
      v7[(v23 >> 6) + 8] |= 1 << v23;
      *(v7[6] + 8 * v23) = v21;
      *(v7[7] + 8 * v23) = v38;
      v39 = v7[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_21;
      }

      v7[2] = v41;
      v14 = v51;
      v9 = v18;
      SampleDaySummary = v16;
    }

    v12 += v14;
    if (!--v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  type metadata accessor for HKWorkoutActivityType(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized TrainingLoadViewModelProvider.init(dayRange:makeAllDayLoadSummaryCollectionSequence:makeWorkoutLoadSummaryCollectionSequence:makeWorkoutLoadByActivityTypeSummaryCollectionSequence:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v48 = a6;
  v49 = a7;
  v53 = a1;
  v13 = type metadata accessor for GregorianDayRange();
  v52 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v16 = *(DataType - 8);
  MEMORY[0x28223BE20](DataType);
  v45 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  v50 = *(ViewModel - 8);
  MEMORY[0x28223BE20](ViewModel - 8);
  v44 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TrainingLoadViewModelProvider.TaskHolder();
  swift_allocObject();
  *(v7 + 16) = TrainingLoadViewModelProvider.TaskHolder.init()();
  *(v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels) = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isFetchingDataForNewDateRange) = 0;
  *(v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__isLoadingWorkoutViewModelForTheFirstTime) = 1;
  v20 = (v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
  *v20 = closure #1 in variable initialization expression of TrainingLoadViewModelProvider.unitTest_updatedViewModels;
  v20[1] = 0;
  ObservationRegistrar.init()();
  v51 = v14;
  v43 = *(v14 + 16);
  v43(v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__dayRange, v53, v13);
  v21 = (v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeAllDayLoadSummaryCollectionSequence);
  v22 = a2;
  *v21 = a2;
  v21[1] = a3;
  v23 = a3;
  v24 = (v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadSummaryCollectionSequence);
  v25 = a4;
  *v24 = a4;
  v24[1] = a5;
  v26 = a5;
  v27 = (v7 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider_makeWorkoutLoadByActivityTypeSummaryCollectionSequence);
  v28 = v48;
  v29 = v49;
  *v27 = v48;
  v27[1] = v29;
  *(v7 + 24) = 0;
  v30 = *(v16 + 104);
  v31 = v45;
  v30(v45, *MEMORY[0x277D0FEE8], DataType);
  v32 = v47;
  v43(v47, v53, v52);
  v33 = v22;
  v34 = v44;
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(v33, v23);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(v25, v26);
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(v28, v29);
  TrainingLoadViewModel.init(dataType:dayRange:chronologicalTrainingLoadDaySummaries:)(v31, v32, MEMORY[0x277D84F90], v34);
  swift_getKeyPath();
  v54 = v7;
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex(&lazy protocol witness table cache variable for type TrainingLoadViewModelProvider and conformance TrainingLoadViewModelProvider, type metadata accessor for TrainingLoadViewModelProvider, &protocol conformance descriptor for TrainingLoadViewModelProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v54 = v7;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v35 = OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__viewModels;
  swift_beginAccess();
  v36 = *(v7 + v35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + v35) = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
    *(v8 + v35) = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
  }

  v36[2] = v39 + 1;
  outlined init with take of TrainingLoadViewModel(v34, v36 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v39);
  *(v8 + v35) = v36;
  swift_endAccess();
  swift_getKeyPath();
  v54 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = *(v8 + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
  swift_getKeyPath();
  v54 = v8;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40(v41);

  v54 = v8;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  (*(v51 + 8))(v53, v52);
  return v8;
}

uint64_t specialized TrainingLoadViewModelProvider.__allocating_init(dayRange:healthStore:options:)(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = type metadata accessor for GregorianDayRange();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v27 = v7;
  v28 = v6;
  v14 = *(v7 + 16);
  v25 = v9;
  v29 = a1;
  v14(v9, a1, v6);
  v15 = 0;
  v16 = 0;
  if ((v10 & 4) != 0)
  {

    v15 = partial apply for closure #1 in TrainingLoadViewModelProvider.init(dayRange:healthStore:options:);
    v16 = v11;
  }

  v26 = v11;
  if (v10)
  {

    v17 = partial apply for closure #2 in TrainingLoadViewModelProvider.init(dayRange:healthStore:options:);
    v18 = v12;
    if ((v10 & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v19 = 0;
    v20 = 0;
    goto LABEL_8;
  }

  v17 = 0;
  v18 = 0;
  if ((v10 & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:

  v19 = partial apply for closure #3 in TrainingLoadViewModelProvider.init(dayRange:healthStore:options:);
  v20 = v13;
LABEL_8:
  type metadata accessor for TrainingLoadViewModelProvider(0);
  swift_allocObject();
  v21 = a2;
  v22 = specialized TrainingLoadViewModelProvider.init(dayRange:makeAllDayLoadSummaryCollectionSequence:makeWorkoutLoadSummaryCollectionSequence:makeWorkoutLoadByActivityTypeSummaryCollectionSequence:)(v25, v15, v16, v17, v18, v19, v20);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(v19, v20);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(v17, v18);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(v15, v16);

  (*(v27 + 8))(v29, v28);
  return v22;
}

uint64_t outlined init with take of TrainingLoadViewModel(uint64_t a1, uint64_t a2)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  (*(*(ViewModel - 8) + 32))(a2, a1, ViewModel);
  return a2;
}

uint64_t partial apply for closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:);

  return closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in TrainingLoadViewModelProvider.startQuery(isFaking:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double outlined consume of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions()
{
  result = lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions;
  if (!lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions;
  if (!lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions;
  if (!lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions;
  if (!lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadViewModelProviderOptions and conformance TrainingLoadViewModelProviderOptions);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadViewModelProviderOptions(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TrainingLoadViewModelProviderOptions(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for TrainingLoadViewModelProvider(uint64_t a1)
{
  result = type metadata accessor for GregorianDayRange();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadViewModelProvider.TaskType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TrainingLoadViewModelProvider.TaskType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type TrainingLoadViewModelProvider.TaskType and conformance TrainingLoadViewModelProvider.TaskType()
{
  result = lazy protocol witness table cache variable for type TrainingLoadViewModelProvider.TaskType and conformance TrainingLoadViewModelProvider.TaskType;
  if (!lazy protocol witness table cache variable for type TrainingLoadViewModelProvider.TaskType and conformance TrainingLoadViewModelProvider.TaskType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrainingLoadViewModelProvider.TaskType and conformance TrainingLoadViewModelProvider.TaskType);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed [TrainingLoadViewModel]) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

void partial apply for closure #1 in TrainingLoadViewModelProvider.unitTest_updatedViewModels.setter()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC9WorkoutUI29TrainingLoadViewModelProvider__unitTest_updatedViewModels);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t outlined init with copy of TrainingLoadViewModel(uint64_t a1, uint64_t a2)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  (*(*(ViewModel - 8) + 16))(a2, a1, ViewModel);
  return a2;
}

uint64_t outlined destroy of TrainingLoadViewModel(uint64_t a1)
{
  ViewModel = type metadata accessor for TrainingLoadViewModel(0);
  (*(*(ViewModel - 8) + 8))(a1, ViewModel);
  return a1;
}

uint64_t outlined init with take of (lower: DayIndex, upper: DayIndex)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_80TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_80TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_94Tm()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 25) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.TaskHolder.add(task:_:)(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 25) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

uint64_t outlined init with copy of (lower: DayIndex, upper: DayIndex)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s9WorkoutUI21TrainingLoadViewModelVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd, &_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:);

  return closure #1 in closure #2 in TrainingLoadViewModelProvider.startWorkoutsByActivityTypeQuery(useFakeData:)(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery()(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd, &_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery();

  return closure #1 in closure #1 in TrainingLoadViewModelProvider.startAllDayQuery()(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t objectdestroy_105Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd, &_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery()(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMd, &_sScsy13HealthBalance38TrainingLoadSampleDaySummaryCollectionVs5Error_pGMR) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery();

  return closure #1 in closure #1 in TrainingLoadViewModelProvider.startWorkoutsQuery()(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

double outlined copy of (@escaping @callee_guaranteed (@in_guaranteed GregorianDayRange) -> (@out AsyncThrowingStream<TrainingLoadSampleDaySummaryCollection, Error>))?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
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

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_2(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t partial apply for closure #1 in TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.setter(uint64_t *a1, uint64_t a2, const char *a3, ...)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *a1;
  swift_beginAccess();
  *(v7 + v9) = v8;
  return TrainingLoadViewModelProvider._isFetchingDataForNewDateRange.didset(a2, a1, a3);
}

uint64_t lazy protocol witness table accessor for type DayIndex and conformance DayIndex(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t closure #1 in TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.setterpartial apply()
{
  return partial apply for closure #1 in TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.setter();
}

{
  return partial apply for closure #1 in TrainingLoadViewModelProvider.isFetchingDataForNewDateRange.setter();
}

double CGFloat.pixelsToPoints()(double a1)
{
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];
  v4 = v3;

  return a1 / v4;
}

uint64_t PrecisionStartStatusView.init(currentActivityType:configuration:remainingMultisportLegCount:useSmallerIcon:workoutStatePublisher:diameter:mirroredHostPublisherMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>)
{
  LODWORD(v9) = a8;
  v49 = a7;
  v47 = a5;
  v48 = a6;
  v46 = a4;
  v44 = a2;
  v45 = a3;
  v43 = a1;
  v11 = type metadata accessor for Logger();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v39[-v19];
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 72) = implicit closure #2 in implicit closure #1 in variable initialization expression of PrecisionStartStatusView._gpsLockProvider;
  *(a9 + 80) = 0;
  *(a9 + 88) = 0;
  LOBYTE(v50) = 0;
  State.init(wrappedValue:)();
  v21 = v53;
  *(a9 + 96) = v52;
  *(a9 + 104) = v21;
  LOBYTE(v50) = 0;
  State.init(wrappedValue:)();
  v22 = v53;
  *(a9 + 112) = v52;
  *(a9 + 120) = v22;
  started = type metadata accessor for PrecisionStartStatusView(0);
  Date.init()();
  (*(v15 + 16))(v17, v20, v14);
  State.init(wrappedValue:)();
  (*(v15 + 8))(v20, v14);
  v24 = type metadata accessor for ReminderHaptic();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR___WOReminderHaptic_count] = 0;
  *&v25[OBJC_IVAR___WOReminderHaptic_timer] = 0;
  static WOLog.app.getter();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v40 = v9;
    v9 = v28;
    v29 = swift_slowAlloc();
    v52 = v29;
    *v9 = 136446210;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000020CB82DD0, &v52);
    _os_log_impl(&dword_20C66F000, v26, v27, "Creating reminder haptic for identifier=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x20F30E080](v29, -1, -1);
    v30 = v9;
    LOBYTE(v9) = v40;
    MEMORY[0x20F30E080](v30, -1, -1);
  }

  (*(v41 + 8))(v13, v42);
  v31 = (a9 + *(started + 64));
  *&v25[OBJC_IVAR___WOReminderHaptic_timeInterval] = 0x4066800000000000;
  *&v25[OBJC_IVAR___WOReminderHaptic_systemSoundID] = 1540;
  *&v25[OBJC_IVAR___WOReminderHaptic_maximumReminders] = 10;
  v32 = &v25[OBJC_IVAR___WOReminderHaptic_identifier];
  *v32 = 0xD000000000000018;
  *(v32 + 1) = 0x800000020CB82DD0;
  v51.receiver = v25;
  v51.super_class = v24;
  v50 = objc_msgSendSuper2(&v51, sel_init);
  State.init(wrappedValue:)();
  v33 = v53;
  *v31 = v52;
  v31[1] = v33;
  v34 = a9 + *(started + 68);
  LOBYTE(v50) = 0;
  State.init(wrappedValue:)();
  v35 = v53;
  *v34 = v52;
  *(v34 + 8) = v35;
  v36 = v44;
  *(a9 + 16) = v43;
  *(a9 + 24) = v36;
  *(a9 + 32) = v45;
  *(a9 + 50) = v46 & 1;
  type metadata accessor for WorkoutStatePublisher();
  _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutStatePublisher and conformance WorkoutStatePublisher, MEMORY[0x277D7DA88], MEMORY[0x277D7DA78]);
  result = ObservedObject.init(wrappedValue:)();
  *(a9 + 56) = result;
  *(a9 + 64) = v38;
  *(a9 + 40) = v48;
  *(a9 + 48) = v49 & 1;
  *(a9 + 49) = v9 & 1;
  return result;
}

uint64_t PrecisionStartStatusView.isLuminanceReduced.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v7 = outlined consume of Environment<Bool>.Content(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

id implicit closure #2 in implicit closure #1 in variable initialization expression of PrecisionStartStatusView._gpsLockProvider()
{
  v0 = objc_allocWithZone(type metadata accessor for GPSLockProvider());

  return [v0 init];
}

uint64_t PrecisionStartStatusView.isRouteable.getter()
{
  v1 = *(v0 + 24);
  type metadata accessor for MultiSportWorkoutConfiguration();
  if (swift_dynamicCastClass())
  {
    v2 = v1;
    v3 = MultiSportWorkoutConfiguration.subConfigs.getter();
    v4 = v3;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x20F30C990](0, v3);
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_23;
      }

      v5 = *(v3 + 32);
    }

    v6 = v5;

    v7 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  }

  else
  {
    v7 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  }

  [v7 effectiveTypeIdentifier];

  if (swift_dynamicCastClass())
  {
    v8 = v1;
    result = MultiSportWorkoutConfiguration.subConfigs.getter();
    if ((result & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x20F30C990](0, result);
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_25;
      }

      v10 = *(result + 32);
    }

    v11 = v10;

    v12 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  }

  else
  {
    v12 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  }

  [v12 isIndoor];

  if (!swift_dynamicCastClass())
  {
    v15 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    goto LABEL_19;
  }

  v1 = v1;
  result = MultiSportWorkoutConfiguration.subConfigs.getter();
  v4 = result;
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_23:
    v13 = MEMORY[0x20F30C990](0, v4);
    goto LABEL_17;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);
LABEL_17:
    v14 = v13;

    v15 = dispatch thunk of WorkoutConfiguration.activityType.getter();

LABEL_19:
    [v15 swimmingLocationType];

    return _HKWorkoutActivityTypeIsRouteable();
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t PrecisionStartStatusView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  started = type metadata accessor for PrecisionStartStatusView(0);
  v36 = *(started - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](started - 8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAEyAkEyAkEyAkEyAkA6ZStackVyAA012_ConditionalD0VyAA08TimelineF0VyAA08PeriodicL8ScheduleVAMyAA05TupleF0VyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_ACyACyACyACyACy07WorkoutB0018TransitionThinkingF0VA4_GAA08_PaddingR0VGAYGA7_GA11_GACyACyACyA5_AA06_ScaleY0VGA7_GA11_GACyACyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconF0VGGGGGGGAA017_AppearanceActionV0VGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAEyAkEyAkEyAkEyAkA6ZStackVyAA012_ConditionalD0VyAA08TimelineF0VyAA08PeriodicL8ScheduleVAMyAA05TupleF0VyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_ACyACyACyACyACy07WorkoutB0018TransitionThinkingF0VA4_GAA08_PaddingR0VGAYGA7_GA11_GACyACyACyA5_AA06_ScaleY0VGA7_GA11_GACyACyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconF0VGGGGGGGAA017_AppearanceActionV0VGMR);
  MEMORY[0x28223BE20](v37);
  v6 = (v32 - v5);
  *v6 = static Alignment.center.getter();
  v6[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicJ8ScheduleVAA0F0VyAA05TupleD0VyAA08ModifiedI0VyASyASyASyAA6CircleVAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationT0VySbGG_ASyASyASyASyASy07WorkoutB0018TransitionThinkingD0VA2_GAA08_PaddingG0VGAWGA5_GA9_GASyASyASyA3_AA06_ScaleW0VGA5_GA9_GASyASyAA5ImageVAZyAA4FontVSgGGAA016_ForegroundStyleT0VyA0_GGtGGGA11_013CountdownIconD0VGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicJ8ScheduleVAA0F0VyAA05TupleD0VyAA08ModifiedI0VyASyASyASyAA6CircleVAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationT0VySbGG_ASyASyASyASyASy07WorkoutB0018TransitionThinkingD0VA2_GAA08_PaddingG0VGAWGA5_GA9_GASyASyASyA3_AA06_ScaleW0VGA5_GA9_GASyASyAA5ImageVAZyAA4FontVSgGGAA016_ForegroundStyleT0VyA0_GGtGGGA11_013CountdownIconD0VGGMR);
  closure #1 in PrecisionStartStatusView.body.getter(v1, v6 + *(v8 + 44));
  v9 = *(v1 + 72);
  v34 = *(v2 + 80);
  v35 = v9;
  v33 = *(v2 + 88);
  v32[1] = type metadata accessor for GPSLockProvider();
  _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GPSLockProvider and conformance GPSLockProvider, MEMORY[0x277D7E060], MEMORY[0x277D7E058]);
  v10 = StateObject.wrappedValue.getter();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGMR);
  dispatch thunk of GPSLockProvider.$gpsLock.getter();

  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v13 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  v14 = (v6 + *(v11 + 56));
  *v14 = partial apply for closure #2 in PrecisionStartStatusView.body.getter;
  v14[1] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGMR);
  WorkoutStatePublisher.$gpsLock.getter();
  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v12);
  v17 = (v6 + *(v15 + 56));
  *v17 = partial apply for closure #3 in PrecisionStartStatusView.body.getter;
  v17[1] = v16;
  v18 = StateObject.wrappedValue.getter();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGGMR);
  dispatch thunk of GPSLockProvider.$checkingGPSLock.getter();

  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v12);
  v21 = (v6 + *(v19 + 56));
  *v21 = partial apply for closure #4 in PrecisionStartStatusView.body.getter;
  v21[1] = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGGGMR);
  WorkoutStatePublisher.$checkingGPSLock.getter();
  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v12);
  v24 = (v6 + *(v22 + 56));
  *v24 = partial apply for closure #5 in PrecisionStartStatusView.body.getter;
  v24[1] = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAiCyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GACyAiCyAiCyAiCyAiA6ZStackVyAA19_ConditionalContentVyAA08TimelineD0VyAA08PeriodicK8ScheduleVAKyAA05TupleD0VyAA08ModifiedJ0VyAUyAUyAUyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_AUyAUyAUyAUyAUy07WorkoutB0018TransitionThinkingD0VA4_GAA08_PaddingR0VGAYGA7_GA11_GAUyAUyAUyA5_AA06_ScaleY0VGA7_GA11_GAUyAUyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconD0VGGGGGGGMR);
  WorkoutStatePublisher.$workoutStarted.getter();
  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v12);
  v27 = (v6 + *(v25 + 56));
  *v27 = partial apply for closure #6 in PrecisionStartStatusView.body.getter;
  v27[1] = v26;
  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v12);
  v29 = (v6 + *(v37 + 36));
  *v29 = partial apply for closure #7 in PrecisionStartStatusView.body.getter;
  v29[1] = v28;
  v29[2] = 0;
  v29[3] = 0;
  outlined init with copy of PrecisionStartStatusView(v2, v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = swift_allocObject();
  outlined init with take of PrecisionStartStatusView(v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v12);
  lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWriting();
  View.onTapGesture(count:perform:)();

  return outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(v6, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAEyAkEyAkEyAkEyAkA6ZStackVyAA012_ConditionalD0VyAA08TimelineF0VyAA08PeriodicL8ScheduleVAMyAA05TupleF0VyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_ACyACyACyACyACy07WorkoutB0018TransitionThinkingF0VA4_GAA08_PaddingR0VGAYGA7_GA11_GACyACyACyA5_AA06_ScaleY0VGA7_GA11_GACyACyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconF0VGGGGGGGAA017_AppearanceActionV0VGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine9PublishedV9PublisherVySb_GAEyAkEyAkEyAkEyAkA6ZStackVyAA012_ConditionalD0VyAA08TimelineF0VyAA08PeriodicL8ScheduleVAMyAA05TupleF0VyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationV0VySbGG_ACyACyACyACyACy07WorkoutB0018TransitionThinkingF0VA4_GAA08_PaddingR0VGAYGA7_GA11_GACyACyACyA5_AA06_ScaleY0VGA7_GA11_GACyACyAA5ImageVA0_yAA4FontVSgGGAA016_ForegroundStyleV0VyA2_GGtGGGA13_013CountdownIconF0VGGGGGGGAA017_AppearanceActionV0VGMR);
}

uint64_t closure #1 in PrecisionStartStatusView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA12TimelineViewVyAA08PeriodicF8ScheduleVAA6ZStackVyAA05TupleG0VyAA08ModifiedD0VyAOyAOyAOyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationS0VySbGG_AOyAOyAOyAOyAOy07WorkoutB0018TransitionThinkingG0VAZGAA08_PaddingO0VGASGA1_GA5_GAOyAOyAOyA_AA06_ScaleV0VGA1_GA5_GAOyAOyAA5ImageVAVyAA4FontVSgGGAA016_ForegroundStyleS0VyAXGGtGGGA7_013CountdownIconG0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA12TimelineViewVyAA08PeriodicF8ScheduleVAA6ZStackVyAA05TupleG0VyAA08ModifiedD0VyAOyAOyAOyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationS0VySbGG_AOyAOyAOyAOyAOy07WorkoutB0018TransitionThinkingG0VAZGAA08_PaddingO0VGASGA1_GA5_GAOyAOyAOyA_AA06_ScaleV0VGA1_GA5_GAOyAOyAA5ImageVAVyAA4FontVSgGGAA016_ForegroundStyleS0VyAXGGtGGGA7_013CountdownIconG0V_GMR);
  MEMORY[0x28223BE20](v51);
  v4 = &v43 - v3;
  started = type metadata accessor for PrecisionStartStatusView(0);
  v43 = *(started - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](started);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for PeriodicTimelineSchedule();
  v47 = *(v14 - 8);
  v48 = v14;
  MEMORY[0x28223BE20](v14);
  v45 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationQ0VySbGG_AKyAKyAKyAKyAKy07WorkoutB0018TransitionThinkingD0VAVGAA08_PaddingM0VGAOGAYGA1_GAKyAKyAKyAwA06_ScaleT0VGAYGA1_GAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleQ0VyATGGtGGGMd, &_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationQ0VySbGG_AKyAKyAKyAKyAKy07WorkoutB0018TransitionThinkingD0VAVGAA08_PaddingM0VGAOGAYGA1_GAKyAKyAKyAwA06_ScaleT0VGAYGA1_GAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleQ0VyATGGtGGGMR);
  v49 = *(v19 - 8);
  v50 = v19;
  MEMORY[0x28223BE20](v19);
  v46 = &v43 - v20;
  if (PrecisionStartStatusView.isRouteable.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd, &_s7SwiftUI5StateVy10Foundation4DateVGMR);
    State.wrappedValue.getter();
    (*(v8 + 16))(v10, v13, v7);
    PeriodicTimelineSchedule.init(from:by:)();
    (*(v8 + 8))(v13, v7);
    v21 = v44;
    outlined init with copy of PrecisionStartStatusView(a1, v44);
    v22 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v23 = swift_allocObject();
    outlined init with take of PrecisionStartStatusView(v21, v23 + v22);
    v25 = v47;
    v24 = v48;
    (*(v47 + 16))(v45, v18, v48);
    v26 = swift_allocObject();
    *(v26 + 16) = partial apply for closure #1 in closure #1 in PrecisionStartStatusView.body.getter;
    *(v26 + 24) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationN0VySbGG_AGyAGyAGyAGyAGy07WorkoutB0018TransitionThinkingE0VARGAA08_PaddingJ0VGAKGAUGAYGAGyAGyAGyAsA06_ScaleQ0VGAUGAYGAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleN0VyAPGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationN0VySbGG_AGyAGyAGyAGyAGy07WorkoutB0018TransitionThinkingE0VARGAA08_PaddingJ0VGAKGAUGAYGAGyAGyAGyAsA06_ScaleQ0VGAUGAYGAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleN0VyAPGGtGGMR);
    _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type PeriodicTimelineSchedule and conformance PeriodicTimelineSchedule, MEMORY[0x277CE06F0], MEMORY[0x277CE06E8]);
    lazy protocol witness table accessor for type SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationN0VySbGG_AGyAGyAGyAGyAGy07WorkoutB0018TransitionThinkingE0VARGAA08_PaddingJ0VGAKGAUGAYGAGyAGyAGyAsA06_ScaleQ0VGAUGAYGAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleN0VyAPGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationN0VySbGG_AGyAGyAGyAGyAGy07WorkoutB0018TransitionThinkingE0VARGAA08_PaddingJ0VGAKGAUGAYGAGyAGyAGyAsA06_ScaleQ0VGAUGAYGAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleN0VyAPGGtGGMR, MEMORY[0x277CE11A8]);
    v27 = v46;
    TimelineView<>.init(_:content:)();
    (*(v25 + 8))(v18, v24);
    v29 = v49;
    v28 = v50;
    (*(v49 + 16))(v4, v27, v50);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type CountdownIconView and conformance CountdownIconView();
    _ConditionalContent<>.init(storage:)();
    return (*(v29 + 8))(v27, v28);
  }

  else
  {
    v31 = *(a1 + 16);
    v32 = *(a1 + 24);
    v33 = *(a1 + 32);
    v34 = *(a1 + 50);
    v35 = objc_opt_self();
    v36 = v31;
    v37 = v32;
    v38 = [v35 currentDevice];
    v39 = specialized UIDevice.screenType.getter();

    v40 = qword_20CB82F88[v39];
    v41 = [v35 currentDevice];
    LOBYTE(v38) = specialized UIDevice.screenType.getter();

    v42 = qword_20CB82FE0[v38];
    *v4 = v36;
    *(v4 + 1) = v37;
    *(v4 + 2) = v33;
    v4[24] = v34;
    v4[25] = 0;
    *(v4 + 4) = v40;
    *(v4 + 5) = v42;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>();
    lazy protocol witness table accessor for type CountdownIconView and conformance CountdownIconView();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t closure #1 in closure #1 in PrecisionStartStatusView.body.getter@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6CircleVAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationP0VySbGG_AKyAKyAKyAKyAKy07WorkoutB0018TransitionThinkingD0VAVGAA08_PaddingG0VGAOGAYGA1_GAKyAKyAKyAwA06_ScaleS0VGAYGA1_GAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleP0VyATGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6CircleVAA06_FrameG0VGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationP0VySbGG_AKyAKyAKyAKyAKy07WorkoutB0018TransitionThinkingD0VAVGAA08_PaddingG0VGAOGAYGA1_GAKyAKyAKyAwA06_ScaleS0VGAYGA1_GAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleP0VyATGGtGGMR);
  return closure #1 in closure #1 in closure #1 in PrecisionStartStatusView.body.getter(a2, (a3 + *(v6 + 44)));
}

uint64_t closure #1 in closure #1 in closure #1 in PrecisionStartStatusView.body.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v105 = &v98[-v4];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
  MEMORY[0x28223BE20](v100);
  v109 = &v98[-v5];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGMR);
  MEMORY[0x28223BE20](v101);
  v103 = &v98[-v6];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGMR);
  MEMORY[0x28223BE20](v102);
  v111 = &v98[-v7];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMR);
  MEMORY[0x28223BE20](v108);
  v122 = &v98[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v107 = &v98[-v10];
  MEMORY[0x28223BE20](v11);
  v123 = &v98[-v12];
  v110 = *(a1 + 48);
  if (v110 == 1)
  {
    v13 = *(a1 + 50);
    v14 = type metadata accessor for MetricsViewLayout();
    v15 = objc_allocWithZone(v14);
    v16 = MetricsViewLayout.init(compressedLayout:)(v13);
    MetricsViewLayout.ringDiameter.getter();

    v17 = objc_allocWithZone(v14);
    v18 = MetricsViewLayout.init(compressedLayout:)(v13);
    MetricsViewLayout.ringDiameter.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v116 = v174;
  v19 = v175;
  v118 = v176;
  v20 = v177;
  v120 = v179;
  v121 = v178;
  static Color.white.getter();
  *(&v115 + 1) = Color.opacity(_:)();

  *&v115 = swift_getKeyPath();
  v117 = v19;
  v173 = v19;
  v119 = v20;
  v172 = v20;
  v21 = *(a1 + 96);
  v22 = *(a1 + 104);
  LOBYTE(v138) = v21;
  v139 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  LODWORD(v104) = v130;
  if (PrecisionStartStatusView.isLuminanceReduced.getter())
  {
    v114 = 0;
  }

  else
  {
    v114 = static Animation.easeInOut(duration:)();
  }

  LOBYTE(v138) = v21;
  v139 = v22;
  State.wrappedValue.getter();
  v113 = v130;
  LODWORD(v112) = *(a1 + 50);
  specialized PrecisionStartStatusView.Layout.init(compressedLayout:)(v112);
  v24 = v23;
  type metadata accessor for PrecisionStartStatusView(0);
  v25 = type metadata accessor for TransitionThinkingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd, &_s7SwiftUI5StateVy10Foundation4DateVGMR);
  v26 = v109;
  State.wrappedValue.getter();
  started = PrecisionStartStatusView.isLuminanceReduced.getter();
  *v26 = v24;
  *(v26 + *(v25 + 24)) = (started & 1) == 0;
  *(v26 + *(v25 + 28)) = 16;
  v28 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v30 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR) + 36));
  *v30 = KeyPath;
  v30[1] = v28;
  LOBYTE(v28) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v31 = v26 + *(v100 + 36);
  *v31 = v28;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  if (v110)
  {
    v36 = type metadata accessor for MetricsViewLayout();
    v37 = objc_allocWithZone(v36);
    v38 = v21;
    v39 = v22;
    v40 = v112;
    v41 = MetricsViewLayout.init(compressedLayout:)(v112);
    MetricsViewLayout.ringDiameter.getter();

    v42 = objc_allocWithZone(v36);
    v43 = v40;
    v22 = v39;
    v21 = v38;
    v44 = MetricsViewLayout.init(compressedLayout:)(v43);
    MetricsViewLayout.ringDiameter.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v45 = v103;
  outlined init with take of ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v109, v103, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGMR);
  v46 = &v45[*(v101 + 36)];
  v47 = v180[1];
  *v46 = v180[0];
  v46[1] = v47;
  v46[2] = v180[2];
  v48 = *(a1 + 120);
  LOBYTE(v138) = *(a1 + 112);
  v139 = v48;
  State.wrappedValue.getter();
  v49 = 0.0;
  if (v130 == 1)
  {
    LOBYTE(v138) = v21;
    v139 = v22;
    State.wrappedValue.getter();
    if (v130)
    {
      v49 = 0.0;
    }

    else
    {
      v49 = 1.0;
    }
  }

  v50 = v111;
  outlined init with take of ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v45, v111, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGMR);
  *&v50[*(v102 + 36)] = v49;
  if (PrecisionStartStatusView.isLuminanceReduced.getter())
  {
    v51 = 0;
  }

  else
  {
    v51 = static Animation.easeInOut(duration:)();
  }

  LOBYTE(v138) = v21;
  v139 = v22;
  State.wrappedValue.getter();
  v52 = v130;
  v53 = v107;
  outlined init with take of ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v111, v107, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGMR);
  v54 = &v53[*(v108 + 36)];
  *v54 = v51;
  v54[8] = v52;
  outlined init with take of ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(v53, v123, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMR);
  if (v110)
  {
    v55 = type metadata accessor for MetricsViewLayout();
    v56 = objc_allocWithZone(v55);
    v57 = v22;
    v58 = v112;
    v59 = MetricsViewLayout.init(compressedLayout:)(v112);
    MetricsViewLayout.ringDiameter.getter();

    v60 = objc_allocWithZone(v55);
    v61 = v58;
    v22 = v57;
    v62 = MetricsViewLayout.init(compressedLayout:)(v61);
    MetricsViewLayout.ringDiameter.getter();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v109 = v181;
  v63 = v182;
  v101 = v183;
  v64 = v184;
  v111 = v185;
  v103 = v186;
  v102 = static Color.blue.getter();
  v108 = swift_getKeyPath();
  v110 = v63;
  v169 = v63;
  v167 = v64;
  LOBYTE(v138) = v21;
  v139 = v22;
  State.wrappedValue.getter();
  v65 = v130;
  static UnitPoint.center.getter();
  v67 = v66;
  v69 = v68;
  LOBYTE(v138) = v21;
  v139 = v22;
  State.wrappedValue.getter();
  v70 = v130;
  if (PrecisionStartStatusView.isLuminanceReduced.getter())
  {
    v107 = 0;
  }

  else
  {
    v107 = MEMORY[0x20F30B4C0](0.35, 0.45, 0.0);
  }

  if (v70)
  {
    v71 = 1.0;
  }

  else
  {
    v71 = 0.0;
  }

  if (v65)
  {
    v72 = 1.0;
  }

  else
  {
    v72 = 0.8;
  }

  if (v104)
  {
    v73 = 0.0;
  }

  else
  {
    v73 = 1.0;
  }

  LOBYTE(v138) = v21;
  v139 = v22;
  State.wrappedValue.getter();
  v74 = v130;
  v104 = Image.init(systemName:)();
  specialized PrecisionStartStatusView.Layout.init(compressedLayout:)(v112);
  v75 = type metadata accessor for Font.Design();
  v76 = v105;
  (*(*(v75 - 8) + 56))(v105, 1, 1, v75);
  v112 = static Font.system(size:weight:design:)();
  outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(v76, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v105 = swift_getKeyPath();
  v77 = static Color.white.getter();
  v78 = v122;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>(v123, v122, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMR);
  *&v124 = v116;
  BYTE8(v124) = v117;
  HIDWORD(v124) = *&v171[3];
  *(&v124 + 9) = *v171;
  *&v125 = v118;
  BYTE8(v125) = v119;
  HIDWORD(v125) = *&v170[3];
  *(&v125 + 9) = *v170;
  *&v126 = v121;
  *(&v126 + 1) = v120;
  v127 = v115;
  *&v128 = v73;
  *(&v128 + 1) = v114;
  v79 = v113;
  v129 = v113;
  v80 = v125;
  v81 = v106;
  *v106 = v124;
  v81[1] = v80;
  v82 = v126;
  v83 = v127;
  v84 = v128;
  *(v81 + 80) = v79;
  v81[3] = v83;
  v81[4] = v84;
  v81[2] = v82;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationK0VySbGG_ACyACyACyACyACy07WorkoutB022TransitionThinkingViewVANGAA08_PaddingG0VGAGGAQGAUGACyACyACyAoA06_ScaleN0VGAQGAUGACyACyAA5ImageVAJyAA4FontVSgGGAA016_ForegroundStyleK0VyALGGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationK0VySbGG_ACyACyACyACyACy07WorkoutB022TransitionThinkingViewVANGAA08_PaddingG0VGAGGAQGAUGACyACyACyAoA06_ScaleN0VGAQGAUGACyACyAA5ImageVAJyAA4FontVSgGGAA016_ForegroundStyleK0VyALGGtMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>(v78, v81 + v85[12], &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMR);
  v86 = v81 + v85[16];
  *&v130 = v109;
  BYTE8(v130) = v110;
  *(&v130 + 9) = *v168;
  HIDWORD(v130) = *&v168[3];
  v87 = v101;
  *&v131 = v101;
  BYTE8(v131) = v64;
  HIDWORD(v131) = *&v166[3];
  *(&v131 + 9) = *v166;
  v88 = v103;
  *&v132 = v111;
  *(&v132 + 1) = v103;
  v99 = v64;
  LODWORD(v100) = v74;
  v89 = v102;
  *&v133 = v108;
  *(&v133 + 1) = v102;
  *&v134 = v72;
  *(&v134 + 1) = v72;
  *&v135 = v67;
  *(&v135 + 1) = v69;
  *&v136 = v71;
  *(&v136 + 1) = v107;
  v137 = v74;
  v86[112] = v74;
  v90 = v130;
  v91 = v131;
  v93 = v133;
  v92 = v134;
  *(v86 + 2) = v132;
  *(v86 + 3) = v93;
  *v86 = v90;
  *(v86 + 1) = v91;
  v94 = v136;
  *(v86 + 5) = v135;
  *(v86 + 6) = v94;
  *(v86 + 4) = v92;
  v95 = (v81 + v85[20]);
  v96 = v105;
  *v95 = v104;
  v95[1] = v96;
  v95[2] = v112;
  v95[3] = v77;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>(&v124, &v138, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationK0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationK0VySbGGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>(&v130, &v138, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_ScaleEffectVGAA08_OpacityN0VGAA010_AnimationK0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_ScaleEffectVGAA08_OpacityN0VGAA010_AnimationK0VySbGGMR);

  outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(v123, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMR);

  v138 = v109;
  LOBYTE(v139) = v110;
  *(&v139 + 1) = *v168;
  HIDWORD(v139) = *&v168[3];
  v140 = v87;
  v141 = v99;
  *v142 = *v166;
  *&v142[3] = *&v166[3];
  v143 = v111;
  v144 = v88;
  v145 = v108;
  v146 = v89;
  v147 = v72;
  v148 = v72;
  v149 = v67;
  v150 = v69;
  v151 = v71;
  v152 = v107;
  v153 = v100;
  outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(&v138, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_ScaleEffectVGAA08_OpacityN0VGAA010_AnimationK0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA12_ScaleEffectVGAA08_OpacityN0VGAA010_AnimationK0VySbGGMR);
  outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(v122, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy07WorkoutB022TransitionThinkingViewVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_PaddingLayoutVGAA06_FrameO0VGAA14_OpacityEffectVGAA010_AnimationL0VySbGGMR);
  v154 = v116;
  v155 = v117;
  *v156 = *v171;
  *&v156[3] = *&v171[3];
  v157 = v118;
  v158 = v119;
  *v159 = *v170;
  *&v159[3] = *&v170[3];
  v160 = v121;
  v161 = v120;
  v162 = v115;
  v163 = v73;
  v164 = v114;
  v165 = v113;
  return outlined destroy of ModifiedContent<SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _Foregro(&v154, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationK0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationK0VySbGGMR);
}

void PrecisionStartStatusView.onReceiveGPSLock(newValue:)(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for PrecisionStartStatusView(0);
  v28 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v29 = v7;
  v30 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = *(v1 + 96);
  v37 = v1;
  v16 = *(v1 + 104);
  LOBYTE(aBlock) = v15;
  v39 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (v44 != v2)
  {
    LOBYTE(aBlock) = v15;
    v39 = v16;
    v44 = v2;
    State.wrappedValue.setter();
    Date.init()();
    (*(v9 + 16))(v11, v14, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd, &_s7SwiftUI5StateVy10Foundation4DateVGMR);
    v17 = v37;
    State.wrappedValue.setter();
    (*(v9 + 8))(v14, v8);
    LOBYTE(aBlock) = v15;
    v39 = v16;
    State.wrappedValue.getter();
    if (v44 == 1)
    {
      PrecisionStartStatusView.playGPSLockHaptic()();
    }

    if (*(v17 + 49) == 1)
    {
      _sSo23FIUIWorkoutActivityTypeCMaTm_8(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v18 = static OS_dispatch_queue.main.getter();
      v19 = v30;
      outlined init with copy of PrecisionStartStatusView(v37, v30);
      v20 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v21 = v20 + v29;
      v22 = swift_allocObject();
      outlined init with take of PrecisionStartStatusView(v19, v22 + v20);
      *(v22 + v21) = v2;
      v42 = partial apply for closure #1 in PrecisionStartStatusView.onReceiveGPSLock(newValue:);
      v43 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = thunk for @escaping @callee_guaranteed () -> ();
      v41 = &block_descriptor_30_0;
      v23 = _Block_copy(&aBlock);

      v24 = v31;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v25 = v33;
      v26 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F30C1F0](0, v24, v25, v23);
      _Block_release(v23);

      (*(v35 + 8))(v25, v26);
      (*(v32 + 8))(v24, v34);
    }
  }
}

void closure #2 in PrecisionStartStatusView.body.getter(unsigned __int8 *a1, uint64_t a2, const char *a3)
{
  started = type metadata accessor for PrecisionStartStatusView(0);
  MEMORY[0x28223BE20](started - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  static WOLog.app.getter();
  outlined init with copy of PrecisionStartStatusView(a2, v11);
  outlined init with copy of PrecisionStartStatusView(a2, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v23 = a3;
    v19 = v18;
    *v18 = 67109632;
    *(v18 + 4) = v24;
    *(v18 + 8) = 1024;
    v20 = *(v11 + 13);
    v26 = v11[96];
    v27 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.getter();
    v21 = v25;
    outlined destroy of PrecisionStartStatusView(v11);
    *(v19 + 10) = v21;
    *(v19 + 14) = 1024;
    v22 = v8[49];
    outlined destroy of PrecisionStartStatusView(v8);
    *(v19 + 16) = v22;
    _os_log_impl(&dword_20C66F000, v16, v17, v23, v19, 0x14u);
    MEMORY[0x20F30E080](v19, -1, -1);
  }

  else
  {
    outlined destroy of PrecisionStartStatusView(v8);
    outlined destroy of PrecisionStartStatusView(v11);
  }

  (*(v13 + 8))(v15, v12);
  PrecisionStartStatusView.onReceiveGPSLock(newValue:)(v24);
}

void *PrecisionStartStatusView.onReceiveCheckingGPSLock(newValue:)(char a1)
{
  v2 = a1 & 1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for DispatchQoS();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for PrecisionStartStatusView(0);
  v28 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v29 = v7;
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = *(v1 + 112);
  v37 = v1;
  v16 = *(v1 + 120);
  LOBYTE(aBlock) = v15;
  v40 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  v38 = v2;
  if (v45 != v2)
  {
    LOBYTE(aBlock) = v15;
    v40 = v16;
    v45 = v38;
    State.wrappedValue.setter();
    Date.init()();
    (*(v9 + 16))(v11, v14, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd, &_s7SwiftUI5StateVy10Foundation4DateVGMR);
    v18 = v37;
    State.wrappedValue.setter();
    result = (*(v9 + 8))(v14, v8);
    if (*(v18 + 49) == 1)
    {
      _sSo23FIUIWorkoutActivityTypeCMaTm_8(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v19 = static OS_dispatch_queue.main.getter();
      v20 = v30;
      outlined init with copy of PrecisionStartStatusView(v37, v30);
      v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v22 = v21 + v29;
      v23 = swift_allocObject();
      outlined init with take of PrecisionStartStatusView(v20, v23 + v21);
      *(v23 + v22) = v38;
      v43 = partial apply for closure #1 in PrecisionStartStatusView.onReceiveCheckingGPSLock(newValue:);
      v44 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = thunk for @escaping @callee_guaranteed () -> ();
      v42 = &block_descriptor_30;
      v24 = _Block_copy(&aBlock);

      v25 = v31;
      static DispatchQoS.unspecified.getter();
      aBlock = MEMORY[0x277D84F90];
      _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v26 = v33;
      v27 = v36;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x20F30C1F0](0, v25, v26, v24);
      _Block_release(v24);

      (*(v35 + 8))(v26, v27);
      return (*(v32 + 8))(v25, v34);
    }
  }

  return result;
}

void *closure #4 in PrecisionStartStatusView.body.getter(unsigned __int8 *a1, uint64_t a2, const char *a3)
{
  started = type metadata accessor for PrecisionStartStatusView(0);
  MEMORY[0x28223BE20](started - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  static WOLog.app.getter();
  outlined init with copy of PrecisionStartStatusView(a2, v8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109376;
    *(v16 + 4) = v13;
    *(v16 + 8) = 1024;
    v21 = v9;
    v17 = a3;
    v18 = v8[49];
    outlined destroy of PrecisionStartStatusView(v8);
    *(v16 + 10) = v18;
    v9 = v21;
    _os_log_impl(&dword_20C66F000, v14, v15, v17, v16, 0xEu);
    MEMORY[0x20F30E080](v16, -1, -1);
  }

  else
  {
    outlined destroy of PrecisionStartStatusView(v8);
  }

  (*(v10 + 8))(v12, v9);
  return PrecisionStartStatusView.onReceiveCheckingGPSLock(newValue:)(v13);
}

void closure #6 in PrecisionStartStatusView.body.getter(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  static WOLog.app.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8;
    _os_log_impl(&dword_20C66F000, v9, v10, "[GPSLockProvider] PrecisionStartStatusView received workoutStarted=%{BOOL}d", v11, 8u);
    MEMORY[0x20F30E080](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v12 = (a2 + *(type metadata accessor for PrecisionStartStatusView(0) + 64));
    v14 = *v12;
    v13 = v12[1];
    v17[2] = v14;
    v17[3] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB014ReminderHapticCGMd, &_s7SwiftUI5StateVy07WorkoutB014ReminderHapticCGMR);
    State.wrappedValue.getter();
    v15 = v17[1];
    ReminderHaptic.stopTimer()();

    if ((PrecisionStartStatusView.isRouteable.getter() & 1) != 0 && *(a2 + 49) == 1)
    {
      type metadata accessor for GPSLockProvider();
      _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GPSLockProvider and conformance GPSLockProvider, MEMORY[0x277D7E060], MEMORY[0x277D7E058]);
      v16 = StateObject.wrappedValue.getter();
      dispatch thunk of GPSLockProvider.deactivate()();
    }
  }
}

void closure #7 in PrecisionStartStatusView.body.getter(uint64_t a1, __n128 a2)
{
  if ((WorkoutStatePublisher.workoutStarted.getter() & 1) == 0)
  {
    PrecisionStartStatusView.playInitialHaptic()();
    if ((PrecisionStartStatusView.isRouteable.getter() & 1) != 0 && *(a1 + 49) == 1)
    {
      type metadata accessor for GPSLockProvider();
      _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GPSLockProvider and conformance GPSLockProvider, MEMORY[0x277D7E060], MEMORY[0x277D7E058]);
      v3 = StateObject.wrappedValue.getter();
      dispatch thunk of GPSLockProvider.activate()();
    }

    type metadata accessor for PrecisionStartStatusView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB014ReminderHapticCGMd, &_s7SwiftUI5StateVy07WorkoutB014ReminderHapticCGMR);
    State.wrappedValue.getter();
    ReminderHaptic.startTimer()();
  }
}

void *PrecisionStartStatusView.playInitialHaptic()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for PrecisionStartStatusView(0) + 68));
  v6 = *v5;
  v7 = *(v5 + 1);
  v14 = *v5;
  v15 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  result = State.wrappedValue.getter();
  if ((v13 & 1) == 0)
  {
    static WOLog.app.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20C66F000, v9, v10, "PrecisionStartStatusView playing initial haptic", v11, 2u);
      MEMORY[0x20F30E080](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    AudioServicesPlaySystemSoundWithCompletion(0x604u, 0);
    v14 = v6;
    v15 = v7;
    v13 = 1;
    return State.wrappedValue.setter();
  }

  return result;
}

void closure #8 in PrecisionStartStatusView.body.getter(uint64_t a1)
{
  type metadata accessor for PreviewChecker();
  if (MEMORY[0x20F3051E0]())
  {
    type metadata accessor for GPSLockProvider();
    _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GPSLockProvider and conformance GPSLockProvider, MEMORY[0x277D7E060], MEMORY[0x277D7E058]);
    v1 = StateObject.wrappedValue.getter();
    dispatch thunk of GPSLockProvider.fakeToggleGPSLock()();
  }
}

void PrecisionStartStatusView.playGPSLockHaptic()()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20C66F000, v4, v5, "[GPSLockProvider] PrecisionStartStatusView playing gps lock haptic", v6, 2u);
    MEMORY[0x20F30E080](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  AudioServicesPlaySystemSoundWithCompletion(0x601u, 0);
}

uint64_t closure #1 in PrecisionStartStatusView.onReceiveGPSLock(newValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, double), const char *a4)
{
  started = type metadata accessor for PrecisionStartStatusView(0);
  MEMORY[0x28223BE20](started - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(a2, v13);
  static WOLog.app.getter();
  outlined init with copy of PrecisionStartStatusView(a1, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109376;
    *(v18 + 4) = a2 & 1;
    *(v18 + 8) = 1024;
    v19 = v10[49];
    outlined destroy of PrecisionStartStatusView(v10);
    *(v18 + 10) = v19;
    _os_log_impl(&dword_20C66F000, v16, v17, a4, v18, 0xEu);
    MEMORY[0x20F30E080](v18, -1, -1);
  }

  else
  {
    outlined destroy of PrecisionStartStatusView(v10);
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t key path getter for EnvironmentValues.isLuminanceReduced : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isLuminanceReduced.getter();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for PrecisionStartStatusView(uint64_t a1)
{
  result = type metadata singleton initialization cache for PrecisionStartStatusView;
  if (!type metadata singleton initialization cache for PrecisionStartStatusView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of PrecisionStartStatusView(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PrecisionStartStatusView(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

double outlined consume of StateObject<GPSLockProvider>.Storage(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t outlined init with take of PrecisionStartStatusView(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PrecisionStartStatusView(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

void partial apply for closure #6 in PrecisionStartStatusView.body.getter(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for PrecisionStartStatusView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  closure #6 in PrecisionStartStatusView.body.getter(a1, v4);
}

uint64_t partial apply for closure #7 in PrecisionStartStatusView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PrecisionStartStatusView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void type metadata completion function for PrecisionStartStatusView(uint64_t a1)
{
  _s7SwiftUI11EnvironmentVySbGMaTm_0(319, &lazy cache variable for type metadata for Environment<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    _sSo23FIUIWorkoutActivityTypeCMaTm_8(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WorkoutConfiguration();
      if (v3 <= 0x3F)
      {
        _s7SwiftUI11EnvironmentVySbGMaTm_0(319, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ObservedObject<WorkoutStatePublisher>(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for StateObject<GPSLockProvider>(319);
            if (v6 <= 0x3F)
            {
              _s7SwiftUI11EnvironmentVySbGMaTm_0(319, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for State<Date>(319, &lazy cache variable for type metadata for State<Date>, MEMORY[0x277CC9578]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for State<Date>(319, &lazy cache variable for type metadata for State<ReminderHaptic>, type metadata accessor for ReminderHaptic);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for StateObject<GPSLockProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateObject<GPSLockProvider>)
  {
    type metadata accessor for GPSLockProvider();
    _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(&lazy protocol witness table cache variable for type GPSLockProvider and conformance GPSLockProvider, MEMORY[0x277D7E060], MEMORY[0x277D7E058]);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateObject<GPSLockProvider>);
    }
  }
}

void _s7SwiftUI11EnvironmentVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for State<Date>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of PrecisionStartStatusView(uint64_t a1)
{
  started = type metadata accessor for PrecisionStartStatusView(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_8(uint64_t a1, unint64_t *a2, void *a3)
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

double block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_23Tm_0()
{
  v1 = (type metadata accessor for PrecisionStartStatusView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  outlined consume of Environment<Bool>.Content(*v2, *(v2 + 8));

  outlined consume of StateObject<GPSLockProvider>.Storage(*(v2 + 72), *(v2 + 80), *(v2 + 88));

  v3 = v2 + v1[17];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd, &_s7SwiftUI5StateVy10Foundation4DateVGMR);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PrecisionStartStatusView.onReceiveCheckingGPSLock(newValue:)(uint64_t (*a1)(uint64_t, double), const char *a2, ...)
{
  v5 = *(type metadata accessor for PrecisionStartStatusView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return closure #1 in PrecisionStartStatusView.onReceiveGPSLock(newValue:)(v2 + v6, *(v2 + v6 + *(v5 + 64)), a1, a2);
}

unint64_t lazy protocol witness table accessor for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationQ0VySbGG_AKyAKyAKyAKyAKy07WorkoutB0018TransitionThinkingD0VAVGAA08_PaddingM0VGAOGAYGA1_GAKyAKyAKyAwA06_ScaleT0VGAYGA1_GAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleQ0VyATGGtGGGMd, &_s7SwiftUI12TimelineViewVyAA08PeriodicC8ScheduleVAA6ZStackVyAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationQ0VySbGG_AKyAKyAKyAKyAKy07WorkoutB0018TransitionThinkingD0VAVGAA08_PaddingM0VGAOGAYGA1_GAKyAKyAKyAwA06_ScaleT0VGAYGA1_GAKyAKyAA5ImageVARyAA4FontVSgGGAA016_ForegroundStyleQ0VyATGGtGGGMR);
    lazy protocol witness table accessor for type SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, SubscriptionView<Published<Bool>.Publisher, ZStack<_ConditionalContent<TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationN0VySbGG_AGyAGyAGyAGyAGy07WorkoutB0018TransitionThinkingE0VARGAA08_PaddingJ0VGAKGAUGAYGAGyAGyAGyAsA06_ScaleQ0VGAUGAYGAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleN0VyAPGGtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA6CircleVAA12_FrameLayoutVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAA14_OpacityEffectVGAA010_AnimationN0VySbGG_AGyAGyAGyAGyAGy07WorkoutB0018TransitionThinkingE0VARGAA08_PaddingJ0VGAKGAUGAYGAGyAGyAGyAsA06_ScaleQ0VGAUGAYGAGyAGyAA5ImageVANyAA4FontVSgGGAA016_ForegroundStyleN0VyAPGGtGGMR, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<PeriodicTimelineSchedule, ZStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _EnvironmentKeyWritingModifier<Color?>>, _ScaleEffect>, _OpacityEffect>, _AnimationModifier<Bool>>, ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>)>>> and conformance <> TimelineView<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CountdownIconView and conformance CountdownIconView()
{
  result = lazy protocol witness table cache variable for type CountdownIconView and conformance CountdownIconView;
  if (!lazy protocol witness table cache variable for type CountdownIconView and conformance CountdownIconView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountdownIconView and conformance CountdownIconView);
  }

  return result;
}

uint64_t objectdestroyTm_68()
{
  v1 = (type metadata accessor for PrecisionStartStatusView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  outlined consume of Environment<Bool>.Content(*v2, *(v2 + 8));

  outlined consume of StateObject<GPSLockProvider>.Storage(*(v2 + 72), *(v2 + 80), *(v2 + 88));

  v3 = v2 + v1[17];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy10Foundation4DateVGMd, &_s7SwiftUI5StateVy10Foundation4DateVGMR);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PrecisionStartStatusView.body.getter@<X0>(uint64_t *a2@<X8>)
{
  v4 = *(type metadata accessor for PrecisionStartStatusView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return closure #1 in closure #1 in PrecisionStartStatusView.body.getter(v5, a2);
}

uint64_t _s11WorkoutCore0A14StatePublisherCAC7Combine16ObservableObjectAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double specialized PrecisionStartStatusView.Layout.init(compressedLayout:)(char a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = specialized UIDevice.screenType.getter();

  v5 = 0.0;
  if (v4 <= 4u)
  {
    if (v4 >= 3u)
    {
      v5 = 16.0;
    }
  }

  else if (v4 > 7u)
  {
    if (v4 == 8)
    {
      v5 = 17.5;
    }

    else if (v4 == 9)
    {
      v5 = 19.5;
    }

    else if (a1)
    {
      v5 = 16.0;
    }

    else
    {
      v5 = 19.5;
    }
  }

  else if (v4 == 5 || v4 == 6)
  {
    v5 = 17.0;
  }

  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 scale];
  v9 = v8;

  v10 = [v6 mainScreen];
  [v10 nativeScale];
  v12 = v11;

  if (v9 != v12)
  {
    v13 = [v6 mainScreen];
    [v13 scale];
    v15 = v14;

    v16 = [v6 mainScreen];
    [v16 nativeScale];
    v18 = v17;

    v5 = v5 * (v15 / v18 * 0.95);
  }

  v19 = [v2 currentDevice];
  specialized UIDevice.screenType.getter();

  v20 = [v6 mainScreen];
  [v20 scale];
  v22 = v21;

  v23 = [v6 mainScreen];
  [v23 nativeScale];
  v25 = v24;

  if (v22 != v25)
  {
    v26 = [v6 mainScreen];
    [v26 scale];

    v27 = [v6 mainScreen];
    [v27 nativeScale];
  }

  return v5;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<TransitionThinkingView, _EnvironmentKeyWritingModifier<Color?>>, _PaddingLayout>, _FrameLayout>, _OpacityEffect>, _AnimationModifier<Bool>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t DistancePicker.init(activityType:formattingManager:boundGoal:minimumValues:lastWorkoutValue:color:editMode:displayImage:style:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, char *a14)
{
  v20 = *a14;
  *a9 = a1;
  *(a9 + 8) = v20;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0;
  *(a9 + 16) = a8;
  *(a9 + 40) = a13;
  type metadata accessor for MainActor();

  v21 = a5;
  swift_retain_n();
  v35 = a1;
  v22 = static MainActor.shared.getter();
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D85700];
  v23[2] = v22;
  v23[3] = v24;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = v21;

  v34 = v21;
  v25 = static MainActor.shared.getter();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v24;
  v26[4] = a3;
  v26[5] = a4;
  v26[6] = v34;
  _sSo21NLSessionActivityGoalCMaTm_3(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  Binding.init(get:set:)();
  type metadata accessor for DistancePickerViewModel(0);
  swift_allocObject();
  v27 = a7;
  v33 = a7;

  v28 = v40;
  v29 = a2;
  DistancePickerViewModel.init(boundGoal:formattingManager:minimumValues:lastWorkoutValue:)(v38, v39, v28, v29, a6, v27);
  v30 = type metadata accessor for DistancePicker(0);
  _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel, &protocol conformance descriptor for DistancePickerViewModel);
  Bindable<A>.init(wrappedValue:)();

  v32 = a9 + *(v30 + 28);
  *v32 = a10;
  *(v32 + 8) = a11;
  *(v32 + 16) = a12;
  return result;
}

void DistancePicker.init(activityType:formattingManager:boundGoal:minimumValues:lastWorkoutValue:editMode:context:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char *a12)
{
  v19 = *a12;
  v20 = *(a12 + 3);
  v21 = a12[32];
  *a9 = a1;
  *(a9 + 8) = v19;
  *(a9 + 16) = *(a12 + 8);
  *(a9 + 32) = v20;
  *(a9 + 40) = v21;
  type metadata accessor for MainActor();

  v22 = a5;
  v35 = a1;
  v23 = static MainActor.shared.getter();
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = a3;
  v24[5] = a4;
  v24[6] = v22;

  v34 = v22;
  v26 = static MainActor.shared.getter();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v25;
  v27[4] = a3;
  v27[5] = a4;
  v27[6] = v34;
  _sSo21NLSessionActivityGoalCMaTm_3(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  Binding.init(get:set:)();
  type metadata accessor for DistancePickerViewModel(0);
  swift_allocObject();
  v28 = a7;
  v33 = a7;

  v29 = v40;
  v30 = a2;
  DistancePickerViewModel.init(boundGoal:formattingManager:minimumValues:lastWorkoutValue:)(v38, v39, v29, v30, a6, v28);
  v31 = type metadata accessor for DistancePicker(0);
  _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel, &protocol conformance descriptor for DistancePickerViewModel);
  Bindable<A>.init(wrappedValue:)();

  v32 = a9 + *(v31 + 28);
  *v32 = a8;
  *(v32 + 8) = a10;
  *(v32 + 16) = a11;
}

void closure #1 in DistancePicker.init(activityType:formattingManager:boundGoal:minimumValues:lastWorkoutValue:editMode:context:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLSessionActivityGoalCGMd, &_s7SwiftUI7BindingVySo21NLSessionActivityGoalCGMR);
  MEMORY[0x20F30B100](&v14);
  v9 = v14;
  v10 = [v14 goalTypeIdentifier];

  v15 = a1;
  v16 = a2;
  v17 = a3;
  if (v10 == 1)
  {
    MEMORY[0x20F30B100](v8);
  }

  else
  {
    MEMORY[0x20F30B100](&v14, v8);
    v11 = v14;
    v12 = [v14 requiredDistance];

    v13 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:1 value:v12];
    *a4 = v13;
  }
}

void closure #2 in DistancePicker.init(activityType:formattingManager:boundGoal:minimumValues:lastWorkoutValue:editMode:context:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo21NLSessionActivityGoalCGMd, &_s7SwiftUI7BindingVySo21NLSessionActivityGoalCGMR);
  MEMORY[0x20F30B100](&v16);
  v11 = v16;
  v12 = [v16 goalTypeIdentifier];

  v17 = a4;
  v18 = a5;
  v19 = a6;
  if (v12 == 1)
  {
    v16 = v9;
    v13 = v9;
    Binding.wrappedValue.setter();
  }

  else
  {
    MEMORY[0x20F30B100](&v16, v10);
    v14 = v16;
    v15 = [v9 value];
    [v14 setRequiredDistance_];
  }
}

uint64_t type metadata accessor for DistancePicker(uint64_t a1)
{
  result = type metadata singleton initialization cache for DistancePicker;
  if (!type metadata singleton initialization cache for DistancePicker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm_69()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void DistancePicker.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = type metadata accessor for DistancePickerWatch(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v49[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019DistancePickerPhoneVAF0gH5WatchV_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB019DistancePickerPhoneVAF0gH5WatchV_GMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v49[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMd, &_s7SwiftUI8BindableVy07WorkoutB023DistancePickerViewModelCGMR);
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v14 = &v49[-v13];
  v63 = type metadata accessor for DistancePickerPhone(0);
  MEMORY[0x28223BE20](v63);
  v16 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v49[-v18];
  if (static Platform.current.getter())
  {
    v20 = *v2;
    type metadata accessor for DistancePicker(0);
    v21 = v20;
    Bindable.wrappedValue.getter();
    *v5 = v21;
    type metadata accessor for DistancePickerViewModel(0);
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel, &protocol conformance descriptor for DistancePickerViewModel);
    Bindable<A>.init(wrappedValue:)();
    v22 = v5 + *(v3 + 24);
    LOBYTE(v64) = 0;
    State.init(wrappedValue:)();
    v23 = v68;
    *v22 = v67;
    *(v22 + 1) = v23;
    v24 = type metadata accessor for DistancePickerWatch;
    outlined init with copy of DistancePickerWatch(v5, v8, type metadata accessor for DistancePickerWatch);
    swift_storeEnumTagMultiPayload();
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerPhone and conformance DistancePickerPhone, type metadata accessor for DistancePickerPhone, &protocol conformance descriptor for DistancePickerPhone);
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerWatch and conformance DistancePickerWatch, type metadata accessor for DistancePickerWatch, &protocol conformance descriptor for DistancePickerWatch);
    _ConditionalContent<>.init(storage:)();
    v25 = v5;
LABEL_8:
    outlined destroy of DistancePickerWatch(v25, v24);
    return;
  }

  v56 = v19;
  v57 = v6;
  v55 = v8;
  v58 = v3;
  v26 = type metadata accessor for DistancePicker(0);
  Bindable.projectedValue.getter();
  v27 = (v2 + *(v26 + 28));
  v28 = *v27;
  v29 = v27[1];
  LOBYTE(v27) = *(v27 + 16);
  v67 = v28;
  v68 = v29;
  v69 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.projectedValue.getter();
  v51 = v64;
  v54 = v65;
  v30 = *(v2 + 8);
  v32 = *(v2 + 16);
  v31 = *(v2 + 24);
  v33 = *(v2 + 32);
  v52 = *(v2 + 40);
  v53 = v66;
  *(v16 + 6) = 1;
  v34 = v63;
  v35 = &v16[*(v63 + 36)];
  LOBYTE(v64) = 0;
  v59 = v33;
  v60 = v31;

  State.init(wrappedValue:)();
  v36 = v68;
  *v35 = v67;
  *(v35 + 1) = v36;
  v37 = &v16[*(v34 + 40)];
  LOBYTE(v64) = 0;
  State.init(wrappedValue:)();
  v38 = v68;
  *v37 = v67;
  *(v37 + 1) = v38;
  v39 = v61;
  (*(v61 + 16))(v11, v14, v9);
  type metadata accessor for DistancePickerViewModel(0);
  _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerViewModel and conformance DistancePickerViewModel, type metadata accessor for DistancePickerViewModel, &protocol conformance descriptor for DistancePickerViewModel);
  v40 = v60;
  Bindable<A>.init(projectedValue:)();
  v41 = v32;
  if (v32)
  {
LABEL_7:
    v45 = *(v39 + 8);

    v45(v14, v9);
    *v16 = v41;
    v16[8] = v30;
    *(v16 + 2) = v32;
    *(v16 + 3) = v40;
    *(v16 + 4) = v59;
    v16[40] = v52;
    v46 = &v16[*(v63 + 32)];
    v47 = v54;
    *v46 = v51;
    *(v46 + 1) = v47;
    v46[16] = v53;
    v48 = v56;
    outlined init with take of DistancePickerPhone(v16, v56);
    v24 = type metadata accessor for DistancePickerPhone;
    outlined init with copy of DistancePickerWatch(v48, v55, type metadata accessor for DistancePickerPhone);
    swift_storeEnumTagMultiPayload();
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerPhone and conformance DistancePickerPhone, type metadata accessor for DistancePickerPhone, &protocol conformance descriptor for DistancePickerPhone);
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerWatch and conformance DistancePickerWatch, type metadata accessor for DistancePickerWatch, &protocol conformance descriptor for DistancePickerWatch);
    _ConditionalContent<>.init(storage:)();
    v25 = v48;
    goto LABEL_8;
  }

  v50 = v30;
  v42 = [objc_opt_self() distanceColors];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 nonGradientTextColor];

    if (v44)
    {
      v41 = Color.init(uiColor:)();
      LOBYTE(v30) = v50;
      v40 = v60;
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of DistancePickerWatch(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of DistancePickerWatch(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for DistancePicker(uint64_t a1)
{
  _sSo21NLSessionActivityGoalCMaTm_3(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Bindable<DistancePickerViewModel>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Binding<Bool>();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_3(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<DistancePickerPhone, DistancePickerWatch> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<DistancePickerPhone, DistancePickerWatch> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<DistancePickerPhone, DistancePickerWatch> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB019DistancePickerPhoneVAD0fG5WatchVGMd, "$W\t");
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerPhone and conformance DistancePickerPhone, type metadata accessor for DistancePickerPhone, &protocol conformance descriptor for DistancePickerPhone);
    _s9WorkoutUI23DistancePickerViewModelCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type DistancePickerWatch and conformance DistancePickerWatch, type metadata accessor for DistancePickerWatch, &protocol conformance descriptor for DistancePickerWatch);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<DistancePickerPhone, DistancePickerWatch> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutBuddyStatusView(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutBuddyStatusView;
  if (!type metadata singleton initialization cache for WorkoutBuddyStatusView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutBuddyStatusView(uint64_t a1)
{
  type metadata accessor for Environment<Bool>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WorkoutBuddyStatePublisher.State();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Environment<Bool>()
{
  if (!lazy cache variable for type metadata for Environment<Bool>)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<Bool>);
    }
  }
}

uint64_t WorkoutBuddyStatusView.isLuminanceReduced.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v7 = outlined consume of Environment<Bool>.Content(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t WorkoutBuddyStatusView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v77 = a1;
  v78 = type metadata accessor for SymbolEffectOptions.RepeatBehavior();
  v73 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v72 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for SymbolEffectOptions();
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v84 = &v62 - v6;
  v83 = type metadata accessor for VariableColorSymbolEffect();
  v87 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v62 - v9;
  MEMORY[0x28223BE20](v10);
  v68 = &v62 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v62 - v16;
  v18 = type metadata accessor for WorkoutBuddyStatePublisher.State();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v79 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v62 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGMR);
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGAA023AccessibilityAttachmentH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGAA023AccessibilityAttachmentH0VGMR);
  MEMORY[0x28223BE20](v75);
  v76 = &v62 - v27;
  v28 = type metadata accessor for WorkoutBuddyStatusView(0);
  v29 = *(v19 + 16);
  v86 = *(v28 + 20);
  v29(v23, v1 + v86, v18);
  v30 = (*(v19 + 88))(v23, v18);
  v31 = *MEMORY[0x277D7DB80];
  v80 = v24;
  if (v30 != v31 && v30 != *MEMORY[0x277D7DB90])
  {
    (*(v19 + 8))(v23, v18);
  }

  Image.init(systemName:)();
  v32 = *(v19 + 104);
  v33 = v79;
  v66 = *MEMORY[0x277D7DB98];
  v65 = v19 + 104;
  v64 = v32;
  v32(v79);
  lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State(&lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State, MEMORY[0x277D7DBB0], MEMORY[0x277D7DBC0]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v34 = *(v19 + 8);
  v70 = v19 + 8;
  v62 = v34;
  v34(v33, v18);
  v74 = v26;
  if (v89 == v88._countAndFlagsBits)
  {
    static SymbolRenderingMode.hierarchical.getter();
  }

  else
  {
    static SymbolRenderingMode.monochrome.getter();
  }

  v35 = type metadata accessor for SymbolRenderingMode();
  (*(*(v35 - 8) + 56))(v17, 0, 1, v35);
  v67 = Image.symbolRenderingMode(_:)();

  outlined destroy of SymbolRenderingMode?(v17, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  WorkoutBuddyStatePublisher.State.foregroundColor.getter();
  v63 = v36;
  VariableColorSymbolEffect.init()();
  v37 = v68;
  VariableColorSymbolEffect.iterative.getter();
  v38 = v87 + 8;
  v39 = *(v87 + 8);
  v40 = v83;
  v39(v14, v83);
  v41 = v69;
  VariableColorSymbolEffect.cumulative.getter();
  v39(v37, v40);
  VariableColorSymbolEffect.hideInactiveLayers.getter();
  v87 = v38;
  v39(v41, v40);
  v42 = v72;
  static SymbolEffectOptions.RepeatBehavior.periodic(_:delay:)();
  v43 = v71;
  MEMORY[0x20F30B630](v42);
  (*(v73 + 8))(v42, v78);
  SymbolEffectOptions.speed(_:)();
  v73 = *(v82 + 8);
  (v73)(v43, v85);
  v44 = v79;
  v64(v79, v66, v18);
  v78 = v2;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v62(v44, v18);
  v45 = 0;
  if (v89 == v88._countAndFlagsBits)
  {
    v45 = WorkoutBuddyStatusView.isLuminanceReduced.getter() ^ 1;
  }

  v46 = v74;
  v47 = v74 + *(v80 + 36);
  v48 = type metadata accessor for _IndefiniteSymbolEffectModifier();
  v50 = v84;
  v49 = v85;
  (*(v82 + 16))(&v47[*(v48 + 20)], v84, v85);
  lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State(&lazy protocol witness table cache variable for type VariableColorSymbolEffect and conformance VariableColorSymbolEffect, MEMORY[0x277CE15A8], MEMORY[0x277CE15A0]);
  v51 = v81;
  v52 = v83;
  dispatch thunk of SymbolEffect.configuration.getter();
  (v73)(v50, v49);
  v39(v51, v52);
  v47[*(v48 + 24)] = v45 & 1;
  v53 = v63;
  *v46 = v67;
  v46[1] = v53;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v54 = WorkoutUIBundle.super.isa;
  v90._object = 0xE000000000000000;
  v55.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v55.value._object = 0xEB00000000656C62;
  v56._object = 0x800000020CBA0BF0;
  v56._countAndFlagsBits = 0xD000000000000016;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v55, v54, v57, v90);

  v88 = v58;
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type String and conformance String();
  v59 = v76;
  View.accessibilityLabel<A>(_:)();

  outlined destroy of SymbolRenderingMode?(v46, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGMR);
  v88._countAndFlagsBits = WorkoutBuddyStatePublisher.State.accessibilityDescription.getter();
  v88._object = v60;
  ModifiedContent<>.accessibilityValue<A>(_:)();

  return outlined destroy of SymbolRenderingMode?(v59, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGAA023AccessibilityAttachmentH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGAA023AccessibilityAttachmentH0VGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State(&lazy protocol witness table cache variable for type _IndefiniteSymbolEffectModifier and conformance _IndefiniteSymbolEffectModifier, MEMORY[0x277CDE488], MEMORY[0x277CDE480]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of SymbolRenderingMode?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGAA023AccessibilityAttachmentH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGAA023_IndefiniteSymbolEffectH0VGAA023AccessibilityAttachmentH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _ForegroundStyleModifier<Color>>, _IndefiniteSymbolEffectModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id ReminderHaptic.__allocating_init(timeInterval:systemSoundID:maximumReminders:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v6 = v5;
  v29 = a1;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_allocWithZone(v6);
  *&v15[OBJC_IVAR___WOReminderHaptic_count] = 0;
  *&v15[OBJC_IVAR___WOReminderHaptic_timer] = 0;
  static WOLog.app.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = v6;
    v19 = a3;
    v20 = v18;
    v21 = swift_slowAlloc();
    v27 = a2;
    v22 = v21;
    v30 = v21;
    *v20 = 136446210;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, a4, &v30);
    _os_log_impl(&dword_20C66F000, v16, v17, "Creating reminder haptic for identifier=%{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    a2 = v27;
    MEMORY[0x20F30E080](v23, -1, -1);
    v24 = v20;
    a3 = v19;
    v6 = v28;
    MEMORY[0x20F30E080](v24, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  *&v15[OBJC_IVAR___WOReminderHaptic_timeInterval] = a5;
  *&v15[OBJC_IVAR___WOReminderHaptic_systemSoundID] = v29;
  *&v15[OBJC_IVAR___WOReminderHaptic_maximumReminders] = a2;
  v25 = &v15[OBJC_IVAR___WOReminderHaptic_identifier];
  *v25 = a3;
  *(v25 + 1) = a4;
  v31.receiver = v15;
  v31.super_class = v6;
  return objc_msgSendSuper2(&v31, sel_init);
}

uint64_t ReminderHaptic.identifier.getter()
{
  v1 = (v0 + OBJC_IVAR___WOReminderHaptic_identifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ReminderHaptic.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WOReminderHaptic_identifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double key path setter for ReminderHaptic.identifier : ReminderHaptic(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___WOReminderHaptic_identifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

id ReminderHaptic.init(timeInterval:systemSoundID:maximumReminders:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v6 = v5;
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6[OBJC_IVAR___WOReminderHaptic_count] = 0;
  *&v6[OBJC_IVAR___WOReminderHaptic_timer] = 0;
  static WOLog.app.getter();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v29 = a2;
    v30 = v20;
    v21 = v20;
    *v19 = 136446210;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v30);
    _os_log_impl(&dword_20C66F000, v16, v17, "Creating reminder haptic for identifier=%{public}s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v22 = v21;
    a2 = v29;
    MEMORY[0x20F30E080](v22, -1, -1);
    v23 = v19;
    a1 = v28;
    MEMORY[0x20F30E080](v23, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  *&v6[OBJC_IVAR___WOReminderHaptic_timeInterval] = a5;
  *&v6[OBJC_IVAR___WOReminderHaptic_systemSoundID] = a1;
  *&v6[OBJC_IVAR___WOReminderHaptic_maximumReminders] = a2;
  v24 = &v6[OBJC_IVAR___WOReminderHaptic_identifier];
  *v24 = a3;
  *(v24 + 1) = a4;
  v25 = type metadata accessor for ReminderHaptic();
  v31.receiver = v6;
  v31.super_class = v25;
  return objc_msgSendSuper2(&v31, sel_init);
}

Swift::Void __swiftcall ReminderHaptic.startTimer()()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  ReminderHaptic.stopTimer()();
  static WOLog.app.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = &v5[OBJC_IVAR___WOReminderHaptic_identifier];
    swift_beginAccess();
    v12 = *v10;
    v11 = v10[1];

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, aBlock);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_20C66F000, v6, v7, "Starting reminder haptic timer for identifier=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x20F30E080](v9, -1, -1);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  v14 = objc_opt_self();
  v15 = *&v5[OBJC_IVAR___WOReminderHaptic_timeInterval];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in ReminderHaptic.startTimer();
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  aBlock[3] = &block_descriptor_31;
  v17 = _Block_copy(aBlock);

  v18 = [v14 scheduledTimerWithTimeInterval:1 repeats:v17 block:v15];
  _Block_release(v17);
  v19 = *&v5[OBJC_IVAR___WOReminderHaptic_timer];
  *&v5[OBJC_IVAR___WOReminderHaptic_timer] = v18;
}

void closure #1 in ReminderHaptic.startTimer()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v48 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v45 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = Strong;
  v10 = OBJC_IVAR___WOReminderHaptic_count;
  v11 = *(Strong + OBJC_IVAR___WOReminderHaptic_count);
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(Strong + OBJC_IVAR___WOReminderHaptic_count) = v13;
  static WOLog.app.getter();
  v14 = v9;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  p_class_meths = &OBJC_PROTOCOL___NLWorkoutUIDelegate.class_meths;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v47 = v4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v49[0] = v20;
    *v19 = 134349570;
    *(v19 + 4) = *&v9[v10];
    *(v19 + 12) = 2050;
    *(v19 + 14) = *&v14[OBJC_IVAR___WOReminderHaptic_maximumReminders];

    *(v19 + 22) = 2082;
    v46 = v2;
    v21 = &v14[OBJC_IVAR___WOReminderHaptic_identifier];
    swift_beginAccess();
    v22 = v10;
    v23 = *v21;
    v24 = v21[1];

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, v49);
    v2 = v46;

    *(v19 + 24) = v25;
    v10 = v22;
    p_class_meths = (&OBJC_PROTOCOL___NLWorkoutUIDelegate + 32);
    _os_log_impl(&dword_20C66F000, v15, v16, "Playing reminder haptic count=%{public}ld max_count=%{public}ld identifier=%{public}s", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F30E080](v20, -1, -1);
    v26 = v19;
    v4 = v47;
    MEMORY[0x20F30E080](v26, -1, -1);
  }

  else
  {
  }

  v27 = *(v48 + 8);
  v27(v7, v2);
  v28 = *&v14[OBJC_IVAR___WOReminderHaptic_systemSoundID];
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (HIDWORD(v28))
  {
LABEL_17:
    __break(1u);
    return;
  }

  AudioServicesPlaySystemSoundWithCompletion(v28, 0);
  v29 = v10;
  v30 = *&v9[v10];
  v31 = p_class_meths[85];
  if (v30 >= *(v31 + v14))
  {
    static WOLog.app.getter();
    v32 = v14;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v47 = v4;
      v36 = v35;
      v46 = swift_slowAlloc();
      v50 = v46;
      *v36 = 134349570;
      *(v36 + 4) = *&v9[v29];
      *(v36 + 12) = 2050;
      *(v36 + 14) = *(v31 + v14);

      *(v36 + 22) = 2082;
      v37 = &v32[OBJC_IVAR___WOReminderHaptic_identifier];
      swift_beginAccess();
      v38 = v2;
      v40 = *v37;
      v39 = v37[1];

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v39, &v50);

      *(v36 + 24) = v41;
      _os_log_impl(&dword_20C66F000, v33, v34, "Max reminder haptics fired.  Stopping reminder haptic. count=%{public}ld max_count=%{public}ld identifier=%{public}s", v36, 0x20u);
      v42 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x20F30E080](v42, -1, -1);
      MEMORY[0x20F30E080](v36, -1, -1);

      v43 = v47;
      v44 = v38;
    }

    else
    {

      v43 = v4;
      v44 = v2;
    }

    v27(v43, v44);
    ReminderHaptic.stopTimer()();
  }
}

Swift::Void __swiftcall ReminderHaptic.stopTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___WOReminderHaptic_timer;
  if (*&v1[OBJC_IVAR___WOReminderHaptic_timer])
  {
    static WOLog.app.getter();
    v8 = v1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v20 = v2;
      v12 = v11;
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136446210;
      v14 = &v8[OBJC_IVAR___WOReminderHaptic_identifier];
      swift_beginAccess();
      v16 = *v14;
      v15 = v14[1];

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &v21);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_20C66F000, v9, v10, "Stopping reminder haptic timer for identifier=%{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x20F30E080](v13, -1, -1);
      MEMORY[0x20F30E080](v12, -1, -1);

      (*(v3 + 8))(v6, v20);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  [*&v1[v7] invalidate];
  v18 = *&v1[v7];
  *&v1[v7] = 0;

  *&v1[OBJC_IVAR___WOReminderHaptic_count] = 0;
}

id ReminderHaptic.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR___WOReminderHaptic_identifier];
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];

  static WOLog.app.getter();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136446210;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v16);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_20C66F000, v9, v10, "Deallocating reminder haptic for identifier=%{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F30E080](v12, -1, -1);
    MEMORY[0x20F30E080](v11, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v5, v2);
  ReminderHaptic.stopTimer()();
  v14 = type metadata accessor for ReminderHaptic();
  v17.receiver = v1;
  v17.super_class = v14;
  return objc_msgSendSuper2(&v17, sel_dealloc);
}

id ReminderHaptic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void key path setter for TrainingLoadWorkoutsAddUpView.onNext : TrainingLoadWorkoutsAddUpView(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = _sytIegr_Ieg_TRTA_1;
  a2[1] = v5;
}

uint64_t TrainingLoadWorkoutsAddUpView.onNext.getter()
{
  v1 = *v0;

  return v1;
}

void TrainingLoadWorkoutsAddUpView.onNext.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TrainingLoadWorkoutsAddUpView.init(onNext:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TrainingLoadWorkoutsAddUpView.attributedString.getter@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  Band = type metadata accessor for TrainingLoadBand();
  v87 = *(Band - 8);
  MEMORY[0x28223BE20](Band);
  v86 = v80 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Font.Leading();
  v91 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v90 = v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = v80 - v4;
  v95 = type metadata accessor for Font.TextStyle();
  v97 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v85 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v107 = v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGSgMd, &_sSny10Foundation16AttributedStringV5IndexVGSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v102 = v80 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  v108 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v94 = v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v105 = v80 - v14;
  v15 = type metadata accessor for AttributeContainer();
  MEMORY[0x28223BE20](v15 - 8);
  v100 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for AttributedString();
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v109 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v18 = WorkoutUIBundle.super.isa;
  v112._object = 0xE000000000000000;
  v19._object = 0x800000020CBA0DB0;
  v19._countAndFlagsBits = 0xD00000000000003CLL;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v112)._countAndFlagsBits;

  v22 = WorkoutUIBundle.super.isa;
  v113._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0xD000000000000047;
  v23._object = 0x800000020CBA0DF0;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v113._countAndFlagsBits = 0;
  v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v113);

  v27 = WorkoutUIBundle.super.isa;
  v114._object = 0xE000000000000000;
  v28._countAndFlagsBits = 0xD000000000000048;
  v28._object = 0x800000020CBA0E40;
  v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v29.value._object = 0xEB00000000656C62;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v114._countAndFlagsBits = 0;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v114);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20CB5DA80;
  v33 = MEMORY[0x277D837D0];
  *(v32 + 56) = MEMORY[0x277D837D0];
  v34 = lazy protocol witness table accessor for type String and conformance String();
  *(v32 + 32) = v26;
  *(v32 + 96) = v33;
  *(v32 + 104) = v34;
  *(v32 + 64) = v34;
  *(v32 + 72) = v31._countAndFlagsBits;
  v92 = v31._countAndFlagsBits;
  *(v32 + 80) = v31._object;

  object = v31._object;

  static String.localizedStringWithFormat(_:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v111 = v26;
  v35 = type metadata accessor for Locale();
  v36 = *(*(v35 - 8) + 56);
  v37 = v107;
  v36(v107, 1, 1, v35);
  lazy protocol witness table accessor for type TrainingLoadOnboardingCore and conformance TrainingLoadOnboardingCore(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  lazy protocol witness table accessor for type String and conformance String();
  v38 = v102;
  v39 = v106;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  outlined destroy of Locale?(v37, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  v41 = v108 + 48;
  v40 = *(v108 + 48);
  v42 = v101;
  if (v40(v38, 1, v101) == 1)
  {

    v43 = v109;
  }

  else
  {
    outlined init with take of Range<AttributedString.Index>(v38, v105);
    v111._countAndFlagsBits = v92;
    v111._object = object;
    v108 = v41;
    v44 = v107;
    v36(v107, 1, 1, v35);
    v45 = v93;
    v43 = v109;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    outlined destroy of Locale?(v44, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

    if (v40(v45, 1, v42) != 1)
    {
      outlined init with take of Range<AttributedString.Index>(v45, v94);
      LODWORD(v108) = *MEMORY[0x277CE0A68];
      v49 = v97;
      v50 = *(v97 + 104);
      v102 = (v97 + 104);
      v107 = v50;
      v51 = v85;
      v52 = v95;
      (v50)(v85);
      LODWORD(object) = *MEMORY[0x277CE09A0];
      v53 = object;
      v54 = type metadata accessor for Font.Design();
      v83 = v54;
      v55 = *(v54 - 8);
      v56 = *(v55 + 104);
      countAndFlagsBits = v55 + 104;
      v100 = v56;
      v57 = v88;
      (v56)(v88, v53, v54);
      v58 = *(v55 + 56);
      v92 = v55 + 56;
      v93 = v58;
      (v58)(v57, 0, 1, v54);
      static Font.system(_:design:weight:)();
      outlined destroy of Locale?(v57, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
      v59 = *(v49 + 8);
      v97 = v49 + 8;
      v84 = v59;
      v59(v51, v52);
      v82 = *MEMORY[0x277CE0A10];
      v60 = v91;
      v61 = *(v91 + 104);
      v80[3] = v91 + 104;
      v81 = v61;
      v62 = v90;
      v63 = v96;
      v61(v90);
      Font.leading(_:)();

      v91 = *(v60 + 8);
      (v91)(v62, v63);
      static Font.Weight.semibold.getter();
      v64 = Font.weight(_:)();

      v80[1] = _s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGACyxGAA0E0AAWlTm_0(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR, MEMORY[0x277D83D30]);
      v65 = AttributedString.subscript.modify();
      v110 = v64;
      v80[2] = lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute();
      AttributedSubstring.subscript.setter();
      v65(&v111, 0);
      v66 = v87;
      v67 = v86;
      v68 = Band;
      (*(v87 + 104))(v86, *MEMORY[0x277D0FE78], Band);
      v69 = TrainingLoadBand.color.getter();
      (*(v66 + 8))(v67, v68);
      v70 = AttributedString.subscript.modify();
      v110 = v69;
      lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute();
      AttributedSubstring.subscript.setter();
      v70(&v111, 0);
      v71 = v95;
      (v107)(v51, v108, v95);
      v72 = v83;
      (v100)(v57, object, v83);
      (v93)(v57, 0, 1, v72);
      static Font.system(_:design:weight:)();
      outlined destroy of Locale?(v57, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
      v84(v51, v71);
      v73 = v96;
      v81(v62, v82, v96);
      Font.leading(_:)();

      (v91)(v62, v73);
      static Font.Weight.semibold.getter();
      v74 = Font.weight(_:)();

      v75 = v94;
      v76 = AttributedString.subscript.modify();
      v110 = v74;
      AttributedSubstring.subscript.setter();
      v76(&v111, 0);
      v43 = v109;
      v77 = static Color.primary.getter();
      v78 = AttributedString.subscript.modify();
      v110 = v77;
      AttributedSubstring.subscript.setter();
      v78(&v111, 0);
      v39 = v106;
      outlined destroy of Locale?(v75, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
      v48 = v105;
      v46 = &_sSny10Foundation16AttributedStringV5IndexVGMd;
      v47 = &_sSny10Foundation16AttributedStringV5IndexVGMR;
      goto LABEL_9;
    }

    outlined destroy of Locale?(v105, &_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
    v38 = v45;
  }

  v46 = &_sSny10Foundation16AttributedStringV5IndexVGSgMd;
  v47 = &_sSny10Foundation16AttributedStringV5IndexVGSgMR;
  v48 = v38;
LABEL_9:
  outlined destroy of Locale?(v48, v46, v47);
  return (*(v103 + 32))(v104, v43, v39);
}

uint64_t TrainingLoadWorkoutsAddUpView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGMR);
  closure #1 in TrainingLoadWorkoutsAddUpView.body.getter(v5, v4, (a2 + *(v6 + 44)));
  v7 = static HorizontalAlignment.center.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v19._object = 0xE000000000000000;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._object = 0x800000020CB98270;
  v10._countAndFlagsBits = 0xD00000000000002FLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v19);

  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v4;

  v14 = VerticalEdge.rawValue.getter();
  v15 = MEMORY[0x20F309EB0]((2 * v14));
  v16 = static SafeAreaRegions.container.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGAA06_InsetG8ModifierVyAJ0jkL6ButtonVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGAA06_InsetG8ModifierVyAJ0jkL6ButtonVGGMR);
  v18 = a2 + *(result + 36);
  *v18 = v12;
  *(v18 + 16) = partial apply for closure #1 in closure #2 in TrainingLoadWorkoutsAddUpView.body.getter;
  *(v18 + 24) = v13;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  *(v18 + 48) = 1;
  *(v18 + 49) = v15;
  *(v18 + 56) = v7;
  return result;
}

uint64_t closure #1 in TrainingLoadWorkoutsAddUpView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVy07WorkoutB026TrainingLoadOnboardingCoreVGMd, &_s7SwiftUI10ScrollViewVy07WorkoutB026TrainingLoadOnboardingCoreVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-v11];
  v18 = a1;
  v19 = a2;
  static Axis.Set.vertical.getter();
  type metadata accessor for TrainingLoadOnboardingCore(0);
  lazy protocol witness table accessor for type TrainingLoadOnboardingCore and conformance TrainingLoadOnboardingCore(&lazy protocol witness table cache variable for type TrainingLoadOnboardingCore and conformance TrainingLoadOnboardingCore, type metadata accessor for TrainingLoadOnboardingCore, &protocol conformance descriptor for TrainingLoadOnboardingCore);
  ScrollView.init(_:showsIndicators:content:)();
  v13 = *(v7 + 16);
  v13(v9, v12, v6);
  v13(a3, v9, v6);
  v14 = &a3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScrollViewVy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtMd, &_s7SwiftUI10ScrollViewVy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtMR) + 48)];
  *v14 = 0;
  v14[8] = 1;
  v15 = *(v7 + 8);
  v15(v12, v6);
  return (v15)(v9, v6);
}

uint64_t closure #1 in closure #1 in TrainingLoadWorkoutsAddUpView.body.getter@<X0>(Swift::String *a1@<X8>)
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = WorkoutUIBundle.super.isa;
  v9._object = 0xE000000000000000;
  v3.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v3.value._object = 0xEB00000000656C62;
  v4._countAndFlagsBits = 0xD00000000000003ALL;
  v4._object = 0x800000020CBA0D70;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v3, v2, v5, v9);

  OnboardingCore = type metadata accessor for TrainingLoadOnboardingCore(0);
  result = TrainingLoadWorkoutsAddUpView.attributedString.getter(a1 + *(OnboardingCore + 24));
  a1->_countAndFlagsBits = 0xD00000000000002ALL;
  a1->_object = 0x800000020CBA0D40;
  a1[1] = v6;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance TrainingLoadWorkoutsAddUpView@<X0>(uint64_t a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA06ScrollD0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGMR);
  closure #1 in TrainingLoadWorkoutsAddUpView.body.getter(v5, v4, (a2 + *(v6 + 44)));
  v7 = static HorizontalAlignment.center.getter();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = WorkoutUIBundle.super.isa;
  v19._object = 0xE000000000000000;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._object = 0x800000020CB98270;
  v10._countAndFlagsBits = 0xD00000000000002FLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v9, v8, v11, v19);

  v13 = swift_allocObject();
  *(v13 + 16) = v5;
  *(v13 + 24) = v4;

  v14 = VerticalEdge.rawValue.getter();
  v15 = MEMORY[0x20F309EB0]((2 * v14));
  v16 = static SafeAreaRegions.container.getter();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGAA06_InsetG8ModifierVyAJ0jkL6ButtonVGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA06ScrollG0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGAA06_InsetG8ModifierVyAJ0jkL6ButtonVGGMR);
  v18 = a2 + *(result + 36);
  *v18 = v12;
  *(v18 + 16) = closure #1 in closure #2 in TrainingLoadWorkoutsAddUpView.body.getterpartial apply;
  *(v18 + 24) = v13;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  *(v18 + 48) = 1;
  *(v18 + 49) = v15;
  *(v18 + 56) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for TrainingLoadWorkoutsAddUpView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TrainingLoadWorkoutsAddUpView(uint64_t result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type TrainingLoadOnboardingCore and conformance TrainingLoadOnboardingCore(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of Range<AttributedString.Index>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation16AttributedStringV5IndexVGMd, &_sSny10Foundation16AttributedStringV5IndexVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Locale?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI6VStackVyAA9TupleViewVyAA06ScrollE0Vy07WorkoutB026TrainingLoadOnboardingCoreVG_AA6SpacerVtGGACyxGAA0E0AAWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.FontAttribute and conformance AttributeScopes.SwiftUIAttributes.FontAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute and conformance AttributeScopes.SwiftUIAttributes.ForegroundColorAttribute);
  }

  return result;
}

uint64_t StandardActivityPickerItemRow.configurationImage.getter()
{
  v0 = StandardActivityPickerItem.topSuggested.getter();
  if (v0)
  {
    v1 = v0;
    type metadata accessor for RaceWorkoutConfiguration();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for MultiSportWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        _HKWorkoutGoalType.symbolName.getter();
      }

      else
      {
        WorkoutConfiguration.displaySymbolName.getter();
      }
    }

    v3 = Image.init(_internalSystemName:)();

    return v3;
  }

  else
  {
    _HKWorkoutGoalType.symbolName.getter();

    return Image.init(_internalSystemName:)();
  }
}

uint64_t StandardActivityPickerItemRow.init(item:showActivityTypeRoom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  _sSo21FIUIFormattingManagerCMaTm_9(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_5(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8, &protocol conformance descriptor for FIUIFormattingManager);
  *(a5 + 32) = EnvironmentObject.init()();
  *(a5 + 40) = v10;
  type metadata accessor for ConfigurationNavigationModel(0);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  *(a5 + 48) = EnvironmentObject.init()();
  *(a5 + 56) = v11;
  _sSo21FIUIFormattingManagerCMaTm_9(0, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_5(&lazy protocol witness table cache variable for type HKHealthStore and conformance HKHealthStore, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8, &protocol conformance descriptor for HKHealthStore);
  *(a5 + 64) = EnvironmentObject.init()();
  *(a5 + 72) = v12;
  type metadata accessor for WorkoutConfigurationOccurrenceStore();
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type WorkoutConfigurationOccurrenceStore and conformance WorkoutConfigurationOccurrenceStore, MEMORY[0x277D7DD18], MEMORY[0x277D7DD10]);
  result = EnvironmentObject.init()();
  *(a5 + 80) = result;
  *(a5 + 88) = v14;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _sSo21FIUIFormattingManagerCMaTm_9(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_5(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _sSo21FIUIFormattingManagerCMaTm_9(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t StandardActivityPickerItemRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v38 = type metadata accessor for AccessibilityTraits();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AccessibilityChildBehavior();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA18_AspectRatioLayoutVGAA06_FrameT0VGAA08_PaddingT0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAKyAKyAxA016_ForegroundStyleP0VyA9_GGAA023AccessibilityAttachmentP0VGG_AA05PlainC5StyleVQo__Qo_A31_GtGG_AEyAGyAA4TextV_AKyAKyA42_ASyAQ5ScaleOGGA31_GSgtGGtGGGMd, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA18_AspectRatioLayoutVGAA06_FrameT0VGAA08_PaddingT0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAKyAKyAxA016_ForegroundStyleP0VyA9_GGAA023AccessibilityAttachmentP0VGG_AA05PlainC5StyleVQo__Qo_A31_GtGG_AEyAGyAA4TextV_AKyAKyA42_ASyAQ5ScaleOGGA31_GSgtGGtGGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA6VStackVyAA05TupleC0VyAA6HStackVyAMyAA15ModifiedContentVyAQyAA5GroupVyAA012_ConditionalO0VyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAQyAQyAwA18_AspectRatioLayoutVGAA06_FrameZ0VGAA08_PaddingZ0VGGGAYyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAQyAcAEAdEQrAG_tFQOyAcAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyAIyAQyAQyA2_AA016_ForegroundStyleV0VyA15_GGAA0g10AttachmentV0VGG_AA05PlainJ5StyleVQo__Qo_A31_GtGG_AKyAMyAA4TextV_AQyAQyA42_AYyAW5ScaleOGGA31_GSgtGGtGGG_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA6VStackVyAA05TupleC0VyAA6HStackVyAMyAA15ModifiedContentVyAQyAA5GroupVyAA012_ConditionalO0VyAQyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAQyAQyAwA18_AspectRatioLayoutVGAA06_FrameZ0VGAA08_PaddingZ0VGGGAYyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAQyAcAEAdEQrAG_tFQOyAcAE11buttonStyleyQrqd__AA09PrimitiveJ5StyleRd__lFQOyAIyAQyAQyA2_AA016_ForegroundStyleV0VyA15_GGAA0g10AttachmentV0VGG_AA05PlainJ5StyleVQo__Qo_A31_GtGG_AKyAMyAA4TextV_AQyAQyA42_AYyAW5ScaleOGGA31_GSgtGGtGGG_Qo_MR);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v11 = &v30 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAwA18_AspectRatioLayoutVGAA06_FrameZ0VGAA08_PaddingZ0VGGGAYyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyAeAEAfGQrAI_tFQOyAeAE11buttonStyleyQrqd__AA09PrimitiveL5StyleRd__lFQOyAKyACyACyA2_AA016_ForegroundStyleV0VyA15_GGAA0i10AttachmentV0VGG_AA05PlainL5StyleVQo__Qo_A31_GtGG_AMyAOyAA4TextV_ACyACyA42_AYyAW5ScaleOGGA31_GSgtGGtGGG_Qo_A31_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAwA18_AspectRatioLayoutVGAA06_FrameZ0VGAA08_PaddingZ0VGGGAYyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyAeAEAfGQrAI_tFQOyAeAE11buttonStyleyQrqd__AA09PrimitiveL5StyleRd__lFQOyAKyACyACyA2_AA016_ForegroundStyleV0VyA15_GGAA0i10AttachmentV0VGG_AA05PlainL5StyleVQo__Qo_A31_GtGG_AMyAOyAA4TextV_ACyACyA42_AYyAW5ScaleOGGA31_GSgtGGtGGG_Qo_A31_GMR);
  MEMORY[0x28223BE20](v37);
  v31 = &v30 - v12;
  v13 = v1[3];
  v42[2] = v1[2];
  v42[3] = v13;
  v14 = v1[5];
  v42[4] = v1[4];
  v42[5] = v14;
  v15 = v1[1];
  v42[0] = *v1;
  v42[1] = v15;
  v16 = swift_allocObject();
  v17 = v1[3];
  v16[3] = v1[2];
  v16[4] = v17;
  v18 = v1[5];
  v16[5] = v1[4];
  v16[6] = v18;
  v19 = v1[1];
  v16[1] = *v1;
  v16[2] = v19;
  v40 = v42;
  outlined init with copy of StandardActivityPickerItemRow(v42, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAA5GroupVyAA012_ConditionalH0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAIyAIyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAIyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA17_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAvA016_ForegroundStyleO0VyA7_GGAA023AccessibilityAttachmentO0VGG_AA16PlainButtonStyleVQo__Qo_A31_GtGG_ACyAEyAA4TextV_AIyAIyA42_AQyAO5ScaleOGGA31_GSgtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAA5GroupVyAA012_ConditionalH0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAIyAIyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAIyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA17_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAvA016_ForegroundStyleO0VyA7_GGAA023AccessibilityAttachmentO0VGG_AA16PlainButtonStyleVQo__Qo_A31_GtGG_ACyAEyAA4TextV_AIyAIyA42_AQyAO5ScaleOGGA31_GSgtGGtGGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAA5GroupVyAA012_ConditionalH0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAIyAIyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAIyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA17_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAvA016_ForegroundStyleO0VyA7_GGAA023AccessibilityAttachmentO0VGG_AA16PlainButtonStyleVQo__Qo_A31_GtGG_ACyAEyAA4TextV_AIyAIyA42_AQyAO5ScaleOGGA31_GSgtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAA5GroupVyAA012_ConditionalH0VyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAIyAIyAoA18_AspectRatioLayoutVGAA06_FrameS0VGAA08_PaddingS0VGGGAQyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAIyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA17_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAIyAIyAvA016_ForegroundStyleO0VyA7_GGAA023AccessibilityAttachmentO0VGG_AA16PlainButtonStyleVQo__Qo_A31_GtGG_ACyAEyAA4TextV_AIyAIyA42_AQyAO5ScaleOGGA31_GSgtGGtGGMR, MEMORY[0x277CE1198]);
  Button.init(action:label:)();
  static AccessibilityChildBehavior.combine.getter();
  v20 = lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA18_AspectRatioLayoutVGAA06_FrameT0VGAA08_PaddingT0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAKyAKyAxA016_ForegroundStyleP0VyA9_GGAA023AccessibilityAttachmentP0VGG_AA05PlainC5StyleVQo__Qo_A31_GtGG_AEyAGyAA4TextV_AKyAKyA42_ASyAQ5ScaleOGGA31_GSgtGGtGGGMd, &_s7SwiftUI6ButtonVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalI0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA18_AspectRatioLayoutVGAA06_FrameT0VGAA08_PaddingT0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0F0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA09PrimitiveC5StyleRd__lFQOyACyAKyAKyAxA016_ForegroundStyleP0VyA9_GGAA023AccessibilityAttachmentP0VGG_AA05PlainC5StyleVQo__Qo_A31_GtGG_AEyAGyAA4TextV_AKyAKyA42_ASyAQ5ScaleOGGA31_GSgtGGtGGGMR, MEMORY[0x277CDF028]);
  View.accessibilityElement(children:)();
  (*(v34 + 8))(v5, v35);
  (*(v7 + 8))(v9, v6);
  static AccessibilityTraits.isSelected.getter();
  v41[0] = v6;
  v41[1] = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v31;
  v23 = v32;
  MEMORY[0x20F30AA50](v3, v32, OpaqueTypeConformance2);
  (*(v36 + 8))(v3, v38);
  (*(v33 + 8))(v11, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20CB5DA80;
  *(v24 + 32) = 0xD000000000000016;
  *(v24 + 40) = 0x800000020CB994A0;
  v25 = StandardActivityPickerItem.activityType.getter();
  v26 = FIUIWorkoutActivityType.accessibilityIdentifierString.getter();
  v28 = v27;

  *(v24 + 48) = v26;
  *(v24 + 56) = v28;
  v41[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  BidirectionalCollection<>.joined(separator:)();

  ModifiedContent<>.accessibilityIdentifier(_:)();

  return outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v22, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAwA18_AspectRatioLayoutVGAA06_FrameZ0VGAA08_PaddingZ0VGGGAYyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyAeAEAfGQrAI_tFQOyAeAE11buttonStyleyQrqd__AA09PrimitiveL5StyleRd__lFQOyAKyACyACyA2_AA016_ForegroundStyleV0VyA15_GGAA0i10AttachmentV0VGG_AA05PlainL5StyleVQo__Qo_A31_GtGG_AMyAOyAA4TextV_ACyACyA42_AYyAW5ScaleOGGA31_GSgtGGtGGG_Qo_A31_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA6ButtonVyAA6VStackVyAA05TupleE0VyAA6HStackVyAOyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAwA18_AspectRatioLayoutVGAA06_FrameZ0VGAA08_PaddingZ0VGGGAYyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyAeAEAfGQrAI_tFQOyAeAE11buttonStyleyQrqd__AA09PrimitiveL5StyleRd__lFQOyAKyACyACyA2_AA016_ForegroundStyleV0VyA15_GGAA0i10AttachmentV0VGG_AA05PlainL5StyleVQo__Qo_A31_GtGG_AMyAOyAA4TextV_ACyACyA42_AYyAW5ScaleOGGA31_GSgtGGtGGG_Qo_A31_GMR);
}

void closure #1 in StandardActivityPickerItemRow.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = StandardActivityPickerItem.topSuggested.getter();
  if (v6)
  {
    v7 = *(a1 + 48);
    if (!v7)
    {
      type metadata accessor for ConfigurationNavigationModel(0);
      _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
      EnvironmentObject.error()();
      __break(1u);
      return;
    }

    v8 = v6;
    swift_beginAccess();
    v9 = *(v7 + 16);

    v10 = v9;
    LOBYTE(v9) = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(v7 + 16);
    dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

    v13 = *(v7 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

    v13(v8, v11);
  }

  else
  {
    v14 = StandardActivityPickerItem.activityType.getter();
    v15 = [v14 supportsTransientOpenGoal];

    if (v15)
    {
      return;
    }

    static WOLog.activityPicker.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20C66F000, v16, v17, "No stored workout configurations and transient open goals not supported. Pushing directly into the activity room.", v18, 2u);
      MEMORY[0x20F30E080](v18, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v20 = *(a1 + 8);
    v19 = *(a1 + 16);
    v21 = *(a1 + 24);
    v28 = v20;
    v22[0] = v20;
    v22[1] = v19;
    v23 = v21;
    outlined init with copy of Transaction(&v28, v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
    MEMORY[0x20F30B100](&v27);
    v25[0] = v20;
    v25[1] = v19;
    v26 = v21;
    v24 = (v27 & 1) == 0;
    Binding.wrappedValue.setter();
    outlined destroy of Transaction(&v28);
  }
}

uint64_t closure #2 in StandardActivityPickerItemRow.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.leading.getter();
  if (one-time initialization token for iconToNameSpacing != -1)
  {
    v8 = v4;
    swift_once();
    v4 = v8;
  }

  v5 = static RowLayoutConstants.iconToNameSpacing;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAA5GroupVyAA012_ConditionalK0VyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAMyAMyAMyAsA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGAUyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAMyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA21_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAMyAMyAzA016_ForegroundStyleR0VyA11_GGAA023AccessibilityAttachmentR0VGG_AA16PlainButtonStyleVQo__Qo_A35_GtGG_AA0F0VyAIyAA4TextV_AMyAMyA48_AUyAS5ScaleOGGA35_GSgtGGtGGMd, ":Y\t");
  return closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(a1, a2 + *(v6 + 44));
}

uint64_t closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  *v15 = static VerticalAlignment.top.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAxA016_ForegroundStyleQ0VyA9_GGAA023AccessibilityAttachmentQ0VGG_AA16PlainButtonStyleVQo__Qo_A33_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5GroupVyAA012_ConditionalJ0VyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAKyAKyAqA012_AspectRatioG0VGAA06_FrameG0VGAA08_PaddingG0VGGGASyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAKyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA19_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAKyAKyAxA016_ForegroundStyleQ0VyA9_GGAA023AccessibilityAttachmentQ0VGG_AA16PlainButtonStyleVQo__Qo_A33_GtGGMR);
  closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(a1, &v15[*(v16 + 44)]);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAkA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentO0VGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA4TextV_AA15ModifiedContentVyAMyAkA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentO0VGSgtGGMR);
  closure #2 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(a1, &v9[*(v17 + 44)]);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>(v15, v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMR);
  outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v9, v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>(v12, a2, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMR);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGG_AA6VStackVyAEyAA4TextV_AGyAGyA42_AOyAM5ScaleOGGA29_GSgtGGtMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGG_AA6VStackVyAEyAA4TextV_AGyAGyA42_AOyAM5ScaleOGGA29_GSgtGGtMR);
  outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v6, a2 + *(v18 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMR);
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v9, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMR);
  outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v15, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMR);
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA4TextV_AA15ModifiedContentVyAIyAgA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentL0VGSgtGGMR);
  return outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5GroupVyAA012_ConditionalG0VyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAGyAGyAmA18_AspectRatioLayoutVGAA06_FrameR0VGAA08_PaddingR0VGGGAOyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA15_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyAGyAGyAtA016_ForegroundStyleN0VyA5_GGAA023AccessibilityAttachmentN0VGG_AA16PlainButtonStyleVQo__Qo_A29_GtGGMR);
}

void closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityChildBehavior();
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x28223BE20](v4);
  v80 = &KeyPath - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for PlainButtonStyle();
  v74 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v7 = &KeyPath - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA5ColorVGGAA023AccessibilityAttachmentJ0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA5ColorVGGAA023AccessibilityAttachmentJ0VGGMR);
  v69 = *(v8 - 8);
  v70 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &KeyPath - v9;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundeN0VyAA5ColorVGGAA023AccessibilityAttachmentN0VGG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA15ModifiedContentVyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundeN0VyAA5ColorVGGAA023AccessibilityAttachmentN0VGG_AA05PlaingE0VQo_MR);
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v12 = &KeyPath - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA15ModifiedContentVyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundkT0VyAA5ColorVGGAA0g10AttachmentT0VGG_AA05PlainmK0VQo__Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonK0Rd__lFQOyAA0M0VyAA15ModifiedContentVyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundkT0VyAA5ColorVGGAA0g10AttachmentT0VGG_AA05PlainmK0VQo__Qo_MR);
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = &KeyPath - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMR);
  MEMORY[0x28223BE20](v83);
  v15 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &KeyPath - v17;
  closure #1 in closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(v110);
  v79 = *a1;
  v19 = StandardActivityPickerItem.topSuggested.getter();
  v84 = v18;
  v85 = a2;
  v71 = v15;
  if (!v19)
  {
    v21 = [objc_opt_self() keyColors];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 nonGradientTextColor];

      if (v23)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v20 = v19;
  WorkoutConfiguration.displayColor.getter();

LABEL_5:
  v68 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v90 = v110[4];
  v91 = v110[5];
  v92 = v110[6];
  LOWORD(v93) = v111;
  v86 = v110[0];
  v87 = v110[1];
  v88 = v110[2];
  v89 = v110[3];
  v24 = swift_allocObject();
  v25 = a1[3];
  v24[3] = a1[2];
  v24[4] = v25;
  v26 = a1[5];
  v24[5] = a1[4];
  v24[6] = v26;
  v27 = a1[1];
  v24[1] = *a1;
  v24[2] = v27;
  MEMORY[0x28223BE20](v24);
  v28 = a1;
  outlined init with copy of StandardActivityPickerItemRow(a1, &v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v29 = lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA5ColorVGGAA023AccessibilityAttachmentJ0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleJ0VyAA5ColorVGGAA023AccessibilityAttachmentJ0VGGMR, MEMORY[0x277CDF028]);
  v30 = _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v31 = v70;
  v32 = v78;
  View.buttonStyle<A>(_:)();
  (*(v74 + 8))(v7, v32);
  (*(v69 + 8))(v10, v31);
  v33 = v80;
  static AccessibilityChildBehavior.ignore.getter();
  *&v99 = v31;
  *(&v99 + 1) = v32;
  *&v100 = v29;
  *(&v100 + 1) = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v72;
  v36 = v76;
  View.accessibilityElement(children:)();
  (*(v81 + 8))(v33, v82);
  (*(v73 + 8))(v12, v36);
  *&v99 = v36;
  *(&v99 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v71;
  v38 = v77;
  View.accessibilitySortPriority(_:)();
  (*(v75 + 8))(v35, v38);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v39 = WorkoutUIBundle.super.isa;
  v112._object = 0xE000000000000000;
  v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v40.value._object = 0xEB00000000656C62;
  v41._object = 0x800000020CBA0E90;
  v41._countAndFlagsBits = 0xD00000000000001CLL;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v112._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v41, v40, v39, v42, v112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20CB5DA70;
  v44 = StandardActivityPickerItem.activityType.getter();
  v45 = [v44 localizedName];

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  *(v43 + 56) = MEMORY[0x277D837D0];
  *(v43 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v43 + 32) = v46;
  *(v43 + 40) = v48;
  v49 = String.init(format:_:)();
  v51 = v50;

  *&v94[0] = v49;
  *(&v94[0] + 1) = v51;
  v52 = swift_allocObject();
  v53 = v28[3];
  v52[3] = v28[2];
  v52[4] = v53;
  v54 = v28[5];
  v52[5] = v28[4];
  v52[6] = v54;
  v55 = v28[1];
  v52[1] = *v28;
  v52[2] = v55;
  outlined init with copy of StandardActivityPickerItemRow(v28, &v99);
  lazy protocol witness table accessor for type String and conformance String();
  v56 = v84;
  ModifiedContent<>.accessibilityAction<A>(named:_:)();

  outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v37, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>(v56, v37, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMR);
  v95 = v90;
  v96 = v91;
  v97 = v92;
  v94[0] = v86;
  v94[1] = v87;
  v94[2] = v88;
  v94[3] = v89;
  v58 = KeyPath;
  v57 = v68;
  *&v98[0] = v93;
  *(&v98[0] + 1) = KeyPath;
  *&v98[1] = v68;
  BYTE8(v98[1]) = 1;
  v59 = v86;
  v60 = v87;
  v61 = v89;
  v62 = v85;
  *(v85 + 32) = v88;
  *(v62 + 48) = v61;
  *v62 = v59;
  *(v62 + 16) = v60;
  v63 = v95;
  v64 = v96;
  *(v62 + 121) = *(v98 + 9);
  v65 = v98[0];
  *(v62 + 96) = v97;
  *(v62 + 112) = v65;
  *(v62 + 64) = v63;
  *(v62 + 80) = v64;
  *(v62 + 144) = 0;
  *(v62 + 152) = 1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA11_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyApA016_ForegroundStyleK0VyA1_GGAA023AccessibilityAttachmentK0VGG_AA16PlainButtonStyleVQo__Qo_A25_GtMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVG_AA6SpacerVACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyA11_AAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAA6ButtonVyACyACyApA016_ForegroundStyleK0VyA1_GGAA023AccessibilityAttachmentK0VGG_AA16PlainButtonStyleVQo__Qo_A25_GtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>(v37, v62 + *(v66 + 64), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMR);
  outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v94, &v99, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMR);
  outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v56, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMR);
  outlined destroy of ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>(v37, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA0O0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA011_ForegroundmT0VyAA5ColorVGGAA0i10AttachmentT0VGG_AA05PlainoM0VQo__Qo_A2_GMR);
  v103 = v90;
  v104 = v91;
  v105 = v92;
  v99 = v86;
  v100 = v87;
  v101 = v88;
  v102 = v89;
  v106 = v93;
  v107 = v58;
  v108 = v57;
  v109 = 1;
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(&v99, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGACyACyACyAiA18_AspectRatioLayoutVGAA06_FrameO0VGAA08_PaddingO0VGGGAKyAA5ColorVSgGGAA17_FlipForRTLEffectVGMR);
}

void closure #1 in closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = StandardActivityPickerItem.activityType.getter();
  v10 = [v9 symbolName];

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = Image.init(_internalSystemName:)();
    if (one-time initialization token for displayImageSize != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Font.Design();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    v13 = static Font.system(size:weight:design:)();
    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v8, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    KeyPath = swift_getKeyPath();
    *&v34[5] = v29;
    v35 = v30;
    *v36 = v31[0];
    *&v36[9] = *(v31 + 9);
    *&v34[1] = v27;
    v41 = 0;
    v32 = v11;
    v33 = KeyPath;
    v34[0] = v13;
    *&v34[3] = v28;
    v37 = 0;
    goto LABEL_7;
  }

  v15 = StandardActivityPickerItem.activityType.getter();
  v16 = FIUIStaticScalableWorkoutIconImageWithPadding();

  if (v16)
  {
    v17 = [v16 imageWithRenderingMode_];

    Image.init(uiImage:)();
    FIUISizeForIconSize();
    (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
    v18 = Image.resizable(capInsets:resizingMode:)();
    (*(v3 + 8))(v5, v2);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    v40 = 1;
    *&v39[6] = v27;
    *&v39[22] = v28;
    *&v39[38] = v29;
    v19 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v41 = 0;
    v38 = 1;
    v32 = v18;
    v33 = 0;
    LOWORD(v34[0]) = 1;
    *(v34 + 2) = *v39;
    *(&v34[2] + 2) = *&v39[16];
    *(&v34[4] + 2) = *&v39[32];
    v34[6] = *&v39[46];
    LOBYTE(v35) = v19;
    *(&v35 + 1) = v20;
    *v36 = v21;
    *&v36[8] = v22;
    *&v36[16] = v23;
    v36[24] = 0;
    v37 = 1;
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGAA08_PaddingH0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v24 = v47;
    *(a1 + 64) = v46;
    *(a1 + 80) = v24;
    *(a1 + 96) = v48;
    *(a1 + 112) = v49;
    v25 = v43;
    *a1 = v42;
    *(a1 + 16) = v25;
    v26 = v45;
    *(a1 + 32) = v44;
    *(a1 + 48) = v26;
    return;
  }

  __break(1u);
}

void closure #3 in closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v22 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v6 = type metadata accessor for SymbolRenderingMode();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = Image.symbolRenderingMode(_:)();

  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v5, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  if (one-time initialization token for ellipsisSize != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Font.Design();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  v9 = static Font.system(size:weight:design:)();
  outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v2, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  v11 = StandardActivityPickerItem.topSuggested.getter();
  if (v11)
  {
    v12 = v11;
    WorkoutConfiguration.displayColor.getter();

LABEL_7:
    v16 = Color.init(uiColor:)();
    v22[2] = v7;
    v22[3] = KeyPath;
    v22[4] = v9;
    v22[5] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20CB5EA80;
    *(v17 + 32) = 0xD000000000000016;
    *(v17 + 40) = 0x800000020CB994A0;
    v18 = StandardActivityPickerItem.activityType.getter();
    v19 = FIUIWorkoutActivityType.accessibilityIdentifierString.getter();
    v21 = v20;

    *(v17 + 48) = v19;
    *(v17 + 56) = v21;
    strcpy((v17 + 64), "ConfigButton");
    *(v17 + 77) = 0;
    *(v17 + 78) = -5120;
    v22[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    BidirectionalCollection<>.joined(separator:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityIdentifier(_:)();

    return;
  }

  v13 = [objc_opt_self() keyColors];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 nonGradientTextColor];

    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double closure #2 in closure #1 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *(a1 + 24);
  v11 = v2;
  v7 = v2;
  v8 = v1;
  v9 = v3;
  outlined init with copy of Transaction(&v11, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  MEMORY[0x20F30B100](&v10);
  v5[0] = v2;
  v5[1] = v1;
  v6 = v3;
  Binding.wrappedValue.setter();
  outlined destroy of Transaction(&v11);

  return result;
}

void closure #2 in closure #1 in closure #2 in StandardActivityPickerItemRow.body.getter(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v108 = a2;
  v3 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v3 - 8);
  v101 = &v93[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
  MEMORY[0x28223BE20](v98);
  v99 = &v93[-v5];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGMR);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v97 = &v93[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v93[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v106 = &v93[-v10];
  v11 = type metadata accessor for Font.Leading();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v93[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = a1;
  v15 = StandardActivityPickerItem.activityType.getter();
  v16 = [v15 localizedName];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *&v109 = v17;
  *(&v109 + 1) = v19;
  v96 = lazy protocol witness table accessor for type String and conformance String();
  v20 = Text.init<A>(_:)();
  v22 = v21;
  v24 = v23;
  static Font.body.getter();
  (*(v12 + 104))(v14, *MEMORY[0x277CE0A10], v11);
  Font.leading(_:)();

  (*(v12 + 8))(v14, v11);
  v25 = Text.font(_:)();
  v27 = v26;
  v29 = v28;

  outlined consume of Text.Storage(v20, v22, v24 & 1);

  static Font.Weight.bold.getter();
  v30 = Text.fontWeight(_:)();
  v102 = v31;
  LODWORD(v33) = v32;
  v35 = v34;
  outlined consume of Text.Storage(v25, v27, v29 & 1);

  v36 = StandardActivityPickerItem.topSuggested.getter();
  v103 = v30;
  if (!v36)
  {
    v64 = 1;
    v65 = v106;
LABEL_14:
    (*(v104 + 56))(v65, v64, 1, v105);
    v85 = v107;
    outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v65, v107, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMR);
    v86 = v108;
    v87 = v103;
    v88 = v102;
    *v108 = v103;
    v86[1] = v88;
    v89 = v33 & 1;
    *(v86 + 16) = v89;
    v86[3] = v35;
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAcA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgtMd, &_s7SwiftUI4TextV_AA15ModifiedContentVyAEyAcA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgtMR);
    outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v85, v86 + *(v90 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMR);
    outlined copy of Text.Storage(v87, v88, v89);

    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v65, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMR);
    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v85, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGSgMR);
    outlined consume of Text.Storage(v87, v88, v89);

    return;
  }

  v94 = v33;

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
  v38 = v100;
  v39 = v100[3];
  v111 = v100[2];
  v112 = v39;
  v40 = v100[5];
  v113 = v100[4];
  v114 = v40;
  v41 = v100[1];
  v109 = *v100;
  v110 = v41;
  StandardActivityPickerItemRow.configurationImage.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

  v42._countAndFlagsBits = 32;
  v42._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v42);
  v43 = *(v38 + 4);
  if (!v43)
  {
    goto LABEL_22;
  }

  v44 = v43;
  v45 = dispatch thunk of StandardActivityPickerItem.detail(formattingManager:)();
  v47 = v46;
  v100 = v44;

  v48._countAndFlagsBits = v45;
  v48._object = v47;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v48);

  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
  LocalizedStringKey.init(stringInterpolation:)();
  v50 = Text.init(_:tableName:bundle:comment:)();
  v52 = v51;
  v54 = v53;
  v55 = StandardActivityPickerItem.topSuggested.getter();
  v95 = v35;
  if (!v55)
  {
    goto LABEL_7;
  }

  v56 = v55;
  type metadata accessor for IntervalWorkoutConfiguration();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for GoalWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        v91 = GoalWorkoutConfiguration.goal.getter();
        v92 = [v91 goalTypeIdentifier];

        if (!v92)
        {
          goto LABEL_7;
        }
      }

      else
      {
      }

      static Font.body.getter();
      Font.lowercaseSmallCaps()();

      goto LABEL_8;
    }
  }

LABEL_7:
  static Font.body.getter();
LABEL_8:
  v57 = Text.font(_:)();
  v59 = v58;
  v61 = v60;

  outlined consume of Text.Storage(v50, v52, v54 & 1);

  v62 = StandardActivityPickerItem.topSuggested.getter();
  if (v62)
  {
    v63 = v62;
    WorkoutConfiguration.displayColor.getter();

LABEL_13:
    Color.init(uiColor:)();
    v69 = Text.foregroundColor(_:)();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    outlined consume of Text.Storage(v57, v59, v61 & 1);

    v76 = v99;
    v77 = &v99[*(v98 + 36)];
    v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v79 = *MEMORY[0x277CE1050];
    v80 = type metadata accessor for Image.Scale();
    (*(*(v80 - 8) + 104))(v77 + v78, v79, v80);
    *v77 = swift_getKeyPath();
    *v76 = v69;
    *(v76 + 8) = v71;
    *(v76 + 16) = v73 & 1;
    *(v76 + 24) = v75;
    v81 = v100;
    v82 = dispatch thunk of StandardActivityPickerItem.detail(formattingManager:)();
    v33 = v83;

    *&v109 = v82;
    *(&v109 + 1) = v33;
    lazy protocol witness table accessor for type ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    v84 = v97;
    View.accessibilityLabel<A>(_:)();

    outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(v76, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
    v65 = v106;
    outlined init with take of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>(v84, v106);
    v64 = 0;
    v35 = v95;
    LOBYTE(v33) = v94;
    goto LABEL_14;
  }

  v66 = [objc_opt_self() keyColors];
  if (v66)
  {
    v67 = v66;
    v68 = [v66 nonGradientTextColor];

    if (v68)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_22:
  _sSo21FIUIFormattingManagerCMaTm_9(0, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
  _sSo21FIUIFormattingManagerCAB7Combine16ObservableObject9WorkoutUIWlTm_5(&lazy protocol witness table cache variable for type FIUIFormattingManager and conformance FIUIFormattingManager, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8, &protocol conformance descriptor for FIUIFormattingManager);
  EnvironmentObject.error()();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for StandardActivityPickerItemRow(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t storeEnumTagSinglePayload for StandardActivityPickerItemRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAA023AccessibilityAttachmentI0VGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGAA023AccessibilityAttachmentI0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_6(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>, VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroyTm_70()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>, _PaddingLayout>>>, _EnvironmentKeyWritingModifier<Color?>>, _FlipForRTLEffect>, Spacer, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with copy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of VStack<TupleView<(Text, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>?)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for EffortGraphLayout(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EffortGraphLayout(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

Swift::Double __swiftcall EffortGraphLayout.xStartForLevel(_:)(Swift::Int a1)
{
  v2 = 3.0;
  if ((a1 - 1) <= 7)
  {
    v2 = dbl_20CB83488[a1 - 1];
  }

  return (a1 + -1.0) * ((*v1 + v1[2] * -3.0) / 10.0) + v1[2] * v2;
}

double EffortGraphLayout.horizontalUnitDistance(level:)(uint64_t a1)
{
  v2 = 3.0;
  if ((a1 - 1) <= 7)
  {
    v2 = dbl_20CB83488[a1 - 1];
  }

  return ((a1 + -1.0) * ((*v1 - v1[2] * 3.0) / 10.0) + v1[2] * v2) / (v1[2] * 3.0 + (*v1 - v1[2] * 3.0) / 10.0 * 9.0);
}

uint64_t static RaceChartMarkProvider.onRoutePositionMark(x:chartProperties:performanceColor:pointOuterColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v99 = a3;
  v90 = a2;
  v112 = a4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo__AcAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_AE9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAE4ViewRd__lFQOyAcAE6symbolA2_Qrqd__yXE_tAEA1_Rd__lFQOyAA05PointL0V_AE08ModifiedC0VyAE04FilljY0VyAE6CircleVAmE0hjY0VyA10_AmE05EmptyY0VGGAE12_FrameLayoutVGQo__A6_yAE5ImageVAE011_ForegroundE8ModifierVyAMGGQo_tMd, &_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo__AcAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_AE9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAE4ViewRd__lFQOyAcAE6symbolA2_Qrqd__yXE_tAEA1_Rd__lFQOyAA05PointL0V_AE08ModifiedC0VyAE04FilljY0VyAE6CircleVAmE0hjY0VyA10_AmE05EmptyY0VGGAE12_FrameLayoutVGQo__A6_yAE5ImageVAE011_ForegroundE8ModifierVyAMGGQo_tMR);
  MEMORY[0x28223BE20](v111);
  v110 = v84 - v7;
  v108 = type metadata accessor for AnnotationPosition();
  v106 = *(v108 - 1);
  MEMORY[0x28223BE20](v108);
  v104 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for PointMark();
  v98 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v96 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE6symbolADQrqd__yXE_t7SwiftUI4ViewRd__lFQOyAA9PointMarkV_AE08ModifiedC0VyAE09FillShapeG0VyAE6CircleVAE5ColorVAE06StrokelG0VyAnpE05EmptyG0VGGAE12_FrameLayoutVGQo_Md, &_s6Charts12ChartContentPAAE6symbolADQrqd__yXE_t7SwiftUI4ViewRd__lFQOyAA9PointMarkV_AE08ModifiedC0VyAE09FillShapeG0VyAE6CircleVAE5ColorVAE06StrokelG0VyAnpE05EmptyG0VGGAE12_FrameLayoutVGQo_MR);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = v84 - v10;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_7SwiftUI9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAK4ViewRd__lFQOyAcAE6symbolASQrqd__yXE_tAkRRd__lFQOyAA9PointMarkV_AK08ModifiedC0VyAK09FillShapeQ0VyAK6CircleVAK5ColorVAK06StrokewQ0VyA_A1_AK05EmptyQ0VGGAK12_FrameLayoutVGQo__AWyAK5ImageVAK24_ForegroundStyleModifierVyA1_GGQo_Md, &_s6Charts12ChartContentPAAE10annotation8position9alignment7spacing7contentQrAA18AnnotationPositionV_7SwiftUI9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAK4ViewRd__lFQOyAcAE6symbolASQrqd__yXE_tAkRRd__lFQOyAA9PointMarkV_AK08ModifiedC0VyAK09FillShapeQ0VyAK6CircleVAK5ColorVAK06StrokewQ0VyA_A1_AK05EmptyQ0VGGAK12_FrameLayoutVGQo__AWyAK5ImageVAK24_ForegroundStyleModifierVyA1_GGQo_MR);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v115 = v84 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd, &_s6Charts14PlottableValueVySdGMR);
  MEMORY[0x28223BE20](v14 - 8);
  v84[1] = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v84 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v84 - v20;
  v85 = type metadata accessor for RuleMark();
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v23 = v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_MR);
  v93 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v25 = v84 - v24;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_Md, &_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_MR);
  v97 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v116 = v84 - v28;
  v95 = type metadata accessor for RaceChartPoint();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v30 = v84 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84[0] = a1;
  RaceElevationChartProperties.clostestChartPointFor(_:)(v30, a5);
  RaceChartPoint.odometer_m.getter();
  v32 = v31;
  v33 = *(a1 + 48);
  RaceChartPoint.altitude_m.getter();
  v35 = v34;
  v89 = "l.decrease.circle.fill";
  LocalizedStringKey.init(stringLiteral:)();
  v121 = v32;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v121 = v33;
  static PlottableValue.value(_:_:)();

  v88 = "RACE_CHART_MARK_ODOMETER";
  LocalizedStringKey.init(stringLiteral:)();
  v121 = v35;
  static PlottableValue.value(_:_:)();

  v91 = v21;
  v92 = v18;
  RuleMark.init<A, B>(x:yStart:yEnd:)();
  v121 = v90;
  v36 = MEMORY[0x277CE0F78];
  v37 = MEMORY[0x277CBB450];
  v38 = MEMORY[0x277CE0F60];
  v39 = v85;
  ChartContent.foregroundStyle<A>(_:)();
  (*(v86 + 8))(v23, v39);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v117 = v39;
  v118 = v36;
  v119 = v37;
  v120 = v38;
  swift_getOpaqueTypeConformance2();
  v40 = v87;
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(&v121);
  (*(v93 + 1))(v25, v40);
  v41 = *(v84[0] + 16);
  RaceChartPoint.odometer_m.getter();
  v43 = v42;
  v93 = v30;
  RaceChartPoint.altitude_m.getter();
  v45 = v44;
  type metadata accessor for FIUIWorkoutActivityType();
  v46 = static FIUIWorkoutActivityType.outdoorRun.getter();
  LOBYTE(v37) = static NSObject.== infix(_:_:)();

  if (v37)
  {
    v47 = 0xE300000000000000;
    v48 = 7238994;
LABEL_7:
    v53 = *static RacePlatterConstants.activityMarkerSize;
    v54 = unk_27C7EF280;
    v117 = 0x74756F5265636152;
    v118 = 0xEA00000000005F65;

    MEMORY[0x20F30BC00](v48, v47);

    MEMORY[0x20F30BC00](95, 0xE100000000000000);
    MEMORY[0x20F30BC00](v53, v54);

    v87 = Image.init(_:bundle:)();
    LocalizedStringKey.init(stringLiteral:)();
    v117 = v43;
    static PlottableValue.value(_:_:)();

    LocalizedStringKey.init(stringLiteral:)();
    v117 = v45;
    static PlottableValue.value(_:_:)();

    v55 = v96;
    v56 = PointMark.init<A, B>(x:y:)();
    MEMORY[0x28223BE20](v56);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA13FillShapeViewVyAA6CircleVAA5ColorVAA06StrokefG0VyAgiA05EmptyG0VGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA13FillShapeViewVyAA6CircleVAA5ColorVAA06StrokefG0VyAgiA05EmptyG0VGGAA12_FrameLayoutVGMR);
    v58 = lazy protocol witness table accessor for type ModifiedContent<FillShapeView<Circle, Color, StrokeShapeView<Circle, Color, EmptyView>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    v59 = v101;
    v60 = v100;
    ChartContent.symbol<A>(symbol:)();
    v61 = (*(v98 + 8))(v55, v60);
    v99 = v84;
    MEMORY[0x28223BE20](v61);
    v62 = v104;
    static AnnotationPosition.automatic.getter();
    static Alignment.center.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA24_ForegroundStyleModifierVyAA5ColorVGGMR);
    v117 = v60;
    v118 = v57;
    v119 = MEMORY[0x277CBB468];
    v120 = v58;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    v63 = v115;
    v64 = v103;
    ChartContent.annotation<A>(position:alignment:spacing:content:)();

    (*(v106 + 8))(v62, v108);
    (*(v102 + 8))(v59, v64);
    v65 = v97;
    v108 = *(v97 + 16);
    v67 = v113;
    v66 = v114;
    v108(v113, v116, v114);
    v68 = v107;
    v69 = *(v107 + 16);
    v70 = v105;
    v71 = v109;
    v69(v105, v63, v109);
    v72 = v110;
    v108(v110, v67, v66);
    v73 = v111;
    v74 = *(v111 + 48);
    v69(&v72[v74], v70, v71);
    v75 = v112;
    v76 = v114;
    (*(v65 + 32))(v112, v72, v114);
    (*(v68 + 32))(v75 + *(v73 + 48), &v72[v74], v71);
    v77 = *(v68 + 8);
    v77(v115, v71);
    v78 = *(v65 + 8);
    v78(v116, v76);
    (*(v94 + 8))(v93, v95);
    v77(v70, v71);
    return (v78)(v113, v76);
  }

  v49 = static FIUIWorkoutActivityType.outdoorCycle.getter();
  v50 = static NSObject.== infix(_:_:)();

  if (v50)
  {
    v47 = 0xE500000000000000;
    v48 = 0x656C637943;
    goto LABEL_7;
  }

  v51 = static FIUIWorkoutActivityType.outdoorWheelchairRun.getter();
  v52 = static NSObject.== infix(_:_:)();

  if (v52)
  {
    v47 = 0xE600000000000000;
    v48 = 0x6E61636C7556;
    goto LABEL_7;
  }

  v117 = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v117 = 0xD00000000000002BLL;
  v118 = 0x800000020CBA0F40;
  v80 = [v41 description];
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  MEMORY[0x20F30BC00](v81, v83);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #2 in static RaceChartMarkProvider.elevationFor(_:betweenStart:end:)(uint64_t a1, uint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeG0Rd__lFQOyAA8AreaMarkV_AG5ColorVQo__AeAEAFyQrqd__AgHRd__lFQOyAeAE04lineG0yQrAG06StrokeG0VFQOyAA04LineL0V_Qo__ALQo_QPGMd, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeG0Rd__lFQOyAA8AreaMarkV_AG5ColorVQo__AeAEAFyQrqd__AgHRd__lFQOyAeAE04lineG0yQrAG06StrokeG0VFQOyAA04LineL0V_Qo__ALQo_QPGMR);
  lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
  return Plot.init(content:)();
}

uint64_t closure #1 in closure #2 in static RaceChartMarkProvider.elevationFor(_:betweenStart:end:)@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  v59 = a2;
  v73 = a3;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8AreaMarkV_AE5ColorVQo__AcAEADyQrqd__AeFRd__lFQOyAcAE04lineE0yQrAE06StrokeE0VFQOyAA04LineJ0V_Qo__AJQo_tMd, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8AreaMarkV_AE5ColorVQo__AcAEADyQrqd__AeFRd__lFQOyAcAE04lineE0yQrAE06StrokeE0VFQOyAA04LineJ0V_Qo__AJQo_tMR) - 8;
  MEMORY[0x28223BE20](v72);
  v71 = &v52 - v5;
  v65 = type metadata accessor for LineMark();
  v66 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_Md, &_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_MR);
  v70 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v64 = &v52 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE04lineE0yQrAE06StrokeE0VFQOyAA8LineMarkV_Qo__AE5ColorVQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE04lineE0yQrAE06StrokeE0VFQOyAA8LineMarkV_Qo__AE5ColorVQo_MR);
  v80 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v52 - v10;
  v78 = type metadata accessor for Color.RGBColorSpace();
  v82 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v75 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySSGMd, &_s6Charts14PlottableValueVySSGMR);
  MEMORY[0x28223BE20](v12 - 8);
  v74 = &v52 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd, &_s6Charts14PlottableValueVySdGMR);
  MEMORY[0x28223BE20](v14 - 8);
  v57 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v54 = &v52 - v18;
  v60 = type metadata accessor for AreaMark();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v53 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8AreaMarkV_AE5ColorVQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8AreaMarkV_AE5ColorVQo_MR);
  v77 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v76 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v81 = &v52 - v22;
  v58 = "l.decrease.circle.fill";
  LocalizedStringKey.init(stringLiteral:)();
  v55 = a1;
  RaceChartPoint.odometer_m.getter();
  v86 = v23;
  static PlottableValue.value(_:_:)();

  v56 = "RACE_CHART_MARK_ODOMETER";
  LocalizedStringKey.init(stringLiteral:)();
  v86 = *(v59 + 6);
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.altitude_m.getter();
  v86 = v24;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v86 = 0;
  v87 = 0xE000000000000000;
  MEMORY[0x20F30BC00](0x6F69746176656C45, 0xEA0000000000206ELL);
  Double.write<A>(to:)();
  static PlottableValue.value(_:_:)();

  v25 = v53;
  AreaMark.init<A, B, C>(x:yStart:yEnd:series:)();
  LODWORD(v57) = *MEMORY[0x277CE0EE0];
  v26 = *(v82 + 104);
  v82 += 104;
  v59 = v26;
  (v26)(v75);
  v86 = Color.init(_:red:green:blue:opacity:)();
  v27 = v60;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v61 + 8))(v25, v27);
  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.odometer_m.getter();
  v86 = v28;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.altitude_m.getter();
  v86 = v29;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v86 = 0;
  v87 = 0xE000000000000000;
  MEMORY[0x20F30BC00](0x6F69746176656C45, 0xEA0000000000206ELL);
  Double.write<A>(to:)();
  static PlottableValue.value(_:_:)();

  v30 = v63;
  LineMark.init<A, B, C>(x:y:series:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v31 = MEMORY[0x277CBB438];
  v32 = v64;
  v33 = v65;
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(&v86);
  (*(v66 + 8))(v30, v33);
  (v59)(v75, v57, v78);
  v34 = Color.init(_:red:green:blue:opacity:)();
  v84 = v31;
  v85 = v34;
  v83 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v79;
  v36 = v68;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v70 + 8))(v32, v36);
  v37 = v76;
  v38 = *(v77 + 16);
  v39 = v62;
  v38(v76, v81, v62);
  v40 = *(v80 + 16);
  v41 = v67;
  v42 = v69;
  v40(v67, v35, v69);
  v43 = v71;
  v38(v71, v37, v39);
  v44 = v72;
  v45 = *(v72 + 56);
  v40(&v43[v45], v41, v42);
  v46 = v77;
  v47 = v73;
  (*(v77 + 32))(v73, v43, v39);
  v48 = v80;
  (*(v80 + 32))(v47 + *(v44 + 56), &v43[v45], v42);
  v49 = *(v48 + 8);
  v49(v79, v42);
  v50 = *(v46 + 8);
  v50(v81, v39);
  v49(v41, v42);
  return (v50)(v76, v39);
}

uint64_t closure #3 in static RaceChartMarkProvider.elevationFor(_:betweenStart:end:)(uint64_t a1, double a2, double a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd, &_s6Charts14PlottableValueVySdGMR);
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  LocalizedStringKey.init(stringLiteral:)();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  static PlottableValue.value(_:_:)();

  return RectangleMark.init<A, B>(xStart:xEnd:yStart:yEnd:)();
}

BOOL closure #1 in static RaceChartMarkProvider.coloredRouteElevationBetweenMarkers(_:behindPosition:aheadPosition:visibleDomain:gradient:)(uint64_t a1)
{
  RaceChartPoint.odometer_m.getter();
  v2 = v1;
  RaceChartPoint.odometer_m.getter();
  if (v2 > v3)
  {
    return 0;
  }

  RaceChartPoint.odometer_m.getter();
  v6 = v5;
  RaceChartPoint.odometer_m.getter();
  return v6 <= v7;
}

uint64_t closure #2 in static RaceChartMarkProvider.coloredRouteElevationBetweenMarkers(_:behindPosition:aheadPosition:visibleDomain:gradient:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12BuilderTupleVyAA8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeI0VFQOyAA04LineE0V_Qo_QPGMd, &_s6Charts12BuilderTupleVyAA8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeI0VFQOyAA04LineE0V_Qo_QPGMR);
  lazy protocol witness table accessor for type BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
  return Plot.init(content:)();
}

uint64_t closure #1 in closure #2 in static RaceChartMarkProvider.coloredRouteElevationBetweenMarkers(_:behindPosition:aheadPosition:visibleDomain:gradient:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a1;
  v49 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAA04LineC0V_Qo_tMd, &_s6Charts8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeG0VFQOyAA04LineC0V_Qo_tMR) - 8;
  MEMORY[0x28223BE20](v48);
  v47 = v39 - v2;
  v44 = type metadata accessor for LineMark();
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_Md, &_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_MR);
  v54 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySSGMd, &_s6Charts14PlottableValueVySSGMR);
  MEMORY[0x28223BE20](v7 - 8);
  v39[3] = v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd, &_s6Charts14PlottableValueVySdGMR);
  MEMORY[0x28223BE20](v9 - 8);
  v39[1] = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v50 = v39 - v13;
  v41 = type metadata accessor for AreaMark();
  v52 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v51 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = v39 - v16;
  v39[2] = "l.decrease.circle.fill";
  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.odometer_m.getter();
  v56 = v17;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v56 = *(v40 + 48);
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.altitude_m.getter();
  v56 = v18;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v40 = 0x800000020CBA0F70;
  v39[0] = 0xD000000000000017;
  v56 = 0xD000000000000017;
  v57 = 0x800000020CBA0F70;
  static PlottableValue.value(_:_:)();

  AreaMark.init<A, B, C>(x:yStart:yEnd:series:)();
  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.odometer_m.getter();
  v56 = v19;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  RaceChartPoint.altitude_m.getter();
  v56 = v20;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v56 = v39[0];
  v57 = v40;
  static PlottableValue.value(_:_:)();

  v21 = v42;
  LineMark.init<A, B, C>(x:y:series:)();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v22 = v53;
  v23 = v44;
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(&v56);
  (*(v46 + 8))(v21, v23);
  v24 = v51;
  v25 = *(v52 + 16);
  v26 = v41;
  v25(v51, v55, v41);
  v27 = *(v54 + 16);
  v28 = v43;
  v29 = v45;
  v27(v43, v22, v45);
  v30 = v47;
  v25(v47, v24, v26);
  v31 = v48;
  v32 = *(v48 + 56);
  v27(&v30[v32], v28, v29);
  v33 = v52;
  v34 = v49;
  (*(v52 + 32))(v49, v30, v26);
  v35 = v54;
  (*(v54 + 32))(v34 + *(v31 + 56), &v30[v32], v29);
  v36 = *(v35 + 8);
  v36(v53, v29);
  v37 = *(v33 + 8);
  v37(v55, v26);
  v36(v28, v29);
  return (v37)(v51, v26);
}

uint64_t closure #1 in static RaceChartMarkProvider.tickMarksFor(_:userPosition:ghostPosition:)@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<D0>)
{
  v28 = a2;
  v35 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd, &_s6Charts14PlottableValueVySdGMR);
  MEMORY[0x28223BE20](v6 - 8);
  v27[1] = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v29 = type metadata accessor for RuleMark();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_MR);
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_Md, &_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAcAE010foregroundE0yQrqd__AE05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo__Qo_MR);
  v33 = *(v14 - 8);
  v34 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  v17 = *a1;
  LocalizedStringKey.init(stringLiteral:)();
  v18 = v17 + 0.0;
  if (v17 != INFINITY)
  {
    *&v18 += (*&v18 >> 63) | 1;
  }

  *v40 = v18;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v40[0] = *(v28 + 48);
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v40[0] = a4;
  static PlottableValue.value(_:_:)();

  RuleMark.init<A, B>(x:yStart:yEnd:)();
  v40[0] = static Color.white.getter();
  v19 = MEMORY[0x277CE0F78];
  v20 = MEMORY[0x277CBB450];
  v21 = MEMORY[0x277CE0F60];
  v22 = v29;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v31 + 8))(v11, v22);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v36 = v22;
  v37 = v19;
  v38 = v20;
  v39 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v30;
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(v40);
  (*(v32 + 8))(v13, v24);
  v36 = v24;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v25 = v34;
  ChartContent.opacity(_:)();
  return (*(v33 + 8))(v16, v25);
}

double closure #1 in static RaceChartMarkProvider.pointMarkFor(x:y:innerColor:outerColor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = static Alignment.center.getter();
  v11 = v10;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a3 = a2;
  *(a3 + 8) = 256;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  *(a3 + 40) = v16;
  *(a3 + 48) = v17;
  *(a3 + 56) = a1;
  *(a3 + 64) = 256;
  *(a3 + 72) = v6;
  *(a3 + 80) = v8;
  *(a3 + 88) = v9;
  *(a3 + 96) = v11;
  *(a3 + 104) = v18;
  *(a3 + 120) = v19;
  result = *&v20;
  *(a3 + 136) = v20;
  return result;
}

double partial apply for closure #1 in static RaceChartMarkProvider.pinForActivityType(_:color:outerColor:x:y:)@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeI0VFQOyAA04LineE0V_Qo_QPGMd, &_s6Charts12BuilderTupleVyAA8AreaMarkV_AA12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeI0VFQOyAA04LineE0V_Qo_QPGMR);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeG0Rd__lFQOyAA8AreaMarkV_AG5ColorVQo__AeAEAFyQrqd__AgHRd__lFQOyAeAE04lineG0yQrAG06StrokeG0VFQOyAA04LineL0V_Qo__ALQo_QPGMd, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeG0Rd__lFQOyAA8AreaMarkV_AG5ColorVQo__AeAEAFyQrqd__AgHRd__lFQOyAeAE04lineG0yQrAG06StrokeG0VFQOyAA04LineL0V_Qo__ALQo_QPGMR);
    type metadata accessor for AreaMark();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_Md, &_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAA8LineMarkV_Qo_MR);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PacerWorkoutConfigurationView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PacerWorkoutConfigurationView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PacerWorkoutConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v149 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VACyACyAA6VStackVyAIyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAUyAS4CaseOSgGGAA16_FlexFrameLayoutVGAUyAA4FontVSgGGAUySiSgGG07WorkoutB015BodyHyphenationVGSgAQyA17_A18_GGSg_A18_tGGAA06_TraitpQ0VyAA0e18RowBackgroundTraitO0VGGA25_yAA0e14RowInsetsTraitO0VGGAMGSg_AKyAmQyACyACyA14_17PacerValuesButtonVAUy0X4Core0X23ConfigurationDataSourceCSgGGAUyA14_28ConfigurationNavigationModelCSgGGACyA14_026EmbeddedPacerConfigurationH0VA14_0e13RowBackgroundhQ0VGGAMGAKyACyACyAsA01_uV0VGA14_09Unstackedi7SpacingQ033_B33B451D6D59C74C7A089BCD2EE64343LLVGAIyA14_05StartX6ButtonV_A14_14SaveCopyButtonVSgA14_05ShareX19ConfigurationButtonVSgA14_12DeleteButtonVSgtGASSgGtGGA14_07Stackede8SectionsQ0A60_LLVGAUyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VACyACyAA6VStackVyAIyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAUyAS4CaseOSgGGAA16_FlexFrameLayoutVGAUyAA4FontVSgGGAUySiSgGG07WorkoutB015BodyHyphenationVGSgAQyA17_A18_GGSg_A18_tGGAA06_TraitpQ0VyAA0e18RowBackgroundTraitO0VGGA25_yAA0e14RowInsetsTraitO0VGGAMGSg_AKyAmQyACyACyA14_17PacerValuesButtonVAUy0X4Core0X23ConfigurationDataSourceCSgGGAUyA14_28ConfigurationNavigationModelCSgGGACyA14_026EmbeddedPacerConfigurationH0VA14_0e13RowBackgroundhQ0VGGAMGAKyACyACyAsA01_uV0VGA14_09Unstackedi7SpacingQ033_B33B451D6D59C74C7A089BCD2EE64343LLVGAIyA14_05StartX6ButtonV_A14_14SaveCopyButtonVSgA14_05ShareX19ConfigurationButtonVSgA14_12DeleteButtonVSgtGASSgGtGGA14_07Stackede8SectionsQ0A60_LLVGAUyAA13AnyShapeStyleVSgGGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v130 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAFyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAFyAFyAA6VStackVyALyAA012_ConditionalH0VyAFyAFyAFyAFyAFyAFyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAXyAV4CaseOSgGGAA16_FlexFrameLayoutVGAXyAA4FontVSgGGAXySiSgGG07WorkoutB015BodyHyphenationVGSgATyA20_A21_GGSg_A21_tGGAA06_TraitsT0VyAA0i18RowBackgroundTraitR0VGGA28_yAA0i14RowInsetsTraitR0VGGAPGSg_ANyApTyAFyAFyA17_17PacerValuesButtonVAXy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAXyA17_28ConfigurationNavigationModelCSgGGAFyA17_026EmbeddedPacerConfigurationC0VA17_0i13RowBackgroundcT0VGGAPGANyAFyAFyAvA01_xY0VGA17_09Unstackedl7SpacingT033_B33B451D6D59C74C7A089BCD2EE64343LLVGALyA17_18StartWorkoutButtonV_A17_14SaveCopyButtonVSgA17_31ShareWorkoutConfigurationButtonVSgA17_12DeleteButtonVSgtGAVSgGtGGA17_07Stackedi8SectionsT0A63_LLVGAXyAA13AnyShapeStyleVSgGG_SSQo_Md, &_s7SwiftUI4ViewPAAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAFyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAFyAFyAA6VStackVyALyAA012_ConditionalH0VyAFyAFyAFyAFyAFyAFyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0P9AlignmentOGGAXyAV4CaseOSgGGAA16_FlexFrameLayoutVGAXyAA4FontVSgGGAXySiSgGG07WorkoutB015BodyHyphenationVGSgATyA20_A21_GGSg_A21_tGGAA06_TraitsT0VyAA0i18RowBackgroundTraitR0VGGA28_yAA0i14RowInsetsTraitR0VGGAPGSg_ANyApTyAFyAFyA17_17PacerValuesButtonVAXy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAXyA17_28ConfigurationNavigationModelCSgGGAFyA17_026EmbeddedPacerConfigurationC0VA17_0i13RowBackgroundcT0VGGAPGANyAFyAFyAvA01_xY0VGA17_09Unstackedl7SpacingT033_B33B451D6D59C74C7A089BCD2EE64343LLVGALyA17_18StartWorkoutButtonV_A17_14SaveCopyButtonVSgA17_31ShareWorkoutConfigurationButtonVSgA17_12DeleteButtonVSgtGAVSgGtGGA17_07Stackedi8SectionsT0A63_LLVGAXyAA13AnyShapeStyleVSgGG_SSQo_MR);
  v134 = *(v5 - 8);
  v135 = v5;
  MEMORY[0x28223BE20](v5);
  v133 = &v130 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeF0Rd__lFQOyAcAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAKyAKyAA6VStackVyAQyAA012_ConditionalO0VyAKyAKyAKyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0W9AlignmentOGGA1_yA_4CaseOSgGGAA16_FlexFrameLayoutVGA1_yAA4FontVSgGGA1_ySiSgGG07WorkoutB015BodyHyphenationVGSgAYyA25_A26_GGSg_A26_tGGAA06_TraitZ8ModifierVyAA0p18RowBackgroundTraitY0VGGA33_yAA0p14RowInsetsTraitY0VGGAUGSg_ASyAuYyAKyAKyA22_17PacerValuesButtonVA1_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA1_yA22_28ConfigurationNavigationModelCSgGGAKyA22_026EmbeddedPacerConfigurationC0VA22_0p13RowBackgroundC8ModifierVGGAUGASyAKyAKyA_AA12_FrameLayoutVGA22_09UnstackedS15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAQyA22_18StartWorkoutButtonV_A22_14SaveCopyButtonVSgA22_31ShareWorkoutConfigurationButtonVSgA22_12DeleteButtonVSgtGA_SgGtGGA22_07StackedP16SectionsModifierA68_LLVGA1_yAA03AnyjF0VSgGG_SSQo__AA5ColorVQo_Md, &_s7SwiftUI4ViewPAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeF0Rd__lFQOyAcAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAKyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA05EmptyC0VAKyAKyAA6VStackVyAQyAA012_ConditionalO0VyAKyAKyAKyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0W9AlignmentOGGA1_yA_4CaseOSgGGAA16_FlexFrameLayoutVGA1_yAA4FontVSgGGA1_ySiSgGG07WorkoutB015BodyHyphenationVGSgAYyA25_A26_GGSg_A26_tGGAA06_TraitZ8ModifierVyAA0p18RowBackgroundTraitY0VGGA33_yAA0p14RowInsetsTraitY0VGGAUGSg_ASyAuYyAKyAKyA22_17PacerValuesButtonVA1_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA1_yA22_28ConfigurationNavigationModelCSgGGAKyA22_026EmbeddedPacerConfigurationC0VA22_0p13RowBackgroundC8ModifierVGGAUGASyAKyAKyA_AA12_FrameLayoutVGA22_09UnstackedS15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAQyA22_18StartWorkoutButtonV_A22_14SaveCopyButtonVSgA22_31ShareWorkoutConfigurationButtonVSgA22_12DeleteButtonVSgtGA_SgGtGGA22_07StackedP16SectionsModifierA68_LLVGA1_yAA03AnyjF0VSgGG_SSQo__AA5ColorVQo_MR);
  v141 = *(v7 - 8);
  v142 = v7;
  MEMORY[0x28223BE20](v7);
  v140 = &v130 - v8;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAPyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAA05EmptyD0VAPyAPyAA6VStackVyAVyAA012_ConditionalT0VyAPyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yAPyAPyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGAPyA27_026EmbeddedPacerConfigurationD0VA27_0u13RowBackgroundD8ModifierVGGAZGAXyAPyAPyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyoK0VSgGG_SSQo__AA5ColorVQo_GMd, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAPyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAA05EmptyD0VAPyAPyAA6VStackVyAVyAA012_ConditionalT0VyAPyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yAPyAPyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGAPyA27_026EmbeddedPacerConfigurationD0VA27_0u13RowBackgroundD8ModifierVGGAZGAXyAPyAPyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyoK0VSgGG_SSQo__AA5ColorVQo_GMR);
  MEMORY[0x28223BE20](v138);
  v146 = &v130 - v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMR);
  MEMORY[0x28223BE20](v151);
  v145 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v130 - v12;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2( &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionG0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleG0VyAGyAA4TextV07WorkoutB005ClearW5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AGyAGyAGyAA6VStackVyA4_yACyAGyAGyAGyAGyAGyAGyA6_AA30_EnvironmentKeyWritingModifierVyAA0Z9AlignmentOGGA15_yA6_4CaseOSgGGAA16_FlexFrameLayoutVGA15_yAA4FontVSgGGA15_ySiSgGGA7_15BodyHyphenationVGSgACyA38_A39_GGSg_A39_tGGAA21_TraitWritingModifierVyAA0W21RowBackgroundTraitKeyVGGA46_yAA0W17RowInsetsTraitKeyVGGA7_04HideW12RowSeparatorA9_LLVGSgACyAiAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA59_A60_A61__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyG0VA4_yA7_24PacerDistanceValuePickerV_A7_24PacerDurationValuePickerVACyA6_AGyA7_023AlignedLeadingAccessorydG0VyAA5ImageVA4_yA6__AA6SpacerVA6_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA65_G_SbQo__SbQo_AGyAGyAGyAGyA7_026EmbeddedPacerConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAGyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA65_GA26_GGGA49_GA53_GGA7_18StartWorkoutButtonVAGyAGyAGyA7_14SaveCopyButtonVA53_GA56_GA15_yAA11ControlSizeOGGSgAGyAGyAGyAGyAGyAGyAGyAGyAGyA6_A15_yA81_SgGGA18_GA23_GA26_GA31_GA34_GA37_GA53_GA49_GSgtGGG_Qo_A7_27WorkoutConfigurationToolbarVGAGyAWyAziAE22toolbarForegroundStyle_AKQrqd___AA07ToolbarQ0VdtAA10ShapeStyleRd__lFQOyAiAE18navigationBarTitleyQrqd__SyRd__lFQOyAGyAGyA0_yA2_A4_yA63_yA65_A54_A65_GSg_A63_yA65_ACyAGyAGyA7_17PacerValuesButtonVA15_y07WorkoutM030WorkoutConfigurationDataSourceCSgGGA15_yA7_28ConfigurationNavigationModelCSgGGAGyA90_A7_0w13RowBackgroundG8ModifierVGGA65_GA63_yAGyAGyA6_AA12_FrameLayoutVGA7_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGA4_yA110__A112_SgA7_31ShareWorkoutConfigurationButtonVSgA7_12DeleteButtonVSgtGA6_SgGtGGA7_07StackedW16SectionsModifierA168_LLVGA15_yAA13AnyShapeStyleVSgGG_SSQo__A81_Qo_GA137_G_GMd,  &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionG0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleG0VyAGyAA4TextV07WorkoutB005ClearW5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AGyAGyAGyAA6VStackVyA4_yACyAGyAGyAGyAGyAGyAGyA6_AA30_EnvironmentKeyWritingModifierVyAA0Z9AlignmentOGGA15_yA6_4CaseOSgGGAA16_FlexFrameLayoutVGA15_yAA4FontVSgGGA15_ySiSgGGA7_15BodyHyphenationVGSgACyA38_A39_GGSg_A39_tGGAA21_TraitWritingModifierVyAA0W21RowBackgroundTraitKeyVGGA46_yAA0W17RowInsetsTraitKeyVGGA7_04HideW12RowSeparatorA9_LLVGSgACyAiAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAiAEA59_A60_A61__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyG0VA4_yA7_24PacerDistanceValuePickerV_A7_24PacerDurationValuePickerVACyA6_AGyA7_023AlignedLeadingAccessorydG0VyAA5ImageVA4_yA6__AA6SpacerVA6_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA65_G_SbQo__SbQo_AGyAGyAGyAGyA7_026EmbeddedPacerConfigurationG0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAGyAA017StrokeBorderShapeG0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA65_GA26_GGGA49_GA53_GGA7_18StartWorkoutButtonVAGyAGyAGyA7_14SaveCopyButtonVA53_GA56_GA15_yAA11ControlSizeOGGSgAGyAGyAGyAGyAGyAGyAGyAGyAGyA6_A15_yA81_SgGGA18_GA23_GA26_GA31_GA34_GA37_GA53_GA49_GSgtGGG_Qo_A7_27WorkoutConfigurationToolbarVGAGyAWyAziAE22toolbarForegroundStyle_AKQrqd___AA07ToolbarQ0VdtAA10ShapeStyleRd__lFQOyAiAE18navigationBarTitleyQrqd__SyRd__lFQOyAGyAGyA0_yA2_A4_yA63_yA65_A54_A65_GSg_A63_yA65_ACyAGyAGyA7_17PacerValuesButtonVA15_y07WorkoutM030WorkoutConfigurationDataSourceCSgGGA15_yA7_28ConfigurationNavigationModelCSgGGAGyA90_A7_0w13RowBackgroundG8ModifierVGGA65_GA63_yAGyAGyA6_AA12_FrameLayoutVGA7_31UnstackedSectionSpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGA4_yA110__A112_SgA7_31ShareWorkoutConfigurationButtonVSgA7_12DeleteButtonVSgtGA6_SgGtGGA7_07StackedW16SectionsModifierA168_LLVGA15_yAA13AnyShapeStyleVSgGG_SSQo__A81_Qo_GA137_G_GMR);
  MEMORY[0x28223BE20](v147);
  v148 = &v130 - v14;
  v15 = type metadata accessor for ContentMarginPlacement();
  v131 = *(v15 - 8);
  v132 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v130 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMR);
  MEMORY[0x28223BE20](v18);
  v20 = &v130 - v19;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOyAA012SubscriptionC0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleC0VyAA08ModifiedL0VyAA4TextV07WorkoutB005ClearT5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A0_yA0_yA0_yAA6VStackVyAZyAA012_ConditionalL0VyA0_yA0_yA0_yA0_yA0_yA0_yA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0T21RowBackgroundTraitKeyVGGA44_yAA0T17RowInsetsTraitKeyVGGA3_04HideT12RowSeparatorA5_LLVGSgA11_yAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyC0VAZyA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_A0_yA3_023AlignedLeadingAccessorylC0VyAA5ImageVAZyA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_A0_yA0_yA0_yA0_yA3_026EmbeddedPacerConfigurationC0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyA0_yAA017StrokeBorderShapeC0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVA0_yA0_yA0_yA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgA0_yA0_yA0_yA0_yA0_yA0_yA0_yA0_yA0_yA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_Md, &_s7SwiftUI4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA22ContentMarginPlacementVtFQOyAA012SubscriptionC0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleC0VyAA08ModifiedL0VyAA4TextV07WorkoutB005ClearT5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A0_yA0_yA0_yAA6VStackVyAZyAA012_ConditionalL0VyA0_yA0_yA0_yA0_yA0_yA0_yA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0T21RowBackgroundTraitKeyVGGA44_yAA0T17RowInsetsTraitKeyVGGA3_04HideT12RowSeparatorA5_LLVGSgA11_yAcAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyC0VAZyA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_A0_yA3_023AlignedLeadingAccessorylC0VyAA5ImageVAZyA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_A0_yA0_yA0_yA0_yA3_026EmbeddedPacerConfigurationC0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyA0_yAA017StrokeBorderShapeC0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVA0_yA0_yA0_yA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgA0_yA0_yA0_yA0_yA0_yA0_yA0_yA0_yA0_yA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_MR);
  v136 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v144 = &v130 - v21;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMR);
  MEMORY[0x28223BE20](v150);
  v143 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v137 = &v130 - v24;
  v25 = v1[5];
  v162 = v1[4];
  v163 = v25;
  v26 = v1[7];
  v164 = v1[6];
  v165 = v26;
  v27 = v1[1];
  v158 = *v1;
  v159 = v27;
  v28 = v1[3];
  v160 = v1[2];
  v161 = v28;
  v29 = static Platform.current.getter();
  v152 = &v158;
  if (v29)
  {
    v144 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAIyAA6VStackVyACyAA012_ConditionalH0VyAIyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAGGSg_AEyAgMyAIyAIyA10_17PacerValuesButtonVAQy0V4Core0V23ConfigurationDataSourceCSgGGAQyA10_28ConfigurationNavigationModelCSgGGAIyA10_026EmbeddedPacerConfigurationD0VA10_0z13RowBackgrounddO0VGGAGGAEyAIyAIyAoA01_sT0VGA10_09Unstackede7SpacingO033_B33B451D6D59C74C7A089BCD2EE64343LLVGACyA10_05StartV6ButtonV_A10_14SaveCopyButtonVSgA10_05ShareV19ConfigurationButtonVSgA10_12DeleteButtonVSgtGAOSgGtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAIyAA6VStackVyACyAA012_ConditionalH0VyAIyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAGGSg_AEyAgMyAIyAIyA10_17PacerValuesButtonVAQy0V4Core0V23ConfigurationDataSourceCSgGGAQyA10_28ConfigurationNavigationModelCSgGGAIyA10_026EmbeddedPacerConfigurationD0VA10_0z13RowBackgrounddO0VGGAGGAEyAIyAIyAoA01_sT0VGA10_09Unstackede7SpacingO033_B33B451D6D59C74C7A089BCD2EE64343LLVGACyA10_05StartV6ButtonV_A10_14SaveCopyButtonVSgA10_05ShareV19ConfigurationButtonVSgA10_12DeleteButtonVSgtGAOSgGtGMR);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti( &lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKe,  &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAIyAA6VStackVyACyAA012_ConditionalH0VyAIyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAGGSg_AEyAgMyAIyAIyA10_17PacerValuesButtonVAQy0V4Core0V23ConfigurationDataSourceCSgGGAQyA10_28ConfigurationNavigationModelCSgGGAIyA10_026EmbeddedPacerConfigurationD0VA10_0z13RowBackgrounddO0VGGAGGAEyAIyAIyAoA01_sT0VGA10_09Unstackede7SpacingO033_B33B451D6D59C74C7A089BCD2EE64343LLVGACyA10_05StartV6ButtonV_A10_14SaveCopyButtonVSgA10_05ShareV19ConfigurationButtonVSgA10_12DeleteButtonVSgtGAOSgGtGMd,  &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA15ModifiedContentVyAIyAA6VStackVyACyAA012_ConditionalH0VyAIyAIyAIyAIyAIyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAQyAO4CaseOSgGGAA16_FlexFrameLayoutVGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAMyA13_A14_GGSg_A14_tGGAA06_TraitnO0VyAA017ListRowBackgroundyM0VGGA21_yAA0z9RowInsetsyM0VGGAGGSg_AEyAgMyAIyAIyA10_17PacerValuesButtonVAQy0V4Core0V23ConfigurationDataSourceCSgGGAQyA10_28ConfigurationNavigationModelCSgGGAIyA10_026EmbeddedPacerConfigurationD0VA10_0z13RowBackgrounddO0VGGAGGAEyAIyAIyAoA01_sT0VGA10_09Unstackede7SpacingO033_B33B451D6D59C74C7A089BCD2EE64343LLVGACyA10_05StartV6ButtonV_A10_14SaveCopyButtonVSgA10_05ShareV19ConfigurationButtonVSgA10_12DeleteButtonVSgtGAOSgGtGMR,  MEMORY[0x277CE14C0]);
    List<>.init(content:)();
    v166[0] = v160;
    v30 = *(&v160 + 1);
    WorkoutConfiguration.displayColor.getter();
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v166, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
    v31 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v153 = v31;
    v33 = AnyShapeStyle.init<A>(_:)();
    v34 = &v4[*(v2 + 36)];
    *v34 = KeyPath;
    v34[1] = v33;
    v35 = v161;
    v36 = WorkoutConfiguration.displayDetail(_:)();
    v143 = v35;
    if (v37)
    {
      v38 = v37;
    }

    else
    {
      v81 = v30;
      v82 = WorkoutConfiguration.displayName(formattingManager:)();
      v38 = v83;
      outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v166, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
      v36 = v82;
    }

    v153 = v36;
    v154 = v38;
    v84 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<List<Never, TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case();
    v85 = lazy protocol witness table accessor for type String and conformance String();
    v86 = v133;
    View.navigationTitle<A>(_:)();

    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v4, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VACyACyAA6VStackVyAIyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAUyAS4CaseOSgGGAA16_FlexFrameLayoutVGAUyAA4FontVSgGGAUySiSgGG07WorkoutB015BodyHyphenationVGSgAQyA17_A18_GGSg_A18_tGGAA06_TraitpQ0VyAA0e18RowBackgroundTraitO0VGGA25_yAA0e14RowInsetsTraitO0VGGAMGSg_AKyAmQyACyACyA14_17PacerValuesButtonVAUy0X4Core0X23ConfigurationDataSourceCSgGGAUyA14_28ConfigurationNavigationModelCSgGGACyA14_026EmbeddedPacerConfigurationH0VA14_0e13RowBackgroundhQ0VGGAMGAKyACyACyAsA01_uV0VGA14_09Unstackedi7SpacingQ033_B33B451D6D59C74C7A089BCD2EE64343LLVGAIyA14_05StartX6ButtonV_A14_14SaveCopyButtonVSgA14_05ShareX19ConfigurationButtonVSgA14_12DeleteButtonVSgtGASSgGtGGA14_07Stackede8SectionsQ0A60_LLVGAUyAA13AnyShapeStyleVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ListVys5NeverOAA9TupleViewVyAA7SectionVyAA05EmptyH0VACyACyAA6VStackVyAIyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0M9AlignmentOGGAUyAS4CaseOSgGGAA16_FlexFrameLayoutVGAUyAA4FontVSgGGAUySiSgGG07WorkoutB015BodyHyphenationVGSgAQyA17_A18_GGSg_A18_tGGAA06_TraitpQ0VyAA0e18RowBackgroundTraitO0VGGA25_yAA0e14RowInsetsTraitO0VGGAMGSg_AKyAmQyACyACyA14_17PacerValuesButtonVAUy0X4Core0X23ConfigurationDataSourceCSgGGAUyA14_28ConfigurationNavigationModelCSgGGACyA14_026EmbeddedPacerConfigurationH0VA14_0e13RowBackgroundhQ0VGGAMGAKyACyACyAsA01_uV0VGA14_09Unstackedi7SpacingQ033_B33B451D6D59C74C7A089BCD2EE64343LLVGAIyA14_05StartX6ButtonV_A14_14SaveCopyButtonVSgA14_05ShareX19ConfigurationButtonVSgA14_12DeleteButtonVSgtGASSgGtGGA14_07Stackede8SectionsQ0A60_LLVGAUyAA13AnyShapeStyleVSgGGMR);
    v87 = v30;
    WorkoutConfiguration.displayColor.getter();
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v166, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
    *&v157 = Color.init(uiColor:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI16ToolbarPlacementVGMR);
    type metadata accessor for ToolbarPlacement();
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_20CB5DA70;
    static ToolbarPlacement.navigationBar.getter();
    v153 = v2;
    v154 = MEMORY[0x277D837D0];
    v155 = v84;
    v156 = v85;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v90 = v140;
    v91 = v135;
    MEMORY[0x20F30A9F0](&v157, v88, v135, MEMORY[0x277CE0F78], OpaqueTypeConformance2, MEMORY[0x277CE0F60]);

    (*(v134 + 8))(v86, v91);
    type metadata accessor for PacerWorkoutConfiguration();
    lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968], MEMORY[0x277D7DA48]);
    v92 = v87;
    v93 = ObservableObject<>.objectWillChange.getter();
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v166, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
    v94 = swift_allocObject();
    v95 = v163;
    v94[5] = v162;
    v94[6] = v95;
    v96 = v165;
    v94[7] = v164;
    v94[8] = v96;
    v97 = v159;
    v94[1] = v158;
    v94[2] = v97;
    v98 = v161;
    v94[3] = v160;
    v94[4] = v98;
    v99 = v146;
    v141[4](v146, v90, v142);
    v100 = v138;
    *(v99 + *(v138 + 52)) = v93;
    v101 = (v99 + *(v100 + 56));
    *v101 = partial apply for closure #4 in PacerWorkoutConfigurationView.body.getter;
    v101[1] = v94;
    v157 = v163;
    outlined init with copy of PacerWorkoutConfigurationView(&v158, &v153);
    outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v166, &v153, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.projectedValue.getter();
    v102 = v158;
    if (v158)
    {
      v103 = v153;
      v104 = v154;
      LODWORD(v141) = v155;
      LODWORD(v142) = BYTE8(v162);
      outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v166, &v153, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
      v105 = v102;
      WorkoutConfiguration.displayColor.getter();
      outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v166, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
      v139 = Color.init(uiColor:)();
      LOBYTE(v157) = 0;
      static Binding.constant(_:)();
      v136 = v154;
      v137 = v153;
      LODWORD(v138) = v155;
      v106 = swift_allocObject();
      *(v106 + 16) = v105;
      v107 = swift_getKeyPath();
      v108 = &v145[*(v151 + 36)];
      *v108 = v107;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConfigurationNavigationModel(0);
      lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
      v140 = v105;
      v109 = v103;

      v110 = EnvironmentObject.init()();
      v112 = v111;
      v113 = type metadata accessor for WorkoutConfigurationToolbar(0);
      v114 = (v108 + v113[5]);
      *v114 = v110;
      v114[1] = v112;
      v115 = (v108 + v113[6]);
      type metadata accessor for WorkoutConfiguration();
      lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
      v116 = v92;
      *v115 = ObservedObject.init(wrappedValue:)();
      v115[1] = v117;
      v118 = v108 + v113[7];
      *v118 = v109;
      *(v118 + 1) = v104;
      v118[16] = v141;
      v119 = v108 + v113[8];
      *v119 = _s7SwiftUI4ViewP07WorkoutB0E27workoutConfigurationToolbar0eF015hasBeenModified10dataSource17formattingManager6intent5color20showEditConfirmationQr0D4Core0dF0C_AA7BindingVySbGSgAM0df4DataL0CSo014FIUIFormattingN0CAD0dF6IntentOAA5ColorVARtFAUycfu0_TA_1;
      *(v119 + 1) = v106;
      v119[16] = 0;
      v120 = v143;
      *(v108 + v113[9]) = v143;
      *(v108 + v113[10]) = v142;
      *(v108 + v113[11]) = v139;
      v121 = v108 + v113[12];
      v122 = v136;
      *v121 = v137;
      *(v121 + 1) = v122;
      v121[16] = v138;
      v123 = v108 + v113[13];
      LOBYTE(v157) = 0;

      v124 = v120;

      State.init(wrappedValue:)();
      v125 = v154;
      *v123 = v153;
      *(v123 + 1) = v125;
      v126 = v108 + v113[14];
      LOBYTE(v157) = 0;
      State.init(wrappedValue:)();

      outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v166, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);

      v127 = v154;
      *v126 = v153;
      *(v126 + 1) = v127;
      v128 = v145;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v146, v145, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAPyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAA05EmptyD0VAPyAPyAA6VStackVyAVyAA012_ConditionalT0VyAPyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yAPyAPyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGAPyA27_026EmbeddedPacerConfigurationD0VA27_0u13RowBackgroundD8ModifierVGGAZGAXyAPyAPyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyoK0VSgGG_SSQo__AA5ColorVQo_GMd, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0D0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeK0Rd__lFQOyAhAE18navigationBarTitleyQrqd__SyRd__lFQOyAA15ModifiedContentVyAPyAA4ListVys5NeverOAA05TupleD0VyAA7SectionVyAA05EmptyD0VAPyAPyAA6VStackVyAVyAA012_ConditionalT0VyAPyAPyAPyAPyAPyAPyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yAPyAPyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGAPyA27_026EmbeddedPacerConfigurationD0VA27_0u13RowBackgroundD8ModifierVGGAZGAXyAPyAPyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyoK0VSgGG_SSQo__AA5ColorVQo_GMR);
      v78 = &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMd;
      v79 = &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMR;
      v80 = v144;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v128, v144, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMR);
      outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v80, v148, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMd, &_s7SwiftUI15ModifiedContentVyAA16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA0F0PAAE22toolbarForegroundStyle_3forQrqd___AA16ToolbarPlacementVdtAA05ShapeM0Rd__lFQOyAjAE18navigationBarTitleyQrqd__SyRd__lFQOyACyACyAA4ListVys5NeverOAA05TupleF0VyAA7SectionVyAA05EmptyF0VACyACyAA6VStackVyAVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGA6_yA4_4CaseOSgGGAA16_FlexFrameLayoutVGA6_yAA4FontVSgGGA6_ySiSgGG07WorkoutB015BodyHyphenationVGSgA2_yA30_A31_GGSg_A31_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA38_yAA0U17RowInsetsTraitKeyVGGAZGSg_AXyAZA2_yACyACyA27_17PacerValuesButtonVA6_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA6_yA27_28ConfigurationNavigationModelCSgGGACyA27_026EmbeddedPacerConfigurationF0VA27_0u13RowBackgroundF8ModifierVGGAZGAXyACyACyA4_AA12_FrameLayoutVGA27_09UnstackedX15SpacingModifier33_B33B451D6D59C74C7A089BCD2EE64343LLVGAVyA27_18StartWorkoutButtonV_A27_14SaveCopyButtonVSgA27_31ShareWorkoutConfigurationButtonVSgA27_12DeleteButtonVSgtGA4_SgGtGGA27_07StackedU16SectionsModifierA73_LLVGA6_yAA03AnyqM0VSgGG_SSQo__AA5ColorVQo_GA27_020WorkoutConfigurationO0VGMR);
      goto LABEL_9;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AEyAEyAEyAA6VStackVyACyAA012_ConditionalF0VyAEyAEyAEyAEyAEyAEyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGARyAG4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAH15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0j18RowBackgroundTraitX0VGGA21_yAA0j14RowInsetsTraitX0VGGAH04HideJ12RowSeparatorAJLLVGSgAPyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA35_AAEA36_A37_A38__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VACyAH24PacerDistanceValuePickerV_AH24PacerDurationValuePickerVAPyAgEyAH023AlignedLeadingAccessoryfD0VyAA5ImageVACyAG_AA6SpacerVAGtGGAA011_ForegroundkZ0VyAA5ColorVGGGtGA42_G_SbQo__SbQo_AEyAEyAEyAEyAH026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyAEyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeK0VA42_GA1_GGGA24_GA28_GGAH05StartH6ButtonVAEyAEyAEyAH14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgAEyAEyAEyAEyAEyAEyAEyAEyAEyAgRyA58_SgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AEyAEyAEyAA6VStackVyACyAA012_ConditionalF0VyAEyAEyAEyAEyAEyAEyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGARyAG4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAH15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0j18RowBackgroundTraitX0VGGA21_yAA0j14RowInsetsTraitX0VGGAH04HideJ12RowSeparatorAJLLVGSgAPyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA35_AAEA36_A37_A38__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VACyAH24PacerDistanceValuePickerV_AH24PacerDurationValuePickerVAPyAgEyAH023AlignedLeadingAccessoryfD0VyAA5ImageVACyAG_AA6SpacerVAGtGGAA011_ForegroundkZ0VyAA5ColorVGGGtGA42_G_SbQo__SbQo_AEyAEyAEyAEyAH026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyAEyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeK0VA42_GA1_GGGA24_GA28_GGAH05StartH6ButtonVAEyAEyAEyAH14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgAEyAEyAEyAEyAEyAEyAEyAEyAEyAgRyA58_SgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtGMR);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti( &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Text, ClearListStyle>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>,  &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AEyAEyAEyAA6VStackVyACyAA012_ConditionalF0VyAEyAEyAEyAEyAEyAEyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGARyAG4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAH15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0j18RowBackgroundTraitX0VGGA21_yAA0j14RowInsetsTraitX0VGGAH04HideJ12RowSeparatorAJLLVGSgAPyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA35_AAEA36_A37_A38__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VACyAH24PacerDistanceValuePickerV_AH24PacerDurationValuePickerVAPyAgEyAH023AlignedLeadingAccessoryfD0VyAA5ImageVACyAG_AA6SpacerVAGtGGAA011_ForegroundkZ0VyAA5ColorVGGGtGA42_G_SbQo__SbQo_AEyAEyAEyAEyAH026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyAEyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeK0VA42_GA1_GGGA24_GA28_GGAH05StartH6ButtonVAEyAEyAEyAH14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgAEyAEyAEyAEyAEyAEyAEyAEyAEyAgRyA58_SgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtGMd,  &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AEyAEyAEyAA6VStackVyACyAA012_ConditionalF0VyAEyAEyAEyAEyAEyAEyAgA30_EnvironmentKeyWritingModifierVyAA0G9AlignmentOGGARyAG4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAH15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0j18RowBackgroundTraitX0VGGA21_yAA0j14RowInsetsTraitX0VGGAH04HideJ12RowSeparatorAJLLVGSgAPyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA35_AAEA36_A37_A38__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VACyAH24PacerDistanceValuePickerV_AH24PacerDurationValuePickerVAPyAgEyAH023AlignedLeadingAccessoryfD0VyAA5ImageVACyAG_AA6SpacerVAGtGGAA011_ForegroundkZ0VyAA5ColorVGGGtGA42_G_SbQo__SbQo_AEyAEyAEyAEyAH026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyAEyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeK0VA42_GA1_GGGA24_GA28_GGAH05StartH6ButtonVAEyAEyAEyAH14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgAEyAEyAEyAEyAEyAEyAEyAEyAEyAgRyA58_SgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtGMR,  MEMORY[0x277CE14C0]);
    List<>.init(content:)();
    v166[0] = v160;
    v39 = *(&v160 + 1);
    type metadata accessor for PacerWorkoutConfiguration();
    lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968], MEMORY[0x277D7DA48]);
    v40 = v39;
    v41 = ObservableObject<>.objectWillChange.getter();
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v166, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
    v42 = swift_allocObject();
    v43 = v163;
    v42[5] = v162;
    v42[6] = v43;
    v44 = v165;
    v42[7] = v164;
    v42[8] = v44;
    v45 = v159;
    v42[1] = v158;
    v42[2] = v45;
    v46 = v161;
    v42[3] = v160;
    v42[4] = v46;
    *&v20[*(v18 + 52)] = v41;
    v47 = &v20[*(v18 + 56)];
    *v47 = partial apply for closure #2 in PacerWorkoutConfigurationView.body.getter;
    *(v47 + 1) = v42;
    outlined init with copy of PacerWorkoutConfigurationView(&v158, &v153);
    v48 = static Edge.Set.top.getter();
    static ContentMarginPlacement.scrollContent.getter();
    v49 = lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti( &lazy protocol witness table cache variable for type SubscriptionView<ObservableObjectPublisher, List<Never, TupleView<(ModifiedContent<Text, ClearListStyle>, ModifiedContent<ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Tex,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd,  &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMR,  MEMORY[0x277CDDB50]);
    MEMORY[0x20F30A640](v48, 0, 0, v17, v18, v49);
    (*(v131 + 8))(v17, v132);
    outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v20, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleD0VyAA15ModifiedContentVyAA4TextV07WorkoutB005ClearI5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ANyANyANyAA6VStackVyALyAA012_ConditionalM0VyANyANyANyANyANyANyApA30_EnvironmentKeyWritingModifierVyAA0N9AlignmentOGGA_yAP4CaseOSgGGAA16_FlexFrameLayoutVGA_yAA4FontVSgGGA_ySiSgGGAQ15BodyHyphenationVGSgAYyA22_A23_GGSg_A23_tGGAA21_TraitWritingModifierVyAA0I21RowBackgroundTraitKeyVGGA30_yAA0I17RowInsetsTraitKeyVGGAQ04HideI12RowSeparatorASLLVGSgAYyAA0D0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA44_AAEA45_A46_A47__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyD0VALyAQ24PacerDistanceValuePickerV_AQ24PacerDurationValuePickerVAYyApNyAQ023AlignedLeadingAccessorymD0VyAA5ImageVALyAP_AA6SpacerVAPtGGAA011_ForegroundQ8ModifierVyAA5ColorVGGGtGA51_G_SbQo__SbQo_ANyANyANyANyAQ026EmbeddedPacerConfigurationD0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyANyAA017StrokeBorderShapeD0VyAA16RoundedRectangleVAA017HierarchicalShapeQ0VA51_GA10_GGGA33_GA37_GGAQ05StartO6ButtonVANyANyANyAQ14SaveCopyButtonVA37_GA40_GA_yAA11ControlSizeOGGSgANyANyANyANyANyANyANyANyANyAPA_yA67_SgGGA2_GA7_GA10_GA15_GA18_GA21_GA37_GA33_GSgtGGGMR);
    v157 = v163;
    v50 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.projectedValue.getter();
    v51 = v158;
    if (v158)
    {
      v52 = v153;
      v53 = v154;
      LODWORD(v142) = v155;
      v145 = v161;
      LODWORD(v146) = BYTE8(v162);
      outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v166, &v153, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
      v54 = v51;
      WorkoutConfiguration.displayColor.getter();
      outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v166, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
      v140 = Color.init(uiColor:)();
      LOBYTE(v157) = 0;
      static Binding.constant(_:)();
      v134 = v154;
      v135 = v153;
      LODWORD(v138) = v155;
      v55 = swift_allocObject();
      *(v55 + 16) = v54;
      v56 = swift_getKeyPath();
      v57 = &v143[*(v150 + 36)];
      *v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ConfigurationNavigationModel(0);
      lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
      v58 = v50;
      v141 = v54;

      v59 = EnvironmentObject.init()();
      v61 = v60;
      v62 = type metadata accessor for WorkoutConfigurationToolbar(0);
      v63 = (v57 + v62[5]);
      *v63 = v59;
      v63[1] = v61;
      v64 = (v57 + v62[6]);
      type metadata accessor for WorkoutConfiguration();
      lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
      v65 = v58;
      *v64 = ObservedObject.init(wrappedValue:)();
      v64[1] = v66;
      v67 = v57 + v62[7];
      *v67 = v52;
      *(v67 + 1) = v53;
      v67[16] = v142;
      v68 = v57 + v62[8];
      *v68 = implicit closure #2 in View.workoutConfigurationToolbar(workoutConfiguration:hasBeenModified:dataSource:formattingManager:intent:color:showEditConfirmation:)partial apply;
      *(v68 + 1) = v55;
      v68[16] = 0;
      v69 = v145;
      *(v57 + v62[9]) = v145;
      *(v57 + v62[10]) = v146;
      *(v57 + v62[11]) = v140;
      v70 = v57 + v62[12];
      v71 = v134;
      *v70 = v135;
      *(v70 + 1) = v71;
      v70[16] = v138;
      v72 = v57 + v62[13];
      LOBYTE(v157) = 0;

      v73 = v69;

      State.init(wrappedValue:)();
      v74 = v154;
      *v72 = v153;
      *(v72 + 1) = v74;
      v75 = v57 + v62[14];
      LOBYTE(v157) = 0;
      State.init(wrappedValue:)();

      outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v166, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);

      v76 = v154;
      *v75 = v153;
      *(v75 + 1) = v76;
      v77 = v143;
      (*(v136 + 32))(v143, v144, v139);
      v78 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd;
      v79 = &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMR;
      v80 = v137;
      outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v77, v137, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMR);
      outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v80, v148, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE14contentMargins__3forQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgAA0D15MarginPlacementVtFQOyAA012SubscriptionE0Vy7Combine25ObservableObjectPublisherCAA4ListVys5NeverOAA05TupleE0VyACyAA4TextV07WorkoutB005ClearU5Style33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyA0_yAA012_ConditionalD0VyACyACyACyACyACyACyA2_AA30_EnvironmentKeyWritingModifierVyAA0X9AlignmentOGGA13_yA2_4CaseOSgGGAA16_FlexFrameLayoutVGA13_yAA4FontVSgGGA13_ySiSgGGA3_15BodyHyphenationVGSgA11_yA36_A37_GGSg_A37_tGGAA21_TraitWritingModifierVyAA0U21RowBackgroundTraitKeyVGGA44_yAA0U17RowInsetsTraitKeyVGGA3_04HideU12RowSeparatorA5_LLVGSgA11_yAeAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEA57_A58_A59__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VA0_yA3_24PacerDistanceValuePickerV_A3_24PacerDurationValuePickerVA11_yA2_ACyA3_023AlignedLeadingAccessorydE0VyAA5ImageVA0_yA2__AA6SpacerVA2_tGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGA63_G_SbQo__SbQo_ACyACyACyACyA3_026EmbeddedPacerConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVA63_GA24_GGGA47_GA51_GGA3_05StartY6ButtonVACyACyACyA3_14SaveCopyButtonVA51_GA54_GA13_yAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyA2_A13_yA79_SgGGA16_GA21_GA24_GA29_GA32_GA35_GA51_GA47_GSgtGGG_Qo_A3_0Y20ConfigurationToolbarVGMR);
LABEL_9:
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.contentMargins(_:_:for:)>>.0, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
      return outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v80, v78, v79);
    }
  }

  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void closure #1 in PacerWorkoutConfigurationView.body.getter(uint64_t (*a1)()@<X0>, void *a2@<X8>)
{
  v257 = a2;
  v258 = a1;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
  MEMORY[0x28223BE20](v222);
  v228 = &v219 - v2;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v226);
  v234 = &v219 - v3;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMR);
  MEMORY[0x28223BE20](v232);
  v233 = &v219 - v4;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMR);
  MEMORY[0x28223BE20](v231);
  v230 = &v219 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMR);
  MEMORY[0x28223BE20](v6 - 8);
  v227 = &v219 - v7;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGMR);
  MEMORY[0x28223BE20](v223);
  v229 = &v219 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMR);
  v254 = *(v9 - 8);
  v255 = v9;
  MEMORY[0x28223BE20](v9);
  v225 = &v219 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v224 = &v219 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v256 = &v219 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v274 = &v219 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMR);
  v252 = *(v17 - 8);
  v253 = v17;
  MEMORY[0x28223BE20](v17);
  v221 = &v219 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v220 = &v219 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v273 = &v219 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v279 = &v219 - v24;
  v241 = type metadata accessor for RoundedRectangle();
  MEMORY[0x28223BE20](v241);
  v243 = &v219 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMR);
  MEMORY[0x28223BE20](v242);
  v246 = &v219 - v26;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v244);
  v247 = &v219 - v27;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMR);
  MEMORY[0x28223BE20](v245);
  v259 = &v219 - v28;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMR);
  MEMORY[0x28223BE20](v250);
  v249 = &v219 - v29;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMR);
  MEMORY[0x28223BE20](v268);
  v248 = &v219 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v260 = &v219 - v32;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyF0VAA05TupleF0Vy07WorkoutB024PacerDistanceValuePickerV_AQ0o8DurationqR0VACyAA4TextVAA08ModifiedD0VyAQ023AlignedLeadingAccessorydF0VyAA5ImageVAPyAW_AA6SpacerVAWtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGANG_SbQo__SbQo_AYyAYyAYyAYyAQ08Embeddedo13ConfigurationF0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAYyAA017StrokeBorderShapeF0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVANGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA37_yAA21ListRowInsetsTraitKeyVGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAgAEAhiJ_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyF0VAA05TupleF0Vy07WorkoutB024PacerDistanceValuePickerV_AQ0o8DurationqR0VACyAA4TextVAA08ModifiedD0VyAQ023AlignedLeadingAccessorydF0VyAA5ImageVAPyAW_AA6SpacerVAWtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGANG_SbQo__SbQo_AYyAYyAYyAYyAQ08Embeddedo13ConfigurationF0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAYyAA017StrokeBorderShapeF0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVANGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA37_yAA21ListRowInsetsTraitKeyVGG_GMR);
  MEMORY[0x28223BE20](v265);
  v267 = &v219 - v33;
  object = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AH0h8DurationjK0VAA19_ConditionalContentVyAA4TextVAA08ModifiedN0VyAH023AlignedLeadingAccessorynE0VyAA5ImageVAGyAP_AA6SpacerVAPtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AH0h8DurationjK0VAA19_ConditionalContentVyAA4TextVAA08ModifiedN0VyAH023AlignedLeadingAccessorynE0VyAA5ImageVAGyAP_AA6SpacerVAPtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAEGMR);
  v236 = *(object - 8);
  MEMORY[0x28223BE20](object);
  v235 = &v219 - v34;
  countAndFlagsBits = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyC0VAA05TupleC0Vy07WorkoutB024PacerDistanceValuePickerV_AM0l8DurationnO0VAA19_ConditionalContentVyAA4TextVAA08ModifiedR0VyAM023AlignedLeadingAccessoryrC0VyAA5ImageVALyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAJG_SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyC0VAA05TupleC0Vy07WorkoutB024PacerDistanceValuePickerV_AM0l8DurationnO0VAA19_ConditionalContentVyAA4TextVAA08ModifiedR0VyAM023AlignedLeadingAccessoryrC0VyAA5ImageVALyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAJG_SbQo_MR);
  v238 = *(countAndFlagsBits - 8);
  MEMORY[0x28223BE20](countAndFlagsBits);
  v237 = &v219 - v35;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyC0VAA05TupleC0Vy07WorkoutB024PacerDistanceValuePickerV_AM0l8DurationnO0VAA19_ConditionalContentVyAA4TextVAA08ModifiedR0VyAM023AlignedLeadingAccessoryrC0VyAA5ImageVALyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAJG_SbQo__SbQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAEAdeF_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyC0VAA05TupleC0Vy07WorkoutB024PacerDistanceValuePickerV_AM0l8DurationnO0VAA19_ConditionalContentVyAA4TextVAA08ModifiedR0VyAM023AlignedLeadingAccessoryrC0VyAA5ImageVALyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGAJG_SbQo__SbQo_MR);
  v240 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v239 = &v219 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMR);
  MEMORY[0x28223BE20](v37 - 8);
  v272 = &v219 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v278 = &v219 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
  v261 = *(v41 - 8);
  v262 = v41;
  MEMORY[0x28223BE20](v41);
  v43 = &v219 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMR);
  MEMORY[0x28223BE20](v44 - 8);
  v271 = &v219 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v277 = &v219 - v47;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v48 = WorkoutUIBundle.super.isa;
  v324._object = 0xE000000000000000;
  v49._object = 0x800000020CB9AB00;
  v49._countAndFlagsBits = 0xD000000000000012;
  v50.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v50.value._object = 0xEB00000000656C62;
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  v324._countAndFlagsBits = 0;
  v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v50, v48, v51, v324);

  v289 = v52;
  v219 = lazy protocol witness table accessor for type String and conformance String();
  v53 = Text.init<A>(_:)();
  v55 = v54;
  v57 = v56;
  static Font.Weight.bold.getter();
  v58 = Text.fontWeight(_:)();
  v60 = v59;
  v62 = v61;
  outlined consume of Text.Storage(v53, v55, v57 & 1);

  static Font.largeTitle.getter();
  v276 = Text.font(_:)();
  v269 = v63;
  v270 = v64;
  v251 = v65;

  outlined consume of Text.Storage(v58, v60, v62 & 1);

  v66 = v258;
  v323[0] = *(v258 + 2);
  v67 = *(&v323[0] + 1);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v323, &v289, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
  v68 = v67;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {

    *v43 = static HorizontalAlignment.leading.getter();
    *(v43 + 1) = 0;
    v43[16] = 0;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAQyAO4CaseOSgGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAKyA13_A14_GGSg_A14_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA08ModifiedJ0VyAMyAMyAMyAMyAMyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0L9AlignmentOGGAQyAO4CaseOSgGGAA010_FlexFrameG0VGAQyAA4FontVSgGGAQySiSgGG07WorkoutB015BodyHyphenationVGSgAKyA13_A14_GGSg_A14_tGGMR);
    closure #2 in WorkoutConfiguration.externalProviderDescriptionHeaderStack()(v68, &v43[*(v69 + 44)]);
    v289._countAndFlagsBits = static Color.clear.getter();
    v70 = AnyView.init<A>(_:)();
    *&v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGMR) + 36)] = v70;
    v71 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGMR) + 36)];
    *v71 = xmmword_20CB7E4D0;
    *(v71 + 1) = xmmword_20CB7F940;
    v71[32] = 0;
    v72 = v43;
    v73 = v277;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v72, v277, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
    v74 = 0;
  }

  else
  {
    v74 = 1;
    v73 = v277;
  }

  (*(v261 + 56))(v73, v74, 1, v262);
  v75 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  v275 = v68;
  if (v75)
  {

    v262 = *(v66 + 48);
    v76 = static Edge.Set.all.getter();
    LOBYTE(v289._countAndFlagsBits) = 1;
    v77 = *(v241 + 20);
    v78 = *MEMORY[0x277CE0118];
    v79 = type metadata accessor for RoundedCornerStyle();
    v80 = v243;
    (*(*(v79 - 8) + 104))(&v243[v77], v78, v79);
    __asm { FMOV            V0.2D, #26.0 }

    *v80 = _Q0;
    v86 = static HierarchicalShapeStyle.tertiary.getter();
    StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
    v87 = MEMORY[0x277CDFC08];
    v88 = v246;
    outlined init with copy of RoundedRectangle(v80, v246, MEMORY[0x277CDFC08]);
    v89 = *&v312 * 0.5;
    v90 = v88 + *(v242 + 68);
    outlined init with copy of RoundedRectangle(v80, v90, v87);
    *(v90 + *(type metadata accessor for RoundedRectangle._Inset() + 20)) = v89;
    v91 = v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMd, &_s7SwiftUI13_StrokedShapeVyAA16RoundedRectangleV6_InsetVGMR) + 36);
    v92 = v313;
    *v91 = v312;
    *(v91 + 16) = v92;
    *(v91 + 32) = v314;
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalC5StyleVGMd, &_s7SwiftUI10_ShapeViewVyAA08_StrokedC0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalC5StyleVGMR);
    *(v90 + *(v93 + 52)) = v86;
    *(v90 + *(v93 + 56)) = 256;
    v94 = static Alignment.center.getter();
    v96 = v95;
    outlined destroy of RoundedRectangle(v80, MEMORY[0x277CDFC08]);
    v97 = (v90 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA08_StrokedE0VyAA16RoundedRectangleV6_InsetVGAA012HierarchicalE5StyleVGAA19_BackgroundModifierVyAA05EmptyF0VGGMR) + 36));
    *v97 = v94;
    v97[1] = v96;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v98 = v88;
    v99 = v247;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v98, v247, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMd, &_s7SwiftUI21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalE5StyleVAA05EmptyF0VGMR);
    v100 = (v99 + *(v244 + 36));
    v101 = v320;
    v100[4] = v319;
    v100[5] = v101;
    v100[6] = v321;
    v102 = v316;
    *v100 = v315;
    v100[1] = v102;
    v103 = v318;
    v100[2] = v317;
    v100[3] = v103;
    v104 = static Alignment.center.getter();
    v106 = v105;
    v107 = v259;
    v108 = &v259[*(v245 + 36)];
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v99, v108, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalG5StyleVAA05EmptyH0VGAA16_FlexFrameLayoutVGMR);
    v109 = (v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA21StrokeBorderShapeViewVyAA16RoundedRectangleVAA012HierarchicalI5StyleVAA05EmptyJ0VGAA16_FlexFrameLayoutVGGMR) + 36));
    *v109 = v104;
    v109[1] = v106;
    v110 = v275;
    v111 = v262;
    *v107 = v275;
    *(v107 + 8) = v111;
    *(v107 + 16) = v76;
    *(v107 + 20) = *(&v280 + 3);
    *(v107 + 17) = v280;
    *(v107 + 40) = 0u;
    *(v107 + 24) = 0u;
    *(v107 + 56) = 1;
    v289._countAndFlagsBits = static Color.clear.getter();
    v112 = AnyView.init<A>(_:)();
    v113 = v249;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v107, v249, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGMR);
    *(v113 + *(v250 + 36)) = v112;
    v114 = v248;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v113, v248, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGMR);
    v115 = v114 + *(v268 + 36);
    *v115 = xmmword_20CB7EC90;
    *(v115 + 16) = xmmword_20CB7E4D0;
    *(v115 + 32) = 0;
    v116 = v260;
    outlined init with take of SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>(v114, v260, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMR);
    outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v116, v267, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMR);
    swift_storeEnumTagMultiPayload();
    v117 = lazy protocol witness table accessor for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>();
    v118 = MEMORY[0x277D839B0];
    v289._countAndFlagsBits = object;
    v289._object = MEMORY[0x277D839B0];
    v119 = MEMORY[0x277D839C8];
    v290 = v117;
    v291 = MEMORY[0x277D839C8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v289._countAndFlagsBits = countAndFlagsBits;
    v289._object = v118;
    v290 = OpaqueTypeConformance2;
    v291 = v119;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v116, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy07WorkoutB030EmbeddedPacerConfigurationViewVAA14_PaddingLayoutVGAA19_BackgroundModifierVyACyAA017StrokeBorderShapeI0VyAA16RoundedRectangleVAA012HierarchicalP5StyleVAA05EmptyI0VGAA010_FlexFrameK0VGGGAA013_TraitWritingM0VyAA07ListRowlX3KeyVGGA_yAA0z9RowInsetsX3KeyVGGMR);
  }

  else
  {
    v121 = outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v323, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
    MEMORY[0x28223BE20](v121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB024PacerDistanceValuePickerV_AD0f8DurationhI0VAA19_ConditionalContentVyAA4TextVAA08ModifiedL0VyAD023AlignedLeadingAccessorylD0VyAA5ImageVACyAL_AA6SpacerVALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB024PacerDistanceValuePickerV_AD0f8DurationhI0VAA19_ConditionalContentVyAA4TextVAA08ModifiedL0VyAD023AlignedLeadingAccessorylD0VyAA5ImageVACyAL_AA6SpacerVALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGMR);
    lazy protocol witness table accessor for type TupleView<(Section<EmptyView, ModifiedContent<ModifiedContent<VStack<TupleView<(_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>?, _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Int?>>, BodyHyphenation>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<TextAlignment>>, _EnvironmentKeyWritingModifier<Text.Case?>>, _FlexFrameLayout>, _EnvironmentKeyWriti(&lazy protocol witness table cache variable for type TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB024PacerDistanceValuePickerV_AD0f8DurationhI0VAA19_ConditionalContentVyAA4TextVAA08ModifiedL0VyAD023AlignedLeadingAccessorylD0VyAA5ImageVACyAL_AA6SpacerVALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB024PacerDistanceValuePickerV_AD0f8DurationhI0VAA19_ConditionalContentVyAA4TextVAA08ModifiedL0VyAD023AlignedLeadingAccessorylD0VyAA5ImageVACyAL_AA6SpacerVALtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGMR, MEMORY[0x277CE14C0]);
    v122 = v235;
    Section<>.init(content:)();
    v289 = *(v66 + 96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
    State.wrappedValue.getter();
    v123 = swift_allocObject();
    v124 = *(v66 + 80);
    v123[5] = *(v66 + 64);
    v123[6] = v124;
    v125 = *(v66 + 112);
    v123[7] = *(v66 + 96);
    v123[8] = v125;
    v126 = *(v66 + 16);
    v123[1] = *v66;
    v123[2] = v126;
    v127 = *(v66 + 48);
    v123[3] = *(v66 + 32);
    v123[4] = v127;
    outlined init with copy of PacerWorkoutConfigurationView(v66, &v289);
    v128 = lazy protocol witness table accessor for type Section<EmptyView, TupleView<(PacerDistanceValuePicker, PacerDurationValuePicker, _ConditionalContent<Text, ModifiedContent<AlignedLeadingAccessoryContentView<Image, TupleView<(Text, Spacer, Text)>>, _ForegroundStyleModifier<Color>>>)>, EmptyView> and conformance <> Section<A, B, C>();
    v129 = v237;
    v130 = object;
    View.onChange<A>(of:initial:_:)();

    (*(v236 + 8))(v122, v130);
    v289 = *(v66 + 112);
    State.wrappedValue.getter();
    v131 = swift_allocObject();
    v132 = *(v66 + 80);
    v131[5] = *(v66 + 64);
    v131[6] = v132;
    v133 = *(v66 + 112);
    v131[7] = *(v66 + 96);
    v131[8] = v133;
    v134 = *(v66 + 16);
    v131[1] = *v66;
    v131[2] = v134;
    v135 = *(v66 + 48);
    v131[3] = *(v66 + 32);
    v131[4] = v135;
    outlined init with copy of PacerWorkoutConfigurationView(v66, &v289);
    v289._countAndFlagsBits = v130;
    v289._object = MEMORY[0x277D839B0];
    v290 = v128;
    v136 = MEMORY[0x277D839C8];
    v291 = MEMORY[0x277D839C8];
    v137 = swift_getOpaqueTypeConformance2();
    v138 = v239;
    v139 = countAndFlagsBits;
    View.onChange<A>(of:initial:_:)();

    (*(v238 + 8))(v129, v139);
    v140 = v240;
    v141 = v266;
    (*(v240 + 16))(v267, v138, v266);
    swift_storeEnumTagMultiPayload();
    v289._countAndFlagsBits = v139;
    v289._object = MEMORY[0x277D839B0];
    v290 = v137;
    v291 = v136;
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<EmbeddedPacerConfigurationView, _PaddingLayout>, _BackgroundModifier<ModifiedContent<StrokeBorderShapeView<RoundedRectangle, HierarchicalShapeStyle, EmptyView>, _FlexFrameLayout>>>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    (*(v140 + 8))(v138, v141);
    v110 = v275;
  }

  type metadata accessor for ConfigurationNavigationModel(0);
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v142 = EnvironmentObject.init()();
  v267 = v143;
  v268 = v142;
  type metadata accessor for WorkoutConfigurationDataSource();
  lazy protocol witness table accessor for type PacerWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  v144 = EnvironmentObject.init()();
  v265 = v145;
  v266 = v144;
  v146 = WorkoutUIBundle.super.isa;
  v325._object = 0xE000000000000000;
  v147._countAndFlagsBits = 0xD00000000000001ALL;
  v147._object = 0x800000020CB93C90;
  v148.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v148.value._object = 0xEB00000000656C62;
  v149._countAndFlagsBits = 0;
  v149._object = 0xE000000000000000;
  v325._countAndFlagsBits = 0;
  v150 = NSLocalizedString(_:tableName:bundle:value:comment:)(v147, v148, v146, v149, v325);
  object = v150._object;
  countAndFlagsBits = v150._countAndFlagsBits;

  LOBYTE(v280) = 0;
  State.init(wrappedValue:)();
  LODWORD(v261) = LOBYTE(v289._countAndFlagsBits);
  v262 = v289._object;
  specialized MirroredStartProvider.supportsMirroredStart.getter();
  v152 = 15;
  if (v151)
  {
    v152 = 19;
  }

  *&v280 = v152;
  type metadata accessor for NLWorkoutStartSource(0);
  State.init(wrappedValue:)();
  v259 = v289._object;
  v260 = v289._countAndFlagsBits;
  v309 = 0;
  if ((WorkoutConfiguration.isOpenGoal.getter() & 1) != 0 || !dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v323, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMd, &_s7SwiftUI14ObservedObjectVy11WorkoutCore05PacerE13ConfigurationCGMR);
    (*(v252 + 56))(v279, 1, 1, v253);
  }

  else
  {

    if (!*v258)
    {
      EnvironmentObject.error()();
      __break(1u);
      return;
    }

    v153 = *v258;
    v154 = WorkoutConfigurationDataSource.isConfigurationStored(_:)();

    v258 = EnvironmentObject.init()();
    v250 = v155;
    LOBYTE(v280) = 0;
    State.init(wrappedValue:)();
    LOBYTE(v153) = v289._countAndFlagsBits;
    v156 = v110;
    v157 = v289._object;
    v158 = v154 & 1;
    LOBYTE(v289._countAndFlagsBits) = 0;
    v159 = v253;
    v160 = v221;
    v161 = &v221[*(v253 + 36)];
    v162 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA11ControlSizeOGMR) + 28);
    v163 = *MEMORY[0x277CDF420];
    v164 = type metadata accessor for ControlSize();
    (*(*(v164 - 8) + 104))(v161 + v162, v163, v164);
    *v161 = swift_getKeyPath();
    v165 = v250;
    *v160 = v258;
    *(v160 + 8) = v165;
    *(v160 + 16) = v156;
    *(v160 + 24) = v158;
    *(v160 + 32) = 0;
    *(v160 + 40) = v153;
    *(v160 + 48) = v157;
    *(v160 + 56) = xmmword_20CB7EC90;
    *(v160 + 72) = xmmword_20CB7E4D0;
    *(v160 + 88) = 0;
    v166 = v220;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v160, v220, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMR);
    v167 = v166;
    v168 = v279;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v167, v279, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGMR);
    (*(v252 + 56))(v168, 0, 1, v159);
  }

  if ((WorkoutConfiguration.isOpenGoal.getter() & 1) != 0 || !dispatch thunk of WorkoutConfiguration.externalProvider.getter())
  {
    v204 = v274;
    (*(v254 + 56))(v274, 1, 1, v255);
  }

  else
  {

    v289._countAndFlagsBits = WorkoutConfiguration.saveConfigurationFooterText.getter();
    v289._object = v169;
    v170 = Text.init<A>(_:)();
    v172 = v171;
    v174 = v173;
    v258 = v175;
    v253 = static Color.secondary.getter();
    KeyPath = swift_getKeyPath();
    v177 = swift_getKeyPath();
    v178 = v174 & 1;
    LOBYTE(v289._countAndFlagsBits) = v174 & 1;
    v179 = v228;
    v180 = &v228[*(v222 + 36)];
    v181 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4TextV4CaseOSgGMR) + 28);
    v182 = type metadata accessor for Text.Case();
    (*(*(v182 - 8) + 56))(v180 + v181, 1, 1, v182);
    *v180 = swift_getKeyPath();
    *v179 = v170;
    *(v179 + 8) = v172;
    *(v179 + 16) = v178;
    *(v179 + 17) = v280;
    *(v179 + 20) = *(&v280 + 3);
    *(v179 + 24) = v258;
    *(v179 + 32) = KeyPath;
    *(v179 + 40) = v253;
    *(v179 + 48) = v177;
    *(v179 + 56) = 0;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v183 = v234;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v179, v234, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGMR);
    v184 = (v183 + *(v226 + 36));
    v185 = v322[5];
    v184[4] = v322[4];
    v184[5] = v185;
    v184[6] = v322[6];
    v186 = v322[1];
    *v184 = v322[0];
    v184[1] = v186;
    v187 = v322[3];
    v184[2] = v322[2];
    v184[3] = v187;
    v188 = static Font.subheadline.getter();
    v189 = swift_getKeyPath();
    v190 = v183;
    v191 = v233;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v190, v233, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGMR);
    v192 = (v191 + *(v232 + 36));
    *v192 = v189;
    v192[1] = v188;
    v193 = swift_getKeyPath();
    v194 = v230;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v191, v230, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGMR);
    v195 = v194 + *(v231 + 36);
    *v195 = v193;
    *(v195 + 8) = 0;
    *(v195 + 16) = 1;
    v196 = v227;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v194, v227, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGGMR);
    v197 = v229;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v196, v229, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGMR);
    v198 = v197 + *(v223 + 36);
    *v198 = xmmword_20CB7EC90;
    *(v198 + 16) = xmmword_20CB7E4D0;
    *(v198 + 32) = 0;
    v289._countAndFlagsBits = static Color.clear.getter();
    v199 = AnyView.init<A>(_:)();
    v200 = v225;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v197, v225, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGMR);
    v201 = v255;
    *(v200 + *(v255 + 36)) = v199;
    v202 = v200;
    v203 = v224;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v202, v224, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMR);
    v204 = v274;
    _s7SwiftUI15ModifiedContentVyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGWObTm_0(v203, v274, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGMR);
    (*(v254 + 56))(v204, 0, 1, v201);
  }

  v205 = v271;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v277, v271, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMR);
  v206 = v272;
  outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v278, v272, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMR);
  v207 = v273;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v279, v273, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMR);
  v208 = v256;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v204, v256, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMR);
  v209 = v257;
  v210 = v269;
  *v257 = v276;
  v209[1] = v210;
  LODWORD(v255) = v251 & 1;
  *(v209 + 16) = v251 & 1;
  v209[3] = v270;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGARyAE4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAF15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0h18RowBackgroundTraitX0VGGA21_yAA0h14RowInsetsTraitX0VGGAF04HideH12RowSeparatorAHLLVGSgAPyAA0U0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA35_AAEA36_A37_A38__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyU0VANyAF24PacerDistanceValuePickerV_AF24PacerDurationValuePickerVAPyAeCyAF023AlignedLeadingAccessorydU0VyAA5ImageVANyAE_AA6SpacerVAEtGGAA011_ForegroundiZ0VyAA5ColorVGGGtGA42_G_SbQo__SbQo_ACyACyACyACyAF026EmbeddedPacerConfigurationU0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyACyAA017StrokeBorderShapeU0VyAA16RoundedRectangleVAA017HierarchicalShapeI0VA42_GA1_GGGA24_GA28_GGAF05StartF6ButtonVACyACyACyAF14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyAeRyA58_SgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtMd, &_s7SwiftUI15ModifiedContentVyAA4TextV07WorkoutB014ClearListStyle33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ACyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAeA30_EnvironmentKeyWritingModifierVyAA0E9AlignmentOGGARyAE4CaseOSgGGAA16_FlexFrameLayoutVGARyAA4FontVSgGGARySiSgGGAF15BodyHyphenationVGSgAPyA13_A14_GGSg_A14_tGGAA06_TraityZ0VyAA0h18RowBackgroundTraitX0VGGA21_yAA0h14RowInsetsTraitX0VGGAF04HideH12RowSeparatorAHLLVGSgAPyAA0U0PAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyA35_AAEA36_A37_A38__Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyU0VANyAF24PacerDistanceValuePickerV_AF24PacerDurationValuePickerVAPyAeCyAF023AlignedLeadingAccessorydU0VyAA5ImageVANyAE_AA6SpacerVAEtGGAA011_ForegroundiZ0VyAA5ColorVGGGtGA42_G_SbQo__SbQo_ACyACyACyACyAF026EmbeddedPacerConfigurationU0VAA14_PaddingLayoutVGAA011_BackgroundZ0VyACyAA017StrokeBorderShapeU0VyAA16RoundedRectangleVAA017HierarchicalShapeI0VA42_GA1_GGGA24_GA28_GGAF05StartF6ButtonVACyACyACyAF14SaveCopyButtonVA28_GA31_GARyAA11ControlSizeOGGSgACyACyACyACyACyACyACyACyACyAeRyA58_SgGGAUGAZGA1_GA6_GA9_GA12_GA28_GA24_GSgtMR);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v205, v209 + v211[12], &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMR);
  outlined init with copy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v206, v209 + v211[16], &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMR);
  v212 = v209 + v211[20];
  *&v280 = v268;
  *(&v280 + 1) = v267;
  *&v281 = v266;
  *(&v281 + 1) = v265;
  LOBYTE(v282) = 0;
  *(&v282 + 1) = v311[0];
  DWORD1(v282) = *(v311 + 3);
  *(&v282 + 1) = countAndFlagsBits;
  *&v283 = object;
  *(&v283 + 1) = v275;
  LOBYTE(v284) = v261;
  *(&v284 + 1) = *v310;
  DWORD1(v284) = *&v310[3];
  *(&v284 + 1) = v262;
  *&v285 = v260;
  *(&v285 + 1) = v259;
  v258 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *&v286 = implicit closure #2 in implicit closure #1 in variable initialization expression of StartWorkoutButton._devicesProvider;
  *(&v286 + 1) = 0;
  LOBYTE(v287) = 0;
  *(&v287 + 1) = *v308;
  DWORD1(v287) = *&v308[3];
  *(&v287 + 1) = 0;
  v288 = 0;
  *(v212 + 16) = 0;
  v213 = v283;
  *(v212 + 2) = v282;
  *(v212 + 3) = v213;
  v214 = v281;
  *v212 = v280;
  *(v212 + 1) = v214;
  v215 = v285;
  *(v212 + 4) = v284;
  *(v212 + 5) = v215;
  v216 = v287;
  *(v212 + 6) = v286;
  *(v212 + 7) = v216;
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v207, v209 + v211[24], &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMR);
  outlined init with copy of ObservedObject<PacerWorkoutConfiguration>(v208, v209 + v211[28], &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMR);
  v217 = v269;
  v218 = v255;
  outlined copy of Text.Storage(v276, v269, v255);

  outlined init with copy of StartWorkoutButton(&v280, &v289);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v274, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMR);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v279, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMR);
  outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v278, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMR);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v277, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMR);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v208, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA0E9AlignmentOGGAGyAE4CaseOSgGGAA16_FlexFrameLayoutVGAGyAA4FontVSgGGAGySiSgGG07WorkoutB015BodyHyphenationVGAA06_TraithI0VyAA013ListRowInsetstG0VGGA10_yAA0uv10BackgroundtG0VGGSgMR);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v273, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACy07WorkoutB014SaveCopyButtonVAA21_TraitWritingModifierVyAA013ListRowInsetsI3KeyVGGAD04HidelM9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGAA012_EnvironmentojK0VyAA11ControlSizeOGGSgMR);
  v289._countAndFlagsBits = v268;
  v289._object = v267;
  v290 = v266;
  v291 = v265;
  v292 = 0;
  *v293 = v311[0];
  *&v293[3] = *(v311 + 3);
  v294 = countAndFlagsBits;
  v295 = object;
  v296 = v275;
  v297 = v261;
  *v298 = *v310;
  *&v298[3] = *&v310[3];
  v299 = v262;
  v300 = v260;
  v301 = v259;
  v302 = v258;
  v303 = 0;
  v304 = 0;
  *v305 = *v308;
  *&v305[3] = *&v308[3];
  v306 = 0;
  v307 = 0;
  outlined destroy of StartWorkoutButton(&v289);
  outlined destroy of ModifiedContent<SubscriptionView<ObservableObjectPublisher, <<opaque return type of View.toolbarForegroundStyle<A>(_:for:)>>.0>, WorkoutConfigurationToolbar>(v272, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMd, &_s7SwiftUI19_ConditionalContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAEAfgH_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAA7SectionVyAA05EmptyE0VAA05TupleE0Vy07WorkoutB024PacerDistanceValuePickerV_AO0n8DurationpQ0VACyAA4TextVAA08ModifiedD0VyAO023AlignedLeadingAccessorydE0VyAA5ImageVANyAU_AA6SpacerVAUtGGAA24_ForegroundStyleModifierVyAA5ColorVGGGtGALG_SbQo__SbQo_AWyAWyAWyAWyAO08Embeddedn13ConfigurationE0VAA14_PaddingLayoutVGAA19_BackgroundModifierVyAWyAA017StrokeBorderShapeE0VyAA16RoundedRectangleVAA22HierarchicalShapeStyleVALGAA16_FlexFrameLayoutVGGGAA21_TraitWritingModifierVyAA25ListRowBackgroundTraitKeyVGGA35_yAA21ListRowInsetsTraitKeyVGGGMR);
  outlined destroy of ObservedObject<PacerWorkoutConfiguration>(v271, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6VStackVyAA9TupleViewVyAA012_ConditionalD0VyACyACyACyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0I9AlignmentOGGAMyAK4CaseOSgGGAA16_FlexFrameLayoutVGAMyAA4FontVSgGGAMySiSgGG07WorkoutB015BodyHyphenationVGSgAIyA9_A10_GGSg_A10_tGGAA06_TraitlM0VyAA017ListRowBackgroundwK0VGGA17_yAA0xy6InsetswK0VGGA6_04HidexY9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGSgMR);
  outlined consume of Text.Storage(v276, v217, v218);
}