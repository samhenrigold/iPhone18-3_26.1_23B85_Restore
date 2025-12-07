BOOL closure #1 in AveragePowerAccumulator.process(samples:)(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.start.getter();
  (*(v4 + 8))(v7, v3);
  lazy protocol witness table accessor for type Date and conformance Date();
  LOBYTE(v7) = dispatch thunk of static Comparable.< infix(_:_:)();
  (*(v9 + 8))(v12, v8);
  return (v7 & 1) == 0;
}

id AveragePowerAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AveragePowerAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AveragePowerAccumulator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AveragePowerAccumulator(uint64_t a1)
{
  result = type metadata singleton initialization cache for AveragePowerAccumulator;
  if (!type metadata singleton initialization cache for AveragePowerAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Published<[HKWorkoutBuilderQuantity]>.Publisher and conformance Published<A>.Publisher()
{
  result = lazy protocol witness table cache variable for type Published<[HKWorkoutBuilderQuantity]>.Publisher and conformance Published<A>.Publisher;
  if (!lazy protocol witness table cache variable for type Published<[HKWorkoutBuilderQuantity]>.Publisher and conformance Published<A>.Publisher)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Published<[HKWorkoutBuilderQuantity]>.Publisher and conformance Published<A>.Publisher);
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOhTm_11(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata completion function for AveragePowerAccumulator(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t type metadata accessor for HKWorkoutBuilderQuantity()
{
  result = lazy cache variable for type metadata for HKWorkoutBuilderQuantity;
  if (!lazy cache variable for type metadata for HKWorkoutBuilderQuantity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKWorkoutBuilderQuantity);
  }

  return result;
}

uint64_t _HKWorkoutGoalType.symbolName.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x72656D6974;
    }

    if (a1 == 3)
    {
      return 0x656D616C66;
    }
  }

  else
  {
    if (!a1)
    {
      return 0xD000000000000015;
    }

    if (a1 == 1)
    {
      return 0xD00000000000001CLL;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000001CLL, 0x800000020B465680, "WorkoutCore/HKWorkoutGoalType+SymbolName.swift", 46, 2, 23, 0);
  __break(1u);
  return result;
}

uint64_t WorkoutConfiguration.supportsMetricType(_:domainAccessor:)(unint64_t a1)
{
  if (specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)())
  {
    if (a1 >= 0x20)
    {
      v3 = 1;
    }

    else
    {
      v3 = 0x3FF67EFu >> a1;
    }
  }

  else
  {
    v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
    swift_beginAccess();
    v3 = 1;
    if (*(v1 + v4) == 1)
    {
      if (a1 >= 0x25)
      {
        v3 = 1;
      }

      else
      {
        v3 = 0x3FC1FFFFFuLL >> a1;
      }
    }
  }

  return v3 & 1;
}

void WorkoutConfiguration.containsDistanceBasedGoal.getter()
{
  type metadata accessor for GoalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v1 = v0;
    static Published.subscript.getter(&v23);

    v2 = v23;
    [v23 goalTypeIdentifier];
  }

  else
  {
    type metadata accessor for IntervalWorkoutConfiguration(0);
    if (swift_dynamicCastClass())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v0;
      static Published.subscript.getter(&v23);

      v4 = v23;
      KeyPath = IntervalWorkout.blocks.getter();

      v22 = v3;
      if (KeyPath >> 62)
      {
        goto LABEL_32;
      }

      for (i = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v7 = 0;
        v8 = KeyPath & 0xC000000000000001;
        v17 = KeyPath & 0xFFFFFFFFFFFFFF8;
        v21 = KeyPath;
        v18 = KeyPath & 0xC000000000000001;
        v19 = i;
        while (2)
        {
          if (v8)
          {
            MEMORY[0x20F2E7A20](v7, KeyPath);
            v9 = __OFADD__(v7, 1);
            v10 = v7 + 1;
            if (!v9)
            {
              goto LABEL_13;
            }
          }

          else
          {
            if (v7 >= *(v17 + 16))
            {
              __break(1u);
              return;
            }

            v9 = __OFADD__(v7, 1);
            v10 = v7 + 1;
            if (!v9)
            {
LABEL_13:
              KeyPath = swift_getKeyPath();
              swift_getKeyPath();
              static Published.subscript.getter(&v23);

              v11 = v23;
              v20 = v10;
              v12 = v23 & 0xFFFFFFFFFFFFFF8;
              if (v23 >> 62)
              {
                v13 = __CocoaSet.count.getter();
              }

              else
              {
                v13 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              for (j = 0; v13 != j; ++j)
              {
                if ((v11 & 0xC000000000000001) != 0)
                {
                  KeyPath = MEMORY[0x20F2E7A20](j, v11);
                  if (__OFADD__(j, 1))
                  {
                    goto LABEL_29;
                  }
                }

                else
                {
                  if (j >= *(v12 + 16))
                  {
                    goto LABEL_30;
                  }

                  KeyPath = *(v11 + 8 * j + 32);

                  if (__OFADD__(j, 1))
                  {
LABEL_29:
                    __break(1u);
LABEL_30:
                    __break(1u);
                    goto LABEL_31;
                  }
                }

                swift_getKeyPath();
                swift_getKeyPath();
                static Published.subscript.getter(&v23);

                v15 = v23;
                v16 = [v23 goalTypeIdentifier];

                if (v16 == 1)
                {

                  return;
                }
              }

              v7 = v20;
              KeyPath = v21;
              v8 = v18;
              if (v20 != v19)
              {
                continue;
              }

              goto LABEL_33;
            }
          }

          break;
        }

LABEL_31:
        __break(1u);
LABEL_32:
        ;
      }

LABEL_33:
    }

    else
    {
      type metadata accessor for PacerWorkoutConfiguration(0);
      swift_dynamicCastClass();
    }
  }
}

double CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.core);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = [objc_opt_self() currentThread];
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[CyclingPowerZones] Fetching CyclingPowerZonesConfiguration, thread: %@", v9, 0xCu);
    _sSo8NSObjectCSgWOhTm_12(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v12 = v3[5];
  v13 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v12);
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v15 = *(v13 + 16);

  v15(0xD00000000000001ELL, 0x800000020B4656E0, partial apply for closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:), v14, v12, v13);

  return result;
}

void closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(uint64_t a1, unint64_t a2, void *a3, NSObject *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.core);
  outlined copy of Data?(a1, a2);
  v13 = a3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  outlined consume of Data?(a1, a2);

  v55 = a2;
  v56 = a1;
  v16 = a2 >> 60;
  if (os_log_type_enabled(v14, v15))
  {
    v53 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v59 = v19;
    *v17 = 136315650;
    v52 = a5;
    if (v16 > 0xE)
    {
LABEL_5:
      v20 = a6;
      v21 = 0;
LABEL_6:
      v57 = v21;
      v58 = v16 > 0xE;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
      v22 = Optional.description.getter();
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v59);

      *(v17 + 4) = v24;
      *(v17 + 12) = 2112;
      if (a3)
      {
        v25 = a3;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        v27 = v26;
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      a6 = v20;
      *(v17 + 14) = v26;
      *v18 = v27;
      *(v17 + 22) = 2112;
      v29 = [objc_opt_self() currentThread];
      *(v17 + 24) = v29;
      v18[1] = v29;
      _os_log_impl(&dword_20AEA4000, v14, v15, "[CyclingPowerZones] Fetched CyclingPowerZonesConfiguration from valueStore, data: %s bytes, error: %@, thread: %@", v17, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v18, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v19);
      MEMORY[0x20F2E9420](v19, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);

      a5 = v52;
      a4 = v53;
      a1 = v56;
      goto LABEL_14;
    }

    v28 = v55 >> 62;
    if ((v55 >> 62) > 1)
    {
      if (v28 != 2)
      {
        goto LABEL_5;
      }

      v50 = *(v56 + 16);
      v49 = *(v56 + 24);
      v51 = __OFSUB__(v49, v50);
      v21 = v49 - v50;
      if (!v51)
      {
        v20 = a6;
        goto LABEL_6;
      }

      __break(1u);
    }

    else
    {
      if (!v28)
      {
        v20 = a6;
        v21 = BYTE6(v55);
        goto LABEL_6;
      }

      LODWORD(v21) = HIDWORD(v56) - v56;
      if (!__OFSUB__(HIDWORD(v56), v56))
      {
        v20 = a6;
        v21 = v21;
        goto LABEL_6;
      }
    }

    __break(1u);
    return;
  }

LABEL_14:
  if (v16 < 0xF)
  {
    v34 = v55;
    outlined copy of Data._Representation(a1, v55);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_20AEA4000, v35, v36, "[CyclingPowerZones] Fetched CyclingPowerZonesConfiguration data from valueStore, decoding", v37, 2u);
      MEMORY[0x20F2E9420](v37, -1, -1);
    }

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for CyclingPowerZonesConfiguration(0);
    _s11WorkoutCore30CyclingPowerZonesConfigurationCACSEAAWlTm_0(&lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration, &protocol conformance descriptor for CyclingPowerZonesConfiguration);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v38 = v57;

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v54 = a4;
      v42 = swift_slowAlloc();
      v57 = v42;
      *v41 = 136315138;
      if (*(v38 + 16))
      {
        v43 = 0x6C61756E616DLL;
      }

      else
      {
        v43 = 0x6974616D6F747561;
      }

      v44 = a6;
      if (*(v38 + 16))
      {
        v45 = 0xE600000000000000;
      }

      else
      {
        v45 = 0xE900000000000063;
      }

      v46 = a5;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v57);
      a6 = v44;
      v34 = v55;

      *(v41 + 4) = v47;
      a5 = v46;
      _os_log_impl(&dword_20AEA4000, v39, v40, "[CyclingPowerZones] Fetched and decoded %s configuration from valueStore", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_13(v42);
      v48 = v42;
      a4 = v54;
      MEMORY[0x20F2E9420](v48, -1, -1);
      MEMORY[0x20F2E9420](v41, -1, -1);
    }

    specialized CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:)(v38, a4, a5, a6, &unk_2822526F0, &unk_282252718, partial apply for closure #2 in closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:), partial apply for closure #1 in CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:));

    outlined consume of Data?(v56, v34);
  }

  else
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_20AEA4000, v30, v31, "[CyclingPowerZones] Fetched CyclingPowerZonesConfiguration from valueStore, no data found, creating automatic configuration", v32, 2u);
      MEMORY[0x20F2E9420](v32, -1, -1);
    }

    v33 = specialized static CyclingPowerZonesConfigurationEditor.createAutomaticEmptyConfiguration()();

    specialized CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:)(v33, a4, a5, a6, &unk_282252790, &unk_2822527B8, partial apply for closure #1 in closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:), closure #1 in CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:)partial apply);
  }
}

uint64_t closure #1 in closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.core);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136316162;
    if (*(a1 + 16))
    {
      v9 = 0x6C61756E616DLL;
    }

    else
    {
      v9 = 0x6974616D6F747561;
    }

    if (*(a1 + 16))
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xE900000000000063;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    v12 = 24;
    if (*(a1 + 16))
    {
      v12 = 32;
    }

    *(v7 + 14) = *(*(a1 + v12) + 16);
    *(v7 + 22) = 2048;
    v13 = *(a1 + 32);
    *(v7 + 24) = *(*(a1 + 24) + 16);
    *(v7 + 32) = 2048;
    *(v7 + 34) = *(v13 + 16);
    *(v7 + 42) = 2080;
    v14 = CyclingPowerZonesConfiguration.description.getter();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v18);

    *(v7 + 44) = v16;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[CyclingPowerZones] Complete %s configuration with FTP: %f (automatic: %f, manual: %f) configuration: %s", v7, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  return a2(a1);
}

double closure #1 in CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v48 - v14;
  if (a1)
  {

    v17 = specialized static CyclingPowerZonesConfigurationEditor.changeAutomaticFTP(to:using:)(v16, a2);
    CyclingPowerZonesConfigurationStore.saveCyclingPowerZonesConfiguration(_:)(v17);
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.core);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49 = v22;
      *v21 = 136315394;

      v23 = FunctionalThresholdPower.description.getter();
      v25 = v24;

      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v49);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;

      v27 = CyclingPowerZonesConfiguration.description.getter();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v49);

      *(v21 + 14) = v30;
      _os_log_impl(&dword_20AEA4000, v19, v20, "[CyclingPowerZones] Most recent Apple FTP is available, updated with appleFTP: %s, configuration: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    a4(v17);
  }

  else
  {
    static Date.now.getter();
    (*(v8 + 16))(v12, v15, v7);
    type metadata accessor for FunctionalThresholdPower(0);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 1;
    v33 = *(v8 + 32);
    v33(v32 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_creationDate, v12, v7);
    v33(v32 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v15, v7);
    v34 = specialized static CyclingPowerZonesConfigurationEditor.changeAutomaticFTP(to:using:)(v32, a2);
    CyclingPowerZonesConfigurationStore.saveCyclingPowerZonesConfiguration(_:)(v34);
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static WOLog.core);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v49 = v39;
      *v38 = 136315394;

      v40 = FunctionalThresholdPower.description.getter();
      v42 = v41;

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v49);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;

      v44 = CyclingPowerZonesConfiguration.description.getter();
      v46 = v45;

      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v49);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_20AEA4000, v36, v37, "[CyclingPowerZones] Most recent Apple FTP is not available, updated with emptyFTP: %s, configuration: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v39, -1, -1);
      MEMORY[0x20F2E9420](v38, -1, -1);
    }

    a4(v34);
  }

  return result;
}

void CyclingPowerZonesConfigurationStore.saveCyclingPowerZonesConfiguration(_:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.core);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[CyclingPowerZones] Saving CyclingPowerZonesConfiguration to valueStore", v6, 2u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for CyclingPowerZonesConfiguration(0);
  _s11WorkoutCore30CyclingPowerZonesConfigurationCACSEAAWlTm_0(&lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration, &protocol conformance descriptor for CyclingPowerZonesConfiguration);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v8;
  v10 = v2[5];
  v11 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
  v12 = *(v11 + 32);
  outlined copy of Data._Representation(v7, v9);
  v12(v7, v9, 0xD00000000000001ELL, 0x800000020B4656E0, v10, v11);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v13, v14))
  {
    outlined consume of Data._Representation(v7, v9);
LABEL_18:
    outlined consume of Data._Representation(v7, v9);

    return;
  }

  v15 = swift_slowAlloc();
  *v15 = 134217984;
  v16 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_17;
    }

    v19 = *(v7 + 16);
    v18 = *(v7 + 24);
    v20 = __OFSUB__(v18, v19);
    v17 = v18 - v19;
    if (!v20)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(v9);
LABEL_17:
    *(v15 + 4) = v17;
    v21 = v15;
    outlined consume of Data._Representation(v7, v9);
    _os_log_impl(&dword_20AEA4000, v13, v14, "[CyclingPowerZones] Saved CyclingPowerZonesConfiguration to valueStore, data: %ld bytes", v21, 0xCu);
    MEMORY[0x20F2E9420](v21, -1, -1);
    goto LABEL_18;
  }

  LODWORD(v17) = HIDWORD(v7) - v7;
  if (!__OFSUB__(HIDWORD(v7), v7))
  {
    v17 = v17;
    goto LABEL_17;
  }

  __break(1u);
}

double CyclingPowerZonesConfigurationStore.removeCyclingPowerZonesConfiguration(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.core);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20AEA4000, v7, v8, "[CyclingPowerZones] Removing CyclingPowerZonesConfiguration from valueStore", v9, 2u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v10 = v3[5];
  v11 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v10);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = *(v11 + 40);

  v13(0xD00000000000001ELL, 0x800000020B4656E0, partial apply for closure #1 in CyclingPowerZonesConfigurationStore.removeCyclingPowerZonesConfiguration(completion:), v12, v10, v11);

  return result;
}

uint64_t closure #1 in CyclingPowerZonesConfigurationStore.removeCyclingPowerZonesConfiguration(completion:)(char a1, id a2, uint64_t (*a3)(void, id))
{
  if (a2)
  {
    v6 = a2;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.core);
    v8 = a2;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v9, v10))
    {

      return a3(a1 & 1, a2);
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = a2;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[CyclingPowerZones] Cannot remove CyclingPowerZonesConfiguration from valueStore, error: %@", v11, 0xCu);
    _sSo8NSObjectCSgWOhTm_12(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.core);
    v9 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v9, v16, "[CyclingPowerZones] Removed CyclingPowerZonesConfiguration from valueStore", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }
  }

  return a3(a1 & 1, a2);
}

uint64_t CyclingPowerZonesConfigurationStore.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 56));
  return v0;
}

uint64_t CyclingPowerZonesConfigurationStore.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm_13((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t specialized static CyclingPowerZonesConfigurationStore.create(with:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCD570]) initWithCategory:0 domainName:*MEMORY[0x277CCE4C8] healthStore:a1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v3 = static WorkoutCoreInjector.nanoSyncControl;
  v4 = type metadata accessor for FunctionalThresholdPowerStore();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v14 = &type metadata for FastSyncHKKeyValueDomain;
  v15 = &protocol witness table for FastSyncHKKeyValueDomain;
  *&v13 = v2;
  *(&v13 + 1) = v3;
  v11 = v4;
  v12 = &protocol witness table for FunctionalThresholdPowerStore;
  *&v10 = v5;
  v6 = v3;
  v7 = a1;
  type metadata accessor for CyclingPowerZonesConfigurationStore();
  v8 = swift_allocObject();
  sub_20AED9F54(&v13, v8 + 16);
  sub_20AED9F54(&v10, v8 + 56);
  return v8;
}

void specialized CyclingPowerZonesConfigurationStore.createCyclingPowerZonesConfigurationFromAppleFTP(configuration:completion:)(uint64_t a1, NSObject *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v125 = a2;
  v126 = a8;
  v123 = a6;
  v124 = a7;
  v131 = a1;
  v10 = type metadata accessor for Calendar.Component();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for Calendar();
  v15 = *(v130 - 1);
  MEMORY[0x28223BE20](v130, v16);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v118 - v21;
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  v133 = v23;
  v134 = v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v129 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v121 = &v118 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v127 = &v118 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v132 = &v118 - v36;
  MEMORY[0x28223BE20](v35, v37);
  v39 = &v118 - v38;
  v40 = swift_allocObject();
  v118 = a3;
  *(v40 + 16) = a3;
  *(v40 + 24) = a4;
  v128 = v40;
  v119 = a4;

  v135 = v39;
  static Date.now.getter();
  v41 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v42 = MEMORY[0x20F2E6C00](0xD00000000000001BLL, 0x800000020B4605A0);
  v43 = [v41 initWithSuiteName_];

  if (v43)
  {
    v44 = MEMORY[0x20F2E6C00](0xD00000000000002FLL, 0x800000020B465750);
    v45 = [v43 objectForKey_];

    if (v45)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sSo8NSObjectCSgWOhTm_12(v136, &_sypSgMd, &_sypSgMR);
      v46 = MEMORY[0x20F2E6C00](0xD00000000000002FLL, 0x800000020B465750);
      v47 = [v43 integerForKey_];

      LODWORD(v43) = 1;
      goto LABEL_6;
    }

    memset(v136, 0, 32);
    _sSo8NSObjectCSgWOhTm_12(v136, &_sypSgMd, &_sypSgMR);
    LODWORD(v43) = 0;
  }

  v47 = 30;
