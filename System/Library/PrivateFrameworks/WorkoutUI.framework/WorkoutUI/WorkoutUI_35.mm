uint64_t (*ConfigurationNavigationModel.firstAppLaunch.modify(uint64_t *a1))()
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
  return ConfigurationNavigationModel.firstAppLaunch.modify;
}

uint64_t key path setter for ConfigurationNavigationModel.$firstAppLaunch : ConfigurationNavigationModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t ConfigurationNavigationModel.$firstAppLaunch.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$firstAppLaunch.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__firstAppLaunch;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$firstAppLaunch.modify;
}

uint64_t ConfigurationNavigationModel.isPresentingEditPacerWorkoutConfiguration.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path setter for ConfigurationNavigationModel.isPresentingEditPacerWorkoutConfiguration : ConfigurationNavigationModel(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t ConfigurationNavigationModel.isPresentingCreateWorkoutConfiguration.setter(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*ConfigurationNavigationModel.hasScrolled.modify(uint64_t *a1))()
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
  return ConfigurationNavigationModel.hasScrolled.modify;
}

void ConfigurationNavigationModel.browsingNavigationPath.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t ConfigurationNavigationModel.$isPresentingCreateWorkoutConfiguration.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for ConfigurationNavigationModel.$isPresentingCreateWorkoutConfiguration : ConfigurationNavigationModel(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ConfigurationNavigationModel.$hasScrolled : ConfigurationNavigationModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t ConfigurationNavigationModel.$hasScrolled.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*ConfigurationNavigationModel.$hasScrolled.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__hasScrolled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ConfigurationNavigationModel.$hasScrolled.modify;
}

void ConfigurationNavigationModel.$isPresentingCreateWorkoutConfiguration.modify(uint64_t a1, char a2)
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

double key path getter for ConfigurationNavigationModel.startGuidedWorkout : ConfigurationNavigationModel@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_startGuidedWorkout);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String, @unowned Double) -> ();
  a2[1] = v6;

  return result;
}

double key path setter for ConfigurationNavigationModel.startGuidedWorkout : ConfigurationNavigationModel(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_startGuidedWorkout);
  swift_beginAccess();
  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String, @in_guaranteed Double) -> (@out ());
  v6[1] = v5;

  return result;
}

uint64_t ConfigurationNavigationModel.startGuidedWorkout.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_startGuidedWorkout);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ConfigurationNavigationModel.startGuidedWorkout.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_startGuidedWorkout);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id ConfigurationNavigationModel.performanceTestModel.getter()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_performanceTestModel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ConfigurationNavigationModel.performanceTestModel.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel_performanceTestModel;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ConfigurationNavigationModel.__allocating_init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  swift_allocObject();
  v12 = specialized ConfigurationNavigationModel.init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)(a1, a2, a3, a4, a5, a6);

  return v12;
}

uint64_t ConfigurationNavigationModel.deinit()
{
  v1 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__isPresentingCreateWorkoutConfiguration;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__blockPresentation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgGMd, &_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC17BlockPresentationOSgGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__browsingNavigationPath;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI14NavigationPathVGMd, &_s7Combine9PublishedVy7SwiftUI14NavigationPathVGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__isPresentingEditPacerWorkoutConfiguration, v2);

  v8 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__newBlockType;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSgGMd, &_s7Combine9PublishedVy9WorkoutUI28ConfigurationNavigationModelC12NewBlockTypeOSgGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__warmupConfigurationIsActive, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__cooldownConfigurationIsActive, v2);
  v10 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__tabViewSelectionItem;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore21AnyActivityPickerItemVSgGMd, &_s7Combine9PublishedVy11WorkoutCore21AnyActivityPickerItemVSgGMR);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__scrollPhase;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy7SwiftUI11ScrollPhaseOGMd, &_s7Combine9PublishedVy7SwiftUI11ScrollPhaseOGMR);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__showToolbarItems, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__firstAppLaunch, v2);
  v3(v0 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__hasScrolled, v2);

  return v0;
}

uint64_t ConfigurationNavigationModel.__deallocating_deinit()
{
  ConfigurationNavigationModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ConfigurationNavigationModel@<X0>(uint64_t *a2@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

Swift::Void __swiftcall ConfigurationNavigationModel.resetNavigationPath()()
{
  v0 = type metadata accessor for NavigationPath();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.app.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v25 = v0;
    v11 = v10;
    v12 = swift_slowAlloc();
    v24 = v1;
    v13 = v12;
    v26[0] = v12;
    *v11 = 136315138;
    v14 = _typeName(_:qualified:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v26);
    v23 = v4;
    v17 = v16;

    *(v11 + 4) = v17;
    _os_log_impl(&dword_20C66F000, v8, v9, "[%s]: popping to root browsing navigation path", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    v18 = v13;
    v1 = v24;
    MEMORY[0x20F30E080](v18, -1, -1);
    v19 = v11;
    v0 = v25;
    MEMORY[0x20F30E080](v19, -1, -1);

    (*(v5 + 8))(v7, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  v20 = NavigationPath.count.getter();
  (*(v1 + 8))(v3, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = static Published.subscript.modify();
  NavigationPath.removeLast(_:)(v20);
  v21(v26, 0);
}

double closure #1 in static ConfigurationNavigationModel.canonical()(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20CB5DA70;
  _StringGuts.grow(_:)(48);

  v4 = [a1 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x20F30BC00](v5, v7);

  MEMORY[0x20F30BC00](0x537472617473202CLL, 0xEE003D656372756FLL);
  v8 = NLWorkoutStartSourceDescription();
  if (v8)
  {
    v9 = v8;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v10 = Optional.description.getter();
  v12 = v11;

  MEMORY[0x20F30BC00](v10, v12);

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD00000000000001ELL;
  *(v3 + 40) = 0x800000020CBA22C0;
  print(_:separator:terminator:)();

  return result;
}

double closure #2 in static ConfigurationNavigationModel.canonical()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20CB5DA70;
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD000000000000012;
  *(v0 + 40) = 0x800000020CBA2280;
  print(_:separator:terminator:)();

  return result;
}

void protocol witness for static Canonical.canonical() in conformance ConfigurationNavigationModel(uint64_t *a1@<X8>)
{
  v2 = objc_allocWithZone(type metadata accessor for QuickWorkoutSwitchProvider());
  v3 = QuickWorkoutSwitchProvider.init(quickWorkoutSwitch:)();
  v4 = [objc_allocWithZone(type metadata accessor for PerformanceTestModel(0)) init];
  swift_allocObject();
  v5 = specialized ConfigurationNavigationModel.init(startWorkout:startGuidedWorkout:quickWorkoutSwitchProvider:performanceTestModel:)(closure #1 in static ConfigurationNavigationModel.canonical(), 0, closure #2 in static ConfigurationNavigationModel.canonical(), 0, v3, v4);

  *a1 = v5;
}

uint64_t outlined init with copy of AnyActivityPickerItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore21AnyActivityPickerItemVSgMd, &_s11WorkoutCore21AnyActivityPickerItemVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AnyActivityPickerItem?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore21AnyActivityPickerItemVSgMd, &_s11WorkoutCore21AnyActivityPickerItemVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ConfigurationNavigationModel.NewBlockType and conformance ConfigurationNavigationModel.NewBlockType()
{
  result = lazy protocol witness table cache variable for type ConfigurationNavigationModel.NewBlockType and conformance ConfigurationNavigationModel.NewBlockType;
  if (!lazy protocol witness table cache variable for type ConfigurationNavigationModel.NewBlockType and conformance ConfigurationNavigationModel.NewBlockType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfigurationNavigationModel.NewBlockType and conformance ConfigurationNavigationModel.NewBlockType);
  }

  return result;
}

void _s7Combine9PublishedVySbGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t getEnumTagSinglePayload for ConfigurationNavigationModel.NewBlockType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConfigurationNavigationModel.NewBlockType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed String, @in_guaranteed Double) -> (@out ())(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(v3 + 16);
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  return v4(v7, &v6);
}

id TargetZone.ZoneType.lowRangeValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v12 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

id TargetZone.ZoneType.aboveZoneValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v12 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

id TargetZone.ZoneType.highRangeValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v12 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

id TargetZone.ZoneType.belowZoneValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v12 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

id TargetZone.ZoneType.withinZoneValue(activityType:)(void *a1)
{
  v3 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result == *MEMORY[0x277D7DE48] || result == *MEMORY[0x277D7DE40] || result == *MEMORY[0x277D7DE60])
  {
    return [a1 effectiveTypeIdentifier];
  }

  if (result != *MEMORY[0x277D7DE70] && result != *MEMORY[0x277D7DE58])
  {
    v12 = result == *MEMORY[0x277D7DE68] || result == *MEMORY[0x277D7DE50];
    if (!v12 && result != *MEMORY[0x277D7DE78])
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

void QuickStartButton.init(workoutConfiguration:startSource:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for ConfigurationNavigationModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  v6 = EnvironmentObject.init()();
  v8 = v7;
  State.init(wrappedValue:)();
  specialized MirroredStartProvider.supportsMirroredStart.getter();
  v10 = 19;
  *a3 = v6;
  *(a3 + 8) = v8;
  if ((v9 & 1) == 0)
  {
    v10 = a2;
  }

  *(a3 + 16) = a1;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
}

uint64_t QuickStartButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32[-v3];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGMR);
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v7 = &v32[-v6];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGMR);
  MEMORY[0x28223BE20](v34);
  v9 = &v32[-v8];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMR);
  MEMORY[0x28223BE20](v36);
  v11 = &v32[-v10];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAA01_op9TransformJ0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAA01_op9TransformJ0VySbGGMR);
  MEMORY[0x28223BE20](v37);
  v13 = &v32[-v12];
  v14 = v1[1];
  v41 = *v1;
  v42 = v14;
  v43 = v1[2];
  v15 = swift_allocObject();
  v16 = v1[1];
  v15[1] = *v1;
  v15[2] = v16;
  v15[3] = v1[2];
  outlined init with copy of QuickStartButton(&v41, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGMR);
  lazy protocol witness table accessor for type ModifiedContent<Group<Image>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  Button.init(action:label:)();
  v17 = static Color.black.getter();
  v18 = v42;
  if (v42)
  {
    v19 = v42;
    WorkoutConfiguration.displayColor.getter();
    v20 = Color.init(uiColor:)();
  }

  else
  {
    v20 = static Color.secondary.getter();
  }

  v33 = v18 == 0;
  (*(v5 + 32))(v9, v7, v35);
  v21 = &v9[*(v34 + 36)];
  *v21 = v17;
  v21[1] = v20;
  v22 = type metadata accessor for Font.Design();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = static Font.system(size:weight:design:)();
  _s7SwiftUI4FontV6DesignOSgWOhTm_11(v4, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  KeyPath = swift_getKeyPath();
  outlined init with take of ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>(v9, v11, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGMR);
  v25 = &v11[*(v36 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v33;
  outlined init with take of ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>(v11, v13, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMR);
  v28 = &v13[*(v37 + 36)];
  *v28 = v26;
  v28[1] = _s7SwiftUI4ViewPAAE8disabledyQrSbFySbzcfU_TA_18;
  v28[2] = v27;
  v39 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  v29 = swift_allocObject();
  v30 = v42;
  v29[1] = v41;
  v29[2] = v30;
  v29[3] = v43;
  outlined init with copy of QuickStartButton(&v41, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI22LocationDisambiguationVSgMd, &_s9WorkoutUI22LocationDisambiguationVSgMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type LocationDisambiguation? and conformance <A> A?();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return _s7SwiftUI4FontV6DesignOSgWOhTm_11(v13, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAA01_op9TransformJ0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAA01_op9TransformJ0VySbGGMR);
}

void closure #1 in QuickStartButton.body.getter(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27[-v3];
  v5 = a1[2];
  if (v5)
  {
    v6 = v5;
    if (WorkoutConfiguration.requiresDisambiguation.getter())
    {
      swift_getObjectType();
      if (!swift_conformsToProtocol2())
      {
        v31 = *(a1 + 2);
        v29 = *(a1 + 2);
        v32 = *(&v31 + 1);
        outlined init with copy of WorkoutConfiguration?(&v32, &v28, &_s7SwiftUI11AnyLocationCySbGSgMd, &_s7SwiftUI11AnyLocationCySbGSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
        State.wrappedValue.getter();
        v28 = v31;
        v27[15] = (v30 & 1) == 0;
        State.wrappedValue.setter();
        _s7SwiftUI4FontV6DesignOSgWOhTm_11(&v31, &_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
        goto LABEL_18;
      }

      *&v31 = v6;
      v7 = type metadata accessor for UUID();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      v8 = v6;
      dispatch thunk of ForcedDisambiguating.copyWithForcedDisambiguation(uuid:)();
      _s7SwiftUI4FontV6DesignOSgWOhTm_11(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v9 = v29;
      if (!v29)
      {

        goto LABEL_18;
      }

      v10 = *a1;
      if (*a1)
      {
        v11 = a1[3];
        swift_beginAccess();
        v12 = *(v10 + 16);

        v13 = v9;
        v14 = v12;
        LOBYTE(v12) = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

        if (v12)
        {
          v15 = 8;
        }

        else
        {
          v15 = v11;
        }

        v16 = *(v10 + 16);
        dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

        v17 = *(v10 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

        v17(v13, v15);

LABEL_15:

LABEL_18:
        v26 = [objc_allocWithZone(MEMORY[0x277D755F0]) initWithStyle_];
        [v26 impactOccurred];

        return;
      }
    }

    else
    {
      v18 = *a1;
      if (*a1)
      {
        v19 = a1[3];
        swift_beginAccess();
        v20 = *(v18 + 16);

        v21 = v20;
        v22 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

        if (v22)
        {
          v23 = 8;
        }

        else
        {
          v23 = v19;
        }

        v24 = *(v18 + 16);
        dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

        v25 = *(v18 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

        v25(v6, v23);

        goto LABEL_15;
      }
    }

    type metadata accessor for ConfigurationNavigationModel(0);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

double closure #2 in QuickStartButton.body.getter()
{
  Image.init(systemName:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x58415F5452415453;
  v1._object = 0xEE00454C5449545FLL;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA5ImageVGMd, &_s7SwiftUI5GroupVyAA5ImageVGMR);
  lazy protocol witness table accessor for type Group<Image> and conformance <A> Group<A>();
  lazy protocol witness table accessor for type String and conformance String();
  View.accessibilityLabel<A>(_:)();

  return result;
}

uint64_t closure #3 in QuickStartButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationDisambiguation(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI22LocationDisambiguationVSgMd, &_s9WorkoutUI22LocationDisambiguationVSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19[-v10 - 8];
  v12 = *(a1 + 16);
  v20 = v12;
  if (v12)
  {
    v13 = swift_allocObject();
    v14 = *(a1 + 16);
    *(v13 + 1) = *a1;
    *(v13 + 2) = v14;
    *(v13 + 3) = *(a1 + 32);
    *v7 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
    swift_storeEnumTagMultiPayload();
    v15 = v4[6];
    *(v7 + v15) = 0;
    v16 = (v7 + v4[7]);
    *(v7 + v4[5]) = v12;
    *(v7 + v15) = 0;
    *v16 = partial apply for closure #1 in closure #3 in QuickStartButton.body.getter;
    v16[1] = v13;
    outlined init with take of LocationDisambiguation(v7, v11);
    (*(v5 + 56))(v11, 0, 1, v4);
    outlined init with copy of QuickStartButton(a1, v19);
  }

  else
  {
    (*(v5 + 56))(v11, 1, 1, v4, v9);
  }

  outlined init with take of ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>(v11, a2, &_s9WorkoutUI22LocationDisambiguationVSgMd, &_s9WorkoutUI22LocationDisambiguationVSgMR);
  return outlined init with copy of WorkoutConfiguration?(&v20, v19, &_s11WorkoutCore0A13ConfigurationCSgMd, &_s11WorkoutCore0A13ConfigurationCSgMR);
}

void closure #1 in closure #3 in QuickStartButton.body.getter(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[3];
    swift_beginAccess();
    v5 = *(v2 + 16);

    v6 = v5;
    v7 = dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.getter();

    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = v4;
    }

    v9 = *(v2 + 16);
    dispatch thunk of QuickWorkoutSwitchProvider.quickWorkoutSwitch.setter();

    v10 = *(v2 + OBJC_IVAR____TtC9WorkoutUI28ConfigurationNavigationModel__startWorkout);

    v10(a1, v8);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<Image>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<Image>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<Image>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type Group<Image> and conformance <A> Group<A>();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<Image>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<Image> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<Image> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<Image> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA5ImageVGMd, &_s7SwiftUI5GroupVyAA5ImageVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<Image> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAA01_op9TransformJ0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGAA01_op9TransformJ0VySbGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMd, &_s7SwiftUI32_EnvironmentKeyTransformModifierVySbGMR, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGAA022_EnvironmentKeyWritingJ0VyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyACyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGAA25_ForegroundStyleModifier2VyAA5ColorVARGGMR);
    lazy protocol witness table accessor for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAA5GroupVyAA5ImageVGAA31AccessibilityAttachmentModifierVGGMR, MEMORY[0x277CDF028]);
    lazy protocol witness table accessor for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier2<Color, Color> and conformance _ForegroundStyleModifier2<A, B>, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAEGMd, &_s7SwiftUI25_ForegroundStyleModifier2VyAA5ColorVAEGMR, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>> and conformance Button<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type LocationDisambiguation? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type LocationDisambiguation? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type LocationDisambiguation? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9WorkoutUI22LocationDisambiguationVSgMd, &_s9WorkoutUI22LocationDisambiguationVSgMR);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(&lazy protocol witness table cache variable for type LocationDisambiguation and conformance LocationDisambiguation, type metadata accessor for LocationDisambiguation, &protocol conformance descriptor for LocationDisambiguation);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationDisambiguation? and conformance <A> A?);
  }

  return result;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for QuickStartButton(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for QuickStartButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Button<ModifiedContent<Group<Image>, AccessibilityAttachmentModifier>>, _ForegroundStyleModifier2<Color, Color>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroyTm_77()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of WorkoutConfiguration?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI4FontV6DesignOSgWOhTm_11(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id PerformanceTestModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void key path getter for PerformanceTestModel.startWorkoutActivity : PerformanceTestModel(void *a4@<X8>)
{
  key path getter for PerformanceTestModel.startWorkoutActivity : PerformanceTestModel(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a4 = v5;
}

uint64_t (*PerformanceTestModel.startWorkoutActivity.modify(uint64_t *a1))()
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
  return PerformanceTestModel.startWorkoutActivity.modify;
}

uint64_t key path setter for PerformanceTestModel.$startWorkoutActivity : PerformanceTestModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t PerformanceTestModel.$startWorkoutActivity.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PerformanceTestModel.$startWorkoutActivity.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
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

  v10 = OBJC_IVAR___WOPerformanceTestModel__startWorkoutActivity;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PerformanceTestModel.$startWorkoutActivity.modify;
}

uint64_t (*PerformanceTestModel.startWorkoutAtRow.modify(uint64_t *a1))()
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
  return PerformanceTestModel.startWorkoutAtRow.modify;
}

uint64_t key path setter for PerformanceTestModel.$startLastWorkout : PerformanceTestModel(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMd, &_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12, a1, v6, v11);
  (v14)(v9, v13, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCSgGMd, &_s7Combine9PublishedVySo8NSNumberCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t PerformanceTestModel.$startLastWorkout.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMd, &_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCSgGMd, &_s7Combine9PublishedVySo8NSNumberCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*PerformanceTestModel.$startWorkoutAtRow.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMd, &_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMR);
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

  v10 = OBJC_IVAR___WOPerformanceTestModel__startWorkoutAtRow;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCSgGMd, &_s7Combine9PublishedVySo8NSNumberCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PerformanceTestModel.$startWorkoutAtRow.modify;
}

id @objc PerformanceTestModel.startWorkoutActivity.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  static Published.subscript.getter(&v8);

  v6 = v8;

  return v6;
}

uint64_t PerformanceTestModel.startWorkoutActivity.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t @objc PerformanceTestModel.startWorkoutActivity.setter(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = a3;
  v8 = a1;
  return static Published.subscript.setter();
}

uint64_t PerformanceTestModel.startWorkoutActivity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t key path setter for PerformanceTestModel.startWorkoutActivity : PerformanceTestModel(void **a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v6;
  v9 = v7;
  return static Published.subscript.setter();
}

uint64_t (*PerformanceTestModel.startLastWorkout.modify(uint64_t *a1))()
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
  return PerformanceTestModel.startLastWorkout.modify;
}

void PerformanceTestModel.startWorkoutActivity.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for PerformanceTestModel.$startWorkoutActivity : PerformanceTestModel(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t PerformanceTestModel.$startWorkoutActivity.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t (*PerformanceTestModel.$startLastWorkout.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMd, &_s7Combine9PublishedV9PublisherVySo8NSNumberCSg_GMR);
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

  v10 = OBJC_IVAR___WOPerformanceTestModel__startLastWorkout;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo8NSNumberCSgGMd, &_s7Combine9PublishedVySo8NSNumberCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PerformanceTestModel.$startLastWorkout.modify;
}

void PerformanceTestModel.$startWorkoutActivity.modify(uint64_t a1, char a2)
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

id PerformanceTestModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PerformanceTestModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance PerformanceTestModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PerformanceTestModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

char *MetricNavigationTracker.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = specialized MetricNavigationTracker.init(eventHub:)(a1, a2);
  swift_unknownObjectRelease();
  return v4;
}

char *MetricNavigationTracker.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v2 = specialized MetricNavigationTracker.init(eventHub:)(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t closure #1 in MetricNavigationTracker.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MetricPage();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    MetricPageChangeOccurred.page.getter();
    MetricNavigationTracker.handleMetricPageChangeOccurred(_:)(v5);

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

double closure #2 in MetricNavigationTracker.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_isBackNavigation) = 1;
  }

  return result;
}

uint64_t MetricNavigationTracker.handleMetricPageChangeOccurred(_:)(uint64_t a1)
{
  v76 = a1;
  v2 = type metadata accessor for MetricClickStreamOccurred();
  v3 = *(v2 - 8);
  v74 = v2;
  v75 = v3;
  MEMORY[0x28223BE20](v2);
  v73 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetricIdentifier();
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGSgMd, &_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore17MetricEnvironmentVSgMd, &_s11SeymourCore17MetricEnvironmentVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricGroupActivityVSgMd, &_s11SeymourCore19MetricGroupActivityVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore19MetricBadgingCountsVSgMd, &_s11SeymourCore19MetricBadgingCountsVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v54 - v14;
  v61 = type metadata accessor for MetricClickStreamType();
  v15 = *(v61 - 1);
  MEMORY[0x28223BE20](v61);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for MetricClickStream();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v54 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd, &_s11SeymourCore10MetricPageVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v62 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v54 - v24;
  v26 = type metadata accessor for MetricNavigationDirection();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1 + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_lastPageViewed;
  swift_beginAccess();
  v67 = v30;
  outlined init with copy of MetricPage?(v30, v25);
  v31 = type metadata accessor for MetricPage();
  v32 = *(v31 - 8);
  v33 = v31;
  v34 = (*(v32 + 48))(v25, 1);
  outlined destroy of MetricPage?(v25);
  if (v34 == 1)
  {
    v35 = MEMORY[0x277D52E00];
  }

  else if (*(v1 + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_isBackNavigation) == 1)
  {
    *(v1 + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_isBackNavigation) = 0;
    v35 = MEMORY[0x277D52E10];
  }

  else
  {
    v35 = MEMORY[0x277D52E08];
  }

  v36 = *v35;
  v60 = v27;
  v37 = *(v27 + 104);
  v58 = v29;
  v59 = v26;
  v37(v29, v36, v26);
  (*(v27 + 16))(v17, v29, v26);
  (*(v15 + 104))(v17, *MEMORY[0x277D52118], v61);
  v38 = *(v32 + 16);
  v57 = v32 + 16;
  v61 = v38;
  v39 = v62;
  v55 = v33;
  v38(v62, v76, v33);
  v56 = *(v32 + 56);
  v56(v39, 0, 1, v33);
  v40 = type metadata accessor for MetricBadgingCounts();
  (*(*(v40 - 8) + 56))(v63, 1, 1, v40);
  v41 = type metadata accessor for MetricGroupActivity();
  (*(*(v41 - 8) + 56))(v66, 1, 1, v41);
  v42 = v69;
  static MetricEnvironment.current()();
  v43 = type metadata accessor for MetricEnvironment();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGMd, &_s11SeymourCore12PortableEnumOyAA16MetricDeviceTypeOGMR);
  (*(*(v44 - 8) + 56))(v71, 1, 1, v44);
  v45 = type metadata accessor for MetricRemoteIdentifier();
  (*(*(v45 - 8) + 56))(v72, 1, 1, v45);
  v46 = v64;
  MetricClickStream.init(type:page:identifier:badgingCounts:groupActivity:environment:remoteParticipantDeviceType:topicRoutingBehavior:metadata:)();
  v47 = v68;
  v48 = v70;
  (*(v68 + 16))(v65, v46, v70);
  v49 = v73;
  MetricClickStreamOccurred.init(_:)();
  swift_getObjectType();
  lazy protocol witness table accessor for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred(&lazy protocol witness table cache variable for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v50 = v74;
  dispatch thunk of EventHubProtocol.publish<A>(_:)();
  (*(v75 + 8))(v49, v50);
  (*(v47 + 8))(v46, v48);
  (*(v60 + 8))(v58, v59);
  v51 = v55;
  v61(v39, v76, v55);
  v56(v39, 0, 1, v51);
  v52 = v67;
  swift_beginAccess();
  outlined assign with take of MetricPage?(v39, v52);
  return swift_endAccess();
}

uint64_t MetricNavigationTracker.deinit()
{
  swift_unknownObjectRelease();

  outlined destroy of MetricPage?(v0 + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_lastPageViewed);
  return v0;
}

uint64_t MetricNavigationTracker.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  outlined destroy of MetricPage?(v0 + OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_lastPageViewed);

  return swift_deallocClassInstance();
}

char *specialized MetricNavigationTracker.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_lastPageViewed;
  v7 = type metadata accessor for MetricPage();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *(v3 + 2) = a1;
  *(v3 + 3) = a2;
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v3 + 4) = SubscriptionToken.init(eventHub:)();
  v3[OBJC_IVAR____TtC9WorkoutUI23MetricNavigationTracker_isBackNavigation] = 0;
  swift_getObjectType();
  type metadata accessor for MetricPageChangeOccurred();
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred(&lazy protocol witness table cache variable for type MetricPageChangeOccurred and conformance MetricPageChangeOccurred, MEMORY[0x277D54270], MEMORY[0x277D54268]);

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  __swift_destroy_boxed_opaque_existential_1(v9);
  type metadata accessor for MetricBackNavigationOccurred();
  swift_allocObject();
  swift_weakInit();

  lazy protocol witness table accessor for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred(&lazy protocol witness table cache variable for type MetricBackNavigationOccurred and conformance MetricBackNavigationOccurred, MEMORY[0x277D54388], MEMORY[0x277D54380]);
  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v3;
}

uint64_t outlined destroy of MetricPage?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd, &_s11SeymourCore10MetricPageVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for MetricNavigationTracker(uint64_t a1)
{
  result = type metadata singleton initialization cache for MetricNavigationTracker;
  if (!type metadata singleton initialization cache for MetricNavigationTracker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MetricNavigationTracker(uint64_t a1)
{
  type metadata accessor for MetricPage?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined init with copy of MetricPage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd, &_s11SeymourCore10MetricPageVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of MetricPage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore10MetricPageVSgMd, &_s11SeymourCore10MetricPageVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type MetricClickStreamOccurred and conformance MetricClickStreamOccurred(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PreviewStepMetricView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for PreviewStepMetricView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PreviewStepMetricView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t x0_0@<X0>)
{
  closure #1 in PreviewStepMetricView.body.getter(x0_0);
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGMR) + 36));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v10 = *MEMORY[0x277CE1058];
  v11 = type metadata accessor for Image.Scale();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v13 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGMR) + 36));
  *v13 = KeyPath;
  v13[1] = a1;
  v14 = one-time initialization token for previewWidth;

  if (v14 != -1)
  {
    swift_once();
  }

  if (one-time initialization token for stepViewMaxHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGMR) + 36));
  *v15 = v28;
  v15[1] = v29;
  v15[2] = v30;
  v16 = Color.opacity(_:)();
  v17 = static Edge.Set.all.getter();
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGMR) + 36);
  *v18 = v16;
  *(v18 + 8) = v17;
  v19 = swift_getKeyPath();
  v20 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGMR) + 36));
  *v20 = v19;
  v20[1] = a2;
  v21 = one-time initialization token for cornerSize;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = static IntervalPlatterConstants.cornerSize;
  v23 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36));
  v24 = *(type metadata accessor for RoundedRectangle() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = type metadata accessor for RoundedCornerStyle();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = v22;
  v23[1] = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR);
  *(v23 + *(result + 36)) = 256;
  return result;
}

