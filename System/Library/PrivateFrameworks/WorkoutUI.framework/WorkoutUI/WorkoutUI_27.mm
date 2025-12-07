uint64_t outlined init with copy of ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<SelectionShapeStyle> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA014SelectionShapeD0VGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA014SelectionShapeD0VGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>> and conformance HStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined destroy of HStack<TupleView<(ModifiedContent<Button<Text>, _EnvironmentKeyWritingModifier<Color?>>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>?)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<SelectionShapeStyle>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA016_ForegroundStyleI0VyAA014SelectionShapeL0VGGAA023AccessibilityAttachmentI0VGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized UnitsSettingsItemView.dataProviderBinding.setter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v2, v3);
  type metadata accessor for Binding();
  return Binding.wrappedValue.setter();
}

uint64_t _s7SwiftUI19AccessibilityTraitsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for UnitSettingsPoolLengthUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnitSettingsPoolLengthUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitSettingsPoolLengthUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitSettingsPoolLengthUnit(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

void protocol witness for Identifiable.id.getter in conformance UnitSettingsPoolLengthUnit(unint64_t *a1@<X8>)
{
  v2 = "ERGY_UNITS_CALORIES_LABEL";
  v3 = 0xD000000000000025;
  if (*v1)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v2 = "OL_LENGTH_METERS_LABEL";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [UnitSettingsPoolLengthUnit] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UnitSettingsPoolLengthUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UnitSettingsPoolLengthUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI022UnitSettingsPoolLengthC0OGMd, &_sSay9WorkoutUI022UnitSettingsPoolLengthC0OGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UnitSettingsPoolLengthUnit] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitSettingsPoolLengthUnit and conformance UnitSettingsPoolLengthUnit()
{
  result = lazy protocol witness table cache variable for type UnitSettingsPoolLengthUnit and conformance UnitSettingsPoolLengthUnit;
  if (!lazy protocol witness table cache variable for type UnitSettingsPoolLengthUnit and conformance UnitSettingsPoolLengthUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitSettingsPoolLengthUnit and conformance UnitSettingsPoolLengthUnit);
  }

  return result;
}

uint64_t specialized static UnitSettingsPoolLengthUnit.makeFromFIUIDistanceUnit(_:)(uint64_t result)
{
  if (result <= 2)
  {
    if (result == 1)
    {
      return result;
    }

    if (result == 2)
    {
      v6 = static os_log_type_t.error.getter();
      v7 = *MEMORY[0x277CCC270];
      if (os_log_type_enabled(*MEMORY[0x277CCC270], v6))
      {
        v8 = v7;
        v9 = swift_slowAlloc();
        *v9 = 134217984;
        *(v9 + 4) = 2;
LABEL_14:
        _os_log_impl(&dword_20C66F000, v8, v6, "Unexpected pool length units %lu. Setting pool length unit to meters", v9, 0xCu);
        MEMORY[0x20F30E080](v9, -1, -1);
      }

      return 1;
    }

LABEL_12:
    v10 = result;
    v6 = static os_log_type_t.error.getter();
    v11 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], v6))
    {
      v8 = v11;
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = v10;
      goto LABEL_14;
    }

    return 1;
  }

  if (result != 5)
  {
    if (result == 4)
    {
      return 0;
    }

    if (result != 3)
    {
      goto LABEL_12;
    }
  }

  v1 = result;
  v2 = static os_log_type_t.error.getter();
  v3 = *MEMORY[0x277CCC270];
  result = os_log_type_enabled(*MEMORY[0x277CCC270], v2);
  if (result)
  {
    v4 = v3;
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_20C66F000, v4, v2, "Unexpected pool length units %lu. Setting pool length unit to yards", v5, 0xCu);
    MEMORY[0x20F30E080](v5, -1, -1);

    return 0;
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t UnitsSettingsDataProvider.isWheelchairUser.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

void UnitsSettingsDataProvider.energyUnit.didset()
{
  v1 = [*(v0 + 16) unitManager];
  if (v1)
  {
    v2 = v1;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v7);

    v3 = v7;
    v4 = objc_opt_self();
    if (v3)
    {
      if (v3 == 1)
      {
        v5 = [v4 kilocalorieUnit];
      }

      else
      {
        v5 = [v4 jouleUnitWithMetricPrefix_];
      }
    }

    else
    {
      v5 = [v4 largeCalorieUnit];
    }

    v6 = v5;
    [v2 setUserActiveEnergyBurnedUnit_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t UnitsSettingsDataProvider.energyUnit.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void UnitsSettingsDataProvider.poolLengthUnit.didset()
{
  v1 = [*(v0 + 16) unitManager];
  if (v1)
  {
    v2 = v1;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v4);

    if (v4)
    {
      v3 = 1;
    }

    else
    {
      v3 = 4;
    }

    [v2 setUserDistanceUnit:v3 forDistanceType:3];
  }

  else
  {
    __break(1u);
  }
}

void UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(v3 + 16) unitManager];
  if (v5)
  {
    v6 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v8);

    if (v8)
    {
      v7 = 2;
    }

    else
    {
      v7 = 3;
    }

    [v6 setUserDistanceUnit:v7 forDistanceType:a3];
  }

  else
  {
    __break(1u);
  }
}

void UnitsSettingsDataProvider.trackWorkoutsUnit.didset(char a1)
{
  v2 = v1;
  aBlock[7] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(aBlock);

  if (LOBYTE(aBlock[0]) != (a1 & 1))
  {
    v22 = v5;
    v12 = v2[3];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(aBlock);

    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v14 = MEMORY[0x20F30BAD0](0xD000000000000013, 0x800000020CB9DBF0);
    aBlock[0] = 0;
    v15 = [v12 setNumber:v13 forKey:v14 error:aBlock];

    if (v15)
    {
      v16 = aBlock[0];
    }

    else
    {
      v17 = aBlock[0];
      v18 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    type metadata accessor for OS_dispatch_queue();
    v19 = static OS_dispatch_queue.main.getter();
    aBlock[4] = partial apply for closure #1 in UnitsSettingsDataProvider.trackWorkoutsUnit.didset;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_136;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F30C1F0](0, v11, v7, v20);
    _Block_release(v20);

    (*(v22 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
  }
}

void closure #1 in UnitsSettingsDataProvider.trackWorkoutsUnit.didset(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[4] = closure #1 in closure #1 in UnitsSettingsDataProvider.trackWorkoutsUnit.didset;
  v3[5] = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v3[3] = &block_descriptor_139;
  v2 = _Block_copy(v3);
  [v1 forceNanoSyncWithOptions:0 completion:v2];
  _Block_release(v2);
}

void closure #1 in closure #1 in UnitsSettingsDataProvider.trackWorkoutsUnit.didset(uint64_t a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = static os_log_type_t.default.getter();
    v4 = *MEMORY[0x277CCC270];
    if (os_log_type_enabled(*MEMORY[0x277CCC270], v3))
    {
      log = v4;
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      if (a2)
      {
        v7 = a2;
        v8 = _swift_stdlib_bridgeErrorToNSError();
        v9 = v8;
      }

      else
      {
        v8 = 0;
        v9 = 0;
      }

      *(v5 + 4) = v8;
      *v6 = v9;
      _os_log_impl(&dword_20C66F000, log, v3, "[UnitSettingsDataProvider] Failed to nano sync after updating track unit: %@", v5, 0xCu);
      _sypSgWOhTm_0(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F30E080](v6, -1, -1);
      MEMORY[0x20F30E080](v5, -1, -1);
    }
  }
}

uint64_t UnitsSettingsDataProvider.poolLengthUnit.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

id UnitsSettingsDataProvider.deinit()
{
  [*(v0 + 24) stopObservation_];
  v1 = *(v0 + 40);
  v2 = objc_opt_self();

  v3 = [v2 defaultCenter];
  v4 = *(v1 + 16);
  result = v3;
  v6 = result;
  if (v4)
  {
    v7 = 0;
    v8 = v1 + 32;
    while (v7 < *(v1 + 16))
    {
      outlined init with copy of Any(v8, v21);
      ++v7;
      __swift_project_boxed_opaque_existential_0(v21, v21[3]);
      [v6 removeObserver_];
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_0(v21);
      v8 += 32;
      if (v4 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v9 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__isWheelchairUser;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
    v11 = *(*(v10 - 8) + 8);
    v11(v0 + v9, v10);
    v11(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__isAppleMoveTime, v10);
    v12 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__energyUnit;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI018UnitSettingsEnergyE0OGMd, &_s7Combine9PublishedVy9WorkoutUI018UnitSettingsEnergyE0OGMR);
    (*(*(v13 - 8) + 8))(v0 + v12, v13);
    v14 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__poolLengthUnit;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI022UnitSettingsPoolLengthE0OGMd, &_s7Combine9PublishedVy9WorkoutUI022UnitSettingsPoolLengthE0OGMR);
    (*(*(v15 - 8) + 8))(v0 + v14, v15);
    v16 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__cyclingWorkoutsUnit;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI020UnitSettingsDistanceE0OGMd, &_s7Combine9PublishedVy9WorkoutUI020UnitSettingsDistanceE0OGMR);
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v16, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__walkingAndRunningWorkoutsUnit, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__crossCountrySkiingWorkoutsUnit, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__downhillSnowSportsWorkoutsUnit, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__rowingWorkoutsUnit, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__paddleSportsWorkoutsUnit, v17);
    v18(v0 + OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__skatingSportsWorkoutsUnit, v17);
    v19 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__trackWorkoutsUnit;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI025UnitSettingsTrackDistanceE0OGMd, &_s7Combine9PublishedVy9WorkoutUI025UnitSettingsTrackDistanceE0OGMR);
    (*(*(v20 - 8) + 8))(v0 + v19, v20);
    return v0;
  }

  return result;
}

uint64_t UnitsSettingsDataProvider.__deallocating_deinit()
{
  UnitsSettingsDataProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UnitsSettingsDataProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for UnitsSettingsDataProvider;
  if (!type metadata singleton initialization cache for UnitsSettingsDataProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void UnitsSettingsDataProvider.fetchUserUnits()()
{
  v1 = *(v0 + 16);
  v2 = [v1 unitManager];
  if (!v2)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  v4 = [v2 userActiveEnergyBurnedUnit];

  LOBYTE(v3) = specialized static UnitSettingsEnergyUnit.makeFromHKUnit(_:)(v4);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35) = v3;

  static Published.subscript.setter();
  UnitsSettingsDataProvider.energyUnit.didset();
  v5 = [v1 unitManager];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = v5;
  v7 = [v5 userDistanceUnitForDistanceType_];

  LOBYTE(v6) = specialized static UnitSettingsPoolLengthUnit.makeFromFIUIDistanceUnit(_:)(v7);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35) = v6 & 1;

  static Published.subscript.setter();
  UnitsSettingsDataProvider.poolLengthUnit.didset();
  v8 = [v1 unitManager];
  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8;
  v10 = [v8 userDistanceUnitForDistanceType_];

  LOBYTE(v9) = specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v10);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35) = v9 & 1;

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D6B0, &unk_20CB7D6D8, 2);
  v11 = [v1 unitManager];
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = v11;
  v13 = [v11 userDistanceUnitForDistanceType_];

  LOBYTE(v12) = specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v13);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35) = v12 & 1;

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D6F8, &unk_20CB7D720, 1);
  v14 = [v1 unitManager];
  if (!v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = v14;
  v16 = [v14 userDistanceUnitForDistanceType_];

  LOBYTE(v15) = specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v16);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35) = v15 & 1;

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D740, &unk_20CB7D768, 6);
  v17 = [v1 unitManager];
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = [v17 userDistanceUnitForDistanceType_];

  LOBYTE(v18) = specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v19);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35) = v18 & 1;

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D788, &unk_20CB7D7B0, 7);
  v20 = [v1 unitManager];
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = v20;
  v22 = [v20 userDistanceUnitForDistanceType_];

  LOBYTE(v21) = specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v22);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35) = v21 & 1;

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D7D0, &unk_20CB7D7F8, 9);
  v23 = [v1 unitManager];
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v23;
  v25 = [v23 userDistanceUnitForDistanceType_];

  LOBYTE(v24) = specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v25);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v35) = v24 & 1;

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D818, &unk_20CB7D840, 8);
  v26 = [v1 unitManager];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 userDistanceUnitForDistanceType_];

    LOBYTE(v27) = specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(v28);
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v35) = v27 & 1;

    static Published.subscript.setter();
    UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(&unk_20CB7D860, &unk_20CB7D888, 10);
    v29._object = 0x800000020CB9DBF0;
    v29._countAndFlagsBits = 0xD000000000000013;
    v30 = HKKeyValueDomain.number(for:)(v29);
    if (v31)
    {

      v32 = 0;
    }

    else
    {
      v32 = v30;
      if (v30 && ![v30 integerValue])
      {
        v33 = 0;
        goto LABEL_13;
      }
    }

    v33 = 1;
LABEL_13:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v35);

    v34 = v35;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v35) = v33;

    static Published.subscript.setter();
    UnitsSettingsDataProvider.trackWorkoutsUnit.didset(v34);

    return;
  }

LABEL_25:
  __break(1u);
}

void UnitsSettingsDataProvider.addNotificationCenterObservers()()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  if (one-time initialization token for WheelchairUseDidChange != -1)
  {
    swift_once();
  }

  v3 = static NSNotificationName.WheelchairUseDidChange;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 mainQueue];
  v7 = swift_allocObject();
  swift_weakInit();
  v21 = partial apply for closure #1 in UnitsSettingsDataProvider.addNotificationCenterObservers();
  v22 = v7;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v20 = &block_descriptor_24;
  v8 = _Block_copy(&v17);

  v9 = [v2 addObserverForName:v5 object:0 queue:v6 usingBlock:v8];
  _Block_release(v8);

  v10 = [v1 defaultCenter];
  v11 = *MEMORY[0x277D0A848];
  v12 = [v4 mainQueue];
  v13 = swift_allocObject();
  swift_weakInit();
  v21 = partial apply for closure #2 in UnitsSettingsDataProvider.addNotificationCenterObservers();
  v22 = v13;
  v17 = MEMORY[0x277D85DD0];
  v18 = 1107296256;
  v19 = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v20 = &block_descriptor_71_0;
  v14 = _Block_copy(&v17);

  v15 = [v10 addObserverForName:v11 object:0 queue:v12 usingBlock:v14];
  _Block_release(v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20CB5DA80;
  *(v16 + 56) = swift_getObjectType();
  *(v16 + 32) = v9;
  *(v16 + 88) = swift_getObjectType();
  *(v16 + 64) = v15;
  *(v0 + 40) = v16;
}

uint64_t closure #1 in UnitsSettingsDataProvider.addNotificationCenterObservers()(uint64_t a1, uint64_t a2)
{
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v8), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(v8);
LABEL_9:
    v9 = 0u;
    v10 = 0u;
    return _sypSgWOhTm_0(&v9, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, &v9);
  outlined destroy of AnyHashable(v8);

  if (!*(&v10 + 1))
  {
    return _sypSgWOhTm_0(&v9, &_sypSgMd, &_sypSgMR);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v7 = v8[0];
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v9) = v7;
      return static Published.subscript.setter();
    }
  }

  return result;
}

double closure #2 in UnitsSettingsDataProvider.addNotificationCenterObservers()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    UnitsSettingsDataProvider.fetchUserUnits()();
  }

  return result;
}

void type metadata completion function for UnitsSettingsDataProvider(uint64_t a1)
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<UnitSettingsEnergyUnit>, &type metadata for UnitSettingsEnergyUnit);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<UnitSettingsPoolLengthUnit>, &type metadata for UnitSettingsPoolLengthUnit);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<UnitSettingsDistanceUnit>, &type metadata for UnitSettingsDistanceUnit);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<UnitSettingsTrackDistanceUnit>, &type metadata for UnitSettingsTrackDistanceUnit);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Bool>(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance UnitsSettingsDataProvider@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for UnitsSettingsDataProvider(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

double block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void key path getter for UnitsSettingsDataProvider.energyUnit : UnitsSettingsDataProvider(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void key path setter for UnitsSettingsDataProvider.energyUnit : UnitsSettingsDataProvider(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.energyUnit.didset();
}

void key path getter for UnitsSettingsDataProvider.poolLengthUnit : UnitsSettingsDataProvider(_BYTE *a4@<X8>)
{
  key path getter for UnitsSettingsDataProvider.poolLengthUnit : UnitsSettingsDataProvider(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a4 = v5;
}

void key path setter for UnitsSettingsDataProvider.poolLengthUnit : UnitsSettingsDataProvider(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.poolLengthUnit.didset();
}

void key path setter for UnitsSettingsDataProvider.skatingSportsWorkoutsUnit : UnitsSettingsDataProvider(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.cyclingWorkoutsUnit.didset(a5, a6, a7);
}

void key path setter for UnitsSettingsDataProvider.trackWorkoutsUnit : UnitsSettingsDataProvider(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  v2 = v3;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  UnitsSettingsDataProvider.trackWorkoutsUnit.didset(v2);
}

uint64_t key path setter for UnitsSettingsDataProvider.isWheelchairUser : UnitsSettingsDataProvider(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t _sypSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized UnitsSettingsDataProvider.init(formattingManager:healthStore:isWheelchairUser:isAppleMoveTime:)(void *a1, uint64_t a2, int a3, int a4)
{
  v44 = a3;
  v45 = a4;
  v42 = a1;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI025UnitSettingsTrackDistanceE0OGMd, &_s7Combine9PublishedVy9WorkoutUI025UnitSettingsTrackDistanceE0OGMR);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI020UnitSettingsDistanceE0OGMd, &_s7Combine9PublishedVy9WorkoutUI020UnitSettingsDistanceE0OGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI022UnitSettingsPoolLengthE0OGMd, &_s7Combine9PublishedVy9WorkoutUI022UnitSettingsPoolLengthE0OGMR);
  v11 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI018UnitSettingsEnergyE0OGMd, &_s7Combine9PublishedVy9WorkoutUI018UnitSettingsEnergyE0OGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  *(v4 + 40) = MEMORY[0x277D84F90];
  v18 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__energyUnit;
  v47 = 0;
  Published.init(initialValue:)();
  (*(v15 + 32))(v4 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__poolLengthUnit;
  v47 = 0;
  Published.init(initialValue:)();
  (*(v11 + 32))(v4 + v19, v13, v38);
  v20 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__cyclingWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21 = *(v8 + 32);
  v21(v4 + v20, v10, v7);
  v22 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__walkingAndRunningWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v22, v10, v7);
  v23 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__crossCountrySkiingWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v23, v10, v7);
  v24 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__downhillSnowSportsWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v24, v10, v7);
  v25 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__rowingWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v25, v10, v7);
  v26 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__paddleSportsWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v26, v10, v7);
  v27 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__skatingSportsWorkoutsUnit;
  v47 = 0;
  Published.init(initialValue:)();
  v21(v4 + v27, v10, v7);
  v28 = OBJC_IVAR____TtC9WorkoutUI25UnitsSettingsDataProvider__trackWorkoutsUnit;
  v47 = 1;
  v29 = v39;
  Published.init(initialValue:)();
  (*(v40 + 32))(v4 + v28, v29, v41);
  v30 = v42;
  *(v4 + 16) = v42;
  v31 = *MEMORY[0x277CCE4C8];
  v32 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v33 = v30;
  v34 = v31;
  v35 = v43;
  *(v4 + 24) = [v32 initWithCategory:0 domainName:v34 healthStore:v43];
  *(v4 + 32) = [objc_allocWithZone(MEMORY[0x277CCD6A8]) initWithHealthStore_];
  swift_beginAccess();
  v46 = v44;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v46 = v45;
  Published.init(initialValue:)();
  swift_endAccess();
  UnitsSettingsDataProvider.fetchUserUnits()();
  UnitsSettingsDataProvider.addNotificationCenterObservers()();
  [*(v4 + 24) startObservation_];
  return v4;
}

uint64_t specialized UnitsSettingsDataProvider.keyValueDomain(didUpdate:)()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v9 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in UnitsSettingsDataProvider.keyValueDomain(didUpdate:);
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_148_1;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F30C1F0](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t getEnumTagSinglePayload for UnitSettingsTrackDistanceUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnitSettingsTrackDistanceUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitSettingsTrackDistanceUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitSettingsTrackDistanceUnit(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance UnitSettingsTrackDistanceUnit@<X0>(void *result@<X0>, char *a2@<X8>)
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

void protocol witness for Identifiable.id.getter in conformance UnitSettingsTrackDistanceUnit(unint64_t *a1@<X8>)
{
  v2 = "WOTrackWorkoutsUnit";
  v3 = 0xD000000000000028;
  if (*v1)
  {
    v3 = 0xD000000000000029;
  }

  else
  {
    v2 = "ACK_WORKOUTS_METERS_LABEL";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [UnitSettingsTrackDistanceUnit] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UnitSettingsTrackDistanceUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UnitSettingsTrackDistanceUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI025UnitSettingsTrackDistanceC0OGMd, &_sSay9WorkoutUI025UnitSettingsTrackDistanceC0OGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UnitSettingsTrackDistanceUnit] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitSettingsTrackDistanceUnit and conformance UnitSettingsTrackDistanceUnit()
{
  result = lazy protocol witness table cache variable for type UnitSettingsTrackDistanceUnit and conformance UnitSettingsTrackDistanceUnit;
  if (!lazy protocol witness table cache variable for type UnitSettingsTrackDistanceUnit and conformance UnitSettingsTrackDistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitSettingsTrackDistanceUnit and conformance UnitSettingsTrackDistanceUnit);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnitSettingsDistanceUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UnitSettingsDistanceUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UnitSettingsDistanceUnit()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UnitSettingsDistanceUnit(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F30CD90](v2);
  return Hasher._finalize()();
}

void protocol witness for Identifiable.id.getter in conformance UnitSettingsDistanceUnit(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000030;
  }

  else
  {
    v2 = 0xD00000000000002BLL;
  }

  if (*v1)
  {
    v3 = "ACK_WORKOUTS_MILES_LABEL";
  }

  else
  {
    v3 = "KILOMETERS_LABEL";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t lazy protocol witness table accessor for type [UnitSettingsDistanceUnit] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [UnitSettingsDistanceUnit] and conformance [A];
  if (!lazy protocol witness table cache variable for type [UnitSettingsDistanceUnit] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9WorkoutUI020UnitSettingsDistanceC0OGMd, &_sSay9WorkoutUI020UnitSettingsDistanceC0OGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [UnitSettingsDistanceUnit] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnitSettingsDistanceUnit and conformance UnitSettingsDistanceUnit()
{
  result = lazy protocol witness table cache variable for type UnitSettingsDistanceUnit and conformance UnitSettingsDistanceUnit;
  if (!lazy protocol witness table cache variable for type UnitSettingsDistanceUnit and conformance UnitSettingsDistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitSettingsDistanceUnit and conformance UnitSettingsDistanceUnit);
  }

  return result;
}

uint64_t specialized static UnitSettingsDistanceUnit.makeFromFIUIDistanceUnit(_:)(uint64_t a1)
{
  if (a1 <= 3)
  {
    switch(a1)
    {
      case 1:
        v7 = static os_log_type_t.error.getter();
        v8 = *MEMORY[0x277CCC270];
        if (os_log_type_enabled(*MEMORY[0x277CCC270], v7))
        {
          v9 = v8;
          v10 = swift_slowAlloc();
          *v10 = 134217984;
          v6 = 1;
          *(v10 + 4) = 1;
          _os_log_impl(&dword_20C66F000, v9, v7, "Unexpected distance units %lu. Setting distance unit to kilometers", v10, 0xCu);
          MEMORY[0x20F30E080](v10, -1, -1);

          return v6;
        }

        break;
      case 2:
        break;
      case 3:
        return 0;
      default:
LABEL_12:
        v12 = static os_log_type_t.error.getter();
        v13 = *MEMORY[0x277CCC270];
        if (os_log_type_enabled(*MEMORY[0x277CCC270], v12))
        {
          v14 = v13;
          v15 = swift_slowAlloc();
          *v15 = 134217984;
          *(v15 + 4) = a1;
          _os_log_impl(&dword_20C66F000, v14, v12, "Unexpected distance units %lu. Setting distance unit to kilometers", v15, 0xCu);
          MEMORY[0x20F30E080](v15, -1, -1);
        }

        return 1;
    }

    return 1;
  }

  if ((a1 - 4) > 1)
  {
    goto LABEL_12;
  }

  v2 = static os_log_type_t.error.getter();
  v3 = *MEMORY[0x277CCC270];
  if (!os_log_type_enabled(*MEMORY[0x277CCC270], v2))
  {
    return 0;
  }

  v4 = v3;
  v5 = swift_slowAlloc();
  *v5 = 134217984;
  *(v5 + 4) = a1;
  _os_log_impl(&dword_20C66F000, v4, v2, "Unexpected distance units %lu. Setting distance unit to miles", v5, 0xCu);
  MEMORY[0x20F30E080](v5, -1, -1);

  return 0;
}

void UnitsSettingsListView.init(formattingManager:healthStore:isWheelchairUser:isAppleMoveTime:)(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  type metadata accessor for UnitsSettingsDataProvider(0);
  swift_allocObject();
  v10 = specialized UnitsSettingsDataProvider.init(formattingManager:healthStore:isWheelchairUser:isAppleMoveTime:)(a1, a2, a3, a4);

  *a5 = partial apply for implicit closure #1 in UnitsSettingsListView.init(formattingManager:healthStore:isWheelchairUser:isAppleMoveTime:);
  *(a5 + 8) = v10;
  *(a5 + 16) = 0;
}

uint64_t UnitsSettingsListView.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14NavigationViewVyAA4ListVys5NeverOAA05TupleD0Vy07WorkoutB0020UnitsSettingsSectionD0VyAJ04Unitj6EnergyL0OGSg_ALyAJ0lj10PoolLengthL0OGALyAJ0lj8DistanceL0OGAvLyAJ0lj5TrackpL0OGA5VtGGGMd, &_s7SwiftUI14NavigationViewVyAA4ListVys5NeverOAA05TupleD0Vy07WorkoutB0020UnitsSettingsSectionD0VyAJ04Unitj6EnergyL0OGSg_ALyAJ0lj10PoolLengthL0OGALyAJ0lj8DistanceL0OGAvLyAJ0lj5TrackpL0OGA5VtGGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-v3];
  LOBYTE(v3) = *(v0 + 16);
  v13 = *v0;
  v14 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ListVys5NeverOAA9TupleViewVy07WorkoutB0020UnitsSettingsSectionF0VyAH04Uniti6EnergyK0OGSg_AJyAH0ki10PoolLengthK0OGAJyAH0ki8DistanceK0OGAtJyAH0ki5TrackoK0OGA5TtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVy07WorkoutB0020UnitsSettingsSectionF0VyAH04Uniti6EnergyK0OGSg_AJyAH0ki10PoolLengthK0OGAJyAH0ki8DistanceK0OGAtJyAH0ki5TrackoK0OGA5TtGGMR);
  lazy protocol witness table accessor for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVy07WorkoutB0020UnitsSettingsSectionF0VyAH04Uniti6EnergyK0OGSg_AJyAH0ki10PoolLengthK0OGAJyAH0ki8DistanceK0OGAtJyAH0ki5TrackoK0OGA5TtGGMd, &_s7SwiftUI4ListVys5NeverOAA9TupleViewVy07WorkoutB0020UnitsSettingsSectionF0VyAH04Uniti6EnergyK0OGSg_AJyAH0ki10PoolLengthK0OGAJyAH0ki8DistanceK0OGAtJyAH0ki5TrackoK0OGA5TtGGMR, MEMORY[0x277CDE5A0]);
  NavigationView.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = WorkoutUIBundle.super.isa;
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  lazy protocol witness table accessor for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type NavigationView<List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>>> and conformance NavigationView<A>, &_s7SwiftUI14NavigationViewVyAA4ListVys5NeverOAA05TupleD0Vy07WorkoutB0020UnitsSettingsSectionD0VyAJ04Unitj6EnergyL0OGSg_ALyAJ0lj10PoolLengthL0OGALyAJ0lj8DistanceL0OGAvLyAJ0lj5TrackpL0OGA5VtGGGMd, &_s7SwiftUI14NavigationViewVyAA4ListVys5NeverOAA05TupleD0Vy07WorkoutB0020UnitsSettingsSectionD0VyAJ04Unitj6EnergyL0OGSg_ALyAJ0lj10PoolLengthL0OGALyAJ0lj8DistanceL0OGAvLyAJ0lj5TrackpL0OGA5VtGGGMR, MEMORY[0x277CDD978]);
  View.navigationTitle(_:)();
  outlined consume of Text.Storage(v6, v8, v10 & 1);

  return (*(v2 + 8))(v4, v1);
}

uint64_t closure #1 in UnitsSettingsListView.body.getter(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVy07WorkoutB0020UnitsSettingsSectionD0VyAD04Unitg6EnergyI0OGSg_AFyAD0ig10PoolLengthI0OGAFyAD0ig8DistanceI0OGApFyAD0ig5TrackmI0OGA5PtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0020UnitsSettingsSectionD0VyAD04Unitg6EnergyI0OGSg_AFyAD0ig10PoolLengthI0OGAFyAD0ig8DistanceI0OGApFyAD0ig5TrackmI0OGA5PtGMR);
  lazy protocol witness table accessor for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>(&lazy protocol witness table cache variable for type TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVy07WorkoutB0020UnitsSettingsSectionD0VyAD04Unitg6EnergyI0OGSg_AFyAD0ig10PoolLengthI0OGAFyAD0ig8DistanceI0OGApFyAD0ig5TrackmI0OGA5PtGMd, &_s7SwiftUI9TupleViewVy07WorkoutB0020UnitsSettingsSectionD0VyAD04Unitg6EnergyI0OGSg_AFyAD0ig10PoolLengthI0OGAFyAD0ig8DistanceI0OGApFyAD0ig5TrackmI0OGA5PtGMR, MEMORY[0x277CE14C0]);
  return List<>.init(content:)();
}

