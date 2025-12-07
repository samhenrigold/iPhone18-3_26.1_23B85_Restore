uint64_t protocol witness for ForcedDisambiguating.copyWithForcedDisambiguation(uuid:) in conformance MultiSportWorkoutConfiguration@<X0>(NSObject *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MultiSportWorkoutConfiguration.copyWithForcedDisambiguation(uuid:)(a1);
  *a2 = result;
  return result;
}

id @objc StandardWorkoutAddWorkoutRow.localizedTitle.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = MEMORY[0x20F2E6C00](v5, v4);

  return v6;
}

uint64_t StandardWorkoutAddWorkoutRow.localizedTitle.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

double @objc StandardWorkoutAddWorkoutRow.localizedTitle.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;

  return result;
}

double StandardWorkoutAddWorkoutRow.localizedTitle.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;

  return result;
}

double key path setter for StandardWorkoutAddWorkoutRow.localizedTitle : StandardWorkoutAddWorkoutRow(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;

  return result;
}

uint64_t StandardWorkoutAddWorkoutRow.type.getter()
{
  v1 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type;
  swift_beginAccess();
  return *(v0 + v1);
}

void StandardWorkoutAddWorkoutRow.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void key path setter for StandardWorkoutAddWorkoutRow.activityType : StandardWorkoutAddWorkoutRow(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id StandardWorkoutAddWorkoutRow.activityType.getter()
{
  v1 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void StandardWorkoutAddWorkoutRow.activityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id StandardWorkoutAddWorkoutRow.__allocating_init(activityType:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized StandardWorkoutAddWorkoutRow.init(activityType:)(a1);

  return v4;
}

id StandardWorkoutAddWorkoutRow.init(activityType:)(void *a1)
{
  v2 = specialized StandardWorkoutAddWorkoutRow.init(activityType:)(a1);

  return v2;
}

id StandardWorkoutAddWorkoutRow.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StandardWorkoutAddWorkoutRow.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StandardWorkoutAddWorkoutRow();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized StandardWorkoutAddWorkoutRow.init(activityType:)(void *a1)
{
  *&v1[OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_activityType] = a1;
  *&v1[OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_type] = 0;
  v2 = a1;
  v3 = [v2 localizedName];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = &v1[OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_localizedTitle];
  *v7 = v4;
  v7[1] = v6;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = MEMORY[0x20F2E6C00](0xD00000000000002ALL, 0x800000020B4649A0);
  v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  if (!v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x20F2E6C00](v13);
  }

  v14 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
  v15 = [v14 BOOLValue];

  if (([v2 forceDescriptiveNameSort] & 1) != 0 || v15)
  {
    goto LABEL_7;
  }

  [v2 effectiveTypeIdentifier];
  v2 = FILocalizedNameForAdjectiveOmittedActivityType();
  if (!v2)
  {
    __break(1u);
LABEL_7:
    v2 = [v2 localizedName];
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = &v1[OBJC_IVAR___WOStandardWorkoutAddWorkoutRow_sortingTitle];
  *v19 = v16;
  v19[1] = v18;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for StandardWorkoutAddWorkoutRow();
  return objc_msgSendSuper2(&v21, sel_init);
}

double keypath_getTm_4@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;

  return result;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a1 + 16) = v2;
  v3 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  UnknownStorage.init()();
  v4 = a1 + v3[8];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + v3[9];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v3[10];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v3[11];
  v8 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1 + v7, 1, 1, v8);
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.currentPower.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.averagePower.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.thirtySecondAveragePower.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.livePowerZones.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 44);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v1 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  outlined init with take of Apple_Workout_Core_LiveZones(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

double Apple_Workout_Core_PowerMetricsPublisher.currentPower.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double Apple_Workout_Core_PowerMetricsPublisher.averagePower.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 36);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double Apple_Workout_Core_PowerMetricsPublisher.thirtySecondAveragePower.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 40);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

BOOL Apple_Workout_Core_PowerMetricsPublisher.hasLivePowerZones.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_LiveZones?(v0 + *(v5 + 44), v4);
  v6 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v4, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  return v7;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.livePowerZones.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_LiveZones?(v1 + *(v7 + 44), v6);
  v8 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_LiveZones(v6, a1);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  UnknownStorage.init()();
  v10 = a1 + *(v8 + 28);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v6, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  return result;
}

uint64_t (*Apple_Workout_Core_PowerMetricsPublisher.currentPower.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_PowerMetricsPublisher.currentPower.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_PowerMetricsPublisher.clearCurrentPower()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Workout_Core_PowerMetricsPublisher.averagePower.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_PowerMetricsPublisher.averagePower.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_PowerMetricsPublisher.clearAveragePower()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Workout_Core_PowerMetricsPublisher.thirtySecondAveragePower.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_PowerMetricsPublisher.thirtySecondAveragePower.modify;
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.thirtySecondAveragePower.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_PowerMetricsPublisher.clearThirtySecondAveragePower()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t key path getter for Apple_Workout_Core_PowerMetricsPublisher.livePowerZones : Apple_Workout_Core_PowerMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_LiveZones?(a1 + *(v8 + 44), v7);
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_LiveZones(v7, a2);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v11 = a2 + *(v9 + 28);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v7, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_PowerMetricsPublisher.livePowerZones : Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_LiveZones(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 44);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(a2 + v9, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  outlined init with take of Apple_Workout_Core_LiveZones(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_PowerMetricsPublisher.livePowerZones.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 44);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_LiveZones?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 28);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_LiveZones(v8, v14);
  }

  return Apple_Workout_Core_PowerMetricsPublisher.livePowerZones.modify;
}

void Apple_Workout_Core_PowerMetricsPublisher.livePowerZones.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_LiveZones((*a1)[5], v4);
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v9 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    outlined init with take of Apple_Workout_Core_LiveZones(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_LiveZones(v5);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v9 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    outlined init with take of Apple_Workout_Core_LiveZones(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_PowerMetricsPublisher.clearLivePowerZones()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 44);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v0 + v1, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_PowerMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_PowerMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }

        else if (result == 2 || result == 3)
        {
LABEL_4:
          type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result > 5)
      {
        if (result == 6)
        {
          type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
          lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement, &protocol conformance descriptor for Apple_Workout_Core_WorkoutChartDataElement);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
        }

        else if (result == 7)
        {
          closure #7 in Apple_Workout_Core_PowerMetricsPublisher.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        }
      }

      else
      {
        if (result == 4)
        {
          goto LABEL_4;
        }

        closure #5 in Apple_Workout_Core_PowerMetricsPublisher.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #5 in Apple_Workout_Core_PowerMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ProtobufInt32();
  type metadata accessor for ProtobufDouble();
  return dispatch thunk of Decoder.decodeMapField<A, B>(fieldType:value:)();
}

uint64_t closure #7 in Apple_Workout_Core_PowerMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  type metadata accessor for Apple_Workout_Core_LiveZones(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones, &protocol conformance descriptor for Apple_Workout_Core_LiveZones);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #3 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (*(*(v3 + 8) + 16))
      {
        type metadata accessor for ProtobufInt32();
        type metadata accessor for ProtobufDouble();
        dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)();
      }

      if (*(*(v3 + 16) + 16))
      {
        type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
        lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement, &protocol conformance descriptor for Apple_Workout_Core_WorkoutChartDataElement);
        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      closure #4 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in Apple_Workout_Core_PowerMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_LiveZones?(a1 + *(v14 + 44), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v8, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  outlined init with take of Apple_Workout_Core_LiveZones(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones, &protocol conformance descriptor for Apple_Workout_Core_LiveZones);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_LiveZones(v13);
}

Swift::Int Apple_Workout_Core_PowerMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_PowerMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PowerMetricsPublisher@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v4 = MEMORY[0x277D84F90];
  *(a2 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a2 + 16) = v4;
  UnknownStorage.init()();
  v5 = a1[9];
  v6 = a2 + a1[8];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[10];
  v9 = a1[11];
  v10 = a2 + v8;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a2 + v9, 1, 1, v11);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_PowerMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_PowerMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_PowerMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_PowerMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_PowerMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_PowerMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_PowerMetricsPublisher.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v42 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_2;
  }

  v20 = v15;
  v21 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v22 = v21[8];
  v23 = &a1[v22];
  v24 = a1[v22 + 8];
  v25 = &a2[v22];
  v26 = a2[v22 + 8];
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      goto LABEL_2;
    }
  }

  v27 = v21[9];
  v28 = &a1[v27];
  v29 = a1[v27 + 8];
  v30 = &a2[v27];
  v31 = a2[v27 + 8];
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      goto LABEL_2;
    }
  }

  v32 = v21[10];
  v33 = &a1[v32];
  v34 = a1[v32 + 8];
  v35 = &a2[v32];
  v36 = a2[v32 + 8];
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_2;
    }
  }

  else
  {
    if (*v33 != *v35)
    {
      LOBYTE(v36) = 1;
    }

    if (v36)
    {
      goto LABEL_2;
    }
  }

  v37 = v21;
  if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs5Int32V_SdTt1g5(*(a1 + 1), *(a2 + 1)) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B16ChartDataElementV_Tt1g5(*(a1 + 2), *(a2 + 2)) & 1) == 0)
  {
    goto LABEL_2;
  }

  v38 = v37[11];
  v39 = *(v20 + 48);
  outlined init with copy of Apple_Workout_Core_LiveZones?(&a1[v38], v17);
  outlined init with copy of Apple_Workout_Core_LiveZones?(&a2[v38], &v17[v39]);
  v40 = *(v5 + 48);
  if (v40(v17, 1, v4) == 1)
  {
    if (v40(&v17[v39], 1, v4) == 1)
    {
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
LABEL_31:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v18 & 1;
    }

    goto LABEL_29;
  }

  outlined init with copy of Apple_Workout_Core_LiveZones?(v17, v12);
  if (v40(&v17[v39], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_LiveZones(v12);
LABEL_29:
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMR);
    goto LABEL_2;
  }

  outlined init with take of Apple_Workout_Core_LiveZones(&v17[v39], v8);
  v41 = static Apple_Workout_Core_LiveZones.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_LiveZones(v8);
  outlined destroy of Apple_Workout_Core_LiveZones(v12);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(v17, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  if (v41)
  {
    goto LABEL_31;
  }

LABEL_2:
  v18 = 0;
  return v18 & 1;
}

uint64_t type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_PowerMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_PowerMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1)
{
  type metadata accessor for [Int32 : Double]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Apple_Workout_Core_WorkoutChartDataElement](319, &lazy cache variable for type metadata for [Apple_Workout_Core_WorkoutChartDataElement], type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UnknownStorage();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Double?();
        if (v4 <= 0x3F)
        {
          type metadata accessor for [Apple_Workout_Core_WorkoutChartDataElement](319, &lazy cache variable for type metadata for Apple_Workout_Core_LiveZones?, type metadata accessor for Apple_Workout_Core_LiveZones, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_WorkoutChartDataElement](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *WeatherSummary.airQualityIndex.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLWeatherSummary_airQualityIndex);
  v2 = v1;
  return v1;
}

uint64_t WeatherSummary.sourceName.getter()
{
  v1 = *(v0 + OBJC_IVAR___NLWeatherSummary_sourceName);

  return v1;
}

id WeatherSummary.__allocating_init(coordinate:isDaytime:temperature:humidity:condition:airQualityIndex:sourceName:)(char a1, char *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  v11 = v10;
  v44 = a6;
  v45 = a7;
  v43 = a5;
  v42 = a4;
  v46 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v42 - v20;
  v22 = objc_allocWithZone(v11);
  v23 = &v22[OBJC_IVAR___NLWeatherSummary_coordinate];
  *v23 = a8;
  v23[1] = a9;
  v22[OBJC_IVAR___NLWeatherSummary_isDaytime] = a1;
  v24 = [objc_opt_self() fahrenheit];
  v47 = a2;
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v26 = v25;
  v27 = *(v18 + 8);
  v27(v21, v17);
  v28 = objc_opt_self();
  v29 = [v28 degreeFahrenheitUnit];
  v30 = objc_opt_self();
  v31 = [v30 quantityWithUnit:v29 doubleValue:v26];

  *&v22[OBJC_IVAR___NLWeatherSummary_temperature] = v31;
  v32 = [v28 percentUnit];
  v33 = [v30 quantityWithUnit:v32 doubleValue:a10 * 100.0];

  *&v22[OBJC_IVAR___NLWeatherSummary_humidity] = v33;
  if (v43)
  {
    v34 = 0;
  }

  else
  {
    v35 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v34 = [v35 initWithInteger_];
  }

  *&v22[OBJC_IVAR___NLWeatherSummary_airQualityIndex] = v34;
  v36 = v46;
  *&v22[OBJC_IVAR___NLWeatherSummary_condition] = WeatherCondition.hkCondition.getter();
  v37 = &v22[OBJC_IVAR___NLWeatherSummary_sourceName];
  v38 = v45;
  *v37 = v44;
  v37[1] = v38;
  v48.receiver = v22;
  v48.super_class = v11;
  v39 = objc_msgSendSuper2(&v48, sel_init);
  v40 = type metadata accessor for WeatherCondition();
  (*(*(v40 - 8) + 8))(v36, v40);
  v27(v47, v17);
  return v39;
}

id WeatherSummary.init(coordinate:isDaytime:temperature:humidity:condition:airQualityIndex:sourceName:)(char a1, char *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  v11 = v10;
  v45 = a6;
  v46 = a7;
  v44 = a5;
  v43 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v42 - v21;
  v23 = &v11[OBJC_IVAR___NLWeatherSummary_coordinate];
  *v23 = a8;
  v23[1] = a9;
  v11[OBJC_IVAR___NLWeatherSummary_isDaytime] = a1;
  v24 = [objc_opt_self() fahrenheit];
  v47 = a2;
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v26 = v25;
  v27 = *(v19 + 8);
  v27(v22, v18);
  v28 = objc_opt_self();
  v29 = [v28 degreeFahrenheitUnit];
  v30 = objc_opt_self();
  v31 = [v30 quantityWithUnit:v29 doubleValue:v26];

  *&v11[OBJC_IVAR___NLWeatherSummary_temperature] = v31;
  v32 = [v28 percentUnit];
  v33 = [v30 quantityWithUnit:v32 doubleValue:a10 * 100.0];

  *&v11[OBJC_IVAR___NLWeatherSummary_humidity] = v33;
  if (v44)
  {
    v34 = 0;
  }

  else
  {
    v35 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v34 = [v35 initWithInteger_];
  }

  *&v11[OBJC_IVAR___NLWeatherSummary_airQualityIndex] = v34;
  *&v11[OBJC_IVAR___NLWeatherSummary_condition] = WeatherCondition.hkCondition.getter();
  v36 = &v11[OBJC_IVAR___NLWeatherSummary_sourceName];
  v37 = v46;
  *v36 = v45;
  v36[1] = v37;
  v38 = type metadata accessor for WeatherSummary();
  v48.receiver = v11;
  v48.super_class = v38;
  v39 = objc_msgSendSuper2(&v48, sel_init);
  v40 = type metadata accessor for WeatherCondition();
  (*(*(v40 - 8) + 8))(a3, v40);
  v27(v47, v18);
  return v39;
}

uint64_t WeatherCondition.hkCondition.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WeatherCondition();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CE32F8])
  {
    return 20;
  }

  if (v7 == *MEMORY[0x277CE3220])
  {
    return 11;
  }

  if (v7 == *MEMORY[0x277CE3228])
  {
    return 19;
  }

  if (v7 == *MEMORY[0x277CE32D8])
  {
    return 8;
  }

  if (v7 == *MEMORY[0x277CE32B0])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277CE32E0])
  {
    return 5;
  }

  if (v7 == *MEMORY[0x277CE32F0])
  {
    return 29;
  }

  if (v7 == *MEMORY[0x277CE3300])
  {
    return 17;
  }

  if (v7 == *MEMORY[0x277CE32B8])
  {
    return 6;
  }

  if (v7 == *MEMORY[0x277CE3270])
  {
    return 23;
  }

  if (v7 == *MEMORY[0x277CE3240])
  {
    return 24;
  }

  if (v7 == *MEMORY[0x277CE32E8])
  {
    return 13;
  }

  if (v7 == *MEMORY[0x277CE3290])
  {
    return 21;
  }

  if (v7 == *MEMORY[0x277CE3298])
  {
    return 7;
  }

  if (v7 == *MEMORY[0x277CE3308])
  {
    return 31;
  }

  if (v7 == *MEMORY[0x277CE3310])
  {
    return 20;
  }

  if (v7 == *MEMORY[0x277CE3288])
  {
    return 12;
  }

  if (v7 == *MEMORY[0x277CE3318])
  {
    return 38;
  }

  if (v7 == *MEMORY[0x277CE3278])
  {
    return 33;
  }

  if (v7 == *MEMORY[0x277CE3230])
  {
    return 1;
  }

  if (v7 == *MEMORY[0x277CE3248])
  {
    return 4;
  }

  if (v7 == *MEMORY[0x277CE3250])
  {
    return 3;
  }

  if (v7 == *MEMORY[0x277CE32A0])
  {
    return 31;
  }

  if (v7 == *MEMORY[0x277CE3280])
  {
    return 34;
  }

  if (v7 == *MEMORY[0x277CE32C0])
  {
    return 22;
  }

  if (v7 == *MEMORY[0x277CE32C8])
  {
    return 10;
  }

  if (v7 == *MEMORY[0x277CE32A8])
  {
    return 18;
  }

  if (v7 == *MEMORY[0x277CE3258])
  {
    return 36;
  }

  if (v7 == *MEMORY[0x277CE3238])
  {
    return 17;
  }

  if (v7 == *MEMORY[0x277CE3218])
  {
    return 31;
  }

  if (v7 == *MEMORY[0x277CE3260])
  {
    return 35;
  }

  if (v7 == *MEMORY[0x277CE3268])
  {
    return 37;
  }

  if (v7 == *MEMORY[0x277CE32D0])
  {
    return 8;
  }

  if (v7 == *MEMORY[0x277CE3320])
  {
    return 28;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t WeatherSummary.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(112);
  MEMORY[0x20F2E6D80](0x616E6964726F6F63, 0xEC000000203A6574);
  v2 = CLLocationCoordinate2D.logString.getter(*(v1 + OBJC_IVAR___NLWeatherSummary_coordinate), *(v1 + OBJC_IVAR___NLWeatherSummary_coordinate + 8));
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](0x747961447369202CLL, 0xED0000203A656D69);
  if (*(v0 + OBJC_IVAR___NLWeatherSummary_isDaytime))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___NLWeatherSummary_isDaytime))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v3, v4);

  MEMORY[0x20F2E6D80](0x7265706D6574202CLL, 0xEF203A6572757461);
  v5 = [*(v0 + OBJC_IVAR___NLWeatherSummary_temperature) description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  MEMORY[0x20F2E6D80](v6, v8);

  MEMORY[0x20F2E6D80](0x6964696D7568202CLL, 0xEC000000203A7974);
  v9 = [*(v1 + OBJC_IVAR___NLWeatherSummary_humidity) description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  MEMORY[0x20F2E6D80](v10, v12);

  MEMORY[0x20F2E6D80](0x7469646E6F63202CLL, 0xED0000203A6E6F69);
  type metadata accessor for _HKPrivateWeatherCondition(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B464A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSNumberCSgMd, &_sSo8NSNumberCSgMR);
  v13 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v13);

  MEMORY[0x20F2E6D80](0x656372756F73202CLL, 0xEE00203A656D614ELL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v14 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v14);

  return 0;
}