LABEL_6:
  v48 = v131;
  v49 = v134;
  static Calendar.current.getter();
  (*(v11 + 104))(v14, *MEMORY[0x277CC9968], v10);
  if (__OFSUB__(0, v47))
  {
    __break(1u);
    goto LABEL_27;
  }

  v122 = v47;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v130);
  v50 = v133;
  if ((*(v49 + 48))(v22, 1, v133) != 1)
  {
    (*(v49 + 32))(v132, v22, v50);
    v10 = *(v48 + 24);
    if (*(v10 + 16) > 0.0)
    {
      v51 = OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate;
      v52 = v133;
      v53 = v134;
      v54 = *(v134 + 16);
      v55 = v127;
      v54(v127, v10 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate, v133);
      v56 = static Date.> infix(_:_:)();
      v130 = *(v53 + 8);
      v130(v55, v52);
      if (v56)
      {
        v126 = v51;
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        __swift_project_value_buffer(v57, static WOLog.core);
        v58 = v121;
        v59 = v133;
        v54(v121, v135, v133);

        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();

        LODWORD(v129) = v61;
        if (os_log_type_enabled(v60, v61))
        {
          v125 = v60;
          v120 = v43;
          v62 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          *&v136[0] = v124;
          *v62 = 134219266;
          *(v62 + 4) = v122;
          *(v62 + 12) = 2080;
          v63 = v127;
          v54(v127, v10 + v126, v59);
          v64 = v59;
          if (one-time initialization token for logDateFormatter != -1)
          {
            swift_once();
          }

          v65 = static WOLog.logDateFormatter;
          isa = Date._bridgeToObjectiveC()().super.isa;
          v67 = [v65 stringFromDate_];

          v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v70 = v69;

          v71 = v63;
          v72 = v130;
          v130(v71, v64);
          v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v136);

          *(v62 + 14) = v73;
          *(v62 + 22) = 2080;
          v74 = v121;
          v75 = Date._bridgeToObjectiveC()().super.isa;
          v76 = [v65 stringFromDate_];

          v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v79 = v78;

          v72(v74, v64);
          v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v136);

          *(v62 + 24) = v80;
          *(v62 + 32) = 2048;
          *(v62 + 34) = v122;
          *(v62 + 42) = 1024;
          *(v62 + 44) = v120;
          *(v62 + 48) = 2080;
          v81 = FunctionalThresholdPower.description.getter();
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v136);

          *(v62 + 50) = v83;
          v84 = v125;
          _os_log_impl(&dword_20AEA4000, v125, v129, "[CyclingPowerZones] Current automatic FTP is available and less then %ld days old (fetchDate: %s, now: %s, daysBack: %ld, defaultsOverride: %{BOOL}d), skip fetching most recent Apple FTP, current: %s", v62, 0x3Au);
          v85 = v124;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v85, -1, -1);
          MEMORY[0x20F2E9420](v62, -1, -1);

          v48 = v131;
          v59 = v64;
        }

        else
        {

          v130(v58, v59);
        }

        closure #1 in closure #1 in CyclingPowerZonesConfigurationStore.fetchCyclingPowerZonesConfiguration(completion:)(v48, v118);
LABEL_25:
        v117 = v130;
        v130(v132, v59);
        v117(v135, v59);

        return;
      }
    }

    v120 = v43;
    if (one-time initialization token for core == -1)
    {
LABEL_17:
      v86 = type metadata accessor for Logger();
      __swift_project_value_buffer(v86, static WOLog.core);
      v87 = v134;
      v88 = *(v134 + 16);
      v89 = v129;
      v59 = v133;
      v88(v129, v135, v133);

      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v90, v91))
      {
        LODWORD(v119) = v91;
        v92 = swift_slowAlloc();
        v121 = swift_slowAlloc();
        *&v136[0] = v121;
        *v92 = 67110146;
        *(v92 + 4) = *(v10 + 16) > 0.0;

        *(v92 + 8) = 2080;
        v93 = v127;
        v88(v127, (v10 + OBJC_IVAR____TtC11WorkoutCore24FunctionalThresholdPower_fetchDate), v59);
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v94 = static WOLog.logDateFormatter;
        v95 = Date._bridgeToObjectiveC()().super.isa;
        v96 = v93;
        v97 = [v94 stringFromDate_];

        v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v100 = v99;

        v101 = *(v134 + 8);
        v101(v96, v59);
        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v136);

        *(v92 + 10) = v102;
        *(v92 + 18) = 2080;
        v103 = v129;
        v104 = Date._bridgeToObjectiveC()().super.isa;
        v105 = [v94 stringFromDate_];

        v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v108 = v107;

        v130 = v101;
        v101(v103, v59);
        v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v108, v136);

        *(v92 + 20) = v109;
        *(v92 + 28) = 2048;
        *(v92 + 30) = v122;
        *(v92 + 38) = 1024;
        *(v92 + 40) = v120;
        _os_log_impl(&dword_20AEA4000, v90, v119, "[CyclingPowerZones] Fetching most recent Apple FTP, current automatic FTP is available: %{BOOL}d, (fetchDate: %s, now: %s, daysBack: %ld, defaultsOverride: %{BOOL}d)", v92, 0x2Cu);
        v110 = v121;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v110, -1, -1);
        MEMORY[0x20F2E9420](v92, -1, -1);

        v48 = v131;
      }

      else
      {

        v130 = *(v87 + 8);
        v130(v89, v59);
      }

      v111 = v125;
      v112 = v125[10].isa;
      v113 = v125[11].isa;
      __swift_project_boxed_opaque_existential_1(&v125[7].isa, v112);
      v114 = swift_allocObject();
      v114[2] = v48;
      v114[3] = v111;
      v115 = v128;
      v114[4] = v124;
      v114[5] = v115;
      v116 = *(v113 + 1);

      v116(v126, v114, v112, v113);

      goto LABEL_25;
    }

LABEL_27:
    swift_once();
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t _s11WorkoutCore30CyclingPowerZonesConfigurationCACSEAAWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CyclingPowerZonesConfiguration(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_11Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t ElevationSample.init(date:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ElevationSample(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t type metadata accessor for ElevationSample(uint64_t a1)
{
  result = type metadata singleton initialization cache for ElevationSample;
  if (!type metadata singleton initialization cache for ElevationSample)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ElevationSample.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id ElevationSample.value.getter()
{
  v1 = *(v0 + *(type metadata accessor for ElevationSample(0) + 20));

  return v1;
}

uint64_t ElevationSample.description.getter()
{
  _StringGuts.grow(_:)(23);
  MEMORY[0x20F2E6D80](0x6F69746176656C65, 0xED00003D296D286ELL);
  v1 = *(v0 + *(type metadata accessor for ElevationSample(0) + 20));
  v2 = [objc_opt_self() meterUnit];
  [v1 doubleValueForUnit_];

  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x3D6574616420, 0xE600000000000000);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date();
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v3);

  return 0;
}

uint64_t type metadata completion function for ElevationSample(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HKQuantity();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for HKQuantity()
{
  result = lazy cache variable for type metadata for HKQuantity;
  if (!lazy cache variable for type metadata for HKQuantity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKQuantity);
  }

  return result;
}

uint64_t CustomDistanceSplitsTracker.alertDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*CustomDistanceSplitsTracker.alertDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CustomDistanceSplitsTracker.alertDelegate.modify;
}

void CustomDistanceSplitsTracker.alertDelegate.modify(void **a1, char a2)
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

id CustomDistanceSplitsTracker.__allocating_init(activityType:activityMoveMode:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_distanceType] = FIUIDistanceTypeForActivityType();
  *&v5[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityType] = a1;
  *&v5[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityMoveMode] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CustomDistanceSplitsTracker.init(activityType:activityMoveMode:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_distanceType] = FIUIDistanceTypeForActivityType();
  *&v2[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityType] = a1;
  *&v2[OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityMoveMode] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CustomDistanceSplitsTracker();
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall CustomDistanceSplitsTracker.processCustomSplitEvent(_:)(HKWorkoutEvent a1)
{
  v3 = [objc_allocWithZone(NLSessionActivitySegmentMarker) init];
  v4 = [(objc_class *)a1.super.isa metadata];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = v4;
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v6 + 16))
  {

    goto LABEL_12;
  }

  v9 = v1;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v10, v39);

  type metadata accessor for HKQuantity();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static WOLog.app);
    v30 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_20AEA4000, v30, v35, "Split does not have either distance or total distance", v36, 2u);
      MEMORY[0x20F2E9420](v36, -1, -1);
    }

    v13 = v3;
    goto LABEL_18;
  }

  v13 = v38;
  v14 = [(objc_class *)a1.super.isa fiui_splitDistance];
  if (!v14)
  {

    goto LABEL_13;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 meterUnit];
  [v38 doubleValueForUnit_];
  v19 = v18;

  v20 = [v16 meterUnit];
  [v15 doubleValueForUnit_];
  v22 = v21;

  v23 = round(v19 / v22);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v23 < 9.22337204e18)
  {
    v24 = v9;
    [v3 setSegmentIndex_];
    [(objc_class *)a1.super.isa fiui_splitActiveDuration];
    [v3 setDuration_];
    v25 = [(objc_class *)a1.super.isa fiui_splitDistance];
    [v3 setDistance_];

    v26 = *(v9 + OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityType);
    v27 = *(v24 + OBJC_IVAR___NLWorkoutCustomDistanceSplitsTracker_activityMoveMode);
    v28 = type metadata accessor for WorkoutAlertSegment();
    v29 = objc_allocWithZone(v28);
    *&v29[OBJC_IVAR___WOSegmentAlert_segmentMarker] = v3;
    *&v29[OBJC_IVAR___WOSegmentAlert_activityType] = v26;
    *&v29[OBJC_IVAR___WOSegmentAlert_activityMoveMode] = v27;
    v29[OBJC_IVAR___WOSegmentAlert_gpsAvailable] = 1;
    v29[OBJC_IVAR___WOSegmentAlert_shouldHideTime] = 0;
    v37.receiver = v29;
    v37.super_class = v28;
    v30 = v3;
    v31 = v26;
    v32 = objc_msgSendSuper2(&v37, sel_init);
    [v32 setType_];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong alertSource:v24 didTriggerAlert:v32];

      swift_unknownObjectRelease();
    }

    else
    {
    }

LABEL_18:

    return;
  }

LABEL_23:
  __break(1u);
}

id CustomDistanceSplitsTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CustomDistanceSplitsTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomDistanceSplitsTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t specialized static IntervalWorkoutConfiguration.displayName.getter()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B465830);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

unint64_t lazy protocol witness table accessor for type HKWorkoutMetricType and conformance HKWorkoutMetricType()
{
  result = lazy protocol witness table cache variable for type HKWorkoutMetricType and conformance HKWorkoutMetricType;
  if (!lazy protocol witness table cache variable for type HKWorkoutMetricType and conformance HKWorkoutMetricType)
  {
    type metadata accessor for HKWorkoutMetricType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HKWorkoutMetricType and conformance HKWorkoutMetricType);
  }

  return result;
}

uint64_t WorkoutBuddyStatePublisher.supportsWorkoutBuddy.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void key path getter for WorkoutBuddyStatePublisher.supportsWorkoutBuddy : WorkoutBuddyStatePublisher(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for WorkoutBuddyStatePublisher.supportsWorkoutBuddy : WorkoutBuddyStatePublisher(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double WorkoutBuddyStatePublisher.supportsWorkoutBuddy.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*WorkoutBuddyStatePublisher.supportsWorkoutBuddy.modify(uint64_t *a1))()
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
  return WorkoutBuddyStatePublisher.supportsWorkoutBuddy.modify;
}

uint64_t key path setter for WorkoutBuddyStatePublisher.$supportsWorkoutBuddy : WorkoutBuddyStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutBuddyStatePublisher.$supportsWorkoutBuddy.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutBuddyStatePublisher.$supportsWorkoutBuddy.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutBuddyStatePublisher.$supportsWorkoutBuddy.modify;
}

double WorkoutBuddyStatePublisher.state.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

void key path getter for WorkoutBuddyStatePublisher.state : WorkoutBuddyStatePublisher(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for WorkoutBuddyStatePublisher.state : WorkoutBuddyStatePublisher(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double WorkoutBuddyStatePublisher.state.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*WorkoutBuddyStatePublisher.state.modify(uint64_t *a1))()
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
  return WorkoutBuddyStatePublisher.state.modify;
}

void WorkoutBuddyStatePublisher.supportsWorkoutBuddy.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t WorkoutBuddyStatePublisher.$supportsWorkoutBuddy.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WorkoutBuddyStatePublisher.$supportsWorkoutBuddy : WorkoutBuddyStatePublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutBuddyStatePublisher.$state : WorkoutBuddyStatePublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutBuddyStatePublisher.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutBuddyStatePublisher.$state.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0d10BuddyStateC0C0G0O_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutBuddyStatePublisher.$state.modify;
}

void WorkoutBuddyStatePublisher.$supportsWorkoutBuddy.modify(uint64_t a1, char a2)
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

uint64_t WorkoutBuddyStatePublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  return v0;
}

uint64_t WorkoutBuddyStatePublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14[-v9];
  v11 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  v14[15] = 0;
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  v14[14] = 3;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

WorkoutCore::WorkoutBuddyStatePublisher::State_optional __swiftcall WorkoutBuddyStatePublisher.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutBuddyStatePublisher.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutBuddyStatePublisher.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t WorkoutBuddyStatePublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t WorkoutBuddyStatePublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutBuddyStatePublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void WorkoutBuddyStatePublisher.protobuf.getter(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((&v2 + 1));

  *a1 = BYTE1(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v2);

  *(a1 + 8) = v2;
  *(a1 + 16) = 1;
}

uint64_t WorkoutBuddyStatePublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutBuddyStatePublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WorkoutBuddyStatePublisher(v3);
  return v4;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_WorkoutBuddyStatePublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WorkoutBuddyStatePublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized WorkoutBuddyStatePublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance WorkoutBuddyStatePublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutBuddyStatePublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_WorkoutBuddyStatePublisher(v3);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance WorkoutBuddyStatePublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static WorkoutBuddyStatePublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance WorkoutBuddyStatePublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized WorkoutBuddyStatePublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState.decoded.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a1 = v3;
}

uint64_t closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 136) = a6;
  *(v6 + 155) = a5;
  *(v6 + 154) = a4;
  type metadata accessor for MainActor();
  *(v6 + 144) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:), v8, v7);
}

uint64_t closure #1 in WorkoutBuddyStatePublisher.workoutBuddyDisplayStateUpdated(_:supportsWorkoutBuddy:)()
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
    v4 = *(v0 + 155);
    v5 = *(v0 + 154);
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v5;
    *(v6 + 12) = 1024;
    *(v6 + 14) = v4;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Setting Workout Buddy state to %ld, supportsWorkoutBuddy %{BOOL}d", v6, 0x12u);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v7 = *(v0 + 155);
  v8 = *(v0 + 154);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 152) = v7;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 153) = v8;

  static Published.subscript.setter();
  v9 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for workoutBuddyStateChanged != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 154);
  v11 = static NSNotificationName.workoutBuddyStateChanged;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(v0 + 120) = 0xD000000000000011;
  *(v0 + 128) = 0x800000020B465850;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for WorkoutBuddyStatePublisher.State;
  *(inited + 72) = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (AnyHashable, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 postNotificationName:v11 object:0 userInfo:isa];

  v14 = *(v0 + 8);

  return v14();
}

uint64_t specialized static WorkoutBuddyStatePublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v26[1] = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  MEMORY[0x28223BE20](v29, v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v26 - v16;
  type metadata accessor for WorkoutBuddyStatePublisher(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
  LOBYTE(v31) = 0;
  Published.init(initialValue:)();
  (*(v14 + 32))(v18 + v19, v17, v13);
  v20 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
  LOBYTE(v31) = 3;
  Published.init(initialValue:)();
  (*(v9 + 32))(v18 + v20, v12, v8);
  v34[0] = v27;
  v34[1] = v28;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  outlined copy of Data._Representation(v27, v28);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher();
  v21 = v30;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v21)
  {
  }

  else
  {
    v22 = *v7;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v31) = v22;

    static Published.subscript.setter();
    v23 = v7[16];
    *&v31 = *(v7 + 1);
    BYTE8(v31) = v23;
    Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState.decoded.getter(v34);
    v24 = v34[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v24;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutBuddyStatePublisher(v7);
  }

  return v18;
}

uint64_t specialized WorkoutBuddyStatePublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMd, &_s7Combine9PublishedVy11WorkoutCore0C19BuddyStatePublisherC0F0OGMR);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33[0] = a1;
  v33[1] = a2;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    type metadata accessor for WorkoutBuddyStatePublisher(0);
    v3 = swift_allocObject();
    v20 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__supportsWorkoutBuddy;
    LOBYTE(v30) = 0;
    Published.init(initialValue:)();
    (*(v27 + 32))(v3 + v20, v13, v10);
    v21 = OBJC_IVAR____TtC11WorkoutCore26WorkoutBuddyStatePublisher__state;
    LOBYTE(v30) = 3;
    Published.init(initialValue:)();
    (*(v28 + 32))(v3 + v21, v9, v29);
    v22 = *v19;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v30) = v22;
    swift_retain_n();
    static Published.subscript.setter();
    v23 = v19[16];
    *&v30 = *(v19 + 1);
    BYTE8(v30) = v23;
    Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState.decoded.getter(v33);
    v24 = v33[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v34 = v24;
    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_WorkoutBuddyStatePublisher(v19);
  }

  return v3;
}

unint64_t lazy protocol witness table accessor for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State()
{
  result = lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State;
  if (!lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutBuddyStatePublisher.State and conformance WorkoutBuddyStatePublisher.State);
  }

  return result;
}

uint64_t type metadata accessor for WorkoutBuddyStatePublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutBuddyStatePublisher;
  if (!type metadata singleton initialization cache for WorkoutBuddyStatePublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutBuddyStatePublisher(uint64_t a1)
{
  _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    _s7Combine9PublishedVySbGMaTm_0(319, &lazy cache variable for type metadata for Published<WorkoutBuddyStatePublisher.State>, &type metadata for WorkoutBuddyStatePublisher.State);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void _s7Combine9PublishedVySbGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for WorkoutBuddyStatePublisher.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutBuddyStatePublisher.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id Chronicle.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static Chronicle.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static Chronicle.shared;

  return v1;
}

double Chronicle.record(className:classInstance:selector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v48 = a1;
  v49 = a2;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v5);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v7);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v16 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v41 - v18;
  v47 = &v41 - v18;
  Date.init()();
  dispatch_queue_get_label(0);
  static String.Encoding.utf8.getter();
  v42 = String.init(cString:encoding:)();
  v41 = v20;
  v21 = *(v4 + OBJC_IVAR___WOChronicle_recordingQueue);
  v44 = v11;
  v45 = v21;
  v22 = v11;
  (*(v12 + 16))(v16, v19, v11);
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v12 + 32))(v28 + v23, v16, v22);
  v29 = (v28 + v24);
  v30 = v41;
  *v29 = v42;
  v29[1] = v30;
  v31 = (v28 + v25);
  v32 = v49;
  *v31 = v48;
  v31[1] = v32;
  v33 = v51;
  *(v28 + v26) = v50;
  *(v28 + v27) = v33;
  v34 = v43;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v43;
  aBlock[4] = partial apply for closure #1 in Chronicle.record(className:classInstance:selector:);
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_56;
  v35 = _Block_copy(aBlock);

  v36 = v34;
  v37 = v46;
  static DispatchQoS.unspecified.getter();
  v57 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_10(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v38 = v52;
  v39 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v37, v38, v35);
  _Block_release(v35);
  (*(v56 + 8))(v38, v39);
  (*(v53 + 8))(v37, v55);
  (*(v12 + 8))(v47, v44);

  return result;
}

