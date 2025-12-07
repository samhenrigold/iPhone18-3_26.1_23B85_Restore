uint64_t type metadata accessor for WorkoutConfigurationDataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutConfigurationDataSource;
  if (!type metadata singleton initialization cache for WorkoutConfigurationDataSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutConfigurationDataSource(uint64_t a1)
{
  type metadata accessor for Published<[WorkoutConfiguration]>(319, &lazy cache variable for type metadata for Published<[WorkoutConfiguration]>, &_sSay11WorkoutCore0A13ConfigurationCGMd, &_sSay11WorkoutCore0A13ConfigurationCGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<[WorkoutConfiguration]>(319, &lazy cache variable for type metadata for Published<WorkoutConfiguration?>, &_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[WorkoutConfiguration]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

void partial apply for closure #1 in closure #3 in WorkoutConfigurationDataSource.remove(uuid:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in closure #3 in WorkoutConfigurationDataSource.remove(uuid:)(v2, v3);
}

uint64_t outlined destroy of RaceRouteDataStoring?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_117Tm(void (*a1)(void))
{
  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

double outlined consume of Result<[RaceWorkoutConfiguration], Error>(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

id AudioSessionUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioSessionUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioSessionUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AudioSessionUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AudioSessionUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized static AudioSessionUtilities.configureAudioSession()()
{
  v42[1] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CB8030];
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 category];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {

    v10 = 0;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v10 = v9 ^ 1;
  }

  v11 = *MEMORY[0x277CB80A8];
  v12 = [v1 sharedInstance];
  v13 = [v12 mode];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v41 = v11;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {

    v18 = 0;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v19 ^ 1;
  }

  v20 = [v1 sharedInstance];
  v21 = [v20 routeSharingPolicy];

  v22 = [v1 sharedInstance];
  v23 = [v22 categoryOptions];

  if (((v10 | v18) & 1) != 0 || v21 != 1 || v23)
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static WOLog.audio);
    v25 = v0;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42[0] = v29;
      *v28 = 136315650;
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v42);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2048;
      *(v28 + 14) = 1;
      *(v28 + 22) = 1024;
      *(v28 + 24) = 0;
      _os_log_impl(&dword_20AEA4000, v26, v27, "Configuring audio session. category=%s route_sharing_policy=%lu speaker_route_enabled=%{BOOL}d", v28, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x20F2E9420](v29, -1, -1);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    v33 = [v1 sharedInstance];
    v42[0] = 0;
    v34 = [v33 setCategory:v25 mode:v41 routeSharingPolicy:1 options:0 error:v42];

    if (v34)
    {
      v35 = v42[0];
    }

    else
    {
      v40 = v42[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    if (one-time initialization token for audio != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static WOLog.audio);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 67109888;
      *(v39 + 4) = 0;
      *(v39 + 8) = 1024;
      *(v39 + 10) = 0;
      *(v39 + 14) = 1024;
      *(v39 + 16) = 0;
      *(v39 + 20) = 1024;
      *(v39 + 22) = 0;
      _os_log_impl(&dword_20AEA4000, v37, v38, "Not configuring audio session. categoryNeedsUpdate=%{BOOL}d modeNeedsUpdate=%{BOOL}d policyNeedsUpdate=%{BOOL}d optionsNeedsUpdate=%{BOOL}d", v39, 0x1Au);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }
  }
}

void MetricsPublisher.workout(_:didMoveToState:)(void *a1, unint64_t a2)
{
  v3 = v2;
  v150 = type metadata accessor for Date();
  v138 = *(v150 - 8);
  v7 = MEMORY[0x28223BE20](v150, v6);
  v137 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v136 = &v123 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v144 = &v123 - v13;
  v149 = type metadata accessor for DateInterval();
  v139 = *(v149 - 8);
  v15 = MEMORY[0x28223BE20](v149, v14);
  v143 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v123 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = MEMORY[0x28223BE20](v24, v25);
  v28 = MEMORY[0x28223BE20](v26, v27);
  v30 = &v123 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v123 - v33;
  v36 = MEMORY[0x28223BE20](v32, v35);
  v148 = &v123 - v37;
  MEMORY[0x28223BE20](v36, v38);
  v43 = &v123 - v42;
  if (a2 < 3)
  {
    goto LABEL_40;
  }

  v129 = v3;
  v124 = v34;
  v125 = v39;
  v126 = v40;
  v130 = a2 - 3;
  if (a2 - 4 >= 3)
  {
    if (a2 == 3)
    {
      v72 = a1;
      v73 = [a1 sessionActivity];
      v74 = [v73 builder];

      if (v74 && (v75 = [v74 nl_lastUnbalancedPauseEvent], v74, v75))
      {
        v76 = [v75 dateInterval];

        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();
        DateInterval.start.getter();
        (*(v139 + 8))(v19, v149);
        v77 = *(v138 + 56);
        v78 = v43;
        v79 = 0;
      }

      else
      {
        v77 = *(v138 + 56);
        v78 = v43;
        v79 = 1;
      }

      v147 = v77;
      v77(v78, v79, 1, v150);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of Date?(v43, v148);

      static Published.subscript.setter();
      outlined destroy of Date?(v43);
      v80 = v72;
      v81 = [v72 sessionActivity];
      [v81 duration];
      v83 = v82;

      swift_getKeyPath();
      swift_getKeyPath();
      v151[0] = v83;

      static Published.subscript.setter();
      v84 = v130;
      goto LABEL_35;
    }

    goto LABEL_56;
  }

  v141 = v41;
  v128 = a2;
  v44 = *&v3[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutStatePublisher];
  v45 = v34;
  v46 = v138 + 56;
  v47 = *(v138 + 56);
  v131 = a1;
  v48 = v148;
  v49 = v150;
  v47(v148, 1, 1, v150);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v48, v45);

  v127 = v44;
  static Published.subscript.setter();
  v50 = v131;
  outlined destroy of Date?(v48);
  v142 = v30;
  v146 = v46;
  v147 = v47;
  v47(v30, 1, 1, v49);
  v51 = [v50 sessionActivity];
  v52 = [v51 builder];

  if (v52)
  {
    v53 = [v52 workoutEvents];

    type metadata accessor for HKWorkoutEvent();
    v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
  }

  v55 = v142;
  if (v54 >> 62)
  {
    v56 = __CocoaSet.count.getter();
    if (v56)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v56)
    {
LABEL_8:
      if (v56 < 1)
      {
        __break(1u);
        goto LABEL_56;
      }

      v57 = 0;
      v140 = (v138 + 48);
      v135 = (v138 + 32);
      v134 = (v138 + 16);
      v58 = (v139 + 8);
      v133 = (v138 + 8);
      v132 = v139 + 32;
      v145 = MEMORY[0x277D84F90];
      do
      {
        if ((v54 & 0xC000000000000001) != 0)
        {
          v61 = MEMORY[0x20F2E7A20](v57, v54);
        }

        else
        {
          v61 = *(v54 + 8 * v57 + 32);
        }

        v62 = v61;
        if ([v61 type] == 1)
        {
          v59 = [v62 dateInterval];
          static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

          v60 = v148;
          DateInterval.start.getter();

          (*v58)(v19, v149);
          outlined destroy of Date?(v55);
          v147(v60, 0, 1, v150);
          outlined init with take of Date?(v60, v55);
        }

        else if ([v62 type] == 2)
        {
          v63 = v55;
          v64 = v141;
          outlined init with copy of Date?(v63, v141);
          if ((*v140)(v64, 1, v150) == 1)
          {

            outlined destroy of Date?(v64);
          }

          else
          {
            v65 = v144;
            v66 = v64;
            v67 = v150;
            (*v135)(v144, v66, v150);
            (*v134)(v136, v65, v67);
            v68 = [v62 dateInterval];
            static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

            DateInterval.start.getter();
            (*v58)(v19, v149);
            DateInterval.init(start:end:)();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v145[2] + 1, 1, v145);
            }

            v70 = v145[2];
            v69 = v145[3];
            if (v70 >= v69 >> 1)
            {
              v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v69 > 1), v70 + 1, 1, v145);
            }

            (*v133)(v144, v150);
            v71 = v145;
            v145[2] = v70 + 1;
            (*(v139 + 32))(v71 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v70, v143, v149);
          }

          v55 = v142;
        }

        else
        {
        }

        ++v57;
      }

      while (v56 != v57);
      goto LABEL_34;
    }
  }

  v145 = MEMORY[0x277D84F90];
LABEL_34:

  swift_getKeyPath();
  swift_getKeyPath();
  v151[0] = v145;

  static Published.subscript.setter();
  v80 = v131;
  v85 = [v131 sessionActivity];
  [v85 duration];
  v87 = v86;

  swift_getKeyPath();
  swift_getKeyPath();
  v151[0] = v87;

  static Published.subscript.setter();
  outlined destroy of Date?(v55);
  v84 = v130;
  a2 = v128;
  if (v130 < 4)
  {
LABEL_35:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v151[0]) = 1;

    static Published.subscript.setter();
    if (v84 <= 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v88 = v126;
      static Published.subscript.getter(v126);

      v89 = (*(v138 + 48))(v88, 1, v150);
      outlined destroy of Date?(v88);
      if (v89 == 1)
      {
        v90 = v80;
        v91 = [v80 startDate];
        if (v91)
        {
          v92 = v125;
          v93 = v91;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v94 = 0;
        }

        else
        {
          v94 = 1;
          v92 = v125;
        }

        v147(v92, v94, 1, v150);
        swift_getKeyPath();
        swift_getKeyPath();
        outlined init with copy of Date?(v92, v148);

        static Published.subscript.setter();
        outlined destroy of Date?(v92);
        v95 = [v90 sessionActivity];
        v96 = [v95 activityType];

        swift_getKeyPath();
        swift_getKeyPath();
        v151[0] = v96;

        v97 = v96;
        static Published.subscript.setter();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v151);

        v98 = v151[0];
        [v151[0] identifier];

        v99 = [v90 sessionActivity];
        v100 = [v99 configuration];

        v101 = LiveWorkoutConfiguration.currentActivityType.getter();
        LODWORD(v100) = [v101 supportsDistanceSplits];

        if (v100)
        {
          v102 = [v90 sessionActivity];
          v103 = [v102 dataProvider];

          v104 = [v103 splitProvider];
          swift_unknownObjectRelease();
          if (v104)
          {
            v105 = [v104 splitStartDate];
            v106 = v148;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v147(v106, 0, 1, v150);
            swift_getKeyPath();
            swift_getKeyPath();
            outlined init with copy of Date?(v106, v124);
            v107 = v129;
            static Published.subscript.setter();
            outlined destroy of Date?(v106);
            v108 = [v104 splitIndex];
            swift_getKeyPath();
            swift_getKeyPath();
            v151[0] = v108;
            v109 = v107;
            static Published.subscript.setter();
            swift_unknownObjectRelease();
          }
        }

        v110 = [v90 sessionActivity];
        v111 = [v110 dataProvider];

        [v111 elapsedTimeProvider];
        swift_unknownObjectRelease();
        type metadata accessor for SeymourElapsedTimeAccumulator(0);
        v112 = swift_dynamicCastClass();
        if (v112)
        {
          v113 = v112;
          v114 = lazy protocol witness table accessor for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator(&lazy protocol witness table cache variable for type SeymourElapsedTimeAccumulator and conformance SeymourElapsedTimeAccumulator, type metadata accessor for SeymourElapsedTimeAccumulator, &protocol conformance descriptor for SeymourElapsedTimeAccumulator);
          v115 = v129;
          v116 = &v129[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_videoTimeProvider];
          swift_beginAccess();
          *v116 = v113;
          *(v116 + 1) = v114;
        }

        else
        {
          v115 = v129;
        }

        swift_unknownObjectRelease();
        v117 = [v90 sessionActivity];
        v118 = [v117 dataProvider];

        [v118 elapsedTimeProvider];
        swift_unknownObjectRelease();
        type metadata accessor for MachineElapsedTimeAccumulator(0);
        v119 = swift_dynamicCastClass();
        if (v119)
        {
          v120 = v119;
          v121 = lazy protocol witness table accessor for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator(&lazy protocol witness table cache variable for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator, type metadata accessor for MachineElapsedTimeAccumulator, &protocol conformance descriptor for MachineElapsedTimeAccumulator);
          v122 = &v115[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_gymKitTimeProvider];
          swift_beginAccess();
          *v122 = v120;
          *(v122 + 1) = v121;
        }

        swift_unknownObjectRelease();
      }

      if (a2 == 4)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v152 = 1;
        goto LABEL_42;
      }
    }

LABEL_41:
    swift_getKeyPath();
    swift_getKeyPath();
    v152 = 0;
LABEL_42:

    static Published.subscript.setter();
    return;
  }

  if (v128 <= 2)
  {
LABEL_40:
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v151[0]) = 0;

    static Published.subscript.setter();
    goto LABEL_41;
  }

LABEL_56:
  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000048, 0x800000020B4668A0, "WorkoutCore/MetricsPublisherWorkoutStateObserver.swift", 54, 2, 44, 0);
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall MetricsPublisher.workout(_:pausedReasonsDidUpdate:)(NLWorkout *_, __C::NLWorkoutPausedReason pausedReasonsDidUpdate)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

unint64_t type metadata accessor for HKWorkoutEvent()
{
  result = lazy cache variable for type metadata for HKWorkoutEvent;
  if (!lazy cache variable for type metadata for HKWorkoutEvent)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKWorkoutEvent);
  }

  return result;
}

double CustomTimeSplitsTracker.alertDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*CustomTimeSplitsTracker.alertDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CustomTimeSplitsTracker.alertDelegate.modify;
}

void CustomTimeSplitsTracker.alertDelegate.modify(void **a1, char a2)
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

id CustomTimeSplitsTracker.__allocating_init(timeSpan:formattingManager:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_splitCount] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_timeSpan] = a2;
  *&v5[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_formattingManager] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CustomTimeSplitsTracker.init(timeSpan:formattingManager:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_splitCount] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_timeSpan] = a2;
  *&v2[OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_formattingManager] = a1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CustomTimeSplitsTracker();
  return objc_msgSendSuper2(&v6, sel_init);
}

id CustomTimeSplitsTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CustomTimeSplitsTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomTimeSplitsTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized CustomTimeSplitsTracker.handleElapsedTimeUpdate(elapsedTime:distance:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_timeSpan);
  if (v2 == 0.0)
  {
    return;
  }

  v3 = floor(a1 / v2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v4 = *(v1 + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_splitCount);
  *(v1 + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_splitCount) = v3;
  if (v4 < v3)
  {
    v5 = v2 * v3;
    v6 = *(v1 + OBJC_IVAR___NLWorkoutCustomTimeSplitsTracker_formattingManager);
    v7 = objc_allocWithZone(type metadata accessor for WorkoutAlertTimeSplit());
    v8 = WorkoutAlertTimeSplit.init(workoutAlertType:elapsedTime:formattingManager:)(5, v6, v5);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong alertSource:v1 didTriggerAlert:v8];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

const char *WorkoutSignpost.name.getter(uint64_t a1)
{
  result = "WorkoutSignpostUserRequestedStartWorkoutSession";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "WorkoutSignpostDidStartCountdown";
      break;
    case 2:
      result = "WorkoutSignpostDidPresentSessionView";
      break;
    case 3:
      result = "WorkoutSignpostBuilderRequestedCollectingHKSamples";
      break;
    case 4:
      result = "WorkoutSignpostBuilderDidBeginCollectingHKSamples";
      break;
    case 5:
      result = "WorkoutSignpostDidChangeToWorkoutSessionStateRunning";
      break;
    case 6:
      result = "WorkoutSignpostDidCollectFirstHKSample";
      break;
    case 7:
      result = "WorkoutSignpostDidCollectFirstHKHeartRateSample";
      break;
    case 8:
      result = "WorkoutSignpostUserRequestedEndingWorkoutSession";
      break;
    case 9:
      result = "WorkoutSignpostDidEndWorkoutSession";
      break;
    case 10:
      result = "WorkoutSignpostMediaPlayIntentCalled";
      break;
    case 11:
      result = "WorkoutSignpostMediaConfirmIntentCalled";
      break;
    case 12:
      result = "WorkoutSignpostMediaConfirmIntentCompleted";
      break;
    case 13:
      result = "WorkoutSignpostMediaHandleIntentCalled";
      break;
    case 14:
      result = "WorkoutSignpostMediaHandleIntentCompleted";
      break;
    case 15:
      result = "WorkoutSignpostUserRequestedMirroredStartWorkoutSession";
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

uint64_t WorkoutSignpost.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:

      goto LABEL_4;
    case 2:
    case 10:

      goto LABEL_4;
    case 3:

      goto LABEL_4;
    case 4:

      goto LABEL_4;
    case 5:

      goto LABEL_4;
    case 6:
    case 13:

      goto LABEL_4;
    case 7:

      goto LABEL_4;
    case 8:

      goto LABEL_4;
    case 9:

      goto LABEL_4;
    case 11:

      goto LABEL_4;
    case 12:

      goto LABEL_4;
    case 14:

      goto LABEL_4;
    case 15:

LABEL_4:
      result = StaticString.description.getter();
      break;
    default:
      result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      break;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutSignpost()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutSignpost(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutSignpost@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized WorkoutSignpost.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

double WorkoutIntervalSignpost.elapsedTime.getter()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = v1 - v2;
  v4 = v2 < v1;
  result = 0.0;
  if (v4)
  {
    return v3;
  }

  return result;
}

uint64_t WorkoutIntervalSignpost.__allocating_init(_:beginSignpost:endSignpost:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 48) = a5;
  *(result + 56) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  return result;
}

uint64_t WorkoutIntervalSignpost.init(_:beginSignpost:endSignpost:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t WorkoutIntervalSignpost.description.getter()
{
  v4 = StaticString.description.getter();
  MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
  WorkoutSignpost.name.getter(*(v0 + 40));
  v1 = StaticString.description.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](2108704, 0xE300000000000000);
  WorkoutSignpost.name.getter(*(v0 + 48));
  v2 = StaticString.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return v4;
}

uint64_t WorkoutIntervalSignpost.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id static WorkoutSignposter.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkoutSignposter.shared;

  return v1;
}

id WorkoutSignposter.init(intervalSignposts:)(unint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for perf != -1)
  {
LABEL_53:
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, static WOLog.perf);
  v9 = *(v4 + 16);
  v4 += 16;
  v9(v7, v8, v3);
  OSSignposter.init(logger:)();
  *(v1 + OBJC_IVAR___WOCoreWorkoutSignposter_lock) = 0;
  v53 = MEMORY[0x277D84F98];
  v54 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      v10 = 0;
      v49 = v1;
      v50 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x20F2E7A20](v10, a1);
          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (v10 >= *(v50 + 16))
          {
            goto LABEL_50;
          }

          v3 = *(a1 + 8 * v10 + 32);

          v4 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }
        }

        v1 = v54;
        if (!v54[2])
        {
          break;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(*(v3 + 40));
        if ((v11 & 1) == 0)
        {
          break;
        }

LABEL_26:
        v26 = specialized Dictionary.subscript.modify(v52, *(v3 + 40));
        if (*v25)
        {
          v27 = v25;

          MEMORY[0x20F2E6F30](v28);
          if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        (v26)(v52, 0);
        v1 = v53;
        if (v53[2])
        {
          specialized __RawDictionaryStorage.find<A>(_:)(*(v3 + 48));
          if (v29)
          {
            goto LABEL_43;
          }
        }

        v30 = *(v3 + 48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v52[0] = v1;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        v34 = v1[2];
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_49;
        }

        v37 = v33;
        if (v1[3] < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if ((v37 & 1) != (v38 & 1))
          {
LABEL_57:
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

LABEL_37:
          v1 = v52[0];
          if ((v37 & 1) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_37;
        }

        v39 = v32;
        specialized _NativeDictionary.copy()();
        v32 = v39;
        v1 = v52[0];
        if ((v37 & 1) == 0)
        {
LABEL_40:
          v1[(v32 >> 6) + 8] |= 1 << v32;
          *(v1[6] + 8 * v32) = v30;
          *(v1[7] + 8 * v32) = MEMORY[0x277D84F90];
          v40 = v1[2];
          v18 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v18)
          {
            goto LABEL_52;
          }

          v1[2] = v41;
          goto LABEL_42;
        }

LABEL_38:
        *(v1[7] + 8 * v32) = MEMORY[0x277D84F90];

LABEL_42:
        v53 = v1;
LABEL_43:
        v1 = &v53;
        v43 = specialized Dictionary.subscript.modify(v52, *(v3 + 48));
        if (*v42)
        {
          v1 = v42;

          MEMORY[0x20F2E6F30](v44);
          if (*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        (v43)(v52, 0);

        ++v10;
        if (v4 == v7)
        {

          v45 = v53;
          v46 = v54;
          v1 = v49;
          goto LABEL_56;
        }
      }

      v12 = *(v3 + 40);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v52[0] = v1;
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
      v16 = v1[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        goto LABEL_48;
      }

      v20 = v15;
      if (v1[3] >= v19)
      {
        if ((v13 & 1) == 0)
        {
          v22 = v14;
          specialized _NativeDictionary.copy()();
          v14 = v22;
          v1 = v52[0];
          if (v20)
          {
            goto LABEL_21;
          }

          goto LABEL_23;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, v13);
        v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if ((v20 & 1) != (v21 & 1))
        {
          goto LABEL_57;
        }
      }

      v1 = v52[0];
      if (v20)
      {
LABEL_21:
        *(v1[7] + 8 * v14) = MEMORY[0x277D84F90];

LABEL_25:
        v54 = v1;
        goto LABEL_26;
      }

LABEL_23:
      v1[(v14 >> 6) + 8] |= 1 << v14;
      *(v1[6] + 8 * v14) = v12;
      *(v1[7] + 8 * v14) = MEMORY[0x277D84F90];
      v23 = v1[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_51;
      }

      v1[2] = v24;
      goto LABEL_25;
    }
  }

  v45 = MEMORY[0x277D84F98];
  v46 = MEMORY[0x277D84F98];
LABEL_56:
  *(v1 + OBJC_IVAR___WOCoreWorkoutSignposter_beginSignposts) = v46;
  *(v1 + OBJC_IVAR___WOCoreWorkoutSignposter_endSignposts) = v45;
  v47 = type metadata accessor for WorkoutSignposter(0);
  v51.receiver = v1;
  v51.super_class = v47;
  return objc_msgSendSuper2(&v51, sel_init);
}

uint64_t WorkoutSignposter.emit(signpost:)(uint64_t a1)
{
  v105 = type metadata accessor for OSSignpostError();
  v99 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v3);
  v104 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v111 = &v99 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v99 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v99 - v19;
  v21 = OBJC_IVAR___WOCoreWorkoutSignposter_lock;
  swift_beginAccess();
  v100 = v21;
  os_unfair_lock_lock((v1 + v21));
  swift_endAccess();
  Current = CFAbsoluteTimeGetCurrent();
  v23 = OBJC_IVAR___WOCoreWorkoutSignposter_signposter;
  v102 = a1;
  v24 = WorkoutSignpost.name.getter(a1);
  static OSSignpostID.exclusive.getter();
  v118 = v1;
  v115 = v23;
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    if (!v24)
    {
      goto LABEL_77;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_20AEA4000, v25, v26, v28, v24, "", v27, 2u);
    MEMORY[0x20F2E9420](v27, -1, -1);
  }

  isa = v6[1].isa;
  v114 = v6 + 1;
  isa(v20, v5);
  if (one-time initialization token for perf != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v29 = type metadata accessor for Logger();
    v117 = __swift_project_value_buffer(v29, static WOLog.perf);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v122 = v33;
      *v32 = 136315394;
      WorkoutSignpost.name.getter(v102);
      v34 = StaticString.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v122);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2048;
      *(v32 + 14) = Current;
      _os_log_impl(&dword_20AEA4000, v30, v31, "[WorkoutSignpost] event emitted: %s, timestamp: %f", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x20F2E9420](v33, -1, -1);
      MEMORY[0x20F2E9420](v32, -1, -1);
    }

    v37 = *(v118 + OBJC_IVAR___WOCoreWorkoutSignposter_beginSignposts);
    v38 = *(v37 + 16);
    v110 = v10;
    if (v38)
    {
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v102);
      if (v40)
      {
        v20 = *(*(v37 + 56) + 8 * v39);
        if (v20 >> 62)
        {
          goto LABEL_79;
        }

        v41 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v41)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_31:
    v61 = *(v118 + OBJC_IVAR___WOCoreWorkoutSignposter_endSignposts);
    if (!*(v61 + 16))
    {
      break;
    }

    v62 = specialized __RawDictionaryStorage.find<A>(_:)(v102);
    if ((v63 & 1) == 0)
    {
      break;
    }

    v6 = *(*(v61 + 56) + 8 * v62);
    if (v6 >> 62)
    {
      v64 = __CocoaSet.count.getter();
      if (!v64)
      {
        break;
      }
    }

    else
    {
      v64 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v64)
      {
        break;
      }
    }

    v109 = v5;
    v112 = v6 & 0xC000000000000001;
    v107 = v6 & 0xFFFFFFFFFFFFFF8;
    *&v103 = v99 + 11;
    LODWORD(v102) = *MEMORY[0x277D85B00];
    ++v99;

    v5 = 0;
    *&v65 = 136315138;
    v101 = v65;
    *&v65 = 136315650;
    v106 = v65;
    v108 = v6;
    v111 = v64;
    while (1)
    {
      if (v112)
      {
        v66 = MEMORY[0x20F2E7A20](v5, v6);
        v67 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v5 >= *(v107 + 16))
        {
          goto LABEL_69;
        }

        v66 = v6[v5 + 4].isa;

        v67 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_67;
        }
      }

      if (!*(v66 + 72))
      {

        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v116 = v67;
          v74 = v73;
          v121 = v73;
          *v72 = v101;

          v10 = v110;
          v122 = StaticString.description.getter();
          v123 = v75;
          MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
          WorkoutSignpost.name.getter(*(v66 + 40));
          v76 = StaticString.description.getter();
          MEMORY[0x20F2E6D80](v76);

          MEMORY[0x20F2E6D80](2108704, 0xE300000000000000);
          WorkoutSignpost.name.getter(*(v66 + 48));
          v77 = StaticString.description.getter();
          MEMORY[0x20F2E6D80](v77);

          MEMORY[0x20F2E6D80](41, 0xE100000000000000);

          v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v121);

          *(v72 + 4) = v17;
          _os_log_impl(&dword_20AEA4000, v70, v71, "[WorkoutSignpost] endInterval for %s doesn't have a corresponding beginInterval or has already been ended", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v74);
          v78 = v74;
          v67 = v116;
          MEMORY[0x20F2E9420](v78, -1, -1);
          v79 = v72;
          v64 = v111;
          MEMORY[0x20F2E9420](v79, -1, -1);
        }

        goto LABEL_37;
      }

      v116 = v67;
      v68 = *(v66 + 16);
      v17 = *(v66 + 32);

      v20 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v69 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        break;
      }

LABEL_58:

      isa(v10, v109);
      *(v66 + 64) = Current;
      *(v66 + 72) = 0;

      v85 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v85, v17))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v121 = v87;
        *v86 = v106;

        v10 = v110;
        v122 = StaticString.description.getter();
        v123 = v88;
        MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
        WorkoutSignpost.name.getter(*(v66 + 40));
        v89 = StaticString.description.getter();
        MEMORY[0x20F2E6D80](v89);

        MEMORY[0x20F2E6D80](2108704, 0xE300000000000000);
        WorkoutSignpost.name.getter(*(v66 + 48));
        v90 = StaticString.description.getter();
        MEMORY[0x20F2E6D80](v90);

        MEMORY[0x20F2E6D80](41, 0xE100000000000000);

        v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v121);

        *(v86 + 4) = v91;
        *(v86 + 12) = 2048;
        *(v86 + 14) = Current;
        *(v86 + 22) = 2048;
        v93 = *(v66 + 56);
        v92 = *(v66 + 64);
        if (v93 >= v92)
        {
          v94 = 0.0;
        }

        else
        {
          v94 = v92 - v93;
        }

        *(v86 + 24) = v94;
        _os_log_impl(&dword_20AEA4000, v85, v17, "[WorkoutSignpost] endInterval: %s, timestamp: %f, elapsedTime: %f", v86, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x20F2E9420](v87, -1, -1);
        v95 = v86;
        v6 = v108;
        MEMORY[0x20F2E9420](v95, -1, -1);
      }

      v64 = v111;
      v67 = v116;