void closure #1 in PreviewStepMetricView.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGAGyAiA31AccessibilityAttachmentModifierVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGAGyAiA31AccessibilityAttachmentModifierVG_GMR);
  MEMORY[0x28223BE20](v9);
  v11 = &v25[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
  MEMORY[0x28223BE20](v12);
  v14 = &v25[-v13];
  if (a1)
  {

    WorkoutStep.stepType.getter();
    (*(v3 + 16))(v5, v8, v2);
    v15 = (*(v3 + 88))(v5, v2);
    if (v15 == *MEMORY[0x277D7E710] || v15 == *MEMORY[0x277D7E708] || v15 == *MEMORY[0x277D7E718] || v15 == *MEMORY[0x277D7E720])
    {
      (*(v3 + 8))(v8, v2);
      v16 = Image.init(_internalSystemName:)();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20CB5DA80;
      v18 = static Edge.Set.leading.getter();
      *(inited + 32) = v18;
      v19 = static Edge.Set.trailing.getter();
      *(inited + 33) = v19;
      v20 = Edge.Set.init(rawValue:)();
      Edge.Set.init(rawValue:)();
      if (Edge.Set.init(rawValue:)() != v18)
      {
        v20 = Edge.Set.init(rawValue:)();
      }

      Edge.Set.init(rawValue:)();
      if (Edge.Set.init(rawValue:)() != v19)
      {
        v20 = Edge.Set.init(rawValue:)();
      }

      EdgeInsets.init(_all:)();
      *v11 = v16;
      v11[8] = v20;
      *(v11 + 2) = v21;
      *(v11 + 3) = v22;
      *(v11 + 4) = v23;
      *(v11 + 5) = v24;
      v11[48] = 0;
      swift_storeEnumTagMultiPayload();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMR);
      lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    v26 = Image.init(systemName:)();
    View.accessibilityHidden(_:)();

    outlined init with copy of ModifiedContent<Image, AccessibilityAttachmentModifier>(v14, v11);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<Image, AccessibilityAttachmentModifier>(v14);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA14_PaddingLayoutVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<Image, AccessibilityAttachmentModifier>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA31AccessibilityAttachmentModifierVGMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGASyA7_SgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGAA016_BackgroundStyleL0VyAA5ColorVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Color> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout>, _BackgroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGAA06_FrameI0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGASyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyACyAA5ImageVAA14_PaddingLayoutVGACyAiA31AccessibilityAttachmentModifierVGGGAA022_EnvironmentKeyWritingL0VyAI5ScaleOGGMR);
    lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Image.Scale> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>>, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>()
{
  result = lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>;
  if (!lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA14_PaddingLayoutVGAGyAiA31AccessibilityAttachmentModifierVGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA08ModifiedE0VyAA5ImageVAA14_PaddingLayoutVGAGyAiA31AccessibilityAttachmentModifierVGGGMR);
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Group<_ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>>> and conformance <A> Group<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGAEyAgA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA5ImageVAA14_PaddingLayoutVGAEyAgA31AccessibilityAttachmentModifierVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Image, _PaddingLayout>, ModifiedContent<Image, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

id AssetBundleBridge.__allocating_init(assetBundle:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___SMAssetBundle_assetBundle;
  v5 = type metadata accessor for AssetBundle();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

unint64_t static AssetBundleBridge.bundleReasonBridge(for:)(char a1, char a2)
{
  if (a2 == -1 || (a2 & 1) == 0)
  {
    return 2;
  }

  result = AssetBundle.Reason.rawValue.getter();
  if (result >= 2)
  {
    return 2;
  }

  return result;
}

id @objc AssetBundleBridge.identifier.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x20F30BAD0](v5, v7);

  return v8;
}

uint64_t AssetBundleBridge.loadStatus.getter(uint64_t a1)
{
  v1 = AssetBundle.loadStatus.getter();
  if (v2)
  {
    return qword_20CB86710[v1];
  }

  else
  {
    return 6;
  }
}

unint64_t AssetBundleBridge.reason.getter(uint64_t a1)
{
  AssetBundle.reason.getter();
  if ((v1 & 1) == 0)
  {
    return 2;
  }

  result = AssetBundle.Reason.rawValue.getter();
  if (result >= 2)
  {
    return 2;
  }

  return result;
}

id AssetBundleBridge.init(assetBundle:)(uint64_t a1, double a2)
{
  v4 = OBJC_IVAR___SMAssetBundle_assetBundle;
  v5 = type metadata accessor for AssetBundle();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v2[v4], a1, v5);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for AssetBundleBridge(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

uint64_t type metadata accessor for AssetBundleBridge(uint64_t a1)
{
  result = type metadata singleton initialization cache for AssetBundleBridge;
  if (!type metadata singleton initialization cache for AssetBundleBridge)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AssetBundleBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AssetBundleBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssetBundleBridge(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata completion function for AssetBundleBridge(uint64_t a1)
{
  result = type metadata accessor for AssetBundle();
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

char *GuidedWorkoutBackgroundView.init(cornerRadius:)(double a1)
{
  v3 = OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v4 = &v1[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *&v1[OBJC_IVAR___SMGuidedWorkoutBackgroundView_gradientLayer] = 0;
  *&v1[OBJC_IVAR___SMGuidedWorkoutBackgroundView_vignetteView] = 0;
  *&v1[OBJC_IVAR___SMGuidedWorkoutBackgroundView_cornerRadius] = a1;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for GuidedWorkoutBackgroundView();
  v5 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView;
  v7 = *&v5[OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView];
  v8 = v5;
  [v7 setContentMode_];
  [*&v5[v6] setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = *&v5[v6];
  v10 = v8;
  [v10 addSubview_];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20CB61A30;
  v13 = [*&v5[v6] leadingAnchor];
  v14 = [v10 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [*&v5[v6] trailingAnchor];
  v17 = [v10 trailingAnchor];

  v18 = [v16 constraintEqualToAnchor_];
  *(v12 + 40) = v18;
  v19 = [*&v5[v6] topAnchor];
  v20 = [v10 topAnchor];

  v21 = [v19 constraintEqualToAnchor_];
  *(v12 + 48) = v21;
  v22 = [*&v5[v6] bottomAnchor];
  v23 = [v10 bottomAnchor];

  v24 = [v22 constraintEqualToAnchor_];
  *(v12 + 56) = v24;
  type metadata accessor for NSLayoutConstraint(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 activateConstraints_];

  return v10;
}

Swift::Void __swiftcall GuidedWorkoutBackgroundView.layoutSubviews()()
{
  [v0 bounds];
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = 0.0;
  v29.size.height = 0.0;
  if (!CGRectEqualToRect(v27, v29))
  {
    v1 = &v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds];
    v2 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds];
    v3 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds + 8];
    v4 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds + 16];
    v5 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_currentBounds + 24];
    [v0 bounds];
    v30.origin.x = v6;
    v30.origin.y = v7;
    v30.size.width = v8;
    v30.size.height = v9;
    v28.origin.x = v2;
    v28.origin.y = v3;
    v28.size.width = v4;
    v28.size.height = v5;
    if (!CGRectEqualToRect(v28, v30))
    {
      [v0 bounds];
      *v1 = v10;
      *(v1 + 1) = v11;
      *(v1 + 2) = v12;
      *(v1 + 3) = v13;
      v14 = objc_opt_self();
      [v14 begin];
      [v14 setDisableActions_];
      v15 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_gradientLayer];
      if (v15)
      {
        v16 = v15;
        [v0 bounds];
        [v16 setFrame_];
      }

      v17 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView];
      v18 = [v17 image];
      if (!v18 || (v19 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_cornerRadius], [v0 bounds], (v24 = UIImage.withRoundedCorners(_:in:)(v19, v20, v21, v22, v23)) == 0))
      {
        v25 = v18;
        v24 = v18;
      }

      [v17 setImage_];

      [v14 commit];
    }
  }
}

Swift::Void __swiftcall GuidedWorkoutBackgroundView.update(image:with:)(UIImage_optional image, NSNumber_optional with)
{
  v3 = v2;
  v4 = *&image.is_nil;
  isa = image.value.super.isa;
  v6 = *&v3[OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView];
  if (!image.value.super.isa || (v7 = *&v3[OBJC_IVAR___SMGuidedWorkoutBackgroundView_cornerRadius], [v3 bounds], (v12 = UIImage.withRoundedCorners(_:in:)(v7, v8, v9, v10, v11)) == 0))
  {
    v12 = isa;
  }

  v13 = v12;
  [v6 setImage_];

  if (!v4 || (v14 = specialized CatalogMediaTypeBridge.init(rawValue:)([v4 integerValue]), (v15 & 1) != 0))
  {
    if (isa)
    {
LABEL_7:

      GuidedWorkoutBackgroundView.applyDefaultStyle()();
      return;
    }

    goto LABEL_16;
  }

  if (!isa)
  {
LABEL_16:
    v16 = *&v3[OBJC_IVAR___SMGuidedWorkoutBackgroundView_gradientLayer];
    if (v16)
    {
      [v16 setHidden_];
    }

    v17 = *&v3[OBJC_IVAR___SMGuidedWorkoutBackgroundView_vignetteView];
    if (v17)
    {

      [v17 setHidden_];
    }

    return;
  }

  if ((v14 - 3) < 2)
  {
    return;
  }

  if (v14 != 2)
  {
    if (v14 != 1)
    {
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    goto LABEL_7;
  }

  GuidedWorkoutBackgroundView.applyVignettedStyle()();
}

Swift::Void __swiftcall GuidedWorkoutBackgroundView.update(with:)(UIUserInterfaceActiveAppearance with)
{
  v2 = *(v1 + OBJC_IVAR___SMGuidedWorkoutBackgroundView_vignetteView);
  if (v2)
  {
    v4 = v2;
    VignetteView.update(with:)(with);
  }
}

id GuidedWorkoutBackgroundView.applyDefaultStyle()(uint64_t *a1, uint64_t (*a2)(void), void *a3)
{
  v5 = *a1;
  v6 = *(v3 + *a1);
  if (v6)
  {
    v7 = *(v3 + *a1);
    v8 = v7;
  }

  else
  {
    v8 = a2();
    v7 = 0;
    v6 = *(v3 + v5);
  }

  *(v3 + v5) = v8;
  v9 = v8;
  v10 = v7;

  [v9 setHidden_];
  result = *(v3 + *a3);
  if (result)
  {

    return [result setHidden_];
  }

  return result;
}

id GuidedWorkoutBackgroundView.makeGradientLayer()()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v3 = [v0 traitCollection];
  [v3 activeAppearance];

  v4 = specialized static UIColor.drewPlatterGradientColors(activeAppearance:)();
  specialized _arrayForceCast<A, B>(_:)(v4);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setColors_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20CB761F0;
  type metadata accessor for NSLayoutConstraint(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(v6 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v6 + 40) = NSNumber.init(floatLiteral:)(0.45);
  *(v6 + 48) = NSNumber.init(floatLiteral:)(1.0);
  v7 = Array._bridgeToObjectiveC()().super.isa;

  [v2 setLocations_];

  [v2 setStartPoint_];
  [v2 setEndPoint_];
  v8 = *MEMORY[0x277CDA5D8];
  v9 = objc_allocWithZone(MEMORY[0x277CD9EA0]);
  v10 = v2;
  v11 = [v9 initWithType_];
  [v10 setCompositingFilter_];

  v12 = [v1 layer];
  [v12 addSublayer_];

  return v10;
}

id GuidedWorkoutBackgroundView.makeVignetteView()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___SMGuidedWorkoutBackgroundView_cornerRadius];
  v3 = objc_allocWithZone(type metadata accessor for VignetteView());
  v4 = VignetteView.init(cornerRadius:)(v2);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 addSubview_];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_20CB61A30;
  v7 = [v4 leadingAnchor];
  v8 = *&v1[OBJC_IVAR___SMGuidedWorkoutBackgroundView_imageView];
  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v10;
  v11 = [v4 trailingAnchor];
  v12 = [v8 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v6 + 40) = v13;
  v14 = [v4 topAnchor];
  v15 = [v8 topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v6 + 48) = v16;
  v17 = [v4 bottomAnchor];

  v18 = [v8 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor_];

  *(v6 + 56) = v19;
  type metadata accessor for NSLayoutConstraint(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints_];

  return v4;
}

id GuidedWorkoutBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GuidedWorkoutBackgroundView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedWorkoutBackgroundView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NSLayoutConstraint(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t getEnumTagSinglePayload for PacePickerViewPhone(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for PacePickerViewPhone(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t closure #1 in PacePickerViewPhone.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = a3;
  v99 = a5;
  v84 = type metadata accessor for WheelPickerStyle();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMR);
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v77 - v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
  MEMORY[0x28223BE20](v79);
  v78 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v98 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v94 = &v77 - v15;
  v16 = type metadata accessor for BorderedButtonStyle();
  v17 = *(v16 - 8);
  v88 = v16;
  v89 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  MEMORY[0x28223BE20](v20);
  v22 = &v77 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0G0VyAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedgE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0G0VyAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedgE0VQo_MR);
  v24 = *(v23 - 8);
  v90 = v23;
  v91 = v24;
  MEMORY[0x28223BE20](v23);
  v85 = &v77 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0L0VyANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedlJ0VQo__Qo_Md, &_s7SwiftUI4ViewPAAE12onTapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonJ0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0L0VyANGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedlJ0VQo__Qo_MR);
  v27 = *(v26 - 8);
  v92 = v26;
  v93 = v27;
  MEMORY[0x28223BE20](v26);
  v87 = &v77 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE0D10TapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0O0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedoM0VQo__Qo__SiQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE0D10TapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0O0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedoM0VQo__Qo__SiQo_MR);
  v96 = *(v29 - 8);
  v97 = v29;
  MEMORY[0x28223BE20](v29);
  v95 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v100 = &v77 - v32;
  *v22 = static VerticalAlignment.center.getter();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v33 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAKGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR) + 44)];
  v34 = v6;
  v86 = v6;
  closure #1 in closure #1 in PacePickerViewPhone.body.getter(a1, a2, v6, a4, v33);
  BorderedButtonStyle.init()();
  v35 = lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Text, Spacer, ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR, MEMORY[0x277CE1138]);
  v36 = _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_2(&lazy protocol witness table cache variable for type BorderedButtonStyle and conformance BorderedButtonStyle, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v37 = v20;
  v38 = v88;
  View.buttonStyle<A>(_:)();
  (*(v89 + 8))(v19, v38);
  _s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGWOhTm_0(v22, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGMR);
  v39 = swift_allocObject();
  *(v39 + 16) = a1;
  *(v39 + 24) = a2;
  *(v39 + 32) = v34;
  *(v39 + 40) = a4;
  v40 = a4;

  v103 = v37;
  v104 = v38;
  v105 = v35;
  v106 = v36;
  v41 = a1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v87;
  v44 = v90;
  v45 = v85;
  View.onTapGesture(count:perform:)();

  v46 = v44;
  (*(v91 + 8))(v45, v44);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v103);

  *&v101 = v103;
  v47 = swift_allocObject();
  v91 = v41;
  *(v47 + 16) = v41;
  *(v47 + 24) = a2;
  LOBYTE(v44) = v86;
  *(v47 + 32) = v86;
  *(v47 + 40) = v40;
  v89 = a2;

  v103 = v46;
  v104 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v48 = v92;
  View.onChange<A>(of:initial:_:)();

  v49 = v94;
  (*(v93 + 8))(v43, v48);
  LOBYTE(v103) = v44;
  v104 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v50 = 1;
  if (v101 == 1)
  {
    v51 = type metadata accessor for PacePickerViewModel(0);
    v52 = _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_2(&lazy protocol witness table cache variable for type PacePickerViewModel and conformance PacePickerViewModel, type metadata accessor for PacePickerViewModel, &protocol conformance descriptor for PacePickerViewModel);
    v53 = v91;
    v54 = v89;
    MEMORY[0x20F308920](v91, v89, v51, v52);
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    *&v56 = MEMORY[0x28223BE20](v55);
    *(&v77 - 4) = v53;
    *(&v77 - 3) = v54;
    v101 = v56;
    v102 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMd, _s7SwiftUI7ForEachVySaySiGSiAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GMR);
    v58 = lazy protocol witness table accessor for type ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0> and conformance <> ForEach<A, B, C>();
    v75 = MEMORY[0x277D83B98];
    v76 = v58;
    v59 = v77;
    Picker.init(selection:label:content:)();
    v60 = v82;
    WheelPickerStyle.init()();
    lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, Int, ForEach<[Int], Int, <<opaque return type of View.tag<A>(_:includeOptional:)>>.0>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMd, &_s7SwiftUI6PickerVyAA9EmptyViewVSiAA7ForEachVySaySiGSiAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GGMR, MEMORY[0x277CDF038]);
    v61 = v78;
    v62 = v81;
    v63 = v84;
    View.pickerStyle<A>(_:)();
    (*(v83 + 8))(v60, v63);
    (*(v80 + 8))(v59, v62);
    static Edge.Set.top.getter();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, HideListRowSeparator> and conformance <> ModifiedContent<A, B>();
    View.listRowInsets(_:_:)();
    outlined destroy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v61, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelhG0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
    v50 = 0;
  }

  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_Md, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_MR);
  (*(*(v64 - 8) + 56))(v49, v50, 1, v64);
  v66 = v95;
  v65 = v96;
  v67 = *(v96 + 16);
  v68 = v100;
  v69 = v97;
  v67(v95, v100, v97);
  v70 = v98;
  sub_20C6947BC(v49, v98);
  v71 = v99;
  v67(v99, v66, v69);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE0D10TapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0O0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedoM0VQo__Qo__SiQo__AcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAcAE06pickerM0yQrqd__AA06PickerM0Rd__lFQOyAA6PickerVyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SiQo_GG_AA011WheelPickerM0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtMd, _s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAE0D10TapGesture5count7performQrSi_yyctFQOyAcAE11buttonStyleyQrqd__AA015PrimitiveButtonM0Rd__lFQOyAA6HStackVyAA05TupleC0VyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0O0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedoM0VQo__Qo__SiQo__AcAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAcAE06pickerM0yQrqd__AA06PickerM0Rd__lFQOyAA6PickerVyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SiQo_GG_AA011WheelPickerM0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtMR);
  sub_20C6947BC(v70, &v71[*(v72 + 48)]);
  outlined destroy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v49, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMR);
  v73 = *(v65 + 8);
  v73(v68, v69);
  outlined destroy of (<<opaque return type of View.listRowInsets(_:_:)>>.0)?(v70, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMd, &_s7SwiftUI4ViewPAAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA05EmptyC0VSiAA7ForEachVySaySiGSiAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_GG_AA05WheelpO0VQo_07WorkoutB008HideListE9Separator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgMR);
  return (v73)(v66, v69);
}

double closure #1 in closure #1 in PacePickerViewPhone.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA4TextVGMd, &_s7SwiftUI6ButtonVyAA4TextVGMR);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35[-v11];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v37);
  v38 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v35[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v35[-v18];
  v20 = *(a2 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerTitle + 8);
  v48 = *(a2 + OBJC_IVAR____TtC9WorkoutUI19PacePickerViewModel_pickerTitle);
  v49 = v20;
  lazy protocol witness table accessor for type String and conformance String();

  v39 = Text.init<A>(_:)();
  v40 = v21;
  v23 = v22;
  v36 = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  v43 = a1;
  v44 = a2;
  v45 = a3;
  v46 = a4;

  Button.init(action:label:)();
  LOBYTE(v48) = a3;
  v49 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if (v47 == 1)
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    v26 = Color.init(uiColor:)();
  }

  else
  {
    v26 = static Color.white.getter();
  }

  v27 = v26;
  KeyPath = swift_getKeyPath();
  (*(v41 + 32))(v16, v12, v42);
  v29 = &v16[*(v37 + 36)];
  *v29 = KeyPath;
  v29[1] = v27;
  outlined init with take of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v16, v19);
  v30 = v38;
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v19, v38);
  v32 = v39;
  v31 = v40;
  *a5 = v39;
  *(a5 + 8) = v23;
  LOBYTE(v27) = v36 & 1;
  *(a5 + 16) = v36 & 1;
  *(a5 + 24) = v31;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyACGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtMd, &_s7SwiftUI4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyACGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtMR);
  outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(v30, a5 + *(v33 + 64));
  outlined copy of Text.Storage(v32, v23, v27);

  _s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGWOhTm_0(v19, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  _s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGWOhTm_0(v30, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA4TextVGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGMR);
  outlined consume of Text.Storage(v32, v23, v27);

  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in PacePickerViewPhone.body.getter@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

double closure #1 in closure #1 in closure #1 in PacePickerViewPhone.body.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, double a6)
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  return result;
}

double closure #1 in closure #1 in closure #1 in closure #1 in PacePickerViewPhone.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  State.wrappedValue.setter();

  return result;
}

uint64_t closure #4 in closure #1 in PacePickerViewPhone.body.getter(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_Md, &_s7SwiftUI4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_SiQo_MR);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type [Int] and conformance [A], &_sSaySiGMd, &_sSaySiGMR, MEMORY[0x277D83980]);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t closure #1 in closure #4 in closure #1 in PacePickerViewPhone.body.getter@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  PacePickerViewModel.paceDisplayString(pace:)(*a1);
  lazy protocol witness table accessor for type String and conformance String();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 40) = 1;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance PacePickerViewPhone()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE0E10TapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0P0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedpN0VQo__Qo__SiQo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAeAE06pickerN0yQrqd__AA06PickerN0Rd__lFQOyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SiQo_GG_AA011WheelPickerN0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE0E10TapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0P0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedpN0VQo__Qo__SiQo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAeAE06pickerN0yQrqd__AA06PickerN0Rd__lFQOyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SiQo_GG_AA011WheelPickerN0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMR);
  lazy protocol witness table accessor for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.listRowInsets(_:_:)>>.0)?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE0E10TapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0P0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedpN0VQo__Qo__SiQo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAeAE06pickerN0yQrqd__AA06PickerN0Rd__lFQOyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SiQo_GG_AA011WheelPickerN0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAE0E10TapGesture5count7performQrSi_yyctFQOyAeAE11buttonStyleyQrqd__AA015PrimitiveButtonN0Rd__lFQOyAA6HStackVyACyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA0P0VyAQGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGG_AA08BorderedpN0VQo__Qo__SiQo__AeAE13listRowInsetsyQrAA4EdgeO3SetV_12CoreGraphics7CGFloatVSgtFQOyAUyAeAE06pickerN0yQrqd__AA06PickerN0Rd__lFQOyAA6PickerVyAA05EmptyD0VSiAA7ForEachVySaySiGSiAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAQ_SiQo_GG_AA011WheelPickerN0VQo_07WorkoutB020HideListRowSeparator33_A607961C6E65DD4DD1C2818C5FE69B58LLVG_Qo_SgtGMR, MEMORY[0x277CE14C0]);
  return Section<>.init(content:)();
}

uint64_t _s7SwiftUI19BorderedButtonStyleVAcA09PrimitivedE0AAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_78()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI6HStackVyAA9TupleViewVyAA4TextV_AA6SpacerVAA15ModifiedContentVyAA6ButtonVyAGGAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGtGGWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for EffortValueButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EffortValueButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t one-time initialization function for levelSymbolFont(uint64_t a1)
{
  result = static Font.title2.getter();
  static EffortValueButton.Layout.levelSymbolFont = result;
  return result;
}

uint64_t one-time initialization function for explanationFont(uint64_t a1)
{
  result = static Font.title2.getter();
  static EffortValueButton.Layout.explanationFont = result;
  return result;
}

uint64_t EffortValueButton.symbolImage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  MEMORY[0x28223BE20](v1);
  v3 = (v17 - v2);
  if (*(v0 + 24))
  {
    v4 = Image.init(_internalSystemName:)();
    v5 = (v3 + *(v1 + 36));
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v7 = *MEMORY[0x277CE1058];
    v8 = type metadata accessor for Image.Scale();
    (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
    *v5 = swift_getKeyPath();
    *v3 = v4;
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    View.accessibilityHidden(_:)();
  }

  else
  {
    v17[1] = *v0;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v9;
    MEMORY[0x20F30BC00](0x2E656C637269632ELL, 0xEC0000006C6C6966);
    v10 = Image.init(systemName:)();
    v11 = (v3 + *(v1 + 36));
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v13 = *MEMORY[0x277CE1048];
    v14 = type metadata accessor for Image.Scale();
    (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
    *v11 = swift_getKeyPath();
    *v3 = v10;
    v18 = Int.localizedString.getter();
    v19 = v15;
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type String and conformance String();
    View.accessibilityLabel<A>(_:)();
  }

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v3, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
}

uint64_t closure #2 in EffortValueButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IdentityTransition();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGMR);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = v26 - v17;
  *v14 = static VerticalAlignment.center.getter();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA19_ConditionalContentVyAA05TupleD0VyAA08ModifiedI0VyAMyAMyAMyAMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentP0VGATGAA17_FlipForRTLEffectVGAQyAA19SymbolRenderingModeVSgGGAQyAA4FontVSgGGAA08_PaddingG0VG_AMyAMyAMyAMyAA4TextVAQy12CoreGraphics7CGFloatVGGA12_GA12_GAQyAA0I10TransitionVGGAA6SpacerVAMyAMyAMyAOA9_GAA016_ForegroundStyleP0VyAA22HierarchicalShapeStyleVGGA12_GSgtGAKyAMyAMyAMyAUA9_GAA14_OpacityEffectVGAA010_FlexFrameG0VG_AMyAMyAMyAMyAMyA15_A12_GA19_GAQySiSgGG07WorkoutB017HeaderHyphenationVGAQyAA13TextAlignmentOGGtGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA19_ConditionalContentVyAA05TupleD0VyAA08ModifiedI0VyAMyAMyAMyAMyAMyAMyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAO5ScaleOGGAA023AccessibilityAttachmentP0VGATGAA17_FlipForRTLEffectVGAQyAA19SymbolRenderingModeVSgGGAQyAA4FontVSgGGAA08_PaddingG0VG_AMyAMyAMyAMyAA4TextVAQy12CoreGraphics7CGFloatVGGA12_GA12_GAQyAA0I10TransitionVGGAA6SpacerVAMyAMyAMyAOA9_GAA016_ForegroundStyleP0VyAA22HierarchicalShapeStyleVGGA12_GSgtGAKyAMyAMyAMyAUA9_GAA14_OpacityEffectVGAA010_FlexFrameG0VG_AMyAMyAMyAMyAMyA15_A12_GA19_GAQySiSgGG07WorkoutB017HeaderHyphenationVGAQyAA13TextAlignmentOGGtGGGMR);
  closure #1 in closure #2 in EffortValueButton.body.getter(a1, &v14[*(v19 + 44)]);
  IdentityTransition.init()();
  (*(v5 + 16))(v7, v10, v4);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_7(&lazy protocol witness table cache variable for type IdentityTransition and conformance IdentityTransition, MEMORY[0x277CE0100], MEMORY[0x277CE00F8]);
  v20 = AnyTransition.init<A>(_:)();
  (*(v5 + 8))(v10, v4);
  *&v14[*(v12 + 44)] = v20;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFra(v14, v18, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGMR);
  v21 = &v18[*(v16 + 44)];
  v22 = v26[5];
  *(v21 + 4) = v26[4];
  *(v21 + 5) = v22;
  *(v21 + 6) = v26[6];
  v23 = v26[1];
  *v21 = v26[0];
  *(v21 + 1) = v23;
  v24 = v26[3];
  *(v21 + 2) = v26[2];
  *(v21 + 3) = v24;
  outlined init with take of ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFra(v18, a2, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GA47_022EffortButtonBackgroundM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GA47_022EffortButtonBackgroundM0VGMR);
  *(a2 + *(result + 36)) = 0x402C000000000000;
  return result;
}

uint64_t closure #1 in closure #2 in EffortValueButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v173 = a2;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMR);
  MEMORY[0x28223BE20](v172);
  v4 = &v165 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGMR);
  MEMORY[0x28223BE20](v5);
  v7 = (&v165 - v6);
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMR);
  MEMORY[0x28223BE20](v165);
  v174 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v165 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v165 - v13;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_AIyAIyAIyAIyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVAIyAIyAIyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAGyAIyAIyAIyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_AIyAIyAIyAIyAIyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA08ModifiedD0VyAIyAIyAIyAIyAIyAIyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_AIyAIyAIyAIyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVAIyAIyAIyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAGyAIyAIyAIyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_AIyAIyAIyAIyAIyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtG_GMR);
  MEMORY[0x28223BE20](v169);
  v171 = &v165 - v15;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMR);
  MEMORY[0x28223BE20](v170);
  v168 = &v165 - v16;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMR);
  MEMORY[0x28223BE20](v166);
  v167 = &v165 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v165 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMR);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v25 = &v165 - v24;
  if (*a1 > 0 || (*(a1 + 24) & 1) != 0)
  {
    v165 = v23;
    EffortValueButton.symbolImage.getter();
    v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGMR) + 36)];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v28 = *MEMORY[0x277CE1048];
    v29 = type metadata accessor for Image.Scale();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    LOBYTE(v26) = *(a1 + 24);
    v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGMR) + 36)] = v26;
    v30 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGMR) + 36)];
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA19SymbolRenderingModeVSgGMR) + 28);
    static SymbolRenderingMode.hierarchical.getter();
    v32 = type metadata accessor for SymbolRenderingMode();
    (*(*(v32 - 8) + 56))(v30 + v31, 0, 1, v32);
    *v30 = swift_getKeyPath();
    v33 = v25;
    if (one-time initialization token for levelSymbolFont != -1)
    {
      swift_once();
    }

    v34 = static EffortValueButton.Layout.levelSymbolFont;
    KeyPath = swift_getKeyPath();
    v36 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGMR) + 36)];
    *v36 = KeyPath;
    v36[1] = v34;

    LOBYTE(v34) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v37 = &v25[*(v21 + 36)];
    *v37 = v34;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    v42 = *(a1 + 8);
    v43 = *(a1 + 16);
    v197._countAndFlagsBits = v42;
    v197._object = v43;
    lazy protocol witness table accessor for type String and conformance String();

    v44 = Text.init<A>(_:)();
    v46 = v45;
    v48 = v47;
    v174 = v33;
    if (one-time initialization token for explanationFont != -1)
    {
      swift_once();
    }

    v49 = Text.font(_:)();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    outlined consume of Text.Storage(v44, v46, v48 & 1);

    v56 = swift_getKeyPath();
    v57 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v53 & 1;
    LOBYTE(v192._countAndFlagsBits) = v53 & 1;
    LOBYTE(v184._countAndFlagsBits) = 0;
    v67 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v75 = v74;
    LOBYTE(v197._countAndFlagsBits) = 0;
    v76 = &v20[*(v166 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMR);
    static ContentTransition.identity.getter();
    *v76 = swift_getKeyPath();
    *v20 = v49;
    *(v20 + 1) = v51;
    v20[16] = v66;
    *(v20 + 3) = v55;
    *(v20 + 4) = v56;
    *(v20 + 5) = 0x3FE0000000000000;
    v20[48] = v57;
    *(v20 + 7) = v59;
    *(v20 + 8) = v61;
    *(v20 + 9) = v63;
    *(v20 + 10) = v65;
    v20[88] = 0;
    v20[96] = v67;
    *(v20 + 13) = v69;
    *(v20 + 14) = v71;
    *(v20 + 15) = v73;
    *(v20 + 16) = v75;
    v20[136] = 0;
    v77 = Image.init(systemName:)();
    static Font.body.getter();
    static Font.Weight.medium.getter();
    v78 = Font.weight(_:)();

    v79 = swift_getKeyPath();
    LODWORD(v55) = static HierarchicalShapeStyle.secondary.getter();
    LOBYTE(v56) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v197._countAndFlagsBits) = 0;
    v184._countAndFlagsBits = v77;
    v184._object = v79;
    v185._countAndFlagsBits = v78;
    LODWORD(v185._object) = v55;
    LOBYTE(v186._countAndFlagsBits) = v56;
    v186._object = v80;
    *&v187[0] = v81;
    *(&v187[0] + 1) = v82;
    *&v187[1] = v83;
    BYTE8(v187[1]) = 0;
    v178 = v186;
    v179[0] = v187[0];
    *(v179 + 9) = *(v187 + 9);
    v176 = v184;
    v177 = v185;
    v84 = v165;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v174, v165, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMR);
    v85 = v167;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v20, v167, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMR);
    v86 = v168;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v84, v168, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMR);
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAGy12CoreGraphics7CGFloatVGGA2_GA2_GAGyAA0D10TransitionVGGAA6SpacerVACyACyACyAEA_GAA016_ForegroundStyleI0VyAA22HierarchicalShapeStyleVGGA2_GSgtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAGy12CoreGraphics7CGFloatVGGA2_GA2_GAGyAA0D10TransitionVGGAA6SpacerVACyACyACyAEA_GAA016_ForegroundStyleI0VyAA22HierarchicalShapeStyleVGGA2_GSgtMR);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v85, v86 + v87[12], &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMR);
    v88 = v86 + v87[16];
    *v88 = 0;
    *(v88 + 8) = 1;
    v89 = (v86 + v87[20]);
    *(v195 + 9) = *(v179 + 9);
    v90 = *(v179 + 9);
    v91 = v179[0];
    v92 = v178;
    v93 = v179[0];
    v194 = v178;
    v195[0] = v179[0];
    v89[2] = v178;
    v89[3] = v91;
    *(&v89[3]._object + 1) = v90;
    v94 = v177;
    v95 = v176;
    v96 = v177;
    v192 = v176;
    v193 = v177;
    *v89 = v176;
    v89[1] = v94;
    *(v200 + 9) = *(v179 + 9);
    v199 = v92;
    v200[0] = v93;
    v197 = v95;
    v198 = v96;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(&v184, v175, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGMR);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(&v192, v175, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGSgMR);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(&v197, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGSgMR);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v85, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMR);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v84, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMR);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v86, v171, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMR);
    swift_storeEnumTagMultiPayload();
    v97 = MEMORY[0x277CE14C0];
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMR, v97);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(&v184, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA017HierarchicalShapeL0VGGAA14_PaddingLayoutVGMR);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v86, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMR);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v20, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAA14_PaddingLayoutVGANGAGyAA0D10TransitionVGGMR);
    v98 = v174;
    v99 = &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMd;
    v100 = &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGAJGAA17_FlipForRTLEffectVGAGyAA19SymbolRenderingModeVSgGGAGyAA4FontVSgGGAA14_PaddingLayoutVGMR;
  }

  else
  {
    v167 = v4;
    v168 = v14;
    v102 = Image.init(systemName:)();
    v103 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR) + 36));
    v104 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v105 = *MEMORY[0x277CE1048];
    v106 = type metadata accessor for Image.Scale();
    (*(*(v106 - 8) + 104))(v103 + v104, v105, v106);
    *v103 = swift_getKeyPath();
    *v7 = v102;
    if (one-time initialization token for levelSymbolFont != -1)
    {
      swift_once();
    }

    v107 = static EffortValueButton.Layout.levelSymbolFont;
    v108 = swift_getKeyPath();
    v109 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGMR) + 36));
    *v109 = v108;
    v109[1] = v107;
    *(v7 + *(v5 + 36)) = 0;

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFra(v7, v11, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGMR);
    v110 = &v11[*(v165 + 36)];
    v111 = v211;
    *(v110 + 4) = v210;
    *(v110 + 5) = v111;
    *(v110 + 6) = v212;
    v112 = v207;
    *v110 = v206;
    *(v110 + 1) = v112;
    v113 = v209;
    *(v110 + 2) = v208;
    *(v110 + 3) = v113;
    outlined init with take of ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFra(v11, v168, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMR);
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v114 = WorkoutUIBundle.super.isa;
    v213._object = 0xE000000000000000;
    v115.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v116._object = 0x800000020CB9E200;
    v116._countAndFlagsBits = 0xD000000000000010;
    v115.value._object = 0xEB00000000656C62;
    v117._countAndFlagsBits = 0;
    v117._object = 0xE000000000000000;
    v213._countAndFlagsBits = 0;
    v118 = NSLocalizedString(_:tableName:bundle:value:comment:)(v116, v115, v114, v117, v213);

    v197 = v118;
    lazy protocol witness table accessor for type String and conformance String();
    v119 = Text.init<A>(_:)();
    v121 = v120;
    v123 = v122;
    if (one-time initialization token for explanationFont != -1)
    {
      swift_once();
    }

    v124 = Text.font(_:)();
    v126 = v125;
    v128 = v127;
    v130 = v129;
    outlined consume of Text.Storage(v119, v121, v123 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
    v131 = swift_allocObject();
    *(v131 + 16) = xmmword_20CB5DA80;
    v132 = static Edge.Set.leading.getter();
    *(v131 + 32) = v132;
    v133 = static Edge.Set.trailing.getter();
    *(v131 + 33) = v133;
    v134 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v132)
    {
      v134 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v133)
    {
      v134 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v136 = v135;
    v138 = v137;
    v140 = v139;
    v142 = v141;
    v143 = v128 & 1;
    v203 = v128 & 1;
    v202 = 0;
    v144 = swift_getKeyPath();
    v145 = swift_getKeyPath();
    v204 = 0;
    v146 = swift_getKeyPath();
    v184._countAndFlagsBits = v124;
    v184._object = v126;
    LOBYTE(v185._countAndFlagsBits) = v143;
    v185._object = v130;
    LOBYTE(v186._countAndFlagsBits) = v134;
    v186._object = v136;
    *&v187[0] = v138;
    *(&v187[0] + 1) = v140;
    *&v187[1] = v142;
    BYTE8(v187[1]) = 0;
    *&v188 = v144;
    *(&v188 + 1) = 0x3FE3333333333333;
    *&v189 = v145;
    *(&v189 + 1) = 2;
    LOBYTE(v190) = 0;
    *(&v190 + 1) = *v205;
    DWORD1(v190) = *&v205[3];
    *(&v190 + 1) = v146;
    v191 = 1;
    v147 = v174;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v168, v174, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMR);
    v181 = v189;
    v182 = v190;
    v183 = v191;
    v178 = v186;
    v179[0] = v187[0];
    v179[1] = v187[1];
    v180 = v188;
    v176 = v184;
    v177 = v185;
    v148 = v167;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v147, v167, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMR);
    v149 = v148 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_ACyACyACyACyACyAA4TextVAA08_PaddingP0VGAGy12CoreGraphics7CGFloatVGGAGySiSgGG07WorkoutB017HeaderHyphenationVGAGyAA0Q9AlignmentOGGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_ACyACyACyACyACyAA4TextVAA08_PaddingP0VGAGy12CoreGraphics7CGFloatVGGAGySiSgGG07WorkoutB017HeaderHyphenationVGAGyAA0Q9AlignmentOGGtMR) + 48);
    v195[3] = v181;
    v195[4] = v182;
    v195[1] = v179[1];
    v195[2] = v180;
    v150 = v178;
    v194 = v178;
    v195[0] = v179[0];
    v151 = v176;
    v192 = v176;
    v193 = v177;
    v153 = v181;
    v152 = v182;
    v154 = v182;
    *(v149 + 96) = v181;
    *(v149 + 112) = v152;
    v155 = v179[0];
    v156 = v179[1];
    v157 = v179[0];
    v158 = v179[1];
    *(v149 + 32) = v150;
    *(v149 + 48) = v155;
    v159 = v180;
    v160 = v180;
    *(v149 + 64) = v156;
    *(v149 + 80) = v159;
    v161 = v177;
    v162 = v178;
    v163 = v177;
    *v149 = v176;
    *(v149 + 16) = v161;
    v200[3] = v153;
    v200[4] = v154;
    v199 = v162;
    v200[0] = v157;
    v200[1] = v158;
    v200[2] = v160;
    v196 = v183;
    *(v149 + 128) = v183;
    v201 = v183;
    v197 = v151;
    v198 = v163;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(&v184, v175, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMR);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(&v192, v175, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMR);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(&v197, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMR);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v147, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMR);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(v148, v171, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMR);
    swift_storeEnumTagMultiPayload();
    v164 = MEMORY[0x277CE14C0];
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAA023AccessibilityAttachmentK0VGALGAA17_FlipForRTLEffectVGAIyAA19SymbolRenderingModeVSgGGAIyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAIy12CoreGraphics7CGFloatVGGA4_GA4_GAIyAA0F10TransitionVGGAA6SpacerVAEyAEyAEyAGA1_GAA016_ForegroundStyleK0VyAA22HierarchicalShapeStyleVGGA4_GSgtGMR, MEMORY[0x277CE14C0]);
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMR, v164);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(&v184, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4TextVAA14_PaddingLayoutVGAA30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGGAJySiSgGG07WorkoutB017HeaderHyphenationVGAJyAA0E9AlignmentOGGMR);
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v148, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAG5ScaleOGGAIyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_AEyAEyAEyAEyAEyAA4TextVAA08_PaddingR0VGAIy12CoreGraphics7CGFloatVGGAIySiSgGG07WorkoutB017HeaderHyphenationVGAIyAA0S9AlignmentOGGtGMR);
    v98 = v168;
    v99 = &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMd;
    v100 = &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAGyAA4FontVSgGGAA14_OpacityEffectVGAA16_FlexFrameLayoutVGMR;
  }

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(v98, v99, v100);
}