uint64_t closure #1 in Chronicle.record(className:classInstance:selector:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a6;
  v40 = a7;
  v37 = a4;
  v38 = a5;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Chronicle.Entry(0);
  v18 = (v17 - 8);
  v41 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v37 - v24;
  (*(v13 + 16))(v16, a1, v12);
  if (a3)
  {
    v26 = a3;
  }

  else
  {
    a2 = 0x64656D616E6E75;
    v26 = 0xE700000000000000;
  }

  (*(v13 + 32))(v25, v16, v12);
  v27 = &v25[v18[7]];
  *v27 = a2;
  *(v27 + 1) = v26;
  v28 = &v25[v18[8]];
  v29 = v38;
  *v28 = v37;
  v28[1] = v29;
  v30 = v40;
  *&v25[v18[9]] = v39;
  *&v25[v18[10]] = v30;
  outlined init with copy of Chronicle.Entry(v25, v22);
  v31 = OBJC_IVAR___WOChronicle_entries;
  swift_beginAccess();
  v32 = *(a8 + v31);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a8 + v31) = v32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32[2] + 1, 1, v32);
    *(a8 + v31) = v32;
  }

  v35 = v32[2];
  v34 = v32[3];
  if (v35 >= v34 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
  }

  v32[2] = v35 + 1;
  outlined init with take of Chronicle.Entry(v22, v32 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35);
  *(a8 + v31) = v32;
  swift_endAccess();
  return outlined destroy of Chronicle.Entry(v25);
}

uint64_t partial apply for closure #1 in Chronicle.record(className:classInstance:selector:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);
  v12 = *(v0 + v5);
  v13 = *(v0 + v6);
  v14 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in Chronicle.record(className:classInstance:selector:)(v0 + v2, v8, v9, v10, v11, v12, v13, v14);
}

Swift::Void __swiftcall Chronicle.dumpReport()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v7);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v0[OBJC_IVAR___WOChronicle_recordingQueue];
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in Chronicle.dumpReport();
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6_5;
  v11 = _Block_copy(aBlock);
  v12 = v0;
  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_10(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v11);
  _Block_release(v11);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v14);
}

void closure #1 in Chronicle.dumpReport()(uint64_t a1)
{
  v2 = type metadata accessor for Chronicle.Entry(0);
  v3 = *(v2 - 8);
  v71 = v2;
  v72 = v3;
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___WOChronicle_entries;
  swift_beginAccess();
  if (!*(*(a1 + v11) + 16))
  {
    if (one-time initialization token for core == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_39;
  }

  v12 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (v13 + 16 + 16 * v14);
    v16 = *v15;
    v17 = v15[1];

    v75 = 0;
    v76 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v75 = v16;
    v76 = v17;
    MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B465970);
    Current = CFAbsoluteTimeGetCurrent();
    if ((*&Current & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (Current <= -1.0)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (Current >= 1.84467441e19)
      {
LABEL_38:
        __break(1u);
LABEL_39:
        swift_once();
LABEL_14:
        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static WOLog.core);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          v44 = "No Chronicle entries to write";
LABEL_20:
          _os_log_impl(&dword_20AEA4000, v41, v42, v44, v43, 2u);
LABEL_21:
          MEMORY[0x20F2E9420](v43, -1, -1);
          goto LABEL_34;
        }

        goto LABEL_34;
      }

      v64 = v17;
      v65 = v8;
      v66 = v7;
      v73 = Current;
      v19 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v19);

      MEMORY[0x20F2E6D80](1987273518, 0xE400000000000000);
      v20 = v76;
      v67 = v75;
      v75 = *(a1 + v11);
      swift_bridgeObjectRetain_n();
      specialized MutableCollection<>.sort(by:)(&v75);
      v63 = 0;

      v21 = v75;
      v22 = MEMORY[0x277D84F90];
      *(a1 + v11) = MEMORY[0x277D84F90];

      v23 = *(v21 + 16);
      if (!v23)
      {

        v25 = MEMORY[0x277D84F90];
LABEL_23:
        v75 = v25;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_10(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
        v46 = BidirectionalCollection<>.joined(separator:)();
        v48 = v47;

        v75 = v46;
        v76 = v48;
        v50 = v67;
        v49 = v68;
        v73 = v67;
        v74 = v20;
        static String.Encoding.utf8.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v51 = v63;
        StringProtocol.write<A>(toFile:atomically:encoding:)();
        if (v51)
        {
          (*(v65 + 8))(v49, v66);

          if (one-time initialization token for core != -1)
          {
            swift_once();
          }

          v52 = type metadata accessor for Logger();
          __swift_project_value_buffer(v52, static WOLog.core);

          v41 = Logger.logObject.getter();
          v53 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v41, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v75 = v55;
            *v54 = 136315138;
            v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v20, &v75);

            *(v54 + 4) = v56;
            _os_log_impl(&dword_20AEA4000, v41, v53, "There was an error writing Chronicle report to %s", v54, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v55);
            MEMORY[0x20F2E9420](v55, -1, -1);
            MEMORY[0x20F2E9420](v54, -1, -1);

            goto LABEL_34;
          }
        }

        else
        {
          (*(v65 + 8))(v49, v66);

          if (one-time initialization token for core != -1)
          {
            swift_once();
          }

          v57 = type metadata accessor for Logger();
          __swift_project_value_buffer(v57, static WOLog.core);

          v41 = Logger.logObject.getter();
          v58 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v41, v58))
          {
            v43 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v75 = v59;
            *v43 = 136315138;
            v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v20, &v75);

            *(v43 + 4) = v60;
            _os_log_impl(&dword_20AEA4000, v41, v58, "Wrote Chronicle report to %s", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v59);
            MEMORY[0x20F2E9420](v59, -1, -1);
            goto LABEL_21;
          }
        }

        goto LABEL_34;
      }

      v62 = v20;
      v73 = v22;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
      v24 = 0;
      v25 = v73;
      v70 = v21 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
      v69 = xmmword_20B423A90;
      while (v24 < *(v21 + 16))
      {
        v26 = v21;
        outlined init with copy of Chronicle.Entry(v70 + *(v72 + 72) * v24, v6);
        v75 = 0;
        v76 = 0xE000000000000000;
        Date.timeIntervalSince1970.getter();
        Double.write<A>(to:)();
        MEMORY[0x20F2E6D80](44, 0xE100000000000000);
        v27 = v71;
        MEMORY[0x20F2E6D80](*&v6[v71[5]], *&v6[v71[5] + 8]);
        MEMORY[0x20F2E6D80](44, 0xE100000000000000);
        MEMORY[0x20F2E6D80](*&v6[v27[6]], *&v6[v27[6] + 8]);
        MEMORY[0x20F2E6D80](44, 0xE100000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v28 = swift_allocObject();
        *(v28 + 16) = v69;
        v29 = *&v6[v27[7]];
        *(v28 + 56) = MEMORY[0x277D84D38];
        *(v28 + 64) = MEMORY[0x277D84D90];
        *(v28 + 32) = v29;
        v30 = String.init(format:_:)();
        MEMORY[0x20F2E6D80](v30);

        MEMORY[0x20F2E6D80](44, 0xE100000000000000);
        v31 = NSStringFromSelector(*&v6[v27[8]]);
        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        MEMORY[0x20F2E6D80](v32, v34);

        v36 = v75;
        v35 = v76;
        outlined destroy of Chronicle.Entry(v6);
        v73 = v25;
        v38 = *(v25 + 16);
        v37 = *(v25 + 24);
        if (v38 >= v37 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
          v25 = v73;
        }

        ++v24;
        *(v25 + 16) = v38 + 1;
        v39 = v25 + 16 * v38;
        *(v39 + 32) = v36;
        *(v39 + 40) = v35;
        v21 = v26;
        if (v23 == v24)
        {

          v20 = v62;
          goto LABEL_23;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static WOLog.core);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "Could not get document directory";
    goto LABEL_20;
  }

LABEL_34:
}

id Chronicle.init()()
{
  v14 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v13 = OBJC_IVAR___WOChronicle_recordingQueue;
  v9 = type metadata accessor for OS_dispatch_queue();
  v12[1] = "e26NLWorkoutControllerFactory";
  v12[2] = v9;
  static DispatchQoS.utility.getter();
  v16 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_9(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_10(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v14);
  *&v0[v13] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR___WOChronicle_entries] = MEMORY[0x277D84F90];
  v10 = type metadata accessor for Chronicle();
  v15.receiver = v0;
  v15.super_class = v10;
  return objc_msgSendSuper2(&v15, sel_init);
}