LABEL_37:
      ++v5;
      if (v67 == v64)
      {

        goto LABEL_65;
      }
    }

    if (v17)
    {
      if (v68 >> 32)
      {
        goto LABEL_74;
      }

      if ((v68 & 0xFFFFF800) == 0xD800)
      {
        goto LABEL_78;
      }

      if (v68 > 0x10FFFF)
      {
        goto LABEL_75;
      }

      v68 = &v120;
LABEL_55:

      v80 = v104;
      checkForErrorAndConsumeState(state:)();

      v81 = (*v103)(v80, v105);
      v82 = "[Error] Interval already ended";
      if (v81 != v102)
      {
        (*v99)(v104, v105);
        v82 = "";
      }

      v83 = swift_slowAlloc();
      *v83 = 0;
      v84 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_20AEA4000, v20, v69, v84, v68, v82, v83, 2u);
      MEMORY[0x20F2E9420](v83, -1, -1);
      v6 = v108;
      goto LABEL_58;
    }

    if (v68)
    {
      goto LABEL_55;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      v41 = __CocoaSet.count.getter();
      if (!v41)
      {
        goto LABEL_31;
      }

LABEL_11:
      v109 = v20 & 0xC000000000000001;
      *&v101 = v20 & 0xFFFFFFFFFFFFFF8;
      *&v106 = v6 + 2;

      v6 = 0;
      *&v42 = 136315394;
      v103 = v42;
      v112 = v17;
      v107 = v41;
      v108 = v20;
LABEL_13:
      if (v109)
      {
        v43 = MEMORY[0x20F2E7A20](v6, v20);
        v44 = &v6->isa + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        goto LABEL_19;
      }

      if (v6 >= *(v101 + 16))
      {
        goto LABEL_68;
      }

      v43 = *(v20 + 8 * v6 + 32);

      v44 = &v6->isa + 1;
      if (!__OFADD__(v6, 1))
      {
LABEL_19:
        v116 = v44;
        v45 = *(v43 + 16);
        v46 = *(v43 + 32);
        static OSSignpostID.exclusive.getter();
        v20 = OSSignposter.logHandle.getter();
        v47 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          if (v46)
          {
            if (v45 >> 32)
            {
              goto LABEL_70;
            }

            if ((v45 & 0xFFFFF800) == 0xD800)
            {
              continue;
            }

            if (v45 > 0x10FFFF)
            {
              goto LABEL_72;
            }

            v45 = &v119;
          }

          else if (!v45)
          {
            goto LABEL_71;
          }

          v48 = swift_slowAlloc();
          *v48 = 0;
          v49 = v112;
          v50 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_20AEA4000, v20, v47, v50, v45, "", v48, 2u);
          v51 = v48;
          v17 = v49;
          MEMORY[0x20F2E9420](v51, -1, -1);
        }

        (*v106)(v111, v17, v5);
        type metadata accessor for OSSignpostIntervalState();
        swift_allocObject();
        v52 = OSSignpostIntervalState.init(id:isOpen:)();
        isa(v17, v5);
        *(v43 + 72) = v52;

        *(v43 + 56) = Current;

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v121 = v56;
          *v55 = v103;

          v10 = v110;
          v122 = StaticString.description.getter();
          v123 = v57;
          MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
          WorkoutSignpost.name.getter(*(v43 + 40));
          v58 = StaticString.description.getter();
          MEMORY[0x20F2E6D80](v58);

          MEMORY[0x20F2E6D80](2108704, 0xE300000000000000);
          WorkoutSignpost.name.getter(*(v43 + 48));
          v59 = StaticString.description.getter();
          MEMORY[0x20F2E6D80](v59);

          MEMORY[0x20F2E6D80](41, 0xE100000000000000);

          v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v123, &v121);

          *(v55 + 4) = v60;
          *(v55 + 12) = 2048;
          *(v55 + 14) = Current;
          _os_log_impl(&dword_20AEA4000, v53, v54, "[WorkoutSignpost] beginInterval: %s, timestamp: %f", v55, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x20F2E9420](v56, -1, -1);
          MEMORY[0x20F2E9420](v55, -1, -1);
        }

        v20 = v108;
        v6 = (v6 + 1);
        v17 = v112;
        if (v116 == v107)
        {

          goto LABEL_31;
        }

        goto LABEL_13;
      }

      break;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
  }

LABEL_65:
  v96 = v118;
  v97 = v100;
  swift_beginAccess();
  os_unfair_lock_unlock((v96 + v97));
  return swift_endAccess();
}

id WorkoutSignposter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutSignposter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutSignposter(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[9] = specialized _NativeDictionary.subscript.modify(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return _NativeDictionary.subscript.modifyspecialized ;
}

{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for ExternalProvider(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    if ((*a1)[4])
    {
      *(*(*v1[2] + 56) + 8 * v1[3]) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)();
    }
  }

  else if ((*a1)[4])
  {
    specialized _NativeDictionary._delete(at:)(v1[3], *v1[2]);
  }

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    outlined destroy of String(*(v7 + 48) + 16 * v6);
    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

unint64_t specialized WorkoutSignpost.init(rawValue:)(unint64_t result)
{
  if (result > 0xF)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WorkoutSignposter(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutSignposter;
  if (!type metadata singleton initialization cache for WorkoutSignposter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutSignpost and conformance WorkoutSignpost()
{
  result = lazy protocol witness table cache variable for type WorkoutSignpost and conformance WorkoutSignpost;
  if (!lazy protocol witness table cache variable for type WorkoutSignpost and conformance WorkoutSignpost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutSignpost and conformance WorkoutSignpost);
  }

  return result;
}

uint64_t type metadata completion function for WorkoutSignposter(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for OSSignposter();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Bool __swiftcall RaceWorkoutConfiguration.raceTimeWouldWinRace(_:secondsAhead:)(Swift::Double _, Swift::Double_optional secondsAhead)
{
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v9);

    if (v9 == 1)
    {
      v5 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
    }

    v7 = (v3 + *v5);
    swift_beginAccess();
    v6 = *v7 < _;
  }

  else
  {
    v6 = *&secondsAhead.is_nil < 0.0;
  }

  return !v6;
}

Swift::Double __swiftcall RaceWorkoutConfiguration.raceTimeFrom(_:)(HKWorkout a1)
{
  [(objc_class *)a1.super.super.super.isa fiui_duration];
  v3 = v2;
  v4 = [(objc_class *)a1.super.super.super.isa metadata];
  if (v4)
  {
    v5 = v4;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = 0.0;
    if (*(v6 + 16))
    {
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002DLL, 0x800000020B4650F0);
      if (v9)
      {
        outlined init with copy of Any(*(v6 + 56) + 32 * v8, v14);
        if (swift_dynamicCast())
        {
          v7 = v13;
        }
      }
    }

    if (*(v6 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B465180), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v6 + 56) + 32 * v10, v14);

      if (swift_dynamicCast())
      {
        v3 = v13;
      }
    }

    else
    {
    }

    return v3 - v7;
  }

  return v3;
}

Swift::Double_optional __swiftcall RaceWorkoutConfiguration.secondsAheadFrom(_:)(HKWorkout a1)
{
  v1 = [(objc_class *)a1.super.super.super.isa metadata];
  if (v1)
  {
    v3 = v1;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B465230), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v4 + 56) + 32 * v5, v8);

      if (swift_dynamicCast())
      {
        LOBYTE(v1) = v7;
        goto LABEL_8;
      }
    }

    else
    {
    }

    LOBYTE(v1) = 0;
  }

LABEL_8:
  result.value = v2;
  result.is_nil = v1;
  return result;
}

Swift::Bool __swiftcall RaceWorkoutConfiguration.shouldShowResultsRow(metadata:)(Swift::OpaquePointer_optional metadata)
{
  if (!metadata.value._rawValue)
  {
    v15 = 0u;
    v16 = 0u;
    outlined destroy of Any?(&v15);
    return 0;
  }

  v2 = v1;
  rawValue = metadata.value._rawValue;
  if (*(metadata.value._rawValue + 2))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000027, 0x800000020B454C40);
    if (v5)
    {
      outlined init with copy of Any(rawValue[7] + 32 * v4, &v15);
      if (swift_dynamicCast())
      {
        if (LOBYTE(v14))
        {
          return 0;
        }
      }
    }
  }

  if (rawValue[2])
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B465180);
    if (v7)
    {
      outlined init with copy of Any(rawValue[7] + 32 * v6, &v15);
      outlined destroy of Any?(&v15);
      return 1;
    }
  }

  v15 = 0u;
  v16 = 0u;
  outlined destroy of Any?(&v15);
  if (!rawValue[2])
  {
    return 0;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003BLL, 0x800000020B4651F0);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(rawValue[7] + 32 * v9, &v15);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v11 = v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v14);

  if (LOBYTE(v14) == 1)
  {
    v12 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  }

  else
  {
    v12 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  }

  v13 = (v2 + *v12);
  swift_beginAccess();
  return v11 / *v13 >= 0.8;
}

uint64_t Apple_Workout_Core_ElapsedTimeMetricsPublisher.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_ElapsedTimeMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_ElapsedTimeMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_ElapsedTimeMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_ElapsedTimeMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_ElapsedTimeMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_ElapsedTimeMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_ElapsedTimeMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  }

  return result;
}

uint64_t Apple_Workout_Core_ElapsedTimeMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Apple_Workout_Core_ElapsedTimeMetricsPublisher.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_ElapsedTimeMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_ElapsedTimeMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy11WorkoutCore0D23VoiceMuteAnalyticsEventV0H3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLOSo8NSObjectCG_SS_AMts5NeverOTg504_s11d8Core0A23fghi14V0E3Key33_4127klmnopqr7FLLOSo8s36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5t19OIegnrzr_TR04_s11a8v44A23cdef19V05buildeF0SDySSSo8p25CGyFSS_AFtAC0yZ38_4127hijklmnO13FLLO_AFtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v37 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = a1;
  v4 = a1 + 64;
  v5 = _HashTable.startBucket.getter();
  v6 = v37;
  v7 = v5;
  v8 = 0;
  v36 = *(a1 + 36);
  v31 = a1 + 72;
  v32 = v1;
  v33 = a1 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_33;
    }

    if (v36 != *(v3 + 36))
    {
      goto LABEL_34;
    }

    v11 = *(*(v3 + 48) + v7);
    if (v11 <= 1)
    {
      if (!*(*(v3 + 48) + v7))
      {
        v12 = 0x7974697669746361;
        goto LABEL_15;
      }

      v35 = 0xD000000000000013;
      v13 = 0x800000020B454C70;
    }

    else
    {
      if (v11 == 2)
      {
        v34 = 0xE700000000000000;
        v35 = 0x646574754D7369;
        goto LABEL_20;
      }

      if (v11 == 3)
      {
        v12 = 0x6E6F697461636F6CLL;
LABEL_15:
        v34 = 0xEC00000065707954;
        v35 = v12;
        goto LABEL_20;
      }

      v35 = 0xD000000000000011;
      v13 = 0x800000020B454CA0;
    }

    v34 = v13;
LABEL_20:
    v14 = *(*(v3 + 56) + 8 * v7);
    v38 = v6;
    v15 = v3;
    v16 = *(v6 + 16);
    v17 = *(v6 + 24);
    v18 = v6;
    v19 = v14;
    v6 = v18;
    if (v16 >= v17 >> 1)
    {
      v30 = v19;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16 + 1, 1);
      v19 = v30;
      v6 = v38;
    }

    *(v6 + 16) = v16 + 1;
    v20 = (v6 + 24 * v16);
    v20[4] = v35;
    v20[5] = v34;
    v20[6] = v19;
    v9 = 1 << *(v15 + 32);
    v4 = v33;
    if (v7 >= v9)
    {
      goto LABEL_35;
    }

    v21 = *(v33 + 8 * v10);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_36;
    }

    v3 = v15;
    if (v36 != *(v15 + 36))
    {
      goto LABEL_37;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (v31 + 8 * v10);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          v28 = v6;
          outlined consume of [WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey : NSObject].Index._Variant(v7, v36, 0);
          v6 = v28;
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      v29 = v6;
      outlined consume of [WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey : NSObject].Index._Variant(v7, v36, 0);
      v6 = v29;
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v32)
    {
      return;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t WorkoutVoiceMuteAnalyticsEvent.buildAnalyticsEvent()()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore0C23VoiceMuteAnalyticsEventV0G3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLO_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  [v3 effectiveTypeIdentifier];
  v4 = _HKWorkoutActivityNameForActivityType();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._object = 0x800000020B456540;
    v9._countAndFlagsBits = 0xD000000000000015;
    if (String.hasPrefix(_:)(v9))
    {
      v10 = String.count.getter();
      v11 = specialized Collection.dropFirst(_:)(v10, v6, v8);
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v6 = MEMORY[0x20F2E6D00](v11, v13, v15, v17);
      v8 = v18;
    }
  }

  else
  {
    v8 = 0x800000020B456520;
    v6 = 0xD000000000000010;
  }

  v19 = MEMORY[0x20F2E6C00](v6, v8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, 0, isUniquelyReferenced_nonNull_native);
  v21 = *(v1 + 48);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 1, v23);
  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v25 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 2, v25);
  [v3 isIndoor];
  type metadata accessor for NSString();
  v26 = NSString.init(stringLiteral:)();
  v27 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 3, v27);
  v28 = MEMORY[0x20F2E6C00](*(v1 + 32), *(v1 + 40));
  v29 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, 4, v29);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy11WorkoutCore0D23VoiceMuteAnalyticsEventV0H3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLOSo8NSObjectCG_SS_AMts5NeverOTg504_s11d8Core0A23fghi14V0E3Key33_4127klmnopqr7FLLOSo8s36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5t19OIegnrzr_TR04_s11a8v44A23cdef19V05buildeF0SDySSSo8p25CGyFSS_AFtAC0yZ38_4127hijklmnO13FLLO_AFtXEfU_Tf3nnnpf_nTf1cn_n(v35);
  v31 = v30;

  if (*(v31 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v32 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v32 = MEMORY[0x277D84F98];
  }

  v35 = v32;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v33, 1, &v35);

  return v35;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x7974697669746361;
  v4 = 0xE700000000000000;
  v5 = 0x646574754D7369;
  v6 = 0x6E6F697461636F6CLL;
  v7 = 0x800000020B454CA0;
  if (v2 == 3)
  {
    v7 = 0xEC00000065707954;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v2 != 2)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x800000020B454C70;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v8 = 0xEC00000065707954;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x20F2E6D80](0xD00000000000001BLL, 0x800000020B467020);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "Swift/NativeDictionary.swift", 28, 2, 792, 0);
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, 1);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WorkoutVoiceMuteAnalyticsEvent(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutVoiceMuteAnalyticsEvent(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey()
{
  result = lazy protocol witness table cache variable for type WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey);
  }

  return result;
}

unint64_t specialized WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t ChartDataProvider.__allocating_init(startDate:units:timeWindow:maxBuckets:populateAsynchronously:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v28 = a4;
  v26 = a2;
  v27 = a3;
  v25 = a1;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v10, v11);
  v12 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  Published.init(initialValue:)();
  v16 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  *(v14 + v16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v15);
  v22 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
  v21[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v29 = v15;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v9, *MEMORY[0x277D85260], v24);
  *(v14 + v22) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v17 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate;
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 32))(v14 + v17, v25, v18);
  v19 = v27;
  *(v14 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v26;
  *(v14 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = a5;
  *(v14 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = v19;
  *(v14 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = v28;
  return v14;
}

uint64_t ChartDataProvider.dataElements.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double ChartDataProvider.dataElements.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*ChartDataProvider.dataElements.modify(uint64_t *a1))()
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
  return ChartDataProvider.dataElements.modify;
}

void ChartDataProvider.dataElements.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for ChartDataProvider.$dataElements : ChartDataProvider(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ChartDataProvider.$dataElements : ChartDataProvider(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t ChartDataProvider.$dataElements.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ChartDataProvider.$dataElements.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ChartDataProvider.$dataElements.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ChartDataProvider.$dataElements.modify;
}

void ChartDataProvider.$dataElements.modify(uint64_t a1, char a2)
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

uint64_t ChartDataProvider.init(startDate:units:timeWindow:maxBuckets:populateAsynchronously:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v6 = v5;
  v35 = a4;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v11, v12);
  v13 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v27 - v18;
  v20 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v21 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  Published.init(initialValue:)();
  (*(v16 + 32))(v5 + v20, v19, v15);
  v22 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  *(v5 + v22) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v21);
  v28 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v36 = v21;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v29, *MEMORY[0x277D85260], v31);
  *(v5 + v28) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate;
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 32))(v6 + v23, v32, v24);
  v25 = v34;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v33;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = a5;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = v25;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = v35;
  return v6;
}