double closure #1 in closure #1 in UnitsSettingsListView.body.getter@<D0>(uint64_t x8_0@<X8>)
{
  type metadata accessor for UnitsSettingsDataProvider(0);
  lazy protocol witness table accessor for type UnitsSettingsDataProvider and conformance UnitsSettingsDataProvider();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v65);

  if (v65)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v36 = 0;
  }

  else
  {
    v40 = 0x800000020CB9DD00;
    StateObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v38 = v66;
    v39 = v65;
    v37 = 0xD000000000000020;
    v36 = v67;
  }

  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v34 = v66;
  v35 = v65;
  v33 = v67;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v30 = v66;
  v31 = v65;
  v32 = v67;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v65);

  if (v65)
  {
    v4 = 0xD000000000000037;
  }

  else
  {
    v4 = 0xD00000000000002CLL;
  }

  v29 = v4;
  if (v65)
  {
    v5 = "ATING_SPORTS_WORKOUTS_TITLE";
  }

  else
  {
    v5 = "CLING_WORKOUTS_TITLE";
  }

  v28 = v5 | 0x8000000000000000;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v26 = v66;
  v27 = v65;
  v25 = v67;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v23 = v66;
  v24 = v65;
  v22 = v67;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v20 = v66;
  v21 = v65;
  v19 = v67;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v17 = v66;
  v18 = v65;
  v16 = v67;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v14 = v66;
  v15 = v65;
  v13 = v67;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v7 = v65;
  v6 = v66;
  v8 = v67;
  StateObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v60 = v37;
  v61 = v40;
  v62 = v39;
  v63 = v38;
  v64 = v36;
  v58[2] = v35;
  v58[3] = v34;
  v59 = v33;
  v56[2] = v31;
  v56[3] = v30;
  v58[0] = 0xD00000000000001FLL;
  v58[1] = 0x800000020CB9DD30;
  v9 = v65;
  v10 = v66;
  v65 = &v60;
  v66 = v58;
  v56[0] = 0xD000000000000024;
  v56[1] = 0x800000020CB9DD50;
  v11 = v67;
  v57 = v32;
  v54[0] = v29;
  v54[1] = v28;
  v54[2] = v27;
  v54[3] = v26;
  v55 = v25;
  v67 = v56;
  v68 = v54;
  v52[0] = 0xD000000000000022;
  v52[1] = 0x800000020CB9DDB0;
  v52[2] = v24;
  v52[3] = v23;
  v53 = v22;
  v50[0] = 0xD000000000000031;
  v50[1] = 0x800000020CB9DDE0;
  v50[2] = v21;
  v50[3] = v20;
  v51 = v19;
  v69 = v52;
  v70 = v50;
  v48[0] = 0xD000000000000031;
  v48[1] = 0x800000020CB9DE20;
  v48[2] = v18;
  v48[3] = v17;
  v49 = v16;
  v46[0] = 0xD000000000000023;
  v46[1] = 0x800000020CB9DE60;
  v46[2] = v15;
  v46[3] = v14;
  v47 = v13;
  v71 = v48;
  v72 = v46;
  v44[0] = 0xD00000000000002ALL;
  v44[1] = 0x800000020CB9DE90;
  v44[2] = v7;
  v44[3] = v6;
  v45 = v8;
  v42[0] = 0xD00000000000002BLL;
  v42[1] = 0x800000020CB9DEC0;
  v42[2] = v9;
  v42[3] = v10;
  v43 = v11;
  v73 = v44;
  v74 = v42;
  _s7SwiftUI11ViewBuilderV10buildBlockyAA05TupleC0VyxxQp_tGxxQpRvzAA0C0RzlFZ07WorkoutB0020UnitsSettingsSectionC0VyAI04Unitj6EnergyL0OGSg_AKyAI0lj10PoolLengthL0OGAKyAI0lj8DistanceL0OGAuKyAI0lj5TrackpL0OGA5UQP_Tt1g5(&v65, x8_0);

  return outlined consume of UnitsSettingsSectionView<UnitSettingsEnergyUnit>?(v60, v61, v62, v63);
}

uint64_t getEnumTagSinglePayload for UnitsSettingsListView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for UnitsSettingsListView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type List<Never, TupleView<(UnitsSettingsSectionView<UnitSettingsEnergyUnit>?, UnitsSettingsSectionView<UnitSettingsPoolLengthUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsTrackDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>, UnitsSettingsSectionView<UnitSettingsDistanceUnit>)>> and conformance List<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type UnitsSettingsDataProvider and conformance UnitsSettingsDataProvider()
{
  result = lazy protocol witness table cache variable for type UnitsSettingsDataProvider and conformance UnitsSettingsDataProvider;
  if (!lazy protocol witness table cache variable for type UnitsSettingsDataProvider and conformance UnitsSettingsDataProvider)
  {
    type metadata accessor for UnitsSettingsDataProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitsSettingsDataProvider and conformance UnitsSettingsDataProvider);
  }

  return result;
}

double outlined consume of UnitsSettingsSectionView<UnitSettingsEnergyUnit>?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata completion function for UnitsSettingsSectionView(uint64_t a1)
{
  result = type metadata accessor for Binding();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnitsSettingsSectionView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(v4 + 80);
  if (v5 >= 0)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  v10 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_29;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) - (((-17 - v7) | v7) + ((-17 - v7) | v9)) - 2;
  v12 = 8 * v11;
  if (v11 <= 3)
  {
    v15 = ((v10 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v15))
    {
      v13 = *(a1 + v11);
      if (!v13)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 > 0xFF)
    {
      v13 = *(a1 + v11);
      if (!*(a1 + v11))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v15 < 2)
    {
LABEL_29:
      if (v8 != 0x7FFFFFFF)
      {
        return (*(v4 + 48))((v7 + ((((a1 + v9 + 16) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
      }

      v17 = *(a1 + 1);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  v13 = *(a1 + v11);
  if (!*(a1 + v11))
  {
    goto LABEL_29;
  }

LABEL_18:
  v16 = (v13 - 1) << v12;
  if (v11 > 3)
  {
    v16 = 0;
  }

  if (v11)
  {
    if (v11 > 3)
    {
      LODWORD(v11) = 4;
    }

    if (v11 > 2)
    {
      if (v11 == 3)
      {
        LODWORD(v11) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v11) = *a1;
      }
    }

    else if (v11 == 1)
    {
      LODWORD(v11) = *a1;
    }

    else
    {
      LODWORD(v11) = *a1;
    }
  }

  return v8 + (v11 | v16) + 1;
}

void storeEnumTagSinglePayload for UnitsSettingsSectionView(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(*(a4 + 16) - 8) + 64) + ((v10 + 16) & ~(v10 | 7));
  v12 = a3 >= v9;
  v13 = a3 - v9;
  if (v13 != 0 && v12)
  {
    if (v11 <= 3)
    {
      v17 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v14 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v9 < a2)
  {
    v15 = ~v9 + a2;
    if (v11 < 4)
    {
      v16 = (v15 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v15 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v19;
            if (v14 > 1)
            {
LABEL_49:
              if (v14 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return;
            }
          }

          else
          {
            *a1 = v15;
            if (v14 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v19;
        a1[2] = BYTE2(v19);
      }

      if (v14 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v15;
      v16 = 1;
      if (v14 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v14)
    {
      a1[v11] = v16;
    }

    return;
  }

  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v11] = 0;
  }

  else if (v14)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = a2 - 1;
    }
  }

  else
  {
    v20 = *(v6 + 56);
    v21 = (v10 + (((&a1[(v10 | 7) + 16] & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10;

    v20(v21);
  }
}

uint64_t UnitsSettingsSectionView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v24 = a1[3];
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a1[5];
  v23 = a1[4];
  v22 = type metadata accessor for UnitsSettingsItemView(255, v4, v23, v6);
  v7 = a1[6];
  v36 = AssociatedTypeWitness;
  v37 = MEMORY[0x277D837D0];
  v38 = v22;
  v39 = v7;
  v40 = MEMORY[0x277D837E0];
  type metadata accessor for ForEach();
  v8 = type metadata accessor for Section();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v36 = UnitsSettingsSectionView.header.getter();
  v37 = v15;
  LOBYTE(v38) = v16 & 1;
  v39 = v17;
  v26 = v4;
  v27 = v24;
  v28 = v23;
  v29 = v6;
  v30 = v7;
  v31 = v2;
  WitnessTable = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = MEMORY[0x277CE0BC8];
  Section<>.init(header:content:)();
  v32 = v19;
  v33 = v18;
  v34 = MEMORY[0x277CE1410];
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v20 = *(v9 + 8);
  v20(v11, v8);
  static ViewBuilder.buildBlock<A>(_:)();
  return (v20)(v14, v8);
}

uint64_t UnitsSettingsSectionView.header.getter()
{

  LocalizedStringKey.init(stringLiteral:)();
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  return Text.init(_:tableName:bundle:comment:)();
}

uint64_t closure #1 in UnitsSettingsSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a1;
  v40 = a7;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v32 = a5;
  v33 = a4;
  v46 = a6;
  v31 = a6;
  v38 = type metadata accessor for UnitsSettingsSectionView(0, &v42);
  v12 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v35 = v30 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v30[1] = v30 - v15;
  v34 = type metadata accessor for UnitsSettingsItemView(255, a2, a4, a5);
  v42 = AssociatedTypeWitness;
  v43 = MEMORY[0x277D837D0];
  v44 = v34;
  v45 = a6;
  v46 = MEMORY[0x277D837E0];
  v16 = type metadata accessor for ForEach();
  v37 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v30 - v20;
  dispatch thunk of static CaseIterable.allCases.getter();
  v22 = v35;
  v23 = v38;
  (*(v12 + 16))(v35, v39, v38);
  v24 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = a2;
  *(v25 + 3) = a3;
  v26 = v32;
  *(v25 + 4) = v33;
  *(v25 + 5) = v26;
  *(v25 + 6) = v31;
  (*(v12 + 32))(&v25[v24], v22, v23);
  WitnessTable = swift_getWitnessTable();
  ForEach<>.init(_:content:)();
  v41 = WitnessTable;
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v37 + 8);
  v28(v18, v16);
  static ViewBuilder.buildBlock<A>(_:)();
  return (v28)(v21, v16);
}

uint64_t closure #1 in closure #1 in UnitsSettingsSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a4;
  v30 = a7;
  v31 = a2;
  v32 = a8;
  v28 = a1;
  v11 = type metadata accessor for Binding();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UnitsSettingsItemView(0, a3, a5, a6);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v28 - v24;
  (*(v14 + 16))(v17, v28, a3, v23);
  v33[0] = a3;
  v33[1] = v29;
  v33[2] = a5;
  v33[3] = a6;
  v33[4] = v30;
  type metadata accessor for UnitsSettingsSectionView(0, v33);
  type metadata accessor for Binding();
  Binding.projectedValue.getter();
  UnitsSettingsItemView.init(item:dataProviderBinding:)(v17, v13, a3, a5, a6, v21);
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)();
  v26 = *(v19 + 8);
  v26(v21, v18);
  static ViewBuilder.buildBlock<A>(_:)();
  return (v26)(v25, v18);
}

uint64_t partial apply for closure #1 in closure #1 in UnitsSettingsSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v13[0] = v2[2];
  v5 = v13[0];
  v13[1] = v6;
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v9;
  v10 = *(type metadata accessor for UnitsSettingsSectionView(0, v13) - 8);
  v11 = v2 + ((*(v10 + 80) + 56) & ~*(v10 + 80));

  return closure #1 in closure #1 in UnitsSettingsSectionView.body.getter(a1, v11, v5, v6, v7, v8, v9, a2);
}

char *SeymourAvailabilityProvider.__allocating_init(dependenciesWrapper:)(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for SeymourAvailabilityProvider());

  v6 = SeymourAvailabilityProvider.init(dependencies:)(v5);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

uint64_t SeymourAvailabilityProvider.availability.getter()
{
  v1 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  swift_beginAccess();
  return *(v0 + v1);
}

id SeymourAvailabilityProvider.observers.getter()
{
  v1 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void key path setter for SeymourAvailabilityProvider.observers : SeymourAvailabilityProvider(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

char *SeymourAvailabilityProvider.init(dependenciesWrapper:)(char *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for SeymourAvailabilityProvider());

  v4 = SeymourAvailabilityProvider.init(dependencies:)(v3);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

char *SeymourAvailabilityProvider.init(dependencies:)(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  *&v1[OBJC_IVAR___NLSeymourAvailabilityProvider_availability] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient16EventHubProtocol_pMd, &_s13SeymourClient16EventHubProtocol_pMR);
  Dependencies.resolve<A>(failureHandler:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SeymourClient019ContentAvailabilityB8Protocol_pMd, &_s13SeymourClient019ContentAvailabilityB8Protocol_pMR);
  Dependencies.resolve<A>(failureHandler:)();
  outlined init with take of ContentAvailabilityClientProtocol(v12, &v1[OBJC_IVAR___NLSeymourAvailabilityProvider_contentAvailabilityClient]);
  type metadata accessor for SubscriptionToken();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v1[OBJC_IVAR___NLSeymourAvailabilityProvider_eventHubToken] = SubscriptionToken.init(eventHub:)();
  v4 = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR___NLSeymourAvailabilityProvider_observers] = v4;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = MEMORY[0x20F30BAD0](0xD000000000000016, 0x800000020CB9DF30);
  v7 = [v5 BOOLForKey_];

  swift_beginAccess();
  *&v2[v3] = v7 ^ 1;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for SeymourAvailabilityProvider();
  v8 = objc_msgSendSuper2(&v11, sel_init);
  swift_getObjectType();
  type metadata accessor for ContentAvailabilityUpdated();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = v8;

  dispatch thunk of EventHubProtocol.subscribe<A>(_:subscriptionToken:handler:)();

  __swift_destroy_boxed_opaque_existential_1(v12);
  [v9 update];

  swift_unknownObjectRelease();
  return v9;
}

uint64_t outlined init with take of ContentAvailabilityClientProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *closure #1 in SeymourAvailabilityProvider.init(dependencies:)(double a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ContentAvailability();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    ContentAvailabilityUpdated.availability.getter();
    SeymourAvailabilityProvider.handleContentAvailabilityDidChange(_:)(v9);

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void SeymourAvailabilityProvider.handleContentAvailabilityDidChange(_:)(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for ContentAvailability();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(v4 + 104))(v7, *MEMORY[0x277D51A28], v3, v5);
  lazy protocol witness table accessor for type ContentAvailability and conformance ContentAvailability(v8);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v15[1] == v15[4] && v15[2] == v15[5])
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  (*(v4 + 8))(v7, v3);

  v10 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
  swift_beginAccess();
  v11 = *&v2[v10];
  v12 = (v9 & 1) == 0;
  *&v2[v10] = v12;
  if (v11 != v12)
  {
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = MEMORY[0x20F30BAD0](0xD000000000000016, 0x800000020CB9DF30);
    [v13 setBool:v9 & 1 forKey:v14];

    [v2 notifyObservers];
  }
}

id SeymourAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SeymourAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeymourAvailabilityProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SeymourAvailabilityProvider.update()()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyAA19ContentAvailabilityOGMd, _s11SeymourCore7PromiseVyAA19ContentAvailabilityOGMR);
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v33);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore7PromiseVyytGMd, &_s11SeymourCore7PromiseVyytGMR);
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v32 = &v31 - v10;
  MEMORY[0x28223BE20](v11);
  v36 = &v31 - v12;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___NLSeymourAvailabilityProvider_contentAvailabilityClient), *(v0 + OBJC_IVAR___NLSeymourAvailabilityProvider_contentAvailabilityClient + 24));
  dispatch thunk of ContentAvailabilityClientProtocol.queryContentAvailability()();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = partial apply for closure #1 in SeymourAvailabilityProvider.update();
  *(v14 + 24) = v13;
  v15 = v33;
  (*(v1 + 16))(v3, v6, v33);
  v16 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v17 = swift_allocObject();
  (*(v1 + 32))(v17 + v16, v3, v15);
  v18 = (v17 + ((v2 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = partial apply for specialized closure #1 in Promise.then<A>(_:);
  v18[1] = v14;
  v19 = v32;
  Promise.init(asyncOperation:)();
  (*(v1 + 8))(v6, v15);
  v20 = swift_allocObject();
  *(v20 + 16) = closure #2 in SeymourAvailabilityProvider.update();
  *(v20 + 24) = 0;
  v22 = v34;
  v21 = v35;
  v23 = v19;
  (*(v7 + 16))(v34, v19, v35);
  v24 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v25 = swift_allocObject();
  (*(v7 + 32))(v25 + v24, v22, v21);
  v26 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v26 = _s11SeymourCore7PromiseV5catchyACyxGxs5Error_pYbKcFAEsAF_pYbcfU_yt_Tg5TA_1;
  v26[1] = v20;
  v27 = v36;
  Promise.init(asyncOperation:)();
  v28 = *(v7 + 8);
  v28(v23, v21);
  v29 = Promise.operation.getter();
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v29(_s11SeymourCore7PromiseV7resolveyyys6ResultOyxs5Error_pGYbcSgFyAHYbcfU_yt_TG5TA_4, v30);

  v28(v27, v21);
}

void closure #1 in SeymourAvailabilityProvider.update()(double a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for ContentAvailability();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*(v4 + 104))(v6, *MEMORY[0x277D51A28], v3);
    lazy protocol witness table accessor for type ContentAvailability and conformance ContentAvailability(v9);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v16[0] == v16[3] && v16[1] == v16[4])
    {
      v10 = 1;
    }

    else
    {
      v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(v4 + 8))(v6, v3);

    v11 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
    swift_beginAccess();
    v12 = *&v8[v11];
    v13 = (v10 & 1) == 0;
    *&v8[v11] = v13;
    if (v12 != v13)
    {
      v14 = [objc_opt_self() standardUserDefaults];
      v15 = MEMORY[0x20F30BAD0](0xD000000000000016, 0x800000020CB9DF30);
      [v14 setBool:v10 & 1 forKey:v15];

      [v8 notifyObservers];
    }
  }
}

uint64_t closure #2 in SeymourAvailabilityProvider.update()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA70;
  swift_getErrorValue();
  v2 = Error.localizedDescription.getter();
  v4 = v3;
  *(inited + 56) = MEMORY[0x277D837D0];
  *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 32) = v2;
  *(inited + 40) = v4;
  v5 = static os_log_type_t.error.getter();
  specialized static Log.print(_:type:_:)("Seymour Availability Provider failed with error: %@", 51, 2, v5, inited);
  swift_setDeallocating();
  return __swift_destroy_boxed_opaque_existential_1((inited + 32));
}

id SeymourAvailabilityProvider.addObserver(_:)(uint64_t a1, SEL *a2)
{
  v5 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  return [*(v2 + v5) *a2];
}

id @objc SeymourAvailabilityProvider.addObserver(_:)(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  return [*(a1 + v7) *a4];
}

Swift::Void __swiftcall SeymourAvailabilityProvider.notifyObservers()()
{
  v1 = OBJC_IVAR___NLSeymourAvailabilityProvider_observers;
  swift_beginAccess();
  v2 = [*(v0 + v1) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI27SeymourAvailabilityObserver_pMd, _s9WorkoutUI27SeymourAvailabilityObserver_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_10:

    return;
  }

  v4 = __CocoaSet.count.getter();
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = OBJC_IVAR___NLSeymourAvailabilityProvider_availability;
    swift_beginAccess();
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F30C990](i, v3);
      }

      else
      {
        v7 = *(v3 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v7 availabilityDidUpdateWith_];
      swift_unknownObjectRelease();
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t objectdestroy_6Tm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ContentAvailability and conformance ContentAvailability(double a1)
{
  result = lazy protocol witness table cache variable for type ContentAvailability and conformance ContentAvailability;
  if (!lazy protocol witness table cache variable for type ContentAvailability and conformance ContentAvailability)
  {
    type metadata accessor for ContentAvailability();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentAvailability and conformance ContentAvailability);
  }

  return result;
}

uint64_t static WorkoutConfigurationRow.displayImage(workoutConfiguration:shouldFlipImage:useActivityTypeImageForDisplayImage:)@<X0>(int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v26 = a2;
  v27 = a4;
  v28 = type metadata accessor for AccessibilityTraits();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v8);
  v10 = &v25[-v9];
  static WorkoutConfigurationRow.displayImageContent(workoutConfiguration:useActivityTypeImageForDisplayImage:)(v4, v29);
  v33 = v29[2];
  *v34 = v30[0];
  *&v34[9] = *(v30 + 9);
  v31 = v29[0];
  v32 = v29[1];
  v11 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v13 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMR) + 36)];
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v15 = *MEMORY[0x277CE1048];
  v16 = type metadata accessor for Image.Scale();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = swift_getKeyPath();
  v17 = *&v34[16];
  *(v10 + 3) = *v34;
  *(v10 + 4) = v17;
  v18 = v33;
  *(v10 + 1) = v32;
  *(v10 + 2) = v18;
  *v10 = v31;
  *(v10 + 10) = KeyPath;
  *(v10 + 11) = v11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMR);
  v10[*(v19 + 36)] = v26;
  WorkoutConfiguration.displayColor.getter();
  v20 = Color.init(uiColor:)();
  v21 = swift_getKeyPath();
  v22 = &v10[*(v8 + 36)];
  *v22 = v21;
  v22[1] = v20;
  static AccessibilityTraits.isSelected.getter();
  v23 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  MEMORY[0x20F30AA50](v7, v8, v23);
  (*(v5 + 8))(v7, v28);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v10, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMR);
}

uint64_t WorkoutConfigurationRow.sizeCategory.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMR);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for WorkoutConfigurationRow(0);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v1 + *(v10 + 44), v9, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ContentSizeCategory();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t WorkoutConfigurationRow.workoutStartState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  if (dispatch thunk of WorkoutConfiguration.externalProvider.getter() && (, dispatch thunk of WorkoutConfiguration.lastCompletedDate.getter(), v7 = type metadata accessor for Date(), v8 = (*(*(v7 - 8) + 48))(v6, 1, v7), outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR), v8 != 1))
  {
    v15 = *MEMORY[0x277D7E0C0];
    started = type metadata accessor for StartButtonState();
    v11 = *(*(started - 8) + 104);
    v14 = a1;
    v13 = v15;
  }

  else
  {
    v9 = *(v2 + *(type metadata accessor for WorkoutConfigurationRow(0) + 48));
    started = type metadata accessor for StartButtonState();
    v11 = *(*(started - 8) + 104);
    if (v9 == 1)
    {
      v12 = MEMORY[0x277D7E0A8];
    }

    else
    {
      v12 = MEMORY[0x277D7E0B0];
    }

    v13 = *v12;
    v14 = a1;
  }

  return v11(v14, v13, started);
}

uint64_t WorkoutConfigurationRow.init(workoutConfiguration:activityMoveMode:formattingManager:healthStore:supportsStart:useActivityTypeImageForDisplayImage:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  type metadata accessor for ConfigurationNavigationModel(0);
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
  *a7 = EnvironmentObject.init()();
  *(a7 + 8) = v13;
  type metadata accessor for WorkoutConfigurationDataSource();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
  *(a7 + 16) = EnvironmentObject.init()();
  *(a7 + 24) = v14;
  State.init(wrappedValue:)();
  *(a7 + 72) = v19;
  *(a7 + 80) = v20;
  v15 = type metadata accessor for WorkoutConfigurationRow(0);
  v16 = v15[11];
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMR);
  swift_storeEnumTagMultiPayload();
  *(a7 + v15[13]) = 0x3FE0000000000000;
  type metadata accessor for WorkoutConfiguration();
  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA48]);
  result = ObservedObject.init(wrappedValue:)();
  *(a7 + 32) = result;
  *(a7 + 40) = v18;
  *(a7 + 48) = a2;
  *(a7 + 56) = a3;
  *(a7 + 64) = a4;
  *(a7 + v15[12]) = a5;
  *(a7 + v15[14]) = a6;
  return result;
}

void static WorkoutConfigurationRow.displayImageContent(workoutConfiguration:useActivityTypeImageForDisplayImage:)(char a2@<W1>, _OWORD *a3@<X8>)
{
  v5 = type metadata accessor for Image.ResizingMode();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {
    type metadata accessor for MultiSportWorkoutConfiguration();
    if (swift_dynamicCastClass())
    {
      v13 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v14 = FIUIStaticScalableWorkoutIconImageWithPadding();

      if (!v14)
      {
        __break(1u);
        goto LABEL_14;
      }

      v15 = [v14 imageWithRenderingMode_];

      v16 = Image.init(uiImage:)();
    }

    else
    {
      WorkoutConfiguration.displaySymbolName.getter();
      v16 = Image.init(_internalSystemName:)();
    }

    *&v25 = v16;
    BYTE8(v25) = 0;
    goto LABEL_11;
  }

  v10 = v7;
  v11 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v12 = [v11 symbolName];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    *&v25 = Image.init(_internalSystemName:)();
    BYTE8(v25) = 1;
LABEL_11:

    _ConditionalContent<>.init(storage:)();
    LOBYTE(v28) = BYTE8(v31);
    v27 = 0;
    v34[24] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v33 = v26[1];
    *v34 = v26[2];
    *&v34[9] = *(&v26[2] + 9);
    v31 = v25;
    v32 = v26[0];
    goto LABEL_12;
  }

  v17 = dispatch thunk of WorkoutConfiguration.activityType.getter();
  v18 = FIUIStaticScalableWorkoutIconImageWithPadding();

  if (v18)
  {
    v19 = [v18 imageWithRenderingMode_];

    Image.init(uiImage:)();
    FIUISizeForIconSize();
    (*(v6 + 104))(v9, *MEMORY[0x277CE0FE0], v10);
    v20 = Image.resizable(capInsets:resizingMode:)();
    (*(v6 + 8))(v9, v10);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();

    *&v24[38] = v30;
    *&v24[22] = v29;
    *&v24[6] = v28;
    *(v26 + 2) = *v24;
    v27 = 1;
    v23 = 1;
    v25 = v20;
    LOWORD(v26[0]) = 1;
    *(&v26[1] + 2) = *&v24[16];
    *(&v26[2] + 2) = *&v24[32];
    *&v26[3] = *(&v30 + 1);
    BYTE8(v26[3]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAEGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA18_AspectRatioLayoutVGAA06_FrameH0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<Image, Image> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
LABEL_12:
    v21 = *v34;
    a3[2] = v33;
    a3[3] = v21;
    *(a3 + 57) = *&v34[9];
    v22 = v32;
    *a3 = v31;
    a3[1] = v22;
    return;
  }

LABEL_14:
  __break(1u);
}

double WorkoutConfigurationRow.editButtonLabel()@<D0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  if (static Platform.current.getter())
  {
    Image.init(systemName:)();
    static SymbolRenderingMode.hierarchical.getter();
    v8 = type metadata accessor for SymbolRenderingMode();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
    v9 = Image.symbolRenderingMode(_:)();

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v7, &_s7SwiftUI19SymbolRenderingModeVSgMd, &_s7SwiftUI19SymbolRenderingModeVSgMR);
    if (one-time initialization token for ellipsisSize != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Font.Design();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    v11 = static Font.system(size:weight:design:)();
    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v4, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
    KeyPath = swift_getKeyPath();
    WorkoutConfiguration.displayColor.getter();
    v13 = Color.init(uiColor:)();
    v14 = swift_getKeyPath();
    v28 = v9;
    v29 = KeyPath;
    v30 = v11;
    v31 = v14;
    v32 = v13;
    v33 = 256;
    v34 = 0;
  }

  else
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v40._object = 0xE000000000000000;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v16.value._object = 0xEB00000000656C62;
    v17._countAndFlagsBits = 0xD00000000000001DLL;
    v17._object = 0x800000020CB9B6B0;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v40);

    v35 = v19;
    lazy protocol witness table accessor for type String and conformance String();
    v28 = Text.init<A>(_:)();
    v29 = v20;
    v30 = v21 & 1;
    v31 = v22;
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAGyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  result = *&v35._countAndFlagsBits;
  v24 = v36;
  v25 = v37;
  v26 = v38;
  v27 = v39;
  *a1 = v35;
  *(a1 + 16) = v24;
  *(a1 + 32) = v25;
  *(a1 + 40) = v26;
  *(a1 + 42) = v27;
  return result;
}

double closure #2 in WorkoutConfigurationRow.editButton()@<D0>(uint64_t a1@<X8>)
{
  WorkoutConfigurationRow.editButtonLabel()(v7);
  v2 = v8;
  v3 = v9;
  v4 = v10;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  *(a1 + 42) = v4;
  return result;
}

void closure #1 in WorkoutConfigurationRow.displayDetail()(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
  MEMORY[0x28223BE20](v140);
  v5 = &v136 - v4;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v7 = &v136 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v141 = &v136 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v150 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v136 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160.super.isa = [objc_opt_self() standardUserDefaults];
  isa = v160.super.isa;
  v20 = occurrences_debug_enabled(userDefaults:)(v160);

  v148 = v14;
  v143 = v5;
  v142 = v7;
  if (!v20)
  {
    v27 = a1[5];
    v151 = a1[7];
    v28 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
    v152 = v27;
    if (v28)
    {

      v29 = dispatch thunk of WorkoutConfiguration.activityType.getter();
      v30 = [v29 localizedName];

      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      type metadata accessor for GoalWorkoutConfiguration();
      if (!swift_dynamicCastClass())
      {
        v62 = WorkoutConfiguration.displayName(formattingManager:)();
        v63 = v135;
        goto LABEL_14;
      }

      v30 = v27;
      v60 = GoalWorkoutConfiguration.goal.getter();
      v61 = [v60 goalTypeIdentifier];

      _HKWorkoutGoalType.displayNameShort(formattingManager:)(v151, v61);
    }

    v62 = v31;
    v63 = v32;

LABEL_14:
    *&v157 = v62;
    *(&v157 + 1) = v63;
    lazy protocol witness table accessor for type String and conformance String();
    v64 = Text.init<A>(_:)();
    v66 = v65;
    v68 = v67;
    static Font.body.getter();
    v69 = Text.font(_:)();
    v71 = v70;
    v73 = v72;

    outlined consume of Text.Storage(v64, v66, v68 & 1);

    *&v157 = static Color.white.getter();
    v74 = Text.foregroundStyle<A>(_:)();
    v76 = v75;
    v78 = v77;
    outlined consume of Text.Storage(v69, v71, v73 & 1);

    static Font.Weight.bold.getter();
    v79 = Text.fontWeight(_:)();
    v81 = v80;
    LOBYTE(v71) = v82;
    v84 = v83;
    outlined consume of Text.Storage(v74, v76, v78 & 1);

    *&v153 = v79;
    *(&v153 + 1) = v81;
    v154 = v71 & 1;
    v155 = v84;
    v156 = 1;
    _ConditionalContent<>.init(storage:)();
    v57 = v158;
    v58 = v157;
    v59 = v159;
    v39 = v152;
    goto LABEL_15;
  }

  v21 = a1[5];
  v151 = a1[7];
  v22 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();
  v152 = v21;
  if (v22)
  {

    v23 = dispatch thunk of WorkoutConfiguration.activityType.getter();
    v24 = [v23 localizedName];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    type metadata accessor for GoalWorkoutConfiguration();
    if (!swift_dynamicCastClass())
    {
      v133 = WorkoutConfiguration.displayName(formattingManager:)();
      v36 = v134;
      *&v157 = v133;
      goto LABEL_9;
    }

    v24 = v21;
    v33 = GoalWorkoutConfiguration.goal.getter();
    v34 = [v33 goalTypeIdentifier];

    _HKWorkoutGoalType.displayNameShort(formattingManager:)(v151, v34);
  }

  v35 = v25;
  v36 = v26;

  *&v157 = v35;
LABEL_9:
  *(&v157 + 1) = v36;
  MEMORY[0x20F30BC00](10272, 0xE200000000000000);
  v37 = a1[2];
  if (!v37)
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
    EnvironmentObject.error()();
    __break(1u);
    return;
  }

  v38 = v37;
  v39 = v152;
  v40 = WorkoutConfigurationDataSource.displayOccurrence(for:)();
  v42 = v41;

  MEMORY[0x20F30BC00](v40, v42);

  MEMORY[0x20F30BC00](32, 0xE100000000000000);
  dispatch thunk of WorkoutConfiguration.uuid.getter();
  v43 = UUID.uuidString.getter();
  v45 = v44;
  v46.n128_f64[0] = (*(v16 + 8))(v18, v15);
  v47 = specialized Collection.prefix(_:)(4, v43, v45, v46);
  v49 = v48;
  v51 = v50;
  v53 = v52;

  v54 = MEMORY[0x20F30BBA0](v47, v49, v51, v53);
  v56 = v55;

  MEMORY[0x20F30BC00](v54, v56);

  MEMORY[0x20F30BC00](41, 0xE100000000000000);
  v153 = v157;
  v154 = 0;
  v155 = MEMORY[0x277D84F90];
  v156 = 0;
  _ConditionalContent<>.init(storage:)();
  v57 = v158;
  v58 = v157;
  v59 = v159;