id Chronicle.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Chronicle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for Chronicle.Entry(uint64_t a1)
{
  result = type metadata singleton initialization cache for Chronicle.Entry;
  if (!type metadata singleton initialization cache for Chronicle.Entry)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Chronicle.Entry(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for Chronicle.Entry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

uint64_t outlined init with copy of Chronicle.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chronicle.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Chronicle.Entry(uint64_t a1)
{
  v2 = type metadata accessor for Chronicle.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v103 = a1;
  v114 = type metadata accessor for Chronicle.Entry(0);
  v110 = *(v114 - 8);
  v10 = MEMORY[0x28223BE20](v114, v9);
  v105 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v113 = &v99 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v99 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v99 - v20;
  v112 = a3;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_97:
    v5 = *v103;
    if (!*v103)
    {
      goto LABEL_136;
    }

    a4 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = a4;
    }

    else
    {
LABEL_130:
      v94 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v115 = v94;
    a4 = *(v94 + 2);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *&v94[16 * a4];
        v96 = v94;
        v97 = *&v94[16 * a4 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *&v94[16 * a4 + 16], *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v97 < v95)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = specialized _ArrayBuffer._consumeAndCreateNew()(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_124;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        specialized Array.remove(at:)(a4 - 1);
        v94 = v115;
        a4 = *(v115 + 2);
        if (a4 <= 1)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_134;
    }

LABEL_108:

    return;
  }

  v23 = 0;
  v24 = MEMORY[0x277D84F90];
  v102 = a4;
  while (1)
  {
    v25 = v23;
    v26 = v23 + 1;
    v106 = v24;
    if (v26 >= v22)
    {
      v32 = v26;
    }

    else
    {
      v27 = *v112;
      v109 = v27;
      v28 = *(v110 + 72);
      v5 = v27 + v28 * v26;
      outlined init with copy of Chronicle.Entry(v5, v21);
      outlined init with copy of Chronicle.Entry(v27 + v28 * v25, v18);
      v29 = static Date.< infix(_:_:)();
      outlined destroy of Chronicle.Entry(v18);
      outlined destroy of Chronicle.Entry(v21);
      v101 = v25;
      a4 = v25 + 2;
      v111 = v28;
      v30 = v109 + v28 * (v25 + 2);
      while (v22 != a4)
      {
        outlined init with copy of Chronicle.Entry(v30, v21);
        outlined init with copy of Chronicle.Entry(v5, v18);
        v31 = static Date.< infix(_:_:)() & 1;
        outlined destroy of Chronicle.Entry(v18);
        outlined destroy of Chronicle.Entry(v21);
        ++a4;
        v30 += v111;
        v5 += v111;
        if ((v29 & 1) != v31)
        {
          v32 = a4 - 1;
          goto LABEL_11;
        }
      }

      v32 = v22;
      v25 = v101;
      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_11:
      if (v32 < v101)
      {
        goto LABEL_127;
      }

      if (v101 < v32)
      {
        v100 = v6;
        v33 = v111 * (v32 - 1);
        v34 = v32;
        v35 = v32 * v111;
        v109 = v32;
        v36 = v101 * v111;
        do
        {
          if (v25 != --v34)
          {
            v37 = *v112;
            if (!*v112)
            {
              goto LABEL_133;
            }

            v5 = v37 + v36;
            outlined init with take of Chronicle.Entry(v37 + v36, v105);
            if (v36 < v33 || v5 >= v37 + v35)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v36 != v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of Chronicle.Entry(v105, v37 + v33);
          }

          ++v25;
          v33 -= v111;
          v35 -= v111;
          v36 += v111;
        }

        while (v25 < v34);
        v6 = v100;
        v25 = v101;
        a4 = v102;
        v32 = v109;
      }

      else
      {
LABEL_24:
        a4 = v102;
      }
    }

    v38 = v112[1];
    if (v32 < v38)
    {
      if (__OFSUB__(v32, v25))
      {
        goto LABEL_126;
      }

      if (v32 - v25 < a4)
      {
        if (__OFADD__(v25, a4))
        {
          goto LABEL_128;
        }

        if ((v25 + a4) >= v38)
        {
          v39 = v112[1];
        }

        else
        {
          v39 = v25 + a4;
        }

        if (v39 < v25)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v32 != v39)
        {
          break;
        }
      }
    }

    v40 = v32;
    if (v32 < v25)
    {
      goto LABEL_125;
    }

LABEL_36:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v24 = v106;
    }

    else
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v106 + 2) + 1, 1, v106);
    }

    a4 = *(v24 + 2);
    v41 = *(v24 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), a4 + 1, 1, v24);
    }

    *(v24 + 2) = v5;
    v42 = &v24[16 * a4];
    *(v42 + 4) = v25;
    *(v42 + 5) = v40;
    v43 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    v107 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v24 + 4);
          v46 = *(v24 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_55:
          if (v48)
          {
            goto LABEL_114;
          }

          v61 = &v24[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_117;
          }

          v67 = &v24[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_121;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v71 = &v24[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_69:
        if (v66)
        {
          goto LABEL_116;
        }

        v74 = &v24[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_119;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
          goto LABEL_129;
        }

        if (!*v112)
        {
          goto LABEL_132;
        }

        v82 = v24;
        v83 = *&v24[16 * a4 + 32];
        v5 = *&v24[16 * v44 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v112 + *(v110 + 72) * v83, *v112 + *(v110 + 72) * *&v24[16 * v44 + 32], *v112 + *(v110 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v83)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = specialized _ArrayBuffer._consumeAndCreateNew()(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_111;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v115 = v82;
        specialized Array.remove(at:)(v44);
        v24 = v115;
        v5 = *(v115 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v24[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_112;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_113;
      }

      v56 = &v24[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_115;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_118;
      }

      if (v60 >= v52)
      {
        v78 = &v24[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_122;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v112[1];
    v23 = v107;
    a4 = v102;
    if (v107 >= v22)
    {
      goto LABEL_97;
    }
  }

  v100 = v6;
  v101 = v25;
  v85 = *v112;
  v86 = *(v110 + 72);
  v87 = *v112 + v86 * (v32 - 1);
  v88 = -v86;
  v89 = v25 - v32;
  v109 = v32;
  v104 = v86;
  a4 = v85 + v32 * v86;
  v107 = v39;
LABEL_87:
  v5 = a4;
  v108 = v89;
  v111 = v87;
  v90 = v87;
  while (1)
  {
    outlined init with copy of Chronicle.Entry(v5, v21);
    outlined init with copy of Chronicle.Entry(v90, v18);
    v91 = static Date.< infix(_:_:)();
    outlined destroy of Chronicle.Entry(v18);
    outlined destroy of Chronicle.Entry(v21);
    if ((v91 & 1) == 0)
    {
LABEL_86:
      v87 = v111 + v104;
      v89 = v108 - 1;
      a4 += v104;
      v40 = v107;
      if (++v109 != v107)
      {
        goto LABEL_87;
      }

      v6 = v100;
      v25 = v101;
      if (v107 < v101)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v85)
    {
      break;
    }

    v92 = v113;
    outlined init with take of Chronicle.Entry(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Chronicle.Entry(v92, v90);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v46 = a3;
  v44 = type metadata accessor for Chronicle.Entry(0);
  v9 = MEMORY[0x28223BE20](v44, v8);
  v45 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v14 = v40 - v13;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v46 - a2;
  if (v46 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v49 = a1;
  v48 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40[1] = v4;
    v25 = a4 + v20;
    if (v20 < 1)
    {
      v28 = a4 + v20;
    }

    else
    {
      v26 = -v16;
      v27 = a4 + v20;
      v28 = v25;
      v42 = v26;
      v43 = a4;
      do
      {
        v40[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v46;
          if (v29 <= a1)
          {
            v49 = v29;
            v47 = v40[0];
            goto LABEL_59;
          }

          v41 = v28;
          v46 += v26;
          v33 = v27 + v26;
          outlined init with copy of Chronicle.Entry(v33, v14);
          v34 = v30;
          v35 = v30;
          v36 = v14;
          v37 = v45;
          outlined init with copy of Chronicle.Entry(v35, v45);
          v38 = static Date.< infix(_:_:)();
          v39 = v37;
          v14 = v36;
          outlined destroy of Chronicle.Entry(v39);
          outlined destroy of Chronicle.Entry(v36);
          if (v38)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v46 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v43;
          v26 = v42;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v46 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v41;
          v26 = v42;
        }

        else
        {
          v28 = v41;
          v26 = v42;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v43);
    }

LABEL_58:
    v49 = a2;
    v47 = v28;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v21 = a4 + v19;
    v47 = a4 + v19;
    if (v19 >= 1 && a2 < v46)
    {
      do
      {
        outlined init with copy of Chronicle.Entry(a2, v14);
        v23 = v45;
        outlined init with copy of Chronicle.Entry(a4, v45);
        v24 = static Date.< infix(_:_:)();
        outlined destroy of Chronicle.Entry(v23);
        outlined destroy of Chronicle.Entry(v14);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v16;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v48 = a4 + v16;
          a4 += v16;
        }

        a1 += v16;
        v49 = a1;
      }

      while (a4 < v21 && a2 < v46);
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v49, &v48, &v47, type metadata accessor for Chronicle.Entry);
  return 1;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t outlined init with take of Chronicle.Entry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chronicle.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double SegmentDistanceAccumulator.segmentStartDistance.getter()
{
  v1 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

void SegmentDistanceAccumulator.segmentStartDistance.setter(double a1)
{
  v3 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
  swift_beginAccess();
  *(v1 + v3) = a1;
  SegmentDistanceAccumulator._updateInternalQuantity()();
}

void (*SegmentDistanceAccumulator.segmentStartDistance.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return SegmentDistanceAccumulator.segmentStartDistance.modify;
}

void SegmentDistanceAccumulator.segmentStartDistance.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    SegmentDistanceAccumulator._updateInternalQuantity()();
  }
}

void key path setter for SegmentDistanceAccumulator.distance : SegmentDistanceAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id SegmentDistanceAccumulator.distance.getter()
{
  v1 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SegmentDistanceAccumulator.distance.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void SegmentDistanceAccumulator._updateInternalQuantity()()
{
  v1 = [objc_opt_self() meterUnit];
  v2 = *&v0[OBJC_IVAR___WOSegmentDistanceAccumulator_lastReceivedDistance];
  v3 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
  swift_beginAccess();
  if (v2 - *&v0[v3] > 0.0)
  {
    v4 = v2 - *&v0[v3];
  }

  else
  {
    v4 = 0.0;
  }

  v5 = [objc_opt_self() quantityWithUnit:v1 doubleValue:v4];

  v6 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v7 = *&v0[v6];
  *&v0[v6] = v5;

  v8 = [v0 updateHandler];
  if (v8)
  {
    v9 = v8;
    (*(v8 + 2))();
    _Block_release(v9);
  }
}

id SegmentDistanceAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SegmentDistanceAccumulator.init()()
{
  *&v0[OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance] = 0;
  v1 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  v2 = [objc_opt_self() meterUnit];
  v3 = [objc_opt_self() quantityWithUnit:v2 doubleValue:0.0];

  *&v0[v1] = v3;
  *&v0[OBJC_IVAR___WOSegmentDistanceAccumulator_lastReceivedDistance] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SegmentDistanceAccumulator();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SegmentDistanceAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentDistanceAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double SegmentElapsedTimeAccumulator.segmentStartDuration.getter()
{
  v1 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void SegmentElapsedTimeAccumulator.segmentStartDuration.setter(double a1)
{
  v3 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  *&v1[v3] = a1;
  if (*&v1[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - a1 > 0.0)
  {
    v4 = *&v1[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - a1;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  *&v1[v5] = v4;
  v6 = [v1 updateHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();
    _Block_release(v7);
  }
}

uint64_t (*SegmentElapsedTimeAccumulator.segmentStartDuration.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return SegmentElapsedTimeAccumulator.segmentStartDuration.modify;
}

void SegmentElapsedTimeAccumulator.segmentStartDuration.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v4 = v3[4];
    v6 = *&v5[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - *&v5[v4] > 0.0 ? *&v5[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - *&v5[v4] : 0.0;
    v7 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
    swift_beginAccess();
    *&v5[v7] = v6;
    v8 = [v5 updateHandler];
    if (v8)
    {
      v9 = v8;
      (*(v8 + 2))();
      _Block_release(v9);
    }
  }

  free(v3);
}

double SegmentElapsedTimeAccumulator.duration.getter()
{
  v1 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  return *(v0 + v1);
}

void SegmentElapsedTimeAccumulator.duration.setter(double a1)
{
  v3 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall SegmentElapsedTimeAccumulator.updateDuration(_:)(Swift::Double a1)
{
  *&v1[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] = a1;
  v3 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  if (a1 - *&v1[v3] > 0.0)
  {
    v4 = a1 - *&v1[v3];
  }

  else
  {
    v4 = 0.0;
  }

  v5 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  *&v1[v5] = v4;
  v6 = [v1 updateHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();
    _Block_release(v7);
  }
}

Swift::Double __swiftcall SegmentElapsedTimeAccumulator.duration(at:)(Swift::Double at)
{
  v3 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  result = at - *(v1 + v3);
  if (result <= 0.0)
  {
    return 0.0;
  }

  return result;
}

id SegmentElapsedTimeAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SegmentElapsedTimeAccumulator.init()()
{
  *&v0[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration] = 0;
  *&v0[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] = 0;
  *&v0[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentElapsedTimeAccumulator();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SegmentElapsedTimeAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentElapsedTimeAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_getTm_5@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

double SegmentPaceAccumulator.pace.getter()
{
  if (*(v0 + OBJC_IVAR___WOSegmentPaceAccumulator_duration) > 0.0 && *(v0 + OBJC_IVAR___WOSegmentPaceAccumulator_distance) > 0.0)
  {
    JUMPOUT(0x20F2E8430);
  }

  return 0.0;
}

id SegmentPaceAccumulator.__allocating_init(builder:activityType:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v6 = [a2 effectiveTypeIdentifier];
  *&v5[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v6;
  v9.receiver = v5;
  v9.super_class = v2;
  v7 = objc_msgSendSuper2(&v9, sel_initWithBuilder_, a1);

  return v7;
}

id SegmentPaceAccumulator.init(builder:activityType:)(void *a1, id a2)
{
  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v5 = [a2 effectiveTypeIdentifier];
  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v5;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for SegmentPaceAccumulator();
  v6 = objc_msgSendSuper2(&v8, sel_initWithBuilder_, a1);

  return v6;
}

Swift::Void __swiftcall SegmentPaceAccumulator.updateDistance(_:duration:)(Swift::Double _, Swift::Double duration)
{
  v3 = *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_distance];
  if (v3 < _)
  {
    *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = _;
  }

  if (*&v2[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] >= duration)
  {
    v4 = &v2[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
    if (*&v2[OBJC_IVAR___WOSegmentPaceAccumulator_duration] >= duration)
    {
      if (v3 >= _)
      {
        return;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *&v2[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = duration;
  v4 = &v2[OBJC_IVAR___WOSegmentPaceAccumulator_duration];
  if (*&v2[OBJC_IVAR___WOSegmentPaceAccumulator_duration] < duration)
  {
LABEL_7:
    *v4 = duration;
  }

LABEL_8:
  v5 = [v2 updateHandler];
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))();

    _Block_release(v6);
  }
}

Swift::Void __swiftcall SegmentPaceAccumulator.updateDuration(_:)(Swift::Double a1)
{
  if (*&v1[OBJC_IVAR___WOSegmentPaceAccumulator_duration] >= a1)
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.app);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v5, "PaceAccumulator updated duration is less than prior duration, ignoring", v6, 2u);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }
  }

  else
  {
    *&v1[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = a1;
    if (a1 - *&v1[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] >= 10.0)
    {
      v2 = [v1 updateHandler];
      if (v2)
      {
        v3 = v2;
        (*(v2 + 2))();

        _Block_release(v3);
      }
    }
  }
}

Swift::Void __swiftcall SegmentPaceAccumulator.reset()()
{
  *&v0[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v0[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v0[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  v1 = [v0 updateHandler];
  if (v1)
  {
    v2 = v1;
    (*(v1 + 2))();

    _Block_release(v2);
  }
}

id SegmentPaceAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id SegmentPaceAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentPaceAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double SegmentAccumulator.completedSegments.getter()
{
  swift_beginAccess();

  return result;
}

double key path setter for SegmentAccumulator.completedSegments : SegmentAccumulator(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

void *SegmentAccumulator.averagePowerAccumulator.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator);
  v2 = v1;
  return v1;
}

id SegmentAccumulator.__allocating_init(builder:activityType:configuration:powerAccumulator:)(void *a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR___WOSegmentAccumulator_completedSegments] = MEMORY[0x277D84F90];
  *&v10[OBJC_IVAR___WOSegmentAccumulator_builder] = a1;
  v11 = objc_allocWithZone(type metadata accessor for SegmentDistanceAccumulator());
  v12 = a1;
  v13 = [v11 init];
  *&v10[OBJC_IVAR___WOSegmentAccumulator_distanceAccumulator] = v13;
  *&v10[OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentElapsedTimeAccumulator()) init];
  *&v10[OBJC_IVAR___WOSegmentAccumulator_energyAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentEnergyAccumulator()) init];
  v14 = type metadata accessor for SegmentPaceAccumulator();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v16 = v12;
  v17 = a2;
  v18 = [v17 effectiveTypeIdentifier];
  *&v15[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v18;
  v29.receiver = v15;
  v29.super_class = v14;
  v19 = objc_msgSendSuper2(&v29, sel_initWithBuilder_, v16);

  *&v10[OBJC_IVAR___WOSegmentAccumulator_paceAccumulator] = v19;
  if (!a4)
  {
    goto LABEL_5;
  }

  v27[3] = &type metadata for WorkoutFeatures;
  v27[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v27[0]) = 1;
  v20 = a4;
  v21 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_14(v27);
  if ((v21 & 1) == 0)
  {

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  v22 = objc_allocWithZone(type metadata accessor for AveragePowerAccumulator(0));
  v23 = AveragePowerAccumulator.init(powerAccumulator:)(v20);
LABEL_6:
  *&v10[OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator] = v23;
  *&v10[OBJC_IVAR___WOSegmentAccumulator_configuration] = a3;
  v28.receiver = v10;
  v28.super_class = v5;
  v24 = a3;
  v25 = objc_msgSendSuper2(&v28, sel_init);

  return v25;
}

id SegmentAccumulator.init(builder:activityType:configuration:powerAccumulator:)(void *a1, void *a2, void *a3, void *a4)
{
  v8 = specialized SegmentAccumulator.init(builder:activityType:configuration:powerAccumulator:)(a1, a2, a3, a4);

  return v8;
}

Swift::Void __swiftcall SegmentAccumulator.endCurrentSegment(currentElapsedTime:)(Swift::Double currentElapsedTime)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v58[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v2[OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator];
  *&v9[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] = currentElapsedTime;
  v10 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  if (currentElapsedTime - *&v9[v10] > 0.0)
  {
    v11 = currentElapsedTime - *&v9[v10];
  }

  else
  {
    v11 = 0.0;
  }

  v12 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  *&v9[v12] = v11;
  v13 = [v9 updateHandler];
  if (v13)
  {
    v14 = v13;
    (*(v13 + 2))();
    _Block_release(v14);
  }

  v15 = [objc_allocWithZone(NLSessionActivitySegmentMarker) init];
  [v15 setSegmentIndex_];
  [v15 setDuration_];
  v16 = *&v2[OBJC_IVAR___WOSegmentAccumulator_distanceAccumulator];
  v17 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
  swift_beginAccess();
  v18 = *(v16 + v17);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 meterUnit];
  [v20 doubleValueForUnit_];
  v23 = v22;

  v24 = *&v2[OBJC_IVAR___WOSegmentAccumulator_paceAccumulator];
  v25 = *(v24 + OBJC_IVAR___WOSegmentPaceAccumulator_duration);
  if (v25 - *(v24 + OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration) < 10.0)
  {
    v26 = 0.0;
    if (v25 > 0.0 && *(v24 + OBJC_IVAR___WOSegmentPaceAccumulator_distance) > 0.0)
    {
      v26 = MEMORY[0x20F2E8430]();
    }

    [v15 duration];
    v23 = v26 * v27;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v59);

  if (LOBYTE(v59[0]) == 1 && v23 > 0.0)
  {
    v28 = fmod(v23, 100.0);
    if (v28 < 5.0 || v28 > 95.0)
    {
      v23 = round(v23 / 100.0) * 100.0;
    }
  }

  v29 = [v19 meterUnit];
  v30 = objc_opt_self();
  v31 = [v30 quantityWithUnit:v29 doubleValue:v23];

  [v15 setDistance_];
  v32 = *&v2[OBJC_IVAR___WOSegmentAccumulator_energyAccumulator];
  v33 = OBJC_IVAR___WOSegmentEnergyAccumulator_activeEnergyBurned;
  swift_beginAccess();
  [v15 setActiveEnergyBurn_];
  v34 = OBJC_IVAR___WOSegmentEnergyAccumulator_totalEnergyBurned;
  swift_beginAccess();
  [v15 setTotalEnergyBurn_];
  v35 = *&v2[OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator];
  if (v35)
  {
    v36 = [v19 wattUnit];
    v37 = *(v35 + OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator);
    v38 = *(v37 + 24);
    if (v38 < 1)
    {
      v39 = 0.0;
    }

    else
    {
      v39 = *(v37 + 16) / v38;
    }

    v40 = [v30 quantityWithUnit:v36 doubleValue:v39];
  }

  else
  {
    v40 = 0;
  }

  [v15 setAveragePower_];

  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v15 setSegmentEndDate_];

  v42 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v43 = v15;
  MEMORY[0x20F2E6F30]();
  if (*((*&v2[v42] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v42] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static WOLog.app);
  v45 = v43;
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v58[0] = v49;
    *v48 = 136315138;
    v50 = [v45 metadataFromSegmentMarker];
    if (v50)
    {
      v51 = v50;
      v52 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v52 = 0;
    }

    v57 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGSgMd, &_sSDySSypGSgMR);
    v53 = Optional.description.getter();
    v55 = v54;

    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v58);

    *(v48 + 4) = v56;
    _os_log_impl(&dword_20AEA4000, v46, v47, "Ended segment=%s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_14(v49);
    MEMORY[0x20F2E9420](v49, -1, -1);
    MEMORY[0x20F2E9420](v48, -1, -1);
  }

  SegmentAccumulator.assignSegmentStartValues()();
}

Swift::Void __swiftcall SegmentAccumulator.recoverSegmentMarkers(from:)(Swift::OpaquePointer from)
{
  v60 = type metadata accessor for DateInterval();
  v56 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v2);
  v59 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v58 = v55 - v6;
  if (one-time initialization token for app != -1)
  {
LABEL_72:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WOLog.app);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20AEA4000, v8, v9, "Recovering segment marker events", v10, 2u);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  v63[0] = MEMORY[0x277D84F90];
  if (from._rawValue >> 62)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = 0;
    do
    {
      if ((from._rawValue & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F2E7A20](v12, from._rawValue);
      }

      else
      {
        if (v12 >= *((from._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v13 = *(from._rawValue + v12 + 4);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if ([v13 type] == 4)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v12;
    }

    while (v15 != v11);
    v16 = v63[0];
    v64 = MEMORY[0x277D84F90];
    if ((v63[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
    v64 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
    {
LABEL_20:
      if ((v16 & 0x4000000000000000) == 0)
      {
        from._rawValue = *(v16 + 16);
        goto LABEL_22;
      }
    }
  }

  from._rawValue = __CocoaSet.count.getter();
LABEL_22:
  v17 = MEMORY[0x277D84F90];
  if (from._rawValue)
  {
    v18 = 0;
    v61 = *MEMORY[0x277D0A710];
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x20F2E7A20](v18, v16);
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_71;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        goto LABEL_70;
      }

      v22 = [v19 metadata];
      if (!v22)
      {
        goto LABEL_36;
      }

      v23 = v22;
      v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (!*(v24 + 16))
      {
        break;
      }

      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
      v29 = v28;

      if ((v29 & 1) == 0)
      {
        goto LABEL_35;
      }

      outlined init with copy of Any(*(v24 + 56) + 32 * v27, v63);

      _sSo8NSNumberCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_36;
      }

      v30 = v62;
      v31 = [v62 integerValue];

      if (v31 != 1)
      {
        goto LABEL_36;
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_37:
      ++v18;
      if (v21 == from._rawValue)
      {
        v32 = v64;
        v17 = MEMORY[0x277D84F90];
        goto LABEL_41;
      }
    }

LABEL_35:

LABEL_36:

    goto LABEL_37;
  }

  v32 = MEMORY[0x277D84F90];
LABEL_41:

  v63[0] = v17;
  if (v32 < 0 || (v32 & 0x4000000000000000) != 0)
  {
    v61 = __CocoaSet.count.getter();
  }

  else
  {
    v61 = *(v32 + 16);
  }

  from._rawValue = 0;
  v57 = v32 & 0xC000000000000001;
  v33 = (v56 + 8);
  v56 = MEMORY[0x277D84F90];
  while (v61 != from._rawValue)
  {
    if (v57)
    {
      v37 = MEMORY[0x20F2E7A20](from._rawValue, v32);
    }

    else
    {
      if (from._rawValue >= *(v32 + 16))
      {
        goto LABEL_67;
      }

      v37 = *(v32 + 8 * from._rawValue + 32);
    }

    v38 = v37;
    v39 = from._rawValue + 1;
    if (__OFADD__(from._rawValue, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v40 = [v37 metadata];
    if (v40)
    {
      v41 = v40;
      v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v42 = 0;
    }

    v43 = [v38 dateInterval];
    v44 = v59;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = v58;
    DateInterval.end.getter();
    v46 = v45;
    (*v33)(v44, v60);
    v47 = type metadata accessor for Date();
    v48 = *(v47 - 8);
    (*(v48 + 56))(v46, 0, 1, v47);
    if (v42)
    {
      v49.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v49.super.isa = 0;
    }

    if ((*(v48 + 48))(v46, 1, v47) == 1)
    {
      v35.super.isa = 0;
    }

    else
    {
      v34 = v46;
      v35.super.isa = Date._bridgeToObjectiveC()().super.isa;
      (*(v48 + 8))(v34, v47);
    }

    v36 = [objc_opt_self() markerFromMetadata:v49.super.isa segmentEndDate:v35.super.isa];

    ++from._rawValue;
    if (v36)
    {
      MEMORY[0x20F2E6F30]();
      if (*((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v56 = v63[0];
      from._rawValue = v39;
    }
  }

  v63[0] = specialized Array._copyToContiguousArray()(v50);
  v51 = v55[1];
  specialized MutableCollection<>.sort(by:)(v63);
  if (v51)
  {

    __break(1u);
  }

  else
  {

    v52 = v63[0];
    v53 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
    v54 = v55[2];
    swift_beginAccess();
    *(v54 + v53) = v52;

    SegmentAccumulator.assignSegmentStartValues()();
  }
}

id SegmentAccumulator.assignSegmentStartValues()()
{
  v6 = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v123 = &v116 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v120 = &v116 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v121 = &v116 - v19;
  v122 = *&v0[OBJC_IVAR___WOSegmentAccumulator_distanceAccumulator];
  v20 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v126 = v20;
  v21 = *(v6 + v20);
  v119 = v11;
  if (v21 >> 62)
  {
    goto LABEL_112;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v23 = MEMORY[0x277D84F90];
    v125 = v6;
    if (i)
    {
      break;
    }

LABEL_16:
    v32 = *(v23 + 16);
    if (v32)
    {
      if (v32 > 3)
      {
        v33 = v32 & 0x7FFFFFFFFFFFFFFCLL;
        v35 = (v23 + 48);
        v34 = 0.0;
        v36 = v32 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v34 = v34 + *(v35 - 2) + *(v35 - 1) + *v35 + v35[1];
          v35 += 4;
          v36 -= 4;
        }

        while (v36);
        if (v32 == v33)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0.0;
      }

      v37 = v32 - v33;
      v38 = (v23 + 8 * v33 + 32);
      do
      {
        v39 = *v38++;
        v34 = v34 + v39;
        --v37;
      }

      while (v37);
    }

    else
    {
      v34 = 0.0;
    }

LABEL_25:

    v11 = OBJC_IVAR___WOSegmentDistanceAccumulator_segmentStartDistance;
    v40 = v122;
    swift_beginAccess();
    v118 = v11;
    *&v11[v40] = v34;
    SegmentDistanceAccumulator._updateInternalQuantity()();
    v124 = *(v6 + OBJC_IVAR___WOSegmentAccumulator_energyAccumulator);
    v21 = *(v6 + v126);
    if (v21 >> 62)
    {
      i = __CocoaSet.count.getter();
    }

    else
    {
      i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = MEMORY[0x277D84F90];
    if (i)
    {
      v133 = MEMORY[0x277D84F90];
      v6 = (i & ~(i >> 63));

      v24 = &v133;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      if (i < 0)
      {
        goto LABEL_137;
      }

      v3 = 0;
      v41 = v133;
      v2 = v21 & 0xC000000000000001;
      v127 = v21 & 0xFFFFFFFFFFFFFF8;
      v1 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      while (1)
      {
        v11 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v2)
        {
          v42 = MEMORY[0x20F2E7A20](v3, v21);
        }

        else
        {
          if (v3 >= *(v127 + 16))
          {
            goto LABEL_110;
          }

          v42 = *(v21 + 8 * v3 + 32);
        }

        v43 = v42;
        result = [v42 activeEnergyBurn];
        if (!result)
        {
          goto LABEL_146;
        }

        v44 = result;
        v5 = [objc_opt_self() kilocalorieUnit];
        [v44 doubleValueForUnit_];
        v46 = v45;

        v133 = v41;
        v4 = *(v41 + 16);
        v47 = *(v41 + 24);
        v6 = (v4 + 1);
        if (v4 >= v47 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v4 + 1, 1);
          v41 = v133;
        }

        *(v41 + 16) = v6;
        *(v41 + 8 * v4 + 32) = v46;
        ++v3;
        if (v11 == i)
        {

          v6 = v125;
          goto LABEL_40;
        }
      }

LABEL_107:
      __break(1u);
      goto LABEL_108;
    }

LABEL_40:
    v48 = *(v41 + 16);
    if (!v48)
    {
      v50 = 0.0;
      goto LABEL_49;
    }

    if (v48 <= 3)
    {
      v49 = 0;
      v50 = 0.0;
LABEL_47:
      v53 = v48 - v49;
      v54 = (v41 + 8 * v49 + 32);
      do
      {
        v55 = *v54++;
        v50 = v50 + v55;
        --v53;
      }

      while (v53);
      goto LABEL_49;
    }

    v49 = v48 & 0x7FFFFFFFFFFFFFFCLL;
    v51 = (v41 + 48);
    v50 = 0.0;
    v52 = v48 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v50 = v50 + *(v51 - 2) + *(v51 - 1) + *v51 + v51[1];
      v51 += 4;
      v52 -= 4;
    }

    while (v52);
    if (v48 != v49)
    {
      goto LABEL_47;
    }

LABEL_49:

    v56 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartActiveEnergyBurned;
    v11 = v124;
    swift_beginAccess();
    *&v11[v56] = v50;
    v21 = *(v6 + v126);
    v117 = v56;
    if (v21 >> 62)
    {
      i = __CocoaSet.count.getter();
    }

    else
    {
      i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = MEMORY[0x277D84F90];
    if (!i)
    {
LABEL_64:
      v64 = *(v57 + 16);
      if (v64)
      {
        if (v64 <= 3)
        {
          v65 = 0;
          v66 = 0.0;
          goto LABEL_71;
        }

        v65 = v64 & 0x7FFFFFFFFFFFFFFCLL;
        v67 = (v57 + 48);
        v66 = 0.0;
        v68 = v64 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v66 = v66 + *(v67 - 2) + *(v67 - 1) + *v67 + v67[1];
          v67 += 4;
          v68 -= 4;
        }

        while (v68);
        if (v64 != v65)
        {
LABEL_71:
          v69 = v64 - v65;
          v70 = (v57 + 8 * v65 + 32);
          do
          {
            v71 = *v70++;
            v66 = v66 + v71;
            --v69;
          }

          while (v69);
        }
      }

      else
      {
        v66 = 0.0;
      }

      v5 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartTotalEnergyBurned;
      v11 = v124;
      swift_beginAccess();
      *&v5[v11] = v66;
      v3 = *(v6 + OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator);
      v21 = *(v6 + v126);
      if (v21 >> 62)
      {
        i = __CocoaSet.count.getter();
      }

      else
      {
        i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v72 = MEMORY[0x277D84F90];
      if (i)
      {
        v131 = MEMORY[0x277D84F90];
        v6 = (i & ~(i >> 63));

        v24 = &v131;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
        if ((i & 0x8000000000000000) == 0)
        {
          v4 = 0;
          v72 = v131;
          do
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v73 = MEMORY[0x20F2E7A20](v4, v21);
            }

            else
            {
              v73 = *(v21 + 8 * v4 + 32);
            }

            v74 = v73;
            [v73 duration];
            v76 = v75;

            v131 = v72;
            v2 = *(v72 + 16);
            v77 = *(v72 + 24);
            if (v2 >= v77 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v2 + 1, 1);
              v72 = v131;
            }

            ++v4;
            *(v72 + 16) = v2 + 1;
            *(v72 + 8 * v2 + 32) = v76;
          }

          while (i != v4);

          v6 = v125;
          goto LABEL_85;
        }

LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

LABEL_85:
      v78 = *(v72 + 16);
      v79 = 0.0;
      v80 = 0.0;
      i = v123;
      if (v78)
      {
        if (v78 <= 3)
        {
          v81 = 0;
          goto LABEL_91;
        }

        v81 = v78 & 0x7FFFFFFFFFFFFFFCLL;
        v82 = (v72 + 48);
        v83 = v78 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v80 = v80 + *(v82 - 2) + *(v82 - 1) + *v82 + v82[1];
          v82 += 4;
          v83 -= 4;
        }

        while (v83);
        if (v78 != v81)
        {
LABEL_91:
          v84 = v78 - v81;
          v85 = (v72 + 8 * v81 + 32);
          do
          {
            v86 = *v85++;
            v80 = v80 + v86;
            --v84;
          }

          while (v84);
        }
      }

      v1 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
      swift_beginAccess();
      *(v1 + v3) = v80;
      if (*&v3[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - v80 > 0.0)
      {
        v79 = *&v3[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] - v80;
      }

      v87 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
      swift_beginAccess();
      *&v3[v87] = v79;
      v88 = [v3 updateHandler];
      if (v88)
      {
        v89 = v88;
        (*(v88 + 2))();
        _Block_release(v89);
      }

      v90 = *(v6 + OBJC_IVAR___WOSegmentAccumulator_paceAccumulator);
      *&v90[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
      *&v90[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
      *&v90[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
      v91 = [v90 updateHandler];
      if (v91)
      {
        v92 = v91;
        (*(v91 + 2))();
        _Block_release(v92);
      }

      v24 = *(v6 + v126);
      v11 = v120;
      if (!(v24 >> 62))
      {
        v93 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v93)
        {
          goto LABEL_101;
        }

LABEL_117:
        v94 = 0;
LABEL_118:
        v127 = v1;
        v95 = [v94 segmentEndDate];

        if (v95)
        {
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v96 = 0;
        }

        else
        {
          v96 = 1;
        }

        v97 = v121;
        v4 = type metadata accessor for Date();
        v125 = *(v4 - 8);
        v125[7](v11, v96, 1, v4);
        outlined init with take of Date?(v11, v97);
        if (*(v6 + OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator))
        {
          AveragePowerAccumulator.reset(with:)(v97);
        }

        v11 = v5;
        if (one-time initialization token for app != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        __swift_project_value_buffer(v98, static WOLog.app);
        outlined init with copy of Date?(v97, i);
        v1 = v6;
        v2 = Logger.logObject.getter();
        LOBYTE(v5) = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v2, v5))
        {
          i = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v130 = v21;
          *i = 134219266;
          v99 = *(v6 + v126);
          if (!(v99 >> 62))
          {
            v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_128;
          }

LABEL_144:
          v100 = __CocoaSet.count.getter();
LABEL_128:
          v101 = v119;
          *(i + 4) = v100;

          *(i + 12) = 2048;
          *(i + 14) = *&v118[v122];
          *(i + 22) = 2048;
          v102 = v124;
          *(i + 24) = *&v124[v117];
          *(i + 32) = 2048;
          *(i + 34) = *&v11[v102];
          *(i + 42) = 2048;
          *(i + 44) = *&v3[v127];
          *(i + 52) = 2080;
          outlined init with copy of Date?(v123, v101);
          v103 = v125;
          if ((v125[6])(v101, 1, v4) == 1)
          {
            outlined destroy of Date?(v101);
            v104 = 0;
            v105 = 0;
          }

          else
          {
            if (one-time initialization token for logDateFormatter != -1)
            {
              swift_once();
            }

            v107 = static WOLog.logDateFormatter;
            v108 = v101;
            isa = Date._bridgeToObjectiveC()().super.isa;
            v110 = [v107 stringFromDate_];

            v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v105 = v111;

            (v103[1])(v108, v4);
          }

          v128 = v104;
          v129 = v105;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
          v112 = Optional.description.getter();
          v114 = v113;
          outlined destroy of Date?(v123);

          v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &v130);

          *(i + 54) = v115;
          _os_log_impl(&dword_20AEA4000, v2, v5, "SegmentAccumulator: (new segment) completedSegments: %ld, segmentStartDistance %f, segmentStartActiveEnergyBurned: %f, segmentStartTotalEnergyBurned: %f, segmentStartDuration: %f, newSegmentStartDate: %s", i, 0x3Eu);
          __swift_destroy_boxed_opaque_existential_1Tm_14(v21);
          MEMORY[0x20F2E9420](v21, -1, -1);
          MEMORY[0x20F2E9420](i, -1, -1);

          v106 = v121;
        }

        else
        {

          outlined destroy of Date?(i);
          v106 = v97;
        }

        return outlined destroy of Date?(v106);
      }

      v93 = __CocoaSet.count.getter();
      if (!v93)
      {
        goto LABEL_117;
      }

LABEL_101:
      v21 = v93 - 1;
      if (__OFSUB__(v93, 1))
      {
        goto LABEL_140;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
LABEL_141:

        v94 = MEMORY[0x20F2E7A20](v21, v24);

        goto LABEL_118;
      }

      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v21 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v94 = *(v24 + 8 * v21 + 32);
        goto LABEL_118;
      }

      __break(1u);
      goto LABEL_144;
    }

    v132 = MEMORY[0x277D84F90];
    v6 = (i & ~(i >> 63));

    v24 = &v132;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    if (i < 0)
    {
      goto LABEL_138;
    }

    v3 = 0;
    v57 = v132;
    v2 = v21 & 0xC000000000000001;
    v127 = v21 & 0xFFFFFFFFFFFFFF8;
    v1 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
    while (1)
    {
      v11 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v2)
      {
        v58 = MEMORY[0x20F2E7A20](v3, v21);
      }

      else
      {
        if (v3 >= *(v127 + 16))
        {
          goto LABEL_111;
        }

        v58 = *(v21 + 8 * v3 + 32);
      }

      v59 = v58;
      result = [v58 totalEnergyBurn];
      if (!result)
      {
        goto LABEL_147;
      }

      v60 = result;
      v5 = [objc_opt_self() kilocalorieUnit];
      [v60 doubleValueForUnit_];
      v62 = v61;

      v132 = v57;
      v4 = *(v57 + 16);
      v63 = *(v57 + 24);
      v6 = (v4 + 1);
      if (v4 >= v63 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v4 + 1, 1);
        v57 = v132;
      }

      *(v57 + 16) = v6;
      *(v57 + 8 * v4 + 32) = v62;
      ++v3;
      if (v11 == i)
      {

        v6 = v125;
        goto LABEL_64;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    ;
  }

  v134 = MEMORY[0x277D84F90];
  v6 = (i & ~(i >> 63));

  v24 = &v134;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  if (i < 0)
  {
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v3 = 0;
  v23 = v134;
  v1 = (v21 & 0xC000000000000001);
  v127 = v21 & 0xFFFFFFFFFFFFFF8;
  v2 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
  while (1)
  {
    v11 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_107;
    }

    if (v1)
    {
      v25 = MEMORY[0x20F2E7A20](v3, v21);
    }

    else
    {
      if (v3 >= *(v127 + 16))
      {
        goto LABEL_109;
      }

      v25 = *(v21 + 8 * v3 + 32);
    }

    v26 = v25;
    result = [v25 distance];
    if (!result)
    {
      break;
    }

    v28 = result;
    v5 = [objc_opt_self() meterUnit];
    [v28 doubleValueForUnit_];
    v30 = v29;

    v134 = v23;
    v4 = *(v23 + 16);
    v31 = *(v23 + 24);
    v6 = (v4 + 1);
    if (v4 >= v31 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v4 + 1, 1);
      v23 = v134;
    }

    *(v23 + 16) = v6;
    *(v23 + 8 * v4 + 32) = v30;
    ++v3;
    if (v11 == i)
    {

      v6 = v125;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

id SegmentAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SegmentAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double @objc SegmentAccumulator.segmentActiveEnergyBurned.getter(char *a1, uint64_t a2, void *a3, uint64_t *a4, SEL *a5)
{
  v7 = *&a1[*a3];
  v8 = *a4;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = objc_opt_self();
  v11 = a1;
  v12 = v9;
  v13 = [v10 *a5];
  [v12 doubleValueForUnit_];
  v15 = v14;

  return v15;
}

double SegmentAccumulator.segmentActiveEnergyBurned.getter(void *a1, uint64_t *a2, SEL *a3)
{
  v5 = *(v3 + *a1);
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 *a3];
  [v9 doubleValueForUnit_];
  v12 = v11;

  return v12;
}

double SegmentAccumulator.segmentDuration.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator);
  v2 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  return *(v1 + v2);
}

double SegmentAccumulator.segmentPace.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSegmentAccumulator_paceAccumulator);
  if (*(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_duration) > 0.0 && *(v1 + OBJC_IVAR___WOSegmentPaceAccumulator_distance) > 0.0)
  {
    JUMPOUT(0x20F2E8430);
  }

  return 0.0;
}

uint64_t SegmentAccumulator.segmentIndex.getter()
{
  v1 = OBJC_IVAR___WOSegmentAccumulator_completedSegments;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 1;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    return 1;
  }

LABEL_3:
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_13;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v4 = *(v2 + v4 + 4);
  while (1)
  {
    v2 = [v4 segmentIndex];

    result = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      break;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:

    v4 = MEMORY[0x20F2E7A20](v4, v2);
  }

  return result;
}

void SegmentAccumulator.segmentAveragePower.getter()
{
  v1 = *(v0 + OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v2 wattUnit];
    v4 = *(v1 + OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator);
    v5 = *(v4 + 24);
    if (v5 < 1)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = *(v4 + 16) / v5;
    }

    v7 = [objc_opt_self() quantityWithUnit:v3 doubleValue:v6];

    v8 = [v2 wattUnit];
    [v7 doubleValueForUnit_];
  }
}

uint64_t SegmentAccumulator.logString.getter()
{
  _StringGuts.grow(_:)(125);
  MEMORY[0x20F2E6D80](0x3A746E656D676573, 0xE900000000000020);
  [v0 segmentIndex];
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](0x203A656361702820, 0xE800000000000000);
  [v0 segmentPace];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B465B00);
  [v0 segmentDuration];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x6E6174736964202CLL, 0xEC000000203A6563);
  [v0 segmentDistance];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000016, 0x800000020B465B20);
  [v0 segmentActiveEnergyBurned];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B465B40);
  [v0 segmentTotalEnergyBurned];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B465B60);
  [v0 segmentAveragePower];
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x29737474617720, 0xE700000000000000);
  return 0;
}

uint64_t protocol witness for CustomLogStringConvertible.logString.getter in conformance SegmentAccumulator()
{
  v1 = [*v0 logString];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void SegmentAccumulator.dataProvider(_:didUpdate:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v88 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v88 - v17;
  if (a2 <= 2)
  {
    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return;
      }

LABEL_7:
      [objc_msgSend(a1 energyBurnProvider)];
      v20 = v19;
      swift_unknownObjectRelease();
      [objc_msgSend(a1 energyBurnProvider)];
      v22 = v21;
      swift_unknownObjectRelease();
      SegmentEnergyAccumulator.updateEnergy(workoutActiveEnergy:workoutBasalEnergy:)(v20, v22);
      return;
    }

    v23 = *&v3[OBJC_IVAR___WOSegmentAccumulator_distanceAccumulator];
    [objc_msgSend(a1 distanceProvider)];
    v25 = v24;
    swift_unknownObjectRelease();
    *(v23 + OBJC_IVAR___WOSegmentDistanceAccumulator_lastReceivedDistance) = v25;
    SegmentDistanceAccumulator._updateInternalQuantity()();
    v88 = *&v3[OBJC_IVAR___WOSegmentAccumulator_builder];
    v26 = [objc_msgSend(a1 distanceProvider)];
    swift_unknownObjectRelease();
    if (v26)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = *(v11 + 32);
      v27(v9, v15, v10);
      (*(v11 + 56))(v9, 0, 1, v10);
      v27(v18, v9, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
      Date.init()();
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        outlined destroy of Date?(v9);
      }
    }

    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v18, v10);
    [v88 elapsedTimeAtDate_];
    v67 = v66;

    v68 = *&v3[OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator];
    v69 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
    swift_beginAccess();
    if (v67 - *(v68 + v69) > 0.0)
    {
      v70 = v67 - *(v68 + v69);
    }

    else
    {
      v70 = 0.0;
    }

    v71 = OBJC_IVAR___WOSegmentDistanceAccumulator_distance;
    swift_beginAccess();
    v72 = *(v23 + v71);
    v73 = objc_opt_self();
    v74 = v72;
    v75 = [v73 meterUnit];
    [v74 doubleValueForUnit_];
    v77 = v76;

    SegmentPaceAccumulator.updateDistance(_:duration:)(v77, v70);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static WOLog.app);
    swift_unknownObjectRetain();
    v79 = v3;
    v50 = Logger.logObject.getter();
    v80 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v50, v80))
    {
LABEL_35:

      return;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v89 = v53;
    *v52 = 134218498;
    [objc_msgSend(a1 distanceProvider)];
    v82 = v81;
    swift_unknownObjectRelease();
    *(v52 + 4) = v82;
    *(v52 + 12) = 2048;
    *(v52 + 14) = v70;
    *(v52 + 22) = 2080;
    v83 = [v79 logString];
    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, &v89);

    *(v52 + 24) = v87;
    v60 = "SegmentAccumulator: updated distance in paceAccumulator with distance: %f duration: %f, %s";
    v61 = v80;
    v62 = v50;
    v63 = v52;
    v64 = 32;