Swift::Void __swiftcall ChartDataProvider.add(samples:)(Swift::OpaquePointer samples)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) == 1)
  {
    v17 = *(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue);
    v18 = v11;
    v19 = v10;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2]._rawValue = v14;
    v15[3]._rawValue = samples._rawValue;
    aBlock[4] = partial apply for closure #1 in ChartDataProvider.add(samples:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_60;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v20 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v13, v7, v16);
    _Block_release(v16);
    (*(v4 + 8))(v7, v3);
    (*(v18 + 8))(v13, v19);
  }

  else
  {

    ChartDataProvider.notThreadSafe_add(samples:)(samples._rawValue);
  }
}

double closure #1 in ChartDataProvider.add(samples:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ChartDataProvider.notThreadSafe_add(samples:)(a2);
  }

  return result;
}

void ChartDataProvider.notThreadSafe_add(samples:)(uint64_t a1)
{
  v2 = v1;
  v101 = type metadata accessor for DispatchWorkItemFlags();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v4);
  v98 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for DispatchQoS();
  v97 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v6);
  v96 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DateInterval();
  v8 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v9);
  v111 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v102 = &v96 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v113 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v110 = &v96 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v118 = &v96 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v96 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v103 = &v96 - v34;
  v35 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate;
  v36 = *(v2 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow);
  v37 = *(v2 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets);
  v119 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  swift_beginAccess();
  v38 = *(a1 + 16);
  v120 = v18;
  v104 = v19;
  v114 = v2;
  if (v38)
  {
    v109 = v35;
    v108 = v15;
    v39 = v36 / v37;
    v106 = *(v2 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units);
    v116 = (v19 + 8);
    v105 = (v8 + 8);
    v40 = a1 + 32;
    v117 = v38;
    v107 = v40;
    do
    {
      outlined init with copy of ChartableSample(v40, aBlock);
      v53 = v122;
      v52 = v123;
      __swift_project_boxed_opaque_existential_1(aBlock, v122);
      (*(v52 + 1))(v53, v52);
      Date.timeIntervalSince(_:)();
      v55 = v54 / v39;
      if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      if (v55 <= -9.22337204e18)
      {
        goto LABEL_32;
      }

      if (v55 >= 9.22337204e18)
      {
        goto LABEL_33;
      }

      Date.addingTimeInterval(_:)();
      v115 = *v116;
      v115(v118, v18);
      v56 = v122;
      v57 = v123;
      __swift_project_boxed_opaque_existential_1(aBlock, v122);
      (*(v57 + 1))(v56, v57);
      v58 = v122;
      v59 = v123;
      __swift_project_boxed_opaque_existential_1(aBlock, v122);
      (*(v59 + 2))(v58, v59);
      v60 = v111;
      DateInterval.init(start:end:)();
      DateInterval.duration.getter();
      v49 = v61;
      (*v105)(v60, v112);
      v62 = *(v2 + v119);
      if (*(v62 + 16))
      {
        v63 = specialized __RawDictionaryStorage.find<A>(_:)(v32);
        v42 = v107;
        if (v64)
        {
          v41 = *(*(v62 + 56) + 8 * v63);
        }

        else
        {
          type metadata accessor for WorkoutDataBucket();
          v41 = swift_allocObject();
          *(v41 + 16) = 0;
          *(v41 + 24) = 0;
        }
      }

      else
      {
        type metadata accessor for WorkoutDataBucket();
        v41 = swift_allocObject();
        *(v41 + 16) = 0;
        *(v41 + 24) = 0;
        v42 = v107;
      }

      v43 = v115;
      v45 = v122;
      v44 = v123;
      __swift_project_boxed_opaque_existential_1(aBlock, v122);
      LOBYTE(v44) = v44[4](v45, v44);
      v46 = v122;
      v47 = v123;
      __swift_project_boxed_opaque_existential_1(aBlock, v122);
      v48 = (*(v47 + 3))(v106, v46, v47);
      if ((v44 & 1) == 0)
      {
        v49 = 1.0;
      }

      swift_beginAccess();
      *(v41 + 16) = v48 + *(v41 + 16);
      swift_beginAccess();
      *(v41 + 24) = v49 + *(v41 + 24);
      v2 = v114;
      v50 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125 = *(v2 + v50);
      *(v2 + v50) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v41, v32, isUniquelyReferenced_nonNull_native);
      *(v2 + v50) = v125;
      v18 = v120;
      v43(v32, v120);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v40 += 40;
      --v38;
    }

    while (v38);
    swift_endAccess();
    v65 = (v104 + 56);
    v66 = (v104 + 48);
    v67 = (v104 + 32);
    v68 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChartableSample(v42, aBlock);
      v69 = v122;
      v70 = v123;
      __swift_project_boxed_opaque_existential_1(aBlock, v122);
      v71 = *(v70 + 2);
      v72 = v70;
      v73 = v108;
      v71(v69, v72);
      v74 = v120;
      (*v65)(v73, 0, 1, v120);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if ((*v66)(v73, 1, v74) == 1)
      {
        outlined destroy of (key: Date, value: WorkoutDataBucket)(v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v75 = *v67;
        (*v67)(v113, v73, v74);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v68 + 2) + 1, 1, v68);
        }

        v77 = *(v68 + 2);
        v76 = *(v68 + 3);
        if (v77 >= v76 >> 1)
        {
          v68 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v68);
        }

        *(v68 + 2) = v77 + 1;
        v75(&v68[((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v77], v113, v120);
      }

      v42 += 40;
      --v117;
    }

    while (v117);
  }

  else
  {
    swift_endAccess();
    v68 = MEMORY[0x277D84F90];
  }

  v78 = v102;
  specialized Sequence<>.max()(v68, v102);

  v79 = v104;
  v80 = *(v104 + 48);
  v81 = v120;
  if (v80(v78, 1, v120) == 1)
  {
    v82 = v103;
    Date.init()();
    v83 = v80(v78, 1, v81);
    v84 = v114;
    if (v83 != 1)
    {
      outlined destroy of (key: Date, value: WorkoutDataBucket)(v78, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v82 = v103;
    (*(v79 + 32))(v103, v78, v81);
    v84 = v114;
  }

  ChartDataProvider.trimBucketsFromRollingStart(to:)(v82);

  ChartDataProvider.dataElements(for:)(v85);
  v87 = v86;

  if (*(v84 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously))
  {
    v88 = MEMORY[0x277D84F90];
    type metadata accessor for OS_dispatch_queue();
    v89 = static OS_dispatch_queue.main.getter();
    v90 = swift_allocObject();
    swift_weakInit();
    v91 = swift_allocObject();
    *(v91 + 16) = v90;
    *(v91 + 24) = v87;
    v123 = partial apply for closure #3 in ChartDataProvider.notThreadSafe_add(samples:);
    v124 = v91;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    v122 = &block_descriptor_21_1;
    v92 = _Block_copy(aBlock);

    v93 = v96;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = v88;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v94 = v98;
    v95 = v101;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v93, v94, v92);
    _Block_release(v92);

    (*(v100 + 8))(v94, v95);
    (*(v97 + 8))(v93, v99);
    (*(v79 + 8))(v103, v81);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v87;

    static Published.subscript.setter();
    (*(v79 + 8))(v82, v81);
  }
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v6 = MEMORY[0x28223BE20](*(v4 - 8), v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v24 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(v10 + 16);
    v15 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v27 = v10;
    v25 = a2;
    v26 = v14;
    v14(&v24 - v11, v15, v4);
    result = v27;
    if (v13 == 1)
    {
LABEL_3:
      v17 = v25;
      (*(result + 32))(v25, v12, v4);
      return (*(v27 + 56))(v17, 0, 1, v4);
    }

    else
    {
      v19 = (v27 + 32);
      v20 = 1;
      while (1)
      {
        v21 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v26(v8, v15 + *(result + 72) * v20, v4);
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v22 = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *(v27 + 8);
        if (v22)
        {
          v23(v12, v4);
          (*v19)(v12, v8, v4);
        }

        else
        {
          v23(v8, v4);
        }

        ++v20;
        result = v27;
        if (v21 == v13)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v18 = *(v10 + 56);

    return v18(a2, 1, 1, v4);
  }

  return result;
}

double closure #3 in ChartDataProvider.notThreadSafe_add(samples:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.setter();
  }

  return result;
}

void ChartDataProvider.trimBucketsFromRollingStart(to:)(uint64_t a1)
{
  v2 = v1;
  v40 = type metadata accessor for Date();
  v42 = *(v40 - 8);
  v4 = MEMORY[0x28223BE20](v40, v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) == 1)
  {
    v15 = v9;
    v16 = *(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue);
    *v14 = v16;
    (*(v11 + 104))(v14, *MEMORY[0x277D85200], v10);
    v17 = v16;
    v9 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    (*(v11 + 8))(v14, v10);
    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  static Date.- infix(_:_:)();
  v18 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  v19 = swift_beginAccess();
  v21 = *(v1 + v18);
  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV_Tt1g5(*(v21 + 16), 0);
    v41 = specialized Sequence._copySequenceContents(initializing:)(v44, &v23[(*(v42 + 80) + 32) & ~*(v42 + 80)], v22, v21);
    v38 = v44[2];
    v39 = v44[0];

    outlined consume of [Date : WorkoutDataBucket].Iterator._Variant(v39);
    if (v41 != v22)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }
  }

  MEMORY[0x28223BE20](v19, v20);
  *(&v37 - 2) = v9;
  v25 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in ChartDataProvider.trimBucketsFromRollingStart(to:), (&v37 - 4), v24);
  v26 = *(v25 + 16);
  v27 = v40;
  if (v26)
  {
    v38 = v9;
    v39 = v25;
    v41 = *(v42 + 16);
    v42 += 16;
    v28 = v25 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
    v29 = *(v42 + 56);
    v30 = (v42 - 8);
    v37 = (v42 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(v6, v28, v40);
    while (1)
    {
      swift_beginAccess();
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v33)
      {
        v34 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = *(v2 + v18);
        v43 = v36;
        *(v2 + v18) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v36 = v43;
        }

        v27 = v40;
        (*v30)(*(v36 + 48) + v34 * v29, v40);

        specialized _NativeDictionary._delete(at:)(v34, v36);
        *(v2 + v18) = v36;
      }

      swift_endAccess();
      v31 = *v30;
      (*v30)(v6, v27);
      v28 += v29;
      if (!--v26)
      {
        break;
      }

      v41(v6, v28, v27);
    }

    v9 = v38;
  }

  else
  {

    v31 = *(v42 + 8);
  }

  v31(v9, v27);
}

void ChartDataProvider.dataElements(for:)(uint64_t a1)
{
  v51 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMd, &_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMR);
  MEMORY[0x28223BE20](v47, v2);
  v4 = &v43 - v3;
  v5 = type metadata accessor for Date();
  v49 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v50 = &v43 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) != 1 || (v17 = *(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue), *v16 = v17, (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12), v18 = v17, v19 = _dispatchPreconditionTest(_:)(), v21 = *(v13 + 8), v20 = (v13 + 8), v21(v16, v12), (v19 & 1) != 0))
  {
    Date.init()();
    static Date.- infix(_:_:)();
    v23 = v49 + 1;
    v22 = v49[1];
    v43 = v9;
    v45 = v22;
    v22(v9, v5);
    v20 = (v51 + 64);
    v24 = *(v51 + 64);
    v44 = MEMORY[0x277D84F90];
    v53 = MEMORY[0x277D84F90];
    v25 = 1 << *(v51 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v24;
    v28 = (v25 + 63) >> 6;
    v46 = v23;
    v48 = v23 + 1;

    v29 = 0;
    while (1)
    {
      v30 = v29;
      if (!v27)
      {
        break;
      }

LABEL_10:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = v31 | (v29 << 6);
      v33 = v51;
      v34 = v49[2];
      v34(v4, *(v51 + 48) + v49[9] * v32, v5);
      v35 = *(*(v33 + 56) + 8 * v32);
      *&v4[*(v47 + 48)] = v35;
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);

      if (dispatch thunk of static Comparable.< infix(_:_:)())
      {
        outlined destroy of (key: Date, value: WorkoutDataBucket)(v4, &_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMd, &_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMR);
      }

      else
      {
        v34(v43, v4, v5);
        swift_beginAccess();
        v36 = *(v35 + 16);
        swift_beginAccess();
        v37 = v36 / *(v35 + 24);
        v38 = type metadata accessor for WorkoutChartDataElement(0);
        v39 = objc_allocWithZone(v38);
        v40 = v43;
        v34(&v39[OBJC_IVAR___WOWorkoutChartDataElement_date], v43, v5);
        *&v39[OBJC_IVAR___WOWorkoutChartDataElement_value] = v37;
        v52.receiver = v39;
        v52.super_class = v38;
        objc_msgSendSuper2(&v52, sel_init);
        v45(v40, v5);
        v41 = outlined destroy of (key: Date, value: WorkoutDataBucket)(v4, &_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMd, &_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMR);
        MEMORY[0x20F2E6F30](v41);
        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v44 = v53;
      }
    }

    while (1)
    {
      v29 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v29 >= v28)
      {

        v53 = specialized Array._copyToContiguousArray()(v42);
        specialized MutableCollection<>.sort(by:)(&v53);

        v45(v50, v5);
        return;
      }

      v27 = v20[v29];
      ++v30;
      if (v27)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
}