LABEL_15:
  v85 = v58;
  v144 = v58;
  v86 = *(&v58 + 1);
  v87 = v57;
  v145 = v57;
  v146 = *(&v57 + 1);
  outlined copy of _ConditionalContent<Text, Text>.Storage(v58, *(&v58 + 1), v57, *(&v57 + 1));
  v88 = WorkoutConfiguration.displayDetail(_:)();
  if (v89)
  {
    v138 = v86;
    v139 = v85;
    v151 = a2;
    *&v157 = v88;
    *(&v157 + 1) = v89;
    lazy protocol witness table accessor for type String and conformance String();
    v90 = Text.init<A>(_:)();
    v92 = v91;
    v94 = v93;
    type metadata accessor for IntervalWorkoutConfiguration();
    v95 = swift_dynamicCastClass();
    v152 = v39;
    v137 = v87;
    if (v95 || (type metadata accessor for MultiSportWorkoutConfiguration(), swift_dynamicCastClass()) || (type metadata accessor for GoalWorkoutConfiguration(), swift_dynamicCastClass()) && (v130 = v39, v131 = GoalWorkoutConfiguration.goal.getter(), v132 = [v131 goalTypeIdentifier], v131, v130, !v132))
    {
      static Font.body.getter();
    }

    else
    {
      static Font.body.getter();
      Font.lowercaseSmallCaps()();
    }

    v96 = Text.font(_:)();
    v87 = v97;
    v99 = v98;

    outlined consume of Text.Storage(v90, v92, v94 & 1);

    LODWORD(v157) = static HierarchicalShapeStyle.primary.getter();
    v100 = Text.foregroundStyle<A>(_:)();
    v102 = v101;
    v104 = v103;
    outlined consume of Text.Storage(v96, v87, v99 & 1);

    static Font.Weight.regular.getter();
    v105 = Text.fontWeight(_:)();
    v107 = v106;
    LOBYTE(v87) = v108;
    v110 = v109;
    outlined consume of Text.Storage(v100, v102, v104 & 1);

    v111 = v143;
    v112 = &v143[*(v140 + 36)];
    v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
    v114 = *MEMORY[0x277CE1050];
    v115 = type metadata accessor for Image.Scale();
    (*(*(v115 - 8) + 104))(v112 + v113, v114, v115);
    *v112 = swift_getKeyPath();
    *v111 = v105;
    *(v111 + 8) = v107;
    *(v111 + 16) = v87 & 1;
    *(v111 + 24) = v110;
    WorkoutConfiguration.displayColor.getter();
    v116 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v118 = v142;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v111, v142, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGMR);
    v119 = v149;
    v120 = (v118 + *(v149 + 36));
    *v120 = KeyPath;
    v120[1] = v116;
    v121 = v118;
    v122 = v141;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v121, v141, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
    v123 = v122;
    v124 = v148;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v123, v148, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGMR);
    v125 = 0;
    a2 = v151;
    v85 = v139;
    v86 = v138;
    LOBYTE(v87) = v137;
  }

  else
  {
    v125 = 1;
    v124 = v148;
    v119 = v149;
  }

  (*(v147 + 56))(v124, v125, 1, v119);
  v126 = v150;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v124, v150, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMR);
  v127 = v145;
  *a2 = v144;
  a2[1] = v127;
  *(a2 + 32) = v59;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEG_AA08ModifiedD0VyAHyAeA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAJyAA5ColorVSgGGSgtMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAEG_AA08ModifiedD0VyAHyAeA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAJyAA5ColorVSgGGSgtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v126, a2 + *(v128 + 48), &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMR);
  v129 = v146;
  outlined copy of _ConditionalContent<Text, Text>.Storage(v85, v86, v87, v146);
  outlined consume of _ConditionalContent<Text, Text>.Storage(v85, v86, v87, v129);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v124, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v126, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAGyAA5ColorVSgGGSgMR);
  outlined consume of _ConditionalContent<Text, Text>.Storage(v85, v86, v87, v129);
}

uint64_t WorkoutConfigurationRow.body.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMR);
  MEMORY[0x28223BE20](v32);
  v2 = &v30 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAA08ModifiedD0VyAMyAMyAMyAMyACyACyAA5ImageVAOGAMyAMyAoA18_AspectRatioLayoutVGAA06_FrameN0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VG_AA6SpacerV07WorkoutB0011StartButtonH0VtGG_AGyAIyACyAA4TextVA26_G_AMyAMyA26_A5_GA13_GSgtGGtGGAKyAIyAMyA17_AUG_A32_A19_A22_tGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA6HStackVyAIyAA08ModifiedD0VyAMyAMyAMyAMyACyACyAA5ImageVAOGAMyAMyAoA18_AspectRatioLayoutVGAA06_FrameN0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VG_AA6SpacerV07WorkoutB0011StartButtonH0VtGG_AGyAIyACyAA4TextVA26_G_AMyAMyA26_A5_GA13_GSgtGGtGGAKyAIyAMyA17_AUG_A32_A19_A22_tGG_GMR);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - v4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMR);
  MEMORY[0x28223BE20](v31);
  v7 = &v30 - v6;
  v8 = type metadata accessor for ContentSizeCategory();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA08ModifiedD0VyAKyAKyAKyAKyACyACyAA5ImageVAMGAKyAKyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonG0VtGG_AEyAGyACyAA4TextVA24_G_AKyAKyA24_A3_GA11_GSgtGGtGGAIyAGyAKyA15_ASG_A30_A17_A20_tGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA08ModifiedD0VyAKyAKyAKyAKyACyACyAA5ImageVAMGAKyAKyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonG0VtGG_AEyAGyACyAA4TextVA24_G_AKyAKyA24_A3_GA11_GSgtGGtGGAIyAGyAKyA15_ASG_A30_A17_A20_tGGGMR);
  MEMORY[0x28223BE20](v35);
  v13 = &v30 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA0H0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaJRd__lFQOyAA6HStackVyAIyAA08ModifiedD0VyARyARyARyARyACyACyAA5ImageVATGARyARyAtA18_AspectRatioLayoutVGAA06_FrameR0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA2_yAT5ScaleOGGAA17_FlipForRTLEffectVGA2_yAA5ColorVSgGGAA023AccessibilityAttachmentW0VG_AA6SpacerVARyARyAA14NavigationLinkVyAA05EmptyH0VARyARyAA5GroupVyACyACy07WorkoutB0024GoalWorkoutConfigurationH0VA31_028IntervalWorkoutConfigurationH0VGACyA31_025PacerWorkoutConfigurationH0VA31_024RaceWorkoutConfigurationH0VGGSgGA2_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA2_yA31_28ConfigurationNavigationModelCSgGGGAA07_HiddenW0VGAZGAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyARyAA6ButtonVyACyARyARyARyATA6_GA18_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleW0VyA16_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA74_ATGQo__AGyAIyACyA74_A74_G_ARyARyA74_A10_GA18_GSgtGGtGGACyAGyAIyAPyAIyA22__A24_A31_011StartButtonH0VtGG_A95_tGGAPyAIyARyA22_AZG_A95_A24_A99_tGGG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA0H0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaJRd__lFQOyAA6HStackVyAIyAA08ModifiedD0VyARyARyARyARyACyACyAA5ImageVATGARyARyAtA18_AspectRatioLayoutVGAA06_FrameR0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA2_yAT5ScaleOGGAA17_FlipForRTLEffectVGA2_yAA5ColorVSgGGAA023AccessibilityAttachmentW0VG_AA6SpacerVARyARyAA14NavigationLinkVyAA05EmptyH0VARyARyAA5GroupVyACyACy07WorkoutB0024GoalWorkoutConfigurationH0VA31_028IntervalWorkoutConfigurationH0VGACyA31_025PacerWorkoutConfigurationH0VA31_024RaceWorkoutConfigurationH0VGGSgGA2_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA2_yA31_28ConfigurationNavigationModelCSgGGGAA07_HiddenW0VGAZGAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyARyAA6ButtonVyACyARyARyARyATA6_GA18_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleW0VyA16_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA74_ATGQo__AGyAIyACyA74_A74_G_ARyARyA74_A10_GA18_GSgtGGtGGACyAGyAIyAPyAIyA22__A24_A31_011StartButtonH0VtGG_A95_tGGAPyAIyARyA22_AZG_A95_A24_A99_tGGG_GMR);
  MEMORY[0x28223BE20](v33);
  v15 = &v30 - v14;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMR);
  MEMORY[0x28223BE20](v34);
  v17 = &v30 - v16;
  if (static Platform.current.getter())
  {
    v18 = v37;
    v19 = static HorizontalAlignment.leading.getter();
    if (one-time initialization token for iconToNameSpacing != -1)
    {
      v29 = v19;
      swift_once();
      v19 = v29;
    }

    v20 = static RowLayoutConstants.iconToNameSpacing;
    *v17 = v19;
    *(v17 + 1) = v20;
    v17[16] = 0;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaJRd__lFQOyAA6HStackVyAIyAA15ModifiedContentVyARyARyARyARyAA012_ConditionalO0VyATyAA5ImageVAVGARyARyAvA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA4_yAV5ScaleOGGAA17_FlipForRTLEffectVGA4_yAA5ColorVSgGGAA023AccessibilityAttachmentX0VG_AA6SpacerVARyARyAA14NavigationLinkVyAA05EmptyD0VARyARyAA5GroupVyATyATy07WorkoutB0024GoalWorkoutConfigurationD0VA33_028IntervalWorkoutConfigurationD0VGATyA33_025PacerWorkoutConfigurationD0VA33_024RaceWorkoutConfigurationD0VGGSgGA4_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA4_yA33_28ConfigurationNavigationModelCSgGGGAA07_HiddenX0VGA0_GAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyARyAA6ButtonVyATyARyARyARyAVA8_GA20_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleX0VyA18_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA76_AVGQo__AA0F0VyAIyATyA76_A76_G_ARyARyA76_A12_GA20_GSgtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA0D0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaJRd__lFQOyAA6HStackVyAIyAA15ModifiedContentVyARyARyARyARyAA012_ConditionalO0VyATyAA5ImageVAVGARyARyAvA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA4_yAV5ScaleOGGAA17_FlipForRTLEffectVGA4_yAA5ColorVSgGGAA023AccessibilityAttachmentX0VG_AA6SpacerVARyARyAA14NavigationLinkVyAA05EmptyD0VARyARyAA5GroupVyATyATy07WorkoutB0024GoalWorkoutConfigurationD0VA33_028IntervalWorkoutConfigurationD0VGATyA33_025PacerWorkoutConfigurationD0VA33_024RaceWorkoutConfigurationD0VGGSgGA4_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA4_yA33_28ConfigurationNavigationModelCSgGGGAA07_HiddenX0VGA0_GAkAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyARyAA6ButtonVyATyARyARyARyAVA8_GA20_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleX0VyA18_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA76_AVGQo__AA0F0VyAIyATyA76_A76_G_ARyARyA76_A12_GA20_GSgtGGtGGMR);
    closure #1 in WorkoutConfigurationRow.body.getter(v18, &v17[*(v21 + 44)]);
    sub_20C68D3BC(v17, v15);
    swift_storeEnumTagMultiPayload();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.accessibilityAction<A>(action:label:)>>.0, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, Spacer, StartButtonView)>>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Im();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of VStack<TupleView<(<<opaque return type of View.accessibilityAction<A>(action:label:)>>.0, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>>(v17, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMR);
  }

  else
  {
    WorkoutConfigurationRow.sizeCategory.getter(v11);
    v23 = ContentSizeCategory.isAccessibilityCategory.getter();
    (*(v9 + 8))(v11, v8);
    if (v23)
    {
      *v7 = static HorizontalAlignment.leading.getter();
      *(v7 + 1) = 0;
      v7[16] = 1;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAMyAMyAMyAA012_ConditionalK0VyAOyAA5ImageVAQGAMyAMyAqA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA_yAQ5ScaleOGGAA17_FlipForRTLEffectVGA_yAA5ColorVSgGGAA023AccessibilityAttachmentT0VG_AA6SpacerV07WorkoutB0011StartButtonD0VtGG_AA0F0VyAIyAOyAA4TextVA30_G_AMyAMyA30_A7_GA15_GSgtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6HStackVyAIyAA15ModifiedContentVyAMyAMyAMyAMyAA012_ConditionalK0VyAOyAA5ImageVAQGAMyAMyAqA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA_yAQ5ScaleOGGAA17_FlipForRTLEffectVGA_yAA5ColorVSgGGAA023AccessibilityAttachmentT0VG_AA6SpacerV07WorkoutB0011StartButtonD0VtGG_AA0F0VyAIyAOyAA4TextVA30_G_AMyAMyA30_A7_GA15_GSgtGGtGGMR);
      closure #2 in WorkoutConfigurationRow.body.getter(v37, &v7[*(v24 + 44)]);
      v25 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMd;
      v26 = &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMR;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v7, v5, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMR);
      swift_storeEnumTagMultiPayload();
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, Spacer, StartButtonView)>>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMR, MEMORY[0x277CE1198]);
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMR, MEMORY[0x277CE1138]);
      _ConditionalContent<>.init(storage:)();
      v27 = v7;
    }

    else
    {
      *v2 = static VerticalAlignment.center.getter();
      *(v2 + 1) = 0x4020000000000000;
      v2[16] = 0;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAKyAA012_ConditionalJ0VyAMyAA5ImageVAOGAKyAKyAoA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VGAUG_AA6VStackVyAIyAMyAA4TextVA22_G_AKyAKyA22_A5_GA13_GSgtGGAA6SpacerV07WorkoutB0011StartButtonD0VtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAKyAA012_ConditionalJ0VyAMyAA5ImageVAOGAKyAKyAoA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VGAUG_AA6VStackVyAIyAMyAA4TextVA22_G_AKyAKyA22_A5_GA13_GSgtGGAA6SpacerV07WorkoutB0011StartButtonD0VtGGMR);
      closure #3 in WorkoutConfigurationRow.body.getter(v37, &v2[*(v28 + 44)]);
      v25 = &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMd;
      v26 = &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMR;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v2, v5, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMR);
      swift_storeEnumTagMultiPayload();
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, Spacer, StartButtonView)>>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6HStackVyAEyAA15ModifiedContentVyAIyAIyAIyAIyAA012_ConditionalH0VyAKyAA5ImageVAMGAIyAIyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_ACyAEyAKyAA4TextVA24_G_AIyAIyA24_A3_GA11_GSgtGGtGGMR, MEMORY[0x277CE1198]);
      _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VGAQG_AA6VStackVyAEyAIyAA4TextVA18_G_AGyAGyA18_A1_GA9_GSgtGGAA6SpacerV07WorkoutB0011StartButtonE0VtGGMR, MEMORY[0x277CE1138]);
      _ConditionalContent<>.init(storage:)();
      v27 = v2;
    }

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v27, v25, v26);
    outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v13, v15, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA08ModifiedD0VyAKyAKyAKyAKyACyACyAA5ImageVAMGAKyAKyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonG0VtGG_AEyAGyACyAA4TextVA24_G_AKyAKyA24_A3_GA11_GSgtGGtGGAIyAGyAKyA15_ASG_A30_A17_A20_tGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA08ModifiedD0VyAKyAKyAKyAKyACyACyAA5ImageVAMGAKyAKyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonG0VtGG_AEyAGyACyAA4TextVA24_G_AKyAKyA24_A3_GA11_GSgtGGtGGAIyAGyAKyA15_ASG_A30_A17_A20_tGGGMR);
    swift_storeEnumTagMultiPayload();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type VStack<TupleView<(<<opaque return type of View.accessibilityAction<A>(action:label:)>>.0, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA0E0PAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaFRd__lFQOyAA6HStackVyAEyAA15ModifiedContentVyANyANyANyANyAA012_ConditionalL0VyAPyAA5ImageVARGANyANyArA18_AspectRatioLayoutVGAA06_FrameQ0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGA0_yAR5ScaleOGGAA17_FlipForRTLEffectVGA0_yAA5ColorVSgGGAA023AccessibilityAttachmentV0VG_AA6SpacerVANyANyAA14NavigationLinkVyAA05EmptyE0VANyANyAA5GroupVyAPyAPy07WorkoutB0024GoalWorkoutConfigurationE0VA29_028IntervalWorkoutConfigurationE0VGAPyA29_025PacerWorkoutConfigurationE0VA29_024RaceWorkoutConfigurationE0VGGSgGA0_y11WorkoutCore30WorkoutConfigurationDataSourceCSgGGA0_yA29_28ConfigurationNavigationModelCSgGGGAA07_HiddenV0VGAXGAgAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyANyAA6ButtonVyAPyANyANyANyARA4_GA16_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleV0VyA14_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA72_ARGQo__ACyAEyAPyA72_A72_G_ANyANyA72_A8_GA16_GSgtGGtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type _ConditionalContent<VStack<TupleView<(HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, Spacer, StartButtonView)>>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Im();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v13, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA08ModifiedD0VyAKyAKyAKyAKyACyACyAA5ImageVAMGAKyAKyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonG0VtGG_AEyAGyACyAA4TextVA24_G_AKyAKyA24_A3_GA11_GSgtGGtGGAIyAGyAKyA15_ASG_A30_A17_A20_tGGGMd, &_s7SwiftUI19_ConditionalContentVyAA6VStackVyAA9TupleViewVyAA6HStackVyAGyAA08ModifiedD0VyAKyAKyAKyAKyACyACyAA5ImageVAMGAKyAKyAmA18_AspectRatioLayoutVGAA06_FrameM0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAWyAM5ScaleOGGAA17_FlipForRTLEffectVGAWyAA5ColorVSgGGAA023AccessibilityAttachmentR0VG_AA6SpacerV07WorkoutB0011StartButtonG0VtGG_AEyAGyACyAA4TextVA24_G_AKyAKyA24_A3_GA11_GSgtGGtGGAIyAGyAKyA15_ASG_A30_A17_A20_tGGGMR);
  }
}

uint64_t closure #1 in WorkoutConfigurationRow.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v36 = (&v32 - v6);
  v7 = type metadata accessor for WorkoutConfigurationRow(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAA5GroupVyAIyAIy07WorkoutB0024GoalWorkoutConfigurationE0VA22_028IntervalWorkoutConfigurationE0VGAIyA22_025PacerWorkoutConfigurationE0VA22_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGAQGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAGyAA6ButtonVyAIyAGyAGyAGyAkYGA9_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleQ0VyA7_GG_AA16PlainButtonStyleVQo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAA5GroupVyAIyAIy07WorkoutB0024GoalWorkoutConfigurationE0VA22_028IntervalWorkoutConfigurationE0VGAIyA22_025PacerWorkoutConfigurationE0VA22_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGAQGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAGyAA6ButtonVyAIyAGyAGyAGyAkYGA9_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleQ0VyA7_GG_AA16PlainButtonStyleVQo_tGGMR);
  MEMORY[0x28223BE20](v34);
  v11 = &v32 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaBRd__lFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyALyALyALyALyAA012_ConditionalK0VyANyAA5ImageVAPGALyALyApA18_AspectRatioLayoutVGAA06_FrameP0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAZyAP5ScaleOGGAA17_FlipForRTLEffectVGAZyAA5ColorVSgGGAA023AccessibilityAttachmentU0VG_AA6SpacerVALyALyAA14NavigationLinkVyAA05EmptyC0VALyALyAA5GroupVyANyANy07WorkoutB0024GoalWorkoutConfigurationC0VA27_028IntervalWorkoutConfigurationC0VGANyA27_025PacerWorkoutConfigurationC0VA27_024RaceWorkoutConfigurationC0VGGSgGAZy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAZyA27_28ConfigurationNavigationModelCSgGGGAA07_HiddenU0VGAVGAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyANyALyALyALyAPA2_GA14_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleU0VyA12_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA70_APGQo_Md, &_s7SwiftUI4ViewPAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaBRd__lFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyALyALyALyALyAA012_ConditionalK0VyANyAA5ImageVAPGALyALyApA18_AspectRatioLayoutVGAA06_FrameP0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAZyAP5ScaleOGGAA17_FlipForRTLEffectVGAZyAA5ColorVSgGGAA023AccessibilityAttachmentU0VG_AA6SpacerVALyALyAA14NavigationLinkVyAA05EmptyC0VALyALyAA5GroupVyANyANy07WorkoutB0024GoalWorkoutConfigurationC0VA27_028IntervalWorkoutConfigurationC0VGANyA27_025PacerWorkoutConfigurationC0VA27_024RaceWorkoutConfigurationC0VGGSgGAZy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAZyA27_28ConfigurationNavigationModelCSgGGGAA07_HiddenU0VGAVGAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyANyALyALyALyAPA2_GA14_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleU0VyA12_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA70_APGQo_MR);
  v12 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  *v11 = static VerticalAlignment.top.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v17 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA012_ConditionalJ0VyAMyAA5ImageVAOGAKyAKyAoA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyD0VAKyAKyAA5GroupVyAMyAMy07WorkoutB0024GoalWorkoutConfigurationD0VA26_028IntervalWorkoutConfigurationD0VGAMyA26_025PacerWorkoutConfigurationD0VA26_024RaceWorkoutConfigurationD0VGGSgGAYy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAYyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGAUGAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAMyAKyAKyAKyAOA1_GA13_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleS0VyA11_GG_AA16PlainButtonStyleVQo_tGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA012_ConditionalJ0VyAMyAA5ImageVAOGAKyAKyAoA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VG_AA6SpacerVAKyAKyAA14NavigationLinkVyAA05EmptyD0VAKyAKyAA5GroupVyAMyAMy07WorkoutB0024GoalWorkoutConfigurationD0VA26_028IntervalWorkoutConfigurationD0VGAMyA26_025PacerWorkoutConfigurationD0VA26_024RaceWorkoutConfigurationD0VGGSgGAYy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAYyA26_28ConfigurationNavigationModelCSgGGGAA07_HiddenS0VGAUGAA0D0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAKyAA6ButtonVyAMyAKyAKyAKyAOA1_GA13_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleS0VyA11_GG_AA16PlainButtonStyleVQo_tGGMR) + 44)];
  v33 = a1;
  closure #1 in closure #1 in WorkoutConfigurationRow.body.getter(a1, v17);
  outlined init with copy of WorkoutConfigurationRow(a1, &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorkoutConfigurationRow);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  outlined init with take of WorkoutConfigurationRow(&v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for WorkoutConfigurationRow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, Spacer, ModifiedContent<ModifiedContent<NavigationLink<EmptyView, ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>>>, _HiddenModifier>, _FrameLayout>, <<opaque return type of View.buttonStyle<A>(_:)>>.0)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAA5GroupVyAIyAIy07WorkoutB0024GoalWorkoutConfigurationE0VA22_028IntervalWorkoutConfigurationE0VGAIyA22_025PacerWorkoutConfigurationE0VA22_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGAQGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAGyAA6ButtonVyAIyAGyAGyAGyAkYGA9_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleQ0VyA7_GG_AA16PlainButtonStyleVQo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAA5GroupVyAIyAIy07WorkoutB0024GoalWorkoutConfigurationE0VA22_028IntervalWorkoutConfigurationE0VGAIyA22_025PacerWorkoutConfigurationE0VA22_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGAQGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAGyAA6ButtonVyAIyAGyAGyAGyAkYGA9_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleQ0VyA7_GG_AA16PlainButtonStyleVQo_tGGMR, MEMORY[0x277CE1138]);
  _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type Label<Text, Image> and conformance Label<A, B>, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMd, &_s7SwiftUI5LabelVyAA4TextVAA5ImageVGMR, MEMORY[0x277CDEFF0]);
  v20 = v16;
  v32 = v16;
  View.accessibilityAction<A>(action:label:)();

  outlined destroy of VStack<TupleView<(<<opaque return type of View.accessibilityAction<A>(action:label:)>>.0, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>>(v11, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAA5GroupVyAIyAIy07WorkoutB0024GoalWorkoutConfigurationE0VA22_028IntervalWorkoutConfigurationE0VGAIyA22_025PacerWorkoutConfigurationE0VA22_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGAQGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAGyAA6ButtonVyAIyAGyAGyAGyAkYGA9_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleQ0VyA7_GG_AA16PlainButtonStyleVQo_tGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerVAGyAGyAA14NavigationLinkVyAA05EmptyE0VAGyAGyAA5GroupVyAIyAIy07WorkoutB0024GoalWorkoutConfigurationE0VA22_028IntervalWorkoutConfigurationE0VGAIyA22_025PacerWorkoutConfigurationE0VA22_024RaceWorkoutConfigurationE0VGGSgGAUy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAUyA22_28ConfigurationNavigationModelCSgGGGAA07_HiddenQ0VGAQGAA0E0PAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyAGyAA6ButtonVyAIyAGyAGyAGyAkYGA9_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleQ0VyA7_GG_AA16PlainButtonStyleVQo_tGGMR);
  v21 = static HorizontalAlignment.leading.getter();
  v22 = v36;
  *v36 = v21;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA4TextVAMG_AA08ModifiedJ0VyAPyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGARyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA4TextVAMG_AA08ModifiedJ0VyAPyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGARyAA5ColorVSgGGSgtGGMR);
  closure #1 in WorkoutConfigurationRow.displayDetail()(v33, (v22 + *(v23 + 44)));
  v24 = *(v12 + 16);
  v25 = v35;
  v26 = v37;
  v24(v35, v20, v37);
  v27 = v38;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v22, v38, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  v28 = v39;
  v24(v39, v25, v26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaBRd__lFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyALyALyALyALyAA012_ConditionalK0VyANyAA5ImageVAPGALyALyApA18_AspectRatioLayoutVGAA06_FrameP0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAZyAP5ScaleOGGAA17_FlipForRTLEffectVGAZyAA5ColorVSgGGAA023AccessibilityAttachmentU0VG_AA6SpacerVALyALyAA14NavigationLinkVyAA05EmptyC0VALyALyAA5GroupVyANyANy07WorkoutB0024GoalWorkoutConfigurationC0VA27_028IntervalWorkoutConfigurationC0VGANyA27_025PacerWorkoutConfigurationC0VA27_024RaceWorkoutConfigurationC0VGGSgGAZy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAZyA27_28ConfigurationNavigationModelCSgGGGAA07_HiddenU0VGAVGAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyANyALyALyALyAPA2_GA14_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleU0VyA12_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA70_APGQo__AA6VStackVyAJyANyA70_A70_G_ALyALyA70_A6_GA14_GSgtGGtMd, &_s7SwiftUI4ViewPAAE19accessibilityAction6action5labelQryyc_qd__yXEtAaBRd__lFQOyAA6HStackVyAA05TupleC0VyAA15ModifiedContentVyALyALyALyALyAA012_ConditionalK0VyANyAA5ImageVAPGALyALyApA18_AspectRatioLayoutVGAA06_FrameP0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAZyAP5ScaleOGGAA17_FlipForRTLEffectVGAZyAA5ColorVSgGGAA023AccessibilityAttachmentU0VG_AA6SpacerVALyALyAA14NavigationLinkVyAA05EmptyC0VALyALyAA5GroupVyANyANy07WorkoutB0024GoalWorkoutConfigurationC0VA27_028IntervalWorkoutConfigurationC0VGANyA27_025PacerWorkoutConfigurationC0VA27_024RaceWorkoutConfigurationC0VGGSgGAZy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAZyA27_28ConfigurationNavigationModelCSgGGGAA07_HiddenU0VGAVGAcAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyALyAA6ButtonVyANyALyALyALyAPA2_GA14_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleU0VyA12_GG_AA16PlainButtonStyleVQo_tGG_AA5LabelVyA70_APGQo__AA6VStackVyAJyANyA70_A70_G_ALyALyA70_A6_GA14_GSgtGGtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v27, &v28[*(v29 + 48)], &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v22, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  v30 = *(v12 + 8);
  v30(v32, v26);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v27, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  return (v30)(v25, v26);
}