LABEL_34:
    _os_log_impl(&dword_20AEA4000, v62, v61, v60, v63, v64);
    __swift_destroy_boxed_opaque_existential_1Tm_14(v53);
    MEMORY[0x20F2E9420](v53, -1, -1);
    MEMORY[0x20F2E9420](v52, -1, -1);
    goto LABEL_35;
  }

  if (a2 != 3)
  {
    if (a2 != 7)
    {
      return;
    }

    goto LABEL_7;
  }

  v28 = *&v3[OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator];
  [objc_msgSend(a1 elapsedTimeProvider)];
  v30 = v29;
  swift_unknownObjectRelease();
  *&v28[OBJC_IVAR___WOSegmentElapsedTimeAccumulator_lastReceivedDuration] = v30;
  v31 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_segmentStartDuration;
  swift_beginAccess();
  if (v30 - *&v28[v31] > 0.0)
  {
    v32 = v30 - *&v28[v31];
  }

  else
  {
    v32 = 0.0;
  }

  v33 = OBJC_IVAR___WOSegmentElapsedTimeAccumulator_duration;
  swift_beginAccess();
  *&v28[v33] = v32;
  v34 = [v28 updateHandler];
  if (v34)
  {
    v35 = v34;
    (*(v34 + 2))();
    _Block_release(v35);
  }

  if ((specialized WorkoutConfiguration.shouldEnableUltraMode(domainAccessor:)() & 1) == 0)
  {
    SegmentPaceAccumulator.updateDuration(_:)(*&v28[v33]);
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static WOLog.app);
    swift_unknownObjectRetain();
    v49 = v3;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_35;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v89 = v53;
    *v52 = 134218242;
    [a1 activityDuration];
    *(v52 + 4) = v54;
    *(v52 + 12) = 2080;
    v55 = [v49 logString];
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;

    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, &v89);

    *(v52 + 14) = v59;
    v60 = "SegmentAccumulator: updated distance in paceAccumulator with activityDuration: %f, %s";
    v61 = v51;
    v62 = v50;
    v63 = v52;
    v64 = 22;
    goto LABEL_34;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static WOLog.app);
  v37 = v3;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 134218242;
    v42 = *&v28[v33];
    v89 = v41;
    *(v40 + 4) = v42;
    *(v40 + 12) = 2080;
    v43 = [v37 logString];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v89);

    *(v40 + 14) = v47;
    _os_log_impl(&dword_20AEA4000, v38, v39, "[UltraModeDebugging] SegmentAccumulator: SKIP duration update in UltraMode with elapsedTime: %f, %s", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_14(v41);
    MEMORY[0x20F2E9420](v41, -1, -1);
    MEMORY[0x20F2E9420](v40, -1, -1);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = specialized _ArrayBuffer._consumeAndCreateNew()(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        specialized Array.remove(at:)(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 segmentIndex];
      v104 = [v14 segmentIndex];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 segmentIndex];
        v7 = [v18 segmentIndex];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
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

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        specialized Array.remove(at:)(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 segmentIndex];
    v41 = [v39 segmentIndex];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
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
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 segmentIndex];
          v35 = [v33 segmentIndex];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 segmentIndex];
          v20 = [v18 segmentIndex];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

id specialized SegmentAccumulator.init(builder:activityType:configuration:powerAccumulator:)(void *a1, void *a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR___WOSegmentAccumulator_completedSegments] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR___WOSegmentAccumulator_builder] = a1;
  v9 = objc_allocWithZone(type metadata accessor for SegmentDistanceAccumulator());
  v10 = a1;
  v11 = [v9 init];
  *&v4[OBJC_IVAR___WOSegmentAccumulator_distanceAccumulator] = v11;
  *&v4[OBJC_IVAR___WOSegmentAccumulator_elapsedTimeAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentElapsedTimeAccumulator()) init];
  *&v4[OBJC_IVAR___WOSegmentAccumulator_energyAccumulator] = [objc_allocWithZone(type metadata accessor for SegmentEnergyAccumulator()) init];
  v12 = type metadata accessor for SegmentPaceAccumulator();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR___WOSegmentPaceAccumulator_distance] = 0;
  *&v13[OBJC_IVAR___WOSegmentPaceAccumulator_duration] = 0;
  *&v13[OBJC_IVAR___WOSegmentPaceAccumulator_accumulatedDistanceDuration] = 0;
  *&v13[OBJC_IVAR___WOSegmentPaceAccumulator_paceForceCalculationTimeout] = 0x4024000000000000;
  v14 = v10;
  v15 = a2;
  v16 = [v15 effectiveTypeIdentifier];
  *&v13[OBJC_IVAR___WOSegmentPaceAccumulator_activityType] = v16;
  v27.receiver = v13;
  v27.super_class = v12;
  v17 = objc_msgSendSuper2(&v27, sel_initWithBuilder_, v14);

  *&v4[OBJC_IVAR___WOSegmentAccumulator_paceAccumulator] = v17;
  if (!a4)
  {
    goto LABEL_5;
  }

  v25[3] = &type metadata for WorkoutFeatures;
  v25[4] = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  LOBYTE(v25[0]) = 1;
  v18 = a4;
  v19 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_14(v25);
  if ((v19 & 1) == 0)
  {

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  v20 = objc_allocWithZone(type metadata accessor for AveragePowerAccumulator(0));
  v21 = AveragePowerAccumulator.init(powerAccumulator:)(v18);
LABEL_6:
  *&v4[OBJC_IVAR___WOSegmentAccumulator_averagePowerAccumulator] = v21;
  *&v4[OBJC_IVAR___WOSegmentAccumulator_configuration] = a3;
  v22 = type metadata accessor for SegmentAccumulator();
  v26.receiver = v4;
  v26.super_class = v22;
  v23 = a3;
  return objc_msgSendSuper2(&v26, sel_init);
}

id SegmentEnergyAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double SegmentEnergyAccumulator.segmentStartActiveEnergyBurned.getter()
{
  v1 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartActiveEnergyBurned;
  swift_beginAccess();
  return *(v0 + v1);
}

void SegmentEnergyAccumulator.segmentStartActiveEnergyBurned.setter(double a1)
{
  v3 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartActiveEnergyBurned;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double SegmentEnergyAccumulator.segmentStartTotalEnergyBurned.getter()
{
  v1 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartTotalEnergyBurned;
  swift_beginAccess();
  return *(v0 + v1);
}

void SegmentEnergyAccumulator.segmentStartTotalEnergyBurned.setter(double a1)
{
  v3 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartTotalEnergyBurned;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id SegmentEnergyAccumulator.activeEnergyBurned.getter()
{
  v1 = OBJC_IVAR___WOSegmentEnergyAccumulator_activeEnergyBurned;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SegmentEnergyAccumulator.activeEnergyBurned.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOSegmentEnergyAccumulator_activeEnergyBurned;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for SegmentEnergyAccumulator.activeEnergyBurned : SegmentEnergyAccumulator(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id SegmentEnergyAccumulator.totalEnergyBurned.getter()
{
  v1 = OBJC_IVAR___WOSegmentEnergyAccumulator_totalEnergyBurned;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SegmentEnergyAccumulator.totalEnergyBurned.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOSegmentEnergyAccumulator_totalEnergyBurned;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall SegmentEnergyAccumulator.updateEnergy(workoutActiveEnergy:workoutBasalEnergy:)(Swift::Double workoutActiveEnergy, Swift::Double workoutBasalEnergy)
{
  v5 = objc_opt_self();
  v6 = [v5 kilocalorieUnit];
  v7 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartActiveEnergyBurned;
  swift_beginAccess();
  v8 = workoutActiveEnergy - *&v2[v7];
  v9 = objc_opt_self();
  v10 = [v9 quantityWithUnit:v6 doubleValue:v8];

  v11 = OBJC_IVAR___WOSegmentEnergyAccumulator_activeEnergyBurned;
  swift_beginAccess();
  v12 = *&v2[v11];
  *&v2[v11] = v10;

  v13 = [v5 kilocalorieUnit];
  v14 = OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartTotalEnergyBurned;
  swift_beginAccess();
  v15 = [v9 quantityWithUnit:v13 doubleValue:workoutActiveEnergy + workoutBasalEnergy - *&v2[v14]];

  v16 = OBJC_IVAR___WOSegmentEnergyAccumulator_totalEnergyBurned;
  swift_beginAccess();
  v17 = *&v2[v16];
  *&v2[v16] = v15;

  v18 = [v2 updateHandler];
  if (v18)
  {
    v19 = v18;
    (*(v18 + 2))();
    _Block_release(v19);
  }
}

id SegmentEnergyAccumulator.init()()
{
  *&v0[OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartActiveEnergyBurned] = 0;
  *&v0[OBJC_IVAR___WOSegmentEnergyAccumulator_segmentStartTotalEnergyBurned] = 0;
  v1 = OBJC_IVAR___WOSegmentEnergyAccumulator_activeEnergyBurned;
  v2 = objc_opt_self();
  v3 = [v2 kilocalorieUnit];
  v4 = objc_opt_self();
  v5 = [v4 quantityWithUnit:v3 doubleValue:0.0];

  *&v0[v1] = v5;
  v6 = OBJC_IVAR___WOSegmentEnergyAccumulator_totalEnergyBurned;
  v7 = [v2 kilocalorieUnit];
  v8 = [v4 quantityWithUnit:v7 doubleValue:0.0];

  *&v0[v6] = v8;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SegmentEnergyAccumulator();
  return objc_msgSendSuper2(&v10, sel_init);
}

id SegmentEnergyAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentEnergyAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_getTm_6@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

void keypath_setTm_7(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

id keypath_get_5Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t static TrackAlertsBridge.lapAlertsEnabled(for:)(void *a1)
{
  v1 = specialized static TrackAlertsStore.read(for:)(a1);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

id TrackAlertsBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrackAlertsBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrackAlertsBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TrackAlertsBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TrackAlertsBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id static TrackAlertsStore.userDefaults.getter()
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static TrackAlertsStore.userDefaults;

  return v0;
}

void static TrackAlertsStore.userDefaults.setter(uint64_t a1)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TrackAlertsStore.userDefaults;
  static TrackAlertsStore.userDefaults = a1;
}

uint64_t (*static TrackAlertsStore.userDefaults.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static TrackAlertsStore.userDefaults.modify;
}

id key path getter for static TrackAlertsStore.userDefaults : TrackAlertsStore.Type@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TrackAlertsStore.userDefaults;
  *a1 = static TrackAlertsStore.userDefaults;

  return v2;
}

void key path setter for static TrackAlertsStore.userDefaults : TrackAlertsStore.Type(id *a1)
{
  v1 = one-time initialization token for userDefaults;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static TrackAlertsStore.userDefaults;
  static TrackAlertsStore.userDefaults = v2;
}

void static TrackAlertsStore.save(trackAlerts:activityType:)(uint64_t a1, void *a2)
{
  v57[4] = *MEMORY[0x277D85DE8];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v57[0] = a1;
  type metadata accessor for TrackAlerts();
  lazy protocol witness table accessor for type TrackAlerts and conformance TrackAlerts(&lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts, &protocol conformance descriptor for TrackAlerts);
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v19 = v18;

  v20 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v56[0] = 0;
  v22 = [v20 propertyListWithData:isa options:0 format:0 error:v56];

  v23 = *&v56[0];
  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (one-time initialization token for userDefaults != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = static TrackAlertsStore.userDefaults;
    v25 = MEMORY[0x20F2E6C00](0x656C416B63617274, 0xEB00000000737472);
    v26 = [v24 dictionaryForKey_];

    if (v26)
    {
      v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v30 = [a2 uniqueIdentifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    outlined init with copy of Any(v57, v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v56, v31, v33, isUniquelyReferenced_nonNull_native);

    v35 = static TrackAlertsStore.userDefaults;
    v36 = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = MEMORY[0x20F2E6C00](0x656C416B63617274, 0xEB00000000737472);
    [v35 setObject:v36 forKey:{v37, v54}];

    v38 = static TrackAlertsStore.userDefaults;
    v39 = objc_opt_self();
    v40 = v38;
    v41 = [v39 standardUserDefaults];
    type metadata accessor for NSUserDefaults();
    LOBYTE(v38) = static NSObject.== infix(_:_:)();

    if (v38)
    {
      v42 = MEMORY[0x20F2E6C00](0x656C416B63617274, 0xEB00000000737472);
      [v39 fu:v42 backupStandardUserDefaultsKey:?];
    }

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static WOLog.alerts);
    v44 = a2;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55 = v49;
      *&v56[0] = 0;
      *v47 = 138412546;
      *(v47 + 4) = v44;
      *v48 = v44;
      *(v47 + 12) = 2080;
      *(&v56[0] + 1) = 0xE000000000000000;
      v50 = v44;
      _StringGuts.grow(_:)(35);

      swift_beginAccess();
      if (*(a1 + 16))
      {
        v51 = 1702195828;
      }

      else
      {
        v51 = 0x65736C6166;
      }

      if (*(a1 + 16))
      {
        v52 = 0xE400000000000000;
      }

      else
      {
        v52 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v51, v52);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000020B464530, &v55);

      *(v47 + 14) = v53;
      _os_log_impl(&dword_20AEA4000, v45, v46, "Saved TrackAlerts to user defaults for activityType=%@ trackAlerts=%s", v47, 0x16u);
      outlined destroy of NSObject?(v48);
      MEMORY[0x20F2E9420](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x20F2E9420](v49, -1, -1);
      MEMORY[0x20F2E9420](v47, -1, -1);
    }

    outlined consume of Data._Representation(v17, v19);

    __swift_destroy_boxed_opaque_existential_0(v57);
  }

  else
  {
    v28 = v23;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v17, v19);
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.alerts);
    v5 = a2;
    v6 = v29;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v57[0] = v11;
      *v9 = 138412546;
      *(v9 + 4) = v5;
      *v10 = v5;
      *(v9 + 12) = 2080;
      *&v56[0] = v29;
      v12 = v5;
      v13 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v57);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_20AEA4000, v7, v8, "Failed to encode and save TrackAlerts for activityType=%@. error=%s", v9, 0x16u);
      outlined destroy of NSObject?(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t specialized static TrackAlertsStore.read(for:)(void *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static TrackAlertsStore.userDefaults;
  v3 = MEMORY[0x20F2E6C00](0x656C416B63617274, 0xEB00000000737472);
  v4 = [v2 dictionaryForKey_];

  if (!v4)
  {
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.alerts);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_18;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20AEA4000, v21, v22, "TrackAlerts for all activity types not present in user defaults.", v23, 2u);
    v24 = v23;
    goto LABEL_17;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 uniqueIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_13;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_13:

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.alerts);
    v26 = a1;
    v21 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v21, v27))
    {
      goto LABEL_18;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v26;
    *v29 = v26;
    v30 = v26;
    _os_log_impl(&dword_20AEA4000, v21, v27, "TrackAlerts for activity type not present in user defaults. activityType=%@", v28, 0xCu);
    outlined destroy of NSObject?(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
    v24 = v28;
LABEL_17:
    MEMORY[0x20F2E9420](v24, -1, -1);
LABEL_18:

    type metadata accessor for TrackAlerts();
    result = swift_allocObject();
    *(result + 16) = 0;
    return result;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v10, v61);

  outlined init with take of Any(v61, &v62);
  v13 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(&v62, v63);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v61[0] = 0;
  v15 = [v13 dataWithPropertyList:v14 format:100 options:0 error:v61];
  swift_unknownObjectRelease();
  v16 = *&v61[0];
  if (v15)
  {
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    type metadata accessor for TrackAlerts();
    lazy protocol witness table accessor for type TrackAlerts and conformance TrackAlerts(&lazy protocol witness table cache variable for type TrackAlerts and conformance TrackAlerts, &protocol conformance descriptor for TrackAlerts);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v59 = *&v61[0];
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static WOLog.alerts);

    v49 = a1;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = v58;
      *&v61[0] = 0;
      *v52 = 136315394;
      *(&v61[0] + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(35);

      swift_beginAccess();
      if (*(v59 + 16))
      {
        v54 = 1702195828;
      }

      else
      {
        v54 = 0x65736C6166;
      }

      if (*(v59 + 16))
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v54, v55);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000020B464530, &v60);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v49;
      *v53 = v49;
      v57 = v49;
      _os_log_impl(&dword_20AEA4000, v50, v51, "Successfully read user trackAlerts=%s for activityType=%@", v52, 0x16u);
      outlined destroy of NSObject?(v53);
      MEMORY[0x20F2E9420](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x20F2E9420](v58, -1, -1);
      MEMORY[0x20F2E9420](v52, -1, -1);
    }

    outlined consume of Data._Representation(v17, v19);

    __swift_destroy_boxed_opaque_existential_0(&v62);
    return v59;
  }

  else
  {
    v32 = v16;
    v33 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static WOLog.alerts);
    v35 = a1;
    v36 = v33;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v61[0] = v41;
      *v39 = 138412546;
      *(v39 + 4) = v35;
      *v40 = v35;
      *(v39 + 12) = 2080;
      v42 = v35;
      v43 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v61);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_20AEA4000, v37, v38, "Failed to decode TrackAlerts for activityType=%@. error=%s", v39, 0x16u);
      outlined destroy of NSObject?(v40);
      MEMORY[0x20F2E9420](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    else
    {
    }

    type metadata accessor for TrackAlerts();
    v47 = swift_allocObject();
    *(v47 + 16) = 0;
    __swift_destroy_boxed_opaque_existential_0(&v62);
    return v47;
  }
}