unint64_t CLLocationCoordinate2D.logString.getter(double a1, double a2)
{
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  Double.write<A>(to:)();
  if (one-time initialization token for isInternal != -1)
  {
    swift_once();
  }

  if ((static CLLocationCoordinate2D.isInternal & 1) == 0)
  {
    MEMORY[0x20F2E6E10]();

    dispatch thunk of CustomStringConvertible.description.getter();
  }

  MEMORY[0x20F2E6D80]();

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD000000000000019;
}

id WeatherSummary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherSummaryManager.__allocating_init(withLocation:delegate:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___NLWeatherSummaryManager_location] = a1;
  swift_unknownObjectWeakAssign();
  v8.receiver = v4;
  v8.super_class = v2;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  swift_unknownObjectRelease();
  return v6;
}

id WeatherSummaryManager.init(withLocation:delegate:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR___NLWeatherSummaryManager_location] = a1;
  swift_unknownObjectWeakAssign();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for WeatherSummaryManager();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  swift_unknownObjectRelease();
  return v5;
}

Swift::Void __swiftcall WeatherSummaryManager.fetchSummary()()
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
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in WeatherSummaryManager.fetchSummary(), v6);
}

uint64_t closure #1 in WeatherSummaryManager.fetchSummary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for WeatherCondition();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WeatherKit0A5QueryVyAA10AirQualityVSgGMd, &_s10WeatherKit0A5QueryVyAA10AirQualityVSgGMR);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WeatherKit0A5QueryVyAA07CurrentA0VGMd, &_s10WeatherKit0A5QueryVyAA07CurrentA0VGMR);
  v4[22] = v8;
  v4[23] = *(v8 - 8);
  v4[24] = swift_task_alloc();
  v4[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v9 = type metadata accessor for CurrentWeather();
  v4[30] = v9;
  v4[31] = *(v9 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WeatherSummaryManager.fetchSummary(), 0, 0);
}

uint64_t closure #1 in WeatherSummaryManager.fetchSummary()()
{
  v28 = v0;
  v1 = v0[10];
  v2 = OBJC_IVAR___NLWeatherSummaryManager_location;
  [*(v1 + OBJC_IVAR___NLWeatherSummaryManager_location) coordinate];
  v4 = v3;
  v6 = v5;
  *(v0 + 37) = v3;
  *(v0 + 38) = v5;
  if (one-time initialization token for workouts != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  v0[39] = __swift_project_value_buffer(v7, static Logger.workouts);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v10 = 136315394;
    v13 = CLLocationCoordinate2D.logString.getter(v4, v6);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v27);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = [objc_opt_self() currentThread];
    *(v10 + 14) = v16;
    *v11 = v16;
    _os_log_impl(&dword_20AEA4000, v8, v9, "[weather] Fetching current weather for %s, thread: %@.", v10, 0x16u);
    outlined destroy of AirQuality?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x20F2E9420](v12, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  type metadata accessor for WeatherService();
  v0[40] = static WeatherService.shared.getter();
  v17 = *(v1 + v2);
  v0[41] = v17;
  v18 = v17;
  static WeatherQuery.current.getter();
  static WeatherQuery.airQuality.getter();
  v19 = swift_task_alloc();
  v0[42] = v19;
  *v19 = v0;
  v19[1] = closure #1 in WeatherSummaryManager.fetchSummary();
  v20 = v0[36];
  v21 = v0[29];
  v22 = v0[30];
  v23 = v0[24];
  v24 = v0[25];
  v25 = v0[21];

  return MEMORY[0x282135628](v20, v21, v18, v23, v25, v22, v24);
}

{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 184);
  v5 = *(*v1 + 176);
  v6 = *(*v1 + 168);
  v7 = *(*v1 + 160);
  v8 = *(*v1 + 152);
  *(*v1 + 344) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v9 = closure #1 in WeatherSummaryManager.fetchSummary();
  }

  else
  {
    v9 = closure #1 in WeatherSummaryManager.fetchSummary();
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v118 = v0;
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = *(*(v0 + 248) + 16);
  v8(*(v0 + 280), v1, v6);
  v8(v2, v1, v6);
  v8(v3, v1, v6);
  v8(v4, v1, v6);
  outlined init with copy of AirQuality?(v5, v7);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 272);
  v12 = *(v0 + 280);
  v14 = *(v0 + 264);
  v16 = *(v0 + 240);
  v15 = *(v0 + 248);
  v17 = *(v0 + 224);
  if (v11)
  {
    v111 = v10;
    log = v9;
    v115 = *(v0 + 256);
    v107 = *(v0 + 216);
    v18 = *(v0 + 144);
    v102 = *(v0 + 272);
    v20 = *(v0 + 120);
    v19 = *(v0 + 128);
    v105 = *(v0 + 96);
    v103 = *(v0 + 112);
    v104 = *(v0 + 88);
    v106 = *(v0 + 224);
    v21 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v117 = v109;
    *v21 = 136316418;
    CurrentWeather.temperature.getter();
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_8(&lazy protocol witness table cache variable for type Measurement<NSUnitTemperature> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR, MEMORY[0x277CC8800]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v101 = v14;
    v24 = v23;
    (*(v19 + 8))(v18, v20);
    v25 = *(v15 + 8);
    v25(v12, v16);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v117);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2048;
    CurrentWeather.humidity.getter();
    v28 = v27;
    v25(v102, v16);
    *(v21 + 14) = v28;
    *(v21 + 22) = 2080;
    CurrentWeather.condition.getter();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type WeatherCondition and conformance WeatherCondition, MEMORY[0x277CE3328], MEMORY[0x277CE3358]);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v105 + 8))(v103, v104);
    v25(v101, v16);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v117);

    *(v21 + 24) = v32;
    *(v21 + 32) = 1024;
    v33 = v115;
    LODWORD(v32) = CurrentWeather.isDaylight.getter() & 1;
    v116 = v25;
    v25(v33, v16);
    *(v21 + 34) = v32;
    *(v21 + 38) = 2080;
    outlined init with copy of AirQuality?(v106, v107);
    v34 = type metadata accessor for AirQuality();
    v35 = *(v34 - 8);
    v36 = (*(v35 + 48))(v107, 1, v34);
    v37 = *(v0 + 216);
    if (v36 == 1)
    {
      outlined destroy of AirQuality?(*(v0 + 216), &_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
      v38 = 0;
    }

    else
    {
      v38 = AirQuality.index.getter();
      (*(v35 + 8))(v37, v34);
    }

    v40 = v36 == 1;
    v42 = *(v0 + 296);
    v41 = *(v0 + 304);
    v43 = *(v0 + 224);
    *(v0 + 56) = v38;
    *(v0 + 64) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
    v44 = Optional.description.getter();
    v46 = v45;
    outlined destroy of AirQuality?(v43, &_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v117);

    *(v21 + 40) = v47;
    *(v21 + 48) = 2080;
    v48 = CLLocationCoordinate2D.logString.getter(v42, v41);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v117);

    *(v21 + 50) = v50;
    _os_log_impl(&dword_20AEA4000, log, v111, "[weather] Fetched current weather (temperature: %s, humidity: %f, condition: %s, isDaylight: %{BOOL}d, airQualityIndex: %s) for %s.", v21, 0x3Au);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v109, -1, -1);
    MEMORY[0x20F2E9420](v21, -1, -1);
  }

  else
  {
    v39 = *(v15 + 8);
    v39(*(v0 + 256), *(v0 + 240));

    outlined destroy of AirQuality?(v17, &_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
    v39(v14, v16);
    v39(v13, v16);
    v116 = v39;
    v39(v12, v16);
  }

  v51 = *(v0 + 232);
  v52 = *(v0 + 208);
  v53 = CurrentWeather.isDaylight.getter();
  CurrentWeather.temperature.getter();
  CurrentWeather.humidity.getter();
  v55 = v54;
  CurrentWeather.condition.getter();
  outlined init with copy of AirQuality?(v51, v52);
  v56 = type metadata accessor for AirQuality();
  v57 = *(v56 - 8);
  v58 = (*(v57 + 48))(v52, 1, v56);
  v59 = *(v0 + 208);
  loga = v58;
  if (v58 == 1)
  {
    outlined destroy of AirQuality?(v59, &_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
    v60 = 0;
  }

  else
  {
    v61 = AirQuality.index.getter();
    (*(v57 + 8))(v59, v56);
    v60 = v61;
  }

  v63 = *(v0 + 296);
  v62 = *(v0 + 304);
  v64 = *(v0 + 144);
  v66 = *(v0 + 120);
  v65 = *(v0 + 128);
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v110 = v68;
  v112 = v67;
  v69 = type metadata accessor for WeatherSummary();
  v70 = objc_allocWithZone(v69);
  v71 = &v70[OBJC_IVAR___NLWeatherSummary_coordinate];
  *v71 = v63;
  v71[1] = v62;
  v70[OBJC_IVAR___NLWeatherSummary_isDaytime] = v53 & 1;
  v72 = [objc_opt_self() fahrenheit];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v74 = v73;
  v108 = *(v65 + 8);
  v108(v64, v66);
  v75 = objc_opt_self();
  v76 = [v75 degreeFahrenheitUnit];
  v77 = objc_opt_self();
  v78 = [v77 quantityWithUnit:v76 doubleValue:v74];

  *&v70[OBJC_IVAR___NLWeatherSummary_temperature] = v78;
  v79 = [v75 percentUnit];
  v80 = [v77 quantityWithUnit:v79 doubleValue:v55 * 100.0];

  *&v70[OBJC_IVAR___NLWeatherSummary_humidity] = v80;
  if (loga == 1)
  {
    v81 = 0;
  }

  else
  {
    v81 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  v82 = *(v0 + 136);
  v83 = *(v0 + 120);
  v85 = *(v0 + 96);
  v84 = *(v0 + 104);
  v86 = *(v0 + 88);
  *&v70[OBJC_IVAR___NLWeatherSummary_airQualityIndex] = v81;
  *&v70[OBJC_IVAR___NLWeatherSummary_condition] = WeatherCondition.hkCondition.getter();
  v87 = &v70[OBJC_IVAR___NLWeatherSummary_sourceName];
  *v87 = v112;
  v87[1] = v110;
  *(v0 + 40) = v70;
  *(v0 + 48) = v69;
  v88 = objc_msgSendSuper2((v0 + 40), sel_init);
  (*(v85 + 8))(v84, v86);
  v108(v82, v83);
  v89 = v88;
  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    *v92 = 138412290;
    *(v92 + 4) = v89;
    *v93 = v89;
    v94 = v89;
    _os_log_impl(&dword_20AEA4000, v90, v91, "[weather] Fetched current weather, summary (%@).", v92, 0xCu);
    outlined destroy of AirQuality?(v93, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v93, -1, -1);
    MEMORY[0x20F2E9420](v92, -1, -1);
  }

  v95 = *(v0 + 288);
  v96 = *(v0 + 240);
  v97 = *(v0 + 232);
  v98 = v89;
  WeatherSummaryManager.notifyDelegate(with:)(v89);

  outlined destroy of AirQuality?(v97, &_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
  v116(v95, v96);

  v99 = *(v0 + 8);

  return v99();
}

{
  v14 = v0;
  v1 = *(v0 + 344);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "[weather] Error fetching current weather: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v10 = *(v0 + 344);
  WeatherSummaryManager.notifyDelegate(with:)(0);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t WeatherSummaryManager.notifyDelegate(with:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in WeatherSummaryManager.notifyDelegate(with:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_54;
  v13 = _Block_copy(aBlock);
  v14 = a1;
  v15 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_8(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v10, v6, v13);
  _Block_release(v13);

  (*(v18 + 8))(v6, v3);
  return (*(v7 + 8))(v10, v17);
}

void *closure #1 in WeatherSummaryManager.notifyDelegate(with:)(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result manager:a1 updatedSummary:a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

id WeatherSummary.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t one-time initialization function for workouts()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.workouts);
  __swift_project_value_buffer(v0, static Logger.workouts);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for isInternal()
{
  result = os_variant_has_internal_diagnostics();
  static CLLocationCoordinate2D.isInternal = result;
  return result;
}

void specialized WeatherSummaryManager.cancelFetch()()
{
  if (one-time initialization token for workouts != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.workouts);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v1, "[weather] Asked to cancel current weather fetch.", v2, 2u);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }
}

uint64_t partial apply for closure #1 in WeatherSummaryManager.fetchSummary()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WeatherSummaryManager.fetchSummary();

  return closure #1 in WeatherSummaryManager.fetchSummary()(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_5()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t closure #1 in WeatherSummaryManager.fetchSummary()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WeatherSummaryManager.fetchSummary()partial apply;

  return closure #1 in WeatherSummaryManager.fetchSummary()(a1, v4, v5, v6);
}

uint64_t closure #1 in WeatherSummaryManager.fetchSummary()partial apply()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined init with copy of AirQuality?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WeatherKit10AirQualityVSgMd, &_s10WeatherKit10AirQualityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AirQuality?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void key path getter for InferenceAvailabilityProvider.inferenceAvailabilityState : InferenceAvailabilityProvider(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

double key path setter for InferenceAvailabilityProvider.inferenceAvailabilityState : InferenceAvailabilityProvider(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void InferenceAvailabilityProvider.inferenceAvailabilityState.getter(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  v4 = v1;
  lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState;
  swift_beginAccess();
  *a1 = *(v4 + v3);
}

unint64_t lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider()
{
  result = lazy protocol witness table cache variable for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider;
  if (!lazy protocol witness table cache variable for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider)
  {
    type metadata accessor for InferenceAvailabilityProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider);
  }

  return result;
}

uint64_t type metadata accessor for InferenceAvailabilityProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for InferenceAvailabilityProvider;
  if (!type metadata singleton initialization cache for InferenceAvailabilityProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double InferenceAvailabilityProvider.inferenceAvailabilityState.setter(char *a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void partial apply for closure #1 in InferenceAvailabilityProvider.inferenceAvailabilityState.setter()
{
  partial apply for closure #1 in InferenceAvailabilityProvider.inferenceAvailabilityState.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t (*InferenceAvailabilityProvider.inferenceAvailabilityState.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = InferenceAvailabilityProvider._inferenceAvailabilityState.modify(v4);
  return InferenceAvailabilityProvider.inferenceAvailabilityState.modify;
}

void InferenceAvailabilityProvider.inferenceAvailabilityState.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t InferenceAvailabilityProvider.inferenceIsAvailable.getter()
{
  swift_getKeyPath();
  v3 = v0;
  lazy protocol witness table accessor for type InferenceAvailabilityProvider and conformance InferenceAvailabilityProvider();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState;
  swift_beginAccess();
  return *(v3 + v1) & 1;
}

uint64_t InferenceAvailabilityProvider.__allocating_init(inferenceClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState) = 2;
  ObservationRegistrar.init()();
  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider_inferenceClient;
  v4 = type metadata accessor for InferenceClient();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t InferenceAvailabilityProvider.init(inferenceClient:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider__inferenceAvailabilityState) = 2;
  ObservationRegistrar.init()();
  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider_inferenceClient;
  v4 = type metadata accessor for InferenceClient();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t InferenceAvailabilityProvider.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t InferenceAvailabilityProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore29InferenceAvailabilityProvider___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for InferenceAvailabilityProvider(uint64_t a1)
{
  result = type metadata accessor for InferenceClient();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceAvailabilityProvider.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InferenceAvailabilityProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for InferenceAvailabilityProvider.State(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for InferenceAvailabilityProvider.State(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

double key path getter for AddWorkoutDataSource.popular : AddWorkoutDataSource@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource, &protocol conformance descriptor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

double AddWorkoutDataSource.popular.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource, &protocol conformance descriptor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for AddWorkoutDataSource(uint64_t a1)
{
  result = type metadata singleton initialization cache for AddWorkoutDataSource;
  if (!type metadata singleton initialization cache for AddWorkoutDataSource)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double AddWorkoutDataSource.popular.setter(unint64_t a1)
{
  swift_beginAccess();

  v4 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore08Standardb3AddB3RowC_Tt1g5(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource, &protocol conformance descriptor for AddWorkoutDataSource);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void closure #1 in AddWorkoutDataSource.popular.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*AddWorkoutDataSource.popular.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC11WorkoutCore20AddWorkoutDataSource___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource, &protocol conformance descriptor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AddWorkoutDataSource._popular.modify(v4);
  return AddWorkoutDataSource.popular.modify;
}

double key path getter for AddWorkoutDataSource.alphabeticGroups : AddWorkoutDataSource@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource, &protocol conformance descriptor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);

  return result;
}

double AddWorkoutDataSource.alphabeticGroups.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource, &protocol conformance descriptor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

double AddWorkoutDataSource.alphabeticGroups.setter(uint64_t a1)
{
  swift_beginAccess();

  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say11WorkoutCore08Standardb3AddB3RowCGTt1g5(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v8);
    lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource, &protocol conformance descriptor for AddWorkoutDataSource);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void closure #1 in AddWorkoutDataSource.alphabeticGroups.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t (*AddWorkoutDataSource.alphabeticGroups.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC11WorkoutCore20AddWorkoutDataSource___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type AddWorkoutDataSource and conformance AddWorkoutDataSource, type metadata accessor for AddWorkoutDataSource, &protocol conformance descriptor for AddWorkoutDataSource);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = AddWorkoutDataSource._alphabeticGroups.modify(v4);
  return AddWorkoutDataSource.alphabeticGroups.modify;
}

void AddWorkoutDataSource.popular.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t AddWorkoutDataSource.__allocating_init(wheelchairStatusProvider:bypassReadinessChecker:)(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = swift_allocObject();
  AddWorkoutDataSource.init(wheelchairStatusProvider:bypassReadinessChecker:)(a1, v2);
  return v4;
}

uint64_t AddWorkoutDataSource.init(wheelchairStatusProvider:bypassReadinessChecker:)(void *a1, char a2)
{
  LOBYTE(v3) = a2;
  v5 = MEMORY[0x277D84F90];
  *(v2 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say11WorkoutCore08Standardc3AddC3RowCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  ObservationRegistrar.init()();
  v58 = v2;
  *(v2 + 32) = a1;
  v6 = objc_opt_self();
  v57 = a1;
  swift_unknownObjectRetain();
  v7 = [v6 addWorkoutPopularRows_];
  if (!v7)
  {
    __break(1u);
    goto LABEL_80;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore03AddA3Row_pMd, &_s11WorkoutCore03AddA3Row_pMR);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v64[0] = v5;
  v59 = v6;
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v3;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_22:
    v13 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v10 = __CocoaSet.count.getter();
  v11 = v3;
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_4:
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  do
  {
    v14 = v12;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        LOBYTE(v3) = MEMORY[0x20F2E7A20](v14, v9);
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v14 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v3 = *(v9 + 8 * v14 + 32);
        swift_unknownObjectRetain();
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }
      }

      type metadata accessor for StandardWorkoutAddWorkoutRow();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        break;
      }

      swift_unknownObjectRelease();
      ++v14;
      if (v12 == v10)
      {
        goto LABEL_23;
      }
    }

    LOBYTE(v3) = v15;
    MEMORY[0x20F2E6F30]();
    if (*((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v13 = v64[0];
  }

  while (v12 != v10);
LABEL_23:

  *(v58 + 16) = v13;
  v16 = MEMORY[0x277D84F90];
  v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say11WorkoutCore08Standardc3AddC3RowCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (v11)
  {
    v18 = 1;
    v19 = 1;
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v20 = static WorkoutDevicesProvider.shared;
    v19 = WorkoutReadinessChecker.supportsPairedWatchFeatures()();
    v64[0] = v20;
    v18 = WorkoutReadinessChecker.supportsExternalHeartRateSensorFeatures()();
  }

  v21 = [v59 NLAddWorkoutAllSortedRowsIsWheelchairUser:objc_msgSend(v57 supportsPairedWatchFeatures:sel_isWheelchairUser) supportsExternalHeartRateSensorFeatures:{v19, v18}];
  if (!v21)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v22 = v21;
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v64[0] = v16;
  v24 = v23 & 0xFFFFFFFFFFFFFF8;
  if (v23 >> 62)
  {
LABEL_78:
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v27 = 0;
    while (2)
    {
      v28 = v27;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          MEMORY[0x20F2E7A20](v28, v23);
          v27 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v28 >= *(v24 + 16))
          {
            goto LABEL_73;
          }

          swift_unknownObjectRetain();
          v27 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }
        }

        type metadata accessor for StandardWorkoutAddWorkoutRow();
        if (swift_dynamicCastClass())
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v28;
        if (v27 == v25)
        {
          goto LABEL_46;
        }
      }

      MEMORY[0x20F2E6F30]();
      if (*((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v26 = v64[0];
      if (v27 != v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_46:

  v29 = [objc_opt_self() currentCollation];
  specialized _arrayForceCast<A, B>(_:)(v26);

  isa = Array._bridgeToObjectiveC()().super.isa;

  v60 = v29;
  v31 = [v29 sortedArrayFromArray:isa collationStringSelector:sel_sortingTitle];

  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = v32 + 32;
    do
    {
      outlined init with copy of Any(v34, v64);
      __swift_project_boxed_opaque_existential_0(v64, v64[3]);
      v35 = [v60 sectionForObject:_bridgeAnythingToObjectiveC<A>(_:)() collationStringSelector:sel_sortingTitle];
      swift_unknownObjectRelease();
      v23 = [v60 sectionTitles];
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      if (v35 >= *(v36 + 16))
      {
        goto LABEL_75;
      }

      v37 = v36 + 16 * v35;
      v23 = *(v37 + 32);
      v38 = *(v37 + 40);

      if (v17[2] && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v38), (v40 & 1) != 0))
      {
        v41 = *(v17[7] + 8 * v39);
        v63 = v41;
      }

      else
      {
        v41 = MEMORY[0x277D84F90];
        v63 = MEMORY[0x277D84F90];
      }

      outlined init with copy of Any(v64, &v62);
      type metadata accessor for StandardWorkoutAddWorkoutRow();
      if (swift_dynamicCast())
      {
        v42 = v61;
        MEMORY[0x20F2E6F30]();
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v41 = v63;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v17;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v38);
      v45 = v17[2];
      v46 = (v44 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_76;
      }

      v48 = v44;
      if (v17[3] >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v17 = v62;
          if (v44)
          {
            goto LABEL_48;
          }
        }

        else
        {
          specialized _NativeDictionary.copy()();
          v17 = v62;
          if (v48)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, isUniquelyReferenced_nonNull_native);
        v49 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v38);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_81;
        }

        v24 = v49;
        v17 = v62;
        if (v48)
        {
LABEL_48:
          *(v17[7] + 8 * v24) = v41;

          goto LABEL_49;
        }
      }

      v17[(v24 >> 6) + 8] |= 1 << v24;
      v51 = (v17[6] + 16 * v24);
      *v51 = v23;
      v51[1] = v38;
      *(v17[7] + 8 * v24) = v41;
      v52 = v17[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_77;
      }

      v17[2] = v54;
LABEL_49:
      __swift_destroy_boxed_opaque_existential_0(v64);
      v34 += 32;
      --v33;
    }

    while (v33);
  }

  AddWorkoutDataSource.alphabeticGroups.setter(v55);

  swift_unknownObjectRelease();
  return v58;
}