__n128 protocol witness for View.body.getter in conformance EffortValueButton@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24[-v9];
  v11 = *(v1 + 16);
  v27[0] = *v1;
  v27[1] = v11;
  v27[2] = *(v1 + 32);
  v28 = *(v1 + 48);
  v12 = swift_allocObject();
  v13 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v1 + 32);
  *(v12 + 64) = *(v1 + 48);
  v25 = v27;
  outlined init with copy of EffortValueButton(v27, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GA47_022EffortButtonBackgroundM0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA012_ConditionalD0VyAA9TupleViewVyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAK5ScaleOGGAA023AccessibilityAttachmentM0VGAPGAA17_FlipForRTLEffectVGAMyAA19SymbolRenderingModeVSgGGAMyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVAMy12CoreGraphics7CGFloatVGGA8_GA8_GAMyAA0D10TransitionVGGAA6SpacerVACyACyACyAKA5_GAA016_ForegroundStyleM0VyAA22HierarchicalShapeStyleVGGA8_GSgtGAIyACyACyACyAQA5_GAA14_OpacityEffectVGAA010_FlexFrameY0VG_ACyACyACyACyACyA11_A8_GA15_GAMySiSgGG07WorkoutB017HeaderHyphenationVGAMyAA0Z9AlignmentOGGtGGGAA06_TraitlM0VyAA015TransitionTraitK0VGGA40_GA47_022EffortButtonBackgroundM0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKe();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex( &lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _,  &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMd,  &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMR,  MEMORY[0x277CDF028]);
  _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_7(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  v14 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA6HStackVyAA012_ConditionalD0VyAA05TupleE0VyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA023AccessibilityAttachmentQ0VGAVGAA17_FlipForRTLEffectVGASyAA19SymbolRenderingModeVSgGGASyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA14_GA14_GASyAA0D10TransitionVGGAA6SpacerVACyACyACyAQA11_GAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGA14_GSgtGAOyACyACyACyAWA11_GAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_ACyACyACyACyACyA17_A14_GA21_GASySiSgGG07WorkoutB017HeaderHyphenationVGASyAA13TextAlignmentOGGtGGGAA06_TraitpQ0VyAA015TransitionTraitO0VGGA46_GA53_06Efforti10BackgroundQ0VGG_AA05PlainiG0VQo_AA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA6HStackVyAA012_ConditionalD0VyAA05TupleE0VyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA023AccessibilityAttachmentQ0VGAVGAA17_FlipForRTLEffectVGASyAA19SymbolRenderingModeVSgGGASyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA14_GA14_GASyAA0D10TransitionVGGAA6SpacerVACyACyACyAQA11_GAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGA14_GSgtGAOyACyACyACyAWA11_GAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_ACyACyACyACyACyA17_A14_GA21_GASySiSgGG07WorkoutB017HeaderHyphenationVGASyAA13TextAlignmentOGGtGGGAA06_TraitpQ0VyAA015TransitionTraitO0VGGA46_GA53_06Efforti10BackgroundQ0VGG_AA05PlainiG0VQo_AA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMR) + 36));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMR);
  static ContentShapeKinds.accessibility.getter();
  v16 = *(type metadata accessor for RoundedRectangle() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = type metadata accessor for RoundedCornerStyle();
  (*(*(v18 - 8) + 104))(v14 + v16, v17, v18);
  __asm { FMOV            V0.2D, #14.0 }

  *v14 = result;
  v14->n128_u8[*(v15 + 36)] = 0;
  return result;
}

uint64_t _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_7(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t key path setter for EnvironmentValues.contentTransition : EnvironmentValues, serialized(uint64_t a1)
{
  v2 = type metadata accessor for ContentTransition();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.contentTransition.setter();
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _FlexFrameLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _PaddingLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, _EnvironmentKeyWritingModifier<Int?>>, HeaderHyphenation>, _EnvironmentKeyWritingModifier<TextAlignment>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA6HStackVyAA012_ConditionalD0VyAA05TupleE0VyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA023AccessibilityAttachmentQ0VGAVGAA17_FlipForRTLEffectVGASyAA19SymbolRenderingModeVSgGGASyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA14_GA14_GASyAA0D10TransitionVGGAA6SpacerVACyACyACyAQA11_GAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGA14_GSgtGAOyACyACyACyAWA11_GAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_ACyACyACyACyACyA17_A14_GA21_GASySiSgGG07WorkoutB017HeaderHyphenationVGASyAA13TextAlignmentOGGtGGGAA06_TraitpQ0VyAA015TransitionTraitO0VGGA46_GA53_06Efforti10BackgroundQ0VGG_AA05PlainiG0VQo_AA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonG0Rd__lFQOyAA0I0VyACyACyACyAA6HStackVyAA012_ConditionalD0VyAA05TupleE0VyACyACyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAQ5ScaleOGGAA023AccessibilityAttachmentQ0VGAVGAA17_FlipForRTLEffectVGASyAA19SymbolRenderingModeVSgGGASyAA4FontVSgGGAA14_PaddingLayoutVG_ACyACyACyACyAA4TextVASy12CoreGraphics7CGFloatVGGA14_GA14_GASyAA0D10TransitionVGGAA6SpacerVACyACyACyAQA11_GAA011_ForegroundgQ0VyAA017HierarchicalShapeG0VGGA14_GSgtGAOyACyACyACyAWA11_GAA14_OpacityEffectVGAA16_FlexFrameLayoutVG_ACyACyACyACyACyA17_A14_GA21_GASySiSgGG07WorkoutB017HeaderHyphenationVGASyAA13TextAlignmentOGGtGGGAA06_TraitpQ0VyAA015TransitionTraitO0VGGA46_GA53_06Efforti10BackgroundQ0VGG_AA05PlainiG0VQo_AA01_d9ShapeKindQ0VyAA16RoundedRectangleVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMd, &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMR);
    type metadata accessor for PlainButtonStyle();
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex( &lazy protocol witness table cache variable for type Button<ModifiedContent<ModifiedContent<ModifiedContent<HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _,  &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMd,  &_s7SwiftUI6ButtonVyAA15ModifiedContentVyAEyAEyAA6HStackVyAA012_ConditionalE0VyAA9TupleViewVyAEyAEyAEyAEyAEyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentN0VGARGAA17_FlipForRTLEffectVGAOyAA19SymbolRenderingModeVSgGGAOyAA4FontVSgGGAA14_PaddingLayoutVG_AEyAEyAEyAEyAA4TextVAOy12CoreGraphics7CGFloatVGGA10_GA10_GAOyAA0E10TransitionVGGAA6SpacerVAEyAEyAEyAMA7_GAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGA10_GSgtGAKyAEyAEyAEyASA7_GAA14_OpacityEffectVGAA010_FlexFrameZ0VG_AEyAEyAEyAEyAEyA13_A10_GA17_GAOySiSgGG07WorkoutB017HeaderHyphenationVGAOyAA13TextAlignmentOGGtGGGAA06_TraitmN0VyAA015TransitionTraitL0VGGA42_GA49_06Effortc10BackgroundN0VGGMR,  MEMORY[0x277CDF028]);
    _s7SwiftUI16PlainButtonStyleVAcA09PrimitivedE0AAWlTm_7(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type HStack<_ConditionalContent<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<SymbolRenderingMode?>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<CGFloat>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<ContentTransition>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, _PaddingLayout>?)>, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _OpacityEffect>, _Flex(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<RoundedRectangle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMR, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.buttonStyle<A>(_:)>>.0, _ContentShapeKindModifier<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void AnimatedWorkoutGlyph.init(activityType:iconSize:animated:)(void *a1@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd, &_s7SwiftUI5ImageV21TemplateRenderingModeOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for AnimatedWorkoutGlyph(0);
  *(a4 + v10[8]) = 0x3FA1111111111111;
  v11 = a4 + v10[14];
  *v11 = implicit closure #2 in implicit closure #1 in variable initialization expression of AnimatedWorkoutGlyph._model;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  Date.init()();
  *a4 = a1;
  *(a4 + 8) = a3;
  v12 = a1;
  FIUIIconSize();
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  v15 = FIUISpriteSheetWorkoutIconImage();
  if (v15)
  {
    v16 = v15;

    v39 = 0;
    v17 = FIUISpriteSheetNumberOfFrames();

    *(a4 + v10[10]) = v17;
    v18 = v39;
    *(a4 + v10[9]) = v39;
    v19 = v16;
    Image.init(uiImage:)();
    v20 = *MEMORY[0x277CE1020];
    v21 = type metadata accessor for Image.TemplateRenderingMode();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v9, v20, v21);
    (*(v22 + 56))(v9, 0, 1, v21);
    v23 = Image.renderingMode(_:)();

    outlined destroy of Image.TemplateRenderingMode?(v9, &_s7SwiftUI5ImageV21TemplateRenderingModeOSgMd, &_s7SwiftUI5ImageV21TemplateRenderingModeOSgMR);
    *(a4 + v10[11]) = v23;
    [v19 size];
    v25 = v24 / v18;
    [v19 size];
    v27 = v26 / ceil(v17 / v18);
    v28 = (a4 + v10[12]);
    *v28 = v25;
    v28[1] = v27;
    [v19 size];
    v30 = v29 * 0.5 - v25 * 0.5;
    [v19 size];
    v32 = v31;

    v33 = (a4 + v10[13]);
    *v33 = v30;
    v33[1] = v32 * 0.5 - v27 * 0.5;
  }

  else
  {
    v39 = 0;
    v40 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v39 = 0xD000000000000028;
    v40 = 0x800000020CBA2770;
    v34 = [v12 description];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    MEMORY[0x20F30BC00](v35, v37);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t AnimatedWorkoutGlyph.Model.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV9WorkoutUI20AnimatedWorkoutGlyphP33_562F25160F41D15FBB593A0D491D6CDB5Model_date;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AnimatedWorkoutGlyph.Model@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AnimatedWorkoutGlyph.Model(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t implicit closure #2 in implicit closure #1 in variable initialization expression of AnimatedWorkoutGlyph._model()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  type metadata accessor for AnimatedWorkoutGlyph.Model(0);
  v4 = swift_allocObject();
  (*(v1 + 32))(v4 + OBJC_IVAR____TtCV9WorkoutUI20AnimatedWorkoutGlyphP33_562F25160F41D15FBB593A0D491D6CDB5Model_date, v3, v0);
  return v4;
}

unint64_t AnimatedWorkoutGlyph.frame(date:)()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnimatedWorkoutGlyph(0);
  type metadata accessor for AnimatedWorkoutGlyph.Model(0);
  lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule(&lazy protocol witness table cache variable for type AnimatedWorkoutGlyph.Model and conformance AnimatedWorkoutGlyph.Model, type metadata accessor for AnimatedWorkoutGlyph.Model, &protocol conformance descriptor for AnimatedWorkoutGlyph.Model);
  v6 = StateObject.wrappedValue.getter();
  v7 = OBJC_IVAR____TtCV9WorkoutUI20AnimatedWorkoutGlyphP33_562F25160F41D15FBB593A0D491D6CDB5Model_date;
  swift_beginAccess();
  (*(v2 + 16))(v4, v6 + v7, v1);

  Date.timeIntervalSince(_:)();
  v9 = v8;
  result = (*(v2 + 8))(v4, v1);
  v11 = 0.0;
  if (v9 >= 0.0)
  {
    v11 = v9;
  }

  v12 = floor(v11 / *(v0 + *(v5 + 32)));
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v12 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = *(v0 + *(v5 + 40));
  if (v13)
  {
    return v12 % v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

void AnimatedWorkoutGlyph.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA12TimelineViewVyAA09AnimationG8ScheduleVAGyAGyAGyAGyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipM0VyAA9RectangleVGGGAA017_AppearanceActionO0VGAGyAGyApUGA_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA12TimelineViewVyAA09AnimationG8ScheduleVAGyAGyAGyAGyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipM0VyAA9RectangleVGGGAA017_AppearanceActionO0VGAGyAGyApUGA_G_GMR);
  MEMORY[0x28223BE20](v3);
  v5 = v35 - v4;
  v6 = type metadata accessor for AnimatedWorkoutGlyph(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v41 = type metadata accessor for AnimationTimelineSchedule();
  v9 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMd, &_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMR);
  MEMORY[0x28223BE20](v15);
  if (*(v2 + 8) == 1)
  {
    v39 = v16;
    v37 = v35 - v17;
    AnimationTimelineSchedule.init(minimumInterval:paused:)();
    v36 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    outlined init with copy of AnimatedWorkoutGlyph(v2, v36);
    v40 = v3;
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v38 = v18;
    v19 = swift_allocObject();
    outlined init with take of AnimatedWorkoutGlyph(v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v20 = *(v9 + 16);
    v35[2] = v11;
    v21 = v11;
    v22 = v41;
    v20(v21, v14, v41);
    v23 = swift_allocObject();
    *(v23 + 16) = partial apply for closure #1 in AnimatedWorkoutGlyph.body.getter;
    *(v23 + 24) = v19;
    v35[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule(&lazy protocol witness table cache variable for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule, MEMORY[0x277CDE300], MEMORY[0x277CDE2F8]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    v24 = v37;
    TimelineView<>.init(_:content:)();
    (*(v9 + 8))(v14, v22);
    v25 = v36;
    outlined init with copy of AnimatedWorkoutGlyph(v2, v36);
    v26 = v38;
    v27 = swift_allocObject();
    outlined init with take of AnimatedWorkoutGlyph(v25, v27 + v26);
    v28 = (v24 + *(v39 + 36));
    *v28 = partial apply for closure #2 in AnimatedWorkoutGlyph.body.getter;
    v28[1] = v27;
    v28[2] = 0;
    v28[3] = 0;
    outlined init with copy of ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>(v24, v5);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    outlined destroy of Image.TemplateRenderingMode?(v24, &_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMd, &_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMR);
  }

  else if (*(v2 + v6[9]))
  {
    v29 = (v2 + v6[13]);
    v30 = (v2 + v6[12]);
    v31 = *v29 - *v30 * 0.0;
    v32 = *(v2 + v6[11]);
    v33 = v29[1] - v30[1] * 0.0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *v5 = v32;
    *(v5 + 1) = v31;
    *(v5 + 2) = v33;
    v34 = v44;
    *(v5 + 24) = v43;
    *(v5 + 40) = v34;
    *(v5 + 56) = v45;
    *(v5 + 36) = 0;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMd, &_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMR);
    lazy protocol witness table accessor for type TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> TimelineView<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> TimelineView<A, B>()
{
  result = lazy protocol witness table cache variable for type TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> TimelineView<A, B>;
  if (!lazy protocol witness table cache variable for type TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> TimelineView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12TimelineViewVyAA09AnimationC8ScheduleVAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGMd, &_s7SwiftUI12TimelineViewVyAA09AnimationC8ScheduleVAA15ModifiedContentVyAGyAGyAGyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> TimelineView<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA13_OffsetEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA13_OffsetEffectVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI11_ClipEffectVyAA9RectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA9RectangleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _OffsetEffect> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void *closure #1 in AnimatedWorkoutGlyph.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnimatedWorkoutGlyph(0);
  v9 = *(a1 + v8[11]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMd, &_s7SwiftUI12TimelineViewV7ContextVyAA011EveryMinuteC8ScheduleVs5NeverO_GMR);
  TimelineView.Context.date.getter();
  v10 = AnimatedWorkoutGlyph.frame(date:)();
  result = (*(v5 + 8))(v7, v4);
  v12 = *(a1 + v8[9]);
  if (v12)
  {
    v13 = v8[12];
    v14 = (a1 + v8[13]);
    v15 = *v14 - *(a1 + v13) * (v10 % v12);
    v16 = v14[1] - *(a1 + v13 + 8) * (v10 / v12);
    static Alignment.center.getter();
    result = _FrameLayout.init(width:height:alignment:)();
    *a2 = v9;
    *(a2 + 8) = v15;
    *(a2 + 16) = v16;
    *(a2 + 24) = closure #1 in closure #1 in AnimatedWorkoutGlyph.body.getter;
    *(a2 + 32) = 0;
    v17 = v18[1];
    *(a2 + 40) = v18[0];
    *(a2 + 56) = v17;
    *(a2 + 72) = v18[2];
    *(a2 + 88) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of AnimatedWorkoutGlyph(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatedWorkoutGlyph(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of AnimatedWorkoutGlyph(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnimatedWorkoutGlyph(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *partial apply for closure #1 in AnimatedWorkoutGlyph.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnimatedWorkoutGlyph(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return closure #1 in AnimatedWorkoutGlyph.body.getter(v4, a1);
}

double closure #2 in AnimatedWorkoutGlyph.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for AnimatedWorkoutGlyph(0);
  type metadata accessor for AnimatedWorkoutGlyph.Model(0);
  lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule(&lazy protocol witness table cache variable for type AnimatedWorkoutGlyph.Model and conformance AnimatedWorkoutGlyph.Model, type metadata accessor for AnimatedWorkoutGlyph.Model, &protocol conformance descriptor for AnimatedWorkoutGlyph.Model);
  v3 = StateObject.wrappedValue.getter();
  v4 = *(v2 + 28);
  v5 = OBJC_IVAR____TtCV9WorkoutUI20AnimatedWorkoutGlyphP33_562F25160F41D15FBB593A0D491D6CDB5Model_date;
  swift_beginAccess();
  v6 = type metadata accessor for Date();
  (*(*(v6 - 8) + 24))(v3 + v5, a1 + v4, v6);
  swift_endAccess();

  return result;
}

uint64_t objectdestroyTm_79()
{
  v1 = (type metadata accessor for AnimatedWorkoutGlyph(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[9];
  v4 = type metadata accessor for Date();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  outlined consume of StateObject<AnimatedWorkoutGlyph.Model>.Storage(*(v2 + v1[16]), *(v2 + v1[16] + 8));

  return swift_deallocObject();
}

double partial apply for closure #2 in AnimatedWorkoutGlyph.body.getter()
{
  v1 = *(type metadata accessor for AnimatedWorkoutGlyph(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return closure #2 in AnimatedWorkoutGlyph.body.getter(v2);
}

uint64_t outlined init with copy of ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMd, &_s7SwiftUI15ModifiedContentVyAA12TimelineViewVyAA09AnimationE8ScheduleVACyACyACyACyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipK0VyAA9RectangleVGGGAA017_AppearanceActionM0VGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Image.TemplateRenderingMode?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata completion function for AnimatedWorkoutGlyph(uint64_t a1)
{
  type metadata accessor for FIUIWorkoutActivityType();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        type metadata accessor for CGPoint(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for StateObject<AnimatedWorkoutGlyph.Model>(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for StateObject<AnimatedWorkoutGlyph.Model>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StateObject<AnimatedWorkoutGlyph.Model>)
  {
    type metadata accessor for AnimatedWorkoutGlyph.Model(255);
    lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule(&lazy protocol witness table cache variable for type AnimatedWorkoutGlyph.Model and conformance AnimatedWorkoutGlyph.Model, type metadata accessor for AnimatedWorkoutGlyph.Model, &protocol conformance descriptor for AnimatedWorkoutGlyph.Model);
    v1 = type metadata accessor for StateObject();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for StateObject<AnimatedWorkoutGlyph.Model>);
    }
  }
}

uint64_t type metadata accessor for AnimatedWorkoutGlyph(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnimationTimelineSchedule and conformance AnimationTimelineSchedule(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for AnimatedWorkoutGlyph.Model(uint64_t a1)
{
  result = type metadata accessor for Date();
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12TimelineViewVyAA09AnimationF8ScheduleVAEyAEyAEyAEyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipL0VyAA9RectangleVGGGAA017_AppearanceActionN0VGAEyAEyAnSGAYGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA12TimelineViewVyAA09AnimationF8ScheduleVAEyAEyAEyAEyAA5ImageVAA13_OffsetEffectVGAA20_TransactionModifierVGAA12_FrameLayoutVGAA05_ClipL0VyAA9RectangleVGGGAA017_AppearanceActionN0VGAEyAEyAnSGAYGGMR);
    lazy protocol witness table accessor for type ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA13_OffsetEffectVGAA12_FrameLayoutVGAA05_ClipG0VyAA9RectangleVGGMR, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<TimelineView<AnimationTimelineSchedule, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _TransactionModifier>, _FrameLayout>, _ClipEffect<Rectangle>>>, _AppearanceActionModifier>, ModifiedContent<ModifiedContent<ModifiedContent<Image, _OffsetEffect>, _FrameLayout>, _ClipEffect<Rectangle>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t PickerTextPadding.body(content:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMR);
  MEMORY[0x28223BE20](v2);
  v4 = &v43 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_L6LayoutVGAGyApOG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_L6LayoutVGAGyApOG_GMR);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  if (FIUICurrentLanguageRequiresTallScript())
  {
    v11 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017PickerTextPaddingVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017PickerTextPaddingVGMR);
    (*(*(v20 - 8) + 16))(v10, a1, v20);
    v21 = &v10[*(v8 + 36)];
    *v21 = v11;
    *(v21 + 1) = v13;
    *(v21 + 2) = v15;
    *(v21 + 3) = v17;
    *(v21 + 4) = v19;
    v21[40] = 0;
    outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>(v10, v7, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v22 = v10;
    v23 = &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGMd;
    v24 = &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGMR;
  }

  else
  {
    v25 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017PickerTextPaddingVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017PickerTextPaddingVGMR);
    (*(*(v34 - 8) + 16))(v4, a1, v34);
    v35 = &v4[*(v8 + 36)];
    *v35 = v25;
    *(v35 + 1) = v27;
    *(v35 + 2) = v29;
    *(v35 + 3) = v31;
    *(v35 + 4) = v33;
    v35[40] = 0;
    v36 = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v37 = &v4[*(v2 + 36)];
    *v37 = v36;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>(v4, v7, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    _ConditionalContent<>.init(storage:)();
    v22 = v4;
    v23 = &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd;
    v24 = &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMR;
  }

  return outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>(v22, v23, v24);
}

unint64_t lazy protocol witness table accessor for type PickerTextPadding and conformance PickerTextPadding()
{
  result = lazy protocol witness table cache variable for type PickerTextPadding and conformance PickerTextPadding;
  if (!lazy protocol witness table cache variable for type PickerTextPadding and conformance PickerTextPadding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerTextPadding and conformance PickerTextPadding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<PickerTextPadding> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<PickerTextPadding> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<PickerTextPadding> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017PickerTextPaddingVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB017PickerTextPaddingVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<PickerTextPadding> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_K6LayoutVGAEyAnMGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_K6LayoutVGAEyAnMGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy07WorkoutB017PickerTextPaddingVGAA01_J6LayoutVGAKGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, ModifiedContent<ModifiedContent<_ViewModifier_Content<PickerTextPadding>, _PaddingLayout>, _PaddingLayout>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

double thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

uint64_t key path getter for MirrorViewMonitor.dismissClosure : MirrorViewMonitor@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sIeg_ytIegr_TRTA_3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20C694B3C(v4, v5);
}

uint64_t key path setter for MirrorViewMonitor.dismissClosure : MirrorViewMonitor(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sytIegr_Ieg_TRTA_3;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_20C694B3C(v3, v4);
  return sub_20C694AEC(v8, v9);
}

uint64_t MirrorViewMonitor.dismissClosure.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_20C694B3C(v1, *(v0 + 48));
  return v1;
}

uint64_t MirrorViewMonitor.dismissClosure.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_20C694AEC(v5, v6);
}

uint64_t MirrorViewMonitor.__allocating_init(dataLinkMonitor:summaryViewControllerCompletion:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = specialized MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(a1, a2, a3);
  sub_20C694AEC(a2, a3);

  return v6;
}

uint64_t MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = specialized MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(a1, a2, a3);
  sub_20C694AEC(a2, a3);

  return v6;
}

uint64_t closure #1 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(uint64_t a1)
{
  v61 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v62 = &v51 - v2;
  v54 = type metadata accessor for Logger();
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MirroredClientCommand();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v59 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v57 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for DataLinkMirroredClientExpected();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DataLinkMirroredClientExpectation();
  v55 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *MEMORY[0x277D7E300];
  v22 = type metadata accessor for MirroredHostCommand();
  (*(*(v22 - 8) + 104))(v18, v21, v22);
  (*(v16 + 104))(v18, *MEMORY[0x277D7E638], v15);
  type metadata accessor for DataLinkConstants();
  static DataLinkConstants.defaultExpectationTimeout.getter();
  v63 = v20;
  DataLinkMirroredClientExpectation.init(expected:timeout:)();
  (*(v6 + 104))(v14, *MEMORY[0x277D7E378], v5);
  static WOLog.dataLink.getter();
  v64 = v6;
  v65 = v5;
  v23 = *(v6 + 16);
  v60 = v14;
  v23(v10, v14, v5);
  v24 = v4;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v51 = v23;
    v28 = v27;
    v29 = swift_slowAlloc();
    v66 = v29;
    *v28 = 136315138;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand, 255, MEMORY[0x277D7E388], MEMORY[0x277D7E390]);
    v30 = v65;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v34 = *(v64 + 8);
    v52 = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v34;
    v34(v10, v30);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v66);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_20C66F000, v25, v26, "[mirrored] sendMirroredClientCommand is sending (%s)", v28, 0xCu);
    v36 = __swift_destroy_boxed_opaque_existential_1Tm_4(v29);
    MEMORY[0x20F30E080](v29, -1, -1, v36);
    v37 = v28;
    v23 = v51;
    MEMORY[0x20F30E080](v37, -1, -1);
  }

  else
  {

    v38 = *(v64 + 8);
    v52 = (v64 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53 = v38;
    v38(v10, v65);
  }

  (*(v56 + 8))(v24, v54);
  static Double.machTimestamp.getter();
  v40 = v39;
  v41 = v62;
  v42 = v55;
  v43 = v58;
  (*(v55 + 16))(v62, v63, v58);
  (*(v42 + 56))(v41, 0, 1, v43);
  v45 = v59;
  v44 = v60;
  v46 = v65;
  v23(v59, v60, v65);
  v47 = v64;
  v48 = (*(v64 + 80) + 24) & ~*(v64 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v40;
  (*(v47 + 32))(v49 + v48, v45, v46);

  DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)();

  outlined destroy of DataLinkMirroredClientExpectation?(v41, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v53(v44, v46);
  return (*(v42 + 8))(v63, v43);
}

double closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(char *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + 72) & 1) != 0 || (v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v13 = Strong;
    *(Strong + 72) = 1;
    static WOLog.dataLink.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67109120;
      *(v16 + 4) = 1;
      _os_log_impl(&dword_20C66F000, v14, v15, "[mirrored] MirrorViewMonitor observed first workoutStarted: %{BOOL}d, remove all client expectations and switch to inSessionView", v16, 8u);
      MEMORY[0x20F30E080](v16, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    type metadata accessor for MainActor();

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v20 = MEMORY[0x277D85700];
    v19[2] = v18;
    v19[3] = v20;
    v19[4] = v13;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:), v19);

    v21 = *(v13 + 32);
    swift_beginAccess();
    if (*(v21 + 17) == 5)
    {
LABEL_7:
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v23[-2] = v21;
      LOBYTE(v23[-1]) = 5;
      v23[1] = v21;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:), v6, v5);
}

uint64_t closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)()
{

  dispatch thunk of DataLinkClient.removeAllClientExpectations()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MirrorViewMonitor.buildHostedView()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v113 = a1;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGMR);
  MEMORY[0x28223BE20](v109);
  v106 = v94 - v3;
  v4 = type metadata accessor for SessionControlsSheet(0);
  MEMORY[0x28223BE20](v4);
  v108 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = v94 - v7;
  v116 = type metadata accessor for SessionView(0);
  MEMORY[0x28223BE20](v116);
  v110 = (v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB020MapHostingMirrorViewVAF07SessionJ0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB020MapHostingMirrorViewVAF07SessionJ0V_GMR);
  MEMORY[0x28223BE20](v111);
  v112 = v94 - v9;
  v10 = type metadata accessor for PresentationDetent();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v94 - v15;
  v115 = type metadata accessor for MapHostingMirrorView(0);
  MEMORY[0x28223BE20](v115);
  v18 = (v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MirrorViewMonitor.canHostMapView.getter();
  v20 = type metadata accessor for LowPowerModeMonitor();
  swift_allocObject();
  v21 = LowPowerModeMonitor.init(delegate:)();
  v22 = v1[2];
  v114 = v21;
  if (v19)
  {
    v109 = v20;
    v23 = v2[3];
    v24 = v2[4];
    v25 = swift_allocObject();
    swift_weakInit();
    v107 = *(v115 + 36);
    v26 = one-time initialization token for expanded;
    v108 = v22;
    v110 = v23;

    if (v26 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v10, static PresentationDetent.expanded);
    v28 = *(v11 + 16);
    v28(v16, v27, v10);
    v28(v13, v16, v10);
    State.init(wrappedValue:)();
    (*(v11 + 8))(v16, v10);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, 255, MEMORY[0x277D7E2F8], MEMORY[0x277D7E2F0]);
    v29 = ObservedObject.init(wrappedValue:)();
    v31 = v30;

    *v18 = v29;
    v18[1] = v31;
    v32 = v110;
    v18[2] = v108;
    v18[3] = v32;
    v18[4] = v24;
    v18[5] = partial apply for closure #1 in MirrorViewMonitor.buildHostedView();
    v18[6] = v25;
    v33 = type metadata accessor for MapHostingMirrorView;
    _s9WorkoutUI20SessionControlsSheetVWOcTm_1(v18, v112, type metadata accessor for MapHostingMirrorView);
    swift_storeEnumTagMultiPayload();
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MapHostingMirrorView and conformance MapHostingMirrorView, 255, type metadata accessor for MapHostingMirrorView, &protocol conformance descriptor for MapHostingMirrorView);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionView and conformance SessionView, 255, type metadata accessor for SessionView, &protocol conformance descriptor for SessionView);
    _ConditionalContent<>.init(storage:)();
    v34 = v18;
  }

  else
  {
    v35 = *&v22[OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher];
    v36 = v2[4];
    v99 = v2[3];
    swift_getKeyPath();
    v125[0] = v36;
    v105 = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    v98 = v35;

    v37 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v38 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__safetyCheckIn;
    swift_beginAccess();
    v39 = *(v36 + v38);
    v40 = type metadata accessor for MirrorSessionControls();
    v41 = swift_allocObject();
    *(v41 + 16) = v37;
    *(v41 + 24) = v39;
    v125[3] = v40;
    v125[4] = &protocol witness table for MirrorSessionControls;
    v125[0] = v41;
    v42 = swift_allocObject();
    swift_weakInit();
    v44 = v2[8];
    v103 = v2[7];
    v43 = v103;
    v102 = v44;
    v45 = v110;
    v97 = v110 + v116[9];
    v46 = v116;
    v47 = v110 + v116[11];
    LOBYTE(v120) = 0;
    v48 = v39;
    v100 = v42;

    sub_20C694B3C(v43, v44);
    State.init(wrappedValue:)();
    v49 = v124;
    *v47 = v123;
    *(v47 + 1) = v49;
    v50 = v45 + v46[12];
    LOBYTE(v120) = 0;
    State.init(wrappedValue:)();
    v51 = v124;
    *v50 = v123;
    *(v50 + 1) = v51;
    v101 = (v45 + v46[13]);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type LowPowerModeMonitor and conformance LowPowerModeMonitor, 255, MEMORY[0x277D7E2F8], MEMORY[0x277D7E2F0]);

    *v45 = ObservedObject.init(wrappedValue:)();
    v45[1] = v52;
    v53 = v98;
    v54 = v99;
    v45[2] = v98;
    v45[3] = v54;
    v55 = type metadata accessor for SessionViewModel(0);
    v96 = v53;
    v104 = v36;

    v99 = v55;
    Bindable<A>.init(wrappedValue:)();
    outlined init with copy of SessionControls(v125, v45 + v46[8]);
    v56 = v97;
    *v97 = partial apply for closure #2 in MirrorViewMonitor.buildHostedView();
    *(v56 + 1) = v42;
    v98 = type metadata accessor for SessionControlsState(0);
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    ObservationRegistrar.init()();
    outlined init with copy of SessionControls(v125, &v123);
    LOBYTE(v118) = 0;
    static Binding.constant(_:)();
    v58 = v120;
    v59 = v121;
    LOBYTE(v53) = v122;
    v60 = v107;
    outlined init with copy of SessionControls(&v123, v107 + v4[8]);
    *v60 = v58;
    *(v60 + 8) = v59;
    *(v60 + 16) = v53;
    v61 = v96;
    v96 = v61;

    v94[1] = v57;

    Bindable<A>.init(wrappedValue:)();
    v97 = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionControlsState and conformance SessionControlsState, 255, type metadata accessor for SessionControlsState, &protocol conformance descriptor for SessionControlsState);
    Bindable<A>.init(wrappedValue:)();
    *(v60 + v4[7]) = v61;
    v62 = v60 + v4[9];
    v117 = 0;
    State.init(wrappedValue:)();
    v63 = v119;
    *v62 = v118;
    *(v62 + 8) = v63;
    v64 = v60 + v4[10];
    v117 = 0;
    State.init(wrappedValue:)();
    v65 = v119;
    *v64 = v118;
    *(v64 + 8) = v65;
    v66 = v60 + v4[11];
    v117 = 0;
    State.init(wrappedValue:)();
    v67 = v119;
    *v66 = v118;
    *(v66 + 8) = v67;
    v95 = objc_opt_self();
    v68 = [v95 mainScreen];
    [v68 bounds];

    v69 = v106;
    _s9WorkoutUI20SessionControlsSheetVWOcTm_1(v60, v106, type metadata accessor for SessionControlsSheet);
    *(v69 + *(v109 + 36)) = 256;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGGMd, &_s7SwiftUI19UIHostingControllerCyAA15ModifiedContentVy07WorkoutB020SessionControlsSheetVAA16_FixedSizeLayoutVGGMR);
    v71 = objc_allocWithZone(v70);
    v72 = UIHostingController.init(rootView:)();
    dispatch thunk of UIHostingController.sizeThatFits(in:)();
    v74 = v73;

    LOBYTE(v118) = 1;
    static Binding.constant(_:)();
    v75 = v120;
    v76 = v121;
    LOBYTE(v57) = v122;
    v77 = v108;
    outlined init with copy of SessionControls(&v123, &v108[v4[8]]);
    *v77 = v75;
    *(v77 + 8) = v76;
    *(v77 + 16) = v57;

    Bindable<A>.init(wrappedValue:)();
    Bindable<A>.init(wrappedValue:)();
    *(v77 + v4[7]) = v96;
    v78 = v77 + v4[9];
    v117 = 0;
    State.init(wrappedValue:)();
    v79 = v119;
    *v78 = v118;
    *(v78 + 8) = v79;
    v80 = v77 + v4[10];
    v117 = 0;
    State.init(wrappedValue:)();
    v81 = v119;
    *v80 = v118;
    *(v80 + 8) = v81;
    v82 = v77 + v4[11];
    v117 = 0;
    State.init(wrappedValue:)();
    v83 = v119;
    *v82 = v118;
    *(v82 + 8) = v83;
    v84 = [v95 mainScreen];
    [v84 bounds];

    _s9WorkoutUI20SessionControlsSheetVWOcTm_1(v77, v69, type metadata accessor for SessionControlsSheet);
    *(v69 + *(v109 + 36)) = 256;
    v85 = objc_allocWithZone(v70);
    v86 = UIHostingController.init(rootView:)();
    dispatch thunk of UIHostingController.sizeThatFits(in:)();
    v88 = v87;

    _s9WorkoutUI20SessionControlsSheetVWOhTm_1(v77, type metadata accessor for SessionControlsSheet);
    _s9WorkoutUI20SessionControlsSheetVWOhTm_1(v60, type metadata accessor for SessionControlsSheet);
    __swift_destroy_boxed_opaque_existential_1Tm_4(&v123);
    __swift_destroy_boxed_opaque_existential_1Tm_4(v125);

    v89 = v110;
    v90 = v110 + v116[10];
    *v90 = v74;
    *(v90 + 1) = v88;
    v91 = v101;
    v92 = v102;
    *v101 = v103;
    v91[1] = v92;
    v33 = type metadata accessor for SessionView;
    _s9WorkoutUI20SessionControlsSheetVWOcTm_1(v89, v112, type metadata accessor for SessionView);
    swift_storeEnumTagMultiPayload();
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MapHostingMirrorView and conformance MapHostingMirrorView, 255, type metadata accessor for MapHostingMirrorView, &protocol conformance descriptor for MapHostingMirrorView);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionView and conformance SessionView, 255, type metadata accessor for SessionView, &protocol conformance descriptor for SessionView);
    _ConditionalContent<>.init(storage:)();
    v34 = v89;
  }

  return _s9WorkoutUI20SessionControlsSheetVWOhTm_1(v34, v33);
}