uint64_t ChartDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t ChartDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate;
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ChartDataProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChartDataProvider(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v125 = a1;
  v135 = type metadata accessor for Date();
  v9 = MEMORY[0x28223BE20](v135, v8);
  v137 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v136 = &v122 - v13;
  v131 = a3;
  v14 = *(a3 + 8);
  if (v14 < 1)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_87:
    v15 = *v125;
    if (!*v125)
    {
      goto LABEL_126;
    }

    a3 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v117 = a3;
    }

    else
    {
LABEL_120:
      v117 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    }

    v139 = v117;
    a3 = *(v117 + 2);
    if (a3 >= 2)
    {
      while (*v131)
      {
        v118 = *&v117[16 * a3];
        v119 = v117;
        v120 = *&v117[16 * a3 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v131 + 8 * v118), (*v131 + 8 * *&v117[16 * a3 + 16]), (*v131 + 8 * v120), v15);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v120 < v118)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = specialized _ArrayBuffer._consumeAndCreateNew()(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_114;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v139 = v119;
        specialized Array.remove(at:)(a3 - 1);
        v117 = v139;
        a3 = *(v139 + 2);
        if (a3 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v15 = 0;
  v134 = (v12 + 16);
  v133 = (v12 + 8);
  v16 = MEMORY[0x277D84F90];
  v124 = a4;
  while (1)
  {
    v17 = v15++;
    v126 = v17;
    if (v15 < v14)
    {
      v130 = v14;
      v123 = v5;
      v122 = v16;
      v18 = *v131;
      v19 = *(*v131 + 8 * v15);
      v127 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v22 = *v20;
      v21 = v20 + 2;
      v23 = OBJC_IVAR___WOWorkoutChartDataElement_date;
      swift_beginAccess();
      v24 = *v134;
      v25 = v136;
      v26 = v135;
      (*v134)(v136, &v19[v23], v135);
      v27 = OBJC_IVAR___WOWorkoutChartDataElement_date;
      swift_beginAccess();
      v28 = &v22[v27];
      v29 = v137;
      v129 = v24;
      v24(v137, v28, v26);
      v30 = v19;
      v31 = v22;
      LODWORD(v132) = static Date.< infix(_:_:)();
      v32 = *v133;
      (*v133)(v29, v26);
      v128 = v32;
      (v32)(v25, v26);

      a3 = v126 + 2;
      while (1)
      {
        v15 = v130;
        if (v130 == a3)
        {
          break;
        }

        v34 = *(v21 - 1);
        v33 = *v21;
        v35 = OBJC_IVAR___WOWorkoutChartDataElement_date;
        swift_beginAccess();
        v36 = v136;
        v37 = v135;
        v138 = v21;
        v38 = v129;
        v129(v136, &v33[v35], v135);
        v39 = OBJC_IVAR___WOWorkoutChartDataElement_date;
        swift_beginAccess();
        v40 = v137;
        v38(v137, &v34[v39], v37);
        v41 = v138;
        v42 = v33;
        v43 = v34;
        LODWORD(v33) = static Date.< infix(_:_:)() & 1;
        v44 = v40;
        v45 = v128;
        (v128)(v44, v37);
        v45(v36, v37);

        ++a3;
        v21 = v41 + 1;
        if ((v132 & 1) != v33)
        {
          v15 = a3 - 1;
          break;
        }
      }

      v16 = v122;
      a4 = v124;
      v5 = v123;
      v17 = v126;
      v46 = v127;
      if (v132)
      {
        if (v15 < v126)
        {
          goto LABEL_117;
        }

        if (v126 < v15)
        {
          v47 = 8 * v15 - 8;
          v48 = v15;
          v49 = v126;
          do
          {
            if (v49 != --v48)
            {
              v51 = *v131;
              if (!*v131)
              {
                goto LABEL_123;
              }

              v50 = *(v51 + v46);
              *(v51 + v46) = *(v51 + v47);
              *(v51 + v47) = v50;
            }

            ++v49;
            v47 -= 8;
            v46 += 8;
          }

          while (v49 < v48);
        }
      }
    }

    v52 = v131[1];
    if (v15 < v52)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_116;
      }

      if (v15 - v17 < a4)
      {
        v53 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_118;
        }

        if (v53 >= v52)
        {
          v53 = v131[1];
        }

        if (v53 < v17)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v15 != v53)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v15 < v17)
    {
      goto LABEL_115;
    }

    v70 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v70;
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v70 + 2) + 1, 1, v70);
    }

    a3 = *(v16 + 2);
    v71 = *(v16 + 3);
    v72 = a3 + 1;
    if (a3 >= v71 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), a3 + 1, 1, v16);
    }

    *(v16 + 2) = v72;
    v73 = &v16[16 * a3];
    *(v73 + 4) = v126;
    *(v73 + 5) = v15;
    v74 = *v125;
    if (!*v125)
    {
      goto LABEL_125;
    }

    if (a3)
    {
      while (1)
      {
        v75 = v72 - 1;
        if (v72 >= 4)
        {
          break;
        }

        if (v72 == 3)
        {
          v76 = *(v16 + 4);
          v77 = *(v16 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_55:
          if (v79)
          {
            goto LABEL_104;
          }

          v92 = &v16[16 * v72];
          v94 = *v92;
          v93 = *(v92 + 1);
          v95 = __OFSUB__(v93, v94);
          v96 = v93 - v94;
          v97 = v95;
          if (v95)
          {
            goto LABEL_107;
          }

          v98 = &v16[16 * v75 + 32];
          v100 = *v98;
          v99 = *(v98 + 1);
          v86 = __OFSUB__(v99, v100);
          v101 = v99 - v100;
          if (v86)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v96, v101))
          {
            goto LABEL_111;
          }

          if (v96 + v101 >= v78)
          {
            if (v78 < v101)
            {
              v75 = v72 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v102 = &v16[16 * v72];
        v104 = *v102;
        v103 = *(v102 + 1);
        v86 = __OFSUB__(v103, v104);
        v96 = v103 - v104;
        v97 = v86;
LABEL_69:
        if (v97)
        {
          goto LABEL_106;
        }

        v105 = &v16[16 * v75];
        v107 = *(v105 + 4);
        v106 = *(v105 + 5);
        v86 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v86)
        {
          goto LABEL_109;
        }

        if (v108 < v96)
        {
          goto LABEL_3;
        }

LABEL_76:
        a3 = v75 - 1;
        if (v75 - 1 >= v72)
        {
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
          goto LABEL_119;
        }

        if (!*v131)
        {
          goto LABEL_122;
        }

        v113 = v16;
        v114 = *&v16[16 * a3 + 32];
        v115 = *&v16[16 * v75 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v131 + 8 * v114), (*v131 + 8 * *&v16[16 * v75 + 32]), (*v131 + 8 * v115), v74);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v115 < v114)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = specialized _ArrayBuffer._consumeAndCreateNew()(v113);
        }

        if (a3 >= *(v113 + 2))
        {
          goto LABEL_101;
        }

        v116 = &v113[16 * a3];
        *(v116 + 4) = v114;
        *(v116 + 5) = v115;
        v139 = v113;
        specialized Array.remove(at:)(v75);
        v16 = v139;
        v72 = *(v139 + 2);
        if (v72 <= 1)
        {
          goto LABEL_3;
        }
      }

      v80 = &v16[16 * v72 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_102;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_103;
      }

      v87 = &v16[16 * v72];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_105;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_108;
      }

      if (v91 >= v83)
      {
        v109 = &v16[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_112;
        }

        if (v78 < v112)
        {
          v75 = v72 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v14 = v131[1];
    a4 = v124;
    if (v15 >= v14)
    {
      goto LABEL_87;
    }
  }

  v122 = v16;
  v123 = v5;
  v132 = *v131;
  a3 = v132 + 8 * v15 - 8;
  v54 = (v17 - v15);
  v127 = v53;
LABEL_28:
  v130 = v15;
  v55 = *(v132 + 8 * v15);
  v128 = v54;
  v56 = v54;
  v129 = a3;
  while (1)
  {
    v138 = v56;
    v57 = *a3;
    v58 = OBJC_IVAR___WOWorkoutChartDataElement_date;
    swift_beginAccess();
    v59 = *v134;
    v60 = v136;
    v61 = v135;
    (*v134)(v136, &v55[v58], v135);
    v62 = OBJC_IVAR___WOWorkoutChartDataElement_date;
    swift_beginAccess();
    v63 = v137;
    v59(v137, &v57[v62], v61);
    v64 = v55;
    v65 = v57;
    LOBYTE(v62) = static Date.< infix(_:_:)();
    v66 = *v133;
    (*v133)(v63, v61);
    v66(v60, v61);

    if ((v62 & 1) == 0)
    {
LABEL_27:
      v15 = v130 + 1;
      a3 = v129 + 8;
      v54 = v128 - 1;
      if ((v130 + 1) != v127)
      {
        goto LABEL_28;
      }

      v15 = v127;
      v5 = v123;
      v16 = v122;
      v17 = v126;
      goto LABEL_35;
    }

    v67 = v138;
    if (!v132)
    {
      break;
    }

    v68 = *a3;
    v55 = *(a3 + 8);
    *a3 = v55;
    *(a3 + 8) = v68;
    a3 -= 8;
    v69 = __CFADD__(v67, 1);
    v56 = (v67 + 1);
    if (v69)
    {
      goto LABEL_27;
    }
  }

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
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore21CyclingPowerZonesSizeO_SayAC0eF4ZoneCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore21CyclingPowerZonesSizeOSayAC0eF4ZoneCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore21CyclingPowerZonesSizeOSayAC0eF4ZoneCGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_11WorkoutCore0C10DataBucketCtMd, &_s10Foundation4DateV_11WorkoutCore0C10DataBucketCtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV11WorkoutCore0E10DataBucketCGMd, &_ss18_DictionaryStorageCy10Foundation4DateV11WorkoutCore0E10DataBucketCGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_s10Foundation4DateV_11WorkoutCore0C10DataBucketCtMd, &_s10Foundation4DateV_11WorkoutCore0C10DataBucketCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Date();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for ChartDataProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for ChartDataProvider;
  if (!type metadata singleton initialization cache for ChartDataProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ChartDataProvider(uint64_t a1)
{
  type metadata accessor for Published<[WorkoutChartDataElement]>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[WorkoutChartDataElement]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[WorkoutChartDataElement]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[WorkoutChartDataElement]>);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSdGMd, &_ss18_DictionaryStorageCySiSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVtMd, &_sSS_11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVGMd, &_ss18_DictionaryStorageCySS11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_sSS_11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVtMd, &_sSS_11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
      result = outlined init with take of Apple_Workout_Core_ActivityMetadataValue(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore0C23VoiceMuteAnalyticsEventV0G3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLO_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5Int32VSdGMd, &_ss18_DictionaryStorageCys5Int32VSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore15KnownPublishersO_s6UInt32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore15KnownPublishersOs6UInt32VGMd, &_ss18_DictionaryStorageCy11WorkoutCore15KnownPublishersOs6UInt32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s10AnyKeyPathCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs10AnyKeyPathCGMd, &_ss18_DictionaryStorageCySSs10AnyKeyPathCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore26MeanDistributionByPositionC6BucketCTt0g5Tf4g_nTm(double *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = *(a1 + 5);
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationV0aB8InternalE4MoodO_SStMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_SStMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOSSGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOSSGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_s8MusicKit7StationV0aB8InternalE4MoodO_SStMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Station.Mood();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_10Foundation4DateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationV0aB8InternalE4MoodO_10Foundation4DateVtMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_10Foundation4DateVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodO10Foundation4DateVGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodO10Foundation4DateVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_s8MusicKit7StationV0aB8InternalE4MoodO_10Foundation4DateVtMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_10Foundation4DateVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Station.Mood();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for Date();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_ScTySSSgs5NeverOGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationV0aB8InternalE4MoodO_ScTySSSgs5NeverOGtMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_ScTySSSgs5NeverOGtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOScTySSSgs5NeverOGGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOScTySSSgs5NeverOGGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_s8MusicKit7StationV0aB8InternalE4MoodO_ScTySSSgs5NeverOGtMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_ScTySSSgs5NeverOGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Station.Mood();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21HKWorkoutActivityTypeV_SaySdGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21HKWorkoutActivityTypeVSaySdGGMd, &_ss18_DictionaryStorageCySo21HKWorkoutActivityTypeVSaySdGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s11AnyHashableVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs11AnyHashableVGMd, &_ss18_DictionaryStorageCySSs11AnyHashableVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v4, &v16, &_sSS_s11AnyHashableVtMd, &_sSS_s11AnyHashableVtMR);
      v5 = v16;
      v6 = v17;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore16ExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *(i - 1);
      v9 = *i;

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSs11AnyHashableVGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v17, v13, a2, v28);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo14HKQuantityTypeC_SaySo0C6SampleCGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore06Apple_c1_D13_PublisherKeyO_s6UInt32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore06Apple_c1_D13_PublisherKeyOs6UInt32VGMd, &_ss18_DictionaryStorageCy11WorkoutCore06Apple_c1_D13_PublisherKeyOs6UInt32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 44); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 4);
      v7 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of ChartableSample(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of (key: Date, value: WorkoutDataBucket)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with take of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (Station.Mood, Task<String?, Never>)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

Swift::Int DataLinkActivePairedWatchCapability.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DataLinkActivePairedWatchCapability()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkActivePairedWatchCapability(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for NAPILI_ALIGNED_UUID()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_allocate_value_buffer(v0, static DataLinkBackwardCompatibilityUtility.NAPILI_ALIGNED_UUID);
  __swift_project_value_buffer(v0, static DataLinkBackwardCompatibilityUtility.NAPILI_ALIGNED_UUID);
  return UUID.init(uuidString:)();
}

BOOL specialized static DataLinkBackwardCompatibilityUtility.activePairedWatch(supports:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v12 - v2;
  v4 = FIGetActivePairedDevice();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (one-time initialization token for NAPILI_ALIGNED_UUID != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, static DataLinkBackwardCompatibilityUtility.NAPILI_ALIGNED_UUID);
  outlined init with copy of UUID?(v6, v3);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v3, 1, v7) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v3, v7);
  }

  v10 = [v5 supportsCapability_];

  return (v10 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type DataLinkActivePairedWatchCapability and conformance DataLinkActivePairedWatchCapability()
{
  result = lazy protocol witness table cache variable for type DataLinkActivePairedWatchCapability and conformance DataLinkActivePairedWatchCapability;
  if (!lazy protocol witness table cache variable for type DataLinkActivePairedWatchCapability and conformance DataLinkActivePairedWatchCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkActivePairedWatchCapability and conformance DataLinkActivePairedWatchCapability);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataLinkActivePairedWatchCapability(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DataLinkActivePairedWatchCapability(_WORD *result, int a2, int a3)
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> FastSyncHKKeyValueDomain.setNumber(_:forKey:)(NSNumber_optional _, Swift::String forKey)
{
  isa = _.value.super.super.isa;
  aBlock[6] = *MEMORY[0x277D85DE8];
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = MEMORY[0x20F2E6C00](*&_.is_nil, forKey._countAndFlagsBits);
  aBlock[0] = 0;
  LOBYTE(v5) = [v5 setNumber:isa forKey:v6 error:aBlock];

  v7 = aBlock[0];
  if (v5)
  {
    aBlock[4] = closure #1 in FastSyncHKKeyValueDomain.forceSync();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_61;
    v8 = _Block_copy(aBlock);
    v9 = v7;
    [v4 forceNanoSyncWithOptions:0 completion:v8];
    _Block_release(v8);
  }

  else
  {
    v10 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void FastSyncHKKeyValueDomain.setData(_:forKey:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v8 = *v4;
  v7 = *(v4 + 8);
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v10 = MEMORY[0x20F2E6C00](a3, a4);
  aBlock[0] = 0;
  v11 = [v8 setData:isa forKey:v10 error:aBlock];

  v12 = aBlock[0];
  if (v11)
  {
    aBlock[4] = closure #1 in FastSyncHKKeyValueDomain.forceSync();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_3_5;
    v13 = _Block_copy(aBlock);
    v14 = v12;
    [v7 forceNanoSyncWithOptions:0 completion:v13];
    _Block_release(v13);
  }

  else
  {
    v15 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void FastSyncHKKeyValueDomain.data(forKey:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x20F2E6C00](a1, a2);
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_6_6;
  v9 = _Block_copy(v10);

  [v7 dataForKey:v8 completion:v9];
  _Block_release(v9);
}

void FastSyncHKKeyValueDomain.number(forKey:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x20F2E6C00](a1, a2);
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_9_7;
  v9 = _Block_copy(v10);

  [v7 numberForKey:v8 completion:v9];
  _Block_release(v9);
}

void closure #1 in FastSyncHKKeyValueDomain.forceSync()(char a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.core);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {

      if (a1)
      {
        return;
      }

      goto LABEL_9;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Received an error forcing a HK sync: %@", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  if (a1)
  {
    return;
  }

LABEL_9:
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.core);
  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v14, "Failed to force an HK sync.", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }
}

void FastSyncHKKeyValueDomain.removeValue(forKey:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v14[4] = partial apply for closure #1 in FastSyncHKKeyValueDomain.removeValue(forKey:completion:);
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v14[3] = &block_descriptor_12_3;
  v13 = _Block_copy(v14);

  [v9 removeValuesForKeys:isa completion:v13];
  _Block_release(v13);
}

void protocol witness for FastSyncHKKeyValueDomainProtocol.number(forKey:completion:) in conformance FastSyncHKKeyValueDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x20F2E6C00](a1, a2);
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_18_4;
  v9 = _Block_copy(v10);

  [v7 numberForKey:v8 completion:v9];
  _Block_release(v9);
}