char *AddWorkoutDataSource.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC11WorkoutCore20AddWorkoutDataSource___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AddWorkoutDataSource.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC11WorkoutCore20AddWorkoutDataSource___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueVTt1g5(uint64_t a1, uint64_t a2)
{
  v88 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue(0);
  v4 = *(v88 - 8);
  MEMORY[0x28223BE20](v88, v5);
  v75 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v71 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMR);
  MEMORY[0x28223BE20](v81, v11);
  v82 = &v71 - v12;
  v80 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  v86 = *(v80 - 8);
  v14 = MEMORY[0x28223BE20](v80, v13);
  v87 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v77 = &v71 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v79 = &v71 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMR);
  v23 = MEMORY[0x28223BE20](v21 - 8, v22);
  v25 = (&v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v23, v26);
  v29 = (&v71 - v28);
  v83 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v83 + 16))
  {
    return 0;
  }

  v30 = 0;
  v76 = a1;
  v31 = *(a1 + 64);
  v73 = a1 + 64;
  v74 = v10;
  v32 = 1 << *(a1 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v72 = (v32 + 63) >> 6;
  v78 = (v4 + 48);
  v35 = &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMd;
  v36 = v77;
  while (v34)
  {
    v85 = (v34 - 1) & v34;
    v39 = __clz(__rbit64(v34)) | (v30 << 6);
LABEL_17:
    v44 = (*(v76 + 48) + 16 * v39);
    v45 = *v44;
    v46 = v44[1];
    v47 = v79;
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(*(v76 + 56) + *(v86 + 72) * v39, v79);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
    v49 = *(v48 + 48);
    *v25 = v45;
    v25[1] = v46;
    outlined init with take of Apple_Workout_Core_ActivityMetadataValue(v47, v25 + v49, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
    (*(*(v48 - 8) + 56))(v25, 0, 1, v48);

LABEL_18:
    outlined init with take of (key: String, value: Apple_Workout_Core_ActivityMetadataValue)?(v25, v29);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
    v51 = (*(*(v50 - 8) + 48))(v29, 1, v50);
    v84 = v51 == 1;
    if (v51 == 1)
    {
      return v84;
    }

    v52 = v35;
    v53 = v25;
    v54 = v88;
    v55 = *(v50 + 48);
    v56 = *v29;
    v57 = v29[1];
    v58 = v83;
    v59 = v29;
    outlined init with take of Apple_Workout_Core_ActivityMetadataValue(v29 + v55, v36, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
    v60 = v36;
    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v57);
    LOBYTE(v56) = v62;

    if ((v56 & 1) == 0)
    {
      goto LABEL_31;
    }

    v63 = v87;
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(*(v58 + 56) + *(v86 + 72) * v61, v87);
    v64 = v82;
    v65 = *(v81 + 48);
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v63, v82);
    outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v60, v64 + v65);
    v66 = *v78;
    if ((*v78)(v64, 1, v54) == 1)
    {
      v36 = v60;
      if (v66(v64 + v65, 1, v88) != 1)
      {
        goto LABEL_29;
      }

      v29 = v59;
      outlined destroy of (Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?, Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?)(v64, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
    }

    else
    {
      v67 = v74;
      outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(v64, v74);
      if (v66(v64 + v65, 1, v88) == 1)
      {
        outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v67, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
        v36 = v77;
LABEL_29:
        outlined destroy of (Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?, Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?)(v64, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSg_AFtMR);
LABEL_30:
        outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v87, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
        v60 = v36;
LABEL_31:
        outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v60, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
        return 0;
      }

      v29 = v59;
      v68 = v75;
      outlined init with take of Apple_Workout_Core_ActivityMetadataValue(v64 + v65, v75, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      v69 = specialized static Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue.== infix(_:_:)(v67, v68);
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v68, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v67, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue);
      outlined destroy of (Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?, Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?)(v64, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
      v36 = v77;
      if (!v69)
      {
        goto LABEL_30;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v37 = v87;
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v37, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
    result = outlined destroy of Apple_Workout_Core_ActivityMetadataValue(v36, type metadata accessor for Apple_Workout_Core_ActivityMetadataValue);
    v25 = v53;
    v35 = v52;
    v34 = v85;
    if ((v38 & 1) == 0)
    {
      return v84;
    }
  }

  if (v72 <= v30 + 1)
  {
    v40 = v30 + 1;
  }

  else
  {
    v40 = v72;
  }

  v41 = v40 - 1;
  while (1)
  {
    v42 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v42 >= v72)
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(v35, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetMR);
      (*(*(v70 - 8) + 56))(v25, 1, 1, v70);
      v85 = 0;
      v30 = v41;
      goto LABEL_18;
    }

    v43 = *(v73 + 8 * v42);
    ++v30;
    if (v43)
    {
      v85 = (v43 - 1) & v43;
      v39 = __clz(__rbit64(v43)) | (v42 << 6);
      v30 = v42;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs5Int32V_SdTt1g5(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 4 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_Say11WorkoutCore08Standardb3AddB3RowCGTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_13:
      v11 = v8 | (v3 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = *v12;
      v14 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v11);

      specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      v17 = v16;

      if ((v17 & 1) == 0)
      {

        return;
      }

      v19 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore08Standardb3AddB3RowC_Tt1g5(v18, v15);

      if ((v19 & 1) == 0)
      {
        return;
      }
    }

    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v6 = (v10 - 1) & v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ11WorkoutCore16ExternalProviderC_SayAC0B13ConfigurationCGTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_13:
      v11 = v8 | (v3 << 6);
      v12 = *(*(a1 + 48) + 8 * v11);
      v13 = *(*(a1 + 56) + 8 * v11);

      specialized __RawDictionaryStorage.find<A>(_:)(v12);
      v15 = v14;

      if ((v15 & 1) == 0)
      {

        return;
      }

      v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B13ConfigurationC_Tt1g5(v16, v13);

      if ((v17 & 1) == 0)
      {
        return;
      }
    }

    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v6 = (v10 - 1) & v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t type metadata completion function for AddWorkoutDataSource(uint64_t a1)
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

uint64_t outlined init with copy of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: String, value: Apple_Workout_Core_ActivityMetadataValue)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMd, &_sSS3key_11WorkoutCore06Apple_b1_C22_ActivityMetadataValueV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMd, &_s11WorkoutCore06Apple_a1_B22_ActivityMetadataValueV06OneOf_eF0OSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?, Apple_Workout_Core_ActivityMetadataValue.OneOf_MetadataValue?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type AddWorkoutDataSource and conformance AddWorkoutDataSource(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void HeartRateTargetZone.workoutKitRepresentation.getter(uint64_t a1@<X8>)
{
  if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
    {
      v3 = v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
      swift_beginAccess();
      if ((*(v3 + 16) & 1) == 0)
      {
        if (*v3 <= *(v3 + 8))
        {
          v4 = static WorkoutAlertMetric.countPerMinute.getter();
          *(a1 + 24) = type metadata accessor for HeartRateRangeAlert();
          *(a1 + 32) = lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type HeartRateRangeAlert and conformance HeartRateRangeAlert, MEMORY[0x277CE40C8], MEMORY[0x277CE40C0]);
          __swift_allocate_boxed_opaque_existential_1(a1);
          static WorkoutAlert<>.heartRate(_:unit:)();

          return;
        }

        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_7:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v5 = v1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  swift_beginAccess();
  if (*(v5 + 8))
  {
    goto LABEL_7;
  }

  if (!__OFADD__(*v5, 1))
  {
    *(a1 + 24) = type metadata accessor for HeartRateZoneAlert();
    *(a1 + 32) = lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert, MEMORY[0x277CE4098], MEMORY[0x277CE4090]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    static WorkoutAlert<>.heartRate(zone:)();
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MirroredClientPrecisionStart.init(protobuf:)(double *a1)
{
  Date.init(timeIntervalSinceReferenceDate:)();

  return outlined destroy of Apple_Workout_Core_MirroredClientPrecisionStart(a1);
}

uint64_t outlined destroy of Apple_Workout_Core_MirroredClientPrecisionStart(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MirroredClientPrecisionStart.precisionStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MirroredClientPrecisionStart.init(precisionStartDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t MirroredClientPrecisionStart.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart, &protocol conformance descriptor for Apple_Workout_Core_MirroredClientPrecisionStart);
  return static Message.with(_:)();
}

unint64_t MirroredClientPrecisionStart.description.getter()
{
  _StringGuts.grow(_:)(22);

  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v0 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x20F2E6D80](v3, v5);

  return 0xD000000000000014;
}

uint64_t protocol witness for MirroredMessageProtocol.init(protobuf:) in conformance MirroredClientPrecisionStart(double *a1)
{
  Date.init(timeIntervalSinceReferenceDate:)();

  return outlined destroy of Apple_Workout_Core_MirroredClientPrecisionStart(a1);
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredClientPrecisionStart()
{
  type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart, type metadata accessor for Apple_Workout_Core_MirroredClientPrecisionStart, &protocol conformance descriptor for Apple_Workout_Core_MirroredClientPrecisionStart);
  return static Message.with(_:)();
}

uint64_t MirroredClientPrecisionStart.hash(into:)(uint64_t a1)
{
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int MirroredClientPrecisionStart.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredClientPrecisionStart()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MirroredClientPrecisionStart(uint64_t a1)
{
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredClientPrecisionStart(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t instantiation function for generic protocol witness table for MirroredClientPrecisionStart(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(&lazy protocol witness table cache variable for type MirroredClientPrecisionStart and conformance MirroredClientPrecisionStart, type metadata accessor for MirroredClientPrecisionStart, &protocol conformance descriptor for MirroredClientPrecisionStart);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for MirroredClientPrecisionStart(uint64_t a1)
{
  result = type metadata singleton initialization cache for MirroredClientPrecisionStart;
  if (!type metadata singleton initialization cache for MirroredClientPrecisionStart)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredClientPrecisionStart and conformance Apple_Workout_Core_MirroredClientPrecisionStart(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata completion function for MirroredClientPrecisionStart(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

WorkoutCore::MultisportTransitionState_optional __swiftcall MultisportTransitionState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type MultisportTransitionState and conformance MultisportTransitionState()
{
  result = lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState;
  if (!lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultisportTransitionState and conformance MultisportTransitionState);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MultisportTransitionState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MultisportTransitionState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for MultisportTransitionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MultisportTransitionState(uint64_t result, unsigned int a2, unsigned int a3)
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

double PowerAccumulator.instantaneousPower.getter()
{
  return PowerAccumulator.instantaneousPower.getter();
}

{
  return FakeableMetric.wrappedValue.getter();
}

void PowerAccumulator.instantaneousPower.didset()
{
  v1 = v0;
  if (FakeableMetric.wrappedValue.getter() == 0.0)
  {
    goto LABEL_20;
  }

  v2 = OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone;
  v3 = *&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone] + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  if (*(v3 + 16) <= 0x3Fu)
  {
    if (*(v3 + 8) <= 3u || *(v3 + 8) > 5u || *(v3 + 8) == 4)
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    v5 = FakeableMetric.wrappedValue.getter();
    PowerAccumulator.trackTargetZone(for:)(v5);
  }

LABEL_11:
  v6 = *&v1[v2] + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v7 = *(v6 + 16);
  if ((v7 & 0xC0) != 0x80)
  {
    goto LABEL_20;
  }

  v8 = v7 & 0x3F;
  if (v8 <= 3 || v8 > 5 || v8 == 4)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v10 = FakeableMetric.wrappedValue.getter();
  PowerAccumulator.trackTargetZone(for:)(v10);
LABEL_20:
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in PowerAccumulator.instantaneousPower.didset, v11);

  v12 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  swift_beginAccess();
  v1[v12] = 0;
  v13 = [v1 updateHandler];
  if (v13)
  {
    v14 = v13;
    (*(v13 + 2))();
    _Block_release(v14);
  }
}

void closure #1 in PowerAccumulator.instantaneousPower.didset(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower + 16) = 0;
    PowerAccumulator.instantaneousPower.didset();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
    v6 = v4;
    swift_beginAccess();
    v6[v5] = 1;
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 updateHandler];

    if (v9)
    {
      v9[2](v9);
      _Block_release(v9);
    }
  }
}

uint64_t (*PowerAccumulator.instantaneousPower.modify(uint64_t a1))()
{
  v2 = OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *a1 = FakeableMetric.wrappedValue.getter();
  return PowerAccumulator.instantaneousPower.modify;
}

uint64_t PowerAccumulator.instantaneousPowerStale.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  swift_beginAccess();
  return *(v0 + v1);
}

void PowerAccumulator.instantaneousPowerStale.setter(char a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void PowerAccumulator.averagePower.didset()
{
  v1 = v0;
  v2 = OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone;
  v3 = *&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone] + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  if (*(v3 + 16) <= 0x3Fu)
  {
    if (*(v3 + 8) == 6)
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v5 = FakeableMetric.wrappedValue.getter();
    PowerAccumulator.trackTargetZone(for:)(v5);
  }

LABEL_6:
  v6 = *&v1[v2] + OBJC_IVAR___WOCorePowerZonesAlertTargetZone_type;
  swift_beginAccess();
  v7 = *(v6 + 16);
  if ((v7 & 0xC0) != 0x80)
  {
    goto LABEL_11;
  }

  if ((v7 & 0x3F) == 6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v9 = FakeableMetric.wrappedValue.getter();
  PowerAccumulator.trackTargetZone(for:)(v9);
LABEL_11:
  v10 = [v1 updateHandler];
  if (v10)
  {
    v11 = v10;
    (*(v10 + 2))();
    _Block_release(v11);
  }
}

uint64_t (*PowerAccumulator.averagePower.modify(uint64_t a1))()
{
  v2 = OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *a1 = FakeableMetric.wrappedValue.getter();
  return PowerAccumulator.averagePower.modify;
}

void PowerAccumulator.thirtySecondAveragePower.setter(double a1)
{
  *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower + 16] = a1;
  v2 = [v1 updateHandler];
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))();

    _Block_release(v3);
  }
}

void key path setter for PowerAccumulator.thirtySecondAveragePower : PowerAccumulator(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  *(*a2 + OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower + 16) = v2;
  v4 = [v3 updateHandler];
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))();

    _Block_release(v5);
  }
}

uint64_t (*PowerAccumulator.thirtySecondAveragePower.modify(uint64_t a1))()
{
  v2 = OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower;
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *a1 = FakeableMetric.wrappedValue.getter();
  return PowerAccumulator.thirtySecondAveragePower.modify;
}

void PowerAccumulator.thirtySecondAveragePower.modify(void *a1)
{
  v1 = a1[1];
  *&v1[a1[2] + 16] = *a1;
  v2 = [v1 updateHandler];
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))();

    _Block_release(v3);
  }
}

void key path getter for PowerAccumulator.samplesPublished : PowerAccumulator(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for PowerAccumulator.samplesPublished : PowerAccumulator(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  static Published.subscript.setter();
  return result;
}

uint64_t PowerAccumulator.samplesPublished.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double PowerAccumulator.samplesPublished.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  return result;
}

uint64_t (*PowerAccumulator.samplesPublished.modify(uint64_t *a1))()
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
  return PowerAccumulator.samplesPublished.modify;
}

void PowerAccumulator.samplesPublished.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for PowerAccumulator.$samplesPublished : PowerAccumulator(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for PowerAccumulator.$samplesPublished : PowerAccumulator(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PowerAccumulator.$samplesPublished.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t PowerAccumulator.$samplesPublished.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PowerAccumulator.$samplesPublished.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMR);
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

  v10 = OBJC_IVAR___NLSessionActivityPowerAccumulator__samplesPublished;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerAccumulator.$samplesPublished.modify;
}

void PowerAccumulator.$samplesPublished.modify(uint64_t a1, char a2)
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

uint64_t PowerAccumulator.chartDataElements.getter()
{
  if (!*(v0 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider))
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v2);

  return v2;
}