void closure #1 in MirrorViewMonitor.buildHostedView()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    sub_20C694B3C(v3, v4);

    if (v3)
    {
      v3(v5);
      sub_20C694AEC(v3, v4);
    }
  }
}

uint64_t MirrorViewMonitor.activityType.getter()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher);
  MetricsPublisher.workoutStatePublisher.getter();

  v2 = WorkoutStatePublisher.activityType.getter();

  return v2;
}

uint64_t MirrorViewMonitor.canHostMapView.getter()
{
  v1 = *(v0 + 88);
  if (v1 == 2)
  {
    LOBYTE(v1) = closure #1 in MirrorViewMonitor.canHostMapView.getter(v0);
    *(v0 + 88) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t closure #1 in MirrorViewMonitor.canHostMapView.getter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutFeatures();
  v8[3] = v2;
  v8[4] = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutFeatures and conformance WorkoutFeatures, 255, MEMORY[0x277D7DDC8], MEMORY[0x277D7DD98]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D7DD90], v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_4(v8);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(a1 + 16) + OBJC_IVAR____TtC9WorkoutUI15DataLinkMonitor_publisher);
  MetricsPublisher.workoutStatePublisher.getter();

  v5 = WorkoutStatePublisher.activityType.getter();

  if (!v5)
  {
    return 0;
  }

  [v5 effectiveTypeIdentifier];
  [v5 isIndoor];
  [v5 swimmingLocationType];
  IsRouteable = _HKWorkoutActivityTypeIsRouteable();

  return IsRouteable;
}

uint64_t MirrorViewMonitor.deinit()
{

  sub_20C694AEC(*(v0 + 40), *(v0 + 48));
  sub_20C694AEC(*(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t MirrorViewMonitor.__deallocating_deinit()
{

  sub_20C694AEC(*(v0 + 40), *(v0 + 48));
  sub_20C694AEC(*(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t MirrorViewMonitor.receivedMirroredHostCommand(_:closure:)(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, double a4)
{
  v76 = a3;
  v77 = a2;
  v68 = type metadata accessor for DataLinkMirroredClientExpected();
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for DataLinkMirroredClientExpectation();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MirroredHostCommand();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v74 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v61 - v15;
  v75 = type metadata accessor for Logger();
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v64 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - v19;
  v21 = type metadata accessor for DispatchPredicate();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = (&v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v24 = static OS_dispatch_queue.main.getter();
  (*(v22 + 104))(v24, *MEMORY[0x277D85200], v21);
  v25 = _dispatchPreconditionTest(_:)();
  result = (*(v22 + 8))(v24, v21);
  if (v25)
  {
    v73 = v13;
    static WOLog.dataLink.getter();
    v27 = *(v9 + 16);
    v27(v16, a1, v8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = v9;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v62 = a1;
      v71 = v9;
      v61 = v27;
      v32 = v31;
      v33 = swift_slowAlloc();
      v80[0] = v33;
      *v32 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostCommand and conformance MirroredHostCommand, 255, MEMORY[0x277D7E318], MEMORY[0x277D7E320]);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v63 = *(v71 + 8);
      v63(v16, v8);
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v80);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_20C66F000, v28, v29, "[mirrored] receivedMirroredHostCommand (%s)", v32, 0xCu);
      v38 = __swift_destroy_boxed_opaque_existential_1Tm_4(v33);
      MEMORY[0x20F30E080](v33, -1, -1, v38);
      v39 = v32;
      v27 = v61;
      v30 = v71;
      a1 = v62;
      MEMORY[0x20F30E080](v39, -1, -1);
    }

    else
    {

      v63 = *(v9 + 8);
      v63(v16, v8);
    }

    v40 = *(v78 + 8);
    v41 = v75;
    v40(v20, v75);
    v42 = v73;
    v27(v73, a1, v8);
    v43 = (*(v30 + 88))(v42, v8);
    v44 = v74;
    if (v43 == *MEMORY[0x277D7E300])
    {
      started = type metadata accessor for MirroredHostStartConfiguration();
      v46 = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration, 255, MEMORY[0x277D7E658], MEMORY[0x277D7E650]);
      v48 = v67;
      v47 = v68;
      *v67 = started;
      v48[1] = v46;
      (*(v65 + 104))(v48, *MEMORY[0x277D7E640], v47);
      type metadata accessor for DataLinkConstants();
      static DataLinkConstants.defaultExpectationTimeout.getter();
      v49 = v66;
      DataLinkMirroredClientExpectation.init(expected:timeout:)();

      dispatch thunk of DataLinkClient.addClientExpectation(_:)();

      (*(v69 + 8))(v49, v70);
    }

    else if (v43 == *MEMORY[0x277D7E308])
    {
      v50 = v72;
      v51 = *(v72 + 32);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v61 - 4) = v51;
      *(&v61 - 3) = partial apply for closure #1 in MirrorViewMonitor.receivedMirroredHostCommand(_:closure:);
      *(&v61 - 2) = v50;
      v80[0] = v51;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      swift_beginAccess();
      if (*(v51 + 17) != 1)
      {
        v53 = swift_getKeyPath();
        MEMORY[0x28223BE20](v53);
        *(&v61 - 2) = v51;
        *(&v61 - 8) = 1;
        v79 = v51;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    else if (v43 != *MEMORY[0x277D7E310])
    {
      v71 = v30;
      static WOLog.dataLink.getter();
      v27(v44, a1, v8);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = v44;
        v57 = swift_slowAlloc();
        *v57 = 134217984;
        v58 = MirroredHostCommand.rawValue.getter();
        v59 = v56;
        v60 = v63;
        v63(v59, v8);
        *(v57 + 4) = v58;
        _os_log_impl(&dword_20C66F000, v54, v55, "[mirrored] receivedMirroredHostCommand unknown default: %ld", v57, 0xCu);
        MEMORY[0x20F30E080](v57, -1, -1);
      }

      else
      {
        v60 = v63;
        v63(v44, v8);
      }

      v40(v64, v41);
      v60(v42, v8);
    }

    return v77(1, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MirrorViewMonitor.receivedMirroredHostCommand(_:closure:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v42 - v3;
  v5 = type metadata accessor for Logger();
  v47 = *(v5 - 8);
  v48 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MirroredClientCommand();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  (*(v9 + 104))(&v42 - v16, *MEMORY[0x277D7E380], v8, v15);
  static WOLog.dataLink.getter();
  v18 = *(v9 + 16);
  v51 = v17;
  v45 = v18;
  v18(v13, v17, v8);
  v46 = v7;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v52 = v8;
    v22 = v21;
    v43 = swift_slowAlloc();
    v54[0] = v43;
    *v22 = 136315138;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand, 255, MEMORY[0x277D7E388], MEMORY[0x277D7E390]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v4;
    v24 = a1;
    v26 = v25;
    v50 = *(v9 + 8);
    v50(v13, v52);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v54);
    a1 = v24;
    v4 = v44;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_20C66F000, v19, v20, "[mirrored] sendMirroredClientCommand is sending (%s)", v22, 0xCu);
    v28 = v43;
    v29 = __swift_destroy_boxed_opaque_existential_1Tm_4(v43);
    MEMORY[0x20F30E080](v28, -1, -1, v29);
    v30 = v22;
    v8 = v52;
    MEMORY[0x20F30E080](v30, -1, -1);
  }

  else
  {

    v50 = *(v9 + 8);
    v50(v13, v8);
  }

  (*(v47 + 8))(v46, v48);
  v31 = v9;
  static Double.machTimestamp.getter();
  v33 = v32;
  v34 = type metadata accessor for DataLinkMirroredClientExpectation();
  (*(*(v34 - 8) + 56))(v4, 1, 1, v34);
  v35 = v49;
  v36 = v51;
  v45(v49, v51, v8);
  v37 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  (*(v31 + 32))(v38 + v37, v35, v8);

  DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)();

  outlined destroy of DataLinkMirroredClientExpectation?(v4, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v39 = *(a1 + 32);
  swift_getKeyPath();
  v54[0] = v39;
  _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v39 + 18) != 1)
  {
    return (v50)(v36, v8);
  }

  swift_beginAccess();
  if (*(v39 + 17) == 5)
  {
    result = (v50)(v36, v8);
    *(v39 + 17) = 5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v42 - 2) = v39;
    *(&v42 - 8) = 5;
    v53 = v39;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return (v50)(v36, v8);
  }

  return result;
}

uint64_t closure #1 in closure #1 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(int a1, void *a2, uint64_t a3, double a4)
{
  v37 = a1;
  v7 = type metadata accessor for MirroredClientCommand();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Double.machTimestamp.getter();
  v16 = v15;
  static WOLog.dataLink.getter();
  (*(v8 + 16))(v10, a3, v7);
  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v35 = v12;
    v36 = v11;
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v20 = 136315906;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand, 255, MEMORY[0x277D7E388], MEMORY[0x277D7E390]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v38);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v16 - a4;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v37 & 1;
    *(v20 + 28) = 2112;
    if (a2)
    {
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v29 = v36;
    *(v20 + 30) = v26;
    v30 = v33;
    *v33 = v27;
    _os_log_impl(&dword_20C66F000, v18, v19, "[mirrored] sendMirroredClientCommand completion (%s) with roundtripTime: %f (success: %{BOOL}d, error: %@)", v20, 0x26u);
    outlined destroy of DataLinkMirroredClientExpectation?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v30, -1, -1);
    v31 = v34;
    v32 = __swift_destroy_boxed_opaque_existential_1Tm_4(v34);
    MEMORY[0x20F30E080](v31, -1, -1, v32);
    MEMORY[0x20F30E080](v20, -1, -1);

    return (*(v35 + 8))(v14, v29);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t MirrorViewMonitor.receivedMirroredHostStartConfiguration(_:closure:)(uint64_t a1, uint64_t (*a2)(uint64_t, void, __n128), uint64_t a3)
{
  v66 = a3;
  v67 = a2;
  started = type metadata accessor for MirroredHostStartSource();
  v68 = *(started - 8);
  MEMORY[0x28223BE20](started);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v70 = &v56 - v7;
  v8 = type metadata accessor for MirroredHostStartConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = type metadata accessor for Logger();
  v69 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v63 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v56 - v17;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v21 = static OS_dispatch_queue.main.getter();
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v22 = _dispatchPreconditionTest(_:)();
  result = (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v56 = v5;
    static WOLog.dataLink.getter();
    v24 = *(v9 + 16);
    v64 = a1;
    v59 = v9 + 16;
    v58 = v24;
    v24(v13, a1, v8);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v60 = v9;
    v61 = v8;
    v57 = v14;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v75[0] = v29;
      *v28 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostStartConfiguration and conformance MirroredHostStartConfiguration, 255, MEMORY[0x277D7E658], MEMORY[0x277D7E660]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v33 = *(v9 + 8);
      v33(v13, v8);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v75);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_20C66F000, v25, v26, "[mirrored] receivedMirroredHostStartConfiguration (%s)", v28, 0xCu);
      v35 = __swift_destroy_boxed_opaque_existential_1Tm_4(v29);
      MEMORY[0x20F30E080](v29, -1, -1, v35);
      MEMORY[0x20F30E080](v28, -1, -1);
    }

    else
    {

      v33 = *(v9 + 8);
      v33(v13, v8);
    }

    v36 = *(v69 + 8);
    v36(v72, v14);
    v37 = v64;
    v38 = *(v65 + 32);
    v39 = MirroredHostStartConfiguration.workoutConfiguration.getter();
    SessionViewModel.workoutConfiguration.setter(v39);
    v40 = MirroredHostStartConfiguration.usePrecisionStart.getter() & 1;
    swift_beginAccess();
    v41 = v68;
    if (v40 == v38[18])
    {
      v38[18] = v40;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v56 - 2) = v38;
      *(&v56 - 8) = v40;
      v74 = v38;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v43 = v70;
    MirroredHostStartConfiguration.startSource.getter();
    v44 = (*(v41 + 88))(v43, started);
    if (v44 == *MEMORY[0x277D7E410])
    {
      swift_beginAccess();
      if (v38[17] != 5)
      {
LABEL_10:
        v45 = swift_getKeyPath();
        MEMORY[0x28223BE20](v45);
        *(&v56 - 2) = v38;
        *(&v56 - 8) = 5;
        v73 = v38;
        _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    else
    {
      if (v44 != *MEMORY[0x277D7E408])
      {
        v46 = v33;
        static WOLog.dataLink.getter();
        v47 = v62;
        v48 = v37;
        v49 = v61;
        v58(v62, v48, v61);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 134217984;
          v53 = v56;
          MirroredHostStartConfiguration.startSource.getter();
          v54 = MirroredHostStartSource.rawValue.getter();
          (*(v41 + 8))(v53, started);
          v46(v47, v49);
          *(v52 + 4) = v54;
          _os_log_impl(&dword_20C66F000, v50, v51, "[mirrored] receivedMirroredHostStartSource unknown default: %ld", v52, 0xCu);
          MEMORY[0x20F30E080](v52, -1, -1);
        }

        else
        {
          v46(v47, v49);
        }

        v55 = v57;

        v36(v63, v55);
        (*(v41 + 8))(v70, started);
        return (v67)(1, 0);
      }

      if (MirroredHostStartConfiguration.usePrecisionStart.getter())
      {
        swift_beginAccess();
        if (v38[17] != 5)
        {
          goto LABEL_10;
        }
      }
    }

    return (v67)(1, 0);
  }

  __break(1u);
  return result;
}

uint64_t MirrorViewMonitor.receivedMirroredHostAlertStackRequest(_:closure:)(uint64_t a1, uint64_t (*a2)(void, void, __n128))
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredHostAlertStackRequestVSgMd, &_s11WorkoutCore29MirroredHostAlertStackRequestVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v33 - v7;
  v8 = type metadata accessor for MirroredHostAlertStackRequest();
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v35 = v3;
    static WOLog.dataLink.getter();
    v19 = *(v41 + 16);
    v36 = a1;
    v19(v10, a1, v8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43[0] = v34;
      *v22 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostAlertStackRequest and conformance MirroredHostAlertStackRequest, 255, MEMORY[0x277D7E620], MEMORY[0x277D7E630]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = a2;
      v26 = v25;
      (*(v41 + 8))(v10, v8);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v43);
      a2 = v24;

      *(v22 + 4) = v27;
      _os_log_impl(&dword_20C66F000, v20, v21, "[mirrored] receivedMirroredHostAlertStackRequest (%s)", v22, 0xCu);
      v28 = v34;
      v29 = __swift_destroy_boxed_opaque_existential_1Tm_4(v34);
      MEMORY[0x20F30E080](v28, -1, -1, v29);
      MEMORY[0x20F30E080](v22, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v10, v8);
    }

    (*(v37 + 8))(v40, v38);
    v30 = *(v35 + 32);
    v31 = v39;
    v19(v39, v36, v8);
    (*(v41 + 56))(v31, 0, 1, v8);
    SessionViewModel.alertStackRequest.setter(v31);
    swift_beginAccess();
    if (*(v30 + 17) != 4)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v33 - 2) = v30;
      *(&v33 - 8) = 4;
      v42 = v30;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return (a2)(1, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MirrorViewMonitor.receivedMirroredHostMachTimestampRequest(_:closure:)(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v82 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v70 - v6;
  v76 = type metadata accessor for DataLinkMirroredClientExpected();
  v74 = *(v76 - 1);
  MEMORY[0x28223BE20](v76);
  v75 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DataLinkMirroredClientExpectation();
  v84 = *(v8 - 8);
  v85 = v8;
  MEMORY[0x28223BE20](v8);
  v81 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for MirroredClientMachTimestampResponse();
  v80 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v92 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MirroredHostMachTimestampRequest();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v79 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v77 = &v70 - v15;
  v78 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for Logger();
  v90 = *(v20 - 8);
  v91 = v20;
  MEMORY[0x28223BE20](v20);
  v87 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v70 - v23;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = (&v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v28 = static OS_dispatch_queue.main.getter();
  (*(v26 + 104))(v28, *MEMORY[0x277D85200], v25);
  v29 = _dispatchPreconditionTest(_:)();
  result = (*(v26 + 8))(v28, v25);
  if (v29)
  {
    v73 = a3;
    static WOLog.dataLink.getter();
    v88 = *(v12 + 16);
    v89 = v12 + 16;
    v88(v19, a1, v11);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    v33 = os_log_type_enabled(v31, v32);
    v72 = v12;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v70 = a1;
      v36 = v35;
      v93[0] = v35;
      *v34 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest, 255, MEMORY[0x277D7E6C0], MEMORY[0x277D7E6C8]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v71 = *(v12 + 8);
      v71(v19, v11);
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v93);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_20C66F000, v31, v32, "[mirrored] receivedMirroredHostMachTimestampRequest (%s)", v34, 0xCu);
      v41 = __swift_destroy_boxed_opaque_existential_1Tm_4(v36);
      a1 = v70;
      MEMORY[0x20F30E080](v36, -1, -1, v41);
      MEMORY[0x20F30E080](v34, -1, -1);
    }

    else
    {

      v71 = *(v12 + 8);
      v71(v19, v11);
    }

    v42 = *(v90 + 8);
    v42(v24, v91);
    MirroredHostMachTimestampRequest.hostMachTimestamp.getter();
    static Double.machTimestamp.getter();
    MirroredClientMachTimestampResponse.init(hostMachTimestamp:clientMachTimestamp:)();
    v43 = type metadata accessor for MirroredHostCountdownStart();
    v44 = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart, 255, MEMORY[0x277D7E590], MEMORY[0x277D7E588]);
    v45 = v75;
    *v75 = v43;
    v45[1] = v44;
    (*(v74 + 104))(v45, *MEMORY[0x277D7E640], v76);
    type metadata accessor for DataLinkConstants();
    static DataLinkConstants.defaultExpectationTimeout.getter();
    v46 = v81;
    DataLinkMirroredClientExpectation.init(expected:timeout:)();
    v47 = v87;
    static WOLog.dataLink.getter();
    v48 = v77;
    v88(v77, a1, v11);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v76 = v42;
      v52 = v51;
      v53 = swift_slowAlloc();
      v93[0] = v53;
      *v52 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest, 255, MEMORY[0x277D7E6C0], MEMORY[0x277D7E6C8]);
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v55 = v48;
      v57 = v56;
      v58 = v72;
      v71(v55, v11);
      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v57, v93);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_20C66F000, v49, v50, "[mirrored] sendMirroredClientMachTimestampResponse is sending (%s)", v52, 0xCu);
      v60 = __swift_destroy_boxed_opaque_existential_1Tm_4(v53);
      MEMORY[0x20F30E080](v53, -1, -1, v60);
      MEMORY[0x20F30E080](v52, -1, -1);

      v76(v87, v91);
    }

    else
    {

      v58 = v72;
      v71(v48, v11);
      v42(v47, v91);
    }

    v61 = v86;
    static Double.machTimestamp.getter();
    v63 = v62;
    v65 = v84;
    v64 = v85;
    (*(v84 + 16))(v61, v46, v85);
    (*(v65 + 56))(v61, 0, 1, v64);
    v66 = v79;
    v88(v79, a1, v11);
    v67 = (*(v58 + 80) + 24) & ~*(v58 + 80);
    v68 = swift_allocObject();
    *(v68 + 16) = v63;
    (*(v58 + 32))(v68 + v67, v66, v11);

    v69 = v92;
    DataLinkClient.sendMirroredClientMachTimestampResponse(_:clientExpectation:acknowledged:)();

    outlined destroy of DataLinkMirroredClientExpectation?(v61, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    v82(1, 0);
    (*(v65 + 8))(v46, v64);
    return (*(v80 + 8))(v69, v83);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in MirrorViewMonitor.receivedMirroredHostMachTimestampRequest(_:closure:)(int a1, void *a2, uint64_t a3, double a4)
{
  v37 = a1;
  v7 = type metadata accessor for MirroredHostMachTimestampRequest();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Double.machTimestamp.getter();
  v16 = v15;
  static WOLog.dataLink.getter();
  (*(v8 + 16))(v10, a3, v7);
  v17 = a2;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v35 = v12;
    v36 = v11;
    v20 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38 = v34;
    *v20 = 136315906;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest, 255, MEMORY[0x277D7E6C0], MEMORY[0x277D7E6C8]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v8 + 8))(v10, v7);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v38);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2048;
    *(v20 + 14) = v16 - a4;
    *(v20 + 22) = 1024;
    *(v20 + 24) = v37 & 1;
    *(v20 + 28) = 2112;
    if (a2)
    {
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    v29 = v36;
    *(v20 + 30) = v26;
    v30 = v33;
    *v33 = v27;
    _os_log_impl(&dword_20C66F000, v18, v19, "[mirrored] sendMirroredClientMachTimestampResponse completion (%s) with roundtripTime: %f (success: %{BOOL}d, error: %@)", v20, 0x26u);
    outlined destroy of DataLinkMirroredClientExpectation?(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F30E080](v30, -1, -1);
    v31 = v34;
    v32 = __swift_destroy_boxed_opaque_existential_1Tm_4(v34);
    MEMORY[0x20F30E080](v31, -1, -1, v32);
    MEMORY[0x20F30E080](v20, -1, -1);

    return (*(v35 + 8))(v14, v29);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
    return (*(v12 + 8))(v14, v11);
  }
}