uint64_t getEnumTagSinglePayload for TrackAlertsStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TrackAlertsStore(_WORD *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type TrackAlerts and conformance TrackAlerts(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TrackAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *MirroredBlob.init(contentType:data:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t MirroredBlob.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob();
  return static Message.with(_:)();
}

uint64_t MirroredBlob.data.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t MirroredBlob.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v8 = *a1;
  v9 = v4;
  MirroredBlobContentType.init(protobuf:)(&v8, &v10);
  *a2 = v10;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  outlined copy of Data._Representation(v5, v6);
  result = outlined destroy of Apple_Workout_Core_MirroredBlob(a1);
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t closure #1 in MirroredBlob.protobuf.getter(uint64_t a1, unsigned __int8 a2, uint64_t a3, unint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = 1;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  outlined copy of Data._Representation(a3, a4);
  result = outlined consume of Data._Representation(v7, v8);
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob)
  {
    type metadata accessor for Apple_Workout_Core_MirroredBlob(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredBlob(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredBlob.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  _StringGuts.grow(_:)(31);

  v4 = 0xE800000000000000;
  strcpy(v13, "contentType: ");
  HIWORD(v13[1]) = -4864;
  v5 = 0x6675626F746F7270;
  v6 = 0xEB00000000656C62;
  v7 = 0x61646F4365636172;
  if (v1 != 2)
  {
    v7 = 0x6C61767265746E69;
    v6 = 0xEF656C6261646F43;
  }

  if (v1)
  {
    v5 = 0x61646579656B736ELL;
    v4 = 0xEF72657669686372;
  }

  if (v1 <= 1)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (v1 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  MEMORY[0x20F2E6D80](v8, v9);

  result = MEMORY[0x20F2E6D80](0x203A61746164202CLL, 0xE800000000000000);
  v11 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v11 != 2 || !__OFSUB__(*(v2 + 24), *(v2 + 16)))
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  else if (!v11)
  {
    goto LABEL_19;
  }

  if (!__OFSUB__(HIDWORD(v2), v2))
  {
LABEL_19:
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x20F2E6D80](v12);

    MEMORY[0x20F2E6D80](0x736574796220, 0xE600000000000000);
    return v13[0];
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredBlob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v8 = *a1;
  v9 = v4;
  MirroredBlobContentType.init(protobuf:)(&v8, &v10);
  *a2 = v10;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  outlined copy of Data._Representation(v5, v6);
  result = outlined destroy of Apple_Workout_Core_MirroredBlob(a1);
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredBlob()
{
  type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob();
  return static Message.with(_:)();
}

uint64_t MirroredBlob.hash(into:)(uint64_t a1)
{
  MEMORY[0x20F2E7FF0](*v1);

  return Data.hash(into:)();
}

Swift::Int MirroredBlob.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredBlob()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredBlob(uint64_t a1)
{
  MEMORY[0x20F2E7FF0](*v1);

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredBlob(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

unint64_t instantiation function for generic protocol witness table for MirroredBlob(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredBlob and conformance MirroredBlob();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredBlob and conformance MirroredBlob()
{
  result = lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob;
  if (!lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob;
  if (!lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredBlob and conformance MirroredBlob);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredBlob(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MirroredBlob(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t static SpokenUtilities.standardPause.getter()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](92, 0xE100000000000000);
  return 0x3D65737561705C1BLL;
}

id static SpokenUtilities.spokenDistance(distance:distanceType:formattingManager:)(void *a1, uint64_t a2, void *a3)
{
  v6 = [objc_opt_self() meterUnit];
  [a1 doubleValueForUnit_];
  v8 = v7;

  result = [a3 localizedNaturalScaleStringWithDistanceInMeters:a2 distanceType:3 unitStyle:0 usedUnit:2 decimalTrimmingMode:v8];
  if (result)
  {
    v10 = result;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static SpokenUtilities.textToSpeechPause(durationInMilliseconds:)()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](92, 0xE100000000000000);
  return 0x3D65737561705C1BLL;
}

void one-time initialization function for pausePunctuation()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B466040);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  static SpokenUtilities.pausePunctuation = v5;
  *algn_27C72C6E8 = v7;
}

uint64_t static SpokenUtilities.pausePunctuation.getter()
{
  if (one-time initialization token for pausePunctuation != -1)
  {
    swift_once();
  }

  v0 = static SpokenUtilities.pausePunctuation;

  return v0;
}

uint64_t static SpokenUtilities.spokenCadence(activityType:cadence:metricType:formattingManager:)(void *a1, uint64_t a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;
  v13 = specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(a1);
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20B4282E0;
  v7 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  v4 = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = v10;
  *(v16 + 40) = v12;
  *(v16 + 96) = v7;
  *(v16 + 104) = v4;
  *(v16 + 64) = v4;
  *(v16 + 72) = v13;
  *(v16 + 80) = v15;
  v5 = String.init(format:_:)();
  v6 = v17;
  v18 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(a2, 1, a1);
  v20 = v19;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A20;
  *(v3 + 56) = v7;
  *(v3 + 64) = v4;
  *(v3 + 32) = v18;
  *(v3 + 40) = v20;
  if (one-time initialization token for pausePunctuation != -1)
  {
LABEL_9:
    swift_once();
  }

  v22 = static SpokenUtilities.pausePunctuation;
  v21 = *algn_27C72C6E8;
  *(v3 + 96) = v7;
  *(v3 + 104) = v4;
  *(v3 + 72) = v22;
  *(v3 + 80) = v21;
  *(v3 + 136) = v7;
  *(v3 + 144) = v4;
  *(v3 + 112) = v5;
  *(v3 + 120) = v6;

  v23 = String.init(format:_:)();
  v25 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v23, v24);

  return v25;
}

uint64_t static SpokenUtilities.spokenPower(activityType:power:metricType:formattingManager:)(double a1, uint64_t a2, uint64_t a3)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v10;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = MEMORY[0x20F2E6C00](0x4E555F5245574F50, 0xEF474E4F4C5F5449);
  v15 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v16 = [v13 localizedStringForKey:v14 value:0 table:v15];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20B4282E0;
  v7 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v6 = lazy protocol witness table accessor for type String and conformance String();
  *(v20 + 32) = v9;
  *(v20 + 40) = v11;
  *(v20 + 96) = v7;
  *(v20 + 104) = v6;
  *(v20 + 64) = v6;
  *(v20 + 72) = v17;
  *(v20 + 80) = v19;
  v4 = String.init(format:_:)();
  v5 = v21;
  v22 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(a3, 1, 0);
  v24 = v23;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A20;
  *(v3 + 56) = v7;
  *(v3 + 64) = v6;
  *(v3 + 32) = v22;
  *(v3 + 40) = v24;
  if (one-time initialization token for pausePunctuation != -1)
  {
LABEL_9:
    swift_once();
  }

  v26 = static SpokenUtilities.pausePunctuation;
  v25 = *algn_27C72C6E8;
  *(v3 + 96) = v7;
  *(v3 + 104) = v6;
  *(v3 + 72) = v26;
  *(v3 + 80) = v25;
  *(v3 + 136) = v7;
  *(v3 + 144) = v6;
  *(v3 + 112) = v4;
  *(v3 + 120) = v5;

  v27 = String.init(format:_:)();
  v29 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v27, v28);

  return v29;
}

void *static SpokenUtilities.spokenCadenceValue(activityType:cadence:formattingManager:includeUnit:)(void *result, double a2, uint64_t a3, char a4)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = result;
  result = dispatch thunk of CustomStringConvertible.description.getter();
  if (a4)
  {
    v7 = result;
    v8 = v6;
    v9 = specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(v5);
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20B4282E0;
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = v9;
    *(v12 + 80) = v11;
    return String.init(format:_:)();
  }

  return result;
}

void static SpokenUtilities.spokenPowerValue(activityType:power:formattingManager:includeUnit:)(double a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  if (a4)
  {
    v7 = v5;
    v8 = v6;
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = [objc_opt_self() bundleForClass_];
    v11 = MEMORY[0x20F2E6C00](0x4E555F5245574F50, 0xEF474E4F4C5F5449);
    v12 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20B4282E0;
    v18 = MEMORY[0x277D837D0];
    *(v17 + 56) = MEMORY[0x277D837D0];
    v19 = lazy protocol witness table accessor for type String and conformance String();
    *(v17 + 32) = v7;
    *(v17 + 40) = v8;
    *(v17 + 96) = v18;
    *(v17 + 104) = v19;
    *(v17 + 64) = v19;
    *(v17 + 72) = v14;
    *(v17 + 80) = v16;
    String.init(format:_:)();
  }
}

id static SpokenUtilities.spokenPaceValue(distance:distanceType:duration:formattingManager:includeUnit:)(uint64_t a1, uint64_t a2, void *a3, char a4, double a5)
{
  v10 = MEMORY[0x20F2E8410](a2);
  if (v10 == 4)
  {
    goto LABEL_4;
  }

  result = [a3 unitManager];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  [result paceWithDistance:a1 overDuration:v10 paceFormat:a2 distanceType:a5];
  v14 = v13;

  if (v14 <= 0.0)
  {
    return 0;
  }

LABEL_4:
  if (a4)
  {
    result = [a3 localizedPaceAndUnitWithDistance:a1 overDuration:v10 paceFormat:a2 distanceType:3 unitStyle:2 decimalTrimmingMode:a5];
    if (!result)
    {
      return result;
    }

LABEL_8:
    v15 = result;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v16;
  }

  result = [a3 localizedPaceStringWithDistance:a1 overDuration:v10 paceFormat:3 unitStyle:2 decimalTrimmingMode:a2 distanceType:a5];
  if (result)
  {
    goto LABEL_8;
  }

  return result;
}

id SpokenUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SpokenUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpokenUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SpokenUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SpokenUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(uint64_t a1, uint64_t a2)
{
  if (FIUILocaleIsRightToLeft())
  {
  }

  else
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = MEMORY[0x20F2E6C00](0xD000000000000016, 0x800000020B466300);
    v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_20B4282E0;
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = v9;
    *(v12 + 80) = v11;

    return String.init(format:_:)();
  }

  return a1;
}

uint64_t specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 0xD00000000000001ALL;
  if (a1 > 13)
  {
    if (a1 > 15)
    {
      if (a1 != 16)
      {
        if (a1 == 23)
        {
          v4 = "METRIC_SEGMENT_PACE_SPOKEN";
          v5 = "METRIC_SEGMENT_PACE_SPOKEN";
          goto LABEL_18;
        }

        if (a1 == 36)
        {
          if (a2 == 4)
          {
            v3 = 0xD000000000000019;
          }

          else
          {
            v3 = 0xD000000000000018;
          }

          if (a2 == 4)
          {
            v8 = "METRIC_SPLIT_PACE_SPOKEN";
          }

          else
          {
            v8 = "METRIC_SEGMENT_SPEED_SPOKEN";
          }

          goto LABEL_40;
        }

        goto LABEL_41;
      }

      v8 = "EDOMETER_CADENCE_SPOKEN";
      if (a3)
      {
        v9 = a3;
        v10 = MEMORY[0x20F2E8390]([v9 effectiveTypeIdentifier]);

        v11 = "METRIC_AVERAGE_PEDOMETER_CADENCE_SPOKEN";
        goto LABEL_33;
      }

LABEL_39:
      v3 = 0xD000000000000025;
      goto LABEL_40;
    }

    if (a1 != 14)
    {
      v8 = "METRIC_AVERAGE_POWER_SPOKEN";
      if (a3)
      {
        v13 = a3;
        v10 = MEMORY[0x20F2E8390]([v13 effectiveTypeIdentifier]);

        v11 = "METRIC_CURRENT_PEDOMETER_CADENCE_SPOKEN";
LABEL_33:
        v14 = (v11 - 32);
        if (v10)
        {
          v3 = 0xD000000000000027;
        }

        else
        {
          v3 = 0xD000000000000025;
        }

        if (v10)
        {
          v8 = v14;
        }

        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v6 = "METRIC_ROLLING_PACE_SPOKEN";
    goto LABEL_13;
  }

  if (a1 > 10)
  {
    if (a1 == 11)
    {
      v7 = "METRIC_CURRENT_POWER_SPOKEN";
    }

    else
    {
      if (a1 != 12)
      {
        goto LABEL_41;
      }

      v7 = "METRIC_AVERAGE_POWER_SPOKEN";
    }

    v8 = (v7 - 32);
    v3 = 0xD00000000000001BLL;
LABEL_40:
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = MEMORY[0x20F2E6C00](v3, v8 | 0x8000000000000000);

    v18 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v20;
  }

  if (a1 == 4)
  {
    v6 = "METRIC_CURRENT_PACE_SPOKEN";
LABEL_13:
    v8 = (v6 - 32);
    goto LABEL_40;
  }

  if (a1 == 8)
  {
    v4 = "METRIC_AVERAGE_PACE_SPOKEN";
    v5 = "METRIC_AVERAGE_PACE_SPOKEN";
LABEL_18:
    v12 = (v5 - 32);
    if (a2 == 4)
    {
      v3 = 0xD00000000000001BLL;
      v8 = v4;
    }

    else
    {
      v8 = v12;
    }

    goto LABEL_40;
  }

LABEL_41:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v23 = swift_allocObject();
  v24 = MEMORY[0x277D83E88];
  *(v23 + 16) = xmmword_20B423A90;
  v25 = MEMORY[0x277D83ED0];
  *(v23 + 56) = v24;
  *(v23 + 64) = v25;
  *(v23 + 32) = a1;
  v26 = String.init(format:_:)();
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v26, v27, "WorkoutCore/SpokenUtilities.swift", 33, 2, 252, 0);
  __break(1u);
  return result;
}

uint64_t specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(void *a1)
{
  v1 = [a1 effectiveTypeIdentifier];
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = "textToSpeechEndOfSentence";
  if (v1 == 13)
  {
    v4 = "CADENCE_UNIT_LONG_PEDOMETER";
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  v6 = MEMORY[0x20F2E6C00](v5, v4 | 0x8000000000000000);
  v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v8 = [v3 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

uint64_t specialized static SpokenUtilities.spokenMetric(activityType:value:distanceType:metricType:formattingManager:)(void *a1, uint64_t a2, unint64_t a3, void *a4, double a5)
{
  v9 = a3;
  if (a3 > 0x10)
  {
    goto LABEL_40;
  }

  if (((1 << a3) & 0x4110) != 0)
  {
    v31 = [objc_opt_self() meterUnit];
    v32 = [objc_opt_self() quantityWithUnit:v31 doubleValue:a5];

    v33 = MEMORY[0x20F2E8410](a2);
    if (v33 != 4)
    {
      v34 = [a4 unitManager];
      if (!v34)
      {
        __break(1u);
        goto LABEL_39;
      }

      v35 = v34;
      [v34 paceWithDistance:v32 overDuration:v33 paceFormat:a2 distanceType:1.0];
      v37 = v36;

      if (v37 <= 0.0)
      {

        return 0;
      }
    }

    v38 = MEMORY[0x20F2E8410](a2);
    if (v38 == 4)
    {
LABEL_15:
      v43 = [a4 localizedPaceAndUnitWithDistance:v32 overDuration:v38 paceFormat:a2 distanceType:3 unitStyle:2 decimalTrimmingMode:1.0];
      if (v43)
      {
        v44 = v43;
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

LABEL_26:
        v70 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(v9, v33, 0);
        v72 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_20B423A20;
        v74 = MEMORY[0x277D837D0];
        *(v73 + 56) = MEMORY[0x277D837D0];
        v75 = lazy protocol witness table accessor for type String and conformance String();
        *(v73 + 64) = v75;
        *(v73 + 32) = v70;
        *(v73 + 40) = v72;
        if (one-time initialization token for pausePunctuation != -1)
        {
          v81 = v75;
          swift_once();
          v75 = v81;
        }

        v77 = static SpokenUtilities.pausePunctuation;
        v76 = *algn_27C72C6E8;
        *(v73 + 96) = v74;
        *(v73 + 104) = v75;
        *(v73 + 72) = v77;
        *(v73 + 80) = v76;
        *(v73 + 136) = v74;
        *(v73 + 144) = v75;
        *(v73 + 112) = v45;
        *(v73 + 120) = v47;

        v78 = String.init(format:_:)();
        v69 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v78, v79);

        return v69;
      }

LABEL_25:
      v45 = 0;
      v47 = 0xE000000000000000;
      goto LABEL_26;
    }

    v39 = [a4 unitManager];
    if (v39)
    {
      v40 = v39;
      [v39 paceWithDistance:v32 overDuration:v38 paceFormat:a2 distanceType:1.0];
      v42 = v41;

      if (v42 <= 0.0)
      {
        goto LABEL_25;
      }

      goto LABEL_15;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (((1 << a3) & 0x1800) != 0)
  {
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a5 > -9.22337204e18)
      {
        if (a5 < 9.22337204e18)
        {
          v10 = dispatch thunk of CustomStringConvertible.description.getter();
          v12 = v11;
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v14 = [objc_opt_self() bundleForClass_];
          v15 = MEMORY[0x20F2E6C00](0x4E555F5245574F50, 0xEF474E4F4C5F5449);
          v16 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v20 = v19;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_20B4282E0;
          v8 = MEMORY[0x277D837D0];
          *(v21 + 56) = MEMORY[0x277D837D0];
          v7 = lazy protocol witness table accessor for type String and conformance String();
          *(v21 + 32) = v10;
          *(v21 + 40) = v12;
          *(v21 + 96) = v8;
          *(v21 + 104) = v7;
          *(v21 + 64) = v7;
          *(v21 + 72) = v18;
          *(v21 + 80) = v20;
          v5 = String.init(format:_:)();
          v6 = v22;
          v23 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(v9, 1, 0);
          v25 = v24;
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_20B423A20;
          *(v9 + 56) = v8;
          *(v9 + 64) = v7;
          *(v9 + 32) = v23;
          *(v9 + 40) = v25;
          if (one-time initialization token for pausePunctuation == -1)
          {
LABEL_8:
            v27 = static SpokenUtilities.pausePunctuation;
            v26 = *algn_27C72C6E8;
            *(v9 + 96) = v8;
            *(v9 + 104) = v7;
            *(v9 + 72) = v27;
            *(v9 + 80) = v26;
            *(v9 + 136) = v8;
            *(v9 + 144) = v7;
            *(v9 + 112) = v5;
            *(v9 + 120) = v6;
LABEL_24:

            v67 = String.init(format:_:)();
            v69 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v67, v68);

            return v69;
          }

LABEL_37:
          swift_once();
          goto LABEL_8;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (((1 << a3) & 0x18000) != 0)
  {
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (a5 > -9.22337204e18)
      {
        if (a5 < 9.22337204e18)
        {
          v49 = dispatch thunk of CustomStringConvertible.description.getter();
          v51 = v50;
          v52 = specialized static SpokenUtilities.cadenceLongUnitString(activityType:)(a1);
          v54 = v53;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v55 = swift_allocObject();
          *(v55 + 16) = xmmword_20B4282E0;
          v56 = MEMORY[0x277D837D0];
          *(v55 + 56) = MEMORY[0x277D837D0];
          v57 = lazy protocol witness table accessor for type String and conformance String();
          *(v55 + 32) = v49;
          *(v55 + 40) = v51;
          *(v55 + 96) = v56;
          *(v55 + 104) = v57;
          *(v55 + 64) = v57;
          *(v55 + 72) = v52;
          *(v55 + 80) = v54;
          v58 = String.init(format:_:)();
          v60 = v59;
          v61 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(v9, 1, a1);
          v63 = v62;
          v64 = swift_allocObject();
          *(v64 + 16) = xmmword_20B423A20;
          *(v64 + 56) = v56;
          *(v64 + 64) = v57;
          *(v64 + 32) = v61;
          *(v64 + 40) = v63;
          if (one-time initialization token for pausePunctuation != -1)
          {
            swift_once();
          }

          v66 = static SpokenUtilities.pausePunctuation;
          v65 = *algn_27C72C6E8;
          *(v64 + 96) = v56;
          *(v64 + 104) = v57;
          *(v64 + 72) = v66;
          *(v64 + 80) = v65;
          *(v64 + 136) = v56;
          *(v64 + 144) = v57;
          *(v64 + 112) = v58;
          *(v64 + 120) = v60;
          goto LABEL_24;
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    goto LABEL_32;
  }

LABEL_40:
  _StringGuts.grow(_:)(47);
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B4662C0);
  type metadata accessor for HKWorkoutMetricType(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B4662E0);
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/SpokenUtilities.swift", 33, 2, 54, 0);
  __break(1u);
  return result;
}

id specialized static SpokenUtilities.spokenPace(distance:distanceType:duration:metricType:formattingManager:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v10 = MEMORY[0x20F2E8410](a2);
  if (v10 != 4)
  {
    result = [a4 unitManager];
    if (!result)
    {
      __break(1u);
      goto LABEL_16;
    }

    v12 = result;
    [result paceWithDistance:a1 overDuration:v10 paceFormat:a2 distanceType:a5];
    v14 = v13;

    if (v14 <= 0.0)
    {
      return 0;
    }
  }

  v15 = MEMORY[0x20F2E8410](a2);
  if (v15 == 4)
  {
LABEL_7:
    v19 = [a4 localizedPaceAndUnitWithDistance:a1 overDuration:v15 paceFormat:a2 distanceType:3 unitStyle:2 decimalTrimmingMode:a5];
    if (v19)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

LABEL_10:
      v24 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(a3, v10, 0);
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_20B423A20;
      v28 = MEMORY[0x277D837D0];
      *(v27 + 56) = MEMORY[0x277D837D0];
      v29 = lazy protocol witness table accessor for type String and conformance String();
      *(v27 + 64) = v29;
      *(v27 + 32) = v24;
      *(v27 + 40) = v26;
      if (one-time initialization token for pausePunctuation != -1)
      {
        v35 = v29;
        swift_once();
        v29 = v35;
      }

      v31 = static SpokenUtilities.pausePunctuation;
      v30 = *algn_27C72C6E8;
      *(v27 + 96) = v28;
      *(v27 + 104) = v29;
      *(v27 + 72) = v31;
      *(v27 + 80) = v30;
      *(v27 + 136) = v28;
      *(v27 + 144) = v29;
      *(v27 + 112) = v21;
      *(v27 + 120) = v23;

      v32 = String.init(format:_:)();
      v34 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v32, v33);

      return v34;
    }

LABEL_9:
    v21 = 0;
    v23 = 0xE000000000000000;
    goto LABEL_10;
  }

  result = [a4 unitManager];
  if (result)
  {
    v16 = result;
    [result paceWithDistance:a1 overDuration:v15 paceFormat:a2 distanceType:a5];
    v18 = v17;

    if (v18 <= 0.0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
  return result;
}

id specialized static SpokenUtilities.spokenPaceForSingleDistanceUnit(distance:distanceType:duration:formattingManager:)(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = MEMORY[0x20F2E6C00](0x4F50535F45434150, 0xEB000000004E454BLL);
  v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [a3 localizedPaceStringWithDistance:a1 overDuration:MEMORY[0x20F2E8410](a2) paceFormat:3 unitStyle:2 decimalTrimmingMode:a2 distanceType:a4];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xE000000000000000;
  }

  result = MEMORY[0x20F2E82D0]();
  if (result)
  {
    v22 = result;
    v37._object = 0xE000000000000000;
    v23._countAndFlagsBits = 0x564F4E5F45434150;
    v23._object = 0xEC00000045554C41;
    v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v24.value._object = 0xEB00000000656C62;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v37._countAndFlagsBits = 0;
    v26 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v37);

    if (v18 == v26._countAndFlagsBits && v20 == v26._object)
    {

LABEL_10:

      return 0;
    }

    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v27)
    {

      goto LABEL_10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20B423A20;
    v29 = MEMORY[0x277D837D0];
    *(v28 + 56) = MEMORY[0x277D837D0];
    v30 = lazy protocol witness table accessor for type String and conformance String();
    *(v28 + 64) = v30;
    *(v28 + 32) = v13;
    *(v28 + 40) = v15;
    if (one-time initialization token for pausePunctuation != -1)
    {
      v36 = v30;
      swift_once();
      v30 = v36;
    }

    v32 = static SpokenUtilities.pausePunctuation;
    v31 = *algn_27C72C6E8;
    *(v28 + 96) = v29;
    *(v28 + 104) = v30;
    *(v28 + 72) = v32;
    *(v28 + 80) = v31;
    *(v28 + 136) = v29;
    *(v28 + 144) = v30;
    *(v28 + 112) = v18;
    *(v28 + 120) = v20;

    v33 = String.init(format:_:)();
    v35 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v33, v34);

    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double key path setter for WorkoutConfigurationDataSourcesModel.cachedExternalProviders : WorkoutConfigurationDataSourcesModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;

  return result;
}

double WorkoutConfigurationDataSourcesModel.cachedExternalProviders.getter()
{
  swift_beginAccess();

  return result;
}

char *WorkoutConfigurationDataSourcesModel.queryClient.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = v0;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for healthStore != -1)
    {
      swift_once();
    }

    v4 = static WorkoutCoreInjector.healthStore;
    v5 = objc_allocWithZone(type metadata accessor for QueryClient());
    v6 = QueryClient.init(_:)(v4);
    v7 = *(v0 + 24);
    *(v3 + 24) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

id WorkoutConfigurationDataSourcesModel.nanoSyncControl.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if (one-time initialization token for nanoSyncControl != -1)
    {
      swift_once();
    }

    v3 = static WorkoutCoreInjector.nanoSyncControl;
    v4 = *(v0 + 32);
    *(v0 + 32) = static WorkoutCoreInjector.nanoSyncControl;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *WorkoutConfigurationDataSourcesModel.__allocating_init()()
{
  result = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  result[3] = 0;
  result[4] = 0;
  result[2] = v1;
  return result;
}

void *WorkoutConfigurationDataSourcesModel.init()()
{
  result = v0;
  v2 = MEMORY[0x277D84F90];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  return result;
}

double WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:)(uint64_t a1, uint64_t a2)
{
  v5 = WorkoutConfigurationDataSourcesModel.queryClient.getter();
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  v7[2] = partial apply for closure #1 in WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:);
  v7[3] = v6;
  v7[4] = v5;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:);
  *(v8 + 24) = v6;
  swift_retain_n();

  sub_20AEDA7E4(a1, a2);
  v9 = v5;
  QueryClient.remoteProxy(handler:errorHandler:)(_s11WorkoutCore11QueryClientC22fetchExternalProviders10completionyySayAA07QueriedF8ProviderCG_s5Error_pSgtc_tFyypcfU_TA_0, v7, _s11WorkoutCore11QueryClientC22fetchExternalProviders10completionyySayAA07QueriedF8ProviderCG_s5Error_pSgtc_tFysAI_pcfU0_TA_0, v8);

  return result;
}

uint64_t closure #1 in WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v13 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v23 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a3;
  v17[4] = a4;
  v17[5] = a5;
  v18 = a5;
  aBlock[4] = partial apply for closure #1 in closure #1 in WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_43_1;
  v19 = _Block_copy(aBlock);

  sub_20AEDA7E4(a4, v18);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v23;
  MEMORY[0x20F2E7580](0, v16, v12, v19);
  _Block_release(v19);

  (*(v25 + 8))(v12, v9);
  return (*(v13 + 8))(v16, v24);
}

double closure #1 in closure #1 in WorkoutConfigurationDataSourcesModel.reloadExternalProviders(_:)(uint64_t a1, uint64_t a2, void (*a3)(unint64_t))
{

  v8[0] = specialized Array._copyToContiguousArray()(v5);
  specialized MutableCollection<>.sort(by:)(v8);
  v6 = v8[0];
  swift_beginAccess();
  *(a2 + 16) = v6;

  if (a3)
  {
    a3(v6);
  }

  return result;
}

double WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = WorkoutConfigurationDataSourcesModel.queryClient.getter();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a2;
  *(v11 + 48) = v4;
  *(v11 + 56) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:);
  *(v12 + 24) = v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = v9;
  *(v12 + 48) = 0;
  *(v12 + 56) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:);
  *(v13 + 24) = v11;
  swift_retain_n();
  swift_retain_n();
  sub_20AEDA7E4(a3, a4);

  v14 = v10;
  QueryClient.remoteProxy(handler:errorHandler:)(_s11WorkoutCore11QueryClientC29updateQueriedExternalProvider_15permissionState10completionyAA0fgH0C_So023WOPersistencePermissionJ0VSgySb_s5Error_pSgtctFyypcfU_TA_0, v12, _s11WorkoutCore11QueryClientC29updateQueriedExternalProvider_15permissionState10completionyAA0fgH0C_So023WOPersistencePermissionJ0VSgySb_s5Error_pSgtctFysAL_pcfU0_TA_0, v13);

  return result;
}

void closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:)(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v73 = a1;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v22 = MEMORY[0x28223BE20](v20, v21);
  v25 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v68 = v25;
    v69 = v23;
    v70 = v19;
    v71 = v22;
    v72 = v16;
    v26 = a2;
    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.xpcService);
    v28 = a2;

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67 = a4;
      v33 = v32;
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v31 = 136315394;
      swift_beginAccess();
      v34 = a5;
      v35 = *(a3 + 16);
      swift_beginAccess();
      v36 = *(v35 + 32);
      v37 = *(v35 + 40);

      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &aBlock);
      a5 = v34;

      *(v31 + 4) = v38;
      *(v31 + 12) = 2112;
      v39 = a2;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v40;
      *v33 = v40;
      _os_log_impl(&dword_20AEA4000, v29, v30, "failed to update bundle identifier: %s due to %@", v31, 0x16u);
      outlined destroy of NSObject?(v33);
      v41 = v33;
      a4 = v67;
      MEMORY[0x20F2E9420](v41, -1, -1);
      v42 = v66;
      __swift_destroy_boxed_opaque_existential_0(v66);
      MEMORY[0x20F2E9420](v42, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    type metadata accessor for OS_dispatch_queue();
    v43 = static OS_dispatch_queue.main.getter();
    v44 = swift_allocObject();
    *(v44 + 16) = a4;
    *(v44 + 24) = a5;
    *(v44 + 32) = v73 & 1;
    *(v44 + 40) = a2;
    v78 = partial apply for closure #1 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:);
    v79 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = thunk for @escaping @callee_guaranteed () -> ();
    v77 = &block_descriptor_31_3;
    v45 = _Block_copy(&aBlock);
    v46 = a2;
    sub_20AEDA7E4(a4, a5);

    v47 = v68;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v48 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v47, v48, v45);
    _Block_release(v45);

    (*(v72 + 8))(v48, v15);
    (*(v69 + 8))(v47, v71);
  }

  else
  {
    v49 = a6;
    v72 = a8;
    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static WOLog.xpcService);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v71 = a5;
      v55 = v54;
      aBlock = v54;
      *v53 = 136315394;
      swift_beginAccess();
      v56 = *(a3 + 16);
      swift_beginAccess();
      v57 = a4;
      v58 = *(v56 + 32);
      v59 = *(v56 + 40);

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &aBlock);

      *(v53 + 4) = v60;
      a4 = v57;
      *(v53 + 12) = 1024;
      *(v53 + 14) = v49 & 1;
      _os_log_impl(&dword_20AEA4000, v51, v52, "updated bundle identifiers: %s enabled=%{BOOL}d", v53, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      v61 = v55;
      a5 = v71;
      MEMORY[0x20F2E9420](v61, -1, -1);
      MEMORY[0x20F2E9420](v53, -1, -1);
    }

    v62 = WorkoutConfigurationDataSourcesModel.nanoSyncControl.getter();
    v63 = swift_allocObject();
    *(v63 + 16) = a7;
    *(v63 + 24) = a3;
    *(v63 + 32) = v72;
    *(v63 + 40) = a4;
    *(v63 + 48) = a5;
    *(v63 + 56) = v73 & 1;
    *(v63 + 64) = 0;
    v78 = partial apply for closure #2 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:);
    v79 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v77 = &block_descriptor_57;
    v64 = _Block_copy(&aBlock);

    sub_20AEDA7E4(a4, a5);

    [v62 forceNanoSyncWithOptions:0 completion:v64];

    _Block_release(v64);
  }
}

uint64_t closure #2 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void *a9)
{
  v52 = a8;
  v50 = a9;
  v51 = a5;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for DispatchQoS();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21 = a2;
    if (one-time initialization token for xpcService != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.xpcService);
    v23 = a2;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v49 = v25;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v47 = a7;
      v27 = v26;
      v28 = swift_slowAlloc();
      v48 = v14;
      v46 = v28;
      v56 = a2;
      aBlock[0] = v28;
      *v27 = 136315138;
      v29 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v30 = String.init<A>(describing:)();
      v32 = a6;
      v33 = v20;
      v34 = a3;
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, aBlock);

      *(v27 + 4) = v35;
      a3 = v34;
      v20 = v33;
      a6 = v32;
      _os_log_impl(&dword_20AEA4000, v24, v49, "failed to nano sync due to: %s", v27, 0xCu);
      v36 = v46;
      __swift_destroy_boxed_opaque_existential_0(v46);
      v14 = v48;
      MEMORY[0x20F2E9420](v36, -1, -1);
      v37 = v27;
      a7 = v47;
      MEMORY[0x20F2E9420](v37, -1, -1);
    }

    else
    {
    }
  }

  type metadata accessor for OS_dispatch_queue();
  v38 = static OS_dispatch_queue.main.getter();
  v39 = swift_allocObject();
  *(v39 + 16) = a3;
  *(v39 + 24) = a4;
  v40 = v50;
  *(v39 + 32) = v51;
  *(v39 + 40) = a6;
  *(v39 + 48) = a7;
  *(v39 + 56) = v52 & 1;
  *(v39 + 64) = v40;
  aBlock[4] = partial apply for closure #1 in closure #2 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:);
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_37_1;
  v41 = _Block_copy(aBlock);

  sub_20AEDA7E4(a6, a7);
  v42 = v40;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v43 = v54;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v20, v17, v41);
  _Block_release(v41);

  (*(v14 + 8))(v17, v43);
  return (*(v53 + 8))(v20, v55);
}

void closure #1 in closure #2 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, __n128), uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  v13 = *(a1 + 16);

  v14 = specialized Collection<>.firstIndex(of:)(a2, v13);
  v16 = v15;

  if (v16)
  {
    goto LABEL_7;
  }

  v17 = *(a1 + 16);
  if ((v17 & 0xC000000000000001) != 0)
  {

    v18 = MEMORY[0x20F2E7A20](v14, v17);

    goto LABEL_6;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v18 = *(v17 + 8 * v14 + 32);

LABEL_6:
  swift_beginAccess();
  *(v18 + 24) = a3;

LABEL_7:
  if (a4)
  {
    (a4)(a6 & 1, a7);
  }
}

uint64_t WorkoutConfigurationDataSourcesModel.deinit()
{

  return v0;
}

uint64_t WorkoutConfigurationDataSourcesModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in closure #1 in WorkoutConfigurationDataSourcesModel.updateExternalProvider(_:enable:completion:)()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32), *(v0 + 40));
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v10 = *a3;
        v11 = *(*a3 + 8 * v9);
        v12 = *(*a3 + 8 * v6);
        swift_beginAccess();
        v13 = *(v11 + 16);
        swift_beginAccess();
        v14 = *(v13 + 16);
        v15 = *(v13 + 24);
        swift_beginAccess();
        v16 = *(v12 + 16);
        swift_beginAccess();
        v17 = v14 == *(v16 + 16) && v15 == *(v16 + 24);
        if (v17)
        {
          v4 = 0;
        }

        else
        {
          v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v9 = v8 + 2;
        if (v8 + 2 < v5)
        {
          v133 = v8;
          v18 = (v10 + 8 * v8 + 16);
          do
          {
            v19 = v9;
            v21 = *(v18 - 1);
            v20 = *v18;
            swift_beginAccess();
            v22 = *(v20 + 16);
            swift_beginAccess();
            v23 = *(v22 + 16);
            v24 = *(v22 + 24);
            swift_beginAccess();
            v25 = *(v21 + 16);
            swift_beginAccess();
            if (v23 == *(v25 + 16) && v24 == *(v25 + 24))
            {
              v9 = v19;
              if (v4)
              {
                v8 = v133;
                goto LABEL_25;
              }
            }

            else
            {
              v9 = v19;
              if ((v4 ^ _stringCompareWithSmolCheck(_:_:expecting:)()))
              {
                goto LABEL_23;
              }
            }

            ++v9;
            ++v18;
          }

          while (v5 != v9);
          v9 = v5;
LABEL_23:
          v8 = v133;
        }

        if (v4)
        {
LABEL_25:
          if (v9 < v8)
          {
            goto LABEL_180;
          }

          if (v8 < v9)
          {
            v27 = 8 * v9 - 8;
            v28 = 8 * v8;
            v29 = v9;
            v30 = v8;
            do
            {
              if (v30 != --v29)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_186;
                }

                v31 = *(v32 + v28);
                *(v32 + v28) = *(v32 + v27);
                *(v32 + v27) = v31;
              }

              ++v30;
              v27 -= 8;
              v28 += 8;
            }

            while (v30 < v29);
          }
        }
      }

      v33 = a3[1];
      if (v9 < v33)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_179;
        }

        if (v9 - v8 < a4)
        {
          v34 = v8 + a4;
          if (__OFADD__(v8, a4))
          {
            goto LABEL_181;
          }

          if (v34 >= v33)
          {
            v34 = a3[1];
          }

          if (v34 < v8)
          {
            goto LABEL_182;
          }

          if (v9 != v34)
          {
            v134 = v8;
            v136 = v7;
            v35 = *a3;
            v36 = *a3 + 8 * v9 - 8;
            v37 = v8 - v9;
            __src = v34;
            do
            {
              v38 = v9;
              v39 = *(v35 + 8 * v9);
              v40 = v37;
              v41 = v36;
              do
              {
                v42 = *v41;
                swift_beginAccess();
                v43 = *(v39 + 16);
                swift_beginAccess();
                v44 = *(v43 + 16);
                v4 = *(v43 + 24);
                swift_beginAccess();
                v7 = *(v42 + 16);
                swift_beginAccess();
                v45 = v44 == *(v7 + 2) && v4 == *(v7 + 3);
                if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  break;
                }

                if (!v35)
                {
                  goto LABEL_183;
                }

                v46 = *v41;
                v39 = v41[1];
                *v41 = v39;
                v41[1] = v46;
                --v41;
              }

              while (!__CFADD__(v40++, 1));
              v9 = v38 + 1;
              v36 += 8;
              --v37;
            }

            while ((v38 + 1) != __src);
            v9 = __src;
            v8 = v134;
            v7 = v136;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_176;
      }

      v128 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
      }

      v49 = *(v7 + 2);
      v48 = *(v7 + 3);
      v50 = v49 + 1;
      if (v49 >= v48 >> 1)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1, v7);
      }

      *(v7 + 2) = v50;
      v51 = &v7[16 * v49];
      *(v51 + 4) = v8;
      *(v51 + 5) = v128;
      v52 = *a1;
      if (!*a1)
      {
        goto LABEL_187;
      }

      if (v49)
      {
        break;
      }

LABEL_3:
      v6 = v128;
      v5 = a3[1];
      if (v128 >= v5)
      {
        goto LABEL_151;
      }
    }

    __srca = *a1;
    while (1)
    {
      v53 = v50 - 1;
      if (v50 >= 4)
      {
        break;
      }

      if (v50 == 3)
      {
        v54 = *(v7 + 4);
        v55 = *(v7 + 5);
        v64 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        v57 = v64;
LABEL_75:
        if (v57)
        {
          goto LABEL_167;
        }

        v70 = &v7[16 * v50];
        v72 = *v70;
        v71 = *(v70 + 1);
        v73 = __OFSUB__(v71, v72);
        v74 = v71 - v72;
        v75 = v73;
        if (v73)
        {
          goto LABEL_170;
        }

        v76 = &v7[16 * v53 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_173;
        }

        if (__OFADD__(v74, v79))
        {
          goto LABEL_174;
        }

        if (v74 + v79 >= v56)
        {
          if (v56 < v79)
          {
            v53 = v50 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_89;
      }

      v80 = &v7[16 * v50];
      v82 = *v80;
      v81 = *(v80 + 1);
      v64 = __OFSUB__(v81, v82);
      v74 = v81 - v82;
      v75 = v64;
LABEL_89:
      if (v75)
      {
        goto LABEL_169;
      }

      v83 = &v7[16 * v53];
      v85 = *(v83 + 4);
      v84 = *(v83 + 5);
      v64 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v64)
      {
        goto LABEL_172;
      }

      if (v86 < v74)
      {
        goto LABEL_3;
      }

LABEL_96:
      if (v53 - 1 >= v50)
      {
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
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
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
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      v91 = *a3;
      if (!*a3)
      {
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
        return;
      }

      v130 = v53 - 1;
      v131 = v53;
      v92 = *&v7[16 * v53 + 32];
      v93 = *&v7[16 * v53 + 40];
      v135 = *&v7[16 * v53 + 16];
      v137 = v7;
      v7 = (8 * v135);
      v94 = (v91 + 8 * v135);
      v95 = 8 * v92;
      v96 = (v91 + 8 * v92);
      v132 = v93;
      v97 = 8 * v93;
      v98 = (v91 + 8 * v93);
      v99 = 8 * v92 - 8 * v135;
      v100 = 8 * v93 - 8 * v92;
      if (v99 >= v100)
      {
        if (v96 != v52 || v98 <= v52)
        {
          memmove(v52, (v91 + 8 * v92), 8 * v93 - 8 * v92);
        }

        v101 = &v52[v100];
        if (v100 < 1 || v95 <= v7)
        {
LABEL_140:
          v102 = __srca;
          v111 = v96;
        }

        else
        {
          do
          {
            v111 = v96 - 8;
            v98 -= 8;
            v7 = v101;
            while (1)
            {
              v112 = *(v7 - 1);
              v7 -= 8;
              v113 = *v111;
              swift_beginAccess();
              v114 = *(v112 + 16);
              swift_beginAccess();
              v116 = *(v114 + 16);
              v115 = *(v114 + 24);
              swift_beginAccess();
              v117 = *(v113 + 16);
              swift_beginAccess();
              v118 = v116 == *(v117 + 16) && v115 == *(v117 + 24);
              if (!v118 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              if (v98 + 8 != v101)
              {
                *v98 = *v7;
              }

              v98 -= 8;
              v101 = v7;
              if (v7 <= __srca)
              {
                v101 = v7;
                goto LABEL_140;
              }
            }

            if (v98 + 8 != v96)
            {
              *v98 = *v111;
            }

            v102 = __srca;
            if (v101 <= __srca)
            {
              break;
            }

            v96 -= 8;
          }

          while (v94 < v111);
        }
      }

      else
      {
        if (v94 != v52 || v96 <= v52)
        {
          memmove(v52, (v91 + 8 * v135), 8 * v92 - 8 * v135);
        }

        v101 = &v52[v99];
        if (v99 >= 1 && v97 > v95)
        {
          v102 = __srca;
          while (1)
          {
            v103 = *v96;
            v104 = *v102;
            swift_beginAccess();
            v105 = *(v103 + 16);
            swift_beginAccess();
            v106 = *(v105 + 16);
            v107 = *(v105 + 24);
            swift_beginAccess();
            v108 = *(v104 + 16);
            swift_beginAccess();
            v109 = v106 == *(v108 + 16) && v107 == *(v108 + 24);
            if (v109 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              break;
            }

            v110 = v96;
            v17 = v94 == v96;
            v96 += 8;
            if (!v17)
            {
              goto LABEL_114;
            }

LABEL_115:
            v94 += 8;
            if (v102 >= v101 || v96 >= v98)
            {
              goto LABEL_138;
            }
          }

          v110 = v102;
          v17 = v94 == v102;
          v102 += 8;
          if (v17)
          {
            goto LABEL_115;
          }

LABEL_114:
          *v94 = *v110;
          goto LABEL_115;
        }

        v102 = __srca;
LABEL_138:
        v111 = v94;
      }

      if (v111 != v102 || v111 >= &v102[(v101 - v102 + (v101 - v102 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v111, v102, 8 * ((v101 - v102) / 8));
      }

      v4 = v132;
      v119 = v137;
      v52 = __srca;
      if (v132 < v135)
      {
        goto LABEL_163;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = specialized _ArrayBuffer._consumeAndCreateNew()(v137);
      }

      if (v131 > *(v119 + 2))
      {
        goto LABEL_164;
      }

      v120 = &v119[16 * v130];
      *(v120 + 4) = v135;
      *(v120 + 5) = v132;
      specialized Array.remove(at:)(v131);
      v7 = v119;
      v50 = *(v119 + 2);
      if (v50 <= 1)
      {
        goto LABEL_3;
      }
    }

    v58 = &v7[16 * v50 + 32];
    v59 = *(v58 - 64);
    v60 = *(v58 - 56);
    v64 = __OFSUB__(v60, v59);
    v61 = v60 - v59;
    if (v64)
    {
      goto LABEL_165;
    }

    v63 = *(v58 - 48);
    v62 = *(v58 - 40);
    v64 = __OFSUB__(v62, v63);
    v56 = v62 - v63;
    v57 = v64;
    if (v64)
    {
      goto LABEL_166;
    }

    v65 = &v7[16 * v50];
    v67 = *v65;
    v66 = *(v65 + 1);
    v64 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v64)
    {
      goto LABEL_168;
    }

    v64 = __OFADD__(v56, v68);
    v69 = v56 + v68;
    if (v64)
    {
      goto LABEL_171;
    }

    if (v69 >= v61)
    {
      v87 = &v7[16 * v53 + 32];
      v89 = *v87;
      v88 = *(v87 + 1);
      v64 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v64)
      {
        goto LABEL_175;
      }

      if (v56 < v90)
      {
        v53 = v50 - 2;
      }

      goto LABEL_96;
    }

    goto LABEL_75;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_151:
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_189;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_184:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
  }

  v121 = *(v7 + 2);
  if (v121 >= 2)
  {
    while (*a3)
    {
      v122 = *&v7[16 * v121];
      v123 = *&v7[16 * v121 + 24];
      specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v122), (*a3 + 8 * *&v7[16 * v121 + 16]), (*a3 + 8 * v123), v4);
      if (v127)
      {
        goto LABEL_161;
      }

      if (v123 < v122)
      {
        goto LABEL_177;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
      }

      if (v121 - 2 >= *(v7 + 2))
      {
        goto LABEL_178;
      }

      v124 = &v7[16 * v121];
      *v124 = v122;
      *(v124 + 1) = v123;
      specialized Array.remove(at:)(v121 - 1);
      v121 = *(v7 + 2);
      if (v121 <= 1)
      {
        goto LABEL_161;
      }
    }

    goto LABEL_188;
  }

LABEL_161:
}