void key path setter for PowerAccumulator.invalidationTimer : PowerAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *PowerAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PowerAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for PowerAccumulator.startDate : PowerAccumulator(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  _s10Foundation4DateVSgWOcTm_5(a1, &v15 - v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *a2;
  v13 = *a5;
  swift_beginAccess();
  outlined assign with take of Date?(v11, v12 + v13);
  return swift_endAccess();
}

uint64_t PowerAccumulator.startDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return _s10Foundation4DateVSgWOcTm_5(v2 + v4, a2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t PowerAccumulator.startDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

void PowerAccumulator.oldZoneState.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void PowerAccumulator.oldZoneState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t PowerAccumulator.workoutAlertDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PowerAccumulator.workoutAlertDelegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___NLSessionActivityPowerAccumulator_workoutAlertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return PowerAccumulator.workoutAlertDelegate.modify;
}

void PowerAccumulator.workoutAlertDelegate.modify(void **a1, char a2)
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

unsigned __int8 *PowerAccumulator.__allocating_init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(void *a1, void *a2, void *a3, char *a4, void *a5, void *a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = specialized PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(a1, a2, a3, a4, a5, a6);

  return v14;
}

unsigned __int8 *PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(void *a1, void *a2, void *a3, char *a4, void *a5, void *a6)
{
  v7 = specialized PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(a1, a2, a3, a4, a5, a6);

  return v7;
}

uint64_t closure #1 in PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = partial apply for closure #1 in closure #1 in PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_90;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v13);
  _Block_release(v13);

  (*(v17 + 8))(v5, v2);
  return (*(v6 + 8))(v9, v16);
}

void closure #1 in closure #1 in PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    PowerAccumulator.didUpdateBTSensorSeenStatus()();
  }
}

id PowerAccumulator.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = objc_opt_self();
  v3 = v0;
  v4 = [v2 didUpdateBTSensorSeenStatus];
  [v1 removeObserver:v3 name:v4 object:0];

  v6.receiver = v3;
  v6.super_class = type metadata accessor for PowerAccumulator(0);
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

void PowerAccumulator.didUpdateBTSensorSeenStatus()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v27 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled;
  if (v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled])
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.app);
    v27 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20AEA4000, v27, v12, "PowerAccumulator: (didUpdateBTSensorSeenStatus) early return because power chart is alreay enabled", v13, 2u);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    v14 = v27;
  }

  else
  {
    specialized static PowerAccumulator.powerChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(*&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_liveWorkoutConfiguration], *&v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_workoutSettingsManager]);
    v0[v10] = v15 & 1;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.app);
    v17 = v0;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v27 = v6;
      v21 = v20;
      *v20 = 67109376;
      v20[1] = v0[v10];

      *(v21 + 4) = 1024;
      *(v21 + 10) = [objc_opt_self() hasHadPairedCyclingPowerSensors];
      _os_log_impl(&dword_20AEA4000, v18, v19, "PowerAccumulator: (didUpdateBTSensorSeenStatus) updated powerChartEnabled: %{BOOL}d, hasHadPairedCyclingPowerSensors: %{BOOL}d", v21, 0xEu);
      v22 = v21;
      v6 = v27;
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    else
    {

      v18 = v17;
    }

    v23 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
    swift_beginAccess();
    _s10Foundation4DateVSgWOcTm_5(v17 + v23, v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((v6[6].isa)(v4, 1, v5) == 1)
    {
      _sSo8NSObjectCSgWOhTm_11(v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_20AEA4000, v24, v25, "PowerAccumulator: (didUpdateBTSensorSeenStatus) early return because accumulator did not start yet", v26, 2u);
        MEMORY[0x20F2E9420](v26, -1, -1);
      }
    }

    else
    {
      (v6[4].isa)(v9, v4, v5);
      if (v0[v10] == 1)
      {
        PowerAccumulator.enablePowerChart(with:)(v9);
      }

      (v6[1].isa)(v9, v5);
    }
  }
}

void PowerAccumulator.enablePowerChart(with:)(NSObject *a1)
{
  v96 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v93 = &v82 - v17;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x28223BE20](v18, v20);
  MEMORY[0x28223BE20](v21, v22);
  v25 = &v82 - v24;
  if (v1[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled] == 1)
  {
    v91 = v23;
    v84 = v14;
    v85 = v7;
    v86 = v10;
    v88 = v3;
    v90 = v1;
    if (one-time initialization token for app != -1)
    {
LABEL_52:
      swift_once();
    }

    v87 = v6;
    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static WOLog.app);
    v27 = *(v19 + 16);
    v27(v25, v96, v18);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v89 = v2;
    v92 = v19;
    if (v30)
    {
      v83 = v27;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v99 = v32;
      *v31 = 136315138;
      if (one-time initialization token for logDateFormatter != -1)
      {
        swift_once();
      }

      v33 = static WOLog.logDateFormatter;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v35 = [v33 stringFromDate_];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      (*(v92 + 8))(v25, v18);
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v99);

      *(v31 + 4) = v39;
      _os_log_impl(&dword_20AEA4000, v28, v29, "PowerAccumulator: enabling power chart with startDate: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x20F2E9420](v32, -1, -1);
      MEMORY[0x20F2E9420](v31, -1, -1);

      v27 = v83;
    }

    else
    {

      (*(v19 + 8))(v25, v18);
    }

    v44 = objc_opt_self();
    v6 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
    v45 = [v44 standardUserDefaults];
    v46 = MEMORY[0x20F2E6C00](0x65776F50656B6166, 0xEE00747261684372);
    v47 = [v45 BOOLForKey_];

    if (v47)
    {
      v48 = [v44 standardUserDefaults];
      v49 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B464FC0);
      v50 = [v48 arrayForKey_];

      if (v50)
      {
        v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v2 = specialized _arrayConditionalCast<A, B>(_:)(v51);

        if (v2)
        {
          v18 = *(v2 + 16);
          if (!v18)
          {
            v96 = MEMORY[0x277D84F90];
            goto LABEL_47;
          }

          v54 = 0;
          v25 = 0;
          v55 = v2 + 40;
          v95 = v18 - 1;
          v96 = MEMORY[0x277D84F90];
          v94 = v2 + 40;
          while (1)
          {
            v56 = (v55 + 16 * v54);
            v19 = v54;
            while (1)
            {
              if (v19 >= *(v2 + 16))
              {
                __break(1u);
                goto LABEL_52;
              }

              v57 = *(v56 - 1);
              v6 = *v56;
              v98 = 0;
              MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native, v53);
              *(&v82 - 2) = &v98;
              if ((v6 & 0x1000000000000000) == 0)
              {
                if ((v6 & 0x2000000000000000) != 0)
                {
                  v99 = v57;
                  *&v100 = v6 & 0xFFFFFFFFFFFFFFLL;

                  if (v57 >= 0x21u || ((0x100003E01uLL >> v57) & 1) == 0)
                  {
                    v59 = _swift_stdlib_strtod_clocale();
                    if (v59)
                    {
LABEL_32:
                      v97 = *v59 == 0;
                      goto LABEL_34;
                    }
                  }

                  goto LABEL_33;
                }

                if ((v57 & 0x1000000000000000) != 0)
                {
                  v58 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

                  if (v58 >= 0x21 || ((0x100003E01uLL >> v58) & 1) == 0)
                  {
                    v59 = _swift_stdlib_strtod_clocale();
                    if (v59)
                    {
                      goto LABEL_32;
                    }
                  }

LABEL_33:
                  v97 = 0;
                  goto LABEL_34;
                }
              }

              _StringGuts._slowWithCString<A>(_:)();
LABEL_34:

              if (v97)
              {
                break;
              }

              ++v19;
              v56 += 2;
              if (v18 == v19)
              {
                goto LABEL_47;
              }
            }

            v60 = v98;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96[2].isa + 1, 1, v96);
              v96 = isUniquelyReferenced_nonNull_native;
            }

            v55 = v94;
            v62 = v96[2].isa;
            v61 = v96[3].isa;
            v6 = (v62 + 1);
            if (v62 >= v61 >> 1)
            {
              isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v96);
              v96 = isUniquelyReferenced_nonNull_native;
            }

            v54 = v19 + 1;
            v63 = v96;
            v96[2].isa = v6;
            v63[v62 + 4].isa = v60;
            if (v95 == v19)
            {
LABEL_47:

              goto LABEL_48;
            }
          }
        }
      }

      v96 = 0;
LABEL_48:
      v78 = specialized static ChartDataProvider.fakePowerData(values:)(v96);

      v79 = v90;
      *&v90[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider] = v78;

      v80 = [v79 updateHandler];
      if (v80)
      {
        v81 = v80;
        (*(v80 + 2))();
        _Block_release(v81);
      }
    }

    else
    {
      v64 = objc_opt_self();
      v65 = [v64 wattUnit];
      v66 = [v64 wattUnit];
      v67 = [objc_opt_self() quantityWithUnit:v66 doubleValue:100.0];

      [v67 doubleValueForUnit_];
      v69 = v68;

      v99 = 48;
      v100 = xmmword_20B440800;
      v101 = 4;
      v102 = 0;
      v103 = 0x4028000000000000;
      v104 = 0x7265776F50;
      v105 = 0xE500000000000000;
      v106 = 0;
      v107 = v69;
      v108 = 1;
      v27(v91, v96, v18);
      v83 = [v64 wattUnit];
      v70 = v100;
      v96 = v99;
      type metadata accessor for ChartDataProvider(0);
      v71 = swift_allocObject();
      v72 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
      v73 = MEMORY[0x277D84F90];
      v98 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
      v74 = v93;
      Published.init(initialValue:)();
      (*(v94 + 32))(v71 + v72, v74, v95);
      v75 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
      *(v71 + v75) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v73);
      v76 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
      _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      static DispatchQoS.unspecified.getter();
      v98 = v73;
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
      _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      (*(v88 + 104))(v87, *MEMORY[0x277D85260], v89);
      v77 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
      outlined destroy of WorkoutChartProperties(&v99);
      *(v71 + v76) = v77;
      (*(v92 + 32))(v71 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate, v91, v18);
      *(v71 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v83;
      *(v71 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = v70;
      *(v71 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = v96;
      *(v71 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = 1;
      *&v90[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider] = v71;
    }
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    __swift_project_value_buffer(v40, static WOLog.app);
    v96 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v96, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_20AEA4000, v96, v41, "PowerAccumulator: powerChartEnabled not enabled when enabling power chart", v42, 2u);
      MEMORY[0x20F2E9420](v42, -1, -1);
    }

    v43 = v96;
  }
}

void PowerAccumulator.updateTargetZone(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = a1;
  v14 = objc_opt_self();
  v15 = a1;
  v16 = v1;
  if ([v14 isMainThread])
  {

    v26 = *&v16[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone];
    *&v16[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone] = v15;
    v17 = v15;
    v18 = v26;
  }

  else
  {
    _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v26 = static OS_dispatch_queue.main.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = partial apply for closure #1 in PowerAccumulator.updateTargetZone(_:);
    *(v19 + 24) = v13;
    aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_7;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_55;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v24 = v8;
    v20 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v25;
    v21 = v26;
    MEMORY[0x20F2E7580](0, v20, v7, v25);
    _Block_release(v22);

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v20, v24);
  }
}

void PowerAccumulator.activateSampleQuery()()
{
  _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for HKSampleType, 0x277CCD8D8);
  v1 = [swift_getObjCClassFromMetadata() quantityTypeForIdentifier_];
  if (v1)
  {
    v2 = v1;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static WOLog.app);
    v4 = v0;
    v5 = v2;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v8 = 136315394;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, aBlock);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2112;
      *(v8 + 14) = v5;
      *v9 = v2;
      v14 = v5;
      _os_log_impl(&dword_20AEA4000, v6, v7, "PowerAccumulator: starting sample query for power identifier: %s, quantityType: %@", v8, 0x16u);
      _sSo8NSObjectCSgWOhTm_11(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v15 = v5;
    v16 = [v4 builder];
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = objc_allocWithZone(MEMORY[0x277CCDC10]);
    aBlock[4] = partial apply for closure #1 in PowerAccumulator.activateSampleQuery();
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutBuilderSampleQuery, @guaranteed [HKWorkoutBuilderQuantity]?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_79;
    v19 = _Block_copy(aBlock);

    v20 = [v18 initWithQuantityType:v15 workoutBuilder:v16 quantitiesAddedHandler:v19];

    _Block_release(v19);

    v21 = *&v4[OBJC_IVAR___NLSessionActivityPowerAccumulator_query];
    *&v4[OBJC_IVAR___NLSessionActivityPowerAccumulator_query] = v20;
    v22 = v20;

    [*&v4[OBJC_IVAR___NLSessionActivityPowerAccumulator_healthStore] executeQuery_];
  }

  else
  {
    _StringGuts.grow(_:)(70);
    MEMORY[0x20F2E6D80](0xD000000000000044, 0x800000020B464F70);
    type metadata accessor for HKQuantityTypeIdentifier(0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/PowerAccumulator.swift", 34, 2, 215, 0);
    __break(1u);
  }
}

void closure #1 in PowerAccumulator.activateSampleQuery()(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a2 >> 62)
    {
      if (!__CocoaSet.count.getter())
      {
        return;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      PowerAccumulator.process(samples:)(a2);
    }
  }
}

void PowerAccumulator.deactivateSampleQuery()()
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
    v12 = v6;
    *v5 = 136315138;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "PowerAccumulator: stopping sample query for power identifier: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v10 = OBJC_IVAR___NLSessionActivityPowerAccumulator_query;
  if (*&v2[OBJC_IVAR___NLSessionActivityPowerAccumulator_query])
  {
    [*&v2[OBJC_IVAR___NLSessionActivityPowerAccumulator_healthStore] stopQuery_];
    v11 = *&v2[v10];
    *&v2[v10] = 0;
  }
}

Swift::Void __swiftcall PowerAccumulator.accumulatorDidStop()()
{
  v1 = type metadata accessor for WKAnalyticsEvent.LatencyMetric();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider) = 0;

  PowerAccumulator.deactivateSampleQuery()();
  v6 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  [*(v0 + v6) invalidate];
  v7 = *(v0 + v6);
  *(v0 + v6) = 0;

  (*(v2 + 104))(v5, *MEMORY[0x277CE4070], v1);
  static WKAnalyticsEvent.latency(metric:analytics:)();
  (*(v2 + 8))(v5, v1);
  dispatch thunk of WKPercentileAnalytics.reset()();
}

void PowerAccumulator.setInstantaneousPower(_:sampleDate:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (*(v2 + OBJC_IVAR___NLSessionActivityPowerAccumulator_isGymKit))
  {
LABEL_9:
    *(v2 + OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower + 16) = a2;

    PowerAccumulator.instantaneousPower.didset();
    return;
  }

  static Date.timeIntervalSinceReferenceDate.getter();
  v17 = v16;
  Date.timeIntervalSinceReferenceDate.getter();
  v19 = v18;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static WOLog.app);
  (*(v6 + 16))(v9, a1, v5);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = v17 - v19;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v24 = 134218498;
    *(v24 + 4) = a2;
    *(v24 + 12) = 2080;
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v26 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v28 = [v26 stringFromDate_];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    (*(v6 + 8))(v9, v5);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v34);

    *(v24 + 14) = v32;
    *(v24 + 22) = 2048;
    *(v24 + 24) = v23;
    _os_log_impl(&dword_20AEA4000, v21, v22, "PowerAccumulator: CyclingPower ignored setInstantaneousPower: %f W, date: %s, delay: %f s", v24, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x20F2E9420](v25, -1, -1);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }
}

double PowerAccumulator.process(samples:)(unint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.app);

  v12 = v1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 134218242;
    if (a1 >> 62)
    {
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v15 + 4) = v17;

    *(v15 + 12) = 2080;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, aBlock);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_20AEA4000, v13, v14, "PowerAccumulator: processing %ld %s samples", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  else
  {
  }

  _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  *(v22 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in PowerAccumulator.process(samples:);
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_75_1;
  v23 = _Block_copy(aBlock);

  v24 = v12;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v25 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v10, v6, v23);
  _Block_release(v23);

  (*(v30 + 8))(v6, v25);
  (*(v28 + 8))(v10, v29);
  if (*&v24[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider])
  {

    v27 = specialized _arrayForceCast<A, B>(_:)(a1);
    ChartDataProvider.add(samples:)(v27);
  }

  return result;
}

void closure #1 in PowerAccumulator.process(samples:)(char *a1, unint64_t a2)
{
  v104 = type metadata accessor for DateInterval();
  v4 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v5);
  v103 = v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Date();
  v7 = *(v107 - 8);
  MEMORY[0x28223BE20](v107, v8);
  v10 = v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  v90[1] = OBJC_IVAR___NLSessionActivityPowerAccumulator_quantityTypeIdentifier;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