void MirrorViewMonitor.receivedMirroredHostCountdownStart(_:closure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v109 = a3;
  v108 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v116 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v114 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DispatchQoS();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v125 = v7;
  v126 = v8;
  MEMORY[0x28223BE20](v7);
  v107 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v105 = &v101 - v11;
  MEMORY[0x28223BE20](v12);
  v117 = &v101 - v13;
  v106 = v14;
  MEMORY[0x28223BE20](v15);
  v124 = &v101 - v16;
  v111 = type metadata accessor for DispatchTime();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v122 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v123 = &v101 - v19;
  v20 = type metadata accessor for MirroredHostCountdownStart();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Logger();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v101 - v26;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v101 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v104 = type metadata accessor for OS_dispatch_queue();
  *v31 = static OS_dispatch_queue.main.getter();
  (*(v29 + 104))(v31, *MEMORY[0x277D85200], v28);
  v32 = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v31, v28);
  if ((v32 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  MirroredHostCountdownStart.hostMachDelay.getter();
  v33 = 0.0;
  v34 = 0.0;
  if (v35 >= 0.0)
  {
    MirroredHostCountdownStart.hostMachDelay.getter();
    v34 = v36;
  }

  v103 = v4;
  static Double.machTimestamp.getter();
  v38 = v37;
  MirroredHostCountdownStart.clientMachTimestamp.getter();
  if (v39 > 0.0)
  {
    MirroredHostCountdownStart.clientMachTimestamp.getter();
    v33 = v38 - v40;
  }

  if (v33 < 0.0)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v33;
  }

  v42 = (v34 - v41) * 0.5;
  static WOLog.dataLink.getter();
  (*(v21 + 16))(v23, a1, v20);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v45 = 136315138;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart, 255, MEMORY[0x277D7E590], MEMORY[0x277D7E598]);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    (*(v21 + 8))(v23, v20);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, aBlock);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_20C66F000, v43, v44, "[mirrored] receivedMirroredHostCountdownStart (%s)", v45, 0xCu);
    v51 = __swift_destroy_boxed_opaque_existential_1Tm_4(v46);
    MEMORY[0x20F30E080](v46, -1, -1, v51);
    MEMORY[0x20F30E080](v45, -1, -1);
  }

  else
  {

    (*(v21 + 8))(v23, v20);
  }

  v52 = *(v119 + 8);
  v52(v27, v120);
  v53 = v125;
  v54 = v117;
  static DispatchTime.now()();
  static Date.now.getter();
  + infix(_:_:)();
  v55 = DispatchTime.uptimeNanoseconds.getter();
  v56 = DispatchTime.uptimeNanoseconds.getter() >= v55;
  v57 = v121;
  v58 = v126;
  v59 = v118;
  if (v56)
  {
    goto LABEL_15;
  }

  v60 = v118;
  v61 = v53;
  v62 = v54;
  v63 = v121;
  v64 = DispatchTime.uptimeNanoseconds.getter();
  if (v64 < DispatchTime.uptimeNanoseconds.getter())
  {
LABEL_22:
    __break(1u);
    return;
  }

  v57 = v63;
  v54 = v62;
  v53 = v61;
  v59 = v60;
  v58 = v126;
LABEL_15:
  v117 = v52;
  Date.addingTimeInterval(_:)();
  v65 = *(v57 + 32);
  swift_beginAccess();
  if (*(v65 + 17) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v101 - 2) = v65;
    *(&v101 - 8) = 2;
    aBlock[0] = v65;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  static WOLog.dataLink.getter();
  v67 = *(v58 + 16);
  v68 = v105;
  v67(v105, v54, v53);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = v68;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v72 = 136316418;
    v74 = Date.logString.getter();
    v76 = v75;
    v77 = *(v126 + 8);
    v102 = (v126 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v105 = v77;
    (v77)(v71, v125);
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, aBlock);
    v53 = v125;

    *(v72 + 4) = v78;
    *(v72 + 12) = 2048;
    *(v72 + 14) = v38;
    *(v72 + 22) = 2048;
    *(v72 + 24) = v33;
    *(v72 + 32) = 2048;
    *(v72 + 34) = v41;
    *(v72 + 42) = 2048;
    *(v72 + 44) = v42;
    *(v72 + 52) = 2048;
    *(v72 + 54) = v34;
    _os_log_impl(&dword_20C66F000, v69, v70, "[mirrored] created Countdown Deadline with fireDate: %s, client (now: %f, roundtrip: %f, delay: %f, secondsUntilStart: %f), host (delay: %f)", v72, 0x3Eu);
    v79 = __swift_destroy_boxed_opaque_existential_1Tm_4(v73);
    v80 = v73;
    v58 = v126;
    MEMORY[0x20F30E080](v80, -1, -1, v79);
    MEMORY[0x20F30E080](v72, -1, -1);

    v81 = v118;
  }

  else
  {

    v82 = *(v58 + 8);
    v102 = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v105 = v82;
    (v82)(v68, v53);
    v81 = v59;
  }

  (v117)(v81, v120);
  v83 = v109;
  v84 = v108;
  v125 = static OS_dispatch_queue.main.getter();
  v85 = swift_allocObject();
  swift_weakInit();
  v86 = v107;
  v67(v107, v54, v53);
  v87 = (*(v58 + 80) + 48) & ~*(v58 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = v85;
  *(v88 + 24) = v84;
  *(v88 + 32) = v83;
  *(v88 + 40) = v42;
  (*(v58 + 32))(v88 + v87, v86, v53);
  aBlock[4] = partial apply for closure #1 in MirrorViewMonitor.receivedMirroredHostCountdownStart(_:closure:);
  aBlock[5] = v88;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_35;
  v89 = _Block_copy(aBlock);

  v90 = v112;
  static DispatchQoS.unspecified.getter();
  v127 = MEMORY[0x277D84F90];
  _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v91 = v54;
  v92 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  v93 = v114;
  v94 = v103;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v95 = v122;
  v96 = v125;
  MEMORY[0x20F30C1A0](v122, v90, v93, v89);
  _Block_release(v89);

  (*(v116 + 8))(v93, v94);
  (*(v113 + 8))(v90, v115);
  v97 = v91;
  v98 = v105;
  (v105)(v97, v92);
  v99 = *(v110 + 8);
  v100 = v111;
  v99(v95, v111);
  v98(v124, v92);
  v99(v123, v100);
}

void closure #1 in MirrorViewMonitor.receivedMirroredHostCountdownStart(_:closure:)(uint64_t a1, void (*a2)(uint64_t, void, __n128), uint64_t a3, uint64_t a4, double a5)
{
  v54 = a3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v52 = *(v12 - 8);
  v53 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v50 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v50 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v51 = a2;
    v23 = *(Strong + 32);
    swift_getKeyPath();
    v56[1] = v23;
    v50[1] = _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(v23 + 17) == 2)
    {
      static WOLog.dataLink.getter();
      (*(v9 + 16))(v11, a4, v8);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v50[0] = swift_slowAlloc();
        v55[0] = v50[0];
        *v26 = 134218242;
        *(v26 + 4) = a5;
        *(v26 + 12) = 2080;
        v27 = Date.logString.getter();
        v29 = v28;
        (*(v9 + 8))(v11, v8);
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v55);

        *(v26 + 14) = v30;
        _os_log_impl(&dword_20C66F000, v24, v25, "[mirrored] Countdown begin sequence after delay of %f seconds on client, fireDate: %s", v26, 0x16u);
        v31 = v50[0];
        v32 = __swift_destroy_boxed_opaque_existential_1Tm_4(v50[0]);
        MEMORY[0x20F30E080](v31, -1, -1, v32);
        MEMORY[0x20F30E080](v26, -1, -1);
      }

      else
      {

        (*(v9 + 8))(v11, v8);
      }

      (*(v52 + 8))(v17, v53);
      v47 = *(v22 + 32);
      swift_beginAccess();
      if (*(v47 + 16) == 1)
      {
        *(v47 + 16) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v50[-2] = v47;
        LOBYTE(v50[-1]) = 1;
        v56[0] = v47;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      (v51)(1, 0);
      goto LABEL_36;
    }

    static WOLog.dataLink.getter();

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v38, v39))
    {

      (*(v52 + 8))(v14, v53);
      (v51)(1, 0);
LABEL_36:

      return;
    }

    v40 = 0xEE0077656956676ELL;
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v56[0] = v42;
    *v41 = 136315394;
    v43 = *(v22 + 32);
    swift_getKeyPath();
    v55[0] = v43;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v44 = *(v43 + 17);
    if (v44 > 2)
    {
      if (v44 != 3)
      {
        if (v44 == 4)
        {
          v45 = 0x6174537472656C61;
        }

        else
        {
          v45 = 0x6F69737365536E69;
        }

        if (v44 == 4)
        {
          v40 = 0xEE00776569566B63;
        }

        else
        {
          v40 = 0xED0000776569566ELL;
        }

        v46 = v51;
        goto LABEL_35;
      }

      v40 = 0xEB00000000776569;
      v45 = 0x567972616D6D7573;
    }

    else
    {
      if (*(v43 + 17))
      {
        if (v44 == 1)
        {
          v45 = 0xD000000000000011;
        }

        else
        {
          v45 = 0x776F64746E756F63;
        }

        if (v44 == 1)
        {
          v40 = 0x800000020CB9A080;
        }

        else
        {
          v40 = 0xED0000776569566ELL;
        }

        v46 = v51;
        goto LABEL_35;
      }

      v45 = 0x697463656E6E6F63;
    }

    v46 = v51;
LABEL_35:
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v40, v56);

    *(v41 + 4) = v49;
    *(v41 + 12) = 2080;
    *(v41 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x776F64746E756F63, 0xED0000776569566ELL, v56);
    _os_log_impl(&dword_20C66F000, v38, v39, "[mirrored] Countdown begin sequence skipped, current view (%s) is not (%s)", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F30E080](v42, -1, -1);
    MEMORY[0x20F30E080](v41, -1, -1);

    (*(v52 + 8))(v14, v53);
    v46(1, 0);
    goto LABEL_36;
  }

  static WOLog.dataLink.getter();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = a2;
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_20C66F000, v33, v34, "[mirrored] Countdown begin sequence skipped, self is nil", v36, 2u);
    v37 = v36;
    a2 = v35;
    MEMORY[0x20F30E080](v37, -1, -1);
  }

  (*(v52 + 8))(v20, v53);
  (a2)(1, 0);
}

uint64_t MirrorViewMonitor.receivedMirroredHostSummaryUpdate(_:closure:)(uint64_t a1, uint64_t (*a2)(void, void, __n128))
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25MirroredHostSummaryUpdateVSgMd, &_s11WorkoutCore25MirroredHostSummaryUpdateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v33 - v7;
  v8 = type metadata accessor for MirroredHostSummaryUpdate();
  v41 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v17 = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v35 = v3;
    static WOLog.dataLink.getter();
    v19 = *(v41 + 16);
    v36 = a1;
    v19(v10, a1, v8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43[0] = v34;
      *v22 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate, 255, MEMORY[0x277D7E538], MEMORY[0x277D7E548]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = a2;
      v26 = v25;
      (*(v41 + 8))(v10, v8);
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v26, v43);
      a2 = v24;

      *(v22 + 4) = v27;
      _os_log_impl(&dword_20C66F000, v20, v21, "[mirrored] receivedMirroredHostSummaryUpdate (%s)", v22, 0xCu);
      v28 = v34;
      v29 = __swift_destroy_boxed_opaque_existential_1Tm_4(v34);
      MEMORY[0x20F30E080](v28, -1, -1, v29);
      MEMORY[0x20F30E080](v22, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v10, v8);
    }

    (*(v37 + 8))(v40, v38);
    v30 = *(v35 + 32);
    v31 = v39;
    v19(v39, v36, v8);
    (*(v41 + 56))(v31, 0, 1, v8);
    SessionViewModel.summaryUpdate.setter(v31);
    swift_beginAccess();
    if (*(v30 + 17) != 3)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v33 - 2) = v30;
      *(&v33 - 8) = 3;
      v42 = v30;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    return (a2)(1, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MirrorViewMonitor.failedClientExpectation(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataLinkMirroredClientExpectation();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v14 = static OS_dispatch_queue.main.getter();
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    static WOLog.dataLink.getter();
    (*(v5 + 16))(v7, a1, v4);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v2;
      v21 = v20;
      v30 = v20;
      *v19 = 136315138;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type DataLinkMirroredClientExpectation and conformance DataLinkMirroredClientExpectation, 255, MEMORY[0x277D7E6D0], MEMORY[0x277D7E6D8]);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      (*(v5 + 8))(v7, v4);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v30);

      *(v19 + 4) = v25;
      _os_log_impl(&dword_20C66F000, v17, v18, "[mirrored] failedClientExpectation (%s) end session", v19, 0xCu);
      v26 = __swift_destroy_boxed_opaque_existential_1Tm_4(v21);
      MEMORY[0x20F30E080](v21, -1, -1, v26);
      MEMORY[0x20F30E080](v19, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v28 + 8))(v10, v29);
    return dispatch thunk of DataLinkClient.endSession()();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v78 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = v66 - v8;
  v73 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v74 = v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v66 - v15;
  MEMORY[0x28223BE20](v17);
  v79 = v66 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = v66 - v20;
  active = type metadata accessor for DataLinkActivePairedWatchCapability();
  v76 = *(active - 8);
  MEMORY[0x28223BE20](active);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = specialized SessionViewModel.__allocating_init()();
  v25 = MEMORY[0x277D84F90];
  *(v4 + 32) = v24;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0;
  if (v25 >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v26 = MEMORY[0x277D84FA0];
  }

  *(v4 + 80) = v26;
  v80 = v4 + 80;
  *(v4 + 88) = 2;
  *(v4 + 16) = a1;
  type metadata accessor for WorkoutNotificationCenter();
  swift_allocObject();
  v75 = a1;
  *(v4 + 24) = WorkoutNotificationCenter.init()();
  _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MirrorViewMonitor and conformance MirrorViewMonitor, v27, type metadata accessor for MirrorViewMonitor, &protocol conformance descriptor for MirrorViewMonitor);

  dispatch thunk of DataLinkClient.mirroredClientDelegate.setter();

  v28 = *(v4 + 32);
  v29 = OBJC_IVAR____TtC9WorkoutUI16SessionViewModel__supportsTapToSkipCountdown;
  swift_beginAccess();
  v30 = *(v28 + v29);
  v67 = v16;
  if (v30)
  {
    KeyPath = swift_getKeyPath();
    v66[0] = v23;
    v66[1] = v66;
    MEMORY[0x28223BE20](KeyPath);
    v66[-2] = v28;
    LOBYTE(v66[-1]) = 0;
    aBlock[0] = v28;
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v23 = v66[0];
  }

  else
  {
    *(v28 + v29) = 0;
  }

  v32 = *(v4 + 56);
  v33 = *(v4 + 64);
  v34 = v78;
  *(v4 + 56) = v78;
  *(v4 + 64) = a3;
  sub_20C694B3C(v34, a3);
  sub_20C694AEC(v32, v33);
  MetricsPublisher.workoutStatePublisher.getter();
  LOBYTE(v33) = WorkoutStatePublisher.workoutStarted.getter();

  *(v4 + 72) = v33 & 1;
  v35 = v76;
  v36 = active;
  (*(v76 + 104))(v23, *MEMORY[0x277D7E6E0], active);
  v37 = MEMORY[0x20F306B70](v23);
  (*(v35 + 8))(v23, v36);
  static WOLog.dataLink.getter();

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v21;
    v41 = swift_slowAlloc();
    *v41 = 67109376;
    *(v41 + 4) = *(v4 + 72);

    *(v41 + 8) = 1024;
    *(v41 + 10) = v37 & 1;
    _os_log_impl(&dword_20C66F000, v38, v39, "[mirrored] MirrorViewMonitor init (workoutStarted: %{BOOL}d, napiliAligned: %{BOOL}d)", v41, 0xEu);
    v42 = v41;
    v21 = v40;
    MEMORY[0x20F30E080](v42, -1, -1);
  }

  else
  {
  }

  v43 = *(v12 + 8);
  v43(v21, v11);
  if (*(v4 + 72) == 1)
  {
    static WOLog.dataLink.getter();
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_20C66F000, v44, v45, "[mirrored] MirrorViewMonitor observed workout already started, switch to inSessionView", v46, 2u);
      MEMORY[0x20F30E080](v46, -1, -1);
    }

    v43(v79, v11);
    v47 = *(v4 + 32);
    swift_beginAccess();
    if (*(v47 + 17) != 5)
    {
LABEL_23:
      v62 = swift_getKeyPath();
      MEMORY[0x28223BE20](v62);
      v66[-2] = v47;
      LOBYTE(v66[-1]) = 5;
      v85 = v47;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (v37)
  {
    v48 = *(v4 + 32);
    swift_beginAccess();
    if (*(v48 + 32) != 19)
    {
      v49 = swift_getKeyPath();
      v79 = v66;
      MEMORY[0x28223BE20](v49);
      v66[-2] = v48;
      v66[-1] = 19;
      aBlock[0] = v48;
      _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionViewModel and conformance SessionViewModel, 255, type metadata accessor for SessionViewModel, &protocol conformance descriptor for SessionViewModel);
      v78 = 0;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v50 = v67;
    static WOLog.dataLink.getter();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_20C66F000, v51, v52, "[mirrored] MirrorViewMonitor is initiating MirroredStart handshake", v53, 2u);
      MEMORY[0x20F30E080](v53, -1, -1);
    }

    v43(v50, v11);
    type metadata accessor for OS_dispatch_queue();
    v54 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #1 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:);
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_63;
    v55 = _Block_copy(aBlock);

    v56 = v68;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v57 = v70;
    v58 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v56, v57, v55);
    _Block_release(v55);

    (*(v72 + 8))(v57, v58);
    (*(v69 + 8))(v56, v71);
  }

  else
  {
    static WOLog.dataLink.getter();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_20C66F000, v59, v60, "[mirrored] MirrorViewMonitor observed activePairedWatch is not MirroredStart capable, switch to inSessionView", v61, 2u);
      MEMORY[0x20F30E080](v61, -1, -1);
    }

    v43(v74, v11);
    v47 = *(v4 + 32);
    swift_beginAccess();
    if (*(v47 + 17) != 5)
    {
      goto LABEL_23;
    }
  }

  MetricsPublisher.workoutStatePublisher.getter();
  v63 = v81;
  WorkoutStatePublisher.$workoutStarted.getter();

  swift_allocObject();
  swift_weakInit();
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR, MEMORY[0x277CBCEC8]);
  v64 = v83;
  Publisher<>.sink(receiveValue:)();

  (*(v82 + 8))(v63, v64);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t _s9WorkoutUI20SessionControlsSheetVWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9WorkoutUI20SessionControlsSheetVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double __swift_destroy_boxed_opaque_existential_1Tm_4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t partial apply for closure #1 in MirrorViewMonitor.receivedMirroredHostMachTimestampRequest(_:closure:)(int a1, void *a2, double a3)
{
  v6 = *(type metadata accessor for MirroredHostMachTimestampRequest() - 8);
  v7 = *(v3 + 16);
  v8 = v3 + ((*(v6 + 80) + 24) & ~*(v6 + 80));

  return closure #1 in MirrorViewMonitor.receivedMirroredHostMachTimestampRequest(_:closure:)(a1, a2, v8, v7);
}

void partial apply for closure #1 in MirrorViewMonitor.receivedMirroredHostCountdownStart(_:closure:)()
{
  v1 = *(type metadata accessor for Date() - 8);
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  closure #1 in MirrorViewMonitor.receivedMirroredHostCountdownStart(_:closure:)(v2, v3, v4, v6, v5);
}

double block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<MapHostingMirrorView, SessionView> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<MapHostingMirrorView, SessionView> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<MapHostingMirrorView, SessionView> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB020MapHostingMirrorViewVAD07SessionI0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB020MapHostingMirrorViewVAD07SessionI0VGMR);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type MapHostingMirrorView and conformance MapHostingMirrorView, 255, type metadata accessor for MapHostingMirrorView, &protocol conformance descriptor for MapHostingMirrorView);
    _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(&lazy protocol witness table cache variable for type SessionView and conformance SessionView, 255, type metadata accessor for SessionView, &protocol conformance descriptor for SessionView);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<MapHostingMirrorView, SessionView> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of DataLinkMirroredClientExpectation?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s9WorkoutUI16SessionViewModelCAC11Observation10ObservableAAWlTm_1(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroy_18Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 24) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:);

  return closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #2 in MirrorViewMonitor.init(dataLinkMonitor:summaryViewControllerCompletion:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t FlightsClimbedMetricView.init(flightsClimbed:formattingManager:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  *(a2 + 8) = result;
  return result;
}