uint64_t closure #1 in closure #1 in WorkoutConfigurationRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v104 = type metadata accessor for PlainButtonStyle();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v85[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for WorkoutConfigurationRow(0);
  v96 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v97 = v5;
  v98 = &v85[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleK0VyARGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleK0VyARGGMR);
  MEMORY[0x28223BE20](v100);
  v101 = &v85[-v6];
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA012_ConditionalI0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA011_ForegroundeO0VyAVGG_AA05PlaingE0VQo_Md, &_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA012_ConditionalI0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAOyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA011_ForegroundeO0VyAVGG_AA05PlaingE0VQo_MR);
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v85[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v110 = &v85[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMR);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v85[-v11];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMR);
  MEMORY[0x28223BE20](v89);
  v91 = &v85[-v12];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGAWyAH0I15NavigationModelCSgGGMR);
  MEMORY[0x28223BE20](v94);
  v92 = &v85[-v13];
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
  MEMORY[0x28223BE20](v93);
  v99 = &v85[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v109 = &v85[-v16];
  v88 = type metadata accessor for AccessibilityTraits();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v18 = &v85[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v19);
  v21 = &v85[-v20];
  v22 = type metadata accessor for ConfigurationType();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v85[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
  MEMORY[0x28223BE20](v26 - 8);
  v95 = &v85[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v111 = &v85[-v29];
  v30 = *(a1 + 40);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v31 = (*(v23 + 88))(v25, v22);
  v32 = v31 == *MEMORY[0x277D7E110] || v31 == *MEMORY[0x277D7E0F0];
  v33 = v32;
  v86 = v33;
  if (!v32)
  {
    (*(v23 + 8))(v25, v22);
  }

  static WorkoutConfigurationRow.displayImageContent(workoutConfiguration:useActivityTypeImageForDisplayImage:)(*(a1 + *(v4 + 56)), &v114);
  v120 = v116;
  *v121 = *v117;
  *&v121[9] = *&v117[9];
  v118 = v114;
  v119 = v115;
  v34 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v36 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMR) + 36)];
  v37 = v30;
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v39 = *MEMORY[0x277CE1048];
  v40 = type metadata accessor for Image.Scale();
  (*(*(v40 - 8) + 104))(v36 + v38, v39, v40);
  *v36 = swift_getKeyPath();
  v41 = *&v121[16];
  *(v21 + 3) = *v121;
  *(v21 + 4) = v41;
  v42 = v120;
  *(v21 + 1) = v119;
  *(v21 + 2) = v42;
  *v21 = v118;
  *(v21 + 10) = KeyPath;
  *(v21 + 11) = v34;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMR);
  v21[*(v43 + 36)] = v86;
  WorkoutConfiguration.displayColor.getter();
  v44 = Color.init(uiColor:)();
  v45 = swift_getKeyPath();
  v46 = &v21[*(v19 + 36)];
  *v46 = v45;
  v46[1] = v44;
  static AccessibilityTraits.isSelected.getter();
  v47 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  MEMORY[0x20F30AA50](v18, v19, v47);
  (*(v87 + 8))(v18, v88);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v21, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMR);
  v48 = v90;
  closure #1 in static WorkoutConfigurationRow.workoutConfigurationView(workoutConfiguration:formattingManager:activityMoveMode:healthStore:intent:)(v37, *(a1 + 56), *(a1 + 48), 0, *(a1 + 64), v90);
  v49 = *(a1 + 16);
  if (v49)
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
    v50 = v49;
    v51 = static ObservableObject.environmentStore.getter();
    v52 = v91;
    _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v48, v91, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMd, &_s7SwiftUI5GroupVyAA19_ConditionalContentVyAEy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGAEyAF05PacerfhI0VAF04RacefhI0VGGSgGMR);
    v53 = &v52[*(v89 + 36)];
    *v53 = v51;
    v53[1] = v49;
    v54 = *a1;
    if (*a1)
    {
      type metadata accessor for ConfigurationNavigationModel(0);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);

      v55 = static ObservableObject.environmentStore.getter();
      v56 = v52;
      v57 = v92;
      _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v56, v92, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGy07WorkoutB004GoalG17ConfigurationViewVAH08IntervalgiJ0VGAGyAH05PacergiJ0VAH04RacegiJ0VGGSgGAA30_EnvironmentKeyWritingModifierVy0G4Core0gI10DataSourceCSgGGMR);
      v58 = &v57[*(v94 + 36)];
      *v58 = v55;
      v58[1] = v54;
      v59 = *(a1 + 80);
      v112 = *(a1 + 72);
      v113 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
      State.projectedValue.getter();
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Group<_ConditionalContent<_ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView>, _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView>>?>, _EnvironmentKeyWritingModifier<WorkoutConfigurationDataSource?>>, _EnvironmentKeyWritingModifier<ConfigurationNavigationModel?>> and conformance <> ModifiedContent<A, B>();
      v60 = v109;
      NavigationLink.init(destination:isActive:label:)();
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v61 = &v60[*(v93 + 36)];
      v62 = v115;
      *v61 = v114;
      v61[1] = v62;
      v61[2] = v116;
      v63 = v98;
      outlined init with copy of WorkoutConfigurationRow(a1, v98, type metadata accessor for WorkoutConfigurationRow);
      v64 = (*(v96 + 80) + 16) & ~*(v96 + 80);
      v65 = swift_allocObject();
      v66 = outlined init with take of WorkoutConfigurationRow(v63, v65 + v64, type metadata accessor for WorkoutConfigurationRow);
      MEMORY[0x28223BE20](v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGMR);
      lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text> and conformance <> _ConditionalContent<A, B>();
      v67 = v101;
      Button.init(action:label:)();
      WorkoutConfiguration.displayColor.getter();
      *(v67 + *(v100 + 36)) = Color.init(uiColor:)();
      v68 = v102;
      PlainButtonStyle.init()();
      lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
      v69 = v110;
      v70 = v104;
      View.buttonStyle<A>(_:)();
      (*(v103 + 8))(v68, v70);
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v67, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleK0VyARGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleK0VyARGGMR);
      v71 = v95;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v111, v95, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
      v72 = v99;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v60, v99, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
      v73 = v106;
      v74 = *(v106 + 16);
      v75 = v105;
      v76 = v107;
      v74(v105, v69, v107);
      v77 = v108;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v71, v108, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VG_AA6SpacerVACyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAEyAEy07WorkoutB028GoalWorkoutConfigurationViewVA18_32IntervalWorkoutConfigurationViewVGAEyA18_29PacerWorkoutConfigurationViewVA18_28RaceWorkoutConfigurationViewVGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA18_013ConfigurationX5ModelCSgGGGAA07_HiddenN0VGAMGAA4ViewPAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyAEyACyACyACyAgUGA5_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleN0VyA3_GG_AA16PlainButtonStyleVQo_tMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VG_AA6SpacerVACyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAEyAEy07WorkoutB028GoalWorkoutConfigurationViewVA18_32IntervalWorkoutConfigurationViewVGAEyA18_29PacerWorkoutConfigurationViewVA18_28RaceWorkoutConfigurationViewVGGSgGAQy11WorkoutCore30WorkoutConfigurationDataSourceCSgGGAQyA18_013ConfigurationX5ModelCSgGGGAA07_HiddenN0VGAMGAA4ViewPAAE11buttonStyleyQrqd__AA20PrimitiveButtonStyleRd__lFQOyACyAA6ButtonVyAEyACyACyACyAgUGA5_GAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleN0VyA3_GG_AA16PlainButtonStyleVQo_tMR);
      v79 = v77 + v78[12];
      *v79 = 0;
      *(v79 + 8) = 1;
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v72, v77 + v78[16], &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
      v74((v77 + v78[20]), v75, v76);
      v80 = *(v73 + 8);
      v80(v110, v76);
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v109, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v111, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
      v80(v75, v76);
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v72, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA14NavigationLinkVyAA9EmptyViewVACyACyAA5GroupVyAA012_ConditionalD0VyAKy07WorkoutB004Goalk13ConfigurationH0VAL08IntervalkmH0VGAKyAL05PacerkmH0VAL04RacekmH0VGGSgGAA30_EnvironmentKeyWritingModifierVy0K4Core0kM10DataSourceCSgGGA_yAL0mE5ModelCSgGGGAA07_HiddenT0VGAA12_FrameLayoutVGMR);
      return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v71, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
    }

    type metadata accessor for ConfigurationNavigationModel(0);
    v82 = &lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel;
    v83 = type metadata accessor for ConfigurationNavigationModel;
    v84 = &protocol conformance descriptor for ConfigurationNavigationModel;
  }

  else
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    v82 = &lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource;
    v83 = MEMORY[0x277D7DC28];
    v84 = MEMORY[0x277D7DC20];
  }

  _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(v82, v83, v84);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void closure #1 in WorkoutConfigurationRow.editButton()(uint64_t *a1)
{
  v2 = a1[10];
  v6[0] = *(a1 + 72);
  v7 = v2;
  LOBYTE(v8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.setter();
  if (*a1)
  {
    v8 = a1[5];
    swift_getKeyPath();
    swift_getKeyPath();

    v3 = v8;
    v4 = static Published.subscript.modify();
    type metadata accessor for WorkoutConfiguration();
    v5 = MEMORY[0x277D7DA50];
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7DA50], MEMORY[0x277D7DA60]);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, v5, MEMORY[0x277D7DA58]);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance NSObject, v5, MEMORY[0x277D85378]);
    NavigationPath.append<A>(_:)();

    v4(v6, 0);
  }

  else
  {
    type metadata accessor for ConfigurationNavigationModel(0);
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
    EnvironmentObject.error()();
    __break(1u);
  }
}

uint64_t closure #3 in closure #1 in WorkoutConfigurationRow.body.getter()
{
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = WorkoutUIBundle.super.isa;
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  v2._object = 0x800000020CB9B6B0;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  lazy protocol witness table accessor for type String and conformance String();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t closure #2 in WorkoutConfigurationRow.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA012_ConditionalJ0VyAMyAA5ImageVAOGAKyAKyAoA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VG_AA6SpacerV07WorkoutB0011StartButtonD0VtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAKyAA012_ConditionalJ0VyAMyAA5ImageVAOGAKyAKyAoA012_AspectRatioG0VGAA06_FrameG0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAYyAO5ScaleOGGAA17_FlipForRTLEffectVGAYyAA5ColorVSgGGAA023AccessibilityAttachmentS0VG_AA6SpacerV07WorkoutB0011StartButtonD0VtGGMR);
  closure #1 in closure #2 in WorkoutConfigurationRow.body.getter(a1, &v15[*(v16 + 44)]);
  *v9 = static HorizontalAlignment.leading.getter();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA4TextVAMG_AA08ModifiedJ0VyAPyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGARyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA4TextVAMG_AA08ModifiedJ0VyAPyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGARyAA5ColorVSgGGSgtGGMR);
  closure #1 in WorkoutConfigurationRow.displayDetail()(a1, &v9[*(v17 + 44)]);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v15, v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v9, v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v12, a2, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMR);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_AA6VStackVyAEyAIyAA4TextVA24_G_AGyAGyA24_A1_GA9_GSgtGGtMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGG_AA6VStackVyAEyAIyAA4TextVA24_G_AGyAGyA24_A1_GA9_GSgtGGtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v6, a2 + *(v18 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v9, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v15, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v12, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAGyAA012_ConditionalG0VyAIyAA5ImageVAKGAGyAGyAkA18_AspectRatioLayoutVGAA06_FrameL0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAUyAK5ScaleOGGAA17_FlipForRTLEffectVGAUyAA5ColorVSgGGAA023AccessibilityAttachmentQ0VG_AA6SpacerV07WorkoutB0011StartButtonE0VtGGMR);
}

uint64_t closure #1 in closure #2 in WorkoutConfigurationRow.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  started = type metadata accessor for StartButtonView(0);
  MEMORY[0x28223BE20](started);
  v57 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (v49 - v6);
  v53 = type metadata accessor for AccessibilityTraits();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v51);
  v11 = v49 - v10;
  v12 = type metadata accessor for ConfigurationType();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
  MEMORY[0x28223BE20](v16 - 8);
  v54 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v49 - v19;
  v21 = *(a1 + 40);
  dispatch thunk of WorkoutConfiguration.type.getter();
  v22 = (*(v13 + 88))(v15, v12);
  v23 = v22 == *MEMORY[0x277D7E110] || v22 == *MEMORY[0x277D7E0F0];
  v24 = v23;
  v50 = v24;
  if (!v23)
  {
    (*(v13 + 8))(v15, v12);
  }

  v25 = type metadata accessor for WorkoutConfigurationRow(0);
  static WorkoutConfigurationRow.displayImageContent(workoutConfiguration:useActivityTypeImageForDisplayImage:)(*(a1 + *(v25 + 56)), v58);
  v62 = v58[2];
  *v63 = v59[0];
  *&v63[9] = *(v59 + 9);
  v60 = v58[0];
  v61 = v58[1];
  v26 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v28 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMR) + 36)];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR);
  v49[1] = a1;
  v30 = *(v29 + 28);
  v31 = *MEMORY[0x277CE1048];
  v32 = type metadata accessor for Image.Scale();
  (*(*(v32 - 8) + 104))(v28 + v30, v31, v32);
  *v28 = swift_getKeyPath();
  v33 = *&v63[16];
  *(v11 + 3) = *v63;
  *(v11 + 4) = v33;
  v34 = v62;
  *(v11 + 1) = v61;
  *(v11 + 2) = v34;
  *v11 = v60;
  *(v11 + 10) = KeyPath;
  *(v11 + 11) = v26;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMR);
  v11[*(v35 + 36)] = v50;
  WorkoutConfiguration.displayColor.getter();
  v36 = Color.init(uiColor:)();
  v37 = swift_getKeyPath();
  v38 = v51;
  v39 = &v11[*(v51 + 36)];
  *v39 = v37;
  v39[1] = v36;
  static AccessibilityTraits.isSelected.getter();
  v40 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  MEMORY[0x20F30AA50](v9, v38, v40);
  (*(v52 + 8))(v9, v53);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v11, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMR);
  v41 = *(started + 24);
  v42 = v21;
  WorkoutConfigurationRow.workoutStartState.getter(v7 + v41);
  *v7 = v42;
  v7[1] = 14;
  v43 = v54;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v20, v54, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
  v44 = v57;
  outlined init with copy of WorkoutConfigurationRow(v7, v57, type metadata accessor for StartButtonView);
  v45 = v56;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v43, v56, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VG_AA6SpacerV07WorkoutB015StartButtonViewVtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VG_AA6SpacerV07WorkoutB015StartButtonViewVtMR);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 1;
  outlined init with copy of WorkoutConfigurationRow(v44, v45 + *(v46 + 64), type metadata accessor for StartButtonView);
  outlined destroy of StartButtonView(v7, type metadata accessor for StartButtonView);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v20, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
  outlined destroy of StartButtonView(v44, type metadata accessor for StartButtonView);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v43, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
}

uint64_t closure #3 in WorkoutConfigurationRow.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  started = type metadata accessor for StartButtonView(0);
  MEMORY[0x28223BE20](started);
  v77 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v75 = &v64[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v73 = &v64[-v10];
  v70 = type metadata accessor for AccessibilityTraits();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v12 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMR);
  MEMORY[0x28223BE20](v68);
  v14 = &v64[-v13];
  v15 = type metadata accessor for ConfigurationType();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v64[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
  MEMORY[0x28223BE20](v19 - 8);
  v67 = &v64[-v20];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMR);
  MEMORY[0x28223BE20](v66);
  v71 = &v64[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v64[-v23];
  MEMORY[0x28223BE20](v25);
  v78 = &v64[-v26];
  v27 = a1[5];
  dispatch thunk of WorkoutConfiguration.type.getter();
  v28 = (*(v16 + 88))(v18, v15);
  v29 = v28 == *MEMORY[0x277D7E110] || v28 == *MEMORY[0x277D7E0F0];
  v30 = v29;
  v65 = v30;
  if (!v29)
  {
    (*(v16 + 8))(v18, v15);
  }

  v31 = type metadata accessor for WorkoutConfigurationRow(0);
  static WorkoutConfigurationRow.displayImageContent(workoutConfiguration:useActivityTypeImageForDisplayImage:)(*(a1 + *(v31 + 56)), &v79);
  v85 = v81;
  *v86 = v82[0];
  *&v86[9] = *(v82 + 9);
  v83 = v79;
  v84 = v80;
  v32 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v34 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGMR) + 36)];
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v36 = *MEMORY[0x277CE1048];
  v37 = type metadata accessor for Image.Scale();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  v38 = *&v86[16];
  *(v14 + 3) = *v86;
  *(v14 + 4) = v38;
  v39 = v85;
  *(v14 + 1) = v84;
  *(v14 + 2) = v39;
  *v14 = v83;
  *(v14 + 10) = KeyPath;
  *(v14 + 11) = v32;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGMR);
  v14[*(v40 + 36)] = v65;
  WorkoutConfiguration.displayColor.getter();
  v41 = Color.init(uiColor:)();
  v42 = swift_getKeyPath();
  v43 = v68;
  v44 = &v14[*(v68 + 36)];
  *v44 = v42;
  v44[1] = v41;
  static AccessibilityTraits.isSelected.getter();
  v45 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
  v46 = v67;
  MEMORY[0x20F30AA50](v12, v43, v45);
  (*(v69 + 8))(v12, v70);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v14, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGMR);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v46, v24, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
  v47 = &v24[*(v66 + 36)];
  v48 = v80;
  *v47 = v79;
  v47[1] = v48;
  v47[2] = v81;
  v49 = v78;
  _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(v24, v78, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMR);
  v50 = static HorizontalAlignment.leading.getter();
  v51 = v73;
  *v73 = v50;
  *(v51 + 8) = 0;
  *(v51 + 16) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA4TextVAMG_AA08ModifiedJ0VyAPyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGARyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA19_ConditionalContentVyAA4TextVAMG_AA08ModifiedJ0VyAPyAmA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGARyAA5ColorVSgGGSgtGGMR);
  closure #1 in WorkoutConfigurationRow.displayDetail()(a1, (v51 + *(v52 + 44)));
  v53 = *(started + 24);
  v54 = v27;
  v55 = v75;
  WorkoutConfigurationRow.workoutStartState.getter(&v75[v53]);
  *v55 = v54;
  v55[1] = 14;
  v56 = v49;
  v57 = v71;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v56, v71, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMR);
  v58 = v74;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v51, v74, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  v59 = v77;
  outlined init with copy of WorkoutConfigurationRow(v55, v77, type metadata accessor for StartButtonView);
  v60 = v76;
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v57, v76, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMR);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMG_AA6VStackVyAA9TupleViewVyAEyAA4TextVA16_G_ACyACyA16_AYGA5_GSgtGGAA6SpacerV07WorkoutB0011StartButtonY0VtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMG_AA6VStackVyAA9TupleViewVyAEyAA4TextVA16_G_ACyACyA16_AYGA5_GSgtGGAA6SpacerV07WorkoutB0011StartButtonY0VtMR);
  outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v58, v60 + v61[12], &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  v62 = v60 + v61[16];
  *v62 = 0;
  *(v62 + 8) = 1;
  outlined init with copy of WorkoutConfigurationRow(v59, v60 + v61[20], type metadata accessor for StartButtonView);
  outlined destroy of StartButtonView(v55, type metadata accessor for StartButtonView);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v51, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v78, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMR);
  outlined destroy of StartButtonView(v59, type metadata accessor for StartButtonView);
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v58, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA19_ConditionalContentVyAA4TextVAIG_AA08ModifiedG0VyALyAiA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGANyAA5ColorVSgGGSgtGGMR);
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v57, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGAMGMR);
}

uint64_t closure #1 in static WorkoutConfigurationRow.workoutConfigurationView(workoutConfiguration:formattingManager:activityMoveMode:healthStore:intent:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v159 = a5;
  LODWORD(v162) = a4;
  *&v163 = a2;
  *(&v163 + 1) = a3;
  v167 = a6;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy9WorkoutUI22RaceElevationViewModelC5StateOGMd, &_s7Combine9PublishedVy9WorkoutUI22RaceElevationViewModelC5StateOGMR);
  v156 = *(v154 - 1);
  MEMORY[0x28223BE20](v154);
  v155 = &v148 - v7;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v158);
  v157 = &v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v148 - v10;
  v161 = type metadata accessor for IntervalWorkoutConfigurationView(0);
  MEMORY[0x28223BE20](v161);
  v13 = (&v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v148 - v15;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGACyAF05PacerfhI0VAF04RacefhI0VG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0VGACyAF05PacerfhI0VAF04RacefhI0VG_GMR);
  MEMORY[0x28223BE20](v165);
  v164 = (&v148 - v17);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB004GoalF17ConfigurationViewVAF08IntervalfhI0V_GMR);
  MEMORY[0x28223BE20](v160);
  v19 = (&v148 - v18);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMR);
  MEMORY[0x28223BE20](v166);
  v21 = &v148 - v20;
  type metadata accessor for GoalWorkoutConfiguration();
  v22 = a1;
  if (swift_dynamicCastClass())
  {
    type metadata accessor for WorkoutConfigurationDataSource();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
    v159 = a1;
    v23 = EnvironmentObject.init()();
    v25 = v24;
    LOBYTE(v178) = 0;
    State.init(wrappedValue:)();
    v26 = v197;
    v27 = *(&v197 + 1);
    FIUIDeviceDependentLayoutMetric(junior40:senior44:aloeSmall41:aloeBig45:agave49:)();
    v29 = v28;
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D928], MEMORY[0x277D7DA48]);
    v30 = ObservedObject.init(wrappedValue:)();
    *&v197 = v23;
    *(&v197 + 1) = v25;
    *&v198 = v30;
    *(&v198 + 1) = v31;
    v32 = v163;
    v199 = v163;
    LOBYTE(v200) = v162;
    *(&v200 + 1) = v178;
    DWORD1(v200) = *(&v178 + 3);
    BYTE8(v200) = v26;
    *(&v200 + 9) = v169;
    HIDWORD(v200) = *(&v169 + 3);
    *&v201 = v27;
    *(&v201 + 1) = v29;
    v33 = v200;
    v19[2] = v163;
    v19[3] = v33;
    v19[4] = v201;
    v34 = v198;
    *v19 = v197;
    v19[1] = v34;
    swift_storeEnumTagMultiPayload();
    v35 = v32;
    outlined init with copy of GoalWorkoutConfigurationView(&v197, &v178);
    lazy protocol witness table accessor for type GoalWorkoutConfigurationView and conformance GoalWorkoutConfigurationView();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type IntervalWorkoutConfigurationView and conformance IntervalWorkoutConfigurationView, type metadata accessor for IntervalWorkoutConfigurationView, &protocol conformance descriptor for IntervalWorkoutConfigurationView);
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v21, v164, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMR);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMR);
    lazy protocol witness table accessor for type _ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
    v36 = v167;
    _ConditionalContent<>.init(storage:)();
    outlined destroy of GoalWorkoutConfigurationView(&v197);

    outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v21, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMR);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMR);
    return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  }

  else
  {
    v39 = v11;
    v40 = v13;
    v151 = v16;
    v152 = v19;
    v153 = v21;
    type metadata accessor for IntervalWorkoutConfiguration();
    v41 = swift_dynamicCastClass();
    if (v41)
    {
      v156 = v41;
      type metadata accessor for WorkoutConfigurationDataSource();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
      v155 = v22;
      *v13 = EnvironmentObject.init()();
      v13[1] = v42;
      type metadata accessor for ConfigurationNavigationModel(0);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
      v13[2] = EnvironmentObject.init()();
      v13[3] = v43;
      v44 = v161;
      v45 = v161[6];
      *(v40 + v45) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA13DismissActionV_GMR);
      swift_storeEnumTagMultiPayload();
      v46 = v40 + v44[8];
      LOBYTE(v178) = 0;
      State.init(wrappedValue:)();
      v47 = *(&v197 + 1);
      *v46 = v197;
      *(v46 + 8) = v47;
      v48 = (v40 + v44[14]);
      *v48 = 0;
      v48[1] = 0;
      v154 = v48;
      v49 = type metadata accessor for UUID();
      (*(*(v49 - 8) + 56))(v39, 1, 1, v49);
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v39, v157, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      State.init(wrappedValue:)();
      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v39, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v50 = v40 + v44[16];
      LOBYTE(v178) = 0;
      State.init(wrappedValue:)();
      v51 = *(&v197 + 1);
      *v50 = v197;
      *(v50 + 8) = v51;
      v52 = (v40 + v44[7]);
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D9A0], MEMORY[0x277D7DA48]);
      v53 = v155;
      *v52 = ObservedObject.init(wrappedValue:)();
      v52[1] = v54;
      v55 = v163;
      *(v40 + v44[9]) = *(&v163 + 1);
      *(v40 + v44[10]) = v55;
      v56 = v159;
      *(v40 + v44[11]) = v159;
      v57 = v162;
      *(v40 + v44[13]) = v162;
      v158 = v53;
      if (v57)
      {
        v58 = v164;
        if (v57 == 1)
        {
          v59 = one-time initialization token for WorkoutUIBundle;
          v60 = v55;
          v61 = v56;
          if (v59 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v62 = WorkoutUIBundle.super.isa;
          v207._object = 0xE000000000000000;
          v63.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v63.value._object = 0xEB00000000656C62;
          v64._object = 0x800000020CB986A0;
          v64._countAndFlagsBits = 0xD00000000000001CLL;
          v65._countAndFlagsBits = 0;
          v65._object = 0xE000000000000000;
          v207._countAndFlagsBits = 0;
          v66 = NSLocalizedString(_:tableName:bundle:value:comment:)(v64, v63, v62, v65, v207);

          v67 = (v40 + v161[12]);
          v67->_countAndFlagsBits = 0;
          v67->_object = 0;
          v67[1] = v66;
          v67[2]._countAndFlagsBits = 36;
          v68 = v153;
        }

        else
        {
          v93 = v55;
          v94 = v56;
          v95 = IntervalWorkoutConfiguration.intervalWorkout.getter();
          v96 = IntervalWorkout.displayName.getter();
          v98 = v97;

          v99 = (v40 + v44[12]);
          *v99 = v96;
          v99[1] = v98;
          v99[2] = 0;
          v99[3] = 0;
          v99[4] = 16;
          v68 = v153;
          v100 = v154;
          *v154 = 0;
          v100[1] = 0;
        }
      }

      else
      {
        v89 = v53;
        v90 = v55;
        v91 = v56;
        if (dispatch thunk of WorkoutConfiguration.externalProvider.getter())
        {

          v92 = 9;
        }

        else
        {
          v92 = 43;
        }

        v68 = v153;
        v135 = dispatch thunk of WorkoutConfiguration.externalProvider.getter();

        if (v135)
        {
        }

        else
        {
          v92 |= 0x40uLL;
        }

        v136 = IntervalWorkoutConfiguration.intervalWorkout.getter();
        v137 = IntervalWorkout.displayName.getter();
        v139 = v138;

        v140 = (v40 + v44[12]);
        *v140 = v137;
        v140[1] = v139;
        v140[2] = 0;
        v140[3] = 0;
        v140[4] = v92;
        v58 = v164;
      }

      v141 = v151;
      outlined init with take of WorkoutConfigurationRow(v40, v151, type metadata accessor for IntervalWorkoutConfigurationView);
      outlined init with copy of WorkoutConfigurationRow(v141, v152, type metadata accessor for IntervalWorkoutConfigurationView);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type GoalWorkoutConfigurationView and conformance GoalWorkoutConfigurationView();
      _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type IntervalWorkoutConfigurationView and conformance IntervalWorkoutConfigurationView, type metadata accessor for IntervalWorkoutConfigurationView, &protocol conformance descriptor for IntervalWorkoutConfigurationView);
      _ConditionalContent<>.init(storage:)();
      outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(v68, v58, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMR);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMR);
      lazy protocol witness table accessor for type _ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
      lazy protocol witness table accessor for type _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
      v142 = v167;
      _ConditionalContent<>.init(storage:)();

      outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(v68, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGMR);
      outlined destroy of StartButtonView(v141, type metadata accessor for IntervalWorkoutConfigurationView);
      v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMR);
      return (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
    }

    else
    {
      type metadata accessor for PacerWorkoutConfiguration();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for WorkoutConfigurationDataSource();
        _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
        v161 = v22;
        v160 = EnvironmentObject.init()();
        v158 = v69;
        type metadata accessor for ConfigurationNavigationModel(0);
        _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
        v70 = EnvironmentObject.init()();
        v155 = v71;
        v156 = v70;
        LOBYTE(v178) = 0;
        State.init(wrappedValue:)();
        v72 = v197;
        v157 = *(&v197 + 1);
        LOBYTE(v178) = 0;
        State.init(wrappedValue:)();
        v73 = v197;
        v154 = *(&v197 + 1);
        LOBYTE(v178) = 0;
        State.init(wrappedValue:)();
        v74 = v197;
        v75 = *(&v197 + 1);
        _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D968], MEMORY[0x277D7DA48]);
        v76 = ObservedObject.init(wrappedValue:)();
        v77 = v159;
        *&v187 = v160;
        *(&v187 + 1) = v158;
        *&v188 = v156;
        *(&v188 + 1) = v155;
        *&v189 = v76;
        *(&v189 + 1) = v78;
        v79 = v163;
        *&v190 = v163;
        *(&v190 + 1) = v159;
        *&v191 = *(&v163 + 1);
        BYTE8(v191) = v162;
        *(&v191 + 9) = v197;
        HIDWORD(v191) = *(&v197 + 3);
        LOBYTE(v192) = v72;
        DWORD1(v192) = *(&v178 + 3);
        *(&v192 + 1) = v178;
        *(&v192 + 1) = v157;
        LOBYTE(v193) = v73;
        *(&v193 + 1) = v169;
        DWORD1(v193) = *(&v169 + 3);
        *(&v193 + 1) = v154;
        LOBYTE(v194) = v74;
        *(&v194 + 1) = *v168;
        DWORD1(v194) = *&v168[3];
        *(&v194 + 1) = v75;
        v200 = v190;
        v199 = v189;
        v198 = v188;
        v197 = v187;
        v203 = v193;
        v204 = v194;
        v201 = v191;
        v202 = v192;
        _s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB005PacerF17ConfigurationViewVAF04RacefhI0V_GWOi_(&v197);
        v175 = v203;
        v176 = v204;
        v177[0] = v205[0];
        *(v177 + 9) = *(v205 + 9);
        v171 = v199;
        v172 = v200;
        v173 = v201;
        v174 = v202;
        v169 = v197;
        v170 = v198;
        v80 = v79;
        v81 = v77;
        outlined init with copy of PacerWorkoutConfigurationView(&v187, &v178);
        lazy protocol witness table accessor for type PacerWorkoutConfigurationView and conformance PacerWorkoutConfigurationView();
        lazy protocol witness table accessor for type RaceWorkoutConfigurationView and conformance RaceWorkoutConfigurationView();
        _ConditionalContent<>.init(storage:)();
        v82 = v185;
        v83 = v164;
        v164[6] = v184;
        v83[7] = v82;
        v83[8] = v186[0];
        *(v83 + 137) = *(v186 + 9);
        v84 = v181;
        v83[2] = v180;
        v83[3] = v84;
        v85 = v183;
        v83[4] = v182;
        v83[5] = v85;
        v86 = v179;
        *v83 = v178;
        v83[1] = v86;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMR);
        lazy protocol witness table accessor for type _ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
        lazy protocol witness table accessor for type _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
        v87 = v167;
        _ConditionalContent<>.init(storage:)();

        outlined destroy of PacerWorkoutConfigurationView(&v187);
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMR);
        return (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
      }

      else
      {
        type metadata accessor for RaceWorkoutConfiguration();
        v101 = swift_dynamicCastClass();
        if (v101)
        {
          v102 = v101;
          type metadata accessor for WorkoutConfigurationDataSource();
          _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type WorkoutConfigurationDataSource and conformance WorkoutConfigurationDataSource, MEMORY[0x277D7DC28], MEMORY[0x277D7DC20]);
          v103 = v22;
          v104 = EnvironmentObject.init()();
          v161 = v105;
          v162 = v104;
          type metadata accessor for ConfigurationNavigationModel(0);
          _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type ConfigurationNavigationModel and conformance ConfigurationNavigationModel, type metadata accessor for ConfigurationNavigationModel, &protocol conformance descriptor for ConfigurationNavigationModel);
          v160 = EnvironmentObject.init()();
          v158 = v106;
          LOBYTE(v178) = 0;
          State.init(wrappedValue:)();
          LODWORD(v151) = v197;
          v153 = *(&v197 + 1);
          LOBYTE(v178) = 0;
          State.init(wrappedValue:)();
          LODWORD(v152) = v197;
          v157 = *(&v197 + 1);
          _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration, MEMORY[0x277D7D950], MEMORY[0x277D7DA48]);
          v107 = v103;
          v108 = ObservedObject.init(wrappedValue:)();
          v149 = v109;
          v150 = v108;
          type metadata accessor for RaceElevationViewModel(0);
          v110 = swift_allocObject();
          v111 = OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel__state;
          *&v197 = 0;
          v112 = v159;
          v159 = v107;
          *&v163 = v163;
          v113 = v112;
          v114 = v155;
          Published.init(initialValue:)();
          (*(v156 + 32))(v110 + v111, v114, v154);
          v115 = type metadata accessor for RaceRouteDataStore();
          swift_allocObject();
          v116 = v113;
          v117 = RaceRouteDataStore.init(healthStore:)();
          v118 = (v110 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_dataStore);
          v119 = MEMORY[0x277D7E2D8];
          v118[3] = v115;
          v118[4] = v119;
          *v118 = v117;
          *(v110 + OBJC_IVAR____TtC9WorkoutUI22RaceElevationViewModel_workoutConfiguration) = v102;

          _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type RaceElevationViewModel and conformance RaceElevationViewModel, type metadata accessor for RaceElevationViewModel, &protocol conformance descriptor for RaceElevationViewModel);
          v120 = ObservedObject.init(wrappedValue:)();
          v122 = v121;
          v123 = v159;
          v124 = dispatch thunk of WorkoutConfiguration.activityType.getter();
          v125 = MEMORY[0x20F3059A0]();

          v126 = dispatch thunk of WorkoutConfiguration.activityType.getter();
          v127 = static TargetZoneStorage.heartRateTargetZone(activityType:)();

          *&v187 = v162;
          *(&v187 + 1) = v161;
          *&v188 = v160;
          *(&v188 + 1) = v158;
          *&v189 = v150;
          *(&v189 + 1) = v149;
          LOBYTE(v190) = v151;
          *(&v190 + 1) = v197;
          DWORD1(v190) = *(&v197 + 3);
          *(&v190 + 1) = v153;
          v191 = v125;
          v192 = v127;
          *&v193 = v163;
          *(&v193 + 1) = v116;
          *&v194 = *(&v163 + 1);
          *(&v194 + 1) = v120;
          *&v195 = v122;
          BYTE8(v195) = v152;
          HIDWORD(v195) = *(&v178 + 3);
          *(&v195 + 9) = v178;
          v196 = v157;
          *&v205[1] = v157;
          v204 = v194;
          v205[0] = v195;
          v197 = v187;
          v198 = v188;
          v202 = v127;
          v203 = v193;
          v200 = v190;
          v201 = v125;
          v199 = v189;
          _s7SwiftUI19_ConditionalContentV7StorageOy07WorkoutB005PacerF17ConfigurationViewVAF04RacefhI0V_GWOi0_(&v197);
          v175 = v203;
          v176 = v204;
          v177[0] = v205[0];
          *(v177 + 9) = *(v205 + 9);
          v171 = v199;
          v172 = v200;
          v173 = v201;
          v174 = v202;
          v169 = v197;
          v170 = v198;
          outlined init with copy of RaceWorkoutConfigurationView(&v187, &v178);
          outlined init with copy of RaceWorkoutConfigurationView(&v187, &v178);
          lazy protocol witness table accessor for type PacerWorkoutConfigurationView and conformance PacerWorkoutConfigurationView();
          lazy protocol witness table accessor for type RaceWorkoutConfigurationView and conformance RaceWorkoutConfigurationView();
          _ConditionalContent<>.init(storage:)();
          v128 = v185;
          v129 = v164;
          v164[6] = v184;
          v129[7] = v128;
          v129[8] = v186[0];
          *(v129 + 137) = *(v186 + 9);
          v130 = v181;
          v129[2] = v180;
          v129[3] = v130;
          v131 = v183;
          v129[4] = v182;
          v129[5] = v131;
          v132 = v179;
          *v129 = v178;
          v129[1] = v132;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMd, &_s7SwiftUI19_ConditionalContentVy07WorkoutB005PacerE17ConfigurationViewVAD04RaceegH0VGMR);
          lazy protocol witness table accessor for type _ConditionalContent<GoalWorkoutConfigurationView, IntervalWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
          lazy protocol witness table accessor for type _ConditionalContent<PacerWorkoutConfigurationView, RaceWorkoutConfigurationView> and conformance <> _ConditionalContent<A, B>();
          v133 = v167;
          _ConditionalContent<>.init(storage:)();

          outlined destroy of RaceWorkoutConfigurationView(&v187);
          outlined destroy of RaceWorkoutConfigurationView(&v187);
          v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMR);
          return (*(*(v134 - 8) + 56))(v133, 0, 1, v134);
        }

        else
        {
          v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMd, &_s7SwiftUI19_ConditionalContentVyACy07WorkoutB004GoalE17ConfigurationViewVAD08IntervalegH0VGACyAD05PaceregH0VAD04RaceegH0VGGMR);
          v145 = *(*(v144 - 8) + 56);
          v146 = v144;
          v147 = v167;

          return v145(v147, 1, 1, v146);
        }
      }
    }
  }
}