LABEL_44:
      swift_getKeyPath();
      swift_getKeyPath();
      v109 = a2;
      v89 = v100;

      static Published.subscript.setter();
      return;
    }
  }

  v90[0] = a2 >> 62;
  if (a2 >> 62)
  {
    v18 = __CocoaSet.count.getter();
    v99 = a2;
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v99 = a2;
    if (!v18)
    {
      goto LABEL_24;
    }
  }

  v98 = objc_opt_self();
  if (v18 >= 1)
  {
    v20 = 0;
    v96 = *&v100[OBJC_IVAR___NLSessionActivityPowerAccumulator_latencyAnalytics];
    v21 = a2;
    v95 = a2 & 0xC000000000000001;
    v102 = (v4 + 8);
    v94 = OBJC_IVAR___NLSessionActivityPowerAccumulator_threeSecondAccumulator;
    v93 = OBJC_IVAR___NLSessionActivityPowerAccumulator_thirtySecondAccumulator;
    v101 = (v7 + 8);
    *&v19 = 134218498;
    v91 = v19;
    v97 = v18;
    v92 = v10;
    v22 = v10;
    do
    {
      v106 = v20;
      if (v95)
      {
        v23 = MEMORY[0x20F2E7A20]();
      }

      else
      {
        v23 = *(v21 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = [v98 wattUnit];
      v26 = [v24 quantity];
      [v26 doubleValueForUnit_];
      v28 = v27;

      v29 = [v24 dateInterval];
      v30 = v103;
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      DateInterval.end.getter();
      v108 = *v102;
      v31 = v104;
      v108(v30, v104);
      Date.timeIntervalSinceReferenceDate.getter();
      WindowedAccumulator.add(_:position:)(v28, v32);

      v33 = *v101;
      (*v101)(v22, v107);

      v34 = [v24 dateInterval];
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      DateInterval.end.getter();
      v108(v30, v31);
      Date.timeIntervalSinceReferenceDate.getter();
      WindowedAccumulator.add(_:position:)(v28, v35);

      v36 = v107;
      v33(v22, v107);
      static Date.timeIntervalSinceReferenceDate.getter();
      v38 = v37;
      v105 = v24;
      v39 = [v24 dateInterval];
      static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

      DateInterval.end.getter();
      v108(v30, v31);
      Date.timeIntervalSinceReferenceDate.getter();
      v41 = v40;
      v33(v22, v36);
      v42 = v33;
      v43 = v38 - v41;
      dispatch thunk of WKPercentileAnalytics.addSample(_:)();
      if (one-time initialization token for app != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static WOLog.app);
      v45 = v105;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v109 = v49;
        *v48 = v91;
        *(v48 + 4) = v28;
        *(v48 + 12) = 2048;
        *(v48 + 14) = v43;
        *(v48 + 22) = 2080;
        v50 = [v45 dateInterval];
        v51 = v103;
        static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

        DateInterval.end.getter();
        v108(v51, v104);
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v52 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v54 = [v52 stringFromDate_];

        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        v42(v22, v107);
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v109);

        *(v48 + 24) = v58;
        _os_log_impl(&dword_20AEA4000, v46, v47, "PowerAccumulator: CyclingPower added sample: %f W, CyclingPower-delay: %f s, date: %s (to 3s and 30s accumulators)", v48, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v49);
        MEMORY[0x20F2E9420](v49, -1, -1);
        MEMORY[0x20F2E9420](v48, -1, -1);
      }

      else
      {
      }

      v21 = v99;
      v20 = v106 + 1;
    }

    while (v97 != v106 + 1);
LABEL_24:
    v59 = *&v100[OBJC_IVAR___NLSessionActivityPowerAccumulator_threeSecondAccumulator];
    if (*(v59 + 24) == 1)
    {
      v60 = *(*(v59 + 48) + 16);
      if (v60)
      {
        v61 = *(v59 + 56) / v60;
        goto LABEL_29;
      }
    }

    else
    {
      WindowedAccumulator.positionWindowMean()(v17);
      if ((v62 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v61 = 0.0;
LABEL_29:
    v63 = v100;
    v64 = &v100[OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower];
    *&v100[OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower + 16] = v61;
    PowerAccumulator.instantaneousPower.didset();
    v66 = *&v63[OBJC_IVAR___NLSessionActivityPowerAccumulator_thirtySecondAccumulator];
    if (*(v66 + 24) == 1)
    {
      v67 = *(*(v66 + 48) + 16);
      if (v67)
      {
        v68 = *(v66 + 56) / v67;
LABEL_34:
        v70 = v100;
        v71 = &v100[OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower];
        *&v100[OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower + 16] = v68;
        v72 = [v70 updateHandler];
        if (v72)
        {
          v73 = v72;
          (*(v72 + 2))();
          _Block_release(v73);
        }

        if (one-time initialization token for app != -1)
        {
          swift_once();
        }

        v74 = type metadata accessor for Logger();
        __swift_project_value_buffer(v74, static WOLog.app);
        v75 = v100;
        v76 = v99;

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v112 = v80;
          *v79 = 134218754;
          v81 = v64[1];
          v82 = v64[2];
          v109 = *v64;
          v110 = v81;
          v111 = v82;
          *(v79 + 4) = FakeableMetric.wrappedValue.getter();
          *(v79 + 12) = 2048;
          v83 = v71[1];
          v84 = v71[2];
          v109 = *v71;
          v110 = v83;
          v111 = v84;
          *(v79 + 14) = FakeableMetric.wrappedValue.getter();
          *(v79 + 22) = 2048;
          if (v90[0])
          {
            v85 = __CocoaSet.count.getter();
          }

          else
          {
            v85 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v79 + 24) = v85;

          *(v79 + 32) = 2080;
          v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &v112);

          *(v79 + 34) = v88;
          a2 = v99;
          _os_log_impl(&dword_20AEA4000, v77, v78, "PowerAccumulator: CyclingPower (3s power: %f W, 30s power: %f W) processed %ld %s samples", v79, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v80);
          MEMORY[0x20F2E9420](v80, -1, -1);
          MEMORY[0x20F2E9420](v79, -1, -1);
        }

        else
        {

          a2 = v76;
        }

        goto LABEL_44;
      }
    }

    else
    {
      WindowedAccumulator.positionWindowMean()(v65);
      if ((v69 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v68 = 0.0;
    goto LABEL_34;
  }

  __break(1u);
}

Swift::Void __swiftcall PowerAccumulator.trackTargetZone(for:)(Swift::Double a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v1 builder];
  [v15 elapsedTime];
  v17 = v16;

  if (specialized ZonesAlertTrackingProtocol.alertPreconditionSatified(_:)(v17))
  {
    v18 = [v2 builder];
    v19 = [v18 workoutSession];

    if (v19 && (v20 = [v19 state], v19, v20 == 4))
    {
      if (one-time initialization token for zones != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static WOLog.zones);
      v75 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_20AEA4000, v75, v22, "Workout paused, not tracking target zone (custom range or target) for potential alert", v23, 2u);
        MEMORY[0x20F2E9420](v23, -1, -1);
      }

      v24 = v75;
    }

    else
    {
      v72 = v11;
      v73 = v6;
      v75 = ObjectType;
      v25 = *&v2[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone];
      v26 = COERCE_DOUBLE(PowerZonesAlertTargetZone.applicableRange.getter());
      v28 = v27;
      v30 = v29;

      if (v30)
      {
        v31 = 0;
      }

      else
      {
        if (v26 > a1)
        {
          v32 = 1;
        }

        else
        {
          v32 = 2;
        }

        if (v28 > a1)
        {
          v31 = v32;
        }

        else
        {
          v31 = 3;
        }
      }

      v33 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
      swift_beginAccess();
      if (v31 && v2[v33] != v31)
      {
        if (one-time initialization token for zones != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static WOLog.zones);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        v37 = os_log_type_enabled(v35, v36);
        v74 = v31;
        if (v37)
        {
          v71 = v33;
          v38 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          aBlock[0] = v70;
          *v38 = 136315394;
          v39 = _typeName(_:qualified:)();
          v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, aBlock);

          *(v38 + 4) = v41;
          v42 = v74;
          *(v38 + 12) = 2080;
          if (v42 == 1)
          {
            v44 = 0x776F6C6562;
            v43 = 0xE500000000000000;
          }

          else if (v42 == 2)
          {
            v43 = 0xE600000000000000;
            v44 = 0x6E6968746977;
          }

          else
          {
            v43 = 0xE500000000000000;
            v44 = 0x65766F6261;
          }

          v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v43, aBlock);

          *(v38 + 14) = v45;
          _os_log_impl(&dword_20AEA4000, v35, v36, "%s should fire alert for: %s", v38, 0x16u);
          v46 = v70;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v46, -1, -1);
          MEMORY[0x20F2E9420](v38, -1, -1);

          v31 = v74;
          v33 = v71;
        }

        else
        {
        }

        LOBYTE(aBlock[0]) = v31;
        v47 = PowerAccumulator.createZoneAlert(for:with:)(aBlock, a1);
        if (v47)
        {
          v48 = v47;
          _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v71 = static OS_dispatch_queue.main.getter();
          v49 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v50 = swift_allocObject();
          *(v50 + 16) = v49;
          *(v50 + 24) = v48;
          aBlock[4] = partial apply for closure #1 in PowerAccumulator.trackTargetZone(for:);
          aBlock[5] = v50;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_23_2;
          v69 = _Block_copy(aBlock);
          v70 = v48;

          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_8(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_9(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v51 = v69;
          v52 = v71;
          MEMORY[0x20F2E7580](0, v14, v9, v69);
          v31 = v74;
          _Block_release(v51);

          (*(v73 + 8))(v9, v5);
          (*(v72 + 8))(v14, v10);
        }
      }

      if (v2[v33] != v31)
      {
        if (one-time initialization token for zones != -1)
        {
          swift_once();
        }

        v53 = type metadata accessor for Logger();
        __swift_project_value_buffer(v53, static WOLog.zones);
        v54 = v2;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = 1701736302;
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          aBlock[0] = v59;
          *v58 = 136315650;
          v60 = _typeName(_:qualified:)();
          v62 = v33;
          v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, aBlock);

          *(v58 + 4) = v63;
          *(v58 + 12) = 2080;
          if (v2[v62] > 1u)
          {
            if (v2[v62] == 2)
            {
              v64 = 0xE600000000000000;
              v65 = 0x6E6968746977;
            }

            else
            {
              v64 = 0xE500000000000000;
              v65 = 0x65766F6261;
            }
          }

          else if (v2[v62])
          {
            v64 = 0xE500000000000000;
            v65 = 0x776F6C6562;
          }

          else
          {
            v64 = 0xE400000000000000;
            v65 = 1701736302;
          }

          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v64, aBlock);

          *(v58 + 14) = v66;
          *(v58 + 22) = 2080;
          if (v31 > 1)
          {
            v33 = v62;
            if (v31 == 2)
            {
              v67 = 0xE600000000000000;
              v57 = 0x6E6968746977;
            }

            else
            {
              v67 = 0xE500000000000000;
              v57 = 0x65766F6261;
            }
          }

          else
          {
            v33 = v62;
            if (v31)
            {
              v67 = 0xE500000000000000;
              v57 = 0x776F6C6562;
            }

            else
            {
              v67 = 0xE400000000000000;
            }
          }

          v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v67, aBlock);

          *(v58 + 24) = v68;
          _os_log_impl(&dword_20AEA4000, v55, v56, "%s zone state transitioned from: %s to: %s", v58, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v59, -1, -1);
          MEMORY[0x20F2E9420](v58, -1, -1);
        }

        v2[v33] = v31;
      }
    }
  }
}

void closure #1 in PowerAccumulator.trackTargetZone(for:)(uint64_t a1, uint64_t a2)
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
    v13 = OBJC_IVAR___NLSessionActivityPowerAccumulator_lastAlertFiredAtDate;
    swift_beginAccess();
    outlined assign with take of Date?(v6, v8 + v13);
    swift_endAccess();
  }
}

char *PowerAccumulator.createZoneAlert(for:with:)(char *a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = qword_20B442D88[*a1];
  v12 = *(v3 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone);
  v13 = PowerZonesAlertTargetZone.targetZoneRepresentation.getter();

  if (!v13)
  {
    return 0;
  }

  Date.init()();
  v14 = *(v3 + OBJC_IVAR___NLSessionActivityPowerAccumulator_activityType);
  v15 = type metadata accessor for WorkoutAlertZone();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone] = v13;
  *&v16[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue] = a2;
  *&v16[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType] = v14;

  v17 = v14;
  *&v16[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType] = FIUIDistanceTypeForActivityType();
  v27.receiver = v16;
  v27.super_class = v15;
  v18 = objc_msgSendSuper2(&v27, sel_init);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v18 setEventDate_];

  [v18 setType_];
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static WOLog.zones);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v18;
    *v24 = v18;
    v25 = v18;
    _os_log_impl(&dword_20AEA4000, v21, v22, "Created zone alert: %@", v23, 0xCu);
    _sSo8NSObjectCSgWOhTm_11(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v24, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
  return v18;
}

id PowerAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance PowerAccumulator()
{
  v1 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance PowerAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.getter in conformance PowerAccumulator@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  return _s10Foundation4DateVSgWOcTm_5(v1 + v3, a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t protocol witness for ZonesAlertTrackingProtocol.lastAlertFiredAtDate.setter in conformance PowerAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_lastAlertFiredAtDate;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v1 + v3);
  return swift_endAccess();
}

void protocol witness for ZonesAlertTrackingProtocol.oldZoneState.getter in conformance PowerAccumulator(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void protocol witness for ZonesAlertTrackingProtocol.oldZoneState.setter in conformance PowerAccumulator(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

double thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutBuilderSampleQuery, @guaranteed [HKWorkoutBuilderQuantity]?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    _sSo17OS_dispatch_queueCMaTm_16(0, &lazy cache variable for type metadata for HKWorkoutBuilderQuantity, 0x277CCDC08);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);

  return result;
}

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void specialized static PowerAccumulator.powerChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(uint64_t a1, void *a2)
{
  v2 = static MetricPlatterProvider.metricPlatters(liveWorkoutConfiguration:workoutSettingsManager:)(a1, a2);
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 32;
    v7 = MEMORY[0x277D84F90];
    v25 = v2 + 32;
    do
    {
      v26 = v7;
      v8 = v6 + 16 * v5;
      v9 = v5;
      while (1)
      {
        if (v9 >= *(v3 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v10 = *v8;
        v11 = *(v8 + 1);
        v12 = *(v8 + 8);
        v5 = v9 + 1;
        v27 = *v8;

        if (LiveWorkoutConfiguration.supportsMetricPlatterType(_:)(&v27))
        {
          break;
        }

        v8 += 16;
        ++v9;
        if (v4 == v5)
        {
          v7 = v26;
          goto LABEL_15;
        }
      }

      v13 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 16) + 1, 1);
        v13 = v28;
      }

      v15 = v13;
      v16 = *(v13 + 16);
      v17 = *(v15 + 24);
      v18 = v16 + 1;
      if (v16 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v16 + 1, 1);
        v18 = v16 + 1;
        v15 = v28;
      }

      *(v15 + 16) = v18;
      v19 = v15 + 16 * v16;
      *(v19 + 32) = v10;
      *(v19 + 33) = v11;
      *(v19 + 40) = v12;
      v6 = v25;
      v7 = v15;
    }

    while (v4 - 1 != v9);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v20 = -*(v7 + 16);
  v21 = -1;
  v22 = 32;
  while (2)
  {
    if (v20 + v21 == -1)
    {
LABEL_20:
    }

    else if (++v21 >= *(v7 + 16))
    {
LABEL_24:
      __break(1u);
    }

    else
    {
      v24 = v22;
      v22 += 16;
      switch(*(v7 + v24))
      {
        case 0xC:

          break;
        default:
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v23 & 1) == 0)
          {
            continue;
          }

          goto LABEL_20;
      }
    }

    break;
  }
}

unsigned __int8 *specialized PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:)(void *a1, void *a2, void *a3, char *a4, void *a5, void *a6)
{
  v65 = a5;
  v66 = a6;
  v64 = a3;
  v67 = a2;
  v68 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v64 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v64 - v15;
  v17 = &v6[OBJC_IVAR___NLSessionActivityPowerAccumulator__instantaneousPower];
  *v17 = 0xD000000000000012;
  v17[1] = 0x800000020B4576E0;
  v17[2] = 0;
  v18 = 1;
  v6[OBJC_IVAR___NLSessionActivityPowerAccumulator_instantaneousPowerStale] = 1;
  v19 = &v6[OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower];
  strcpy(&v6[OBJC_IVAR___NLSessionActivityPowerAccumulator__averagePower], "averagePower");
  v19[13] = 0;
  *(v19 + 7) = -5120;
  *(v19 + 2) = 0;
  v20 = &v6[OBJC_IVAR___NLSessionActivityPowerAccumulator__thirtySecondAveragePower];
  *v20 = 0xD000000000000018;
  v20[1] = 0x800000020B457720;
  v20[2] = 0;
  v21 = OBJC_IVAR___NLSessionActivityPowerAccumulator__samplesPublished;
  v22 = MEMORY[0x277D84F90];
  aBlock[0] = MEMORY[0x277D84F90];
  v23 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24HKWorkoutBuilderQuantityCGMd, &_sSaySo24HKWorkoutBuilderQuantityCGMR);
  Published.init(initialValue:)();
  (*(v13 + 32))(&v6[v21], v16, v12);
  v24 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 56);
  v26(&v23[v24], 1, 1, v25);
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_invalidationTimer] = 0;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_query] = 0;
  v27 = OBJC_IVAR___NLSessionActivityPowerAccumulator_threeSecondAccumulator;
  type metadata accessor for WindowedAccumulator();
  v28 = swift_allocObject();
  *(v28 + 48) = v22;
  *(v28 + 56) = 0;
  *(v28 + 16) = 0x4008CCCCCCCCCCCDLL;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *(v28 + 40) = 1;
  *&v23[v27] = v28;
  v29 = OBJC_IVAR___NLSessionActivityPowerAccumulator_thirtySecondAccumulator;
  v30 = swift_allocObject();
  *(v30 + 48) = v22;
  *(v30 + 56) = 0;
  *(v30 + 16) = 0x403E000000000000;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 40) = 1;
  *&v23[v29] = v30;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider] = 0;
  v26(&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_lastAlertFiredAtDate], 1, 1, v25);
  v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_oldZoneState] = 0;
  swift_unknownObjectWeakInit();
  v31 = OBJC_IVAR___NLSessionActivityPowerAccumulator_latencyAnalytics;
  type metadata accessor for WKPercentileAnalytics();
  swift_allocObject();
  *&v23[v31] = WKPercentileAnalytics.init()();
  v32 = v67;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_activityType] = v67;
  v33 = v64;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_healthStore] = v64;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_liveWorkoutConfiguration] = a4;
  type metadata accessor for IntervalWorkoutConfiguration(0);
  v34 = swift_dynamicCastClass();
  v35 = 60.0;
  if (v34)
  {
    v35 = 10.0;
  }

  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_alertHoldoffTime] = v35;
  v36 = v65;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_workoutSettingsManager] = v65;
  v67 = v32;
  v37 = v33;
  v38 = a4;
  v39 = v36;
  specialized static PowerAccumulator.powerChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(v38, v39);
  v40 = OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled;
  v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled] = v41 & 1;
  FIUIWorkoutSettingsManager.supportsPowerMetrics.getter();
  v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerMetricsEnabled] = v42 & 1;
  if ((v42 & 1) == 0)
  {
    v18 = v23[v40];
  }

  v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerEnabled] = v18;
  v43 = v66;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_quantityTypeIdentifier] = v66;
  v44 = v43;
  *&v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone] = LiveWorkoutConfiguration.currentPowerZonesAlertTargetZone.getter();
  v45 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  swift_beginAccess();
  _s10Foundation4DateVSgWOcTm_5(&v38[v45], v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v46 = type metadata accessor for UUID();
  LOBYTE(v45) = (*(*(v46 - 8) + 48))(v11, 1, v46) != 1;
  _sSo8NSObjectCSgWOhTm_11(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v23[OBJC_IVAR___NLSessionActivityPowerAccumulator_isGymKit] = v45;
  v47 = type metadata accessor for PowerAccumulator(0);
  v70.receiver = v23;
  v70.super_class = v47;
  v48 = objc_msgSendSuper2(&v70, sel_initWithBuilder_, v68);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 defaultCenter];
  v52 = [objc_opt_self() didUpdateBTSensorSeenStatus];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in PowerAccumulator.init(builder:activityType:healthStore:liveWorkoutConfiguration:workoutSettingsManager:quantityTypeIdentifier:);
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  aBlock[3] = &block_descriptor_86;
  v54 = _Block_copy(aBlock);
  v55 = v50;

  v56 = [v51 addObserverForName:v52 object:0 queue:0 usingBlock:v54];
  _Block_release(v54);
  swift_unknownObjectRelease();

  v57 = [v49 defaultCenter];
  if (one-time initialization token for MetricPlattersDidSave != -1)
  {
    swift_once();
  }

  [v57 addObserver:v55 selector:v64 name:? object:?];

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static WOLog.app);
  v59 = v55;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 67109376;
    *(v62 + 4) = v59[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerMetricsEnabled];
    *(v62 + 8) = 1024;
    *(v62 + 10) = v59[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled];

    _os_log_impl(&dword_20AEA4000, v60, v61, "PowerAccumulator: init (powerMetricsEnabled: %{BOOL}d, powerChartEnabled: %{BOOL}d)", v62, 0xEu);
    MEMORY[0x20F2E9420](v62, -1, -1);
  }

  else
  {

    v44 = v59;
  }

  return v59;
}