void FlightsClimbedMetricView.body.getter(uint64_t a1@<X8>)
{
  v26 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v25 = *v1;
  v14 = v25;
  v27 = v25;
  static Locale.autoupdatingCurrent.getter();
  lazy protocol witness table accessor for type Double and conformance Double();
  FloatingPointFormatStyle.init(locale:)();
  v15 = v26;
  (*(v3 + 104))(v5, *MEMORY[0x277D84688], v26);
  MEMORY[0x20F3024B0](v5, 0, 1, v7);
  (*(v3 + 8))(v5, v15);
  v16 = *(v8 + 8);
  v16(v10, v7);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>();
  BinaryFloatingPoint.formatted<A>(_:)();
  v16(v13, v7);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v14 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v17 = v28;
  v18 = v29;
  v19 = MEMORY[0x20F30D2E0](v14);
  if (v19)
  {
    v20 = v19;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  *a1 = v17;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

unint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>()
{
  result = lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>;
  if (!lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlightsClimbedMetricView(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FlightsClimbedMetricView(uint64_t result, int a2, int a3)
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

uint64_t RaceElevationMetricView.init(racePosition:positionOnRoute:ghostPositionOnRoute:chartProperties:formattingManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for RaceElevationMetricView(0);
  v13 = a4 + v12[9];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v12[10];
  if (one-time initialization token for iconWidth != -1)
  {
    swift_once();
  }

  *(a4 + v14) = *&static RacePlatterConstants.iconWidth * 0.5;
  *(a4 + v12[11]) = 0x4014000000000000;
  v15 = type metadata accessor for RacePosition();
  result = (*(*(v15 - 8) + 32))(a4, a1, v15);
  *(a4 + v12[5]) = a5;
  *(a4 + v12[7]) = a6;
  *(a4 + v12[8]) = a2;
  *(a4 + v12[6]) = a3;
  return result;
}

uint64_t type metadata accessor for RaceElevationMetricView(uint64_t a1)
{
  result = type metadata singleton initialization cache for RaceElevationMetricView;
  if (!type metadata singleton initialization cache for RaceElevationMetricView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RaceElevationMetricView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v171 = a1;
  v170 = type metadata accessor for EnvironmentValues();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v168 = v150 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts9ScaleTypeVSgMd, &_s6Charts9ScaleTypeVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v185 = v150 - v5;
  v6 = type metadata accessor for RacePosition();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v178 = v150 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v177 = v150 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = (v150 - v12);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMd, &_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMR);
  v181 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v15 = v150 - v14;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE10chartYAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyAKyAKyAD0I5TupleVyAD0H7ContentPADE4mask7contentQrqd__yXE_tAdNRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceH5PointVGSiAD4PlotVyAMyAoDE15foregroundStyleyQrqd__AA05ShapeW0Rd__lFQOyAD8AreaMarkV_AA5ColorVQo__AoDEAZyQrqd__AAA_Rd__lFQOyAoDE04lineW0yQrAA06StrokeW0VFQOyAD04LineZ0V_Qo__A3_Qo_QPGGG_AD09RectangleZ0VQo__AoDEA5_yQrA7_FQOyAoDEAZyQrqd__AAA_Rd__lFQOyAD04RuleZ0V_A3_Qo__Qo_QPGAMyA17__AoDEAZyQrqd__AAA_Rd__lFQOyASyAWSiAYyAMyA1__A10_QPGGG_AA14LinearGradientVQo_ASySaySdGSdAoDE7opacityyQrSdFQOyA21__Qo_GSgA21_AMyA21__AoDE10annotation8position9alignment7spacingAQQrAD18AnnotationPositionV_AA9AlignmentV0R8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAoDE6symbolA46_Qrqd__yXE_tAaBRd__lFQOyAD0tZ0V_AA08ModifiedL0VyAA04FillxC0VyAA6CircleVA3_AA06StrokexC0VyA54_A3_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A50_yAA5ImageVAA011_ForegroundW8ModifierVyA3_GGQo_QPGQPGGAKyAMyA17__A21_AMyA21__A64_QPGQPGAMyA17__AoDEA30_yQrSdFQOyA17__Qo_A21_QPGGGA17_GG_Qo_Md, &_s7SwiftUI4ViewP6ChartsE10chartYAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyAKyAKyAD0I5TupleVyAD0H7ContentPADE4mask7contentQrqd__yXE_tAdNRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceH5PointVGSiAD4PlotVyAMyAoDE15foregroundStyleyQrqd__AA05ShapeW0Rd__lFQOyAD8AreaMarkV_AA5ColorVQo__AoDEAZyQrqd__AAA_Rd__lFQOyAoDE04lineW0yQrAA06StrokeW0VFQOyAD04LineZ0V_Qo__A3_Qo_QPGGG_AD09RectangleZ0VQo__AoDEA5_yQrA7_FQOyAoDEAZyQrqd__AAA_Rd__lFQOyAD04RuleZ0V_A3_Qo__Qo_QPGAMyA17__AoDEAZyQrqd__AAA_Rd__lFQOyASyAWSiAYyAMyA1__A10_QPGGG_AA14LinearGradientVQo_ASySaySdGSdAoDE7opacityyQrSdFQOyA21__Qo_GSgA21_AMyA21__AoDE10annotation8position9alignment7spacingAQQrAD18AnnotationPositionV_AA9AlignmentV0R8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAoDE6symbolA46_Qrqd__yXE_tAaBRd__lFQOyAD0tZ0V_AA08ModifiedL0VyAA04FillxC0VyAA6CircleVA3_AA06StrokexC0VyA54_A3_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A50_yAA5ImageVAA011_ForegroundW8ModifierVyA3_GGQo_QPGQPGGAKyAMyA17__A21_AMyA21__A64_QPGQPGAMyA17__AoDEA30_yQrSdFQOyA17__Qo_A21_QPGGGA17_GG_Qo_MR);
  v175 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v17 = v150 - v16;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE11chartYScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5YAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyARyARyAD0O5TupleVyAD0N7ContentPADE4mask7contentQrqd__yXE_tAdURd__lFQOyAA7ForEachVySay11WorkoutCore04RaceN5PointVGSiAD4PlotVyATyAvDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AvDEA5_yQrqd__AAA6_Rd__lFQOyAvDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A10_Qo_QPGGG_AD13RectangleMarkVQo__AvDEA12_yQrA14_FQOyAvDEA5_yQrqd__AAA6_Rd__lFQOyAD8RuleMarkV_A10_Qo__Qo_QPGATyA24__AvDEA5_yQrqd__AAA6_Rd__lFQOyAZyA2_SiA4_yATyA8__A17_QPGGG_AA14LinearGradientVQo_AZySaySdGSdAvDE7opacityyQrSdFQOyA28__Qo_GSgA28_ATyA28__AvDE10annotation8position9alignment7spacingAXQrAD18AnnotationPositionV_AA9AlignmentV0X8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAvDE6symbolA53_Qrqd__yXE_tAaBRd__lFQOyAD0Z4MarkV_AA08ModifiedR0VyAA09FillShapeC0VyAA6CircleVA10_AA011StrokeShapeC0VyA61_A10_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A57_yAA5ImageVAA24_ForegroundStyleModifierVyA10_GGQo_QPGQPGGARyATyA24__A28_ATyA28__A71_QPGQPGATyA24__AvDEA37_yQrSdFQOyA24__Qo_A28_QPGGGA24_GG_Qo__SNySdGQo_Md, &_s7SwiftUI4ViewP6ChartsE11chartYScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5YAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyARyARyAD0O5TupleVyAD0N7ContentPADE4mask7contentQrqd__yXE_tAdURd__lFQOyAA7ForEachVySay11WorkoutCore04RaceN5PointVGSiAD4PlotVyATyAvDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AvDEA5_yQrqd__AAA6_Rd__lFQOyAvDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A10_Qo_QPGGG_AD13RectangleMarkVQo__AvDEA12_yQrA14_FQOyAvDEA5_yQrqd__AAA6_Rd__lFQOyAD8RuleMarkV_A10_Qo__Qo_QPGATyA24__AvDEA5_yQrqd__AAA6_Rd__lFQOyAZyA2_SiA4_yATyA8__A17_QPGGG_AA14LinearGradientVQo_AZySaySdGSdAvDE7opacityyQrSdFQOyA28__Qo_GSgA28_ATyA28__AvDE10annotation8position9alignment7spacingAXQrAD18AnnotationPositionV_AA9AlignmentV0X8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAvDE6symbolA53_Qrqd__yXE_tAaBRd__lFQOyAD0Z4MarkV_AA08ModifiedR0VyAA09FillShapeC0VyAA6CircleVA10_AA011StrokeShapeC0VyA61_A10_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A57_yAA5ImageVAA24_ForegroundStyleModifierVyA10_GGQo_QPGQPGGARyATyA24__A28_ATyA28__A71_QPGQPGATyA24__AvDEA37_yQrSdFQOyA24__Qo_A28_QPGGGA24_GG_Qo__SNySdGQo_MR);
  v176 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v173 = v150 - v18;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE10chartXAxisyQrAA10VisibilityOFQOyAcDE0E6YScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0K6DomainRd__lFQOyAcDE0E5YAxisyQrAGFQOyAD5ChartVyAD18BuilderConditionalVyASyASyAD0P5TupleVyAD0O7ContentPADE4mask7contentQrqd__yXE_tAdVRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceO5PointVGSiAD4PlotVyAUyAwDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AwDEA6_yQrqd__AAA7_Rd__lFQOyAwDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A11_Qo_QPGGG_AD13RectangleMarkVQo__AwDEA13_yQrA15_FQOyAwDEA6_yQrqd__AAA7_Rd__lFQOyAD8RuleMarkV_A11_Qo__Qo_QPGAUyA25__AwDEA6_yQrqd__AAA7_Rd__lFQOyA_yA3_SiA5_yAUyA9__A18_QPGGG_AA14LinearGradientVQo_A_ySaySdGSdAwDE7opacityyQrSdFQOyA29__Qo_GSgA29_AUyA29__AwDE10annotation8position9alignment7spacingAYQrAD18AnnotationPositionV_AA9AlignmentV0Y8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAwDE6symbolA54_Qrqd__yXE_tAaBRd__lFQOyAD9PointMarkV_AA08ModifiedS0VyAA09FillShapeC0VyAA6CircleVA11_AA011StrokeShapeC0VyA62_A11_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A58_yAA5ImageVAA24_ForegroundStyleModifierVyA11_GGQo_QPGQPGGASyAUyA25__A29_AUyA29__A72_QPGQPGAUyA25__AwDEA38_yQrSdFQOyA25__Qo_A29_QPGGGA25_GG_Qo__SNySdGQo__Qo_Md, &_s7SwiftUI4ViewP6ChartsE10chartXAxisyQrAA10VisibilityOFQOyAcDE0E6YScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0K6DomainRd__lFQOyAcDE0E5YAxisyQrAGFQOyAD5ChartVyAD18BuilderConditionalVyASyASyAD0P5TupleVyAD0O7ContentPADE4mask7contentQrqd__yXE_tAdVRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceO5PointVGSiAD4PlotVyAUyAwDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AwDEA6_yQrqd__AAA7_Rd__lFQOyAwDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A11_Qo_QPGGG_AD13RectangleMarkVQo__AwDEA13_yQrA15_FQOyAwDEA6_yQrqd__AAA7_Rd__lFQOyAD8RuleMarkV_A11_Qo__Qo_QPGAUyA25__AwDEA6_yQrqd__AAA7_Rd__lFQOyA_yA3_SiA5_yAUyA9__A18_QPGGG_AA14LinearGradientVQo_A_ySaySdGSdAwDE7opacityyQrSdFQOyA29__Qo_GSgA29_AUyA29__AwDE10annotation8position9alignment7spacingAYQrAD18AnnotationPositionV_AA9AlignmentV0Y8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAwDE6symbolA54_Qrqd__yXE_tAaBRd__lFQOyAD9PointMarkV_AA08ModifiedS0VyAA09FillShapeC0VyAA6CircleVA11_AA011StrokeShapeC0VyA62_A11_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A58_yAA5ImageVAA24_ForegroundStyleModifierVyA11_GGQo_QPGQPGGASyAUyA25__A29_AUyA29__A72_QPGQPGAUyA25__AwDEA38_yQrSdFQOyA25__Qo_A29_QPGGGA25_GG_Qo__SNySdGQo__Qo_MR);
  v151 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v183 = v150 - v19;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewP6ChartsE11chartXScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5XAxisyQrAA10VisibilityOFQOyAcDE0E6YScaleAfGQrqd___AJtAdKRd__lFQOyAcDE0E5YAxisyQrANFQOyAD5ChartVyAD18BuilderConditionalVyATyATyAD0Q5TupleVyAD0P7ContentPADE4mask7contentQrqd__yXE_tAdWRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceP5PointVGSiAD4PlotVyAVyAxDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AxDEA7_yQrqd__AAA8_Rd__lFQOyAxDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A12_Qo_QPGGG_AD13RectangleMarkVQo__AxDEA14_yQrA16_FQOyAxDEA7_yQrqd__AAA8_Rd__lFQOyAD8RuleMarkV_A12_Qo__Qo_QPGAVyA26__AxDEA7_yQrqd__AAA8_Rd__lFQOyA0_yA4_SiA6_yAVyA10__A19_QPGGG_AA14LinearGradientVQo_A0_ySaySdGSdAxDE7opacityyQrSdFQOyA30__Qo_GSgA30_AVyA30__AxDE10annotation8position9alignment7spacingAZQrAD18AnnotationPositionV_AA9AlignmentV0Z8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAxDE6symbolA55_Qrqd__yXE_tAaBRd__lFQOyAD9PointMarkV_AA08ModifiedT0VyAA09FillShapeC0VyAA6CircleVA12_AA011StrokeShapeC0VyA63_A12_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A59_yAA5ImageVAA24_ForegroundStyleModifierVyA12_GGQo_QPGQPGGATyAVyA26__A30_AVyA30__A73_QPGQPGAVyA26__AxDEA39_yQrSdFQOyA26__Qo_A30_QPGGGA26_GG_Qo__SNySdGQo__Qo__A93_Qo_Md, &_s7SwiftUI4ViewP6ChartsE11chartXScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5XAxisyQrAA10VisibilityOFQOyAcDE0E6YScaleAfGQrqd___AJtAdKRd__lFQOyAcDE0E5YAxisyQrANFQOyAD5ChartVyAD18BuilderConditionalVyATyATyAD0Q5TupleVyAD0P7ContentPADE4mask7contentQrqd__yXE_tAdWRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceP5PointVGSiAD4PlotVyAVyAxDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AxDEA7_yQrqd__AAA8_Rd__lFQOyAxDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A12_Qo_QPGGG_AD13RectangleMarkVQo__AxDEA14_yQrA16_FQOyAxDEA7_yQrqd__AAA8_Rd__lFQOyAD8RuleMarkV_A12_Qo__Qo_QPGAVyA26__AxDEA7_yQrqd__AAA8_Rd__lFQOyA0_yA4_SiA6_yAVyA10__A19_QPGGG_AA14LinearGradientVQo_A0_ySaySdGSdAxDE7opacityyQrSdFQOyA30__Qo_GSgA30_AVyA30__AxDE10annotation8position9alignment7spacingAZQrAD18AnnotationPositionV_AA9AlignmentV0Z8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAxDE6symbolA55_Qrqd__yXE_tAaBRd__lFQOyAD9PointMarkV_AA08ModifiedT0VyAA09FillShapeC0VyAA6CircleVA12_AA011StrokeShapeC0VyA63_A12_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A59_yAA5ImageVAA24_ForegroundStyleModifierVyA12_GGQo_QPGQPGGATyAVyA26__A30_AVyA30__A73_QPGQPGAVyA26__AxDEA39_yQrSdFQOyA26__Qo_A30_QPGGGA26_GG_Qo__SNySdGQo__Qo__A93_Qo_MR);
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v154 = v150 - v20;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGMR);
  MEMORY[0x28223BE20](v152);
  v22 = v150 - v21;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GMR);
  MEMORY[0x28223BE20](v158);
  v161 = v150 - v23;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GMR);
  MEMORY[0x28223BE20](v160);
  v163 = v150 - v24;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GMR);
  MEMORY[0x28223BE20](v162);
  v166 = v150 - v25;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GA98_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GA98_GMR);
  MEMORY[0x28223BE20](v164);
  v27 = v150 - v26;
  v28 = type metadata accessor for RaceElevationMetricView(0);
  v29 = v28[7];
  v30 = *(v2 + v28[8]);
  v31 = v28[5];
  v32 = *(v2 + v31);
  v33 = *(v2 + v29);
  if (v32 > v33)
  {
    v34 = *(v2 + v31);
  }

  else
  {
    v34 = *(v2 + v29);
  }

  if (v33 >= v32)
  {
    v35 = *(v2 + v31);
  }

  else
  {
    v35 = *(v2 + v29);
  }

  v36 = *(v7 + 16);
  v172 = v7 + 16;
  *&v189 = v36;
  v36(v13, v2, v6);
  v37 = *(v7 + 88);
  v188 = v7 + 88;
  v187 = v37;
  v38 = v37(v13, v6);
  v186 = *MEMORY[0x277D7DF68];
  v167 = v27;
  v159 = v22;
  v157 = v28;
  v180 = v6;
  v179 = v7;
  if (v38 == v186)
  {
    (*(v7 + 96))(v13, v6);
    v39 = v2;
    if (*v13 >= 0.0)
    {
      v40 = 72;
    }

    else
    {
      v40 = 80;
    }
  }

  else
  {
    v39 = v2;
    (*(v7 + 8))(v13, v6);
    v40 = 80;
  }

  v41 = *(v30 + v40);

  RaceElevationChartProperties.performanceGradientFor(userPosition:ghostPosition:)(v194, v32, v33);
  v42 = RaceElevationChartProperties.chartDomainFor(userOdometer:ghostOdometer:)(v32, v33);
  v43 = *(v30 + 32);
  v44 = *(v30 + 40);
  specialized static RaceWorkoutConfiguration.pointOuterColorFor(_:)(v39);
  v45 = Color.init(uiColor:)();
  v165 = v150;
  MEMORY[0x28223BE20](v45);
  v150[-14] = v39;
  v150[-13] = v30;
  v150[-12] = v43;
  v150[-11] = v44;
  *&v150[-10] = v32;
  *&v150[-9] = v42;
  v150[-7] = v35;
  v150[-6] = v34;
  *&v150[-5] = v33;
  v150[-4] = v194;
  v150[-3] = v41;
  v150[-2] = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts18BuilderConditionalVyACyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGA10_GMd, &_s6Charts18BuilderConditionalVyACyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGA10_GMR);
  lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type ();
  Chart.init(content:)();
  outlined destroy of LinearGradient(v194);

  v47 = lazy protocol witness table accessor for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>( &lazy protocol witness table cache variable for type Chart<BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque ,  &_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMd,  &_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMR,  MEMORY[0x277CBB3F8]);
  LOBYTE(v48) = v17;
  v49 = v182;
  View.chartYAxis(_:)();
  (*(v181 + 8))(v15, v49);
  v50 = *(v30 + 56);
  if (*(v30 + 48) > v50)
  {
    __break(1u);
  }

  else
  {
    v192 = *(v30 + 48);
    v193 = v50;
    v51 = type metadata accessor for ScaleType();
    v52 = *(v51 - 8);
    v53 = v17;
    v54 = v185;
    v181 = *(v52 + 56);
    v150[1] = v52 + 56;
    (v181)(v185, 1, 1, v51);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySdGMd, &_sSNySdGMR);
    *&v195 = v49;
    *(&v195 + 1) = v47;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v57 = lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    v58 = v173;
    v59 = v174;
    View.chartYScale<A>(domain:type:)();
    outlined destroy of ScaleType?(v54);
    (*(v175 + 8))(v53, v59);
    *&v195 = v59;
    *(&v195 + 1) = v55;
    *&v196 = OpaqueTypeConformance2;
    *(&v196 + 1) = v57;
    v48 = swift_getOpaqueTypeConformance2();
    v60 = v184;
    View.chartXAxis(_:)();
    (*(v176 + 8))(v58, v60);
    v61 = v177;
    v62 = v180;
    (v189)(v177, v39, v180);
    v63 = v187(v61, v62);
    v49 = v39;
    if (v63 == v186)
    {
      v66 = RaceElevationChartProperties.chartDomainFor(userOdometer:ghostOdometer:)(v32, v33);
      v65.n128_f64[0] = v66.end;
      v64.n128_f64[0] = v66.start;
      start = v66.start;
      v39 = v179;
    }

    else
    {
      start = *(v30 + 32);
      v39 = v179;
      v64.n128_f64[0] = (*(v179 + 8))(v61, v62);
    }

    v68 = v178;
    (v189)(v178, v49, v62, v64, v65);
    v69 = v187(v68, v62);
    if (v69 == v186)
    {
      v71 = RaceElevationChartProperties.chartDomainFor(userOdometer:ghostOdometer:)(v32, v33);
      v70.n128_f64[0] = v71.start;
      end = v71.end;
    }

    else
    {
      end = *(v30 + 40);
      v73 = *(v39 + 8);
      v39 += 8;
      v73(v68, v62);
    }

    if (start <= end)
    {
      v190 = start;
      v191 = end;
      v74 = v185;
      (v181)(v185, 1, 1, v51, v70);
      *&v195 = v184;
      *(&v195 + 1) = v48;
      swift_getOpaqueTypeConformance2();
      v39 = v154;
      v48 = v153;
      v75 = v183;
      View.chartXScale<A>(domain:type:)();
      outlined destroy of ScaleType?(v74);
      (*(v151 + 8))(v75, v48);
      LOBYTE(v48) = static Edge.Set.top.getter();
      if (one-time initialization token for iconHeight == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_44:
  swift_once();
LABEL_21:
  EdgeInsets.init(_all:)();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v159;
  (*(v155 + 32))(v159, v39, v156);
  v85 = v84 + *(v152 + 36);
  *v85 = v48;
  *(v85 + 8) = v77;
  *(v85 + 16) = v79;
  *(v85 + 24) = v81;
  *(v85 + 32) = v83;
  *(v85 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  v189 = xmmword_20CB5DA80;
  *(inited + 16) = xmmword_20CB5DA80;
  v87 = static Edge.Set.leading.getter();
  *(inited + 32) = v87;
  v88 = static Edge.Set.trailing.getter();
  *(inited + 33) = v88;
  v89 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  v90 = Edge.Set.init(rawValue:)();
  v91 = v157;
  if (v90 != v87)
  {
    v89 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v88)
  {
    v89 = Edge.Set.init(rawValue:)();
  }

  v92 = v49 + v91[9];
  v93 = *v92;
  if ((*(v92 + 8) & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v94 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v95 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v93, 0);
    (*(v169 + 8))(v95, v170);
  }

  v96 = v167;
  EdgeInsets.init(_all:)();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = v161;
  outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(v84, v161, &_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGMR);
  v106 = v105 + *(v158 + 36);
  *v106 = v89;
  *(v106 + 8) = v98;
  *(v106 + 16) = v100;
  *(v106 + 24) = v102;
  *(v106 + 32) = v104;
  *(v106 + 40) = 0;
  v107 = *v92;
  if (*(v92 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v108 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v109 = v168;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v107, 0);
    (*(v169 + 8))(v109, v170);
    LOBYTE(v107) = v195;
  }

  if (v107 <= 9u && ((1 << v107) & 0x301) != 0 && one-time initialization token for graphContentHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v110 = v163;
  outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(v105, v163, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GMR);
  v111 = (v110 + *(v160 + 36));
  v112 = v196;
  *v111 = v195;
  v111[1] = v112;
  v111[2] = v197;
  v113 = static Edge.Set.top.getter();
  if (one-time initialization token for graphTopPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v115 = v114;
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v122 = v110;
  v123 = v166;
  outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(v122, v166, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GMR);
  v124 = v123 + *(v162 + 36);
  *v124 = v113;
  *(v124 + 8) = v115;
  *(v124 + 16) = v117;
  *(v124 + 24) = v119;
  *(v124 + 32) = v121;
  *(v124 + 40) = 0;
  v125 = static Edge.Set.bottom.getter();
  if (one-time initialization token for graphBottomPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v127 = v126;
  v129 = v128;
  v131 = v130;
  v133 = v132;
  outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(v123, v96, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GMR);
  v134 = v96 + *(v164 + 36);
  *v134 = v125;
  *(v134 + 8) = v127;
  *(v134 + 16) = v129;
  *(v134 + 24) = v131;
  *(v134 + 32) = v133;
  *(v134 + 40) = 0;
  v135 = swift_initStackObject();
  *(v135 + 16) = v189;
  v136 = static Edge.Set.leading.getter();
  *(v135 + 32) = v136;
  v137 = static Edge.Set.trailing.getter();
  *(v135 + 33) = v137;
  v138 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v136)
  {
    v138 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v137)
  {
    v138 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  v140 = v139;
  v142 = v141;
  v144 = v143;
  v146 = v145;
  v147 = v171;
  outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(v96, v171, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GA98_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GA98_GMR);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GA98_GA98_GMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GA98_GA98_GA98_GMR);
  v149 = v147 + *(result + 36);
  *v149 = v138;
  *(v149 + 8) = v140;
  *(v149 + 16) = v142;
  *(v149 + 24) = v144;
  *(v149 + 32) = v146;
  *(v149 + 40) = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type ()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts18BuilderConditionalVyACyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGA10_GMd, &_s6Charts18BuilderConditionalVyACyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGA10_GMR);
    lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mas();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMR);
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mas()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartConte;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartConte)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts18BuilderConditionalVyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGMd, &_s6Charts18BuilderConditionalVyACyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGACyAEyA10__A14_AEyA14__A58_QPGQPGAEyA10__AgAEA23_yQrSdFQOyA10__Qo_A14_QPGGGMR);
    lazy protocol witness table accessor for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>> and conformance <> BuilderConditional<A, B>();
    lazy protocol witness table accessor for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance <> BuilderConditional<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartConte);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>> and conformance <> BuilderConditional<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGMd, &_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_QPGAEyA10__AgAEASyQrqd__AjTRd__lFQOyALyAPSiARyAEyAV_A3_QPGGG_AJ14LinearGradientVQo_ALySaySdGSdAgAE7opacityyQrSdFQOyA14__Qo_GSgA14_AEyA14__AgAE10annotation8position9alignment7spacingAIQrAA18AnnotationPositionV_AJ9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAJ4ViewRd__lFQOyAgAE6symbolA40_Qrqd__yXE_tAJA39_Rd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA48_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo__A44_yAJ5ImageVAJ011_ForegroundS8ModifierVyAXGGQo_QPGQPGGMR);
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_QPGMd, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_QPGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMR);
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_MR);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAQyQrqd__AhRRd__lFQOyAJyANSiAPyACyAT_A1_QPGGG_AH14LinearGradientVQo_AJySaySdGSdAeAE7opacityyQrSdFQOyAeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo__Qo_GSgA20_ACyA20__AeAE10annotation8position9alignment7spacingAGQrAA18AnnotationPositionV_AH9AlignmentV0M8Graphics7CGFloatVSgqd__yXEtAH4ViewRd__lFQOyAeAE6symbolA37_Qrqd__yXE_tAHA36_Rd__lFQOyAA0oU0V_AH08ModifiedE0VyAH04FillS4ViewVyAH6CircleVAvH0xS4ViewVyA45_AvH9EmptyViewVGGAH12_FrameLayoutVGQo__A41_yAH5ImageVAH011_ForegroundR8ModifierVyAVGGQo_QPGQPGMd, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAQyQrqd__AhRRd__lFQOyAJyANSiAPyACyAT_A1_QPGGG_AH14LinearGradientVQo_AJySaySdGSdAeAE7opacityyQrSdFQOyAeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo__Qo_GSgA20_ACyA20__AeAE10annotation8position9alignment7spacingAGQrAA18AnnotationPositionV_AH9AlignmentV0M8Graphics7CGFloatVSgqd__yXEtAH4ViewRd__lFQOyAeAE6symbolA37_Qrqd__yXE_tAHA36_Rd__lFQOyAA0oU0V_AH08ModifiedE0VyAH04FillS4ViewVyAH6CircleVAvH0xS4ViewVyA45_AvH9EmptyViewVGGAH12_FrameLayoutVGQo__A41_yAH5ImageVAH011_ForegroundR8ModifierVyAVGGQo_QPGQPGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMR);
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH8AreaMarkV_AH0H7ContentPAHE9lineStyleyQrAA06StrokeR0VFQOyAH04LineO0V_Qo_QPGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH8AreaMarkV_AH0H7ContentPAHE9lineStyleyQrAA06StrokeR0VFQOyAH04LineO0V_Qo_QPGGGMR);
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{AreaMark, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>? and conformance <A> A?();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_MR);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance <> BuilderConditional<A, B>()
{
  result = lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance <> BuilderConditional<A, B>;
  if (!lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance <> BuilderConditional<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_AEyA14__AgAE6symbolA15_Qrqd__yXE_tAJ4ViewRd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA24_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo_QPGQPGAEyA10__AgAE7opacityyQrSdFQOyA10__Qo_A14_QPGGMd, &_s6Charts18BuilderConditionalVyAA0B5TupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaFRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceE5PointVGSiAA4PlotVyAEyAgAE15foregroundStyleyQrqd__AJ05ShapeS0Rd__lFQOyAA8AreaMarkV_AJ5ColorVQo__AgAEASyQrqd__AjTRd__lFQOyAgAE04lineS0yQrAJ06StrokeS0VFQOyAA04LineV0V_Qo__AXQo_QPGGG_AA09RectangleV0VQo__AgAEAZyQrA0_FQOyAgAEASyQrqd__AjTRd__lFQOyAA04RuleV0V_AXQo__Qo_AEyA14__AgAE6symbolA15_Qrqd__yXE_tAJ4ViewRd__lFQOyAA0pV0V_AJ08ModifiedF0VyAJ04FillT4ViewVyAJ6CircleVAxJ0yT4ViewVyA24_AxJ9EmptyViewVGGAJ12_FrameLayoutVGQo_QPGQPGAEyA10__AgAE7opacityyQrSdFQOyA10__Qo_A14_QPGGMR);
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>> and conformance <> BuilderConditional<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_ACyA12__AeAE6symbolA13_Qrqd__yXE_tAH4ViewRd__lFQOyAA0oU0V_AH08ModifiedE0VyAH04FillS4ViewVyAH6CircleVAvH0xS4ViewVyA22_AvH9EmptyViewVGGAH12_FrameLayoutVGQo_QPGQPGMd, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_ACyA12__AeAE6symbolA13_Qrqd__yXE_tAH4ViewRd__lFQOyAA0oU0V_AH08ModifiedE0VyAH04FillS4ViewVyAH6CircleVAvH0xS4ViewVyA22_AvH9EmptyViewVGGAH12_FrameLayoutVGQo_QPGQPGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMR);
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_MR);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>()
{
  result = lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>;
  if (!lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAE7opacityyQrSdFQOyA8__Qo_AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_QPGMd, &_s6Charts12BuilderTupleVyAA12ChartContentPAAE4mask7contentQrqd__yXE_tAaDRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceD5PointVGSiAA4PlotVyACyAeAE15foregroundStyleyQrqd__AH05ShapeR0Rd__lFQOyAA8AreaMarkV_AH5ColorVQo__AeAEAQyQrqd__AhRRd__lFQOyAeAE04lineR0yQrAH06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo__AeAE7opacityyQrSdFQOyA8__Qo_AeAEAXyQrAZFQOyAeAEAQyQrqd__AhRRd__lFQOyAA04RuleU0V_AVQo__Qo_QPGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore14RaceChartPointVGSi6Charts4PlotVyAH12BuilderTupleVyAH0H7ContentPAHE15foregroundStyleyQrqd__AA05ShapeP0Rd__lFQOyAH8AreaMarkV_AA5ColorVQo__AnHEAOyQrqd__AaPRd__lFQOyAnHE04lineP0yQrAA06StrokeP0VFQOyAH04LineS0V_Qo__ATQo_QPGGGMR);
    type metadata accessor for RectangleMark();
    lazy protocol witness table accessor for type ForEach<[RaceChartPoint], Int, Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>>> and conformance <> ForEach<A, B, C>();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo_Md, &_s6Charts12ChartContentPAAE4mask7contentQrqd__yXE_tAaBRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAA12BuilderTupleVyAcAE15foregroundStyleyQrqd__AF05ShapeR0Rd__lFQOyAA8AreaMarkV_AF5ColorVQo__AcAEAQyQrqd__AfRRd__lFQOyAcAE04lineR0yQrAF06StrokeR0VFQOyAA04LineU0V_Qo__AVQo_QPGGG_AA09RectangleU0VQo_MR);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAA8RuleMarkV_AE5ColorVQo_MR);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.opacity(_:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}> and conformance <each A> BuilderTuple<Pack{repeat A}>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined destroy of ScaleType?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts9ScaleTypeVSgMd, &_s6Charts9ScaleTypeVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void type metadata completion function for RaceElevationMetricView(uint64_t a1)
{
  type metadata accessor for RacePosition();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FIUIFormattingManager();
    if (v2 <= 0x3F)
    {
      type metadata accessor for RaceElevationChartProperties();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Environment<WorkoutViewStyle>();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Environment<WorkoutViewStyle>()
{
  if (!lazy cache variable for type metadata for Environment<WorkoutViewStyle>)
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<WorkoutViewStyle>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GA71_GMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGA98_GMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout>, _PaddingLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewP6ChartsE11chartXScale6domain4typeQrqd___AF9ScaleTypeVSgtAF0K6DomainRd__lFQOyAeFE0G5XAxisyQrAA10VisibilityOFQOyAeFE0G6YScaleAhIQrqd___ALtAfMRd__lFQOyAeFE0G5YAxisyQrAPFQOyAF5ChartVyAF18BuilderConditionalVyAVyAVyAF0S5TupleVyAF0rD0PAFE4mask7contentQrqd__yXE_tAfYRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceR5PointVGSiAF4PlotVyAXyAzFE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAF8AreaMarkV_AA5ColorVQo__AzFEA9_yQrqd__AAA10_Rd__lFQOyAzFE9lineStyleyQrAA11StrokeStyleVFQOyAF8LineMarkV_Qo__A14_Qo_QPGGG_AF13RectangleMarkVQo__AzFEA16_yQrA18_FQOyAzFEA9_yQrqd__AAA10_Rd__lFQOyAF8RuleMarkV_A14_Qo__Qo_QPGAXyA28__AzFEA9_yQrqd__AAA10_Rd__lFQOyA2_yA6_SiA8_yAXyA12__A21_QPGGG_AA14LinearGradientVQo_A2_ySaySdGSdAzFE7opacityyQrSdFQOyA32__Qo_GSgA32_AXyA32__AzFE10annotation8position9alignment7spacingA0_QrAF18AnnotationPositionV_AA9AlignmentV12CoreGraphics7CGFloatVSgqd__yXEtAaDRd__lFQOyAzFE6symbolA57_Qrqd__yXE_tAaDRd__lFQOyAF9PointMarkV_ACyAA09FillShapeE0VyAA6CircleVA14_AA011StrokeShapeE0VyA63_A14_AA05EmptyE0VGGAA12_FrameLayoutVGQo__ACyAA5ImageVAA24_ForegroundStyleModifierVyA14_GGQo_QPGQPGGAVyAXyA28__A32_AXyA32__A73_QPGQPGAXyA28__AzFEA41_yQrSdFQOyA28__Qo_A32_QPGGGA28_GG_Qo__SNySdGQo__Qo__A93_Qo_AA14_PaddingLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE10chartXAxisyQrAA10VisibilityOFQOyAcDE0E6YScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0K6DomainRd__lFQOyAcDE0E5YAxisyQrAGFQOyAD5ChartVyAD18BuilderConditionalVyASyASyAD0P5TupleVyAD0O7ContentPADE4mask7contentQrqd__yXE_tAdVRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceO5PointVGSiAD4PlotVyAUyAwDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AwDEA6_yQrqd__AAA7_Rd__lFQOyAwDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A11_Qo_QPGGG_AD13RectangleMarkVQo__AwDEA13_yQrA15_FQOyAwDEA6_yQrqd__AAA7_Rd__lFQOyAD8RuleMarkV_A11_Qo__Qo_QPGAUyA25__AwDEA6_yQrqd__AAA7_Rd__lFQOyA_yA3_SiA5_yAUyA9__A18_QPGGG_AA14LinearGradientVQo_A_ySaySdGSdAwDE7opacityyQrSdFQOyA29__Qo_GSgA29_AUyA29__AwDE10annotation8position9alignment7spacingAYQrAD18AnnotationPositionV_AA9AlignmentV0Y8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAwDE6symbolA54_Qrqd__yXE_tAaBRd__lFQOyAD9PointMarkV_AA08ModifiedS0VyAA09FillShapeC0VyAA6CircleVA11_AA011StrokeShapeC0VyA62_A11_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A58_yAA5ImageVAA24_ForegroundStyleModifierVyA11_GGQo_QPGQPGGASyAUyA25__A29_AUyA29__A72_QPGQPGAUyA25__AwDEA38_yQrSdFQOyA25__Qo_A29_QPGGGA25_GG_Qo__SNySdGQo__Qo_Md, &_s7SwiftUI4ViewP6ChartsE10chartXAxisyQrAA10VisibilityOFQOyAcDE0E6YScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0K6DomainRd__lFQOyAcDE0E5YAxisyQrAGFQOyAD5ChartVyAD18BuilderConditionalVyASyASyAD0P5TupleVyAD0O7ContentPADE4mask7contentQrqd__yXE_tAdVRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceO5PointVGSiAD4PlotVyAUyAwDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AwDEA6_yQrqd__AAA7_Rd__lFQOyAwDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A11_Qo_QPGGG_AD13RectangleMarkVQo__AwDEA13_yQrA15_FQOyAwDEA6_yQrqd__AAA7_Rd__lFQOyAD8RuleMarkV_A11_Qo__Qo_QPGAUyA25__AwDEA6_yQrqd__AAA7_Rd__lFQOyA_yA3_SiA5_yAUyA9__A18_QPGGG_AA14LinearGradientVQo_A_ySaySdGSdAwDE7opacityyQrSdFQOyA29__Qo_GSgA29_AUyA29__AwDE10annotation8position9alignment7spacingAYQrAD18AnnotationPositionV_AA9AlignmentV0Y8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAwDE6symbolA54_Qrqd__yXE_tAaBRd__lFQOyAD9PointMarkV_AA08ModifiedS0VyAA09FillShapeC0VyAA6CircleVA11_AA011StrokeShapeC0VyA62_A11_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A58_yAA5ImageVAA24_ForegroundStyleModifierVyA11_GGQo_QPGQPGGASyAUyA25__A29_AUyA29__A72_QPGQPGAUyA25__AwDEA38_yQrSdFQOyA25__Qo_A29_QPGGGA25_GG_Qo__SNySdGQo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySdGMd, &_sSNySdGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE11chartYScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5YAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyARyARyAD0O5TupleVyAD0N7ContentPADE4mask7contentQrqd__yXE_tAdURd__lFQOyAA7ForEachVySay11WorkoutCore04RaceN5PointVGSiAD4PlotVyATyAvDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AvDEA5_yQrqd__AAA6_Rd__lFQOyAvDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A10_Qo_QPGGG_AD13RectangleMarkVQo__AvDEA12_yQrA14_FQOyAvDEA5_yQrqd__AAA6_Rd__lFQOyAD8RuleMarkV_A10_Qo__Qo_QPGATyA24__AvDEA5_yQrqd__AAA6_Rd__lFQOyAZyA2_SiA4_yATyA8__A17_QPGGG_AA14LinearGradientVQo_AZySaySdGSdAvDE7opacityyQrSdFQOyA28__Qo_GSgA28_ATyA28__AvDE10annotation8position9alignment7spacingAXQrAD18AnnotationPositionV_AA9AlignmentV0X8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAvDE6symbolA53_Qrqd__yXE_tAaBRd__lFQOyAD0Z4MarkV_AA08ModifiedR0VyAA09FillShapeC0VyAA6CircleVA10_AA011StrokeShapeC0VyA61_A10_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A57_yAA5ImageVAA24_ForegroundStyleModifierVyA10_GGQo_QPGQPGGARyATyA24__A28_ATyA28__A71_QPGQPGATyA24__AvDEA37_yQrSdFQOyA24__Qo_A28_QPGGGA24_GG_Qo__SNySdGQo_Md, &_s7SwiftUI4ViewP6ChartsE11chartYScale6domain4typeQrqd___AD9ScaleTypeVSgtAD0I6DomainRd__lFQOyAcDE0E5YAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyARyARyAD0O5TupleVyAD0N7ContentPADE4mask7contentQrqd__yXE_tAdURd__lFQOyAA7ForEachVySay11WorkoutCore04RaceN5PointVGSiAD4PlotVyATyAvDE15foregroundStyleyQrqd__AA10ShapeStyleRd__lFQOyAD8AreaMarkV_AA5ColorVQo__AvDEA5_yQrqd__AAA6_Rd__lFQOyAvDE9lineStyleyQrAA11StrokeStyleVFQOyAD8LineMarkV_Qo__A10_Qo_QPGGG_AD13RectangleMarkVQo__AvDEA12_yQrA14_FQOyAvDEA5_yQrqd__AAA6_Rd__lFQOyAD8RuleMarkV_A10_Qo__Qo_QPGATyA24__AvDEA5_yQrqd__AAA6_Rd__lFQOyAZyA2_SiA4_yATyA8__A17_QPGGG_AA14LinearGradientVQo_AZySaySdGSdAvDE7opacityyQrSdFQOyA28__Qo_GSgA28_ATyA28__AvDE10annotation8position9alignment7spacingAXQrAD18AnnotationPositionV_AA9AlignmentV0X8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAvDE6symbolA53_Qrqd__yXE_tAaBRd__lFQOyAD0Z4MarkV_AA08ModifiedR0VyAA09FillShapeC0VyAA6CircleVA10_AA011StrokeShapeC0VyA61_A10_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A57_yAA5ImageVAA24_ForegroundStyleModifierVyA10_GGQo_QPGQPGGARyATyA24__A28_ATyA28__A71_QPGQPGATyA24__AvDEA37_yQrSdFQOyA24__Qo_A28_QPGGGA24_GG_Qo__SNySdGQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewP6ChartsE10chartYAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyAKyAKyAD0I5TupleVyAD0H7ContentPADE4mask7contentQrqd__yXE_tAdNRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceH5PointVGSiAD4PlotVyAMyAoDE15foregroundStyleyQrqd__AA05ShapeW0Rd__lFQOyAD8AreaMarkV_AA5ColorVQo__AoDEAZyQrqd__AAA_Rd__lFQOyAoDE04lineW0yQrAA06StrokeW0VFQOyAD04LineZ0V_Qo__A3_Qo_QPGGG_AD09RectangleZ0VQo__AoDEA5_yQrA7_FQOyAoDEAZyQrqd__AAA_Rd__lFQOyAD04RuleZ0V_A3_Qo__Qo_QPGAMyA17__AoDEAZyQrqd__AAA_Rd__lFQOyASyAWSiAYyAMyA1__A10_QPGGG_AA14LinearGradientVQo_ASySaySdGSdAoDE7opacityyQrSdFQOyA21__Qo_GSgA21_AMyA21__AoDE10annotation8position9alignment7spacingAQQrAD18AnnotationPositionV_AA9AlignmentV0R8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAoDE6symbolA46_Qrqd__yXE_tAaBRd__lFQOyAD0tZ0V_AA08ModifiedL0VyAA04FillxC0VyAA6CircleVA3_AA06StrokexC0VyA54_A3_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A50_yAA5ImageVAA011_ForegroundW8ModifierVyA3_GGQo_QPGQPGGAKyAMyA17__A21_AMyA21__A64_QPGQPGAMyA17__AoDEA30_yQrSdFQOyA17__Qo_A21_QPGGGA17_GG_Qo_Md, &_s7SwiftUI4ViewP6ChartsE10chartYAxisyQrAA10VisibilityOFQOyAD5ChartVyAD18BuilderConditionalVyAKyAKyAD0I5TupleVyAD0H7ContentPADE4mask7contentQrqd__yXE_tAdNRd__lFQOyAA7ForEachVySay11WorkoutCore04RaceH5PointVGSiAD4PlotVyAMyAoDE15foregroundStyleyQrqd__AA05ShapeW0Rd__lFQOyAD8AreaMarkV_AA5ColorVQo__AoDEAZyQrqd__AAA_Rd__lFQOyAoDE04lineW0yQrAA06StrokeW0VFQOyAD04LineZ0V_Qo__A3_Qo_QPGGG_AD09RectangleZ0VQo__AoDEA5_yQrA7_FQOyAoDEAZyQrqd__AAA_Rd__lFQOyAD04RuleZ0V_A3_Qo__Qo_QPGAMyA17__AoDEAZyQrqd__AAA_Rd__lFQOyASyAWSiAYyAMyA1__A10_QPGGG_AA14LinearGradientVQo_ASySaySdGSdAoDE7opacityyQrSdFQOyA21__Qo_GSgA21_AMyA21__AoDE10annotation8position9alignment7spacingAQQrAD18AnnotationPositionV_AA9AlignmentV0R8Graphics7CGFloatVSgqd__yXEtAaBRd__lFQOyAoDE6symbolA46_Qrqd__yXE_tAaBRd__lFQOyAD0tZ0V_AA08ModifiedL0VyAA04FillxC0VyAA6CircleVA3_AA06StrokexC0VyA54_A3_AA05EmptyC0VGGAA12_FrameLayoutVGQo__A50_yAA5ImageVAA011_ForegroundW8ModifierVyA3_GGQo_QPGQPGGAKyAMyA17__A21_AMyA21__A64_QPGQPGAMyA17__AoDEA30_yQrSdFQOyA17__Qo_A21_QPGGGA17_GG_Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMd, &_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMR);
    lazy protocol witness table accessor for type Plot<BuilderTuple<Pack{<<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0}>> and conformance Plot<A>( &lazy protocol witness table cache variable for type Chart<BuilderConditional<BuilderConditional<BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0}>, BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.foregroundStyle<A>(_:)>>.0, ForEach<[Double], Double, <<opaque return type of ChartContent.opacity(_:)>>.0>?, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.annotation<A>(position:alignment:spacing:content:)>>.0}>}>>, BuilderConditional<BuilderTuple<Pack{<<opaque return type of ChartContent.mask<A>(content:)>>.0, <<opaque return type of ChartContent.lineStyle(_:)>>.0, BuilderTuple<Pack{<<opaque return type of ChartContent.lineStyle(_:)>>.0, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0}>}>, BuilderTuple<Pack{<<opaque ,  &_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMd,  &_s6Charts5ChartVyAA18BuilderConditionalVyAEyAEyAA0C5TupleVyAA0B7ContentPAAE4mask7contentQrqd__yXE_tAaHRd__lFQOy7SwiftUI7ForEachVySay11WorkoutCore04RaceB5PointVGSiAA4PlotVyAGyAiAE15foregroundStyleyQrqd__AL05ShapeS0Rd__lFQOyAA8AreaMarkV_AL5ColorVQo__AiAEAUyQrqd__AlVRd__lFQOyAiAE04lineS0yQrAL06StrokeS0VFQOyAA04LineV0V_Qo__AZQo_QPGGG_AA09RectangleV0VQo__AiAEA0_yQrA2_FQOyAiAEAUyQrqd__AlVRd__lFQOyAA04RuleV0V_AZQo__Qo_QPGAGyA12__AiAEAUyQrqd__AlVRd__lFQOyANyARSiATyAGyAX_A5_QPGGG_AL14LinearGradientVQo_ANySaySdGSdAiAE7opacityyQrSdFQOyA16__Qo_GSgA16_AGyA16__AiAE10annotation8position9alignment7spacingAKQrAA18AnnotationPositionV_AL9AlignmentV0N8Graphics7CGFloatVSgqd__yXEtAL4ViewRd__lFQOyAiAE6symbolA42_Qrqd__yXE_tALA41_Rd__lFQOyAA0pV0V_AL08ModifiedF0VyAL04FillT4ViewVyAL6CircleVAzL0yT4ViewVyA50_AzL9EmptyViewVGGAL12_FrameLayoutVGQo__A46_yAL5ImageVAL011_ForegroundS8ModifierVyAZGGQo_QPGQPGGAEyAGyA12__A16_AGyA16__A60_QPGQPGAGyA12__AiAEA25_yQrSdFQOyA12__Qo_A16_QPGGGA12_GGMR,  MEMORY[0x277CBB3F8]);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ClosedRange<Double> and conformance <> ClosedRange<A>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.chartXScale<A>(domain:type:)>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t LowPowerViewModel.showingLowPowerOverlay.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