void protocol witness for FastSyncHKKeyValueDomainProtocol.data(forKey:completion:) in conformance FastSyncHKKeyValueDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x20F2E6C00](a1, a2);
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_15_5;
  v9 = _Block_copy(v10);

  [v7 dataForKey:v8 completion:v9];
  _Block_release(v9);
}

uint64_t getEnumTagSinglePayload for FastSyncHKKeyValueDomain(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FastSyncHKKeyValueDomain(uint64_t result, int a2, int a3)
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

double CyclingCadenceAccumulator.currentCadence.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence;
  swift_beginAccess();
  return *(v0 + v1);
}

void CyclingCadenceAccumulator.currentCadence.setter(double a1)
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence;
  swift_beginAccess();
  *&v1[v3] = a1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in CyclingCadenceAccumulator.currentCadence.didset, v4);

  v5 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  v1[v5] = 0;
  v6 = [v1 updateHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();
    _Block_release(v7);
  }
}

void closure #1 in CyclingCadenceAccumulator.currentCadence.didset(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence;
    swift_beginAccess();
    *&v3[v4] = 0;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in CyclingCadenceAccumulator.currentCadence.didsetpartial apply, v5);

    v6 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
    swift_beginAccess();
    v3[v6] = 0;
    v7 = [v3 updateHandler];
    if (v7)
    {
      v8 = v7;
      (*(v7 + 2))();
      _Block_release(v8);
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
    v11 = v9;
    swift_beginAccess();
    v11[v10] = 1;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 updateHandler];

    if (v14)
    {
      v14[2](v14);
      _Block_release(v14);
    }
  }
}

void (*CyclingCadenceAccumulator.currentCadence.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CyclingCadenceAccumulator.currentCadence.modify;
}

void CyclingCadenceAccumulator.currentCadence.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in CyclingCadenceAccumulator.currentCadence.didsetpartial apply, v5);

    v6 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
    swift_beginAccess();
    v4[v6] = 0;
    v7 = [v4 updateHandler];
    if (v7)
    {
      v8 = v7;
      (*(v7 + 2))();

      _Block_release(v8);
    }
  }
}

uint64_t CyclingCadenceAccumulator.currentCadenceStale.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  return *(v0 + v1);
}

void CyclingCadenceAccumulator.currentCadenceStale.setter(char a1)
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double CyclingCadenceAccumulator.averageCadence.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
  swift_beginAccess();
  return *(v0 + v1);
}

void CyclingCadenceAccumulator.averageCadence.setter(double a1)
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void key path setter for CyclingCadenceAccumulator.invalidationTimer : CyclingCadenceAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CyclingCadenceAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CyclingCadenceAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall CyclingCadenceAccumulator.update(with:duration:)(HKStatistics with, Swift::Double duration)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [(objc_class *)with.super.isa mostRecentQuantity];
  if (!v11)
  {
    if (one-time initialization token for app == -1)
    {
LABEL_17:
      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static WOLog.app);
      v43 = with.super.isa;
      v81 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v81, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v43;
        *v46 = v43;
        v47 = v43;
        _os_log_impl(&dword_20AEA4000, v81, v44, "[CyclingCadenceAccumulator] cannot get mostRecentQuantity from statistics: %@", v45, 0xCu);
        outlined destroy of NSObject?(v46);
        MEMORY[0x20F2E9420](v46, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);
      }

      v48 = v81;

      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_17;
  }

  v12 = *&v2[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_countPerMinuteUnit];
  v13 = v11;
  [v11 doubleValueForUnit_];
  v15 = v14;

  v16 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence;
  swift_beginAccess();
  *&v3[v16] = v15;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in CyclingCadenceAccumulator.currentCadence.didsetpartial apply, v17);

  v18 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  v3[v18] = 0;
  v19 = [v3 updateHandler];
  if (v19)
  {
    v20 = v19;
    (*(v19 + 2))();
    _Block_release(v20);
  }

  v21 = [(objc_class *)with.super.isa averageQuantity];
  if (v21)
  {
    v22 = v21;
    [v21 doubleValueForUnit_];
    v24 = v23;

    v25 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
    swift_beginAccess();
    *&v3[v25] = v24;
    v26 = [(objc_class *)with.super.isa sources];
    v78 = v10;
    if (v26)
    {
      v27 = v26;
      type metadata accessor for HKSource();
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v28 >> 62)
      {
        v29 = __CocoaSet.count.getter();
        if (v29)
        {
LABEL_8:
          v74 = v7;
          v75 = v6;
          isa = with.super.isa;
          v77 = v3;
          v30 = 0;
          v31 = 0;
          v79 = v28 & 0xFFFFFFFFFFFFFF8;
          v80 = v28 & 0xC000000000000001;
          v32 = 0xE000000000000000;
          while (1)
          {
            if (v80)
            {
              v33 = MEMORY[0x20F2E7A20](v30, v28);
            }

            else
            {
              if (v30 >= *(v79 + 16))
              {
                goto LABEL_29;
              }

              v33 = *(v28 + 8 * v30 + 32);
            }

            v34 = v33;
            v35 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            v82 = v31;
            v83 = v32;

            v81 = v32;
            v36 = v29;
            MEMORY[0x20F2E6D80](32, 0xE100000000000000);
            v37 = v82;
            v38 = v83;
            v39 = [v34 name];
            with.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            v82 = v37;
            v83 = v38;

            MEMORY[0x20F2E6D80](with.super.isa, v41);
            v29 = v36;

            v31 = v82;
            v32 = v83;
            ++v30;
            if (v35 == v29)
            {
              v3 = v77;
              with.super.isa = isa;
              v6 = v75;
              v7 = v74;
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_8;
        }
      }

      v31 = 0;
      v32 = 0xE000000000000000;
LABEL_33:
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    static Date.timeIntervalSinceReferenceDate.getter();
    v57 = v56;
    v58 = [(objc_class *)with.super.isa endDate];
    v59 = v78;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v61 = v60;
    (*(v7 + 8))(v59, v6);
    v62 = v57 - v61;
    v63 = v3;
    dispatch thunk of WKPercentileAnalytics.addSample(_:)();
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static WOLog.app);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v83 = v32;
      v84 = v68;
      *v67 = 134219010;
      *(v67 + 4) = v15;
      *(v67 + 12) = 2048;
      *(v67 + 14) = v24;
      *(v67 + 22) = 2048;
      *(v67 + 24) = duration;
      *(v67 + 32) = 2048;
      *(v67 + 34) = v62;
      *(v67 + 42) = 2080;
      v82 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v69 = Optional.description.getter();
      v71 = v70;

      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, &v84);

      *(v67 + 44) = v72;
      _os_log_impl(&dword_20AEA4000, v65, v66, "[CyclingCadenceAccumulator] received cadence (current: %f, average: %f), duration: %f, CyclingCadence-delay: %f s, sources: %s", v67, 0x34u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x20F2E9420](v68, -1, -1);
      MEMORY[0x20F2E9420](v67, -1, -1);
    }

    else
    {
    }

    [v63 update];
    return;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static WOLog.app);
  v50 = with.super.isa;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v50;
    *v54 = v50;
    v55 = v50;
    _os_log_impl(&dword_20AEA4000, v51, v52, "[CyclingCadenceAccumulator] cannot get mostRecentQuantity from statistics: %@", v53, 0xCu);
    outlined destroy of NSObject?(v54);
    MEMORY[0x20F2E9420](v54, -1, -1);
    MEMORY[0x20F2E9420](v53, -1, -1);
  }
}

id CyclingCadenceAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id CyclingCadenceAccumulator.init(builder:)(void *a1)
{
  v2 = specialized CyclingCadenceAccumulator.init(builder:)(a1);

  return v2;
}

id CyclingCadenceAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CyclingCadenceAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance CyclingCadenceAccumulator()
{
  v1 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance CyclingCadenceAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t type metadata accessor for HKSource()
{
  result = lazy cache variable for type metadata for HKSource;
  if (!lazy cache variable for type metadata for HKSource)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKSource);
  }

  return result;
}

id specialized CyclingCadenceAccumulator.init(builder:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence] = 0;
  v1[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale] = 1;
  *&v1[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence] = 0;
  v4 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_countPerMinuteUnit;
  *&v2[v4] = [objc_opt_self() _countPerMinuteUnit];
  *&v2[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer] = 0;
  v5 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_latencyAnalytics;
  type metadata accessor for WKPercentileAnalytics();
  swift_allocObject();
  *&v2[v5] = WKPercentileAnalytics.init()();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CyclingCadenceAccumulator();
  return objc_msgSendSuper2(&v7, sel_initWithBuilder_, a1);
}

double keypath_getTm_7@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

double IntervalCadenceAccumulator.currentCadence.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence;
  swift_beginAccess();
  return *(v0 + v1);
}

double IntervalCadenceAccumulator.averageCadence.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IntervalCadenceAccumulator.currentCadenceStale.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  return *(v0 + v1);
}

id IntervalCadenceAccumulator.__allocating_init(builder:activityType:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence] = 0;
  *&v5[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence] = 0;
  v5[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale] = 0;
  *&v5[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_activityType] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithBuilder_, a1);

  return v6;
}

id IntervalCadenceAccumulator.init(builder:activityType:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence] = 0;
  *&v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence] = 0;
  v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale] = 0;
  *&v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_activityType] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for IntervalCadenceAccumulator();
  v4 = objc_msgSendSuper2(&v6, sel_initWithBuilder_, a1);

  return v4;
}

Swift::Void __swiftcall IntervalCadenceAccumulator.update(with:duration:)(HKStatistics with, Swift::Double duration)
{
  v5 = [(objc_class *)with.super.isa mostRecentQuantity];
  if (v5)
  {
    v6 = v5;
    if (*&v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_activityType] == 13)
    {
      v7 = [objc_opt_self() _countPerMinuteUnit];
      [v6 doubleValueForUnit_];
      v9 = v8;
    }

    else if (duration == 0.0)
    {

      v9 = 0.0;
    }

    else
    {
      v10 = [objc_opt_self() countUnit];
      [v6 doubleValueForUnit_];
      v12 = v11;

      v9 = v12 / duration * 60.0;
    }

    v13 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence;
    swift_beginAccess();
    *&v2[v13] = v9;
  }

  if (*&v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_activityType] == 13)
  {
    v14 = [(objc_class *)with.super.isa averageQuantity];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() _countPerMinuteUnit];
      [v15 doubleValueForUnit_];
      v18 = v17;

LABEL_15:
      v24 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence;
      swift_beginAccess();
      *&v2[v24] = v18;
    }
  }

  else
  {
    v19 = [(objc_class *)with.super.isa sumQuantity];
    if (v19)
    {
      if (duration == 0.0)
      {

        v18 = 0.0;
      }

      else
      {
        v20 = v19;
        v21 = [objc_opt_self() countUnit];
        [v20 doubleValueForUnit_];
        v23 = v22;

        v18 = v23 / duration * 60.0;
      }

      goto LABEL_15;
    }
  }

  [v2 update];
}

id IntervalCadenceAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id IntervalCadenceAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntervalCadenceAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_getTm_8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

void keypath_setTm_8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void key path setter for ManagedConfigurationsDataSource.observers : ManagedConfigurationsDataSource(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id ManagedConfigurationsDataSource.observers.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ManagedConfigurationsDataSource.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ManagedConfigurationsDataSource.__allocating_init(occurrenceStore:reducedActivityTypesProvider:)(void *a1, uint64_t a2)
{
  v3 = objc_allocWithZone(type metadata accessor for ManagedConfigurationsDataSource());
  v4 = ManagedConfigurationsDataSource.init(occurrenceStore:)(a1);
  swift_unknownObjectRelease();
  return v4;
}

id ManagedConfigurationsDataSource.init(occurrenceStore:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_occurrenceStore] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 weakObjectsHashTable];
  *&v1[OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers] = v5;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for ManagedConfigurationsDataSource();
  v6 = objc_msgSendSuper2(&v17, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  if (one-time initialization token for managedConfigurationsDidUpdate != -1)
  {
    swift_once();
  }

  v10 = static NSNotificationName.managedConfigurationsDidUpdate;
  v11 = [objc_opt_self() mainQueue];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = partial apply for closure #1 in ManagedConfigurationsDataSource.init(occurrenceStore:);
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v16[3] = &block_descriptor_62;
  v13 = _Block_copy(v16);

  v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);

  swift_unknownObjectRelease();
  return v8;
}

void closure #1 in ManagedConfigurationsDataSource.init(occurrenceStore:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ManagedConfigurationsDataSource.updateObservers()();
  }
}