uint64_t type metadata accessor for PowerAccumulator(uint64_t a1)
{
  result = type metadata singleton initialization cache for PowerAccumulator;
  if (!type metadata singleton initialization cache for PowerAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void partial apply for closure #1 in PowerAccumulator.updateTargetZone(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v1 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone);
  *(v1 + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerZonesAlertTargetZone) = v2;
  v3 = v2;
}

void specialized PowerAccumulator.accumulatorDidStart(withStart:handler:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v56 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v59 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v53 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v53 - v20;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = __swift_project_value_buffer(v22, static WOLog.app);
  _s10Foundation4DateVSgWOcTm_5(a1, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v24 = v1;
  v57 = v23;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  v27 = os_log_type_enabled(v25, v26);
  v55 = v7;
  v58 = v4;
  if (v27)
  {
    v54 = a1;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v60[0] = v29;
    *v28 = 136315650;
    _s10Foundation4DateVSgWOcTm_5(v21, v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((*(v4 + 48))(v18, 1, v3) == 1)
    {

      __break(1u);
      return;
    }

    v53 = v3;
    if (one-time initialization token for logDateFormatter != -1)
    {
      swift_once();
    }

    v30 = static WOLog.logDateFormatter;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v32 = [v30 stringFromDate_];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    _sSo8NSObjectCSgWOhTm_11(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v3 = v53;
    (*(v58 + 8))(v18, v53);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v60);

    *(v28 + 4) = v36;
    *(v28 + 12) = 1024;
    v37 = v24[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerMetricsEnabled];

    *(v28 + 14) = v37;
    *(v28 + 18) = 1024;
    LODWORD(v36) = v24[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled];

    *(v28 + 20) = v36;
    _os_log_impl(&dword_20AEA4000, v25, v26, "PowerAccumulator: accumulatorDidStart with startDate: %s (powerMetricsEnabled: %{BOOL}d, powerChartEnabled: %{BOOL}d)", v28, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
    MEMORY[0x20F2E9420](v28, -1, -1);

    a1 = v54;
  }

  else
  {

    _sSo8NSObjectCSgWOhTm_11(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v38 = v59;
  _s10Foundation4DateVSgWOcTm_5(a1, v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v39 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
  swift_beginAccess();
  outlined assign with take of Date?(v38, &v24[v39]);
  swift_endAccess();
  if (v24[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerEnabled] != 1)
  {
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "PowerAccumulator: power metrics or chart platter are not enabled, not accumulating power data.";
      goto LABEL_15;
    }

LABEL_16:

    return;
  }

  v40 = v56;
  _s10Foundation4DateVSgWOcTm_5(a1, v56, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v41 = v58;
  if ((*(v58 + 48))(v40, 1, v3) == 1)
  {
    _sSo8NSObjectCSgWOhTm_11(v40, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "PowerAccumulator: start date nil, not accumulating data for power chart.";
LABEL_15:
      _os_log_impl(&dword_20AEA4000, v42, v43, v45, v44, 2u);
      MEMORY[0x20F2E9420](v44, -1, -1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v46 = v40;
  v47 = v55;
  (*(v41 + 32))(v55, v46, v3);
  if (v24[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled] == 1)
  {
    PowerAccumulator.enablePowerChart(with:)(v47);
  }

  else
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_20AEA4000, v48, v49, "PowerAccumulator: power chart platter is not enabled, skip creating powerChartDataProvider", v50, 2u);
      MEMORY[0x20F2E9420](v50, -1, -1);
    }

    v51 = LiveWorkoutConfiguration.currentActivityType.getter();
    v52 = [v51 effectiveTypeIdentifier];

    v47 = v55;
    if (v52 == 13)
    {
      [objc_opt_self() hasHadPairedCyclingPowerSensors];
    }
  }

  PowerAccumulator.activateSampleQuery()();
  (*(v41 + 8))(v47, v3);
}

uint64_t keypath_get_34Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return _s10Foundation4DateVSgWOcTm_5(v4 + v5, a3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

void type metadata completion function for PowerAccumulator(uint64_t a1)
{
  type metadata accessor for Published<[HKWorkoutBuilderQuantity]>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[HKWorkoutBuilderQuantity]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[HKWorkoutBuilderQuantity]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24HKWorkoutBuilderQuantityCGMd, &_sSaySo24HKWorkoutBuilderQuantityCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[HKWorkoutBuilderQuantity]>);
    }
  }
}

_BYTE *_sSdySdSgxcSyRzlufcSbSpySdGXEfU_SbSPys4Int8VGXEfU_TA_0@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

double specialized PowerAccumulator.handleMetricPlattersUpdated(notification:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v27 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled;
  v12 = v0[OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartEnabled];
  specialized static PowerAccumulator.powerChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(*&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator_liveWorkoutConfiguration], *&v1[OBJC_IVAR___NLSessionActivityPowerAccumulator_workoutSettingsManager]);
  v1[v11] = v14 & 1;
  if (v12 != (v14 & 1))
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = __swift_project_value_buffer(v15, static WOLog.app);
    v17 = v1;
    v27 = v16;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v7;
      v21 = swift_slowAlloc();
      *v21 = 67109120;
      *(v21 + 4) = v1[v11];

      _os_log_impl(&dword_20AEA4000, v18, v19, "Power metric platter enablement changed. enabled=%{BOOL}d", v21, 8u);
      v22 = v21;
      v7 = v20;
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    else
    {

      v18 = v17;
    }

    v23 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
    swift_beginAccess();
    _s10Foundation4DateVSgWOcTm_5(v17 + v23, v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      _sSo8NSObjectCSgWOhTm_11(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_20AEA4000, v24, v25, "PowerAccumulator: start date nil, not accumulating data for power chart.", v26, 2u);
        MEMORY[0x20F2E9420](v26, -1, -1);
      }
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      if (v1[v11] == 1)
      {
        PowerAccumulator.deactivateSampleQuery()();
        PowerAccumulator.activateSampleQuery()();
        PowerAccumulator.enablePowerChart(with:)(v10);
        (*(v7 + 8))(v10, v6);
      }

      else
      {
        (*(v7 + 8))(v10, v6);
        *(&v17->isa + OBJC_IVAR___NLSessionActivityPowerAccumulator_powerChartDataProvider) = 0;
      }
    }
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOcTm_5(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double key path getter for VoiceAssetsObserver.assets : VoiceAssetsObserver@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double key path setter for VoiceAssetsObserver.assets : VoiceAssetsObserver(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double VoiceAssetsObserver.assets.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  return result;
}

unint64_t lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver()
{
  result = lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver;
  if (!lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver)
  {
    type metadata accessor for VoiceAssetsObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VoiceAssetsObserver and conformance VoiceAssetsObserver);
  }

  return result;
}

double VoiceAssetsObserver.assets.setter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void closure #1 in VoiceAssetsObserver.assets.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*VoiceAssetsObserver.assets.modify(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = VoiceAssetsObserver._assets.modify(v4);
  return VoiceAssetsObserver.assets.modify;
}

void VoiceAssetsObserver.assets.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t VoiceAssetsObserver._hasFetchedAssets.getter(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

void key path getter for VoiceAssetsObserver._hasFetchedAssets : VoiceAssetsObserver(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(v6 + *a3);
}

void VoiceAssetsObserver._hasFetchedAssets.setter(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void closure #1 in VoiceAssetsObserver.hasFetchedAssets.getter(uint64_t a1@<X0>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a4 = *(a1 + *a3);
}

void closure #1 in VoiceAssetsObserver.hasFetchedAssets.setter(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + *a3) == (a2 & 1))
  {
    *(a1 + *a3) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v6);
    lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t VoiceAssetsObserver.__allocating_init(inferenceClient:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___hasFetchedAssets) = 0;
  *(v2 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___isObservingAssets) = 0;
  v3 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + v3) = v4;
  ObservationRegistrar.init()();
  v5 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_inferenceClient;
  v6 = type metadata accessor for InferenceClient();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  return v2;
}

Swift::Void __swiftcall VoiceAssetsObserver.fetchAssets()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v69 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v73 = &v69 - v9;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v74 = &v69 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v69 - v20;
  v22 = *(v0 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_lock);
  v75 = partial apply for closure #1 in VoiceAssetsObserver.hasFetchedAssets.getter;
  v76 = v0;
  os_unfair_lock_lock(v22 + 4);
  _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_Sb_TG5TA_1(v77);
  os_unfair_lock_unlock(v22 + 4);
  if (v77[0])
  {
    static Log.workoutVoice.getter();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v77[0] = v26;
      *v25 = 136315138;
      v27 = _typeName(_:qualified:)();
      v29 = v10;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v77);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_20AEA4000, v23, v24, "%s Already fetched voice assets.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);

      (*(v11 + 8))(v15, v29);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }
  }

  else
  {
    v71 = 0;
    v72 = v22;
    static Log.workoutVoice.getter();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v70 = v6;
      v35 = v34;
      v77[0] = v34;
      *v33 = 136315138;
      v36 = _typeName(_:qualified:)();
      v69 = v1;
      v38 = v2;
      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v77);
      v1 = v69;

      *(v33 + 4) = v39;
      v2 = v38;
      _os_log_impl(&dword_20AEA4000, v31, v32, "%s Fetching assets.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      v40 = v35;
      v6 = v70;
      MEMORY[0x20F2E9420](v40, -1, -1);
      MEMORY[0x20F2E9420](v33, -1, -1);
    }

    v41 = *(v11 + 8);
    v41(v21, v10);
    v42 = v74;
    if ([objc_opt_self() isRunningInStoreDemoMode])
    {
      static Log.workoutVoice.getter();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v70 = v6;
        v47 = v46;
        v77[0] = v46;
        *v45 = 136315138;
        v48 = _typeName(_:qualified:)();
        v69 = v10;
        v50 = v2;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v77);

        *(v45 + 4) = v51;
        v2 = v50;
        _os_log_impl(&dword_20AEA4000, v43, v44, "%s In store demo mode, returning default assets.", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        v52 = v47;
        v6 = v70;
        MEMORY[0x20F2E9420](v52, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);

        v53 = v74;
        v54 = v69;
      }

      else
      {

        v53 = v42;
        v54 = v10;
      }

      v41(v53, v54);
      v58 = type metadata accessor for AudioSynthesisVoice();
      v59 = v73;
      (*(*(v58 - 8) + 56))(v73, 1, 1, v58);
      v57 = specialized static NLWorkoutDemoUtilities.defaultWorkoutVoiceAssets(selecting:)(v59);
      v55 = outlined destroy of AudioSynthesisVoice?(v59, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
    }

    else
    {
      v55 = InferenceClient.listVoiceAssets()();
      v57 = v55;
    }

    v60 = MEMORY[0x28223BE20](v55, v56);
    *(&v69 - 2) = v1;
    *(&v69 - 8) = 1;
    MEMORY[0x28223BE20](v60, v61);
    *(&v69 - 2) = partial apply for closure #1 in VoiceAssetsObserver.hasFetchedAssets.setter;
    *(&v69 - 1) = v62;
    v63 = v72;
    os_unfair_lock_lock(v72 + 4);
    _s2os21OSAllocatedUnfairLockVAAytRszlE04withD0yqd__qd__yYbKXEKs8SendableRd__lFqd__ytz_tYbKXEfU_yt_Tg5TA_1(v64);
    os_unfair_lock_unlock(v63 + 4);
    v65 = type metadata accessor for TaskPriority();
    (*(*(v65 - 8) + 56))(v6, 1, 1, v65);
    type metadata accessor for MainActor();

    v66 = static MainActor.shared.getter();
    v67 = swift_allocObject();
    v68 = MEMORY[0x277D85700];
    v67[2] = v66;
    v67[3] = v68;
    v67[4] = v1;
    v67[5] = v57;
    v67[6] = v2;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in VoiceAssetsObserver.setAssets(_:), v67);
  }
}

uint64_t VoiceAssetsObserver.selectVoiceAsset(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](VoiceAssetsObserver.selectVoiceAsset(_:), 0, 0);
}

uint64_t VoiceAssetsObserver.selectVoiceAsset(_:)()
{
  v29 = v0;
  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    static Log.workoutVoice.getter();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];
    if (v3)
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136315138;
      v9 = _typeName(_:qualified:)();
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v28);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_20AEA4000, v1, v2, "%s In store demo mode, only setting asset selection locally", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
    v12 = v0[5];
    v13 = v0[6];
    v14 = v0[3];
    v15 = v0[4];
    v16 = v0[2];
    v17 = type metadata accessor for AudioSynthesisVoice();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v13, v16, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
    v19 = specialized static NLWorkoutDemoUtilities.defaultWorkoutVoiceAssets(selecting:)(v13);
    outlined destroy of AudioSynthesisVoice?(v13, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    type metadata accessor for MainActor();

    v21 = static MainActor.shared.getter();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v14;
    v22[5] = v19;
    v22[6] = v15;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, &closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply, v22);

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = swift_task_alloc();
    v0[10] = v26;
    *v26 = v0;
    v26[1] = VoiceAssetsObserver.selectVoiceAsset(_:);
    v27 = v0[2];

    return MEMORY[0x282160A78](v27);
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t VoiceAssetsObserver.observeAssetChanges()()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](VoiceAssetsObserver.observeAssetChanges(), 0, 0);
}

{
  v39 = v0;
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_lock);
  v3 = swift_task_alloc();
  *(v3 + 16) = partial apply for closure #1 in VoiceAssetsObserver.isObservingAssets.getter;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v38);
  os_unfair_lock_unlock(v2 + 4);
  LOBYTE(v1) = v38[0];

  if (v1)
  {
    static Log.workoutVoice.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[7];
    v8 = v0[4];
    v9 = v0[5];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v38[0] = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v38);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_20AEA4000, v4, v5, "%s Already observing voice assets.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);

    v15 = v0[1];

    return v15();
  }

  else
  {
    static Log.workoutVoice.getter();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[8];
    v22 = v0[4];
    v21 = v0[5];
    if (v19)
    {
      v37 = v0[8];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v38[0] = v24;
      *v23 = 136315138;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v38);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_20AEA4000, v17, v18, "%s Observing Voice Asset Changes.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x20F2E9420](v24, -1, -1);
      MEMORY[0x20F2E9420](v23, -1, -1);

      v28 = *(v21 + 8);
      v28(v37, v22);
    }

    else
    {

      v28 = *(v21 + 8);
      v28(v20, v22);
    }

    v0[9] = v28;
    v29 = v0[2];
    v30 = swift_task_alloc();
    *(v30 + 16) = v29;
    *(v30 + 24) = 1;
    v31 = swift_task_alloc();
    *(v31 + 16) = partial apply for closure #1 in VoiceAssetsObserver.isObservingAssets.setter;
    *(v31 + 24) = v30;
    os_unfair_lock_lock(v2 + 4);
    closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v32);
    os_unfair_lock_unlock(v2 + 4);
    v33 = v0[3];

    v34 = swift_allocObject();
    v0[10] = v34;
    swift_weakInit();
    v35 = swift_allocObject();
    v0[11] = v35;
    *(v35 + 16) = v34;
    *(v35 + 24) = v33;

    v36 = swift_task_alloc();
    v0[12] = v36;
    *v36 = v0;
    v36[1] = VoiceAssetsObserver.observeAssetChanges();

    return MEMORY[0x282160A98](partial apply for closure #1 in VoiceAssetsObserver.observeAssetChanges(), v35);
  }
}

{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](VoiceAssetsObserver.observeAssetChanges(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = *(v0 + 104);

  static Log.workoutVoice.getter();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Kicked off voice asset observation. Received error: %@", v7, 0xCu);
    outlined destroy of AudioSynthesisVoice?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }

  (*(v0 + 72))(*(v0 + 48), *(v0 + 32));

  v11 = *(v0 + 8);

  return v11();
}

double closure #1 in VoiceAssetsObserver.observeAssetChanges()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v70 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v4 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v5);
  v69 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for AudioSynthesisVoice();
  v75 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v7);
  v67 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioSynthesisVoiceAsset();
  v77 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v73 = &v61 - v15;
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v72 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v61 - v22;
  static Log.workoutVoice.getter();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  v26 = os_log_type_enabled(v24, v25);
  v71 = v16;
  v61 = a2;
  v76 = v4;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v81[0] = v28;
    *v27 = 136315138;
    v29 = _typeName(_:qualified:)();
    v31 = v13;
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v81);

    *(v27 + 4) = v32;
    v13 = v31;
    v16 = v71;
    _os_log_impl(&dword_20AEA4000, v24, v25, "%s Observing asset changes:", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x20F2E9420](v28, -1, -1);
    MEMORY[0x20F2E9420](v27, -1, -1);
  }

  v80 = *(v17 + 8);
  v80(v23, v16);
  v34 = *(v62 + 16);
  v35 = v72;
  v36 = v73;
  if (v34)
  {
    v37 = v62 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v38 = *(v77 + 72);
    v78 = (v77 + 16);
    v79 = v38;
    v77 += 8;
    v64 = (v76 + 8);
    v65 = v75 + 1;
    *&v33 = 136315394;
    v63 = v33;
    v66 = v17 + 8;
    do
    {
      static Log.workoutVoice.getter();
      v56 = *v78;
      (*v78)(v36, v37, v9);
      v56(v13, v37, v9);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v39 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v81[0] = v76;
        *v39 = v63;
        v75 = v57;
        v40 = v67;
        v74 = v58;
        AudioSynthesisVoiceAsset.voice.getter();
        v41 = AudioSynthesisVoice.name.getter();
        v43 = v42;
        (v65->isa)(v40, v68);
        v44 = *v77;
        (*v77)(v36, v9);
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, v81);

        *(v39 + 4) = v45;
        *(v39 + 12) = 2080;
        v46 = v9;
        v47 = v69;
        AudioSynthesisVoiceAsset.downloadStatus.getter();
        v48 = AudioSynthesisVoiceAsset.DownloadStatus.description.getter();
        v50 = v49;
        v51 = v47;
        v9 = v46;
        v36 = v73;
        (*v64)(v51, v70);
        v44(v13, v9);
        v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, v81);
        v16 = v71;

        *(v39 + 14) = v52;
        v53 = v75;
        _os_log_impl(&dword_20AEA4000, v75, v74, "Asset name %s, download state %s", v39, 0x16u);
        v54 = v76;
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v54, -1, -1);
        v55 = v39;
        v35 = v72;
        MEMORY[0x20F2E9420](v55, -1, -1);
      }

      else
      {

        v59 = *v77;
        (*v77)(v13, v9);
        v59(v36, v9);
      }

      v80(v35, v16);
      v37 += v79;
      --v34;
    }

    while (v34);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    VoiceAssetsObserver.setAssets(_:)(v62);
  }

  return result;
}

unint64_t AudioSynthesisVoiceAsset.DownloadStatus.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadProgress();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v1, v15);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277D0A528])
  {
    (*(v16 + 96))(v19, v15);
    outlined init with take of AudioSynthesisVoiceAsset.DownloadProgress?(v19, v14);
    outlined init with copy of AudioSynthesisVoiceAsset.DownloadProgress?(v14, v11);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      v21 = 0xD000000000000010;
      outlined destroy of AudioSynthesisVoice?(v11, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
    }

    else
    {
      (*(v3 + 32))(v6, v11, v2);
      v27[0] = 0;
      v27[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      strcpy(v27, "downloading: ");
      HIWORD(v27[1]) = -4864;
      v26 = AudioSynthesisVoiceAsset.DownloadProgress.bytesWritten.getter();
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v22);

      MEMORY[0x20F2E6D80](47, 0xE100000000000000);
      v26 = AudioSynthesisVoiceAsset.DownloadProgress.bytesExpected.getter();
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v23);

      v21 = v27[0];
      (*(v3 + 8))(v6, v2);
    }

    outlined destroy of AudioSynthesisVoice?(v14, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
  }

  else if (v20 == *MEMORY[0x277D0A530])
  {
    return 0x616C696176616E75;
  }

  else if (v20 == *MEMORY[0x277D0A520])
  {
    return 0x64616F6C6E776F64;
  }

  else
  {
    (*(v16 + 8))(v19, v15);
    return 0xD000000000000017;
  }

  return v21;
}

double VoiceAssetsObserver.setAssets(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v2;
  v11[5] = a1;
  v11[6] = v4;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply, v11);

  return result;
}

uint64_t closure #1 in VoiceAssetsObserver.setAssets(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in VoiceAssetsObserver.setAssets(_:), v9, v8);
}