uint64_t key path setter for EnvironmentValues.sizeCategory : EnvironmentValues(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t type metadata accessor for WorkoutConfigurationRow(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutConfigurationRow;
  if (!type metadata singleton initialization cache for WorkoutConfigurationRow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutConfigurationRow(uint64_t a1)
{
  type metadata accessor for EnvironmentObject<ConfigurationNavigationModel>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentObject<WorkoutConfigurationDataSource>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ObservedObject<WorkoutConfiguration>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HKActivityMoveMode(319);
        if (v4 <= 0x3F)
        {
          _sSo21FIUIFormattingManagerCMaTm_6(319, &lazy cache variable for type metadata for FIUIFormattingManager, 0x277D0A7E8);
          if (v5 <= 0x3F)
          {
            _sSo21FIUIFormattingManagerCMaTm_6(319, &lazy cache variable for type metadata for HKHealthStore, 0x277CCD4D8);
            if (v6 <= 0x3F)
            {
              type metadata accessor for State<Bool>();
              if (v7 <= 0x3F)
              {
                type metadata accessor for Environment<ContentSizeCategory>(319);
                if (v8 <= 0x3F)
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

uint64_t _sSo21FIUIFormattingManagerCMaTm_6(uint64_t a1, unint64_t *a2, void *a3)
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

void type metadata accessor for Environment<ContentSizeCategory>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<ContentSizeCategory>)
  {
    type metadata accessor for ContentSizeCategory();
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<ContentSizeCategory>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyAEyAA5ImageVAGGACyACyAgA18_AspectRatioLayoutVGAA06_FrameI0VGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAQyAG5ScaleOGGAA17_FlipForRTLEffectVGAQyAA5ColorVSgGGAA023AccessibilityAttachmentN0VGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>();
    _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined destroy of VStack<TupleView<(<<opaque return type of View.accessibilityAction<A>(action:label:)>>.0, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_61()
{
  v1 = (type metadata accessor for WorkoutConfigurationRow(0) - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA0D12SizeCategoryO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for ContentSizeCategory();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAIyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleK0VyARGGMd, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGAA016_ForegroundStyleK0VyARGGMR);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGMd, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAKyAA5ColorVSgGGAA11_ClipEffectVyAA6CircleVGGAA4TextVGGMR, MEMORY[0x277CDF028]);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _ForegroundStyleModifier<Color> and conformance _ForegroundStyleModifier<A>, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMd, &_s7SwiftUI24_ForegroundStyleModifierVyAA5ColorVGMR, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _ClipEffect<Circle>>, Text>>, _ForegroundStyleModifier<Color>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t _s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGWObTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of WorkoutConfigurationRow(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of WorkoutConfigurationRow(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of HStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>, AccessibilityAttachmentModifier>, _FrameLayout>, VStack<TupleView<(_ConditionalContent<Text, Text>, ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Color?>>?)>>, Spacer, StartButtonView)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<_ConditionalContent<Image, Image>, ModifiedContent<ModifiedContent<Image, _AspectRatioLayout>, _FrameLayout>>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _FlipForRTLEffect>, _EnvironmentKeyWritingModifier<Color?>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of StartButtonView(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9WorkoutUI28ConfigurationNavigationModelCAC7Combine16ObservableObjectAAWlTm_11(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double static RowLayoutConstants.displayImageSize.getter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

double one-time initialization function for insets()
{
  if (one-time initialization token for verticalInset != -1)
  {
    swift_once();
  }

  result = *&static RowLayoutConstants.verticalInset;
  static RowLayoutConstants.insets = static RowLayoutConstants.verticalInset;
  qword_27C7EB300 = static RowLayoutConstants.verticalInset;
  qword_27C7EB308 = 0;
  return result;
}

double static RowLayoutConstants.insets.getter()
{
  if (one-time initialization token for insets != -1)
  {
    swift_once();
  }

  return *&static RowLayoutConstants.insets;
}

uint64_t getEnumTagSinglePayload for RowLayoutConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RowLayoutConstants(_WORD *result, int a2, int a3)
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

uint64_t StrideLengthMetricView.init(metricType:strideLength:formattingManager:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 24) = a4;
  return result;
}

uint64_t StrideLengthMetricView.metricDescription.getter()
{
  if (*v0 == 26)
  {
    v1 = "CURRENT_STRIDE_LENGTH_METRIC_DESCRIPTION";
  }

  else
  {
    if (*v0 != 27)
    {
      return 0xD000000000000012;
    }

    v1 = "AVERAGE_STRIDE_LENGTH_METRIC_DESCRIPTION";
  }

  v2 = v1 - 32;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = WorkoutUIBundle.super.isa;
  v9._object = 0xE000000000000000;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._object = (v2 | 0x8000000000000000);
  v5._countAndFlagsBits = 0xD000000000000028;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v9)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t StrideLengthMetricView.valueString.getter(double a1)
{
  v2 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  if (*(v1 + 16))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v14 = WorkoutUIBundle.super.isa;
    v22._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0x4E5F43495254454DLL;
    v15._object = 0xEE0045554C41564FLL;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v16.value._object = 0xEB00000000656C62;
    v17._countAndFlagsBits = 0;
    v17._object = 0xE000000000000000;
    v22._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v22)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    v21[0] = *(v1 + 8);
    static Locale.autoupdatingCurrent.getter();
    lazy protocol witness table accessor for type Double and conformance Double();
    FloatingPointFormatStyle.init(locale:)();
    static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
    MEMORY[0x20F3024C0](v5, v7);
    (*(v3 + 8))(v5, v2);
    v20 = *(v8 + 8);
    v20(v10, v7);
    _sSaySSGSayxGSKsWlTm_2(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>, &_s10Foundation24FloatingPointFormatStyleVySdGMd, &_s10Foundation24FloatingPointFormatStyleVySdGMR, MEMORY[0x277CC9168]);
    BinaryFloatingPoint.formatted<A>(_:)();
    v20(v13, v7);
    return v21[1];
  }
}

id StrideLengthMetricView.accessibilityLabel.getter()
{
  if (*(v0 + 16))
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = WorkoutUIBundle.super.isa;
    v28._object = 0xE000000000000000;
    v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v2.value._object = 0xEB00000000656C62;
    v3._object = 0x800000020CB9E060;
    v3._countAndFlagsBits = 0xD000000000000018;
    v4._countAndFlagsBits = 0;
    v4._object = 0xE000000000000000;
    v28._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v2, v1, v4, v28)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v6 = *(v0 + 24);
  v7 = *(v0 + 8);
  v24 = *v0;
  v8 = v24;
  v25 = v7;
  v26 = 0;
  v27 = v6;
  v23[2] = StrideLengthMetricView.metricDescription.getter();
  v23[3] = v9;
  v23[0] = 10;
  v23[1] = 0xE100000000000000;
  v22[0] = 32;
  v22[1] = 0xE100000000000000;
  v10 = lazy protocol witness table accessor for type String and conformance String();
  v12 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)(v23, v22, 0, 0, 0, 1, MEMORY[0x277D837D0], MEMORY[0x277D837D0], v11, MEMORY[0x277D837D0], v10, v10, v10);
  v14 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_20CB5EA80;
  v24 = v8;
  v25 = v7;
  v26 = 0;
  v27 = v6;
  *(v15 + 32) = StrideLengthMetricView.valueString.getter(COERCE_DOUBLE(3));
  *(v15 + 40) = v16;
  result = [v6 localizedShortUnitStringForDistanceUnit_];
  if (result)
  {
    v18 = result;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    *(v15 + 48) = v19;
    *(v15 + 56) = v21;
    *(v15 + 64) = v12;
    *(v15 + 72) = v14;
    v24 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    _sSaySSGSayxGSKsWlTm_2(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    countAndFlagsBits = BidirectionalCollection<>.joined(separator:)();

    return countAndFlagsBits;
  }

  __break(1u);
  return result;
}

id StrideLengthMetricView.body.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = StrideLengthMetricView.valueString.getter(a2);
  v17 = v7;
  v18 = v6;
  if (v4)
  {
    v8 = 0;
    v9 = 0xE000000000000000;
LABEL_5:
    v13 = StrideLengthMetricView.metricDescription.getter();
    v15 = v14;
    result = StrideLengthMetricView.accessibilityLabel.getter();
    *a1 = v18;
    *(a1 + 8) = v17;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    *(a1 + 32) = v13;
    *(a1 + 40) = v15;
    *(a1 + 48) = 0;
    *(a1 + 56) = result;
    *(a1 + 64) = v16;
    return result;
  }

  result = [v5 localizedShortUnitStringForDistanceUnit_];
  if (result)
  {
    v11 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v12;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for StrideLengthMetricView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StrideLengthMetricView(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t _sSaySSGSayxGSKsWlTm_2(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

double PacerRow.init(secondsAheadOfPacer:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  v4 = *algn_27C80EFC8;
  v5 = qword_27C80EFD0;
  *(a1 + 8) = static BarConfiguration.standard;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = swift_getKeyPath();
  *(a1 + 40) = 0;
  *a1 = a2;

  return result;
}

void PacerRow.body.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v9 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  if (*(v1 + 40) == 1)
  {
    v23 = *(v1 + 32);
  }

  else
  {

    outlined copy of Environment<WorkoutViewStyle>.Content(v11, 0);
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<WorkoutViewStyle>.Content(v11, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v11) = v23;
  }

  KeyPath = swift_getKeyPath();
  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI4EdgeO3SetVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20CB5DA80;
  v15 = static Edge.Set.leading.getter();
  *(inited + 32) = v15;
  v16 = static Edge.Set.trailing.getter();
  *(inited + 33) = v16;
  v17 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v15)
  {
    v17 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v16)
  {
    v17 = Edge.Set.init(rawValue:)();
  }

  EdgeInsets.init(_all:)();
  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  *(a1 + 32) = round(v7);
  *(a1 + 40) = v11;
  *(a1 + 48) = 0x4066800000000000;
  *(a1 + 56) = KeyPath;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v17;
  *(a1 + 88) = v18;
  *(a1 + 96) = v19;
  *(a1 + 104) = v20;
  *(a1 + 112) = v21;
  *(a1 + 120) = 0;
}

uint64_t getEnumTagSinglePayload for PacerRow(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for PacerRow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PacerView, MetricRow>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerView, MetricRow>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerView, MetricRow>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy07WorkoutB09PacerViewVAD9MetricRowVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACy07WorkoutB09PacerViewVAD9MetricRowVGAA14_PaddingLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<PacerView, MetricRow> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PacerView, MetricRow>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PacerView, MetricRow> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PacerView, MetricRow> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PacerView, MetricRow> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB09PacerViewVAD9MetricRowVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB09PacerViewVAD9MetricRowVGMR);
    lazy protocol witness table accessor for type PacerView and conformance PacerView();
    lazy protocol witness table accessor for type MetricRow and conformance MetricRow();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PacerView, MetricRow> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PacerView and conformance PacerView()
{
  result = lazy protocol witness table cache variable for type PacerView and conformance PacerView;
  if (!lazy protocol witness table cache variable for type PacerView and conformance PacerView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PacerView and conformance PacerView);
  }

  return result;
}

uint64_t type metadata accessor for EffortZoneView(uint64_t a1)
{
  result = type metadata singleton initialization cache for EffortZoneView;
  if (!type metadata singleton initialization cache for EffortZoneView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for EffortZoneView(uint64_t a1)
{
  type metadata accessor for [Int](319, &lazy cache variable for type metadata for [Int], MEMORY[0x277D83B88], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Int](319, &lazy cache variable for type metadata for Binding<Double>, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      v3 = MEMORY[0x277D839B0];
      type metadata accessor for [Int](319, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v4 <= 0x3F)
      {
        type metadata accessor for [Int](319, &lazy cache variable for type metadata for State<Bool>, v3, MEMORY[0x277CE10B8]);
        if (v5 <= 0x3F)
        {
          type metadata accessor for Environment<LayoutDirection>(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [Int](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void EffortZoneView.ranges.getter()
{
  v1 = *(v0 + 24);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v1;
    v5 = (v2 + 32);
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      v7 = *v5++;
      v8 = v4 + v7;
      if (__OFADD__(v4, v7))
      {
        break;
      }

      v9 = v8 - 1;
      if (__OFSUB__(v8, 1))
      {
        goto LABEL_17;
      }

      if (v9 < v4)
      {
        goto LABEL_18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      v12 = &v6[16 * v11];
      *(v12 + 4) = v4;
      *(v12 + 5) = v9;
      v4 = v8;
      if (!--v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }
}

uint64_t closure #1 in EffortZoneView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a3;
  v87 = type metadata accessor for AccessibilityChildBehavior();
  v83 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v95 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for GeometryProxy();
  v84 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v76 = v6;
  v79 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocalCoordinateSpace();
  MEMORY[0x28223BE20](v7);
  v89 = type metadata accessor for DragGesture();
  v78 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMR);
  v80 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v85 = &v72 - v9;
  v10 = type metadata accessor for EffortZoneView(0);
  v97 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v96 = v11;
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA5GroupVyAA9TupleViewVyACy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsCyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAIyAA6SpacerV_ACyACyAPyARyASSiACyAPyACyACyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAXGAA09_PositionV0VGAA07_ShadowO0VGGSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA5GroupVyAA9TupleViewVyACy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsCyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAIyAA6SpacerV_ACyACyAPyARyASSiACyAPyACyACyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAXGAA09_PositionV0VGAA07_ShadowO0VGGSgGGMR);
  MEMORY[0x28223BE20](v13);
  v15 = (&v72 - v14);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA5GroupVyAA05TupleC0VyAJy07WorkoutB022EffortButtonBackgroundVAA01_G15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAzJyAQ14RightTrapezoidVAA12_FrameLayoutVGGGGG_AWyAYyA_AzA6VStackVyAPyAA6SpacerV_AJyAJyAWyAYyAZSiAJyAWyAJyAJyAA6CircleVA3_GAA08_OpacityR0VGGA3_GGGA3_GAA08_PaddingY0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyAJyAJyAJyAJyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA3_GAA09_PositionY0VGAA07_ShadowR0VGGSgGG_AA08_ChangedF0VyAA04DragF0VGQo_Md, &_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA5GroupVyAA05TupleC0VyAJy07WorkoutB022EffortButtonBackgroundVAA01_G15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAzJyAQ14RightTrapezoidVAA12_FrameLayoutVGGGGG_AWyAYyA_AzA6VStackVyAPyAA6SpacerV_AJyAJyAWyAYyAZSiAJyAWyAJyAJyAA6CircleVA3_GAA08_OpacityR0VGGA3_GGGA3_GAA08_PaddingY0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyAJyAJyAJyAJyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA3_GAA09_PositionY0VGAA07_ShadowR0VGGSgGG_AA08_ChangedF0VyAA04DragF0VGQo_MR);
  v81 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v77 = &v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA5GroupVyAA05TupleC0VyANy07WorkoutB022EffortButtonBackgroundVAA01_M15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGA2_ANyAU14RightTrapezoidVAA12_FrameLayoutVGGGGG_A_yA1_yA3_A2_AA6VStackVyATyAA6SpacerV_ANyANyA_yA1_yA2_SiANyA_yANyANyAA6CircleVA7_GAA08_OpacityX0VGGA7_GGGA7_GAA14_PaddingLayoutVGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyANyANyANyANyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA7_GAA15_PositionLayoutVGAA07_ShadowX0VGGSgGG_AA08_ChangedL0VyAA04DragL0VGQo__Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAcAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyAA15ModifiedContentVyAA6ZStackVyAA5GroupVyAA05TupleC0VyANy07WorkoutB022EffortButtonBackgroundVAA01_M15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGA2_ANyAU14RightTrapezoidVAA12_FrameLayoutVGGGGG_A_yA1_yA3_A2_AA6VStackVyATyAA6SpacerV_ANyANyA_yA1_yA2_SiANyA_yANyANyAA6CircleVA7_GAA08_OpacityX0VGGA7_GGGA7_GAA14_PaddingLayoutVGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyANyANyANyANyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA7_GAA15_PositionLayoutVGAA07_ShadowX0VGGSgGG_AA08_ChangedL0VyAA04DragL0VGQo__Qo_MR);
  v92 = *(v17 - 8);
  v93 = v17;
  MEMORY[0x28223BE20](v17);
  v86 = &v72 - v18;
  GeometryProxy.size.getter();
  v20 = v19;
  GeometryProxy.size.getter();
  v22 = v21;
  v23 = *a2;
  *v15 = static Alignment.center.getter();
  v15[1] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA5GroupVyAA05TupleD0VyAA15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAwMyAN14RightTrapezoidVAA06_FrameG0VGGGGG_ATyAVyAxwA6VStackVyAKyAA6SpacerV_AMyAMyATyAVyAWSiAMyATyAMyAMyAA6CircleVA0_GAA08_OpacityR0VGGA0_GGGA0_GAA08_PaddingG0VGtGGGGtGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA5GroupVyAA05TupleD0VyAA15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAwMyAN14RightTrapezoidVAA06_FrameG0VGGGGG_ATyAVyAxwA6VStackVyAKyAA6SpacerV_AMyAMyATyAVyAWSiAMyATyAMyAMyAA6CircleVA0_GAA08_OpacityR0VGGA0_GGGA0_GAA08_PaddingG0VGtGGGGtGGGMR);
  closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(a2, v15 + *(v25 + 44), v20, v22, v23);
  v26 = static Alignment.center.getter();
  v75 = v27;
  v28 = a2[6];
  v29 = a2[7];
  v98 = a2[5];
  v99 = v28;
  v100 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  MEMORY[0x20F30B100](v102, v30);
  v31 = 0;
  v32 = 0;
  if (v102[0] > 0.0)
  {
    outlined init with copy of EffortZoneView(a2, v12);
    v33 = (*(v97 + 80) + 40) & ~*(v97 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v20;
    *(v32 + 24) = v22;
    *(v32 + 32) = v23;
    outlined init with take of EffortZoneView(v12, v32 + v33);
    v31 = partial apply for closure #1 in closure #2 in closure #1 in EffortZoneView.body.getter;
  }

  v34 = (v15 + *(v13 + 36));
  *v34 = v31;
  v34[1] = v32;
  v35 = v75;
  v34[2] = v26;
  v34[3] = v35;
  static CoordinateSpaceProtocol<>.local.getter();
  v72 = v13;
  v36 = v82;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v74 = a2;
  v37 = v12;
  v73 = v12;
  outlined init with copy of EffortZoneView(a2, v12);
  v38 = v84;
  v39 = v79;
  v40 = v88;
  (*(v84 + 16))(v79, a1, v88);
  v41 = *(v97 + 80);
  v97 = ((v41 + 16) & ~v41) + v96;
  v42 = (v41 + 16) & ~v41;
  v75 = v42;
  v96 = v41 | 7;
  v43 = (v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v38 + 80) + v43 + 24) & ~*(v38 + 80);
  v45 = swift_allocObject();
  outlined init with take of EffortZoneView(v37, v45 + v42);
  v46 = (v45 + v43);
  *v46 = v20;
  v46[1] = v22;
  v46[2] = v23;
  (*(v38 + 32))(v45 + v44, v39, v40);
  _s7SwiftUI11DragGestureVAcA0D0AAWlTm_0(&lazy protocol witness table cache variable for type DragGesture and conformance DragGesture, MEMORY[0x277CDD730], MEMORY[0x277CDD728]);
  _s7SwiftUI11DragGestureVAcA0D0AAWlTm_0(&lazy protocol witness table cache variable for type DragGesture.Value and conformance DragGesture.Value, MEMORY[0x277CDD708], MEMORY[0x277CDD710]);
  v47 = v85;
  v48 = v89;
  Gesture<>.onChanged(_:)();

  (*(v78 + 8))(v36, v48);
  static GestureMask.all.getter();
  v49 = lazy protocol witness table accessor for type ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>> and conformance <> ModifiedContent<A, B>();
  v50 = lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _ChangedGesture<DragGesture> and conformance _ChangedGesture<A>, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMd, &_s7SwiftUI15_ChangedGestureVyAA04DragD0VGMR, MEMORY[0x277CDFB18]);
  v51 = v77;
  v52 = v72;
  v53 = v94;
  View.gesture<A>(_:including:)();
  (*(v80 + 8))(v47, v53);
  outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v15, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA5GroupVyAA9TupleViewVyACy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsCyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAIyAA6SpacerV_ACyACyAPyARyASSiACyAPyACyACyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAXGAA09_PositionV0VGAA07_ShadowO0VGGSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA5GroupVyAA9TupleViewVyACy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsCyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAIyAA6SpacerV_ACyACyAPyARyASSiACyAPyACyACyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAXGAA09_PositionV0VGAA07_ShadowO0VGGSgGGMR);
  v54 = v95;
  static AccessibilityChildBehavior.ignore.getter();
  v98 = v52;
  v99 = v53;
  v100 = v49;
  v101 = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = v86;
  v57 = v90;
  View.accessibilityElement(children:)();
  (*(v83 + 8))(v54, v87);
  v58 = (*(v81 + 8))(v51, v57);
  MEMORY[0x28223BE20](v58);
  v59 = v74;
  *(&v72 - 2) = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7StepperVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA7StepperVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
  v60 = v73;
  v98 = v57;
  v99 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ModifiedContent<Stepper<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
  v61 = v91;
  v62 = v93;
  View.accessibilityRepresentation<A>(representation:)();
  (*(v92 + 8))(v56, v62);
  v63 = (v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaDRd__lFQOyAeAE0F7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA6ZStackVyAA5GroupVyAA05TupleE0VyACy07WorkoutB022EffortButtonBackgroundVAA01_Q15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGA4_ACyAW14RightTrapezoidVAA12_FrameLayoutVGGGGG_A1_yA3_yA5_A4_AA6VStackVyAVyAA6SpacerV_ACyACyA1_yA3_yA4_SiACyA1_yACyACyAA6CircleVA9_GAA08_OpacityZ0VGGA9_GGGA9_GAA14_PaddingLayoutVGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA9_GAA15_PositionLayoutVGAA07_ShadowZ0VGGSgGG_AA08_ChangedP0VyAA04DragP0VGQo__Qo__ACyAA7StepperVyAA4TextVGAA0K18AttachmentModifierVGQo_AA01_D17ShapeKindModifierVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaDRd__lFQOyAeAE0F7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA6ZStackVyAA5GroupVyAA05TupleE0VyACy07WorkoutB022EffortButtonBackgroundVAA01_Q15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGA4_ACyAW14RightTrapezoidVAA12_FrameLayoutVGGGGG_A1_yA3_yA5_A4_AA6VStackVyAVyAA6SpacerV_ACyACyA1_yA3_yA4_SiACyA1_yACyACyAA6CircleVA9_GAA08_OpacityZ0VGGA9_GGGA9_GAA14_PaddingLayoutVGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA9_GAA15_PositionLayoutVGAA07_ShadowZ0VGGSgGG_AA08_ChangedP0VyAA04DragP0VGQo__Qo__ACyAA7StepperVyAA4TextVGAA0K18AttachmentModifierVGQo_AA01_D17ShapeKindModifierVyAA16RoundedRectangleVGGMR) + 36));
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA16RoundedRectangleVGMR);
  static ContentShapeKinds.accessibility.getter();
  v65 = (v20 + v23 * -3.0) / 10.0 * 0.5;
  v66 = *(type metadata accessor for RoundedRectangle() + 20);
  v67 = *MEMORY[0x277CE0118];
  v68 = type metadata accessor for RoundedCornerStyle();
  (*(*(v68 - 8) + 104))(v63 + v66, v67, v68);
  *v63 = v65;
  v63[1] = v65;
  *(v63 + *(v64 + 36)) = 0;
  outlined init with copy of EffortZoneView(v59, v60);
  v69 = swift_allocObject();
  outlined init with take of EffortZoneView(v60, v69 + v75);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaDRd__lFQOyAeAE0F7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA6ZStackVyAA5GroupVyAA05TupleE0VyACy07WorkoutB022EffortButtonBackgroundVAA01_Q15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGA4_ACyAW14RightTrapezoidVAA12_FrameLayoutVGGGGG_A1_yA3_yA5_A4_AA6VStackVyAVyAA6SpacerV_ACyACyA1_yA3_yA4_SiACyA1_yACyACyAA6CircleVA9_GAA08_OpacityZ0VGGA9_GGGA9_GAA14_PaddingLayoutVGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA9_GAA15_PositionLayoutVGAA07_ShadowZ0VGGSgGG_AA08_ChangedP0VyAA04DragP0VGQo__Qo__ACyAA7StepperVyAA4TextVGAA0K18AttachmentModifierVGQo_AA01_D17ShapeKindModifierVyAA16RoundedRectangleVGGAA25_AppearanceActionModifierVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE27accessibilityRepresentation14representationQrqd__yXE_tAaDRd__lFQOyAeAE0F7Element8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0P0Rd__lFQOyACyAA6ZStackVyAA5GroupVyAA05TupleE0VyACy07WorkoutB022EffortButtonBackgroundVAA01_Q15AlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGA4_ACyAW14RightTrapezoidVAA12_FrameLayoutVGGGGG_A1_yA3_yA5_A4_AA6VStackVyAVyAA6SpacerV_ACyACyA1_yA3_yA4_SiACyA1_yACyACyAA6CircleVA9_GAA08_OpacityZ0VGGA9_GGGA9_GAA14_PaddingLayoutVGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGA9_GAA15_PositionLayoutVGAA07_ShadowZ0VGGSgGG_AA08_ChangedP0VyAA04DragP0VGQo__Qo__ACyAA7StepperVyAA4TextVGAA0K18AttachmentModifierVGQo_AA01_D17ShapeKindModifierVyAA16RoundedRectangleVGGAA25_AppearanceActionModifierVGMR);
  v71 = (v61 + *(result + 36));
  *v71 = partial apply for closure #5 in closure #1 in EffortZoneView.body.getter;
  v71[1] = v69;
  v71[2] = 0;
  v71[3] = 0;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v52 = a2;
  v9 = type metadata accessor for EffortZoneView(0);
  v49 = *(v9 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMR);
  MEMORY[0x28223BE20](v11 - 8);
  v51 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMR);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v50 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v42 - v20;
  v44 = (v42 - v20);
  v22 = static Alignment.center.getter();
  v45 = v23;
  v46 = v22;
  v24 = &v21[*(v17 + 44)];
  v25 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAhA15ModifiedContentVy07WorkoutB014RightTrapezoidVAA12_FrameLayoutVGGGGMd, &_s7SwiftUI20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAhA15ModifiedContentVy07WorkoutB014RightTrapezoidVAA12_FrameLayoutVGGGGMR) + 36)];
  v26 = static VerticalAlignment.bottom.getter();
  v43 = a1;
  v27 = *a1;
  *v25 = v26;
  *(v25 + 1) = v27;
  v25[16] = 0;
  v42[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySaySNySiGGAjA15ModifiedContentVy07WorkoutB014RightTrapezoidVAA06_FrameG0VGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySaySNySiGGAjA15ModifiedContentVy07WorkoutB014RightTrapezoidVAA06_FrameG0VGGGMR) + 44);
  EffortZoneView.ranges.getter();
  v53 = v28;
  swift_getKeyPath();
  v29 = swift_allocObject();
  v29[2] = a3;
  v29[3] = a4;
  v29[4] = a5;
  v42[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySNySiGGMd, &_sSaySNySiGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB014RightTrapezoidVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB014RightTrapezoidVAA12_FrameLayoutVGMR);
  lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type [ClosedRange<Int>] and conformance [A], &_sSaySNySiGGMd, &_sSaySNySiGGMR, MEMORY[0x277D83980]);
  lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
  lazy protocol witness table accessor for type ModifiedContent<RightTrapezoid, _FrameLayout> and conformance <> ModifiedContent<A, B>();
  ForEach<>.init(_:id:content:)();
  v30 = v45;
  *v24 = v46;
  *(v24 + 1) = v30;
  v31 = v44;
  *v44 = 0;
  *v15 = static VerticalAlignment.bottom.getter();
  *(v15 + 1) = v27;
  v15[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySaySNySiGGAjA6VStackVyAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyASyAA0F0VyAIyAJSiASyAUyASyASyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVGGAYGGGAYGAA08_PaddingG0VGtGGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySaySNySiGGAjA6VStackVyAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyASyAA0F0VyAIyAJSiASyAUyASyASyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVGGAYGGGAYGAA08_PaddingG0VGtGGGGMR);
  v32 = v43;
  EffortZoneView.ranges.getter();
  v53 = v33;
  swift_getKeyPath();
  v34 = v47;
  outlined init with copy of EffortZoneView(v32, v47);
  v35 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v36 = swift_allocObject();
  v36[2] = a3;
  v36[3] = a4;
  v36[4] = a5;
  outlined init with take of EffortZoneView(v34, v36 + v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAA7ForEachVySNySiGSiAIyAKyAIyAIyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGARGGGARGAA08_PaddingN0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAA7ForEachVySNySiGSiAIyAKyAIyAIyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGARGGGARGAA08_PaddingN0VGtGGMR);
  lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAA7ForEachVySNySiGSiAIyAKyAIyAIyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGARGGGARGAA08_PaddingN0VGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAIyAA6HStackVyAA7ForEachVySNySiGSiAIyAKyAIyAIyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGARGGGARGAA08_PaddingN0VGtGGMR, MEMORY[0x277CE1198]);
  ForEach<>.init(_:id:content:)();
  v37 = v50;
  outlined init with copy of Environment<LayoutDirection>.Content(v31, v50, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMR);
  v38 = v51;
  outlined init with copy of Environment<LayoutDirection>.Content(v15, v51, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMR);
  v39 = v52;
  outlined init with copy of Environment<LayoutDirection>.Content(v37, v52, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMR);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGG_AJyALyAnmA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyAJyALyAMSiACyAJyACyACyAA6CircleVARGAA08_OpacityK0VGGARGGGARGAA08_PaddingR0VGtGGGGtMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGG_AJyALyAnmA6VStackVyAA9TupleViewVyAA6SpacerV_ACyACyAJyALyAMSiACyAJyACyACyAA6CircleVARGAA08_OpacityK0VGGARGGGARGAA08_PaddingR0VGtGGGGtMR);
  outlined init with copy of Environment<LayoutDirection>.Content(v38, v39 + *(v40 + 48), &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMR);
  outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v15, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMR);
  outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v31, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMR);
  outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v38, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMd, &_s7SwiftUI6HStackVyAA7ForEachVySaySNySiGGAfA6VStackVyAA9TupleViewVyAA6SpacerV_AA15ModifiedContentVyAOyACyAEyAFSiAOyACyAOyAOyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGASGGGASGAA08_PaddingN0VGtGGGGMR);
  return outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v37, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMd, &_s7SwiftUI15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAmCyAD14RightTrapezoidVAA12_FrameLayoutVGGGGGMR);
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = EffortGraphLayout.horizontalUnitDistance(level:)(*a1);
  *&v19 = a3;
  *(&v19 + 1) = a4;
  *&v20 = a5;
  v12 = EffortGraphLayout.horizontalUnitDistance(level:)(v10);
  if (__OFSUB__(v10, v9))
  {
    __break(1u);
  }

  else if (!__OFADD__(v10 - v9, 1))
  {
    v13 = (a3 + a5 * -3.0) / 10.0;
    v14 = v13 * 0.5;
    v15 = v13 / a4;
    v16 = 1.0 - v13 / a4;
    v17 = v13 / a4 + v16 * v12;
    v18 = v15 + v16 * v11;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *a2 = v18;
    *(a2 + 8) = v17;
    *(a2 + 16) = v14;
    *(a2 + 24) = v19;
    *(a2 + 40) = v20;
    *(a2 + 56) = v21;
    return;
  }

  __break(1u);
}

void closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v12 = type metadata accessor for EffortZoneView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMR);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v21 = a1[1];
  v22 = v21 - *a1;
  if (__OFSUB__(v21, *a1))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (__OFADD__(v22, 1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v38 = v18;
  v39 = v17;
  v23 = a2;
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA6HStackVyAA7ForEachVySNySiGSiAMyAOyAMyAMyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVGGAVGGGAVGAA08_PaddingG0VGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA6SpacerV_AA15ModifiedContentVyAMyAA6HStackVyAA7ForEachVySNySiGSiAMyAOyAMyAMyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVGGAVGGGAVGAA08_PaddingG0VGtGGMR) + 44);
  *v20 = static VerticalAlignment.bottom.getter();
  *(v20 + 1) = 0;
  v20[16] = 0;
  if ((v22 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySNySiGSiAA15ModifiedContentVyAA0F0VyALyALyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVGGARGGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA7ForEachVySNySiGSiAA15ModifiedContentVyAA0F0VyALyALyAA6CircleVAA06_FrameG0VGAA14_OpacityEffectVGGARGGGMR);
    v25 = a3 + v24;
    *&v40 = 0;
    *(&v40 + 1) = v22;
    swift_getKeyPath();
    outlined init with copy of EffortZoneView(v23, &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v27 = swift_allocObject();
    outlined init with take of EffortZoneView(&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
    v28 = (v27 + ((v14 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v28 = a4;
    v28[1] = a5;
    v28[2] = a6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNySiGMd, &_sSNySiGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGAIGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGAIGMR);
    lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>();
    lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    ForEach<>.init(_:id:content:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v29 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGMR) + 36)];
    v30 = v41;
    *v29 = v40;
    *(v29 + 1) = v30;
    *(v29 + 2) = v42;
    LOBYTE(v27) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v31 = v38;
    v32 = &v20[*(v39 + 36)];
    *v32 = v27;
    *(v32 + 1) = v33;
    *(v32 + 2) = v34;
    *(v32 + 3) = v35;
    *(v32 + 4) = v36;
    v32[40] = 0;
    outlined init with copy of Environment<LayoutDirection>.Content(v20, v31, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMR);
    *v25 = 0;
    *(v25 + 8) = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA6HStackVyAA7ForEachVySNySiGSiAEyAGyAEyAEyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGANGGGANGAA08_PaddingK0VGtMd, &_s7SwiftUI6SpacerV_AA15ModifiedContentVyAEyAA6HStackVyAA7ForEachVySNySiGSiAEyAGyAEyAEyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGANGGGANGAA08_PaddingK0VGtMR);
    outlined init with copy of Environment<LayoutDirection>.Content(v31, v25 + *(v37 + 48), &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMR);
    outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v20, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMR);
    outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(v31, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA7ForEachVySNySiGSiACyAEyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGALGGGALGAA08_PaddingJ0VGMR);
    return;
  }

LABEL_7:
  __break(1u);
}

double closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter@<D0>(uint64_t a3@<X8>)
{
  v6 = static VerticalAlignment.center.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 24) = v8;
  *(a3 + 32) = v9;
  *(a3 + 40) = v10;
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  *(a3 + 64) = v13;
  *(a3 + 72) = 0x3FD6666666666666;
  *(a3 + 80) = v14;
  *(a3 + 96) = v15;
  result = *&v16;
  *(a3 + 112) = v16;
  return result;
}

void *closure #1 in closure #2 in closure #1 in EffortZoneView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = *(a1 + 96);
  LOBYTE(v33) = *(a1 + 88);
  *(&v33 + 1) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  v11 = 1.0;
  if (LOBYTE(v32))
  {
    goto LABEL_5;
  }

  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  *&v33 = *(a1 + 40);
  *(&v33 + 1) = v12;
  *&v34 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  result = MEMORY[0x20F30B100](&v32, v14);
  v11 = round(v32);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v11 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v11 < 9.22337204e18)
    {
LABEL_5:
      v16 = v11;
      v17 = (a3 + a5 * -3.0) / 10.0;
      *&v33 = a3;
      *(&v33 + 1) = a4;
      *&v34 = a5;
      v18 = v17 / a4 + (1.0 - v17 / a4) * EffortGraphLayout.horizontalUnitDistance(level:)(v11);
      GeometryProxy.size.getter();
      v20 = v18 * v19;
      *&v33 = a3;
      *(&v33 + 1) = a4;
      *&v34 = a5;
      v21 = EffortGraphLayout.xStartForLevel(_:)(v16);
      v22 = *MEMORY[0x277CE0118];
      v23 = type metadata accessor for RoundedCornerStyle();
      (*(*(v23 - 8) + 104))(a2, v22, v23);
      v24 = static Color.white.getter();
      *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGMd, &_s7SwiftUI15ModifiedContentVyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGMR) + 36)) = v24;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v25 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGMR) + 36));
      v26 = v34;
      *v25 = v33;
      v25[1] = v26;
      v25[2] = v35;
      GeometryProxy.size.getter();
      v28 = v27 - v20 * 0.5;
      v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGAA09_PositionK0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGAA09_PositionK0VGMR) + 36));
      *v29 = v17 * 0.5 + v21;
      v29[1] = v28;
      v30 = Color.opacity(_:)();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGAA09_PositionK0VGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAA12_FrameLayoutVGAA09_PositionK0VGAA13_ShadowEffectVGMR);
      v31 = a2 + *(result + 9);
      *v31 = v30;
      *(v31 + 8) = xmmword_20CB7E4D0;
      *(v31 + 24) = 0x4000000000000000;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void closure #3 in closure #1 in EffortZoneView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v56 = a3;
  v63 = a1;
  v55 = type metadata accessor for EnvironmentValues();
  v9 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
  MEMORY[0x28223BE20](v62);
  v12 = &v50 - v11;
  v13 = type metadata accessor for LayoutDirection();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - v18;
  v64 = a2;
  v20 = *(a2 + 32);
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = 0;
    v23 = (v20 + 32);
    v24 = *(v20 + 16);
    while (1)
    {
      v25 = *v23++;
      v26 = __OFADD__(v22, v25);
      v22 += v25;
      if (v26)
      {
        break;
      }

      if (!--v24)
      {
        v27 = v22;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v27 = 0.0;
LABEL_7:
  v66 = v27;
  v28 = *(v64 + 24);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_36;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v29 = 0;
  if (v21)
  {
    v30 = (v20 + 32);
    while (1)
    {
      v31 = *v30++;
      v26 = __OFADD__(v29, v31);
      v29 += v31;
      if (v26)
      {
        break;
      }

      if (!--v21)
      {
        goto LABEL_14;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_14:
  v32 = v28;
  if (v29 < v28)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v61 = v19;
  v33 = (a4 + a6 * -3.0) / 10.0;
  v60 = *(type metadata accessor for EffortZoneView(0) + 52);
  v52 = (v9 + 8);
  v51 = (v14 + 32);
  v59 = *MEMORY[0x277CDFA88];
  v57 = (v14 + 8);
  v58 = (v14 + 104);
  v53 = v16;
  while (1)
  {
    v34 = 3.0;
    if ((v32 - 1) <= 7)
    {
      v34 = dbl_20CB7E670[v32 - 1];
    }

    outlined init with copy of Environment<LayoutDirection>.Content(v64 + v60, v12, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v61;
      (*v51)(v61, v12, v13);
    }

    else
    {
      static os_log_type_t.fault.getter();
      v36 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v16 = v53;
      v37 = v54;
      EnvironmentValues.init()();
      v35 = v61;
      swift_getAtKeyPath();

      (*v52)(v37, v55);
    }

    (*v58)(v16, v59, v13);
    v38 = static LayoutDirection.== infix(_:_:)();
    v39 = *v57;
    (*v57)(v16, v13);
    v39(v35, v13);
    if (v38)
    {
      DragGesture.Value.location.getter();
    }

    else
    {
      GeometryProxy.size.getter();
      v42 = v41;
      DragGesture.Value.location.getter();
      v40 = v42 - v43;
    }

    v44 = v32;
    if (v40 <= v33 + v33 * (v32 + -1.0) + v34 * a6)
    {
      goto LABEL_29;
    }

    v45 = v32;
    if (v32 == v29)
    {
      break;
    }

    ++v32;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
LABEL_29:
      v66 = v44;
      goto LABEL_31;
    }
  }

  v44 = v27;
LABEL_31:
  v46 = *(v64 + 48);
  v47 = *(v64 + 56);
  v65[1] = *(v64 + 40);
  v65[2] = v46;
  v65[3] = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  v49 = MEMORY[0x20F30B100](v65, v48);
  if (v44 != v65[0])
  {
    MEMORY[0x28223BE20](v49);
    *(&v50 - 2) = v64;
    *(&v50 - 1) = &v66;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t closure #1 in closure #3 in closure #1 in EffortZoneView.body.getter(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  Binding.wrappedValue.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  return Binding.wrappedValue.setter();
}

void *closure #4 in closure #1 in EffortZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for EffortZoneView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7StepperVyAA4TextVGMd, &_s7SwiftUI7StepperVyAA4TextVGMR);
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v39 - v11;
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v13 = WorkoutUIBundle.super.isa;
  v45._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0x415F54524F464645;
  v14._object = 0xEF454C5449545F58;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v45);

  v43 = v17;
  outlined init with copy of EffortZoneView(a1, v9);
  v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v19 = swift_allocObject();
  outlined init with take of EffortZoneView(v9, v19 + v18);
  outlined init with copy of EffortZoneView(a1, v6);
  v20 = swift_allocObject();
  outlined init with take of EffortZoneView(v6, v20 + v18);
  lazy protocol witness table accessor for type String and conformance String();
  Stepper<>.init<A>(_:onIncrement:onDecrement:onEditingChanged:)();
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  v43._countAndFlagsBits = v21;
  v43._object = v22;
  v44 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  MEMORY[0x20F30B100](&v42);
  if (v42 == 0.0 || (v25 = *(a1 + 72), v26 = *(a1 + 80), v43._countAndFlagsBits = *(a1 + 64), v43._object = v25, LOBYTE(v44) = v26, v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR), MEMORY[0x20F30B100](&v42, v27), LOBYTE(v42) == 1))
  {
    v28 = WorkoutUIBundle.super.isa;
    v46._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0x41565F4F4E5F5841;
    v29._object = 0xEB0000000045554CLL;
    v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v30.value._object = 0xEB00000000656C62;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    v46._countAndFlagsBits = 0;
    v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v46);
    countAndFlagsBits = v32._countAndFlagsBits;
    object = v32._object;

LABEL_6:
    v43._countAndFlagsBits = countAndFlagsBits;
    v43._object = object;
    lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Stepper<Text> and conformance Stepper<A>, &_s7SwiftUI7StepperVyAA4TextVGMd, &_s7SwiftUI7StepperVyAA4TextVGMR, MEMORY[0x277CDF0B8]);
    v35 = v40;
    View.accessibilityValue<A>(_:)();

    return (*(v10 + 8))(v12, v35);
  }

  v43._countAndFlagsBits = v21;
  v43._object = v22;
  v44 = v23;
  result = MEMORY[0x20F30B100](&v42, v24);
  v37 = round(v42);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v37 < 9.22337204e18)
  {
    v43._countAndFlagsBits = v37;
    countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v38;
    goto LABEL_6;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *closure #1 in closure #4 in closure #1 in EffortZoneView.body.getter(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v15 = v2;
  v16 = v3;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  result = MEMORY[0x20F30B100](&v14);
  v6 = a1[4];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 32);
    while (1)
    {
      v10 = *v9++;
      v11 = __OFADD__(v8, v10);
      v8 += v10;
      if (v11)
      {
        break;
      }

      if (!--v7)
      {
        v12 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = 0.0;
LABEL_7:
    v13 = v14 + 1.0;
    v15 = v2;
    v16 = v3;
    if (v14 + 1.0 > v12)
    {
      v13 = v12;
    }

    v17 = v4;
    v14 = v13;
    return Binding.wrappedValue.setter();
  }

  return result;
}

uint64_t closure #2 in closure #4 in closure #1 in EffortZoneView.body.getter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v8 = v2;
  v9 = v3;
  v10 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  MEMORY[0x20F30B100](&v7);
  v5 = v7 + -1.0;
  if (v7 + -1.0 <= *(a1 + 24))
  {
    v5 = *(a1 + 24);
  }

  v8 = v2;
  v9 = v3;
  v10 = v4;
  v7 = v5;
  return Binding.wrappedValue.setter();
}

double closure #5 in closure #1 in EffortZoneView.body.getter(uint64_t a1)
{
  if (*(a1 + 81) == 1)
  {
    MEMORY[0x28223BE20](a1);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t protocol witness for View.body.getter in conformance EffortZoneView@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  outlined init with copy of EffortZoneView(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = outlined init with take of EffortZoneView(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = partial apply for closure #1 in EffortZoneView.body.getter;
  a2[1] = v7;
  return result;
}

uint64_t outlined init with copy of EffortZoneView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EffortZoneView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of EffortZoneView(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EffortZoneView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in EffortZoneView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EffortZoneView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return closure #1 in EffortZoneView.body.getter(a1, v6, a2);
}

void partial apply for closure #3 in closure #1 in EffortZoneView.body.getter(uint64_t a1)
{
  v3 = *(type metadata accessor for EffortZoneView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = *(v1 + v5 + 16);
  v10 = v1 + ((v5 + *(v6 + 80) + 24) & ~*(v6 + 80));

  closure #3 in closure #1 in EffortZoneView.body.getter(a1, v1 + v4, v10, v7, v8, v9);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA5GroupVyAA9TupleViewVyACy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsCyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAIyAA6SpacerV_ACyACyAPyARyASSiACyAPyACyACyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAXGAA09_PositionV0VGAA07_ShadowO0VGGSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA5GroupVyAA9TupleViewVyACy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsCyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAIyAA6SpacerV_ACyACyAPyARyASSiACyAPyACyACyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGAA16_OverlayModifierVyAA14GeometryReaderVyACyACyACyACyAA7CapsuleVAA24_ForegroundStyleModifierVyAA5ColorVGGAXGAA09_PositionV0VGAA07_ShadowO0VGGSgGGMR);
    lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsIyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAGyAA6SpacerV_AIyAIyAPyARyASSiAIyAPyAIyAIyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGMd, &_s7SwiftUI6ZStackVyAA5GroupVyAA9TupleViewVyAA15ModifiedContentVy07WorkoutB022EffortButtonBackgroundVAA20_MaskAlignmentEffectVyAA6HStackVyAA7ForEachVySaySNySiGGAsIyAJ14RightTrapezoidVAA12_FrameLayoutVGGGGG_APyARyAtsA6VStackVyAGyAA6SpacerV_AIyAIyAPyARyASSiAIyAPyAIyAIyAA6CircleVAXGAA08_OpacityO0VGGAXGGGAXGAA08_PaddingV0VGtGGGGtGGGMR, MEMORY[0x277CE11A8]);
    lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA14GeometryReaderVyAA15ModifiedContentVyAGyAGyAGyAA7CapsuleVAA016_ForegroundStyleD0VyAA5ColorVGGAA12_FrameLayoutVGAA09_PositionN0VGAA13_ShadowEffectVGGSgGMd, &_s7SwiftUI16_OverlayModifierVyAA14GeometryReaderVyAA15ModifiedContentVyAGyAGyAGyAA7CapsuleVAA016_ForegroundStyleD0VyAA5ColorVGGAA12_FrameLayoutVGAA09_PositionN0VGAA13_ShadowEffectVGGSgGMR, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Stepper<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Stepper<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Stepper<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA7StepperVyAA4TextVGAA31AccessibilityAttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA7StepperVyAA4TextVGAA31AccessibilityAttachmentModifierVGMR);
    lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type Stepper<Text> and conformance Stepper<A>, &_s7SwiftUI7StepperVyAA4TextVGMd, &_s7SwiftUI7StepperVyAA4TextVGMR, MEMORY[0x277CDF0B8]);
    _s7SwiftUI11DragGestureVAcA0D0AAWlTm_0(&lazy protocol witness table cache variable for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Stepper<Text>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _s7SwiftUI11DragGestureVAcA0D0AAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *partial apply for closure #1 in closure #2 in closure #1 in EffortZoneView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EffortZoneView(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return closure #1 in closure #2 in closure #1 in EffortZoneView.body.getter(v7, a1, v4, v5, v6);
}

uint64_t objectdestroyTm_62()
{
  v1 = (type metadata accessor for EffortZoneView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for LayoutDirection();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #5 in closure #1 in EffortZoneView.body.getter(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for EffortZoneView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t lazy protocol witness table accessor for type ClosedRange<Int> and conformance <> ClosedRange<A>()
{
  result = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd, &_sSNySiGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>;
  if (!lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNySiGMd, &_sSNySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClosedRange<Int> and conformance <> ClosedRange<A>);
  }

  return result;
}

uint64_t objectdestroy_11Tm_1()
{
  v1 = (type metadata accessor for EffortZoneView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 40) & ~*(*v1 + 80));

  v3 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for LayoutDirection();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

void partial apply for closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for EffortZoneView(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(a1, v9, a2, v6, v7, v8);
}

double partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter@<D0>(uint64_t a2@<X8>)
{
  type metadata accessor for EffortZoneView(0);

  return closure #1 in closure #1 in closure #1 in closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in EffortZoneView.body.getter(a2);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGAIGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyACyACyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGAIGMR);
    lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(&lazy protocol witness table cache variable for type HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAEyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGMd, &_s7SwiftUI6HStackVyAA15ModifiedContentVyAEyAA6CircleVAA12_FrameLayoutVGAA14_OpacityEffectVGGMR, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of Environment<LayoutDirection>.Content(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>>, _OverlayModifier<GeometryReader<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Capsule, _ForegroundStyleModifier<Color>>, _FrameLayout>, _PositionLayout>, _ShadowEffect>>?>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type ZStack<Group<TupleView<(ModifiedContent<EffortButtonBackground, _MaskAlignmentEffect<HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, ModifiedContent<RightTrapezoid, _FrameLayout>>>>>, HStack<ForEach<[ClosedRange<Int>], ClosedRange<Int>, VStack<TupleView<(Spacer, ModifiedContent<ModifiedContent<HStack<ForEach<ClosedRange<Int>, Int, ModifiedContent<HStack<ModifiedContent<ModifiedContent<Circle, _FrameLayout>, _OpacityEffect>>, _FrameLayout>>>, _FrameLayout>, _PaddingLayout>)>>>>)>>> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t type metadata accessor for TrainingLoadSmoothedLineTrace(uint64_t a1)
{
  result = type metadata singleton initialization cache for TrainingLoadSmoothedLineTrace;
  if (!type metadata singleton initialization cache for TrainingLoadSmoothedLineTrace)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for TrainingLoadSmoothedLineTrace(uint64_t a1)
{
  type metadata accessor for [TrainingLoadViewModel.ChartPoint](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TrainingLoadViewModel.ChartPoint(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Image?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for NSDateFormatter();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [TrainingLoadViewModel.ChartPoint](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [TrainingLoadViewModel.ChartPoint])
  {
    type metadata accessor for TrainingLoadViewModel.ChartPoint(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [TrainingLoadViewModel.ChartPoint]);
    }
  }
}

void type metadata accessor for Image?()
{
  if (!lazy cache variable for type metadata for Image?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Image?);
    }
  }
}

unint64_t type metadata accessor for NSDateFormatter()
{
  result = lazy cache variable for type metadata for NSDateFormatter;
  if (!lazy cache variable for type metadata for NSDateFormatter)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSDateFormatter);
  }

  return result;
}

void one-time initialization function for inactiveColor(uint64_t a1)
{
  static Color.white.getter();
  v1 = Color.opacity(_:)();

  static TrainingLoadSmoothedLineTrace.inactiveColor = v1;
}

uint64_t TrainingLoadSmoothedLineTrace.body.getter@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  SmoothedLineTrace = type metadata accessor for TrainingLoadSmoothedLineTrace(0);
  v3 = SmoothedLineTrace - 8;
  v4 = *(SmoothedLineTrace - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](SmoothedLineTrace);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7ForEachVySnySiGSi6Charts12ChartContentPAEE6symbolAHQrqd__yXE_tAA4ViewRd__lFQOyAgEE7opacityyQrSdFQOyAgEE18accessibilityValueyQrqd__SyRd__lFQOyAgEE0K5LabelyQrqd__SyRd__lFQOyAgEE0K6HiddenyQrSbFQOyAE8LineMarkV_Qo__SSQo__SSQo__Qo__AA6ZStackVyAA012_ConditionalG0VyAA08ModifiedG0VyAYyAYyAA06_ShapeI0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyA7_GGAA13_ShadowEffectVGAA05TupleI0VyAYyAYyA4_AA16_BlendModeEffectVGA6_G_AYyA7_AA14_OpacityEffectVGtGGSgGQo_GMd, &_s7SwiftUI7ForEachVySnySiGSi6Charts12ChartContentPAEE6symbolAHQrqd__yXE_tAA4ViewRd__lFQOyAgEE7opacityyQrSdFQOyAgEE18accessibilityValueyQrqd__SyRd__lFQOyAgEE0K5LabelyQrqd__SyRd__lFQOyAgEE0K6HiddenyQrSbFQOyAE8LineMarkV_Qo__SSQo__SSQo__Qo__AA6ZStackVyAA012_ConditionalG0VyAA08ModifiedG0VyAYyAYyAA06_ShapeI0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyA7_GGAA13_ShadowEffectVGAA05TupleI0VyAYyAYyA4_AA16_BlendModeEffectVGA6_G_AYyA7_AA14_OpacityEffectVGtGGSgGQo_GMR);
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = v41 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAE7ForEachVySnySiGSiAcAE6symbolAKQrqd__yXE_tAE4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0N5LabelyQrqd__SyRd__lFQOyAcAE0N6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyA0_yA0_yAE06_ShapeL0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA10_GGAE13_ShadowEffectVGAE05TupleL0VyA0_yA0_yA7_AE16_BlendModeEffectVGA9_G_A0_yA10_AE14_OpacityEffectVGtGGSgGQo_G_Qo_Md, &_s6Charts12ChartContentPAAE9lineStyleyQr7SwiftUI06StrokeE0VFQOyAE7ForEachVySnySiGSiAcAE6symbolAKQrqd__yXE_tAE4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0N5LabelyQrqd__SyRd__lFQOyAcAE0N6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyA0_yA0_yAE06_ShapeL0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA10_GGAE13_ShadowEffectVGAE05TupleL0VyA0_yA0_yA7_AE16_BlendModeEffectVGA9_G_A0_yA10_AE14_OpacityEffectVGtGGSgGQo_G_Qo_MR);
  v50 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v42 = v41 - v7;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE04lineE0yQrAE06StrokeE0VFQOyAE7ForEachVySnySiGSiAcAE6symbolAMQrqd__yXE_tAE4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0P5LabelyQrqd__SyRd__lFQOyAcAE0P6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyA2_yA2_yAE01_hN0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA12_GGAE13_ShadowEffectVGAE05TupleN0VyA2_yA2_yA9_AE16_BlendModeEffectVGA11_G_A2_yA12_AE14_OpacityEffectVGtGGSgGQo_G_Qo__AE03AnyhE0VQo_Md, &_s6Charts12ChartContentPAAE15foregroundStyleyQrqd__7SwiftUI05ShapeE0Rd__lFQOyAcAE04lineE0yQrAE06StrokeE0VFQOyAE7ForEachVySnySiGSiAcAE6symbolAMQrqd__yXE_tAE4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0P5LabelyQrqd__SyRd__lFQOyAcAE0P6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyA2_yA2_yAE01_hN0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA12_GGAE13_ShadowEffectVGAE05TupleN0VyA2_yA2_yA9_AE16_BlendModeEffectVGA11_G_A2_yA12_AE14_OpacityEffectVGtGGSgGQo_G_Qo__AE03AnyhE0VQo_MR);
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v49 = v41 - v8;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE19interpolationMethodyQrAA013InterpolationE0VFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAcAE04lineH0yQrAH06StrokeH0VFQOyAH7ForEachVySnySiGSiAcAE6symbolAPQrqd__yXE_tAH4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0S5LabelyQrqd__SyRd__lFQOyAcAE0S6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AH6ZStackVyAH012_ConditionalC0VyAH08ModifiedC0VyA5_yA5_yAH01_kQ0VyAH6CircleVAH5ColorVGAH12_FrameLayoutVGAH16_OverlayModifierVyA15_GGAH13_ShadowEffectVGAH05TupleQ0VyA5_yA5_yA12_AH16_BlendModeEffectVGA14_G_A5_yA15_AH14_OpacityEffectVGtGGSgGQo_G_Qo__AH03AnykH0VQo__Qo_Md, &_s6Charts12ChartContentPAAE19interpolationMethodyQrAA013InterpolationE0VFQOyAcAE15foregroundStyleyQrqd__7SwiftUI05ShapeH0Rd__lFQOyAcAE04lineH0yQrAH06StrokeH0VFQOyAH7ForEachVySnySiGSiAcAE6symbolAPQrqd__yXE_tAH4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0S5LabelyQrqd__SyRd__lFQOyAcAE0S6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AH6ZStackVyAH012_ConditionalC0VyAH08ModifiedC0VyA5_yA5_yAH01_kQ0VyAH6CircleVAH5ColorVGAH12_FrameLayoutVGAH16_OverlayModifierVyA15_GGAH13_ShadowEffectVGAH05TupleQ0VyA5_yA5_yA12_AH16_BlendModeEffectVGA14_G_A5_yA15_AH14_OpacityEffectVGtGGSgGQo_G_Qo__AH03AnykH0VQo__Qo_MR);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = v41 - v9;
  v44 = v1;
  v10 = *(*v1 + 16);
  v62[0] = 0;
  v62[1] = v10;
  KeyPath = swift_getKeyPath();
  outlined init with copy of TrainingLoadSmoothedLineTrace(v1, v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrainingLoadSmoothedLineTrace);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  outlined init with take of TrainingLoadSmoothedLineTrace(v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for TrainingLoadSmoothedLineTrace);
  v41[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
  v41[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE6symbolADQrqd__yXE_t7SwiftUI4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0I5LabelyQrqd__SyRd__lFQOyAcAE0I6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyAVyAVyAE06_ShapeG0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA4_GGAE13_ShadowEffectVGAE05TupleG0VyAVyAVyA1_AE010_BlendModeZ0VGA3_G_AVyA4_AE08_OpacityZ0VGtGGSgGQo_Md, &_s6Charts12ChartContentPAAE6symbolADQrqd__yXE_t7SwiftUI4ViewRd__lFQOyAcAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0I5LabelyQrqd__SyRd__lFQOyAcAE0I6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo__AE6ZStackVyAE012_ConditionalC0VyAE08ModifiedC0VyAVyAVyAE06_ShapeG0VyAE6CircleVAE5ColorVGAE12_FrameLayoutVGAE16_OverlayModifierVyA4_GGAE13_ShadowEffectVGAE05TupleG0VyAVyAVyA1_AE010_BlendModeZ0VGA3_G_AVyA4_AE08_OpacityZ0VGtGGSgGQo_MR);
  v41[1] = lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0E5LabelyQrqd__SyRd__lFQOyAcAE0E6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo_Md, &_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0E5LabelyQrqd__SyRd__lFQOyAcAE0E6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo_MR);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMR);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0D5LabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo_Md, &_s6Charts12ChartContentPAAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0D5LabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo_MR);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE18accessibilityLabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo_Md, &_s6Charts12ChartContentPAAE18accessibilityLabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo_MR);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE19accessibilityHiddenyQrSbFQOyAA8LineMarkV_Qo_Md, &_s6Charts12ChartContentPAAE19accessibilityHiddenyQrSbFQOyAA8LineMarkV_Qo_MR);
  v57 = type metadata accessor for LineMark();
  v58 = MEMORY[0x277CBB438];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = lazy protocol witness table accessor for type String and conformance String();
  v20 = MEMORY[0x277D837D0];
  v57 = v17;
  v58 = MEMORY[0x277D837D0];
  v59 = OpaqueTypeConformance2;
  v60 = v19;
  v21 = v42;
  v22 = swift_getOpaqueTypeConformance2();
  v57 = v16;
  v58 = v20;
  v59 = v22;
  v60 = v19;
  v23 = swift_getOpaqueTypeConformance2();
  v57 = v15;
  v58 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMR, MEMORY[0x277CE11A8]);
  v57 = v13;
  v58 = v14;
  v59 = v24;
  v60 = v25;
  v26 = v45;
  swift_getOpaqueTypeConformance2();
  v27 = v46;
  ForEach<>.init(_:id:content:)();
  v28 = v44;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v29 = lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>();
  ChartContent.lineStyle(_:)();
  outlined destroy of StrokeStyle(v62);
  (*(v47 + 8))(v27, v26);
  if (*(v28 + *(v3 + 44)))
  {
    swift_retain_n();
    ImagePaint.init(image:sourceRect:scale:)();
    v30 = AnyShapeStyle.init<A>(_:)();
  }

  else
  {
    if (one-time initialization token for inactiveColor != -1)
    {
      swift_once();
    }

    v57 = static TrainingLoadSmoothedLineTrace.inactiveColor;

    v30 = AnyShapeStyle.init<A>(_:)();
  }

  v61 = v30;
  v57 = v26;
  v58 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = MEMORY[0x277CDF6A8];
  v33 = MEMORY[0x277CDF6A0];
  v34 = v49;
  v35 = v54;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v50 + 8))(v21, v35);
  v57 = v35;
  v58 = v32;
  v59 = v31;
  v60 = v33;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v48;
  v38 = v55;
  ChartContent.interpolationMethod(_:)();
  (*(v52 + 8))(v34, v38);
  v57 = v38;
  v58 = v36;
  swift_getOpaqueTypeConformance2();
  v39 = v53;
  ChartContent.alignsMarkStylesWithPlotArea(_:)();
  return (*(v51 + 8))(v37, v39);
}