Swift::Void __swiftcall ManagedConfigurationsDataSource.updateObservers()()
{
  ManagedConfigurationsDataSource.queryActivityPickerItems()();
  v2 = v1;
  v3 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v4 = [*(v0 + v3) allObjects];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F2E7A20](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        if (v8)
        {
          v10 = v9;
          ObjectType = swift_getObjectType();
          (*(v10 + 8))(v2, 1, ObjectType, v10);
        }
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  __break(1u);
}

id ManagedConfigurationsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManagedConfigurationsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedConfigurationsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ManagedConfigurationsDataSource.queryActivityPickerItems()()
{
  v0 = WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
  swift_beginAccess();
  v1 = *(v0 + 136);

  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = (v6 << 9) | (8 * v9);
    v11 = *(*(v1 + 48) + v10);
    v12 = *(*(v1 + 56) + v10);
    type metadata accessor for ManagedConfigurationsViewModel(0);
    swift_allocObject();
    swift_bridgeObjectRetain_n();

    v13 = ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(v12, 7, 7);
    if (ManagedConfigurationsViewModel.hasVisibleConfigurations.getter())
    {
      v21 = v7;
      v14 = type metadata accessor for ManagedConfigurationSourcePickerItem();
      v15 = objc_allocWithZone(v14);
      v15[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_type] = 4;
      *&v15[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider] = v11;
      *&v15[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel] = v13;
      v22.receiver = v15;
      v22.super_class = v14;
      v7 = v21;

      v16 = objc_msgSendSuper2(&v22, sel_init);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
      }

      v18 = v7[2];
      v17 = v7[3];
      if (v18 >= v17 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v7);
      }

      v19 = lazy protocol witness table accessor for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem();
      v7[2] = v18 + 1;
      v20 = &v7[2 * v18];
      v20[4] = v16;
      v20[5] = v19;
    }

    else
    {
    }
  }

  while (1)
  {
    v6 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v6 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v6);
    ++v8;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

id ManagedConfigurationsDataSource.addObserver(_:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  return [*(v3 + v6) *a3];
}

id protocol witness for ActivityItemsDataSourceObservable.observers.getter in conformance ManagedConfigurationsDataSource()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

id protocol witness for ActivityItemsDataSourceObservable.addObserver(_:) in conformance ManagedConfigurationsDataSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = *v5;
  v9 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  return [*(v8 + v9) *a5];
}

char *HealthDatabaseAccessAssertionManager.__allocating_init(workoutController:)(void *a1)
{
  swift_allocObject();
  v2 = specialized HealthDatabaseAccessAssertionManager.init(workoutController:)(a1);

  return v2;
}

uint64_t HealthDatabaseAccessAssertionManager.deinit()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong removeObserver_];
  }

  UnlockedDeviceMonitor.stopMonitoring()();

  MEMORY[0x20F2E9510](v1 + 32);

  _s10Foundation4UUIDVSgWOhTm_4(v1 + OBJC_IVAR____TtC11WorkoutCore36HealthDatabaseAccessAssertionManager_currentWorkoutUUID, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v1;
}

uint64_t HealthDatabaseAccessAssertionManager.__deallocating_deinit()
{
  HealthDatabaseAccessAssertionManager.deinit();

  return swift_deallocClassInstance();
}

uint64_t HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:)(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = type metadata accessor for UUID();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:), 0, 0);
}

{
  v2 = *(v1 + 288);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:)()
{
  v32 = v0;
  if (one-time initialization token for assertion != -1)
  {
    swift_once();
  }

  v1 = v0 + 24;
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[25];
  v6 = type metadata accessor for Logger();
  v0[32] = __swift_project_value_buffer(v6, static WOLog.assertion);
  v7 = *(v4 + 16);
  v0[33] = v7;
  v0[34] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[31];
  v12 = v0[27];
  v13 = v0[28];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v14 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v13 + 8);
    v18(v11, v12);
    v19 = v15;
    v1 = v0 + 24;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v17, &v31);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v8, v9, "Requesting health database accessibility assertion for workout uuid=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x20F2E9420](v30, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  else
  {

    v18 = *(v13 + 8);
    v18(v11, v12);
  }

  v0[35] = v18;
  v21 = *(v0[26] + 24);
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0x800000020B45A580;
    v24 = 0xD000000000000011;
  }

  v27 = MEMORY[0x20F2E6C00](v24, v26);
  v0[36] = v27;

  v0[2] = v0;
  v0[7] = v1;
  v0[3] = HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:);
  v28 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo32HKDatabaseAccessibilityAssertionCs5Error_pGMd, &_sSccySo32HKDatabaseAccessibilityAssertionCs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned HKDatabaseAccessibilityAssertion?, @unowned NSError?) -> () with result type HKDatabaseAccessibilityAssertion;
  v0[13] = &block_descriptor_63;
  v0[14] = v28;
  [v21 requestDatabaseAccessibilityAssertionForOwnerIdentifier:v27 contextType:2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:);
  }

  else
  {
    v2 = HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v46 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);

  v1(v2, v4, v3);
  v6 = v5;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 280);
  v11 = *(v0 + 240);
  v12 = *(v0 + 216);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v45 = v43;
    *v13 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v8;
    v16 = v15;
    v10(v11, v12);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v45);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v6;
    *v42 = v6;
    v18 = v6;
    _os_log_impl(&dword_20AEA4000, v7, v41, "Health database accessibility assertion success for workout uuid=%s assertion=%@", v13, 0x16u);
    _s10Foundation4UUIDVSgWOhTm_4(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x20F2E9420](v43, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  else
  {

    v10(v11, v12);
  }

  v19 = *(v0 + 208);
  swift_beginAccess();
  if (*(*(v19 + 40) + 16) && (v20 = *(v0 + 200), , specialized __RawDictionaryStorage.find<A>(_:)(v20), LOBYTE(v20) = v21, , (v20 & 1) != 0))
  {
    v44 = v6;
    (*(v0 + 264))(*(v0 + 232), *(v0 + 200), *(v0 + 216));
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 280);
    v26 = *(v0 + 232);
    v27 = *(v0 + 216);
    if (v24)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v45 = v29;
      *v28 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v25;
      v32 = v30;
      v34 = v33;
      v31(v26, v27);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v45);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_20AEA4000, v22, v23, "Health database accessibility assertion already taken for workout uuid=%s, invalidating extra assertion", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x20F2E9420](v29, -1, -1);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    else
    {

      v25(v26, v27);
    }

    v6 = v44;
    [v44 invalidate];
  }

  else
  {
    v36 = *(v0 + 200);
    swift_beginAccess();
    v37 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v19 + 40);
    *(v19 + 40) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v37, v36, isUniquelyReferenced_nonNull_native);
    *(v19 + 40) = v45;
    swift_endAccess();
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned HKDatabaseAccessibilityAssertion?, @unowned NSError?) -> () with result type HKDatabaseAccessibilityAssertion(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

void HealthDatabaseAccessAssertionManager.invalidateAssertion(workoutUUID:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v37[-v10];
  swift_beginAccess();
  v12 = *(v1 + 40);
  if (*(v12 + 16))
  {

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static WOLog.assertion);
      (*(v4 + 16))(v11, a1, v3);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41[0] = v40;
        *v20 = 136315394;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v38 = v19;
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        (*(v4 + 8))(v11, v3);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v41);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        v25 = v39;
        *v39 = v17;
        v26 = v17;
        _os_log_impl(&dword_20AEA4000, v18, v38, "Invalidating health database accessibility assertion for workout uuid=%s assertion=%@", v20, 0x16u);
        _s10Foundation4UUIDVSgWOhTm_4(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v25, -1, -1);
        v27 = v40;
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x20F2E9420](v27, -1, -1);
        MEMORY[0x20F2E9420](v20, -1, -1);
      }

      else
      {

        (*(v4 + 8))(v11, v3);
      }

      [v17 invalidate];
      swift_beginAccess();
      v29 = specialized Dictionary.removeValue(forKey:)(a1);
      swift_endAccess();

      goto LABEL_15;
    }
  }

  if (one-time initialization token for assertion != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static WOLog.assertion);
  (*(v4 + 16))(v8, a1, v3);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v29, v30))
  {

    (*(v4 + 8))(v8, v3);
    return;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v41[0] = v32;
  *v31 = 136315138;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v34;
  (*(v4 + 8))(v8, v3);
  v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v41);

  *(v31 + 4) = v36;
  _os_log_impl(&dword_20AEA4000, v29, v30, "Assertion doesn't exist for workout uuid=%s when invalidating health database accessibility assertion", v31, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v32);
  MEMORY[0x20F2E9420](v32, -1, -1);
  MEMORY[0x20F2E9420](v31, -1, -1);
LABEL_15:
}

Swift::Void __swiftcall HealthDatabaseAccessAssertionManager.unlocked(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v43 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v43 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v43 - v23;
  if (a1)
  {
    UnlockedDeviceMonitor.stopMonitoring()();
    v25 = OBJC_IVAR____TtC11WorkoutCore36HealthDatabaseAccessAssertionManager_currentWorkoutUUID;
    swift_beginAccess();
    outlined init with copy of UUID?(v2 + v25, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_4(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static WOLog.assertion);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_20AEA4000, v27, v28, "Device unlocked but no current workout uuid", v29, 2u);
        MEMORY[0x20F2E9420](v29, -1, -1);
      }
    }

    else
    {
      v53 = *(v13 + 32);
      v54 = v13 + 32;
      v53(v24, v11, v12);
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static WOLog.assertion);
      v52 = *(v13 + 16);
      v52(v21, v24, v12);
      v31 = Logger.logObject.getter();
      v49 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v49))
      {
        v32 = swift_slowAlloc();
        v46 = v7;
        v33 = v32;
        v47 = swift_slowAlloc();
        v55 = v47;
        *v33 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v45 = v31;
        v44 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        v48 = v13 + 16;
        v50 = *(v13 + 8);
        v51 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v50(v21, v12);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v35, &v55);

        v37 = v33;
        v43 = v33;
        v38 = v45;
        v7 = v46;
        *(v37 + 1) = v36;
        _os_log_impl(&dword_20AEA4000, v38, v49, "Device unlocked, will request health database accessibility assertion for workout uuid=%s", v37, 0xCu);
        v39 = v47;
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x20F2E9420](v39, -1, -1);
        MEMORY[0x20F2E9420](v43, -1, -1);
      }

      else
      {

        v50 = *(v13 + 8);
        v51 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v50(v21, v12);
      }

      v40 = type metadata accessor for TaskPriority();
      (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
      v52(v17, v24, v12);
      v41 = (*(v13 + 80) + 40) & ~*(v13 + 80);
      v42 = swift_allocObject();
      *(v42 + 2) = 0;
      *(v42 + 3) = 0;
      *(v42 + 4) = v2;
      v53(&v42[v41], v17, v12);

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:), v42);

      v50(v24, v12);
    }
  }
}

uint64_t closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:);

  return HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:)(a5);
}

uint64_t closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:)()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  if (one-time initialization token for assertion != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.assertion);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "requestHealthDatabaseAccessAssertion failed with error=%@ after device was unlocked", v8, 0xCu);
    _s10Foundation4UUIDVSgWOhTm_4(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:);

  return HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:)(a5);
}

uint64_t closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  if (one-time initialization token for assertion != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.assertion);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "requestHealthDatabaseAccessAssertion failed with error=%@. Monitoring device unlock to request health database accessibility assertion.", v7, 0xCu);
    _s10Foundation4UUIDVSgWOhTm_4(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = *(v0 + 32);

  UnlockedDeviceMonitor.startMonitoring()();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t partial apply for closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:);

  return closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:)(a1, v6, v7, v8, v1 + v5);
}

void specialized HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v37 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v12 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v37 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v17 = MEMORY[0x28223BE20](a1, v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v37 - v22;
  if (!v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  v37 = v6;
  v24 = [v21 workout];
  if (!v24)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = [v24 identifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v8 + 56))(v23, 0, 1, v7);
  v27 = OBJC_IVAR____TtC11WorkoutCore36HealthDatabaseAccessAssertionManager_currentWorkoutUUID;
  swift_beginAccess();
  outlined assign with take of UUID?(v23, v1 + v27);
  swift_endAccess();
  outlined init with copy of UUID?(v1 + v27, v19);
  if ((*(v8 + 48))(v19, 1, v7) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_4(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for assertion != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.assertion);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20AEA4000, v29, v30, "currentWorkoutUUID nil when workout started in HealthDatabaseAccessAssertionManager", v31, 2u);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }
  }

  else
  {
    v32 = *(v8 + 32);
    v32(v15, v19, v7);
    v33 = type metadata accessor for TaskPriority();
    v34 = v37;
    (*(*(v33 - 8) + 56))(v37, 1, 1, v33);
    (*(v8 + 16))(v12, v15, v7);
    v35 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v36 = swift_allocObject();
    *(v36 + 2) = 0;
    *(v36 + 3) = 0;
    *(v36 + 4) = v1;
    v32(&v36[v35], v12, v7);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v34, &async function pointer to partial apply for closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:), v36);

    (*(v8 + 8))(v15, v7);
  }
}