uint64_t closure #1 in VoiceAssetsObserver.setAssets(_:)()
{
  v16 = v0;

  static Log.workoutVoice.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    v9 = _typeName(_:qualified:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v1, v2, "%s Setting voice assets.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v14 = *(v0 + 24);
  swift_getKeyPath();
  *(swift_task_alloc() + 16) = v14;
  *(v0 + 16) = v14;
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v12 = *(v0 + 8);

  return v12();
}

void VoiceAssetsObserver.userSelectedAssetIndex.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AudioSynthesisVoiceAsset();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = v0;
  lazy protocol witness table accessor for type VoiceAssetsObserver and conformance VoiceAssetsObserver();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver__assets;
  swift_beginAccess();
  v8 = *(v1 + v7);
  v9 = *(v8 + 16);

  v10 = 0;
  if (v9)
  {
    while (v10 < *(v8 + 16))
    {
      (*(v3 + 16))(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v2);
      v11 = AudioSynthesisVoiceAsset.userSelected.getter();
      (*(v3 + 8))(v6, v2);
      if ((v11 & 1) == 0 && v9 != ++v10)
      {
        continue;
      }

      goto LABEL_5;
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t VoiceAssetsObserver.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t VoiceAssetsObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver_inferenceClient;
  v2 = type metadata accessor for InferenceClient();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11WorkoutCore19VoiceAssetsObserver___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in VoiceAssetsObserver.setAssets(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in VoiceAssetsObserver.setAssets(_:);

  return closure #1 in VoiceAssetsObserver.setAssets(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply;

  return closure #1 in VoiceAssetsObserver.setAssets(_:)(a1, v4, v5, v6, v7, v8);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply;

  return closure #1 in VoiceAssetsObserver.setAssets(_:)(a1, v4, v5, v6, v7, v8);
}

uint64_t dispatch thunk of VoiceAssetsObserver.selectVoiceAsset(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 336) + **(*v1 + 336));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of VoiceAssetsObserver.selectVoiceAsset(_:);

  return v6(a1);
}

uint64_t dispatch thunk of VoiceAssetsObserver.selectVoiceAsset(_:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of VoiceAssetsObserver.observeAssetChanges()()
{
  v4 = (*(*v0 + 344) + **(*v0 + 344));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of VoiceAssetsObserver.observeAssetChanges();

  return v4();
}

uint64_t outlined init with take of AudioSynthesisVoiceAsset.DownloadProgress?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of AudioSynthesisVoiceAsset.DownloadProgress?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMd, &_s19FitnessIntelligence24AudioSynthesisVoiceAssetV16DownloadProgressVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AudioSynthesisVoice?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm_6()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t closure #1 in VoiceAssetsObserver.setAssets(_:)partial apply()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void closure #1 in VoiceAssetsObserver.assets.setterpartial apply()
{
  partial apply for closure #1 in VoiceAssetsObserver.assets.setter();
}

{
  partial apply for closure #1 in VoiceAssetsObserver.assets.setter();
}

uint64_t (*RaceWorkoutTracker.alertDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WORaceWorkoutTracker_alertDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return RaceWorkoutTracker.alertDelegate.modify;
}

uint64_t (*RaceWorkoutTracker.trackerDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WORaceWorkoutTracker_trackerDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return RaceWorkoutTracker.trackerDelegate.modify;
}

id @objc RaceWorkoutTracker.alertDelegate.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t RaceWorkoutTracker.alertDelegate.setter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*RaceWorkoutTracker.metadataSavingDelegate.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR___WORaceWorkoutTracker_metadataSavingDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return RaceWorkoutTracker.metadataSavingDelegate.modify;
}

void RaceWorkoutTracker.alertDelegate.modify(void **a1, char a2)
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

id RaceWorkoutTracker.__allocating_init(configuration:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized RaceWorkoutTracker.init(configuration:)(a1);

  return v4;
}

id RaceWorkoutTracker.init(configuration:)(void *a1)
{
  v2 = specialized RaceWorkoutTracker.init(configuration:)(a1);

  return v2;
}

char *RaceWorkoutTracker.didUpdate(_:)(void *a1)
{
  v2 = v1;
  result = [a1 state];
  if ((result - 2) >= 2 && result != 6)
  {
    if (result != 1)
    {
      return result;
    }

    [a1 timeAhead_s];
    [a1 currentDistance_m];
  }

  result = [a1 state];
  v6 = &unk_27C72C000;
  if (result == 2)
  {
    if (v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12] == 1 && !(*&v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition] | *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 8]))
    {
      return result;
    }
  }

  else if (result == 1)
  {
    [a1 timeAhead_s];
    [a1 currentDistance_m];
  }

  v7 = [a1 state];
  v8 = 1;
  v9 = 0.0;
  v10 = 3;
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      v59 = &v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition];
      if ((v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12] & 1) == 0)
      {
        v60 = *&v1[OBJC_IVAR___WORaceWorkoutTracker_elapsedTime];
        RaceWorkoutTracker.recordCrossedFinishLine(_:)(v60);
        v61 = *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult];
        if (v61)
        {
          [v61 timeAhead_s];
          v63 = v62;
        }

        else
        {
          v63 = 0.0;
        }

        RaceWorkoutTracker.processRaceTimeFrom(_:secondsAhead:)(v60, v63);
        if (one-time initialization token for race != -1)
        {
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        __swift_project_value_buffer(v73, static WOLog.race);
        v74 = v1;
        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v106[0] = v78;
          *v77 = 136315394;
          *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574656C706D6F63, 0xE900000000000064, v106);
          *(v77 + 12) = 2080;
          v79 = *(v59 + 2);
          v80 = v59[12];
          v107 = *v59;
          LODWORD(v108) = v79;
          BYTE4(v108) = v80;
          v81 = RacePosition.description.getter();
          v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v106);

          *(v77 + 14) = v83;
          _os_log_impl(&dword_20AEA4000, v75, v76, "Race Workout Tracker: Transitioned to %s from %s", v77, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v78, -1, -1);
          MEMORY[0x20F2E9420](v77, -1, -1);
        }

        v8 = 1;
      }

      v27 = 2;
      goto LABEL_60;
    }

    if (v7 == 6)
    {
      v28 = &v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition];
      if (v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12] != 1 || *v28 <= 3uLL)
      {
        v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(&outlined read-only object #0 of RaceWorkoutTracker.didUpdate(_:));
        outlined destroy of (String, Bool)(&unk_282243F90, &_sSS_SbtMd, &_sSS_SbtMR);
        if (one-time initialization token for race != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static WOLog.race);
        v31 = v1;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v106[0] = v35;
          *v34 = 136315394;
          *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x64657269707865, 0xE700000000000000, v106);
          *(v34 + 12) = 2080;
          v36 = *(v28 + 2);
          v37 = v28[12];
          v107 = *v28;
          LODWORD(v108) = v36;
          BYTE4(v108) = v37;
          v38 = RacePosition.description.getter();
          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v106);

          *(v34 + 14) = v40;
          _os_log_impl(&dword_20AEA4000, v32, v33, "Race Workout Tracker: Transitioned to %s from %s", v34, 0x16u);
          swift_arrayDestroy();
          v41 = v35;
          v6 = &unk_27C72C000;
          MEMORY[0x20F2E9420](v41, -1, -1);
          MEMORY[0x20F2E9420](v34, -1, -1);
        }

        else
        {
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v67 = Strong;
          specialized _dictionaryUpCast<A, B, C, D>(_:)(v29);

          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v67 insertOrUpdateMetadata:isa forceTopLevel:0];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_beginAccess();
        v69 = swift_unknownObjectWeakLoadStrong();
        if (v69)
        {
          v70 = v69;
          v71 = type metadata accessor for WorkoutAlertRace();
          v104.receiver = objc_allocWithZone(v71);
          v104.super_class = v71;
          v72 = objc_msgSendSuper2(&v104, sel_init);
          [v72 setType_];
          [v70 alertSource:v31 didTriggerAlert:v72];

          swift_unknownObjectRelease();
        }

        v8 = 1;
      }

      v27 = 4;
      goto LABEL_60;
    }
  }

  else
  {
    if (v7 == 1)
    {
      [a1 timeAhead_s];
      v10 = v42;
      [a1 currentDistance_m];
      v9 = v43;
      v44 = &v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition];
      if (v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12] == 1)
      {
        v45 = *(v44 + 2);
        if (__PAIR128__((*v44 >= 2uLL) + v45 - 1, *v44 - 2) >= 3)
        {
          if (*v44 | v45)
          {
            swift_beginAccess();
            v85 = swift_unknownObjectWeakLoadStrong();
            if (v85)
            {
              v86 = v85;
              v87 = type metadata accessor for WorkoutAlertRace();
              v102.receiver = objc_allocWithZone(v87);
              v102.super_class = v87;
              v88 = objc_msgSendSuper2(&v102, sel_init);
              [v88 setType_];
              [v86 alertSource:v2 didTriggerAlert:v88];

              swift_unknownObjectRelease();
            }

            if (one-time initialization token for race != -1)
            {
              swift_once();
            }

            v89 = type metadata accessor for Logger();
            __swift_project_value_buffer(v89, static WOLog.race);
            v90 = v2;
            v91 = Logger.logObject.getter();
            v92 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v91, v92))
            {
              v93 = swift_slowAlloc();
              v94 = swift_slowAlloc();
              v105[0] = v94;
              *v93 = 136315394;
              v107 = 0;
              v108 = 0xE000000000000000;
              _StringGuts.grow(_:)(41);
              MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45B2E0);
              Double.write<A>(to:)();
              MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45B300);
              v6 = &unk_27C72C000;
              Float.write<A>(to:)();
              v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, v105);

              *(v93 + 4) = v95;
              *(v93 + 12) = 2080;
              v96 = *(v44 + 2);
              v97 = v44[12];
              v107 = *v44;
              LODWORD(v108) = v96;
              BYTE4(v108) = v97;
              v98 = RacePosition.description.getter();
              v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v105);

              *(v93 + 14) = v100;
              _os_log_impl(&dword_20AEA4000, v91, v92, "Race Workout Tracker: Transitioned to %s from %s", v93, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x20F2E9420](v94, -1, -1);
              MEMORY[0x20F2E9420](v93, -1, -1);
            }
          }

          else
          {
            if (one-time initialization token for race != -1)
            {
              swift_once();
            }

            v46 = type metadata accessor for Logger();
            __swift_project_value_buffer(v46, static WOLog.race);
            v47 = v1;
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v106[0] = v101;
              *v50 = 136315394;
              v107 = 0;
              v108 = 0xE000000000000000;
              _StringGuts.grow(_:)(41);
              MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B45B2E0);
              Double.write<A>(to:)();
              MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45B300);
              Float.write<A>(to:)();
              v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v106);

              *(v50 + 4) = v51;
              *(v50 + 12) = 2080;
              v52 = *(v44 + 2);
              v53 = v44[12];
              v107 = *v44;
              LODWORD(v108) = v52;
              BYTE4(v108) = v53;
              v54 = RacePosition.description.getter();
              v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v106);

              *(v50 + 14) = v56;
              v6 = &unk_27C72C000;
              _os_log_impl(&dword_20AEA4000, v48, v49, "Race Workout Tracker: Transitioned to %s from %s", v50, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x20F2E9420](v101, -1, -1);
              MEMORY[0x20F2E9420](v50, -1, -1);
            }

            v57 = *&v47[OBJC_IVAR___WORaceWorkoutTracker_elapsedTime];
            v58 = &v47[OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration];
            *v58 = v57;
            *(v58 + 8) = 0;
            RaceWorkoutTracker.recordCrossedStartLine(_:)(v57);
          }
        }
      }

      else
      {
        RaceWorkoutTracker.triggerPaceAlertIfNeeded(_:)(a1);
      }

      RaceWorkoutTracker.updateRemainingDistance(_:)(a1);
      v64 = *&v2[OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult];
      *&v2[OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult] = a1;
      v65 = a1;

      v8 = 0;
      goto LABEL_61;
    }

    if (v7 == 2)
    {
      v11 = &v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition];
      if ((v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12] & 1) == 0)
      {
        swift_beginAccess();
        v12 = swift_unknownObjectWeakLoadStrong();
        if (v12)
        {
          v13 = v12;
          v14 = type metadata accessor for WorkoutAlertRace();
          v103.receiver = objc_allocWithZone(v14);
          v103.super_class = v14;
          v15 = objc_msgSendSuper2(&v103, sel_init);
          [v15 setType_];
          [v13 alertSource:v2 didTriggerAlert:v15];

          swift_unknownObjectRelease();
        }

        if (one-time initialization token for race != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static WOLog.race);
        v17 = v2;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v105[0] = v21;
          *v20 = 136315394;
          *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574756F5266666FLL, 0xE800000000000000, v105);
          *(v20 + 12) = 2080;
          v22 = *(v11 + 2);
          v23 = v11[12];
          v107 = *v11;
          LODWORD(v108) = v22;
          BYTE4(v108) = v23;
          v24 = RacePosition.description.getter();
          v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v105);

          *(v20 + 14) = v26;
          _os_log_impl(&dword_20AEA4000, v18, v19, "Race Workout Tracker: Transitioned to %s from %s", v20, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v21, -1, -1);
          MEMORY[0x20F2E9420](v20, -1, -1);
        }

        v8 = 1;
      }

      v27 = 1;
LABEL_60:
      v10 = v27;
    }
  }

LABEL_61:
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didUpdate_];
    result = swift_unknownObjectRelease();
  }

  v84 = &v2[v6[138]];
  *v84 = v10;
  v84[2] = v9;
  *(v84 + 12) = v8;
  return result;
}

id RaceWorkoutTracker.updateRemainingDistance(_:)(void *a1)
{
  v2 = v1;
  if ([a1 state] == 1 && (objc_msgSend(a1, sel_timeAhead_s), v5 = v4, objc_msgSend(a1, sel_currentDistance_m), v5 >= 0.0) || (result = objc_msgSend(a1, sel_state), result == 1) && (objc_msgSend(a1, sel_timeAhead_s), v8 = v7, result = objc_msgSend(a1, sel_currentDistance_m), v8 < 0.0))
  {
    v9 = *&v2[OBJC_IVAR___WORaceWorkoutTracker_referenceRouteLength];
    [a1 currentDistance_m];
    v11 = v9 - v10;
    if (v11 <= 0.0)
    {
      v11 = 0.0;
    }

    v12 = OBJC_IVAR___WORaceWorkoutTracker_remainingDistance;
    *&v2[OBJC_IVAR___WORaceWorkoutTracker_remainingDistance] = v11;
    if (one-time initialization token for race != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.race);
    v14 = v2;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = *&v2[v12];
      _os_log_impl(&dword_20AEA4000, v15, v16, "Race Workout Tracker: Updated remaining distance on route: %f meters.", v17, 0xCu);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result updateRemainingDistance_];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void RaceWorkoutTracker.triggerPaceAlertIfNeeded(_:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v28[-v10];
  v12 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_raceAlerts);
  swift_beginAccess();
  if (*(v12 + 16) == 1)
  {
    v13 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_elapsedTime);
    if (v13 >= 60.0)
    {
      v14 = OBJC_IVAR___WORaceWorkoutTracker_lastAheadOrBehindAlert;
      v15 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastAheadOrBehindAlert);
      if (v15)
      {
        v16 = v15;
        static Date.now.getter();
        v17 = [v16 eventDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        Date.timeIntervalSince(_:)();
        v13 = v18;

        v19 = *(v4 + 8);
        v19(v8, v3);
        v19(v11, v3);
      }

      if (v13 > 15.0)
      {
        [a1 timeAhead_s];
        v21 = (v20 < 0.0 ? 19 : 18);
        v22 = *(v1 + v14);
        if (!v22 || [v22 type] != v21)
        {
          v23 = objc_allocWithZone(type metadata accessor for WorkoutAlertRace());
          v24 = WorkoutAlertRace.init(type:)(v21);
          static Date.now.getter();
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v4 + 8))(v11, v3);
          [v24 setEventDate_];

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong alertSource:v1 didTriggerAlert:v24];
            swift_unknownObjectRelease();
          }

          v27 = *(v1 + v14);
          *(v1 + v14) = v24;
        }
      }
    }
  }
}

Swift::Void __swiftcall RaceWorkoutTracker.processRaceTimeFrom(_:secondsAhead:)(Swift::Double _, Swift::Double secondsAhead)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration);
  if (*(v2 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration + 8))
  {
    v5 = 0.0;
  }

  v6 = _ - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong setFinishTime_];
    swift_unknownObjectRelease();
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    [v8 setDidWinRace_];
    swift_unknownObjectRelease();
  }

  if (secondsAhead < 0.0)
  {
    v9 = 24;
  }

  else
  {
    v9 = 23;
  }

  v10 = objc_allocWithZone(type metadata accessor for WorkoutAlertRaceComplete());
  v11 = WorkoutAlertRaceComplete.init(type:raceTime:secondsAhead:)(v9, v6, secondsAhead);
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    [v12 alertSource:v3 didTriggerAlert:v11];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Void __swiftcall RaceWorkoutTracker.fireRaceCompleteAlert(raceTime:secondsAhead:)(Swift::Double raceTime, Swift::Double secondsAhead)
{
  v3 = v2;
  if (secondsAhead < 0.0)
  {
    v6 = 24;
  }

  else
  {
    v6 = 23;
  }

  v7 = objc_allocWithZone(type metadata accessor for WorkoutAlertRaceComplete());
  v8 = WorkoutAlertRaceComplete.init(type:raceTime:secondsAhead:)(v6, raceTime, secondsAhead);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alertSource:v3 didTriggerAlert:v8];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Void __swiftcall RaceWorkoutTracker.recordCrossedStartLine(_:)(Swift::Double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A20;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 40) = 0x800000020B465090;
  *(inited + 72) = type metadata accessor for Date();
  __swift_allocate_boxed_opaque_existential_0((inited + 48));
  Date.init()();
  *(inited + 80) = 0xD00000000000002DLL;
  *(inited + 88) = 0x800000020B4650C0;
  v4 = MEMORY[0x277D839F8];
  *(inited + 96) = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_distance);
  *(inited + 120) = v4;
  *(inited + 128) = 0xD00000000000002DLL;
  *(inited + 136) = 0x800000020B4650F0;
  *(inited + 168) = v4;
  *(inited + 144) = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 insertOrUpdateMetadata:isa forceTopLevel:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Void __swiftcall RaceWorkoutTracker.recordCrossedFinishLine(_:)(Swift::Double a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A20;
  *(inited + 32) = 0xD000000000000028;
  *(inited + 40) = 0x800000020B465120;
  *(inited + 72) = type metadata accessor for Date();
  __swift_allocate_boxed_opaque_existential_0((inited + 48));
  Date.init()();
  *(inited + 80) = 0xD00000000000002CLL;
  *(inited + 88) = 0x800000020B465150;
  v4 = MEMORY[0x277D839F8];
  *(inited + 96) = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_distance);
  *(inited + 120) = v4;
  *(inited + 128) = 0xD00000000000002CLL;
  *(inited + 136) = 0x800000020B465180;
  *(inited + 168) = v4;
  *(inited + 144) = a1;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 insertOrUpdateMetadata:isa forceTopLevel:0];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Double __swiftcall RaceWorkoutTracker.calculateRaceFinishTime(_:)(Swift::Double a1)
{
  v2 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration);
  if (*(v1 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration + 8))
  {
    v2 = 0.0;
  }

  return a1 - v2;
}