void closure #1 in TrainingLoadSmoothedLineTrace.body.getter(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSg_AFtMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSg_AFtMR);
  MEMORY[0x28223BE20](v94);
  v97 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v80 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v78 - v10;
  MEMORY[0x28223BE20](v11);
  v96 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVySdGMd, &_s6Charts14PlottableValueVySdGMR);
  MEMORY[0x28223BE20](v13 - 8);
  v93 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts14PlottableValueVy10Foundation4DateVGMd, &_s6Charts14PlottableValueVy10Foundation4DateVGMR);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v78 - v16;
  v91 = type metadata accessor for LineMark();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v105 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE19accessibilityHiddenyQrSbFQOyAA8LineMarkV_Qo_Md, &_s6Charts12ChartContentPAAE19accessibilityHiddenyQrSbFQOyAA8LineMarkV_Qo_MR);
  v99 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE18accessibilityLabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo_Md, &_s6Charts12ChartContentPAAE18accessibilityLabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo_MR);
  v102 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v100 = &v78 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0D5LabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo_Md, &_s6Charts12ChartContentPAAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0D5LabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo_MR);
  v104 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v103 = &v78 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0E5LabelyQrqd__SyRd__lFQOyAcAE0E6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo_Md, &_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0E5LabelyQrqd__SyRd__lFQOyAcAE0E6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo_MR);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v78 - v25;
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  v28 = *(View - 8);
  MEMORY[0x28223BE20](View);
  MEMORY[0x28223BE20](v29);
  v106 = &v78 - v31;
  v32 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v89 = v19;
    v33 = *a2;
    if (v32 < *(*a2 + 16))
    {
      v79 = v30;
      v83 = v21;
      v84 = v26;
      v85 = v24;
      v86 = v23;
      v87 = a2;
      v88 = a3;
      v34 = v33 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
      v35 = *(v28 + 72);
      v82 = v32;
      v81 = v34;
      v36 = v106;
      outlined init with copy of TrainingLoadSmoothedLineTrace(v34 + v35 * v32, v106, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      LocalizedStringKey.init(stringLiteral:)();
      type metadata accessor for Date();
      static PlottableValue.value(_:_:)();

      LocalizedStringKey.init(stringLiteral:)();
      v37 = v36 + *(View + 24);
      v38 = *v37;
      if (*(v37 + 8))
      {
        v38 = 0.0;
      }

      v107 = v38;
      static PlottableValue.value(_:_:)();

      LineMark.init<A, B>(x:y:)();
      if (*(v33 + 16))
      {
        v39 = v96;
        outlined init with copy of TrainingLoadSmoothedLineTrace(v81, v96, type metadata accessor for TrainingLoadViewModel.ChartPoint);
        v40 = 0;
      }

      else
      {
        v40 = 1;
        v39 = v96;
      }

      v41 = v97;
      v42 = v95;
      v43 = *(v28 + 56);
      v43(v39, v40, 1, View);
      outlined init with copy of TrainingLoadSmoothedLineTrace(v106, v42, type metadata accessor for TrainingLoadViewModel.ChartPoint);
      v43(v42, 0, 1, View);
      v44 = *(v94 + 48);
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v39, v41, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v42, v41 + v44, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
      v45 = *(v28 + 48);
      v46 = v45(v41, 1, View);
      v47 = v87;
      if (v46 == 1)
      {
        outlined destroy of TrainingLoadViewModel.ChartPoint?(v42, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
        outlined destroy of TrainingLoadViewModel.ChartPoint?(v39, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
        v48 = v45(v41 + v44, 1, View);
        v49 = v91;
        v50 = v90;
        if (v48 == 1)
        {
          outlined destroy of TrainingLoadViewModel.ChartPoint?(v41, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
LABEL_16:
          type metadata accessor for TrainingLoadSmoothedLineTrace(0);
LABEL_17:
          v54 = MEMORY[0x277CBB438];
          v55 = v98;
          v56 = v105;
          ChartContent.accessibilityHidden(_:)();
          (*(v50 + 8))(v56, v49);
          v57 = *(v47 + *(type metadata accessor for TrainingLoadSmoothedLineTrace(0) + 60));
          isa = Date._bridgeToObjectiveC()().super.isa;
          v59 = [v57 stringFromDate_];

          *&v60 = COERCE_DOUBLE(static String._unconditionallyBridgeFromObjectiveC(_:)());
          v62 = v61;

          v107 = *&v60;
          v108 = v62;
          v111 = v49;
          v112 = v54;
          OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
          v64 = lazy protocol witness table accessor for type String and conformance String();
          v65 = MEMORY[0x277D837D0];
          v66 = v100;
          v67 = v101;
          ChartContent.accessibilityLabel<A>(_:)();

          (*(v99 + 8))(v55, v67);
          v111 = TrainingLoadSmoothedLineTrace.makeAccessibilityValue(_:)(v82);
          v112 = v68;
          v107 = *&v67;
          v108 = v65;
          v109 = OpaqueTypeConformance2;
          v110 = v64;
          v69 = swift_getOpaqueTypeConformance2();
          v70 = v103;
          v71 = *&v89;
          ChartContent.accessibilityValue<A>(_:)();

          (*(v102 + 8))(v66, COERCE_DOUBLE(*&v71));
          v107 = v71;
          v108 = v65;
          v109 = v69;
          v110 = v64;
          v72 = swift_getOpaqueTypeConformance2();
          v73 = v84;
          v74 = *&v83;
          ChartContent.opacity(_:)();
          v75 = (*(v104 + 8))(v70, COERCE_DOUBLE(*&v74));
          MEMORY[0x28223BE20](v75);
          v76 = v106;
          *(&v78 - 2) = v106;
          *(&v78 - 1) = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMR);
          v107 = v74;
          v108 = v72;
          swift_getOpaqueTypeConformance2();
          lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMR, MEMORY[0x277CE11A8]);
          v77 = v86;
          ChartContent.symbol<A>(symbol:)();
          (*(v85 + 8))(v73, v77);
          outlined destroy of TrainingLoadViewModel.ChartPoint(v76);
          return;
        }
      }

      else
      {
        v51 = v80;
        outlined init with copy of TrainingLoadViewModel.ChartPoint?(v41, v80, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
        if (v45(v41 + v44, 1, View) != 1)
        {
          v52 = v79;
          outlined init with take of TrainingLoadSmoothedLineTrace(v41 + v44, v79, type metadata accessor for TrainingLoadViewModel.ChartPoint);
          v53 = specialized static TrainingLoadViewModel.ChartPoint.== infix(_:_:)(v51, v52);
          outlined destroy of TrainingLoadViewModel.ChartPoint(v52);
          outlined destroy of TrainingLoadViewModel.ChartPoint?(v42, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
          outlined destroy of TrainingLoadViewModel.ChartPoint?(v39, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
          outlined destroy of TrainingLoadViewModel.ChartPoint(v51);
          outlined destroy of TrainingLoadViewModel.ChartPoint?(v41, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
          v49 = v91;
          v50 = v90;
          if (!v53)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        outlined destroy of TrainingLoadViewModel.ChartPoint?(v42, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
        outlined destroy of TrainingLoadViewModel.ChartPoint?(v39, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSgMR);
        outlined destroy of TrainingLoadViewModel.ChartPoint(v51);
        v49 = v91;
        v50 = v90;
      }

      outlined destroy of TrainingLoadViewModel.ChartPoint?(v41, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSg_AFtMd, &_s9WorkoutUI21TrainingLoadViewModelV10ChartPointVSg_AFtMR);
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t TrainingLoadSmoothedLineTrace.makeAccessibilityValue(_:)(unint64_t a1)
{
  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  MEMORY[0x28223BE20](View);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (*(*v1 + 16) <= a1)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = *v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8 = *(v4 + 72);
  outlined init with copy of TrainingLoadSmoothedLineTrace(v7 + v8 * a1, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TrainingLoadViewModel.ChartPoint);
  v9 = *(View + 24);
  if (v6[v9 + 8])
  {
    countAndFlagsBits = Double.description.getter();
    goto LABEL_40;
  }

  v11 = *&v6[v9];
  v12 = &v6[*(View + 32)];
  if (v12[8])
  {
    if (!a1)
    {
      v14 = "AX_HIGHER_THAN_PREVIOUS_DAY";
      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v15 = WorkoutUIBundle.super.isa;
      v35 = 0xE000000000000000;
      v16 = 0x617A696C61636F4CLL;
      v17 = 0xEB00000000656C62;
      v18 = 0xD000000000000012;
      goto LABEL_38;
    }

    v13 = v7 + v8 * (a1 - 1) + v9;
    if (*(v13 + 8) == 1)
    {
      if (v11 <= 0.0)
      {
        if (v11 != 0.0)
        {
LABEL_10:
          v14 = "ENGTH_METRIC_DESCRIPTION";
          if (one-time initialization token for WorkoutUIBundle != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v15 = WorkoutUIBundle.super.isa;
          v35 = 0xE000000000000000;
          v16 = 0x617A696C61636F4CLL;
          v17 = 0xEB00000000656C62;
          v18 = 0xD00000000000001ALL;
LABEL_38:
          v20 = v14 | 0x8000000000000000;
LABEL_39:
          v32._countAndFlagsBits = 0;
          v32._object = 0xE000000000000000;
          v33 = 0;
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v18, *&v16, v15, v32, *(&v35 - 1))._countAndFlagsBits;

          goto LABEL_40;
        }

LABEL_35:
        v14 = "AX_LOWER_THAN_PREVIOUS_DAY";
        if (one-time initialization token for WorkoutUIBundle != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v15 = WorkoutUIBundle.super.isa;
        v35 = 0xE000000000000000;
        v16 = 0x617A696C61636F4CLL;
        v17 = 0xEB00000000656C62;
        v18 = 0xD000000000000018;
        goto LABEL_38;
      }
    }

    else if (*v13 >= v11)
    {
      if (v11 != *v13)
      {
        goto LABEL_10;
      }

      goto LABEL_35;
    }

    v14 = "AX_EQUAL_TO_PREVIOUS_DAY";
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v35 = 0xE000000000000000;
    v16 = 0x617A696C61636F4CLL;
    v17 = 0xEB00000000656C62;
    v18 = 0xD00000000000001BLL;
    goto LABEL_38;
  }

  if (*v12 < v11)
  {
    if (one-time initialization token for WorkoutUIBundle == -1)
    {
LABEL_15:
      v19 = "AX_ABOVE_BASELINE";
      goto LABEL_30;
    }

LABEL_43:
    swift_once();
    goto LABEL_15;
  }

  if (v11 == *v12)
  {
    if (one-time initialization token for WorkoutUIBundle != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = WorkoutUIBundle.super.isa;
    v35 = 0xE000000000000000;
    v18 = 0x41425F54415F5841;
    v20 = 0xEE00454E494C4553;
    v16 = 0x617A696C61636F4CLL;
    v17 = 0xEB00000000656C62;
    goto LABEL_39;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  v19 = "AX_BELOW_BASELINE";
LABEL_30:
  v21 = v19 - 32;
  swift_beginAccess();
  v22 = WorkoutUIBundle.super.isa;
  v23 = 0xE000000000000000;
  v37._object = 0xE000000000000000;
  v24.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v24.value._object = 0xEB00000000656C62;
  v25._object = (v21 | 0x8000000000000000);
  v25._countAndFlagsBits = 0xD000000000000011;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v37._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v24, v22, v26, v37);

  v27 = AXFormatFloatWithPercentage();
  if (v27)
  {
    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v30;
  }

  else
  {
    v29 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20CB5DA70;
  *(v31 + 56) = MEMORY[0x277D837D0];
  *(v31 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v31 + 32) = v29;
  *(v31 + 40) = v23;
  countAndFlagsBits = String.init(format:_:)();

LABEL_40:
  outlined destroy of TrainingLoadViewModel.ChartPoint(v6);
  return countAndFlagsBits;
}

uint64_t closure #1 in closure #1 in TrainingLoadSmoothedLineTrace.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAA08ModifiedI0VyAKyAKyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA06_FrameG0VGAA16_OverlayModifierVyAUGGAA13_ShadowEffectVGAA05TupleD0VyAKyAKyArA010_BlendModeR0VGATG_AKyAuA08_OpacityR0VGtGGSgGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA19_ConditionalContentVyAA08ModifiedI0VyAKyAKyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA06_FrameG0VGAA16_OverlayModifierVyAUGGAA13_ShadowEffectVGAA05TupleD0VyAKyAKyArA010_BlendModeR0VGATG_AKyAuA08_OpacityR0VGtGGSgGMR);
  return closure #1 in closure #1 in closure #1 in TrainingLoadSmoothedLineTrace.body.getter(a1, a2, a3 + *(v7 + 44));
}

uint64_t closure #1 in closure #1 in closure #1 in TrainingLoadSmoothedLineTrace.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMR);
  MEMORY[0x28223BE20](v69);
  v7 = &v63 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMR);
  MEMORY[0x28223BE20](v66);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtG_GMR);
  MEMORY[0x28223BE20](v67);
  v68 = (&v63 - v13);
  SmoothedLineTrace = type metadata accessor for TrainingLoadSmoothedLineTrace(0);
  v71 = a2;
  v14 = a2 + SmoothedLineTrace[5];
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_3;
  }

  View = type metadata accessor for TrainingLoadViewModel.ChartPoint(0);
  type metadata accessor for DayIndex();
  lazy protocol witness table accessor for type DayIndex and conformance DayIndex();
  dispatch thunk of Strideable.distance(to:)();
  if (*&v77[0])
  {
    goto LABEL_3;
  }

  v40 = View[6];
  v41 = (a1 + v40);
  v42 = *(a1 + v40 + 8);
  v43 = (v14 + v40);
  v44 = *(v14 + v40 + 8);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (*v41 != *v43)
    {
      LOBYTE(v44) = 1;
    }

    if (v44)
    {
      goto LABEL_3;
    }
  }

  v45 = *(a1 + View[7]);
  if ((static Color.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_3;
  }

  v46 = View[8];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (v14 + v46);
  v50 = *(v14 + v46 + 8);
  if (v48)
  {
    if (v50)
    {
      goto LABEL_21;
    }

LABEL_3:
    v64 = v9;
    v65 = v7;
    v16 = SmoothedLineTrace;
    v17 = v71;
    if (*(v71 + SmoothedLineTrace[6]) == 1)
    {
      v18 = static Color.black.getter();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGMR);
      v63 = a3;
      v20 = *(v19 + 36);
      v21 = *MEMORY[0x277CE13C0];
      v22 = type metadata accessor for BlendMode();
      (*(*(v22 - 8) + 104))(&v12[v20], v21, v22);
      *v12 = v18;
      *(v12 + 4) = 256;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v23 = &v12[*(v66 + 36)];
      v24 = *(&v92[4] + 6);
      *v23 = *(&v92[3] + 6);
      *(v23 + 1) = v24;
      *(v23 + 2) = *(&v92[5] + 6);
      v25 = *(a1 + *(type metadata accessor for TrainingLoadViewModel.ChartPoint(0) + 28));
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *(&v92[2] + 6) = *(&v92[8] + 6);
      *(&v92[1] + 6) = *(&v92[7] + 6);
      *(v92 + 6) = *(&v92[6] + 6);
      v26 = 0.6;
      if (!*(v17 + v16[13]))
      {
        v26 = 1.0;
      }

      *(v72 + 10) = v92[0];
      *&v72[0] = v25;
      WORD4(v72[0]) = 256;
      *(&v72[1] + 10) = v92[1];
      *(&v72[2] + 10) = v92[2];
      *(&v72[3] + 1) = *(&v92[2] + 14);
      v73 = v26;
      v27 = v64;
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v12, v64, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMR);
      v89 = v72[2];
      v90 = v72[3];
      v91 = v73;
      v87 = v72[0];
      v88 = v72[1];
      v28 = v65;
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v27, v65, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMR);
      v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_ACyACyAjOGAA08_OpacityK0VGtMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_ACyACyAjOGAA08_OpacityK0VGtMR) + 48);
      v31 = v89;
      v75[3] = v90;
      v30 = v90;
      v32 = *&v91;
      *&v76 = v91;
      v34 = v87;
      v75[1] = v88;
      v33 = v88;
      v75[2] = v89;
      v75[0] = v87;
      *(v29 + 32) = v89;
      *(v29 + 48) = v30;
      *(v29 + 64) = v32;
      *v29 = v34;
      *(v29 + 16) = v33;
      v77[3] = v30;
      v78 = v32;
      v77[1] = v33;
      v77[2] = v31;
      v77[0] = v34;

      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v72, v86, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMR);
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v75, v86, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMR);
      outlined destroy of TrainingLoadViewModel.ChartPoint?(v77, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMR);
      outlined destroy of TrainingLoadViewModel.ChartPoint?(v27, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMR);
      outlined init with copy of TrainingLoadViewModel.ChartPoint?(v28, v68, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMR);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGAA13_ShadowEffectVGMR);
      lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>();
      lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMR, MEMORY[0x277CE14C0]);
      v35 = v12;
      v36 = v63;
      _ConditionalContent<>.init(storage:)();
      outlined destroy of TrainingLoadViewModel.ChartPoint?(v72, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA14_OpacityEffectVGMR);
      outlined destroy of TrainingLoadViewModel.ChartPoint?(v28, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMR);
      outlined destroy of TrainingLoadViewModel.ChartPoint?(v35, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVGMR);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAOGGAA13_ShadowEffectVGAA05TupleG0VyAEyAEyAlA010_BlendModeO0VGANG_AEyAoA08_OpacityO0VGtGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAOGGAA13_ShadowEffectVGAA05TupleG0VyAEyAEyAlA010_BlendModeO0VGANG_AEyAoA08_OpacityO0VGtGGMR);
      return (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
    }

    else
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAOGGAA13_ShadowEffectVGAA05TupleG0VyAEyAEyAlA010_BlendModeO0VGANG_AEyAoA08_OpacityO0VGtGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAOGGAA13_ShadowEffectVGAA05TupleG0VyAEyAEyAlA010_BlendModeO0VGANG_AEyAoA08_OpacityO0VGtGGMR);
      return (*(*(v39 - 8) + 56))(a3, 1, 1, v39);
    }
  }

  if (*v47 != *v49)
  {
    LOBYTE(v50) = 1;
  }

  if (v50)
  {
    goto LABEL_3;
  }

LABEL_21:
  static Color.gray.getter();
  v51 = static Color.== infix(_:_:)();

  if (v51)
  {
    v52 = static Color.white.getter();
  }

  else
  {

    v52 = v45;
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v85[6] = v86[0];
  *&v85[22] = v86[1];
  *&v85[38] = v86[2];
  v53 = static Alignment.center.getter();
  v55 = v54;
  v56 = static Color.black.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v74[6] = v87;
  *&v74[22] = v88;
  *&v74[38] = v89;
  *&v75[0] = v56;
  WORD4(v75[0]) = 256;
  *(v75 + 10) = *v74;
  *(&v75[1] + 10) = *&v74[16];
  *(&v75[2] + 10) = *&v74[32];
  *(&v75[3] + 1) = *(&v89 + 1);
  *&v76 = v53;
  *(&v76 + 1) = v55;
  *&v77[0] = v56;
  v80 = v75[0];
  v83 = v75[3];
  v84 = v76;
  v81 = v75[1];
  v82 = v75[2];
  WORD4(v77[0]) = 256;
  *(&v77[3] + 1) = *(&v89 + 1);
  v78 = v53;
  *(&v77[1] + 10) = *&v74[16];
  *(&v77[2] + 10) = *&v74[32];
  *(v77 + 10) = *v74;
  v79 = v55;
  outlined init with copy of TrainingLoadViewModel.ChartPoint?(v75, v72, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGGMR);
  outlined destroy of TrainingLoadViewModel.ChartPoint?(v77, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGGMR);
  static Color.gray.getter();
  LOBYTE(v56) = static Color.== infix(_:_:)();

  if (v56)
  {
    static Color.white.getter();
    v57 = Color.opacity(_:)();
  }

  else
  {
    v57 = Color.opacity(_:)();
  }

  v58 = *(v71 + SmoothedLineTrace[12]);
  v59 = v68;
  *v68 = v52;
  *(v59 + 4) = 256;
  *(v59 + 10) = *v85;
  *(v59 + 26) = *&v85[16];
  *(v59 + 42) = *&v85[32];
  v59[7] = *&v85[46];
  v60 = v83;
  *(v59 + 6) = v82;
  *(v59 + 7) = v60;
  *(v59 + 8) = v84;
  v61 = v81;
  *(v59 + 4) = v80;
  *(v59 + 5) = v61;
  v59[18] = v57;
  v59[19] = v58;
  v59[20] = 0;
  v59[21] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGAA13_ShadowEffectVGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)> and conformance TupleView<A>, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAEyAA06_ShapeD0VyAA6CircleVAA5ColorVGAA16_BlendModeEffectVGAA12_FrameLayoutVG_AEyAEyAlQGAA08_OpacityL0VGtGMR, MEMORY[0x277CE14C0]);
  _ConditionalContent<>.init(storage:)();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAOGGAA13_ShadowEffectVGAA05TupleG0VyAEyAEyAlA010_BlendModeO0VGANG_AEyAoA08_OpacityO0VGtGGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAOGGAA13_ShadowEffectVGAA05TupleG0VyAEyAEyAlA010_BlendModeO0VGANG_AEyAoA08_OpacityO0VGtGGMR);
  return (*(*(v62 - 8) + 56))(a3, 0, 1, v62);
}

void partial apply for closure #1 in TrainingLoadSmoothedLineTrace.body.getter(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TrainingLoadSmoothedLineTrace(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  closure #1 in TrainingLoadSmoothedLineTrace.body.getter(a1, v6, a2);
}

unint64_t lazy protocol witness table accessor for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>()
{
  result = lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>;
  if (!lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI7ForEachVySnySiGSi6Charts12ChartContentPAEE6symbolAHQrqd__yXE_tAA4ViewRd__lFQOyAgEE7opacityyQrSdFQOyAgEE18accessibilityValueyQrqd__SyRd__lFQOyAgEE0K5LabelyQrqd__SyRd__lFQOyAgEE0K6HiddenyQrSbFQOyAE8LineMarkV_Qo__SSQo__SSQo__Qo__AA6ZStackVyAA012_ConditionalG0VyAA08ModifiedG0VyAYyAYyAA06_ShapeI0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyA7_GGAA13_ShadowEffectVGAA05TupleI0VyAYyAYyA4_AA16_BlendModeEffectVGA6_G_AYyA7_AA14_OpacityEffectVGtGGSgGQo_GMd, &_s7SwiftUI7ForEachVySnySiGSi6Charts12ChartContentPAEE6symbolAHQrqd__yXE_tAA4ViewRd__lFQOyAgEE7opacityyQrSdFQOyAgEE18accessibilityValueyQrqd__SyRd__lFQOyAgEE0K5LabelyQrqd__SyRd__lFQOyAgEE0K6HiddenyQrSbFQOyAE8LineMarkV_Qo__SSQo__SSQo__Qo__AA6ZStackVyAA012_ConditionalG0VyAA08ModifiedG0VyAYyAYyAA06_ShapeI0VyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyA7_GGAA13_ShadowEffectVGAA05TupleI0VyAYyAYyA4_AA16_BlendModeEffectVGA6_G_AYyA7_AA14_OpacityEffectVGtGGSgGQo_GMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0E5LabelyQrqd__SyRd__lFQOyAcAE0E6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo_Md, &_s6Charts12ChartContentPAAE7opacityyQrSdFQOyAcAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0E5LabelyQrqd__SyRd__lFQOyAcAE0E6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo__Qo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0D5LabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo_Md, &_s6Charts12ChartContentPAAE18accessibilityValueyQrqd__SyRd__lFQOyAcAE0D5LabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo__SSQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE18accessibilityLabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo_Md, &_s6Charts12ChartContentPAAE18accessibilityLabelyQrqd__SyRd__lFQOyAcAE0D6HiddenyQrSbFQOyAA8LineMarkV_Qo__SSQo_MR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s6Charts12ChartContentPAAE19accessibilityHiddenyQrSbFQOyAA8LineMarkV_Qo_Md, &_s6Charts12ChartContentPAAE19accessibilityHiddenyQrSbFQOyAA8LineMarkV_Qo_MR);
    type metadata accessor for LineMark();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type String and conformance String();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMd, &_s7SwiftUI6ZStackVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAQGGAA13_ShadowEffectVGAA05TupleH0VyAGyAGyAnA010_BlendModeP0VGAPG_AGyAqA08_OpacityP0VGtGGSgGMR, MEMORY[0x277CE11A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, <<opaque return type of ChartContent.symbol<A>(symbol:)>>.0> and conformance <> ForEach<A, B, C>);
  }

  return result;
}

uint64_t outlined init with copy of TrainingLoadSmoothedLineTrace(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of TrainingLoadSmoothedLineTrace(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGAA13_ShadowEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGAA13_ShadowEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGMd, &_s7SwiftUI15ModifiedContentVyACyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGAA16_OverlayModifierVyAMGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA10_ShapeViewVyAA6CircleVAA5ColorVGAA12_FrameLayoutVGGMR, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ZStack<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OverlayModifier<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>>>, _ShadowEffect>, TupleView<(ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _BlendModeEffect>, _FrameLayout>, ModifiedContent<ModifiedContent<_ShapeView<Circle, Color>, _FrameLayout>, _OpacityEffect>)>>?> and conformance ZStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type DayIndex and conformance DayIndex()
{
  result = lazy protocol witness table cache variable for type DayIndex and conformance DayIndex;
  if (!lazy protocol witness table cache variable for type DayIndex and conformance DayIndex)
  {
    type metadata accessor for DayIndex();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DayIndex and conformance DayIndex);
  }

  return result;
}

uint64_t outlined init with copy of TrainingLoadViewModel.ChartPoint?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of TrainingLoadViewModel.ChartPoint?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DynamicTypeDisabled.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB019DynamicTypeDisabledVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB019DynamicTypeDisabledVGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance DynamicTypeDisabled@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB019DynamicTypeDisabledVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB019DynamicTypeDisabledVGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t getEnumTagSinglePayload for DynamicTypeDisabled(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DynamicTypeDisabled(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<DynamicTypeDisabled> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<DynamicTypeDisabled> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<DynamicTypeDisabled> and conformance _ViewModifier_Content<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB019DynamicTypeDisabledVGMd, &_s7SwiftUI21_ViewModifier_ContentVy07WorkoutB019DynamicTypeDisabledVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<DynamicTypeDisabled> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicTypeDisabled and conformance DynamicTypeDisabled()
{
  result = lazy protocol witness table cache variable for type DynamicTypeDisabled and conformance DynamicTypeDisabled;
  if (!lazy protocol witness table cache variable for type DynamicTypeDisabled and conformance DynamicTypeDisabled)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTypeDisabled and conformance DynamicTypeDisabled);
  }

  return result;
}

uint64_t WorkoutConfigurationFilterType.symbolName.getter()
{
  v1 = type metadata accessor for WorkoutConfigurationFilterType();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D7DC58])
  {
    return 0x73656C6B72617073;
  }

  if (v6 == *MEMORY[0x277D7DC30])
  {
    return 0xD000000000000014;
  }

  if (v6 == *MEMORY[0x277D7DC38])
  {
    return 0x72656D6974;
  }

  if (v6 == *MEMORY[0x277D7DC50])
  {
    type metadata accessor for IntervalWorkoutConfiguration();
    return static IntervalWorkoutConfiguration.displaySymbolName.getter();
  }

  else if (v6 == *MEMORY[0x277D7DC48])
  {
    return 0xD000000000000022;
  }

  else if (v6 == *MEMORY[0x277D7DC40])
  {
    return 0x6574756F72;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t WorkoutConfigurationFilterType.displayColor.getter()
{
  v1 = type metadata accessor for WorkoutConfigurationFilterType();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D7DC58] || v6 == *MEMORY[0x277D7DC30])
  {
    return static Color.white.getter();
  }

  if (v6 == *MEMORY[0x277D7DC38])
  {
    v8 = [objc_opt_self() elapsedTimeColors];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 nonGradientTextColor];

      if (v10)
      {
        return Color.init(uiColor:)();
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  if (v6 == *MEMORY[0x277D7DC50])
  {
    v11 = objc_allocWithZone(MEMORY[0x277D75348]);
    v12 = sel_initWithDisplayP3Red_green_blue_alpha_;
    v13 = 0.607843137;
    v14 = 0.431372549;
    v15 = 0.980392157;
LABEL_14:
    [v11 v12];
    return Color.init(uiColor:)();
  }

  if (v6 == *MEMORY[0x277D7DC48])
  {
    [objc_allocWithZone(MEMORY[0x277D75348]) initWithDisplayP3Red:0.458823529 green:0.898039216 blue:0.898039216 alpha:1.0];
    return Color.init(uiColor:)();
  }

  if (v6 == *MEMORY[0x277D7DC40])
  {
    v11 = objc_allocWithZone(MEMORY[0x277D75348]);
    v12 = sel_initWithRed_green_blue_alpha_;
    v15 = 0.62745098;
    v13 = 0.0;
    v14 = 1.0;
    goto LABEL_14;
  }

LABEL_17:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

double TipKitWorkoutView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *(a1 + 16);
  v8 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v2);
  TipView.init<>(_:isPresented:arrowEdge:action:)();
  v9[0] = static Color.clear.getter();
  v5 = AnyView.init<A>(_:)();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGMR) + 36)) = v5;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAKyAA0lm6InsetsiO0VGGMd, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAKyAA0lm6InsetsiO0VGGMR) + 36);
  *(v6 + 32) = 0;
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  return result;
}

uint64_t type metadata completion function for TipKitWorkoutView(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TipKitWorkoutView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for TipKitWorkoutView(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAKyAA0lm6InsetsiO0VGGMd, &_s7SwiftUI15ModifiedContentVyACy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGAKyAA0lm6InsetsiO0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TipView<AnyTip> and conformance TipView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowInsetsTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA013ListRowInsetsC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>>, _TraitWritingModifier<ListRowInsetsTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGMd, &_s7SwiftUI15ModifiedContentVy6TipKit0E4ViewVyAD03AnyE0VGAA21_TraitWritingModifierVyAA017ListRowBackgroundI3KeyVGGMR);
    lazy protocol witness table accessor for type TipView<AnyTip> and conformance TipView<A>(&lazy protocol witness table cache variable for type TipView<AnyTip> and conformance TipView<A>, &_s6TipKit0A4ViewVyAA03AnyA0VGMd, &_s6TipKit0A4ViewVyAA03AnyA0VGMR, MEMORY[0x277CE19B0]);
    lazy protocol witness table accessor for type TipView<AnyTip> and conformance TipView<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<ListRowBackgroundTraitKey> and conformance _TraitWritingModifier<A>, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMd, &_s7SwiftUI21_TraitWritingModifierVyAA017ListRowBackgroundC3KeyVGMR, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TipView<AnyTip>, _TraitWritingModifier<ListRowBackgroundTraitKey>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TipView<AnyTip> and conformance TipView<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

id StepType.scaleableImage.getter()
{
  v1 = type metadata accessor for StepType();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1, v3);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277D7E710])
  {
    v7 = 0xE400000000000000;
    v8 = 1802661751;
  }

  else if (v6 == *MEMORY[0x277D7E708])
  {
    v7 = 0xE800000000000000;
    v8 = 0x797265766F636572;
  }

  else if (v6 == *MEMORY[0x277D7E718])
  {
    v7 = 0xE600000000000000;
    v8 = 0x70756D726177;
  }

  else
  {
    if (v6 != *MEMORY[0x277D7E720])
    {
      goto LABEL_14;
    }

    v7 = 0xE800000000000000;
    v8 = 0x6E776F646C6F6F63;
  }

  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = WorkoutUIBundle.super.isa;
  v10 = MEMORY[0x20F30BAD0](v8, v7);

  v11 = [objc_opt_self() imageNamed:v10 inBundle:v9];

  if (v11)
  {
    return v11;
  }

  __break(1u);
LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t StepType.symbolName.getter()
{
  v1 = 0x2E6E6F7276656863;
  v2 = type metadata accessor for StepType();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v0, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D7E710] || v7 == *MEMORY[0x277D7E708])
  {
    return v1;
  }

  if (v7 == *MEMORY[0x277D7E718])
  {
    return 0xD00000000000001BLL;
  }

  if (v7 == *MEMORY[0x277D7E720])
  {
    return 0xD00000000000001DLL;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t StepDetailView.init(step:formattingManager:compressed:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  a3[2] = 0;
  return result;
}

uint64_t WorkoutStep.targetIconName.getter()
{
  v0 = type metadata accessor for TargetZone.ZoneType();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (WorkoutStep.activeTargetZone.getter())
  {
    TargetZone.type.getter();
    v4 = (*(v1 + 88))(v3, v0);
    v5 = *MEMORY[0x277D7DE68];
    v6 = *MEMORY[0x277D7DE50];

    if (v4 == v5 || v4 == v6)
    {
      return 0x6C69662E746C6F62;
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      return 0xD00000000000001BLL;
    }
  }

  else
  {
    v8 = WorkoutStep.activeHeartRateTargetZone.getter();
    if (v8)
    {

      return 0x69662E7472616568;
    }

    else
    {
      result = WorkoutStep.activePowerZonesAlertTargetZone.getter();
      if (result)
      {

        return 0x6C69662E746C6F62;
      }
    }
  }

  return result;
}

uint64_t StepDetailView.stepDetailView(step:)@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0K18AttachmentModifierVGAS_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0K18AttachmentModifierVGAS_GMR);
  MEMORY[0x28223BE20](v107);
  v108 = &v91 - v2;
  v99 = type metadata accessor for AccessibilityChildBehavior();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v4 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_Md, &_s7SwiftUI4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_MR);
  v103 = *(v6 - 8);
  v104 = v6;
  MEMORY[0x28223BE20](v6);
  v102 = &v91 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMR);
  MEMORY[0x28223BE20](v105);
  v106 = &v91 - v8;
  v9 = type metadata accessor for StepType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v100 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v91 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v91 - v16;
  v18 = *(v1 + 8);
  WorkoutStep.stepType.getter();
  (*(v10 + 16))(v14, v17, v9);
  v19 = (*(v10 + 88))(v14, v9);
  if (v19 == *MEMORY[0x277D7E710] || v19 == *MEMORY[0x277D7E708] || v19 == *MEMORY[0x277D7E718] || v19 == *MEMORY[0x277D7E720])
  {
    v20 = *(v10 + 8);
    v96 = v9;
    v97 = v20;
    v20(v17, v9);
    v21 = Image.init(_internalSystemName:)();
    v22 = WorkoutStep.goal.getter();
    v23 = WorkoutStep.activityType.getter();
    FIUIDistanceTypeForActivityType();

    v24 = NLSessionActivityGoal.intervalDisplayString(formattingManager:distanceType:)();
    v26 = v25;

    active = WorkoutStep.hasActiveTargetZone.getter();
    v101 = v21;
    v95 = v26;
    if ((active & 1) != 0 && (v28 = WorkoutStep.alertDisplayString(formattingManager:)(v18), v29))
    {
      v30 = v29;
      v94 = v28;
      WorkoutStep.targetIconName.getter();
      v31 = Image.init(_internalSystemName:)();
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v32);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v33._countAndFlagsBits = 32;
      v33._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v33);
      v91 = v24;
      v34._countAndFlagsBits = v24;
      v34._object = v26;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v34);
      v35._countAndFlagsBits = 8236;
      v35._object = 0xE200000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v35);
      v93 = v31;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v36._countAndFlagsBits = 32;
      v36._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v36);
      v37._countAndFlagsBits = v94;
      v92 = v30;
      v37._object = v30;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v37);
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v38);
      LocalizedStringKey.init(stringInterpolation:)();
      v39 = Text.init(_:tableName:bundle:comment:)();
      v41 = v40;
      v114 = v39;
      v115 = v40;
      v43 = v42 & 1;
      v116 = v42 & 1;
      v117 = v44;
      static AccessibilityChildBehavior.ignore.getter();
      v45 = v102;
      View.accessibilityElement(children:)();
      (*(v98 + 8))(v4, v99);
      outlined consume of Text.Storage(v39, v41, v43);

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v46 = WorkoutUIBundle.super.isa;
      v118._object = 0xE000000000000000;
      v47._object = 0x800000020CB9E1C0;
      v47._countAndFlagsBits = 0xD00000000000001BLL;
      v48.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v48.value._object = 0xEB00000000656C62;
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      v118._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v47, v48, v46, v49, v118);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_20CB5EA80;
      v51 = v100;
      WorkoutStep.stepType.getter();
      v52 = StepType.displayString.getter();
      v54 = v53;
      v97(v51, v96);
      v55 = MEMORY[0x277D837D0];
      *(v50 + 56) = MEMORY[0x277D837D0];
      v56 = lazy protocol witness table accessor for type String and conformance String();
      *(v50 + 32) = v52;
      *(v50 + 40) = v54;
      *(v50 + 96) = v55;
      *(v50 + 104) = v56;
      v57 = v91;
      *(v50 + 64) = v56;
      *(v50 + 72) = v57;
      *(v50 + 80) = v95;
      *(v50 + 136) = v55;
      *(v50 + 144) = v56;
      v58 = v92;
      *(v50 + 112) = v94;
      *(v50 + 120) = v58;
      v59 = String.init(format:_:)();
      v61 = v60;

      v112 = v59;
      v113 = v61;
      v110 = MEMORY[0x277CE0BD8];
      v111 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type String and conformance String();
      v62 = v106;
      v63 = v104;
      View.accessibilityLabel<A>(_:)();

      (*(v103 + 8))(v45, v63);
      outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v62, v108, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v64._countAndFlagsBits = 0;
      v64._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v64);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
      v65._countAndFlagsBits = 32;
      v65._object = 0xE100000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v65);
      v66._countAndFlagsBits = v24;
      v66._object = v26;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v66);
      v67._countAndFlagsBits = 0;
      v67._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v67);
      LocalizedStringKey.init(stringInterpolation:)();
      v68 = Text.init(_:tableName:bundle:comment:)();
      v70 = v69;
      v114 = v68;
      v115 = v69;
      v72 = v71 & 1;
      v116 = v71 & 1;
      v117 = v73;
      static AccessibilityChildBehavior.ignore.getter();
      v74 = v102;
      View.accessibilityElement(children:)();
      (*(v98 + 8))(v4, v99);
      outlined consume of Text.Storage(v68, v70, v72);

      if (one-time initialization token for WorkoutUIBundle != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v75 = WorkoutUIBundle.super.isa;
      v76._countAndFlagsBits = 0xD000000000000014;
      v119._object = 0xE000000000000000;
      v76._object = 0x800000020CB9E1A0;
      v77.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v77.value._object = 0xEB00000000656C62;
      v78._countAndFlagsBits = 0;
      v78._object = 0xE000000000000000;
      v119._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v76, v77, v75, v78, v119);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_20CB5DA80;
      v80 = v100;
      WorkoutStep.stepType.getter();
      v81 = StepType.displayString.getter();
      v83 = v82;
      v97(v80, v96);
      v84 = MEMORY[0x277D837D0];
      *(v79 + 56) = MEMORY[0x277D837D0];
      v85 = lazy protocol witness table accessor for type String and conformance String();
      *(v79 + 32) = v81;
      *(v79 + 40) = v83;
      *(v79 + 96) = v84;
      *(v79 + 104) = v85;
      *(v79 + 64) = v85;
      *(v79 + 72) = v24;
      *(v79 + 80) = v95;
      v86 = String.init(format:_:)();
      v88 = v87;

      v112 = v86;
      v113 = v88;
      v110 = MEMORY[0x277CE0BD8];
      v111 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      lazy protocol witness table accessor for type String and conformance String();
      v62 = v106;
      v89 = v104;
      View.accessibilityLabel<A>(_:)();

      (*(v103 + 8))(v74, v89);
      outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v62, v108, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMR);
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
      _ConditionalContent<>.init(storage:)();
    }

    return outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v62, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0I18AttachmentModifierVGMR);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t WorkoutStep.alertDisplayString(formattingManager:)(uint64_t a1)
{
  v29 = a1;
  v1 = type metadata accessor for PowerZonesAlertZoneType();
  v28 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = type metadata accessor for HeartRateZoneType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (WorkoutStep.activeTargetZone.getter())
  {
    v14 = WorkoutStep.activityType.getter();
    v15 = TargetZone.displayString(formattingManager:activityType:)();

LABEL_9:

    return v15;
  }

  v26 = v6;
  v27 = v3;
  v16 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
  HeartRateTargetZone.type.getter();

  (*(v8 + 104))(v10, *MEMORY[0x277D7E138], v7);
  _s11WorkoutCore17HeartRateZoneTypeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType, MEMORY[0x277D7E150], MEMORY[0x277D7E158]);
  LOBYTE(v16) = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  if ((v16 & 1) == 0)
  {
    v23 = WorkoutStep.heartRateTargetZoneWithDefault.getter();
    v14 = WorkoutStep.activityType.getter();
    v24 = MEMORY[0x20F305B10](v29, v14);
LABEL_8:
    v15 = v24;

    goto LABEL_9;
  }

  v18 = WorkoutStep.powerZonesAlertTargetZoneWithDefault.getter();
  v19 = v26;
  dispatch thunk of PowerZonesAlertTargetZone.type.getter();

  v21 = v27;
  v20 = v28;
  (*(v28 + 104))(v27, *MEMORY[0x277D7E418], v1);
  _s11WorkoutCore17HeartRateZoneTypeOACSQAAWlTm_0(&lazy protocol witness table cache variable for type PowerZonesAlertZoneType and conformance PowerZonesAlertZoneType, MEMORY[0x277D7E438], MEMORY[0x277D7E448]);
  LOBYTE(v18) = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v20 + 8);
  v22(v21, v1);
  v22(v19, v1);
  if ((v18 & 1) == 0)
  {
    v23 = WorkoutStep.powerZonesAlertTargetZoneWithDefault.getter();
    v14 = WorkoutStep.activityType.getter();
    v24 = PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)();
    goto LABEL_8;
  }

  return 0;
}

uint64_t StepDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for Font.PrivateDesign();
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMR);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA4FontVSgGGAA16_FixedSizeLayoutVGAOy12CoreGraphics7CGFloatVGG_AKyAKyAKyAKyAKyACyAKyAA0H0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAM_Qo_AA0y10AttachmentN0VGA13_GAQGAOyAA5ImageV5ScaleOGGAVGAYGA2_GtGGAKyAKyAKyAA6HStackVyAIyAKyAKyA17_A20_GA12_G_ARtGGAVGAYGA2_G_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA6VStackVyAA9TupleViewVyAA08ModifiedD0VyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA4FontVSgGGAA16_FixedSizeLayoutVGAOy12CoreGraphics7CGFloatVGG_AKyAKyAKyAKyAKyACyAKyAA0H0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAM_Qo_AA0y10AttachmentN0VGA13_GAQGAOyAA5ImageV5ScaleOGGAVGAYGA2_GtGGAKyAKyAKyAA6HStackVyAIyAKyAKyA17_A20_GA12_G_ARtGGAVGAYGA2_G_GMR);
  MEMORY[0x28223BE20](v8);
  v10 = v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMR);
  MEMORY[0x28223BE20](v11);
  v13 = (v26 - v12);
  v14 = *v1;
  if (*v1)
  {
    v15 = *(v1 + 2);
    v16 = v1[1];

    *v13 = static HorizontalAlignment.leading.getter();
    v13[1] = v15;
    *(v13 + 16) = 0;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA4FontVSgGGAA010_FixedSizeG0VGAOy12CoreGraphics7CGFloatVGG_AKyAKyAKyAKyAKyAA012_ConditionalJ0VyAKyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAM_Qo_AA0z10AttachmentO0VGA15_GAQGAOyAA5ImageV5ScaleOGGAVGAYGA2_GtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAOyAA4FontVSgGGAA010_FixedSizeG0VGAOy12CoreGraphics7CGFloatVGG_AKyAKyAKyAKyAKyAA012_ConditionalJ0VyAKyAA0D0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAM_Qo_AA0z10AttachmentO0VGA15_GAQGAOyAA5ImageV5ScaleOGGAVGAYGA2_GtGGMR);
    closure #1 in StepDetailView.body.getter(v14, v16, (v13 + *(v17 + 44)), v15);
    outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v13, v10, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    return outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v13, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMR);
  }

  else
  {
    v19 = v27;
    v26[1] = v11;
    *v7 = static VerticalAlignment.center.getter();
    *(v7 + 1) = 0;
    v7[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentO0VG_AKyAA4TextVAOySiSgGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAM5ScaleOGGAA023AccessibilityAttachmentO0VG_AKyAA4TextVAOySiSgGGtGGMR);
    closure #2 in StepDetailView.body.getter(&v7[*(v20 + 44)]);
    if (one-time initialization token for stepNameFontSize != -1)
    {
      swift_once();
    }

    static Font.Weight.medium.getter();
    static Font.PrivateDesign.compactRounded.getter();
    v21 = static Font.system(size:weight:design:)();
    (*(v19 + 8))(v4, v2);
    KeyPath = swift_getKeyPath();
    v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGMR) + 36)];
    *v23 = KeyPath;
    v23[1] = v21;
    *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGMR) + 36)] = 256;
    v24 = swift_getKeyPath();
    v25 = &v7[*(v5 + 36)];
    *v25 = v24;
    v25[1] = 0x3FE0000000000000;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v7, v10, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGG_AGyAGyAGyAGyAGyAA012_ConditionalG0VyAGyAA0E0PAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAI_Qo_AA0x10AttachmentL0VGA11_GAMGAKyAA5ImageV5ScaleOGGARGAUGAZGtGGMR, MEMORY[0x277CE1198]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v7, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMR);
  }
}

uint64_t closure #1 in StepDetailView.body.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v46 = a2;
  v48 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMR);
  MEMORY[0x28223BE20](v50);
  v55 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - v8;
  v10 = type metadata accessor for Font.PrivateDesign();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = WorkoutStep.displayString.getter();
  v68 = v14;
  lazy protocol witness table accessor for type String and conformance String();
  v53 = Text.init<A>(_:)();
  v52 = v15;
  v17 = v16;
  v54 = v18;
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for stepNameFontSize != -1)
  {
    swift_once();
  }

  static Font.Weight.medium.getter();
  static Font.PrivateDesign.compactRounded.getter();
  v49 = static Font.system(size:weight:design:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  v20 = swift_getKeyPath();
  v47 = v17 & 1;
  LOBYTE(v67) = v17 & 1;
  LOBYTE(v61) = 0;
  v56 = swift_getKeyPath();
  v67 = a1;
  v68 = v46;
  v69 = a4;
  StepDetailView.stepDetailView(step:)(v9);
  v21 = swift_getKeyPath();
  v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGMR) + 36)];
  *v22 = v21;
  *(v22 + 1) = 1;
  v22[16] = 0;
  v23 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGMR) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v25 = *MEMORY[0x277CE1050];
  v26 = type metadata accessor for Image.Scale();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  if (one-time initialization token for stepDetailFontSize != -1)
  {
    swift_once();
  }

  static Font.Weight.semibold.getter();
  static Font.PrivateDesign.compactRounded.getter();
  v27 = static Font.system(size:weight:design:)();
  v19(v13, v10);
  v28 = swift_getKeyPath();
  v29 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGMR) + 36)];
  *v29 = v28;
  v29[1] = v27;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGMR) + 36)] = 256;
  v30 = swift_getKeyPath();
  v31 = &v9[*(v50 + 36)];
  *v31 = v30;
  v31[1] = 0x3FE8000000000000;
  v32 = v55;
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v9, v55, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMR);
  v33 = v53;
  *&v61 = v53;
  v34 = v52;
  *(&v61 + 1) = v52;
  LOBYTE(v27) = v47;
  LOBYTE(v62) = v47;
  *(&v62 + 1) = *v58;
  DWORD1(v62) = *&v58[3];
  v35 = v54;
  *(&v62 + 1) = v54;
  v36 = KeyPath;
  *&v63 = KeyPath;
  *(&v63 + 1) = 1;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = *v57;
  DWORD1(v64) = *&v57[3];
  *(&v64 + 1) = v20;
  v50 = v20;
  v37 = v49;
  *&v65 = v49;
  WORD4(v65) = 256;
  *(&v65 + 10) = v59;
  HIWORD(v65) = v60;
  *&v66 = v56;
  *(&v66 + 1) = 0x3FE8000000000000;
  v38 = v62;
  v39 = v48;
  *v48 = v61;
  v39[1] = v38;
  v40 = v63;
  v41 = v64;
  v42 = v66;
  v39[4] = v65;
  v39[5] = v42;
  v39[2] = v40;
  v39[3] = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA16_FixedSizeLayoutVGAGy12CoreGraphics7CGFloatVGG_ACyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAE_Qo_AA0v10AttachmentI0VGA7_GAIGAGyAA5ImageV5ScaleOGGANGAQGAVGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA16_FixedSizeLayoutVGAGy12CoreGraphics7CGFloatVGG_ACyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAE_Qo_AA0v10AttachmentI0VGA7_GAIGAGyAA5ImageV5ScaleOGGANGAQGAVGtMR);
  outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v32, v39 + *(v43 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(&v61, &v67, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA16_FixedSizeLayoutVGAGy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA16_FixedSizeLayoutVGAGy12CoreGraphics7CGFloatVGGMR);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v9, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMR);
  outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(v32, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA012_ConditionalD0VyACyAA4ViewPAAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAA4TextV_Qo_AA0J18AttachmentModifierVGAQGAA022_EnvironmentKeyWritingO0VySiSgGGATyAA5ImageV5ScaleOGGATyAA4FontVSgGGAA16_FixedSizeLayoutVGATy12CoreGraphics7CGFloatVGGMR);
  v67 = v33;
  v68 = v34;
  LOBYTE(v69) = v27;
  *(&v69 + 1) = *v58;
  HIDWORD(v69) = *&v58[3];
  v70 = v35;
  v71 = v36;
  v72 = 1;
  v73 = 0;
  *v74 = *v57;
  *&v74[3] = *&v57[3];
  v75 = v50;
  v76 = v37;
  v77 = 256;
  v79 = v60;
  v78 = v59;
  v80 = v56;
  v81 = 0x3FE8000000000000;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(&v67, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA16_FixedSizeLayoutVGAGy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGAGyAA4FontVSgGGAA16_FixedSizeLayoutVGAGy12CoreGraphics7CGFloatVGGMR);
}

uint64_t closure #2 in StepDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  MEMORY[0x28223BE20](v2);
  v4 = (&v31 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = Image.init(systemName:)();
  v12 = (v4 + *(v2 + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGMR) + 28);
  v14 = *MEMORY[0x277CE1050];
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v4 = v11;
  lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityHidden(_:)();
  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v4, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMd, &_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGMR);
  if (one-time initialization token for WorkoutUIBundle != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v16 = WorkoutUIBundle.super.isa;
  v33._object = 0xE000000000000000;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._object = 0x800000020CB9E1E0;
  v18._countAndFlagsBits = 0xD000000000000017;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v33._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v33);

  v32 = v20;
  lazy protocol witness table accessor for type String and conformance String();
  v21 = Text.init<A>(_:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  KeyPath = swift_getKeyPath();
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v10, v7, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMR);
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v7, a1, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMR);
  v29 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VG_ACyAA4TextVAGySiSgGGtMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VG_ACyAA4TextVAGySiSgGGtMR) + 48);
  *v29 = v21;
  *(v29 + 8) = v23;
  *(v29 + 16) = v25 & 1;
  *(v29 + 24) = v27;
  *(v29 + 32) = KeyPath;
  *(v29 + 40) = 1;
  *(v29 + 48) = 0;
  outlined copy of Text.Storage(v21, v23, v25 & 1);

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v10, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMR);
  outlined consume of Text.Storage(v21, v23, v25 & 1);

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(v7, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAE5ScaleOGGAA023AccessibilityAttachmentI0VGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGAKy12CoreGraphics7CGFloatVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<CGFloat> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVy12CoreGraphics7CGFloatVGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGAA16_FixedSizeLayoutVGMR);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_ACyAA4TextVAKySiSgGGtGGAKyAA4FontVSgGGMR);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>> and conformance HStack<A>, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_AGyAA4TextVAKySiSgGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAI5ScaleOGGAA023AccessibilityAttachmentL0VG_AGyAA4TextVAKySiSgGGtGGMR, MEMORY[0x277CE1138]);
    lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMR, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StepDetailView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for StepDetailView(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t outlined init with copy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s11WorkoutCore17HeartRateZoneTypeOACSQAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ConditionalContent<ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>, ModifiedContent<<<opaque return type of View.accessibilityElement(children:)>>.0, AccessibilityAttachmentModifier>>, _EnvironmentKeyWritingModifier<Int?>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>)>> and conformance VStack<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Image.Scale>>, AccessibilityAttachmentModifier>, ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>)>>, _EnvironmentKeyWritingModifier<Font?>>, _FixedSizeLayout>, _EnvironmentKeyWritingModifier<CGFloat>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for RightTrapezoid(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RightTrapezoid(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type _ShapeView<RightTrapezoid, ForegroundStyle> and conformance _ShapeView<A, B>()
{
  result = lazy protocol witness table cache variable for type _ShapeView<RightTrapezoid, ForegroundStyle> and conformance _ShapeView<A, B>;
  if (!lazy protocol witness table cache variable for type _ShapeView<RightTrapezoid, ForegroundStyle> and conformance _ShapeView<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI10_ShapeViewVy07WorkoutB014RightTrapezoidVAA15ForegroundStyleVGMd, &_s7SwiftUI10_ShapeViewVy07WorkoutB014RightTrapezoidVAA15ForegroundStyleVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ShapeView<RightTrapezoid, ForegroundStyle> and conformance _ShapeView<A, B>);
  }

  return result;
}

CGFloat RightTrapezoid.path(in:)@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>, double a6@<D4>, CGFloat a7@<D5>, double a8@<D6>)
{
  Path.init()();
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  MaxY = CGRectGetMaxY(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  v16 = (1.0 - a6) * (MaxY - CGRectGetMinY(v37));
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  v17 = CGRectGetMaxY(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  v18 = (1.0 - a7) * (v17 - CGRectGetMinY(v39));
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  v25 = CGRectGetMinX(v40) + a8;
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  v26 = CGRectGetMaxX(v41) - a8;
  *&v19 = v18 + a8;
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  *&v29 = CGRectGetMaxX(v42) - a8;
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  *&v28 = CGRectGetMaxY(v43) - a8;
  v44.origin.x = a2;
  v44.origin.y = a3;
  v44.size.width = a4;
  v44.size.height = a5;
  *&toa = CGRectGetMinX(v44) + a8;
  v45.origin.x = a2;
  v45.origin.y = a3;
  v45.size.width = a4;
  v45.size.height = a5;
  *&v27 = CGRectGetMaxY(v45) - a8;
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  v46.origin.x = v25 - a8;
  v46.origin.y = v16 + a8 - a8;
  transform.tx = 0.0;
  transform.ty = 0.0;
  v46.size.width = a8 + a8;
  v46.size.height = a8 + a8;
  Path.addEllipse(in:transform:)(v46, &transform);
  v47.origin.x = v26 - a8;
  v47.origin.y = *&v19 - a8;
  v47.size.width = a8 + a8;
  v47.size.height = a8 + a8;
  Path.addEllipse(in:transform:)(v47, &transform);
  v48.origin.x = *&v29 - a8;
  v48.origin.y = *&v28 - a8;
  v48.size.width = a8 + a8;
  v48.size.height = a8 + a8;
  Path.addEllipse(in:transform:)(v48, &transform);
  v49.origin.x = *&toa - a8;
  v49.origin.y = *&v27 - a8;
  v49.size.width = a8 + a8;
  v49.size.height = a8 + a8;
  Path.addEllipse(in:transform:)(v49, &transform);
  v20 = atan2(*&v19 - (v16 + a8), v26 - v25);
  v21 = __sincos_stret(v20);
  v22 = -(v21.__sinval * a8);
  *&v23 = v26 - v22;
  Path.move(to:)(__PAIR128__(v16 + a8 - v21.__cosval * a8, v25 - v22));
  Path.addLine(to:)(__PAIR128__(*&v19 - v21.__cosval * a8, v23));
  Path.addLine(to:)(__PAIR128__(v19, v26 + a8));
  Path.addLine(to:)(__PAIR128__(v28, *&v29 + a8));
  Path.addLine(to:)(__PAIR128__(*&v28 + a8, v29));
  Path.addLine(to:)(__PAIR128__(*&v27 + a8, toa));
  Path.addLine(to:)(__PAIR128__(v27, *&toa - a8));
  Path.addLine(to:)(__PAIR128__(v16 + a8, v25 - a8));
  result = to_8.x;
  *a1 = to_8;
  *(a1 + 16) = v33;
  *(a1 + 32) = v34;
  return result;
}

double protocol witness for Shape.path(in:) in conformance RightTrapezoid@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  RightTrapezoid.path(in:)(v9, a2, a3, a4, a5, *v5, v5[1], v5[2]);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance RightTrapezoid(uint64_t *a1))()
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance RightTrapezoid;
}

void protocol witness for Animatable.animatableData.modify in conformance RightTrapezoid(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance RightTrapezoid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type RightTrapezoid and conformance RightTrapezoid();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance RightTrapezoid(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type RightTrapezoid and conformance RightTrapezoid();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance RightTrapezoid(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RightTrapezoid and conformance RightTrapezoid();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t EffortEntryView.init(estimate:isShowingEffortOnboarding:showCurrentWorkloadButton:doneTapped:animated:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v38 = a2;
  v39 = a5;
  v40 = a3;
  v41 = a4;
  v8 = type metadata accessor for ExertionValue();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for AppleExertionScale();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  State.init(wrappedValue:)();
  v18 = v43;
  v19 = v44;
  LOBYTE(v42) = 0;
  State.init(wrappedValue:)();
  v20 = LOBYTE(v43);
  v35 = v44;
  LOBYTE(v42) = 0;
  State.init(wrappedValue:)();
  v37 = LOBYTE(v43);
  v36 = v44;
  v21 = a1;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(a1, v13, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v13, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    v22 = v35;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    AppleExertionScale.exertionValue.getter();
    v23 = ExertionValue.level.getter();
    (*(v33 + 8))(v10, v34);

    v18 = v23;
    LOBYTE(v42) = v23 == 0;
    State.init(wrappedValue:)();
    (*(v15 + 8))(v17, v14);

    v19 = 0;
    v20 = LOBYTE(v43);
    v22 = v44;
  }

  v24 = v39;
  v25 = v38 & 1;
  LOBYTE(v42) = v39 & 1;
  State.init(wrappedValue:)();
  v26 = LOBYTE(v43);
  v27 = v44;
  LOBYTE(v42) = (v24 & 1) == 0;
  State.init(wrappedValue:)();
  result = _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v21, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  v29 = LOBYTE(v43);
  v30 = v44;
  v31 = v41;
  *a6 = v40;
  *(a6 + 8) = v31;
  *(a6 + 16) = closure #1 in EffortEntryView.init(estimate:isShowingEffortOnboarding:showCurrentWorkloadButton:doneTapped:animated:);
  *(a6 + 24) = 0;
  *(a6 + 32) = v25;
  *(a6 + 33) = 0;
  *(a6 + 40) = v18;
  *(a6 + 48) = v19;
  *(a6 + 56) = v20;
  *(a6 + 64) = v22;
  *(a6 + 72) = v26;
  *(a6 + 80) = v27;
  *(a6 + 88) = v29;
  *(a6 + 96) = v30;
  *(a6 + 104) = 0x3FDB6DB6DB6DB6DBLL;
  *(a6 + 112) = v37;
  *(a6 + 120) = v36;
  return result;
}

uint64_t EffortEntryView.init(estimate:isShowingEffortOnboarding:showCurrentWorkloadButton:cancelTapped:doneTapped:animated:)@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>)
{
  v41 = a2;
  v42 = a7;
  v45 = a6;
  v46 = a4;
  v43 = a5;
  v44 = a3;
  v10 = type metadata accessor for ExertionValue();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35 - v14;
  v16 = type metadata accessor for AppleExertionScale();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  State.init(wrappedValue:)();
  v20 = v48;
  v21 = v49;
  LOBYTE(v47) = 0;
  State.init(wrappedValue:)();
  v22 = LOBYTE(v48);
  v38 = v49;
  LOBYTE(v47) = 0;
  State.init(wrappedValue:)();
  v40 = LOBYTE(v48);
  v39 = v49;
  v23 = a1;
  _s11WorkoutCore18AppleExertionScaleOSgWOcTm_2(a1, v15, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v15, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
    v24 = v38;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    AppleExertionScale.exertionValue.getter();
    v25 = ExertionValue.level.getter();
    (*(v36 + 8))(v12, v37);

    v20 = v25;
    LOBYTE(v47) = v25 == 0;
    State.init(wrappedValue:)();
    (*(v17 + 8))(v19, v16);

    v21 = 0;
    v22 = LOBYTE(v48);
    v24 = v49;
  }

  v26 = v42;
  v27 = v41 & 1;
  LOBYTE(v47) = v42 & 1;
  State.init(wrappedValue:)();
  v28 = LOBYTE(v48);
  v29 = v49;
  LOBYTE(v47) = (v26 & 1) == 0;
  State.init(wrappedValue:)();
  result = _s11WorkoutCore18AppleExertionScaleOSgWOhTm_3(v23, &_s11WorkoutCore18AppleExertionScaleOSgMd, &_s11WorkoutCore18AppleExertionScaleOSgMR);
  v31 = LOBYTE(v48);
  v32 = v49;
  v33 = v45;
  *a8 = v43;
  *(a8 + 8) = v33;
  v34 = v46;
  *(a8 + 16) = v44;
  *(a8 + 24) = v34;
  *(a8 + 32) = v27;
  *(a8 + 33) = 0;
  *(a8 + 40) = v20;
  *(a8 + 48) = v21;
  *(a8 + 56) = v22;
  *(a8 + 64) = v24;
  *(a8 + 72) = v28;
  *(a8 + 80) = v29;
  *(a8 + 88) = v31;
  *(a8 + 96) = v32;
  *(a8 + 104) = 0x3FDB6DB6DB6DB6DBLL;
  *(a8 + 112) = v40;
  *(a8 + 120) = v39;
  return result;
}