uint64_t specialized HealthDatabaseAccessAssertionManager.workoutController(_:transitionedWorkout:toState:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v40[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v10, v13);
  v47 = &v40[-v15];
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v40[-v18];
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v40[-v21];
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  result = MEMORY[0x28223BE20](v23, v25);
  v28 = &v40[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 == 6)
  {
    v46 = v12;
    if (!a1)
    {
      __break(1u);
      return result;
    }

    v29 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v30 = v48;
    HealthDatabaseAccessAssertionManager.invalidateAssertion(workoutUUID:)(v28);
    v44 = *(v24 + 8);
    v45 = v24 + 8;
    v44(v28, v23);
    v31 = OBJC_IVAR____TtC11WorkoutCore36HealthDatabaseAccessAssertionManager_currentWorkoutUUID;
    swift_beginAccess();
    v43 = v31;
    outlined init with copy of UUID?(v30 + v31, v22);
    v32 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = *(v24 + 56);
    v42(v19, 0, 1, v23);
    v33 = *(v4 + 48);
    outlined init with copy of UUID?(v22, v7);
    outlined init with copy of UUID?(v19, &v7[v33]);
    v34 = *(v24 + 48);
    if (v34(v7, 1, v23) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_4(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      _s10Foundation4UUIDVSgWOhTm_4(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v34(&v7[v33], 1, v23) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_4(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v35 = v46;
LABEL_10:
        v42(v35, 1, 1, v23);
        v38 = v48;
        v39 = v43;
        swift_beginAccess();
        outlined assign with take of UUID?(v35, v38 + v39);
        return swift_endAccess();
      }
    }

    else
    {
      outlined init with copy of UUID?(v7, v47);
      if (v34(&v7[v33], 1, v23) != 1)
      {
        (*(v24 + 32))(v28, &v7[v33], v23);
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v36 = v47;
        v41 = dispatch thunk of static Equatable.== infix(_:_:)();
        v37 = v44;
        v44(v28, v23);
        _s10Foundation4UUIDVSgWOhTm_4(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        _s10Foundation4UUIDVSgWOhTm_4(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v37(v36, v23);
        result = _s10Foundation4UUIDVSgWOhTm_4(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v35 = v46;
        if ((v41 & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      _s10Foundation4UUIDVSgWOhTm_4(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      _s10Foundation4UUIDVSgWOhTm_4(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v44(v47, v23);
    }

    return _s10Foundation4UUIDVSgWOhTm_4(v7, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  }

  return result;
}

uint64_t type metadata accessor for HealthDatabaseAccessAssertionManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for HealthDatabaseAccessAssertionManager;
  if (!type metadata singleton initialization cache for HealthDatabaseAccessAssertionManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:);

  return closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void FIUIFormattingManager.paceMagnitude(distance:duration:paceFormat:distanceType:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  if (a2 == 4)
  {

    [v5 speedPerHourWithDistance:a1 overDuration:4 paceFormat:a3 distanceType:a4];
  }

  else
  {
    v10 = [v5 unitManager];
    if (v10)
    {
      v11 = v10;
      [v10 paceWithDistance:a1 overDuration:a2 paceFormat:a3 distanceType:a4];
    }

    else
    {
      __break(1u);
    }
  }
}

void specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  type metadata accessor for NSString();
  v2 = NSString.init(stringLiteral:)();
  NSObject.hash(into:)();
}

double specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();

  return result;
}

{
  String.hash(into:)();

  return result;
}

{
  String.hash(into:)();

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PowerZonesAlertZoneType.AutomaticCodingKeys()
{
  if (*v0)
  {
    return 0x5A746C7561666564;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertZoneType.AutomaticCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000020B454030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x5A746C7561666564 && a2 == 0xEC00000073656E6FLL)
  {

    v6 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertZoneType.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertZoneType.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerZonesAlertZoneType.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerZonesAlertZoneType.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PowerZonesAlertZoneType.CodingKeys()
{
  v1 = 0x746567726174;
  v2 = 0x6D6F74737563;
  if (*v0 != 2)
  {
    v2 = 6710895;
  }

  if (*v0)
  {
    v1 = 0x6974616D6F747561;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertZoneType.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PowerZonesAlertZoneType.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertZoneType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertZoneType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PowerZonesAlertZoneType.CustomCodingKeys()
{
  if (*v0)
  {
    return 1701080941;
  }

  else
  {
    return 0x65676E6172;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertZoneType.CustomCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertZoneType.CustomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertZoneType.CustomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertZoneType.OffCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertZoneType.OffCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerZonesAlertZoneType.AutomaticCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerZonesAlertZoneType.AutomaticCodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PowerZonesAlertZoneType.TargetCodingKeys()
{
  if (*v0)
  {
    return 1701080941;
  }

  else
  {
    return 0x65756C6176;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertZoneType.TargetCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertZoneType.TargetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertZoneType.TargetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PowerZonesAlertZoneType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO13OffCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO13OffCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v39 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16CustomCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16CustomCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v44 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO19AutomaticCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO19AutomaticCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16TargetCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16TargetCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v38 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO10CodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO10CodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v18 = *(v17 - 8);
  v48 = v17;
  v49 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v20 = *v1;
  v47 = v1[1];
  v21 = *(v1 + 16);
  v22 = a1[3];
  v23 = a1;
  v25 = &v38 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  lazy protocol witness table accessor for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = v21 >> 6;
  if (v21 >> 6 > 1)
  {
    if (v26 != 2)
    {
      LOBYTE(v52) = 3;
      lazy protocol witness table accessor for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys();
      v36 = v39;
      v37 = v48;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v40 + 8))(v36, v41);
      return (*(v49 + 8))(v25, v37);
    }

    LOBYTE(v52) = 2;
    lazy protocol witness table accessor for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys();
    v30 = v44;
    v31 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v52 = v20;
    v53 = v47;
    v51 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdGMd, &_sSnySdGMR);
    lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, MEMORY[0x277D83A08], MEMORY[0x277D83D08]);
    v32 = v46;
    v33 = v50;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v33)
    {
      LOBYTE(v52) = v21 & 0x3F;
      v51 = 1;
      lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v45 + 8))(v30, v32);
    return (*(v49 + 8))(v25, v31);
  }

  if (v26)
  {
    LOBYTE(v52) = 1;
    lazy protocol witness table accessor for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys();
    v31 = v48;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v52) = 0;
    v34 = v43;
    v35 = v50;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v35)
    {
      v52 = v47;
      v51 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore16CyclingPowerZoneCGMd, &_sSay11WorkoutCore16CyclingPowerZoneCGMR);
      lazy protocol witness table accessor for type [CyclingPowerZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [CyclingPowerZone] and conformance <A> [A], &lazy protocol witness table cache variable for type CyclingPowerZone and conformance Zone, &protocol conformance descriptor for Zone, MEMORY[0x277D83948]);
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    }

    (*(v42 + 8))(v12, v34);
    return (*(v49 + 8))(v25, v31);
  }

  LOBYTE(v52) = 0;
  lazy protocol witness table accessor for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys();
  v27 = v48;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  LOBYTE(v52) = 0;
  v28 = v50;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v28)
  {
    LOBYTE(v52) = v47;
    v51 = 1;
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v38 + 8))(v16, v13);
  return (*(v49 + 8))(v25, v27);
}

void PowerZonesAlertZoneType.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v5 >> 6;
  if (v5 >> 6 > 1)
  {
    if (v6 != 2)
    {
      MEMORY[0x20F2E7FF0](3);
      return;
    }

    MEMORY[0x20F2E7FF0](2);
    specialized Range<>.hash(into:)(v4, v3);
    goto LABEL_9;
  }

  if (!v6)
  {
    MEMORY[0x20F2E7FF0](0);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0.0;
    }

    MEMORY[0x20F2E8020](*&v7);
LABEL_9:
    String.hash(into:)();

    return;
  }

  MEMORY[0x20F2E7FF0](1);
  MEMORY[0x20F2E7FF0](*&v4);
  if (v3 == 0.0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    specialized Array<A>.hash(into:)(a1, *&v3);
  }
}

Swift::Int PowerZonesAlertZoneType.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  PowerZonesAlertZoneType.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t PowerZonesAlertZoneType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO13OffCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO13OffCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v58 = &v48 - v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16CustomCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16CustomCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v6);
  v57 = &v48 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO19AutomaticCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO19AutomaticCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16TargetCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16TargetCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v50 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO10CodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO10CodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v48 - v18;
  v20 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys();
  v21 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v48 = v11;
    v49 = v14;
    v22 = v57;
    v23 = v58;
    v24 = v56;
    v60 = v16;
    v25 = v59;
    v26 = KeyedDecodingContainer.allKeys.getter();
    v27 = (2 * *(v26 + 16)) | 1;
    v66 = v26;
    v67 = v26 + 32;
    v68 = 0;
    v69 = v27;
    v28 = specialized Collection<>.popFirst()();
    if (v28 == 4 || v68 != v69 >> 1)
    {
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v36 = &type metadata for PowerZonesAlertZoneType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v60 + 8))(v19, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28 > 1u)
      {
        if (v28 == 2)
        {
          LOBYTE(v64) = 2;
          lazy protocol witness table accessor for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v38 = v60;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdGMd, &_sSnySdGMR);
          v63 = 0;
          lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, MEMORY[0x277D83A30], MEMORY[0x277D83D38]);
          v39 = v53;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v47 = v64;
          v58 = v65;
          v62 = 1;
          lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v55 + 8))(v22, v39);
          (*(v38 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v45 = v63 | 0x80;
          v30 = v25;
          v46 = v58;
        }

        else
        {
          LOBYTE(v64) = 3;
          lazy protocol witness table accessor for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v41 = v60;
          (*(v51 + 8))(v23, v52);
          (*(v41 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v47 = 0;
          v46 = 0;
          v45 = -64;
          v30 = v25;
        }
      }

      else
      {
        v29 = v19;
        v30 = v25;
        if (v28)
        {
          LOBYTE(v64) = 1;
          lazy protocol witness table accessor for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys();
          v40 = v10;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          LOBYTE(v64) = 0;
          v42 = v24;
          v47 = KeyedDecodingContainer.decode(_:forKey:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore16CyclingPowerZoneCGMd, &_sSay11WorkoutCore16CyclingPowerZoneCGMR);
          v63 = 1;
          lazy protocol witness table accessor for type [CyclingPowerZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [CyclingPowerZone] and conformance <A> [A], &lazy protocol witness table cache variable for type CyclingPowerZone and conformance Zone, &protocol conformance descriptor for Zone, MEMORY[0x277D83978]);
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v54 + 8))(v40, v42);
          (*(v60 + 8))(v29, v15);
          swift_unknownObjectRelease();
          v46 = v64;
          v45 = 64;
        }

        else
        {
          LOBYTE(v64) = 0;
          lazy protocol witness table accessor for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys();
          v31 = v49;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          LOBYTE(v64) = 0;
          v32 = v48;
          KeyedDecodingContainer.decode(_:forKey:)();
          v33 = v60;
          v44 = v43;
          v63 = 1;
          lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v50 + 8))(v31, v32);
          (*(v33 + 8))(v29, v15);
          swift_unknownObjectRelease();
          v45 = 0;
          v46 = v64;
          v47 = v44;
        }
      }

      *v30 = v47;
      *(v30 + 8) = v46;
      *(v30 + 16) = v45;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerZonesAlertZoneType()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  PowerZonesAlertZoneType.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerZonesAlertZoneType(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  Hasher.init(_seed:)();
  PowerZonesAlertZoneType.hash(into:)(v4);
  return Hasher._finalize()();
}

unint64_t PowerZonesAlertZoneType.description.getter()
{
  v1 = *(v0 + 16) >> 6;
  if (v1 <= 1)
  {
    if (v1)
    {
      _StringGuts.grow(_:)(55);
      MEMORY[0x20F2E6D80](0xD000000000000029, 0x800000020B467470);
      v2 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v2);

      MEMORY[0x20F2E6D80](0x3A65676E6172202CLL, 0xE900000000000020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore16CyclingPowerZoneCGSgMd, &_sSay11WorkoutCore16CyclingPowerZoneCGSgMR);
      v3 = Optional.description.getter();
      MEMORY[0x20F2E6D80](v3);

      goto LABEL_8;
    }

    _StringGuts.grow(_:)(51);
    MEMORY[0x20F2E6D80](0xD000000000000026, 0x800000020B4674A0);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0x203A65646F6D202CLL, 0xE800000000000000);
LABEL_6:
    _print_unlocked<A, B>(_:_:)();
LABEL_8:
    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    return 0;
  }

  if (v1 == 2)
  {
    _StringGuts.grow(_:)(51);
    MEMORY[0x20F2E6D80](0xD000000000000026, 0x800000020B467440);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0, 0xE000000000000000);

    MEMORY[0x20F2E6D80](0x203A65646F6D202CLL, 0xE800000000000000);
    goto LABEL_6;
  }

  return 0xD00000000000001BLL;
}

unint64_t PowerZonesAlertZoneType.analyticsKey.getter()
{
  v1 = 0xD000000000000017;
  v2 = *(v0 + 16) >> 6;
  v3 = 0xD000000000000014;
  if (v2 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*(v0 + 16) >> 6 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

BOOL specialized static PowerZonesAlertZoneType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v8 == 2)
    {
      if ((v7 & 0xC0) == 0x80)
      {
        if (*&v2 == *&v6 && *&v3 == *&v5)
        {
          LOBYTE(v9) = v4 & 0x3F;
          LOBYTE(v10) = v7 & 0x3F;
          goto LABEL_11;
        }

        goto LABEL_28;
      }
    }

    else
    {
      v15 = v7 >= 0xC0 && (v5 | v6) == 0;
      if (v15 && v7 == 192)
      {
        outlined consume of PowerZonesAlertZoneType(*a1, v3, v4);
        outlined consume of PowerZonesAlertZoneType(0, 0, 192);
        return 1;
      }
    }

    goto LABEL_26;
  }

  if (!v8)
  {
    if (v7 < 0x40)
    {
      if (*&v2 == *&v6)
      {
        v9 = *(a1 + 8);
        v10 = *(a2 + 8);
LABEL_11:
        v11 = specialized == infix<A>(_:_:)(v9, v10);
        outlined consume of PowerZonesAlertZoneType(v2, v3, v4);
        outlined consume of PowerZonesAlertZoneType(v6, v5, v7);
        return v11 & 1;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if ((v7 & 0xC0) != 0x40)
  {

LABEL_26:
    v16 = v6;
    v17 = v5;
    v18 = v7;
LABEL_27:
    outlined copy of PowerZonesAlertZoneType(v16, v17, v18);
LABEL_28:
    outlined consume of PowerZonesAlertZoneType(v2, v3, v4);
    v19 = v6;
LABEL_29:
    outlined consume of PowerZonesAlertZoneType(v19, v5, v7);
    return 0;
  }

  if (v2 != v6)
  {
    outlined copy of PowerZonesAlertZoneType(*a2, *(a2 + 8), v7);
    v16 = v2;
    v17 = v3;
    v18 = v4;
    goto LABEL_27;
  }

  if (*&v3 == 0.0)
  {

    outlined copy of PowerZonesAlertZoneType(v2, v5, v7);
    outlined copy of PowerZonesAlertZoneType(v2, 0, v4);
    outlined consume of PowerZonesAlertZoneType(v2, 0, v4);
    outlined consume of PowerZonesAlertZoneType(v2, v5, v7);
    if (*&v5 == 0.0)
    {
      return 1;
    }

LABEL_35:
    v19 = v2;
    goto LABEL_29;
  }

  v13 = *a1;
  if (*&v5 == 0.0)
  {
    outlined copy of PowerZonesAlertZoneType(v13, 0, v7);
    outlined copy of PowerZonesAlertZoneType(v2, 0, v7);
    outlined copy of PowerZonesAlertZoneType(v2, v3, v4);
    outlined consume of PowerZonesAlertZoneType(v2, v3, v4);
    goto LABEL_35;
  }

  outlined copy of PowerZonesAlertZoneType(v13, v3, v4);
  outlined copy of PowerZonesAlertZoneType(v2, v5, v7);
  outlined copy of PowerZonesAlertZoneType(v2, v3, v4);
  v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore16CyclingPowerZoneC_Tt1g5(v3, v5);
  outlined consume of PowerZonesAlertZoneType(v2, v3, v4);
  outlined consume of PowerZonesAlertZoneType(v2, v5, v7);
  outlined consume of PowerZonesAlertZoneType(v2, v3, v4);
  return (v14 & 1) != 0;
}