void *RaceWorkoutTracker.recover(with:metadata:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [a1 state];
  v7 = 0.0;
  if (v6 > 2)
  {
    if ((v6 - 4) >= 2)
    {
      if (v6 == 3)
      {
        v8 = 1;
        v9 = 2;
        goto LABEL_11;
      }

      if (v6 == 6)
      {
        v8 = 1;
        v9 = 4;
        goto LABEL_11;
      }
    }

LABEL_10:
    v8 = 1;
    v9 = 3;
    goto LABEL_11;
  }

  if (!v6)
  {
    goto LABEL_10;
  }

  if (v6 != 1)
  {
    if (v6 == 2)
    {
      v8 = 1;
      v9 = 1;
LABEL_11:
      v10 = v9;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  [a1 timeAhead_s];
  v10 = v43;
  [a1 currentDistance_m];
  v8 = 0;
  v7 = v44;
LABEL_12:
  v11 = v3 + OBJC_IVAR___WORaceWorkoutTracker_lastPosition;
  *v11 = v10;
  *(v11 + 8) = v7;
  *(v11 + 12) = v8;
  v12 = [a1 state];
  if (v12 == 1)
  {
    [a1 timeAhead_s];
    [a1 currentDistance_m];
  }

  else if (v12 != 3)
  {
    goto LABEL_17;
  }

  v13 = *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult);
  *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult) = a1;
  v14 = a1;

LABEL_17:
  if (*(a2 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000034, 0x800000020B4651B0);
    if (v16)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v15, v46);
      if (swift_dynamicCast())
      {
        *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastAveragePace) = v45;
      }
    }
  }

  if (*(a2 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003BLL, 0x800000020B4651F0);
    if (v18)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v17, v46);
      if (swift_dynamicCast())
      {
        *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastOverlapDistance) = v45;
      }
    }
  }

  if (*(a2 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B465230), (v20 & 1) != 0) && (outlined init with copy of Any(*(a2 + 56) + 32 * v19, v46), (swift_dynamicCast() & 1) != 0))
  {
    v21 = v45;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong recoverySetSecondsAheadOfGhost_];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v21 = 0.0;
  }

  if (*(a2 + 16))
  {
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000026, 0x800000020B465260);
    if (v24)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v23, v46);
      if (swift_dynamicCast())
      {
        *(v3 + OBJC_IVAR___WORaceWorkoutTracker_remainingDistance) = v45;
        swift_beginAccess();
        v25 = swift_unknownObjectWeakLoadStrong();
        if (v25)
        {
          [v25 updateRemainingDistance_];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  if (*(a2 + 16))
  {
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x800000020B465290);
    if (v27)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v26, v46);
      if (swift_dynamicCast())
      {
        *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastPositionOnRoute) = v45;
        swift_beginAccess();
        v28 = swift_unknownObjectWeakLoadStrong();
        if (v28)
        {
          [v28 recoverySetPositionOnRoute_];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  if (*(a2 + 16))
  {
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002DLL, 0x800000020B4652C0);
    if (v30)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v29, v46);
      if (swift_dynamicCast())
      {
        *(v3 + OBJC_IVAR___WORaceWorkoutTracker_lastGhostPositionOnRoute) = v45;
        swift_beginAccess();
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          [v31 recoverySetGhostPositionOnRoute_];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  if (*(a2 + 16))
  {
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002DLL, 0x800000020B4650F0);
    if (v33)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v32, v46);
      if (swift_dynamicCast())
      {
        v34 = v3 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration;
        *v34 = v45;
        *(v34 + 8) = 0;
      }
    }
  }

  if (*(a2 + 16))
  {
    v35 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B465180);
    if (v36)
    {
      outlined init with copy of Any(*(a2 + 56) + 32 * v35, v46);
      if (swift_dynamicCast())
      {
        v37 = *(v3 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration);
        v38 = *(v3 + OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration + 8);
        swift_beginAccess();
        v39 = swift_unknownObjectWeakLoadStrong();
        if (v39)
        {
          v40 = 0.0;
          if (!v38)
          {
            v40 = v37;
          }

          [v39 setFinishTime_];
          swift_unknownObjectRelease();
        }

        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          [v41 setDidWinRace_];
          swift_unknownObjectRelease();
        }
      }
    }
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result didUpdate_];
    return swift_unknownObjectRelease();
  }

  return result;
}

id RaceWorkoutTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RaceWorkoutTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RaceWorkoutTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t RaceWorkoutTracker.metadata.getter()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastAveragePace);
  v7 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastOverlapDistance);
  v8 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult);
  if (v8)
  {
    v9 = v8;
    [v9 currentAveragePace_s_per_m];
    v31 = v10 <= 0.0;
    v11 = 0;
    if (v10 > 0.0)
    {
      [v9 currentAveragePace_s_per_m];
      v6 = 1.0 / v12;
      [v9 totalOverlapDistance_m];
      v7 = v13;
      [v9 timeAhead_s];
      v11 = v14;
    }
  }

  else
  {
    v31 = 1;
    v11 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423920;
  *(inited + 32) = 0xD000000000000032;
  *(inited + 40) = 0x800000020B465310;
  v16 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_configuration);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v34);

  if (LOBYTE(v34[0]) == 1)
  {
    v17 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  }

  else
  {
    v17 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  }

  v18 = v16 + *v17;
  swift_beginAccess();
  v19 = v30;
  (*(v2 + 16))(v5, v18, v30);
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v2 + 8))(v5, v19);
  v23 = MEMORY[0x277D837D0];
  *(inited + 48) = v20;
  *(inited + 56) = v22;
  *(inited + 72) = v23;
  *(inited + 80) = 0xD000000000000034;
  *(inited + 88) = 0x800000020B4651B0;
  v24 = MEMORY[0x277D839F8];
  *(inited + 96) = v6;
  *(inited + 120) = v24;
  *(inited + 128) = 0xD00000000000003BLL;
  *(inited + 136) = 0x800000020B4651F0;
  *(inited + 144) = v7;
  *(inited + 168) = v24;
  *(inited + 176) = 0xD000000000000028;
  *(inited + 184) = 0x800000020B465290;
  *(inited + 192) = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastPositionOnRoute);
  *(inited + 216) = v24;
  *(inited + 224) = 0xD00000000000002DLL;
  *(inited + 232) = 0x800000020B4652C0;
  *(inited + 240) = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastGhostPositionOnRoute);
  *(inited + 264) = v24;
  *(inited + 272) = 0xD000000000000026;
  *(inited + 280) = 0x800000020B465260;
  *(inited + 288) = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_remainingDistance);
  *(inited + 312) = v24;
  *(inited + 320) = 0xD000000000000026;
  *(inited + 328) = 0x800000020B45B2B0;
  v25 = *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 12);
  if (*(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastPosition) != 2 || *(v1 + OBJC_IVAR___WORaceWorkoutTracker_lastPosition + 8) != 0)
  {
    v25 = 0;
  }

  *(inited + 360) = MEMORY[0x277D839B0];
  *(inited + 336) = v25;
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  v35 = v27;
  if (!v31)
  {
    v33 = v24;
    *&v32 = v11;
    specialized Dictionary._Variant.updateValue(_:forKey:)(&v32, 0xD00000000000002CLL, 0x800000020B465230, v34);
    outlined destroy of (String, Bool)(v34, &_sypSgMd, &_sypSgMR);
    return v35;
  }

  return v27;
}

void *RaceWorkoutTracker.dataProvider(_:didUpdate:)(void *result, uint64_t a2)
{
  if (a2 == 3)
  {
    v3 = &OBJC_IVAR___WORaceWorkoutTracker_elapsedTime;
    v4 = &selRef_elapsedTime;
    v5 = &selRef_elapsedTimeProvider;
  }

  else
  {
    if (a2 != 1)
    {
      return result;
    }

    v3 = &OBJC_IVAR___WORaceWorkoutTracker_distance;
    v4 = &selRef_distance;
    v5 = &selRef_distanceProvider;
  }

  [objc_msgSend(result *v5)];
  v7 = v6;
  result = swift_unknownObjectRelease();
  *(v2 + *v3) = v7;
  return result;
}

Swift::Void __swiftcall RaceWorkoutTracker.setRoutePoints(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    type metadata accessor for CLRoutePoint();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v2 setRoutePoints_];

    swift_unknownObjectRelease();
  }
}

void specialized Dictionary._Variant.updateValue(_:forKey:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v21 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v21;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a1, v12);
    *a4 = 0u;
    a4[1] = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 32 * v13;
  outlined init with take of Any((v12[7] + 32 * v13), a4);
  outlined init with take of Any(a1, (v12[7] + v20));
LABEL_11:
  *v6 = v12;
}

uint64_t specialized Dictionary._Variant.updateValue(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v20 = v11;
    specialized _NativeDictionary.copy()();
    v11 = v20;
    if (v4)
    {
      goto LABEL_7;
    }

LABEL_10:
    specialized _NativeDictionary._insert(at:key:value:)();

    v19 = 0;
    goto LABEL_11;
  }

LABEL_6:
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v18 = v10[7];
  v19 = *(v18 + 8 * v11);
  *(v18 + 8 * v11) = a1;
LABEL_11:
  *v5 = v10;
  return v19;
}

id specialized RaceWorkoutTracker.init(configuration:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_distance] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_elapsedTime] = 0;
  v3 = &v1[OBJC_IVAR___WORaceWorkoutTracker_lastPosition];
  *v3 = 0;
  *(v3 + 2) = 0;
  v3[12] = 1;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastOnRouteResult] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastAheadOrBehindAlert] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastAveragePace] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastOverlapDistance] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastPositionOnRoute] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_lastGhostPositionOnRoute] = 0;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_alertHoldoffTime] = 0x404E000000000000;
  *&v1[OBJC_IVAR___WORaceWorkoutTracker_minTimeBetweenAlertsSec] = 0x402E000000000000;
  v4 = &v1[OBJC_IVAR___WORaceWorkoutTracker_startOnRouteDuration];
  *v4 = 0;
  v4[8] = 1;
  v5 = *(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for RaceWorkoutConfiguration(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    *&v1[OBJC_IVAR___WORaceWorkoutTracker_configuration] = v6;
    v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v9 = *(v7 + v8);
    v10 = v5;
    v11 = v9;
    v12 = specialized static RaceAlertsStore.read(for:)(v11);

    *&v1[OBJC_IVAR___WORaceWorkoutTracker_raceAlerts] = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v20);

    if (LOBYTE(v20[0]) == 1)
    {
      v13 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    }

    else
    {
      v13 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
    }

    v14 = (v7 + v13);
    swift_beginAccess();
    *&v1[OBJC_IVAR___WORaceWorkoutTracker_referenceRouteLength] = *v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v21);

    if (v21 == 1)
    {
      v15 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    }

    else
    {
      v15 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
    }

    v16 = (v7 + v15);
    swift_beginAccess();
    v17 = *v16;

    *&v1[OBJC_IVAR___WORaceWorkoutTracker_remainingDistance] = v17;
    v19.receiver = v1;
    v19.super_class = type metadata accessor for RaceWorkoutTracker();
    return objc_msgSendSuper2(&v19, sel_init);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000036, 0x800000020B465570, "WorkoutCore/RaceWorkoutTracker.swift", 36, 2, 55, 0);
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of (String, Bool)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t type metadata accessor for CLRoutePoint()
{
  result = lazy cache variable for type metadata for CLRoutePoint;
  if (!lazy cache variable for type metadata for CLRoutePoint)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CLRoutePoint);
  }

  return result;
}

uint64_t keypath_get_3Tm@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

uint64_t AveragePowerAccumulator.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14[-v5];
  v7 = OBJC_IVAR___WOAveragePowerAccumulator_eventStartDate;
  swift_beginAccess();
  outlined init with copy of Date?(v1 + v7, v6);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    v11 = *(v1 + OBJC_IVAR___WOAveragePowerAccumulator_powerAccumulator);
    v12 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
    swift_beginAccess();
    outlined init with copy of Date?(v11 + v12, a1);
    result = v10(v6, 1, v8);
    if (result != 1)
    {
      return _s10Foundation4DateVSgWOhTm_11(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v9 + 32))(a1, v6, v8);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }

  return result;
}

char *AveragePowerAccumulator.init(powerAccumulator:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMd, &_s7Combine9PublishedV9PublisherVySaySo24HKWorkoutBuilderQuantityCG_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - v6;
  v8 = OBJC_IVAR___WOAveragePowerAccumulator_eventStartDate;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  v10 = OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator;
  type metadata accessor for StatisticAccumulator();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *&v1[v10] = v11;
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v12 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v12 = MEMORY[0x277D84FA0];
  }

  *&v1[OBJC_IVAR___WOAveragePowerAccumulator_cancellables] = v12;
  *&v1[OBJC_IVAR___WOAveragePowerAccumulator_powerAccumulator] = a1;
  v13 = type metadata accessor for AveragePowerAccumulator(0);
  v19.receiver = v1;
  v19.super_class = v13;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v19, sel_init);
  swift_beginAccess();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMd, &_s7Combine9PublishedVySaySo24HKWorkoutBuilderQuantityCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type Published<[HKWorkoutBuilderQuantity]>.Publisher and conformance Published<A>.Publisher();
  Publisher<>.sink(receiveValue:)();

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v16;
}

void closure #1 in AveragePowerAccumulator.init(powerAccumulator:)(void **a1, uint64_t a2)
{
  v2._rawValue = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    AveragePowerAccumulator.process(samples:)(v2);
  }
}

id AveragePowerAccumulator.averagePower.getter()
{
  v1 = [objc_opt_self() wattUnit];
  v2 = *(v0 + OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator);
  v3 = *(v2 + 24);
  if (v3 < 1)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = *(v2 + 16) / v3;
  }

  v5 = [objc_opt_self() quantityWithUnit:v1 doubleValue:v4];

  return v5;
}

void AveragePowerAccumulator.reset(with:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  outlined init with copy of Date?(a1, &v11 - v5);
  v7 = OBJC_IVAR___WOAveragePowerAccumulator_eventStartDate;
  swift_beginAccess();
  outlined assign with take of Date?(v6, &v1[v7]);
  swift_endAccess();
  v8 = *&v1[OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator];
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v9 = [v1 updateHandler];
  if (v9)
  {
    v10 = v9;
    (*(v9 + 2))();
    _Block_release(v10);
  }
}

Swift::Void __swiftcall AveragePowerAccumulator.process(samples:)(Swift::OpaquePointer samples)
{
  rawValue = samples._rawValue;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v79 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v85 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v79 - v17;
  v19 = OBJC_IVAR___WOAveragePowerAccumulator_eventStartDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v1[v19], v7);
  v20 = *(v12 + 48);
  if (v20(v7, 1, v11) == 1)
  {
    v2 = *&v1[OBJC_IVAR___WOAveragePowerAccumulator_powerAccumulator];
    v21 = v12;
    v22 = OBJC_IVAR___NLSessionActivityPowerAccumulator_startDate;
    swift_beginAccess();
    v23 = v2 + v22;
    v12 = v21;
    outlined init with copy of Date?(v23, v10);
    if (v20(v7, 1, v11) != 1)
    {
      _s10Foundation4DateVSgWOhTm_11(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (*(v12 + 32))(v10, v7, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
  }

  if (v20(v10, 1, v11) != 1)
  {
    v30 = (*(v12 + 32))(v18, v10, v11);
    MEMORY[0x28223BE20](v30, v31);
    v84 = v18;
    *(&v79 - 2) = v18;
    v32 = rawValue;

    v33 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in AveragePowerAccumulator.process(samples:), (&v79 - 4), v32);
    v34 = v33 >> 62;
    if (v33 >> 62)
    {
      v78 = v33;
      v35 = __CocoaSet.count.getter();
      v33 = v78;
      if (v35)
      {
LABEL_13:
        v36 = v33;
        v89 = objc_opt_self();
        if (v35 < 1)
        {
          __break(1u);
        }

        else
        {
          v81 = v34;
          v82 = v12;
          v83 = v11;
          v37 = 0;
          v38 = v36;
          v39 = v36 & 0xC000000000000001;
          v87 = v38;
          v88 = OBJC_IVAR___WOAveragePowerAccumulator_statisticAccumulator;
          do
          {
            if (v39)
            {
              v40 = MEMORY[0x20F2E7A20](v37);
            }

            else
            {
              v40 = *(v38 + 8 * v37 + 32);
            }

            v41 = v40;
            v42 = *&v1[v88];

            v24 = [v89 wattUnit];
            v43 = [v41 quantity];
            [v43 doubleValueForUnit_];
            v45 = v44;

            *(v42 + 16) = v45 + *(v42 + 16);
            v46 = *(v42 + 24);
            v47 = __OFADD__(v46, 1);
            v48 = v46 + 1;
            if (v47)
            {
              __break(1u);
              goto LABEL_38;
            }

            ++v37;
            *(v42 + 24) = v48;

            v38 = v87;
          }

          while (v35 != v37);
          v49 = [v1 updateHandler];
          if (v49)
          {
            v50 = v49;
            (*(v49 + 2))();
            _Block_release(v50);
          }

          v11 = v83;
          v36 = v84;
          v7 = v85;
          v34 = rawValue;
          v2 = v82;
          if (one-time initialization token for app == -1)
          {
            goto LABEL_23;
          }
        }

        swift_once();
LABEL_23:
        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static WOLog.app);
        (*(v2 + 16))(v7, v36, v11);
        swift_bridgeObjectRetain_n();

        v52 = v2;
        v53 = v1;
        v54 = v1;
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v55, v56))
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v61 = *(v52 + 8);
          v61(v7, v11);
          v61(v84, v11);
          return;
        }

        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v90 = v59;
        *v57 = 134218754;
        v80 = v59;
        if (v81)
        {
          v60 = __CocoaSet.count.getter();
        }

        else
        {
          v60 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v57 + 4) = v60;

        *(v57 + 12) = 2048;
        if (v34 >> 62)
        {
          v62 = __CocoaSet.count.getter();
        }

        else
        {
          v62 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v63 = v58;

        *(v57 + 14) = v62;

        *(v57 + 22) = 2080;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v64 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v66 = [v64 stringFromDate_];

        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        v70 = *(v82 + 8);
        v70(v7, v83);
        v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v90);

        *(v57 + 24) = v71;
        *(v57 + 32) = 2112;
        v72 = [v89 wattUnit];
        v73 = *&v53[v88];
        v74 = *(v73 + 24);
        if (v74 < 1)
        {
          v75 = 0.0;
        }

        else
        {
          v75 = *(v73 + 16) / v74;
        }

        v76 = [objc_opt_self() quantityWithUnit:v72 doubleValue:v75];

        *(v57 + 34) = v76;
        *v63 = v76;
        _os_log_impl(&dword_20AEA4000, v55, v56, "AveragePowerAccumulator: processed %ld interval samples out of %ld input samples, startDate: %s, averagePower: %@", v57, 0x2Au);
        _s10Foundation4DateVSgWOhTm_11(v63, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v63, -1, -1);
        v77 = v80;
        __swift_destroy_boxed_opaque_existential_0(v80);
        MEMORY[0x20F2E9420](v77, -1, -1);
        MEMORY[0x20F2E9420](v57, -1, -1);

        v11 = v83;
        goto LABEL_41;
      }
    }

    else
    {
      v35 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
        goto LABEL_13;
      }
    }

    v70 = *(v12 + 8);
LABEL_41:
    v70(v84, v11);
    return;
  }

  _s10Foundation4DateVSgWOhTm_11(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v24 = rawValue;
  if (one-time initialization token for app != -1)
  {
LABEL_38:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static WOLog.app);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    if (v24 >> 62)
    {
      v29 = __CocoaSet.count.getter();
    }

    else
    {
      v29 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v28 + 4) = v29;

    _os_log_impl(&dword_20AEA4000, v26, v27, "AveragePowerAccumulator: startDate is not available yet to accumulate average power, skip %ld input samples", v28, 0xCu);
    MEMORY[0x20F2E9420](v28, -1, -1);
  }

  else
  {
  }
}