void key path getter for LowPowerViewModel.showingLowPowerOverlay : LowPowerViewModel(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
}

void LowPowerViewModel.showingLowPowerOverlay.setter(char a1)
{
  if (*(v1 + 16) == (a1 & 1))
  {
    *(v1 + 16) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

double LowPowerViewModel.lowPowerModeMonitor.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return result;
}

double key path getter for LowPowerViewModel.lowPowerModeMonitor : LowPowerViewModel@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);

  return result;
}

double LowPowerViewModel.lowPowerModeMonitor.setter(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void *LowPowerViewModel.waitingTimer.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id key path getter for LowPowerViewModel.waitingTimer : LowPowerViewModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void LowPowerViewModel.waitingTimer.setter(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for NSTimer();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

uint64_t LowPowerViewModel.oldBrightness.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

void key path getter for LowPowerViewModel.oldBrightness : LowPowerViewModel(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = *(v3 + 40);
  *(a2 + 8) = v4;
}

double LowPowerViewModel.oldBrightness.setter(uint64_t a1, char a2)
{
  if ((*(v2 + 48) & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_7;
    }

    result = *(v2 + 40);
    if (result != *&a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 40) = *&a1;
    *(v2 + 48) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

Swift::Void __swiftcall LowPowerViewModel.resetTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  static WOLog.lowPower.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20C66F000, v9, v10, "Resetting low power mode timer", v11, 2u);
    MEMORY[0x20F30E080](v11, -1, -1);
  }

  v12 = *(v3 + 8);
  v25 = v2;
  v26 = v12;
  v12(v8, v2);
  swift_getKeyPath();
  aBlock[0] = v1;
  lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v1 + 32) invalidate];
  if (*(v1 + 32))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v24 - 2) = v1;
    *(&v24 - 1) = 0;
    aBlock[0] = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v1 + 16))
    {
LABEL_5:
      v14 = swift_getKeyPath();
      MEMORY[0x28223BE20](v14);
      *(&v24 - 2) = v1;
      *(&v24 - 8) = 0;
      aBlock[0] = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_8;
    }
  }

  else if (*(v1 + 16))
  {
    goto LABEL_5;
  }

  *(v1 + 16) = 0;
LABEL_8:
  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + 48) & 1) == 0)
  {
    v15 = *(v1 + 40);
    static WOLog.lowPower.getter();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v15;
      _os_log_impl(&dword_20C66F000, v16, v17, "Bringing screen back to %f", v18, 0xCu);
      MEMORY[0x20F30E080](v18, -1, -1);
    }

    v26(v5, v25);
    v19 = [objc_opt_self() mainScreen];
    [v19 setBrightness_];
  }

  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = dispatch thunk of LowPowerModeMonitor.lowPowerModeEnabled.getter();

  if (v20)
  {
    v21 = objc_opt_self();
    aBlock[4] = partial apply for closure #1 in LowPowerViewModel.resetTimer();
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_36;
    v22 = _Block_copy(aBlock);

    v23 = [v21 scheduledTimerWithTimeInterval:0 repeats:v22 block:8.0];
    _Block_release(v22);
    LowPowerViewModel.waitingTimer.setter(v23);
  }
}

void closure #1 in LowPowerViewModel.resetTimer()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.lowPower.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20C66F000, v6, v7, "Dimming the screen for low power mode", v8, 2u);
    MEMORY[0x20F30E080](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  static Animation.default.getter();
  withAnimation<A>(_:_:)();

  v9 = objc_opt_self();
  v10 = [v9 mainScreen];
  [v10 brightness];
  v12 = v11;

  v13 = [v9 mainScreen];
  [v13 setBrightness_];
}

double closure #1 in closure #1 in LowPowerViewModel.resetTimer()(uint64_t a1)
{
  if (*(a1 + 16) == 1)
  {
    *(a1 + 16) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t LowPowerViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9WorkoutUI17LowPowerViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LowPowerViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for LowPowerViewModel;
  if (!type metadata singleton initialization cache for LowPowerViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for LowPowerViewModel(uint64_t a1)
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

unint64_t lazy protocol witness table accessor for type LowPowerViewModel and conformance LowPowerViewModel()
{
  result = lazy protocol witness table cache variable for type LowPowerViewModel and conformance LowPowerViewModel;
  if (!lazy protocol witness table cache variable for type LowPowerViewModel and conformance LowPowerViewModel)
  {
    type metadata accessor for LowPowerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LowPowerViewModel and conformance LowPowerViewModel);
  }

  return result;
}

double block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void partial apply for closure #1 in LowPowerViewModel.waitingTimer.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

void partial apply for closure #1 in LowPowerViewModel.oldBrightness.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 40) = *(v0 + 24);
  *(v1 + 48) = v2;
}

void partial apply for closure #1 in LowPowerViewModel.lowPowerModeMonitor.setter()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

void closure #1 in LowPowerViewModel.showingLowPowerOverlay.setterpartial apply()
{
  partial apply for closure #1 in LowPowerViewModel.showingLowPowerOverlay.setter();
}

{
  partial apply for closure #1 in LowPowerViewModel.showingLowPowerOverlay.setter();
}

uint64_t AlertsEntryView.minimumSelectableValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for AlertsEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  State.wrappedValue.getter();
  v10 = *(v0 + *(v9 + 32));
  v11 = *(v1 + *(v9 + 56));
  (*(v3 + 16))(v5, v8, v2);
  v12 = (*(v3 + 88))(v5, v2);
  if (v12 == *MEMORY[0x277D7DE48] || v12 == *MEMORY[0x277D7DE40] || v12 == *MEMORY[0x277D7DE60])
  {
    TargetZone.ZoneType.minimumPaceRangeValue(activityType:userDistanceUnit:)(v10, v11);
    return (*(v3 + 8))(v8, v2);
  }

  else if (v12 == *MEMORY[0x277D7DE70] || v12 == *MEMORY[0x277D7DE58])
  {
    [v10 effectiveTypeIdentifier];
    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    v17 = v12 == *MEMORY[0x277D7DE68] || v12 == *MEMORY[0x277D7DE50];
    if (v17 || v12 == *MEMORY[0x277D7DE78])
    {
      return (*(v3 + 8))(v8, v2);
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t AlertsEntryView.maximumSelectableValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TargetZone.ZoneType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for AlertsEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  State.wrappedValue.getter();
  v10 = *(v0 + *(v9 + 32));
  v11 = *(v1 + *(v9 + 56));
  (*(v3 + 16))(v5, v8, v2);
  v12 = (*(v3 + 88))(v5, v2);
  if (v12 == *MEMORY[0x277D7DE48] || v12 == *MEMORY[0x277D7DE40] || v12 == *MEMORY[0x277D7DE60])
  {
    TargetZone.ZoneType.maximumPaceRangeValue(activityType:userDistanceUnit:)(v10, v11);
    return (*(v3 + 8))(v8, v2);
  }

  if (v12 == *MEMORY[0x277D7DE70] || v12 == *MEMORY[0x277D7DE58])
  {
    return (*(v3 + 8))(v8, v2);
  }

  v16 = v12 == *MEMORY[0x277D7DE68] || v12 == *MEMORY[0x277D7DE50];
  if (v16 || v12 == *MEMORY[0x277D7DE78])
  {
    return (*(v3 + 8))(v8, v2);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void AlertsEntryView.init(targetZone:activityType:formattingManager:configurationContext:activityMoveMode:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, char *a8@<X8>)
{
  v93 = a7;
  v94 = a6;
  v90 = a4;
  v91 = a5;
  v12 = type metadata accessor for TargetZone.ZoneType();
  v97 = *(v12 - 8);
  v98 = v12;
  MEMORY[0x28223BE20](v12);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v99 = &v79 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v79 - v17;
  v86 = type metadata accessor for TargetZone.PrimaryType();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105[0] = 0;
  State.init(wrappedValue:)();
  v84 = v103;
  v105[0] = 0;
  State.init(wrappedValue:)();
  v83 = v103;
  v105[0] = 0;
  State.init(wrappedValue:)();
  v82 = v103;
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  v102 = a1;
  v103 = a2;
  v104 = a3;

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMR);
  MEMORY[0x20F30B100](v105);
  v22 = type metadata accessor for AlertsEntryView(0);
  v23 = &a8[v22[6]];
  TargetZone.type.getter();

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  v101 = v23;
  *&v23[*(v100 + 28)] = 0;
  v24 = a8;
  v102 = a1;
  v103 = a2;
  v104 = a3;
  MEMORY[0x20F30B100](v105, v21);
  TargetZone.type.getter();

  TargetZone.ZoneType.primaryType.getter();
  v25 = *(v97 + 8);
  v92 = v18;
  v26 = v18;
  v27 = a1;
  v95 = v97 + 8;
  v96 = v25;
  v25(v26, v98);
  v28 = v90;
  v29 = v94;
  v81 = v20;
  *&v24[v22[7]] = TargetZone.PrimaryType.subTypes(activityType:configurationContext:activityMoveMode:)();
  *&v24[v22[8]] = v28;
  v30 = v28;
  v31 = v91;
  *&v24[v22[9]] = v91;
  v93 = v22;
  v32 = v22[10];
  v33 = type metadata accessor for AlertConfigurationContext();
  v79 = *(v33 - 8);
  v34 = *(v79 + 16);
  v80 = v33;
  v34(&v24[v32], v29);
  v35 = v27;
  v102 = v27;
  v103 = a2;
  v104 = a3;
  v36 = v30;
  v37 = v31;
  MEMORY[0x20F30B100](v105, v21);
  LOBYTE(v22) = dispatch thunk of TargetZone.enabled.getter();

  v89 = a2;
  v88 = v21;
  if (v22)
  {
    v102 = v27;
    v103 = a2;
    v104 = a3;
    MEMORY[0x20F30B100](v105, v21);
    v38 = dispatch thunk of TargetZone.isSingleThreshold.getter();

    v39 = a3;
    v24[24] = (v38 & 1) == 0;
  }

  else
  {
    v24[24] = 2;
    v39 = a3;
  }

  v40 = v36;
  v41 = v92;
  *(v24 + 4) = 0;
  v42 = FIUIDistanceTypeForActivityType();
  v43 = [v37 unitManager];

  if (!v43)
  {
    goto LABEL_39;
  }

  v44 = [v43 userDistanceUnitForDistanceType_];

  v45 = v93[14];
  v92 = v24;
  *&v24[v45] = v44;
  State.wrappedValue.getter();
  TargetZone.ZoneType.minimumRangeValue(activityType:userDistanceUnit:)(v36, v44);
  v47 = v46;
  v48 = v98;
  v96(v41, v98);
  v49 = v99;
  State.wrappedValue.getter();
  v50 = v97;
  v51 = v87;
  (*(v97 + 16))(v87, v49, v48);
  v52 = (*(v50 + 88))(v51, v48);
  if (v52 == *MEMORY[0x277D7DE48] || v52 == *MEMORY[0x277D7DE40] || v52 == *MEMORY[0x277D7DE60])
  {
    goto LABEL_16;
  }

  v53 = 280.0;
  v54 = v88;
  if (v52 != *MEMORY[0x277D7DE70])
  {
    v44 = v89;
    v55 = v96;
    if (v52 == *MEMORY[0x277D7DE58])
    {
      goto LABEL_17;
    }

    v53 = 805.0;
    if (v52 == *MEMORY[0x277D7DE68])
    {
      goto LABEL_17;
    }

    if (v52 == *MEMORY[0x277D7DE50])
    {
      goto LABEL_17;
    }

    v53 = 0.0;
    if (v52 == *MEMORY[0x277D7DE78])
    {
      goto LABEL_17;
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_16:
    TargetZone.ZoneType.maximumPaceRangeValue(activityType:userDistanceUnit:)(v40, v44);
    v53 = v56;
    v44 = v89;
    v55 = v96;
    v54 = v88;
LABEL_17:
    v55(v99, v48);
    goto LABEL_18;
  }

  v44 = v89;
  v55 = v96;
  v96(v99, v48);
LABEL_18:
  if (v47 > v53)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v102 = v35;
  v103 = v44;
  v104 = v39;
  MEMORY[0x20F30B100](v105, v54);
  dispatch thunk of TargetZone.min.getter();
  v58 = v57;

  if (v47 <= v58 && v58 <= v53)
  {
    v102 = v35;
    v103 = v44;
    v104 = v39;
    MEMORY[0x20F30B100](v105, v54);
    dispatch thunk of TargetZone.min.getter();
    v60 = v61;
  }

  else
  {
    State.wrappedValue.getter();
    TargetZone.ZoneType.defaultLowRangeValue(activityType:)(v40);
    v60 = v59;
    v55(v41, v48);
  }

  v102 = v35;
  v103 = v44;
  v104 = v39;
  MEMORY[0x20F30B100](v105, v54);
  dispatch thunk of TargetZone.max.getter();
  v63 = v62;

  if (v47 <= v63 && v63 <= v53)
  {
    v102 = v35;
    v103 = v44;
    v104 = v39;
    MEMORY[0x20F30B100](v105, v54);

    dispatch thunk of TargetZone.max.getter();
    v65 = v66;
  }

  else
  {

    State.wrappedValue.getter();
    TargetZone.ZoneType.defaultUpperRangeValue(activityType:)(v40);
    v65 = v64;
    v55(v41, v48);
  }

  v67 = v86;
  v68 = v85;
  if (v60 == v65)
  {

    (*(v79 + 8))(v94, v80);
    v69 = v60;
  }

  else
  {
    State.wrappedValue.getter();
    TargetZone.ZoneType.defaultTargetValue(activityType:)(v40);
    v69 = v70;

    (*(v79 + 8))(v94, v80);
    v55(v41, v48);
  }

  (*(v68 + 8))(v81, v67);

  v72 = v92;
  v71 = v93;
  v73 = v93[12];
  v74 = &v92[v93[11]];
  *v74 = v69;
  v74[1] = 0.0;
  if (v65 >= v60)
  {
    v75 = v60;
  }

  else
  {
    v75 = v65;
  }

  if (v65 >= v60)
  {
    v76 = v65;
  }

  else
  {
    v76 = v60;
  }

  v77 = &v72[v73];
  *v77 = v75;
  *(v77 + 1) = 0;
  v78 = &v72[v71[13]];
  *v78 = v76;
  *(v78 + 1) = 0;
}

void type metadata completion function for AlertsEntryView(uint64_t a1)
{
  type metadata accessor for Binding<TargetZone>(319, &lazy cache variable for type metadata for Binding<TargetZone>, MEMORY[0x277D7DF08], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for State<RangedAlertStyle>(319, &lazy cache variable for type metadata for State<RangedAlertStyle>, &type metadata for RangedAlertStyle, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Binding<TargetZone>(319, &lazy cache variable for type metadata for State<TargetZone.ZoneType>, MEMORY[0x277D7DE80], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Binding<TargetZone>(319, &lazy cache variable for type metadata for [TargetZone.ZoneType], MEMORY[0x277D7DE80], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          _sSo23FIUIWorkoutActivityTypeCMaTm_10(319, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
          if (v5 <= 0x3F)
          {
            _sSo23FIUIWorkoutActivityTypeCMaTm_10(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
            if (v6 <= 0x3F)
            {
              type metadata accessor for AlertConfigurationContext();
              if (v7 <= 0x3F)
              {
                type metadata accessor for State<RangedAlertStyle>(319, &lazy cache variable for type metadata for State<Double>, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for FIUIDistanceUnit(319);
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

void type metadata accessor for Binding<TargetZone>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _sSo23FIUIWorkoutActivityTypeCMaTm_10(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t AlertsEntryView.pickerZoneTypesLabel.getter(uint64_t a1)
{
  v2 = v1;
  static Platform.current.getter();
  v3 = Platform.rawValue.getter();
  if (v3 != Platform.rawValue.getter())
  {
    return 0;
  }

  v17[1] = *v2;
  v18 = *(v2 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMR);
  MEMORY[0x20F30B100](v17, v4);
  v5 = TargetZone.alertConfigurationType.getter();

  if (v5 == 8)
  {
    return 0;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = WorkoutUIBundle.super.isa;
  v19._object = 0xE000000000000000;
  v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v8.value._object = 0xEB00000000656C62;
  v9._object = 0x800000020CBA2930;
  v9._countAndFlagsBits = 0xD00000000000002ALL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_20CB5DA70;
  v12 = type metadata accessor for AlertsEntryView(0);
  v13 = AlertConfigurationType.localizedTitle(activityType:)(*(v2 + *(v12 + 32)), v5);
  v15 = v14;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v16 = static String.localizedStringWithFormat(_:_:)();

  return v16;
}

uint64_t TargetZone.alertConfigurationType.getter()
{
  v0 = type metadata accessor for TargetZone.PrimaryType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TargetZone.ZoneType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TargetZone.type.getter();
  TargetZone.ZoneType.primaryType.getter();
  (*(v5 + 8))(v7, v4);
  v8 = (*(v1 + 88))(v3, v0);
  if (v8 == *MEMORY[0x277D7DEB8])
  {
    return 8;
  }

  if (v8 == *MEMORY[0x277D7DEC0])
  {
    return 0;
  }

  if (v8 == *MEMORY[0x277D7DED0])
  {
    return 2;
  }

  if (v8 == *MEMORY[0x277D7DEC8])
  {
    return 3;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AlertsEntryView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v70 = type metadata accessor for TargetZone.ZoneType();
  v72 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AlertsEntryView(0);
  v5 = *(v4 - 8);
  v6 = v4 - 8;
  v76 = v4 - 8;
  MEMORY[0x28223BE20](v4 - 8);
  v8 = v7;
  v9 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedE0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedE0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtGGGMR);
  MEMORY[0x28223BE20](v77);
  v11 = &v61 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA4TextV11WorkoutCore10TargetZoneC0U4TypeOAA7ForEachVySayA_GA_AA08ModifiedJ0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_A_Qo_0rB015BodyHyphenationVGGG_AA07DefaultpO0VQo_APGSg_ANyApcAEAdeF_Qrqd___SbyyctSQRd__lFQOyA4_yAcAEAQyQrqd__AaRRd__lFQOyATyAPA8_011RangedAlertO0OA1_ySayA20_GA20_A4_yAcAEA5__A6_Qrqd___SbtSHRd__lFQOyAV_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedpO0VQo_A8_09ClearListO033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_APGANyAPA8_0P6ButtonVAPGSgANyAvLyA38__A38_tGAPGSgtGALyA35__A16_SgA38_SgA41_SgtGGG_SdQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA4TextV11WorkoutCore10TargetZoneC0U4TypeOAA7ForEachVySayA_GA_AA08ModifiedJ0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_A_Qo_0rB015BodyHyphenationVGGG_AA07DefaultpO0VQo_APGSg_ANyApcAEAdeF_Qrqd___SbyyctSQRd__lFQOyA4_yAcAEAQyQrqd__AaRRd__lFQOyATyAPA8_011RangedAlertO0OA1_ySayA20_GA20_A4_yAcAEA5__A6_Qrqd___SbtSHRd__lFQOyAV_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedpO0VQo_A8_09ClearListO033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_APGANyAPA8_0P6ButtonVAPGSgANyAvLyA38__A38_tGAPGSgtGALyA35__A16_SgA38_SgA41_SgtGGG_SdQo_MR);
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v61 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA4TextV11WorkoutCore10TargetZoneC0U4TypeOAA7ForEachVySayA_GA_AA08ModifiedJ0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_A_Qo_0rB015BodyHyphenationVGGG_AA07DefaultpO0VQo_APGSg_ANyApcAEAdeF_Qrqd___SbyyctSQRd__lFQOyA4_yAcAEAQyQrqd__AaRRd__lFQOyATyAPA8_011RangedAlertO0OA1_ySayA20_GA20_A4_yAcAEA5__A6_Qrqd___SbtSHRd__lFQOyAV_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedpO0VQo_A8_09ClearListO033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_APGANyAPA8_0P6ButtonVAPGSgANyAvLyA38__A38_tGAPGSgtGALyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA4TextV11WorkoutCore10TargetZoneC0U4TypeOAA7ForEachVySayA_GA_AA08ModifiedJ0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_A_Qo_0rB015BodyHyphenationVGGG_AA07DefaultpO0VQo_APGSg_ANyApcAEAdeF_Qrqd___SbyyctSQRd__lFQOyA4_yAcAEAQyQrqd__AaRRd__lFQOyATyAPA8_011RangedAlertO0OA1_ySayA20_GA20_A4_yAcAEA5__A6_Qrqd___SbtSHRd__lFQOyAV_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedpO0VQo_A8_09ClearListO033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_APGANyAPA8_0P6ButtonVAPGSgANyAvLyA38__A38_tGAPGSgtGALyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo_MR);
  v14 = *(v13 - 8);
  v65 = v13;
  v66 = v14;
  MEMORY[0x28223BE20](v13);
  v78 = &v61 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA4TextV11WorkoutCore10TargetZoneC0U4TypeOAA7ForEachVySayA_GA_AA08ModifiedJ0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_A_Qo_0rB015BodyHyphenationVGGG_AA07DefaultpO0VQo_APGSg_ANyApcAEAdeF_Qrqd___SbyyctSQRd__lFQOyA4_yAcAEAQyQrqd__AaRRd__lFQOyATyAPA8_011RangedAlertO0OA1_ySayA20_GA20_A4_yAcAEA5__A6_Qrqd___SbtSHRd__lFQOyAV_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedpO0VQo_A8_09ClearListO033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_APGANyAPA8_0P6ButtonVAPGSgANyAvLyA38__A38_tGAPGSgtGALyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo__SdQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAcAEAdeF_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA19_ConditionalContentVyAA05TupleC0VyAA7SectionVyAA05EmptyC0VAcAE11pickerStyleyQrqd__AA06PickerO0Rd__lFQOyAA0P0VyAA4TextV11WorkoutCore10TargetZoneC0U4TypeOAA7ForEachVySayA_GA_AA08ModifiedJ0VyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAV_A_Qo_0rB015BodyHyphenationVGGG_AA07DefaultpO0VQo_APGSg_ANyApcAEAdeF_Qrqd___SbyyctSQRd__lFQOyA4_yAcAEAQyQrqd__AaRRd__lFQOyATyAPA8_011RangedAlertO0OA1_ySayA20_GA20_A4_yAcAEA5__A6_Qrqd___SbtSHRd__lFQOyAV_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedpO0VQo_A8_09ClearListO033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_APGANyAPA8_0P6ButtonVAPGSgANyAvLyA38__A38_tGAPGSgtGALyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo__SdQo_MR);
  v17 = *(v16 - 8);
  v67 = v16;
  v68 = v17;
  MEMORY[0x28223BE20](v16);
  v79 = &v61 - v18;
  closure #1 in AlertsEntryView.body.getter(v1, v11);
  v19 = (v1 + *(v6 + 56));
  v20 = *v19;
  v21 = v19[1];
  v81 = v20;
  v82 = v21;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.wrappedValue.getter();
  v22 = v9;
  v80 = v9;
  outlined init with copy of AlertsEntryView(v2, v9, type metadata accessor for AlertsEntryView);
  v74 = *(v5 + 80);
  v75 = v8;
  v23 = (v74 + 16) & ~v74;
  v24 = swift_allocObject();
  outlined init with take of AlertsEntryView(v22, v24 + v23, type metadata accessor for AlertsEntryView);
  v25 = lazy protocol witness table accessor for type Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>> and conformance <A> Group<A>();
  v26 = v77;
  View.onChange<A>(of:initial:_:)();

  outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v11, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedE0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtGGGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedE0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtGGGMR);
  v27 = v76;
  v28 = *(v76 + 60);
  v73 = v2;
  v29 = (v2 + v28);
  v30 = *v29;
  v31 = v29[1];
  v81 = v30;
  v82 = v31;
  State.wrappedValue.getter();
  v32 = v80;
  outlined init with copy of AlertsEntryView(v2, v80, type metadata accessor for AlertsEntryView);
  v33 = swift_allocObject();
  outlined init with take of AlertsEntryView(v32, v33 + v23, type metadata accessor for AlertsEntryView);
  v81 = v26;
  v82 = MEMORY[0x277D839F8];
  v83 = v25;
  v84 = MEMORY[0x277D83A28];
  v77 = MEMORY[0x277CE0E40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v63;
  v36 = v62;
  View.onChange<A>(of:initial:_:)();

  (*(v64 + 8))(v36, v35);
  v37 = v73;
  v38 = (v73 + *(v27 + 52));
  v39 = *v38;
  v40 = v38[1];
  v81 = v39;
  v82 = v40;
  State.wrappedValue.getter();
  v41 = v80;
  outlined init with copy of AlertsEntryView(v37, v80, type metadata accessor for AlertsEntryView);
  v42 = swift_allocObject();
  outlined init with take of AlertsEntryView(v41, v42 + v23, type metadata accessor for AlertsEntryView);
  v81 = v35;
  v82 = MEMORY[0x277D839F8];
  v83 = OpaqueTypeConformance2;
  v84 = MEMORY[0x277D83A28];
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v65;
  v45 = v78;
  View.onChange<A>(of:initial:_:)();

  (*(v66 + 8))(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  v46 = v37;
  v47 = v69;
  State.wrappedValue.getter();
  v48 = v80;
  outlined init with copy of AlertsEntryView(v46, v80, type metadata accessor for AlertsEntryView);
  v49 = swift_allocObject();
  v50 = v48;
  outlined init with take of AlertsEntryView(v48, v49 + v23, type metadata accessor for AlertsEntryView);
  v81 = v44;
  v82 = MEMORY[0x277D839F8];
  v83 = v43;
  v84 = MEMORY[0x277D83A28];
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE90]);
  v52 = v70;
  v51 = v71;
  v53 = v67;
  v54 = v79;
  View.onChange<A>(of:initial:_:)();

  (*(v72 + 8))(v47, v52);
  (*(v68 + 8))(v54, v53);
  v55 = v73;
  outlined init with copy of AlertsEntryView(v73, v50, type metadata accessor for AlertsEntryView);
  v56 = swift_allocObject();
  outlined init with take of AlertsEntryView(v50, v56 + v23, type metadata accessor for AlertsEntryView);
  v57 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAA4TextV11WorkoutCore10TargetZoneC0V4TypeOAA7ForEachVySayA1_GA1_ACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAX_A1_Qo_0sB015BodyHyphenationVGGG_AA07DefaultqP0VQo_ARGSg_APyAreAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEASyQrqd__AaTRd__lFQOyAVyARA8_011RangedAlertP0OA3_ySayA20_GA20_ACyAeAEA5__A6_Qrqd___SbtSHRd__lFQOyAX_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedqP0VQo_A8_09ClearListP033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_ARGAPyARA8_0Q6ButtonVARGSgAPyAxNyA38__A38_tGARGSgtGANyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo__SdQo__A1_Qo_AA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAA4TextV11WorkoutCore10TargetZoneC0V4TypeOAA7ForEachVySayA1_GA1_ACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAX_A1_Qo_0sB015BodyHyphenationVGGG_AA07DefaultqP0VQo_ARGSg_APyAreAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEASyQrqd__AaTRd__lFQOyAVyARA8_011RangedAlertP0OA3_ySayA20_GA20_ACyAeAEA5__A6_Qrqd___SbtSHRd__lFQOyAX_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedqP0VQo_A8_09ClearListP033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_ARGAPyARA8_0Q6ButtonVARGSgAPyAxNyA38__A38_tGARGSgtGANyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo__SdQo__A1_Qo_AA25_AppearanceActionModifierVGMR) + 36));
  *v57 = partial apply for closure #6 in AlertsEntryView.body.getter;
  v57[1] = v56;
  v57[2] = 0;
  v57[3] = 0;
  outlined init with copy of AlertsEntryView(v55, v50, type metadata accessor for AlertsEntryView);
  v58 = swift_allocObject();
  outlined init with take of AlertsEntryView(v50, v58 + v23, type metadata accessor for AlertsEntryView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAA4TextV11WorkoutCore10TargetZoneC0V4TypeOAA7ForEachVySayA1_GA1_ACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAX_A1_Qo_0sB015BodyHyphenationVGGG_AA07DefaultqP0VQo_ARGSg_APyAreAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEASyQrqd__AaTRd__lFQOyAVyARA8_011RangedAlertP0OA3_ySayA20_GA20_ACyAeAEA5__A6_Qrqd___SbtSHRd__lFQOyAX_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedqP0VQo_A8_09ClearListP033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_ARGAPyARA8_0Q6ButtonVARGSgAPyAxNyA38__A38_tGARGSgtGANyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo__SdQo__A1_Qo_AA25_AppearanceActionModifierVGA56_GMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAeAEAfgH_Qrqd___SbyyctSQRd__lFQOyAA5GroupVyAA012_ConditionalD0VyAA05TupleE0VyAA7SectionVyAA05EmptyE0VAeAE11pickerStyleyQrqd__AA06PickerP0Rd__lFQOyAA0Q0VyAA4TextV11WorkoutCore10TargetZoneC0V4TypeOAA7ForEachVySayA1_GA1_ACyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAX_A1_Qo_0sB015BodyHyphenationVGGG_AA07DefaultqP0VQo_ARGSg_APyAreAEAfgH_Qrqd___SbyyctSQRd__lFQOyACyAeAEASyQrqd__AaTRd__lFQOyAVyARA8_011RangedAlertP0OA3_ySayA20_GA20_ACyAeAEA5__A6_Qrqd___SbtSHRd__lFQOyAX_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedqP0VQo_A8_09ClearListP033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_ARGAPyARA8_0Q6ButtonVARGSgAPyAxNyA38__A38_tGARGSgtGANyA35__A16_SgA38_SgA41_SgtGGG_SdQo__SdQo__SdQo__A1_Qo_AA25_AppearanceActionModifierVGA56_GMR);
  v60 = (v51 + *(result + 36));
  *v60 = 0;
  v60[1] = 0;
  v60[2] = partial apply for closure #7 in AlertsEntryView.body.getter;
  v60[3] = v58;
  return result;
}

uint64_t closure #1 in AlertsEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMR);
  MEMORY[0x28223BE20](v169);
  v157 = &v130 - v3;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGMR);
  v153 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v141 = &v130 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v155 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v130 - v8;
  v159 = type metadata accessor for PickerButton(0);
  v150 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v140 = (&v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI12PickerButtonVSgMd, &_s9WorkoutUI12PickerButtonVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v154 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v165 = &v130 - v14;
  v138 = type metadata accessor for DefaultPickerStyle();
  v135 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v133 = &v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  MEMORY[0x28223BE20](v16 - 8);
  v136 = &v130 - v17;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMd, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMR);
  v134 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v132 = &v130 - v18;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_Md, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_MR);
  v142 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v20 = &v130 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v151 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v174 = &v130 - v24;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA05EmptyC0V07WorkoutB0011RangedAlertK0OAA7ForEachVySayAQGAqHyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AQQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_AO09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AQQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA05EmptyC0V07WorkoutB0011RangedAlertK0OAA7ForEachVySayAQGAqHyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AQQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_AO09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AQQo_MR);
  v175 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v149 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v130 - v27;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedD0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA9TupleViewVyAA7SectionVyAA05EmptyG0VAA0G0PAAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA4TextV11WorkoutCore10TargetZoneC0Q4TypeOAA7ForEachVySayAXGAxA08ModifiedD0VyAmAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAS_AXQo_0nB015BodyHyphenationVGGG_AA07DefaultlK0VQo_AKGSg_AIyAkmAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyA1_yAmAEANyQrqd__AaORd__lFQOyAQyAKA5_011RangedAlertK0OAZySayA20_GA20_A1_yAmAEA2__A3_Qrqd___SbtSHRd__lFQOyAS_A20_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_A5_09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A20_Qo_AKGAIyAKA5_0L6ButtonVAKGSgAIyAsGyA38__A38_tGAKGSgtGAGyA35__A13_SgA38_SgA41_SgtG_GMR);
  MEMORY[0x28223BE20](v166);
  v168 = &v130 - v29;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMR);
  MEMORY[0x28223BE20](v167);
  v152 = &v130 - v30;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGMR);
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v139 = &v130 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMR);
  MEMORY[0x28223BE20](v32 - 8);
  v148 = &v130 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v164 = &v130 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGMR);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v130 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMR);
  MEMORY[0x28223BE20](v40 - 8);
  v145 = &v130 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v163 = &v130 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAgAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAE07WorkoutB0011RangedAlertM0OAA7ForEachVySayASGAsLyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentednM0VQo_AQ09ClearListM033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo_AEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAgAE11pickerStyleyQrqd__AA06PickerM0Rd__lFQOyAA0N0VyAE07WorkoutB0011RangedAlertM0OAA7ForEachVySayASGAsLyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentednM0VQo_AQ09ClearListM033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo_AEGMR);
  v161 = *(v44 - 8);
  v162 = v44;
  MEMORY[0x28223BE20](v44);
  v144 = &v130 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v171 = &v130 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGMR);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v51 = &v130 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMR);
  MEMORY[0x28223BE20](v52 - 8);
  v143 = &v130 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v173 = &v130 - v55;
  if (static Platform.current.getter())
  {
    v156 = v9;
    AlertsEntryView.alertStylePicker()(v28);
    v56 = *(a1 + 24);
    v57 = *(a1 + 32);
    LOBYTE(v176) = v56;
    v177 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd, &_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMR);
    State.wrappedValue.getter();
    v58 = a1;
    v59 = v28;
    v131 = v28;
    if (v180 && v180 != 1)
    {
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v62 & 1) == 0)
      {
        v63 = type metadata accessor for AlertsEntryView(0);
        if (*(*(v58 + *(v63 + 28)) + 16) >= 2uLL)
        {
          v176 = AlertsEntryView.pickerZoneTypesLabel.getter(v63);
          v177 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
          v65 = State.projectedValue.getter();
          v171 = &v130;
          MEMORY[0x28223BE20](v65);
          v173 = v20;
          v164 = type metadata accessor for TargetZone.ZoneType();
          v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMR);
          lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE88]);
          lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>);
          lazy protocol witness table accessor for type String and conformance String();
          v66 = v132;
          Picker<>.init<A>(_:selection:content:)();
          v67 = v133;
          DefaultPickerStyle.init()();
          lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, TargetZone.ZoneType, ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMd, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMR, MEMORY[0x277CDF038]);
          v68 = v137;
          v69 = v138;
          View.pickerStyle<A>(_:)();
          (*(v135 + 8))(v67, v69);
          v70 = v68;
          v59 = v131;
          (*(v134 + 8))(v66, v70);
          v71 = v142;
          v72 = v158;
          (*(v142 + 32))(v174, v173, v158);
          v73 = v72;
          v74 = 0;
          goto LABEL_16;
        }
      }
    }

    v74 = 1;
    v73 = v158;
    v71 = v142;
LABEL_16:
    (*(v71 + 56))(v174, v74, 1, v73);
    LOBYTE(v176) = v56;
    v177 = v57;
    State.wrappedValue.getter();
    if (v180)
    {
      v79 = v165;
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v80 & 1) == 0)
      {
        v81 = 1;
LABEL_21:
        (*(v150 + 56))(v79, v81, 1, v159);
        LOBYTE(v176) = v56;
        v177 = v57;
        State.wrappedValue.getter();
        if (v180 && v180 == 1)
        {
        }

        else
        {
          v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v93 & 1) == 0)
          {
            v94 = v79;
            v95 = v59;
            v98 = 1;
            v99 = v160;
            v97 = v156;
            goto LABEL_39;
          }
        }

        v94 = v79;
        v95 = v59;
        v96 = v141;
        AlertsEntryView.rangedPickerButtons()(v141);
        v97 = v156;
        outlined init with take of TupleView<(PickerButton, PickerButton)>(v96, v156);
        v98 = 0;
        v99 = v160;
LABEL_39:
        v100 = v155;
        (*(v153 + 56))(v97, v98, 1, v99);
        Kind = v175[1].Kind;
        v102 = v149;
        v103 = v172;
        Kind(v149, v95, v172);
        v104 = v151;
        outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v174, v151, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMR);
        v105 = v94;
        v106 = v154;
        outlined init with copy of PickerButton?(v105, v154, &_s9WorkoutUI12PickerButtonVSgMd, &_s9WorkoutUI12PickerButtonVSgMR);
        outlined init with copy of PickerButton?(v97, v100, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMR);
        v107 = v157;
        Kind(v157, v102, v103);
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA05EmptyC0V07WorkoutB0011RangedAlertK0OAA7ForEachVySayAQGAqHyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AQQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_AO09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AQQo__AcAEAIyQrqd__AaJRd__lFQOyALyAX0N4Core10TargetZoneC8ZoneTypeOASySayA15_GA15_AHyAcAEAU_AVQrqd___SbtSHRd__lFQOyAX_A15_Qo_AO15BodyHyphenationVGGG_AA07DefaultlK0VQo_SgAO0L6ButtonVSgAA05TupleC0VyA28__A28_tGSgtMd, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAcAE11pickerStyleyQrqd__AA06PickerK0Rd__lFQOyAA0L0VyAA05EmptyC0V07WorkoutB0011RangedAlertK0OAA7ForEachVySayAQGAqHyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AQQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedlK0VQo_AO09ClearListK033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_AQQo__AcAEAIyQrqd__AaJRd__lFQOyALyAX0N4Core10TargetZoneC8ZoneTypeOASySayA15_GA15_AHyAcAEAU_AVQrqd___SbtSHRd__lFQOyAX_A15_Qo_AO15BodyHyphenationVGGG_AA07DefaultlK0VQo_SgAO0L6ButtonVSgAA05TupleC0VyA28__A28_tGSgtMR);
        outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v104, v107 + v108[12], &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMR);
        outlined init with copy of PickerButton?(v106, v107 + v108[16], &_s9WorkoutUI12PickerButtonVSgMd, &_s9WorkoutUI12PickerButtonVSgMR);
        outlined init with copy of PickerButton?(v100, v107 + v108[20], &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMR);
        outlined destroy of TupleView<(PickerButton, PickerButton)>?(v100, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMR);
        outlined destroy of TupleView<(PickerButton, PickerButton)>?(v106, &_s9WorkoutUI12PickerButtonVSgMd, &_s9WorkoutUI12PickerButtonVSgMR);
        outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v104, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMR);
        Description = v175->Description;
        v175 = (v175 + 8);
        v110 = v172;
        Description(v102, v172);
        outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v107, v168, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMR);
        swift_storeEnumTagMultiPayload();
        v111 = MEMORY[0x277CE14C0];
        lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMR, MEMORY[0x277CE14C0]);
        lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMR, v111);
        _ConditionalContent<>.init(storage:)();
        outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v107, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMR);
        outlined destroy of TupleView<(PickerButton, PickerButton)>?(v156, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMd, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGSgMR);
        outlined destroy of TupleView<(PickerButton, PickerButton)>?(v165, &_s9WorkoutUI12PickerButtonVSgMd, &_s9WorkoutUI12PickerButtonVSgMR);
        outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v174, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMd, &_s7SwiftUI4ViewPAAE11pickerStyleyQrqd__AA06PickerE0Rd__lFQOyAA0F0VyAA4TextV11WorkoutCore10TargetZoneC0K4TypeOAA7ForEachVySayANGAnA15ModifiedContentVyAcAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAI_ANQo_0hB015BodyHyphenationVGGG_AA07DefaultfE0VQo_SgMR);
        return (Description)(v131, v110);
      }
    }

    else
    {

      v79 = v165;
    }

    v82 = v140;
    AlertsEntryView.targetPickerButton()(v140);
    outlined init with take of AlertsEntryView(v82, v79, type metadata accessor for PickerButton);
    v81 = 0;
    goto LABEL_21;
  }

  v60 = a1;
  v61 = *(a1 + 32);
  LODWORD(v174) = *(a1 + 24);
  LOBYTE(v176) = v174;
  v175 = v61;
  v177 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd, &_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMR);
  State.wrappedValue.getter();
  if (v180 && v180 != 1)
  {
  }

  else
  {
    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v75 & 1) == 0)
    {
      v76 = type metadata accessor for AlertsEntryView(0);
      if (*(*(v60 + *(v76 + 28)) + 16) >= 2uLL)
      {
        MEMORY[0x28223BE20](v76);
        v77 = lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, TargetZone.ZoneType, ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMd, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMR, MEMORY[0x277CDF038]);
        v176 = v137;
        v177 = v138;
        v178 = v77;
        v179 = MEMORY[0x277CDDE48];
        swift_getOpaqueTypeConformance2();
        Section<>.init(content:)();
        (*(v49 + 32))(v173, v51, v48);
        v78 = 0;
        goto LABEL_27;
      }
    }
  }

  v78 = 1;
LABEL_27:
  v165 = v36;
  v83 = (*(v49 + 56))(v173, v78, 1, v48);
  MEMORY[0x28223BE20](v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
  v85 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>();
  v86 = lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
  v176 = v84;
  v177 = &type metadata for RangedAlertStyle;
  v178 = v85;
  v179 = v86;
  swift_getOpaqueTypeConformance2();
  Section<>.init(content:)();
  v87 = v174;
  LOBYTE(v176) = v174;
  v177 = v175;
  State.wrappedValue.getter();
  if (!v180)
  {

    v88 = v163;
    goto LABEL_31;
  }

  v88 = v163;
  v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v89)
  {
LABEL_31:
    MEMORY[0x28223BE20](v90);
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type PickerButton and conformance PickerButton, type metadata accessor for PickerButton, &protocol conformance descriptor for PickerButton);
    Section<>.init(content:)();
    v92 = v165;
    (*(v37 + 32))(v88, v39, v165);
    v91 = 0;
    goto LABEL_32;
  }

  v91 = 1;
  v92 = v165;
LABEL_32:
  (*(v37 + 56))(v88, v91, 1, v92);
  LOBYTE(v176) = v87;
  v177 = v175;
  State.wrappedValue.getter();
  if (v180 && v180 == 1)
  {
  }

  else
  {
    v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v113 & 1) == 0)
    {
      v119 = 1;
      v117 = v164;
      v120 = v148;
      v118 = v147;
      v116 = v146;
      goto LABEL_43;
    }
  }

  LOBYTE(v176) = v87;
  v177 = v175;
  State.wrappedValue.getter();
  v176 = RangedAlertStyle.displayString.getter(v180);
  v177 = v114;
  MEMORY[0x28223BE20](v176);
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(PickerButton, PickerButton)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB012PickerButtonV_AFtGMR, MEMORY[0x277CE14C0]);
  lazy protocol witness table accessor for type String and conformance String();
  v115 = v139;
  Section<>.init<A>(_:content:)();
  v116 = v146;
  v117 = v164;
  v118 = v147;
  (*(v146 + 32))(v164, v115, v147);
  v119 = 0;
  v120 = v148;
LABEL_43:
  v121 = v145;
  (*(v116 + 56))(v117, v119, 1, v118);
  v122 = v143;
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v173, v143, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMR);
  v123 = *(v161 + 16);
  v124 = v144;
  v123(v144, v171, v162);
  outlined init with copy of PickerButton?(v88, v121, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMR);
  outlined init with copy of PickerButton?(v117, v120, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMR);
  v125 = v152;
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v122, v152, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMR);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSg_ACyAegAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAWyAgAEAHyQrqd__AaIRd__lFQOyAKyAEA_011RangedAlertG0OATySayA14_GA14_AWyAgAEAX_AYQrqd___SbtSHRd__lFQOyAM_A14_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_A_09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A14_Qo_AEGACyAEA_0H6ButtonVAEGSgACyAmA05TupleE0VyA32__A32_tGAEGSgtMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSg_ACyAegAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAWyAgAEAHyQrqd__AaIRd__lFQOyAKyAEA_011RangedAlertG0OATySayA14_GA14_AWyAgAEAX_AYQrqd___SbtSHRd__lFQOyAM_A14_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_A_09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A14_Qo_AEGACyAEA_0H6ButtonVAEGSgACyAmA05TupleE0VyA32__A32_tGAEGSgtMR);
  v127 = v162;
  v123((v125 + v126[12]), v124, v162);
  outlined init with copy of PickerButton?(v121, v125 + v126[16], &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMR);
  outlined init with copy of PickerButton?(v120, v125 + v126[20], &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMR);
  outlined destroy of TupleView<(PickerButton, PickerButton)>?(v120, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMR);
  outlined destroy of TupleView<(PickerButton, PickerButton)>?(v121, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMR);
  v128 = *(v161 + 8);
  v128(v124, v127);
  outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v122, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMR);
  outlined init with copy of (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?(v125, v168, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMR);
  swift_storeEnumTagMultiPayload();
  v129 = MEMORY[0x277CE14C0];
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMR, MEMORY[0x277CE14C0]);
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMd, &_s7SwiftUI9TupleViewVyAA0D0PAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA15ModifiedContentVyAeAE11pickerStyleyQrqd__AA06PickerL0Rd__lFQOyAA0M0VyAA05EmptyD0V07WorkoutB0011RangedAlertL0OAA7ForEachVySayASGAsJyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ASQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedmL0VQo_AQ09ClearListL033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_ASQo__AeAEAKyQrqd__AaLRd__lFQOyANyAZ0O4Core10TargetZoneC8ZoneTypeOAUySayA17_GA17_AJyAeAEAW_AXQrqd___SbtSHRd__lFQOyAZ_A17_Qo_AQ15BodyHyphenationVGGG_AA07DefaultmL0VQo_SgAQ0M6ButtonVSgACyA30__A30_tGSgtGMR, v129);
  _ConditionalContent<>.init(storage:)();
  outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v125, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMd, &_s7SwiftUI9TupleViewVyAA7SectionVyAA05EmptyD0VAA0D0PAAE11pickerStyleyQrqd__AA06PickerH0Rd__lFQOyAA0I0VyAA4TextV11WorkoutCore10TargetZoneC0N4TypeOAA7ForEachVySayATGAtA15ModifiedContentVyAiAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAO_ATQo_0kB015BodyHyphenationVGGG_AA07DefaultiH0VQo_AGGSg_AEyAgiAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAYyAiAEAJyQrqd__AaKRd__lFQOyAMyAGA1_011RangedAlertH0OAVySayA16_GA16_AYyAiAEAZ_A_Qrqd___SbtSHRd__lFQOyAO_A16_Qo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentediH0VQo_A1_09ClearListH033_A607961C6E65DD4DD1C2818C5FE69B58LLVG_A16_Qo_AGGAEyAGA1_0I6ButtonVAGGSgAEyAoCyA34__A34_tGAGGSgtGMR);
  outlined destroy of TupleView<(PickerButton, PickerButton)>?(v164, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMd, &_s7SwiftUI7SectionVyAA4TextVAA9TupleViewVy07WorkoutB012PickerButtonV_AJtGAA05EmptyF0VGSgMR);
  outlined destroy of TupleView<(PickerButton, PickerButton)>?(v163, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewV07WorkoutB012PickerButtonVAEGSgMR);
  v128(v171, v127);
  return outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v173, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMd, &_s7SwiftUI7SectionVyAA9EmptyViewVAA0E0PAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA4TextV11WorkoutCore10TargetZoneC0M4TypeOAA7ForEachVySayARGArA15ModifiedContentVyAgAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAM_ARQo_0jB015BodyHyphenationVGGG_AA07DefaulthG0VQo_AEGSgMR);
}

uint64_t closure #1 in closure #1 in AlertsEntryView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for DefaultPickerStyle();
  v5 = *(v4 - 8);
  v18 = v4;
  v19 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMd, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  v22 = AlertsEntryView.pickerZoneTypesLabel.getter(v13);
  v23 = v14;
  type metadata accessor for AlertsEntryView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  State.projectedValue.getter();
  v21 = a1;
  type metadata accessor for TargetZone.ZoneType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMR);
  lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType(&lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType, MEMORY[0x277D7DE80], MEMORY[0x277D7DE88]);
  lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMd, &_s7SwiftUI7ForEachVySay11WorkoutCore10TargetZoneC0H4TypeOGAhA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_0eB015BodyHyphenationVGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type String and conformance String();
  Picker<>.init<A>(_:selection:content:)();
  DefaultPickerStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<Text, TargetZone.ZoneType, ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMd, &_s7SwiftUI6PickerVyAA4TextV11WorkoutCore10TargetZoneC0H4TypeOAA7ForEachVySayAJGAjA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAE_AJQo_0eB015BodyHyphenationVGGGMR, MEMORY[0x277CDF038]);
  v15 = v18;
  View.pickerStyle<A>(_:)();
  (*(v19 + 8))(v7, v15);
  return (*(v10 + 8))(v12, v9);
}

uint64_t AlertsEntryView.alertStylePicker()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for AlertsEntryView(0);
  v30 = *(v2 - 8);
  v29 = *(v30 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v28 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SegmentedPickerStyle();
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMd, &_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMR);
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v20 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
  MEMORY[0x28223BE20](v27);
  v12 = &v20 - v11;
  v34 = v1;
  v13 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in AlertsEntryView.alertStylePicker(), v33, &outlined read-only object #0 of AlertsEntryView.alertStylePicker());
  v23 = v1;
  v22 = *(v1 + 24);
  v21 = *(v1 + 32);
  v37 = v22;
  v38 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd, &_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMR);
  State.projectedValue.getter();
  v32 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySay07WorkoutB016RangedAlertStyleOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI7ForEachVySay07WorkoutB016RangedAlertStyleOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMR);
  lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
  lazy protocol witness table accessor for type ForEach<[TargetZone.ZoneType], TargetZone.ZoneType, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, BodyHyphenation>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<[RangedAlertStyle], RangedAlertStyle, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>> and conformance <> ForEach<A, B, C>, &_s7SwiftUI7ForEachVySay07WorkoutB016RangedAlertStyleOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMd, &_s7SwiftUI7ForEachVySay07WorkoutB016RangedAlertStyleOGAfA15ModifiedContentVyAA4ViewPAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AFQo_AA31AccessibilityAttachmentModifierVGGMR, lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  Picker.init(selection:label:content:)();

  SegmentedPickerStyle.init()();
  lazy protocol witness table accessor for type TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Picker<EmptyView, RangedAlertStyle, ForEach<[RangedAlertStyle], RangedAlertStyle, ModifiedContent<<<opaque return type of View.tag<A>(_:includeOptional:)>>.0, AccessibilityAttachmentModifier>>> and conformance Picker<A, B, C>, &_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMd, &_s7SwiftUI6PickerVyAA9EmptyViewV07WorkoutB016RangedAlertStyleOAA7ForEachVySayAHGAhA15ModifiedContentVyAA0E0PAAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_AHQo_AA31AccessibilityAttachmentModifierVGGGMR, MEMORY[0x277CDF038]);
  v15 = v24;
  v14 = v25;
  View.pickerStyle<A>(_:)();
  (*(v26 + 8))(v7, v14);
  (*(v8 + 8))(v10, v15);
  LOBYTE(v35) = v22;
  v36 = v21;
  State.wrappedValue.getter();
  v16 = v28;
  outlined init with copy of AlertsEntryView(v23, v28, type metadata accessor for AlertsEntryView);
  v17 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v18 = swift_allocObject();
  outlined init with take of AlertsEntryView(v16, v18 + v17, type metadata accessor for AlertsEntryView);
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.pickerStyle<A>(_:)>>.0, ClearListStyle> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type RangedAlertStyle and conformance RangedAlertStyle();
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of Group<_ConditionalContent<TupleView<(Section<EmptyView, <<opaque return type of View.pickerStyle<A>(_:)>>.0, EmptyView>?, Section<EmptyView, <<opaque return type of View.onChange<A>(of:initial:_:)>>.0, EmptyView>, Section<EmptyView, PickerButton, EmptyView>?, Section<Text, TupleView<(PickerButton, PickerButton)>, EmptyView>?)>, TupleView<(<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, (<<opaque return type of View.pickerStyle<A>(_:)>>.0)?, PickerButton?, TupleView<(PickerButton, PickerButton)>?)>>>(v12, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE11pickerStyleyQrqd__AA06PickerG0Rd__lFQOyAA0H0VyAA05EmptyE0V07WorkoutB0011RangedAlertG0OAA7ForEachVySayANGAnCyAeAE3tag_15includeOptionalQrqd___SbtSHRd__lFQOyAA4TextV_ANQo_AA31AccessibilityAttachmentModifierVGGG_AA09SegmentedhG0VQo_AL09ClearListG033_A607961C6E65DD4DD1C2818C5FE69B58LLVGMR);
}

uint64_t AlertsEntryView.targetPickerButton()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v33 = type metadata accessor for TargetZone.ZoneType();
  v4 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AlertsEntryView(0);
  v8 = *(v1 + v7[9]);
  v9 = *(v1 + v7[8]);
  v10 = (v2 + v7[11]);
  v11 = *v10;
  v12 = v10[1];
  v36[0] = v11;
  v36[1] = v12;
  v32 = v8;
  v13 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.projectedValue.getter();
  v30 = v35;
  v31 = v34;
  v14 = *(&v35 + 1);
  v15 = v2[4];
  LOBYTE(v34) = *(v2 + 24);
  *&v35 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMd, &_s7SwiftUI5StateVy07WorkoutB016RangedAlertStyleOGMR);
  State.wrappedValue.getter();
  v16 = RangedAlertStyle.displayString.getter(v36[0]);
  v18 = v17;
  v19 = type metadata accessor for PickerButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  State.wrappedValue.getter();
  AlertsEntryView.minimumSelectableValue.getter();
  v21 = v20;
  AlertsEntryView.maximumSelectableValue.getter();
  v23 = v22;
  v34 = *v2;
  v35 = *(v2 + 1);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMR);
  MEMORY[0x20F30B100](v36, v24);
  TargetZone.type.getter();

  v25 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v13);
  result = (*(v4 + 8))(v6, v33);
  v27 = v31;
  *a1 = v32;
  a1[1] = v13;
  v28 = v30;
  a1[2] = v27;
  a1[3] = v28;
  a1[4] = v14;
  a1[5] = v16;
  a1[6] = v18;
  *(a1 + v19[9]) = v21;
  *(a1 + v19[10]) = v23;
  *(a1 + v19[11]) = v25;
  return result;
}

uint64_t AlertsEntryView.rangedPickerButtons()@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v104 = type metadata accessor for TargetZone.PrimaryType();
  v108 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v96 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TargetZone.ZoneType();
  v109 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for PickerButton(0) - 8;
  MEMORY[0x28223BE20](v107);
  v98 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v97 = &v84 - v8;
  MEMORY[0x28223BE20](v9);
  v102 = (&v84 - v10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v84 - v12);
  v14 = type metadata accessor for AlertsEntryView(0);
  v15 = *(v1 + v14[9]);
  v16 = *(v1 + v14[8]);
  v17 = (v1 + v14[12]);
  v18 = *v17;
  v19 = v17[1];
  v113 = v18;
  v114 = v19;
  v103 = v15;
  v20 = v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.projectedValue.getter();
  v100 = v110;
  v94 = v111;
  v21 = v112;
  v22 = v14[6];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMd, &_s7SwiftUI5StateVy11WorkoutCore10TargetZoneC0G4TypeOGMR);
  v87 = v22;
  v88 = v23;
  State.wrappedValue.getter();
  v93 = TargetZone.ZoneType.headerTextLow(activityType:)(v20);
  v92 = v24;
  v25 = v109 + 8;
  v105 = *(v109 + 8);
  v105(v5, v3);
  v109 = v25;
  State.wrappedValue.getter();
  AlertsEntryView.minimumSelectableValue.getter();
  v27 = v26;
  AlertsEntryView.maximumSelectableValue.getter();
  v29 = v28;
  v30 = v1[1];
  v106 = *v1;
  v90 = v30;
  v89 = v1[2];
  v110 = v106;
  v111 = v30;
  v112 = v89;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMd, &_s7SwiftUI7BindingVy11WorkoutCore10TargetZoneCGMR);
  MEMORY[0x20F30B100](&v113);
  TargetZone.type.getter();

  v31 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v20);
  v32 = v3;
  v33 = v105;
  v105(v5, v3);
  v91 = v13;
  v34 = v103;
  *v13 = v103;
  v13[1] = v20;
  v35 = v94;
  v13[2] = v100;
  v13[3] = v35;
  v13[4] = v21;
  v36 = v92;
  v13[5] = v93;
  v13[6] = v36;
  v37 = v107;
  *(v13 + *(v107 + 44)) = v27;
  *(v13 + *(v37 + 48)) = v29;
  *(v13 + *(v37 + 52)) = v31;
  v38 = v14[13];
  v86 = v1;
  v39 = (v1 + v38);
  v40 = *v39;
  v41 = v39[1];
  v113 = v40;
  v114 = v41;
  v103 = v34;
  v42 = v20;
  State.projectedValue.getter();
  v95 = v110;
  v94 = v111;
  v43 = v112;
  State.wrappedValue.getter();
  v100 = v42;
  v93 = TargetZone.ZoneType.headerTextHigh(activityType:)(v42);
  v92 = v44;
  v33(v5, v32);
  State.wrappedValue.getter();
  AlertsEntryView.minimumSelectableValue.getter();
  v46 = v45;
  v47 = v106;
  v48 = v90;
  v110 = v106;
  v111 = v90;
  v49 = v89;
  v112 = v89;
  v50 = v101;
  MEMORY[0x20F30B100](&v113, v101);
  TargetZone.type.getter();

  v51 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v42);
  v85 = v32;
  v52 = v105;
  v105(v5, v32);
  v110 = v47;
  v111 = v48;
  v53 = v48;
  v54 = v49;
  v112 = v49;
  v55 = v50;
  MEMORY[0x20F30B100](&v113, v50);
  TargetZone.type.getter();

  v56 = v96;
  TargetZone.ZoneType.primaryType.getter();
  v52(v5, v32);
  v57 = v100;
  Double.add(valueInUserUnit:primaryType:activityType:formattingManager:)(v51, v46, v56, v100, v103);
  v59 = v58;
  v60 = *(v108 + 8);
  v108 += 8;
  v88 = v60;
  v60(v56, v104);
  AlertsEntryView.maximumSelectableValue.getter();
  v62 = v61;
  v63 = v106;
  v110 = v106;
  v111 = v53;
  v64 = v54;
  v112 = v54;
  v65 = v55;
  MEMORY[0x20F30B100](&v113, v55);
  TargetZone.type.getter();

  v66 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v57);
  v67 = v85;
  v68 = v105;
  v105(v5, v85);
  v110 = v63;
  v111 = v53;
  v112 = v64;
  MEMORY[0x20F30B100](&v113, v65);
  TargetZone.type.getter();

  TargetZone.ZoneType.primaryType.getter();
  v68(v5, v67);
  v69 = v100;
  v70 = v103;
  Double.add(valueInUserUnit:primaryType:activityType:formattingManager:)(v66, v62, v56, v100, v103);
  v72 = v71;
  v88(v56, v104);
  v110 = v106;
  v111 = v53;
  v112 = v64;
  MEMORY[0x20F30B100](&v113, v101);
  TargetZone.type.getter();

  v73 = TargetZone.ZoneType.pickerStepInUserUnit(activityType:)(v69);
  v68(v5, v67);
  v74 = v102;
  *v102 = v70;
  v74[1] = v69;
  v75 = v94;
  v74[2] = v95;
  v74[3] = v75;
  v74[4] = v43;
  v76 = v92;
  v74[5] = v93;
  v74[6] = v76;
  v77 = v107;
  *(v74 + *(v107 + 44)) = v59;
  *(v74 + *(v77 + 48)) = v72;
  *(v74 + *(v77 + 52)) = v73;
  v78 = v91;
  v79 = v97;
  outlined init with copy of AlertsEntryView(v91, v97, type metadata accessor for PickerButton);
  v80 = v98;
  outlined init with copy of AlertsEntryView(v74, v98, type metadata accessor for PickerButton);
  v81 = v99;
  outlined init with copy of AlertsEntryView(v79, v99, type metadata accessor for PickerButton);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI12PickerButtonV_ACtMd, &_s9WorkoutUI12PickerButtonV_ACtMR);
  outlined init with copy of AlertsEntryView(v80, v81 + *(v82 + 48), type metadata accessor for PickerButton);
  outlined destroy of PickerButton(v74);
  outlined destroy of PickerButton(v78);
  outlined destroy of PickerButton(v80);
  return outlined destroy of PickerButton(v79);
}