uint64_t key path setter for Apple_Workout_Core_WorkoutStep.optionalPowerTargetZone : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.optionalPowerTargetZone.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  return Apple_Workout_Core_WorkoutStep.optionalPowerTargetZone.modify;
}

void Apple_Workout_Core_WorkoutStep.optionalPowerTargetZone.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v6 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v10, v14, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v6 + v15, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v9, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v18 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v9, v14, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v18 + v23, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t Apple_Workout_Core_WorkoutStep.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_WorkoutStep.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

void Apple_Workout_Core_TargetZone.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_TargetZone.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_TargetZone.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TargetZone(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_TargetZone.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TargetZone(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t (*Apple_Workout_Core_HeartRateTargetZone.lowerBound.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_HeartRateTargetZone.lowerBound.modify;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.lowerBound.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateTargetZone.clearLowerBound()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Workout_Core_HeartRateTargetZone.upperBound.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_HeartRateTargetZone.upperBound.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateTargetZone.clearUpperBound()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Workout_Core_HeartRateTargetZone.defaultZoneIndex.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 32);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return Apple_Workout_Core_HeartRateTargetZone.defaultZoneIndex.modify;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.defaultZoneIndex.modify(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateTargetZone.clearDefaultZoneIndex()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 32);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of Apple_Workout_Core_Goal(v7, a1, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_PowerZonesAlertTargetZone.target.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of Apple_Workout_Core_Goal(v8, v11, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
      return Apple_Workout_Core_PowerZonesAlertTargetZone.target.modify;
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  }

  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  UnknownStorage.init()();
  return Apple_Workout_Core_PowerZonesAlertTargetZone.target.modify;
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_Goal(v7, a1, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  }

  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_PowerZonesAlertTargetZone.automatic : Apple_Workout_Core_PowerZonesAlertTargetZone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_Goal(v7, a2, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  }

  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_PowerZonesAlertTargetZone.automatic.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
LABEL_15:
    *v11 = 0;
    *(v11 + 8) = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    return Apple_Workout_Core_PowerZonesAlertTargetZone.automatic.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v11, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  return Apple_Workout_Core_PowerZonesAlertTargetZone.automatic.modify;
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.custom.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v2, &v12 - v6, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return outlined init with take of Apple_Workout_Core_Goal(v7, a1, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  }

  v10 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  *a1 = 0;
  a1[1] = 0;
  result = UnknownStorage.init()();
  v11 = a1 + *(v10 + 28);
  *v11 = 0;
  *(v11 + 4) = 256;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_PowerZonesAlertTargetZone.target : Apple_Workout_Core_PowerZonesAlertTargetZone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v18 - v14;
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, &v18 - v14, a6);
  outlined destroy of Apple_Workout_Core_Goal?(a2, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  outlined init with take of Apple_Workout_Core_Goal(v15, a2, a7);
  v16 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

void (*Apple_Workout_Core_PowerZonesAlertTargetZone.custom.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
LABEL_15:
    *v12 = 0;
    v12[1] = 0;
    UnknownStorage.init()();
    v15 = v12 + *(v9 + 28);
    *v15 = 0;
    *(v15 + 4) = 256;
    return Apple_Workout_Core_PowerZonesAlertTargetZone.custom.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v12, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
  return Apple_Workout_Core_PowerZonesAlertTargetZone.custom.modify;
}

void Apple_Workout_Core_PowerZonesAlertTargetZone.target.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_WorkoutStep((*a1)[3], v10, a5);
    outlined destroy of Apple_Workout_Core_Goal?(v13, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v11, a6);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Goal?(**a1, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t static Apple_Workout_Core_PowerZoneAutomatic.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C17_CyclingPowerZoneV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void Apple_Workout_Core_PowerZoneTarget.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_PowerZoneTarget.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Workout_Core_PowerZoneTarget.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_PowerZoneTarget.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t key path getter for Apple_Workout_Core_CyclingPowerZone.zone : Apple_Workout_Core_CyclingPowerZone@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v8 + 28), v7, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v7, a2, type metadata accessor for Apple_Workout_Core_Zone);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_CyclingPowerZone.zone : Apple_Workout_Core_CyclingPowerZone(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v8, type metadata accessor for Apple_Workout_Core_Zone);
  v9 = *(type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0) + 28);
  outlined destroy of Apple_Workout_Core_Goal?(a2 + v9, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_Zone);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_CyclingPowerZone.zone.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_Zone(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0) + 28);
  *(v5 + 12) = v15;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_Zone);
  }

  return Apple_Workout_Core_CyclingPowerZone.zone.modify;
}

void Apple_Workout_Core_CyclingPowerZone.zone.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_WorkoutStep((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_Zone);
    outlined destroy of Apple_Workout_Core_Goal?(v9 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_Zone);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v5, type metadata accessor for Apple_Workout_Core_Zone);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Goal?(v9 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_Zone);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_CyclingPowerZone.hasZone.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v0 + *(v5 + 28), v4, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Goal?(v4, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_CyclingPowerZone.clearZone()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0) + 28);
  outlined destroy of Apple_Workout_Core_Goal?(v0 + v1, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_PowerZoneCustom.type.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v4 = (v1 + *(result + 28));
  if (*(v4 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t (*Apple_Workout_Core_PowerZoneCustom.type.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0) + 28);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v1 + v3 + 9))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = *v4;
    v6 = *(v4 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6 & 1;
  return Apple_Workout_Core_PowerZoneCustom.type.modify;
}

uint64_t Apple_Workout_Core_PowerZoneCustom.type.modify(uint64_t result)
{
  v1 = *(result + 16) + *(result + 12);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_PowerZoneCustom.clearType()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 256;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 2:
        closure #2 in Apple_Workout_Core_IntervalsMetricsPublisher.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
      case 3:
        closure #3 in Apple_Workout_Core_IntervalsMetricsPublisher.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
        break;
      case 12:
      case 13:
      case 17:
        type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
      case 14:
        type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        break;
      case 15:
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #2 in Apple_Workout_Core_IntervalsMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStep);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in Apple_Workout_Core_IntervalsMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStep);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (*(v3 + 8))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 16))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 24))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 32))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 40))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 48))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 56))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      if (*(v3 + 64))
      {
        dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
      }

      closure #3 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #4 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #5 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
      if (*(v3 + 72))
      {
        dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
      }

      closure #6 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v14 + 60), v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStep);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_WorkoutStep);
}

uint64_t closure #2 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v14 + 64), v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStep);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_WorkoutStep);
}

uint64_t closure #3 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  if ((*(a1 + *(result + 68) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  if ((*(a1 + *(result + 72) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #5 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  if ((*(a1 + *(result + 76) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #6 in Apple_Workout_Core_IntervalsMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  if ((*(a1 + *(result + 80) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_IntervalsMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_IntervalsMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_IntervalsMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_IntervalsMetricsPublisher);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for defaultInstance()
{
  type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
  swift_allocObject();
  result = Apple_Workout_Core_WorkoutStep._StorageClass.init()();
  static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance = result;
  return result;
}

{
  type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
  swift_allocObject();
  result = Apple_Workout_Core_MetricsPublisher._StorageClass.init()();
  static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance = result;
  return result;
}

{
  type metadata accessor for Apple_Workout_Core_HKActivitySummary._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurned;
  v2 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTime, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleExerciseTime, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleStandHours, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__activeEnergyBurnedGoal, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__appleMoveTimeGoal, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__exerciseTimeGoal, 1, 1, v2);
  result = (v3)(v0 + OBJC_IVAR____TtCV11WorkoutCore36Apple_Workout_Core_HKActivitySummaryP33_85A89D74E80848A2FF76F17F8F47FEA113_StorageClass__standHoursGoal, 1, 1, v2);
  static Apple_Workout_Core_HKActivitySummary._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__currentActivity;
  v2 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegTime) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegDistance) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastLegAveragePace) = 0;
  v4 = v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__transitionState;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__remainingLegCount) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__lastEffectiveTransitionDateSinceReference) = 0;
  result = (v3)(v0 + OBJC_IVAR____TtCV11WorkoutCore45Apple_Workout_Core_MultiSportMetricsPublisherP33_067E2144401B7FCC675986BEF7201AE413_StorageClass__nextMultisportActivity, 1, 1, v2);
  static Apple_Workout_Core_MultiSportMetricsPublisher._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
  swift_allocObject();
  result = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init()();
  static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance = result;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutStep._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  v2 = type metadata accessor for Apple_Workout_Core_Goal(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones) = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  v7 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  v9 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  v10 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v0 + v9, 1, 1, v10);
  v12 = (v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  *v12 = 0;
  v12[1] = 0;
  v13 = v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  *v13 = 0;
  *(v13 + 4) = 1;
  v8(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone, 1, 1, v7);
  v11(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone, 1, 1, v10);
  return v0;
}

uint64_t Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v75 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v73 = &v60 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v69 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v63 = &v60 - v14;
  *(v1 + 16) = 0;
  v61 = (v1 + 16);
  *(v1 + 24) = 1;
  v15 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  v62 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  v16 = type metadata accessor for Apple_Workout_Core_Goal(0);
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  v64 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones) = MEMORY[0x277D84F90];
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  v65 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  v18 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  v19 = (v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  v20 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  v66 = v19;
  v67 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  v21 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v1 + v20, 1, 1, v21);
  v23 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  v68 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  v24 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v1 + v23, 1, 1, v24);
  v26 = (v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  v70 = (v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  *v26 = 0;
  v26[1] = 0;
  v27 = v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  v71 = v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  *v27 = 0;
  *(v27 + 4) = 1;
  v72 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  v22(v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone, 1, 1, v21);
  v74 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  v25(v1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone, 1, 1, v24);
  swift_beginAccess();
  v28 = *(a1 + 16);
  LOBYTE(v22) = *(a1 + 24);
  v29 = v61;
  swift_beginAccess();
  *v29 = v28;
  *(v1 + 24) = v22;
  v30 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  v31 = v63;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v30, v63, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v32 = v62;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v31, v1 + v32, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  v34 = *(a1 + v33);
  v35 = v64;
  swift_beginAccess();
  *(v1 + v35) = v34;

  v36 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  v37 = v69;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v36, v69, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v38 = v65;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v37, v1 + v38, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  swift_endAccess();
  v39 = (a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = v66;
  swift_beginAccess();
  *v42 = v40;
  v42[1] = v41;

  v43 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  v44 = v73;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v43, v73, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v45 = v67;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v44, v1 + v45, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  swift_endAccess();
  v46 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  v47 = v75;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v46, v75, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v48 = v68;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v47, v1 + v48, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  swift_endAccess();
  v49 = (a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  v51 = *v49;
  v50 = v49[1];
  v52 = v70;
  swift_beginAccess();
  *v52 = v51;
  v52[1] = v50;

  v53 = a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  LODWORD(v52) = *v53;
  LOBYTE(v53) = *(v53 + 4);
  v54 = v71;
  swift_beginAccess();
  *v54 = v52;
  *(v54 + 4) = v53;
  v55 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v55, v44, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v56 = v72;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v44, v1 + v56, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  swift_endAccess();
  v57 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v57, v47, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);

  v58 = v74;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v47, v1 + v58, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t outlined init with take of Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Apple_Workout_Core_WorkoutStep._StorageClass.deinit()
{
  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);

  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);

  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);

  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_Goal?(v0 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return v0;
}

uint64_t Apple_Workout_Core_WorkoutStep._StorageClass.__deallocating_deinit()
{
  Apple_Workout_Core_WorkoutStep._StorageClass.deinit();

  return swift_deallocClassInstance();
}

uint64_t Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v11);
    *(v4 + v8) = v10;
  }

  return closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(v10, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            closure #1 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          }

          else if (result == 2)
          {
            closure #2 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
          }
        }

        else if (result == 3)
        {
          closure #3 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        }

        else
        {
          if (result != 4)
          {
            v11 = MEMORY[0x277D217D8];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid;
LABEL_17:
            closure #5 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(v12, v13, v14, v15, v16, v11);
            goto LABEL_5;
          }

          closure #4 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        }
      }

      else if (result > 9)
      {
        switch(result)
        {
          case 10:
            closure #9 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
            break;
          case 11:
            closure #10 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
            break;
          case 12:
            closure #11 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 6:
            closure #6 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
            break;
          case 8:
            closure #7 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
            break;
          case 9:
            v11 = MEMORY[0x277D217D0];
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName;
            goto LABEL_17;
          default:
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_Goal(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal, type metadata accessor for Apple_Workout_Core_Goal, &protocol conformance descriptor for Apple_Workout_Core_Goal);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_TargetZone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_TargetZone and conformance Apple_Workout_Core_TargetZone, type metadata accessor for Apple_Workout_Core_TargetZone, &protocol conformance descriptor for Apple_Workout_Core_TargetZone);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_Activity(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone, &protocol conformance descriptor for Apple_Workout_Core_HeartRateTargetZone);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone, &protocol conformance descriptor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #10 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone, &protocol conformance descriptor for Apple_Workout_Core_HeartRateTargetZone);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #11 in closure #1 in Apple_Workout_Core_WorkoutStep.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone, &protocol conformance descriptor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

void Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    UnknownStorage.traverse<A>(visitor:)();
  }
}

void closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (lazy protocol witness table accessor for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType(), dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    closure #1 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
    if (!v4)
    {
      v9 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
      swift_beginAccess();
      if (*(*(a1 + v9) + 16))
      {
        type metadata accessor for Apple_Workout_Core_TargetZone(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_TargetZone and conformance Apple_Workout_Core_TargetZone, type metadata accessor for Apple_Workout_Core_TargetZone, &protocol conformance descriptor for Apple_Workout_Core_TargetZone);

        dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
      }

      closure #2 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
      swift_beginAccess();

      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();

      closure #3 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
      closure #4 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
      closure #5 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
      closure #6 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
      closure #7 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
      closure #8 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(a1, a2, a3, a4);
    }
  }
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_Goal);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal, type metadata accessor for Apple_Workout_Core_Goal, &protocol conformance descriptor for Apple_Workout_Core_Goal);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_Goal);
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_Activity);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_Activity);
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone, &protocol conformance descriptor for Apple_Workout_Core_HeartRateTargetZone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone, &protocol conformance descriptor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
}

void closure #5 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName;
  swift_beginAccess();
  if (*(v4 + 8))
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }
}

void closure #6 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  if ((*(v4 + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }
}

uint64_t closure #7 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone, &protocol conformance descriptor for Apple_Workout_Core_HeartRateTargetZone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
}

uint64_t closure #8 in closure #1 in Apple_Workout_Core_WorkoutStep.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone, &protocol conformance descriptor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
}

BOOL closure #1 in static Apple_Workout_Core_WorkoutStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v183 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v169 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMR);
  v9 = MEMORY[0x28223BE20](v180, v8);
  v11 = &v169 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v179 = &v169 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v172 = &v169 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v174 = &v169 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v177 = &v169 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v182 = &v169 - v25;
  v26 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v27 = *(v26 - 8);
  v187 = v26;
  v188 = v27;
  MEMORY[0x28223BE20](v26, v28);
  v178 = (&v169 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMR);
  v31 = MEMORY[0x28223BE20](v186, v30);
  v175 = &v169 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v185 = &v169 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v37 = MEMORY[0x28223BE20](v35 - 8, v36);
  v173 = &v169 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v176 = &v169 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v181 = (&v169 - v44);
  MEMORY[0x28223BE20](v43, v45);
  v194 = &v169 - v46;
  v47 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v191 = *(v47 - 8);
  v192 = v47;
  MEMORY[0x28223BE20](v47, v48);
  v184 = &v169 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
  MEMORY[0x28223BE20](v190, v50);
  v193 = &v169 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v54 = MEMORY[0x28223BE20](v52 - 8, v53);
  v189 = &v169 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v56);
  v196 = &v169 - v57;
  v58 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v198 = *(v58 - 8);
  v199 = v58;
  MEMORY[0x28223BE20](v58, v59);
  v195 = &v169 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSg_ADtMR);
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v169 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v67 = MEMORY[0x28223BE20](v65 - 8, v66);
  v197 = (&v169 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v67, v69);
  v71 = &v169 - v70;
  swift_beginAccess();
  v72 = *(a1 + 16);
  swift_beginAccess();
  v73 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v72 == v73)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (v73 > 1)
  {
    if (v73 == 2)
    {
      if (v72 != 2)
      {
        return 0;
      }
    }

    else if (v72 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (!v73)
    {
      if (!v72)
      {
        goto LABEL_7;
      }

      return 0;
    }

    if (v72 != 1)
    {
      return 0;
    }
  }

LABEL_7:
  v170 = v7;
  v171 = v4;
  v169 = v11;
  v74 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  v75 = a1 + v74;
  v76 = a2;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v75, v71, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v77 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  v78 = *(v61 + 48);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v71, v64, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a2 + v77, &v64[v78], &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v79 = v199;
  v80 = *(v198 + 48);
  if (v80(v64, 1, v199) == 1)
  {

    outlined destroy of Apple_Workout_Core_Goal?(v71, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    if (v80(&v64[v78], 1, v79) == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v64, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v81 = v197;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v64, v197, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  if (v80(&v64[v78], 1, v79) == 1)
  {

    outlined destroy of Apple_Workout_Core_Goal?(v71, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v81, type metadata accessor for Apple_Workout_Core_Goal);
LABEL_15:
    outlined destroy of Apple_Workout_Core_Goal?(v64, &_s11WorkoutCore06Apple_a1_B5_GoalVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSg_ADtMR);
LABEL_25:

    return 0;
  }

  v82 = v195;
  outlined init with take of Apple_Workout_Core_Goal(&v64[v78], v195, type metadata accessor for Apple_Workout_Core_Goal);

  v83 = specialized static Apple_Workout_Core_Goal.== infix(_:_:)(v81, v82);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v82, type metadata accessor for Apple_Workout_Core_Goal);
  outlined destroy of Apple_Workout_Core_Goal?(v71, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v81, type metadata accessor for Apple_Workout_Core_Goal);
  outlined destroy of Apple_Workout_Core_Goal?(v64, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  if ((v83 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  v84 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  v85 = *(a1 + v84);
  v86 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  v87 = *(v76 + v86);

  v88 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C11_TargetZoneV_Tt1g5(v85, v87);

  if ((v88 & 1) == 0)
  {
    goto LABEL_25;
  }

  v89 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  v90 = a1;
  v91 = v196;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v89, v196, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v92 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  v93 = *(v190 + 48);
  v94 = v193;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v91, v193, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v76 + v92, v94 + v93, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v95 = v192;
  v96 = *(v191 + 48);
  if (v96(v94, 1, v192) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v91, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    v97 = v96(v94 + v93, 1, v95);
    v98 = v194;
    if (v97 == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v94, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      goto LABEL_31;
    }

LABEL_29:
    v102 = &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd;
    v103 = &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR;
LABEL_40:
    v118 = v94;
LABEL_41:
    outlined destroy of Apple_Workout_Core_Goal?(v118, v102, v103);
    goto LABEL_25;
  }

  v100 = v189;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v94, v189, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v101 = v96(v94 + v93, 1, v95);
  v98 = v194;
  if (v101 == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v196, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v100, type metadata accessor for Apple_Workout_Core_Activity);
    goto LABEL_29;
  }

  v104 = v94 + v93;
  v105 = v184;
  outlined init with take of Apple_Workout_Core_Goal(v104, v184, type metadata accessor for Apple_Workout_Core_Activity);
  v106 = static Apple_Workout_Core_Activity.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_WorkoutStep(v105, type metadata accessor for Apple_Workout_Core_Activity);
  outlined destroy of Apple_Workout_Core_Goal?(v196, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v100, type metadata accessor for Apple_Workout_Core_Activity);
  outlined destroy of Apple_Workout_Core_Goal?(v94, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if ((v106 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_31:
  v107 = (v90 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v108 = *v107;
  v109 = v107[1];
  v110 = (v76 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  if ((v108 != *v110 || v109 != v110[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  v111 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v90 + v111, v98, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v112 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  v94 = v185;
  v113 = *(v186 + 48);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v98, v185, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v76 + v112, v94 + v113, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v114 = v187;
  v115 = v188 + 48;
  v116 = *(v188 + 48);
  if (v116(v94, 1, v187) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v98, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    if (v116(v94 + v113, 1, v114) == 1)
    {
      v188 = v115;
      outlined destroy of Apple_Workout_Core_Goal?(v94, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v117 = v181;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v94, v181, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if (v116(v94 + v113, 1, v114) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v98, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v117, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
LABEL_39:
    v102 = &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMd;
    v103 = &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMR;
    goto LABEL_40;
  }

  v188 = v115;
  v119 = v94 + v113;
  v120 = v178;
  outlined init with take of Apple_Workout_Core_Goal(v119, v178, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v121 = specialized static Apple_Workout_Core_HeartRateTargetZone.== infix(_:_:)(v117, v120);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v120, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v98, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v117, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v94, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if ((v121 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_43:
  v122 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  v123 = v182;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v90 + v122, v182, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v124 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  v125 = v179;
  v126 = *(v180 + 48);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v123, v179, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v127 = v76 + v124;
  v128 = v125;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v127, v125 + v126, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v129 = v183 + 48;
  v130 = *(v183 + 48);
  v131 = v171;
  if (v130(v128, 1, v171) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v123, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    if (v130(v128 + v126, 1, v131) == 1)
    {
      v199 = v116;
      v183 = v129;
      outlined destroy of Apple_Workout_Core_Goal?(v128, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  v132 = v177;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v128, v177, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  if (v130(v128 + v126, 1, v131) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v182, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v132, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
LABEL_48:
    v102 = &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMd;
    v103 = &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMR;
    v118 = v128;
    goto LABEL_41;
  }

  v199 = v116;
  v183 = v129;
  v133 = v128 + v126;
  v134 = v170;
  outlined init with take of Apple_Workout_Core_Goal(v133, v170, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v135 = specialized static Apple_Workout_Core_PowerZonesAlertTargetZone.== infix(_:_:)(v132, v134);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v134, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v182, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v132, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v128, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  if ((v135 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_50:
  v136 = (v90 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  v137 = *v136;
  v138 = v136[1];
  v139 = (v76 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  v140 = v139[1];
  if (v138)
  {
    if (!v140 || (v137 != *v139 || v138 != v140) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v140)
  {
    goto LABEL_25;
  }

  v141 = v90 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  v142 = *v141;
  v143 = *(v141 + 4);
  v144 = v76 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  if (v143)
  {
    if ((*(v144 + 4) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if ((*(v144 + 4) & 1) != 0 || v142 != *v144)
  {
    goto LABEL_25;
  }

  v145 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  v146 = v176;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v90 + v145, v176, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v147 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  v148 = *(v186 + 48);
  v149 = v175;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v146, v175, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v150 = v76 + v147;
  v151 = v148;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v150, v149 + v148, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v152 = v187;
  v153 = v199;
  if (v199(v149, 1, v187) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v146, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    if (v153(v149 + v151, 1, v152) == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v149, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
      goto LABEL_69;
    }

    goto LABEL_67;
  }

  v154 = v173;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v149, v173, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if (v153(v149 + v151, 1, v152) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v176, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v154, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
LABEL_67:
    v102 = &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMd;
    v103 = &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSg_ADtMR;
    v118 = v149;
    goto LABEL_41;
  }

  v155 = v154;
  v156 = v178;
  outlined init with take of Apple_Workout_Core_Goal(v149 + v151, v178, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v157 = specialized static Apple_Workout_Core_HeartRateTargetZone.== infix(_:_:)(v155, v156);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v156, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v176, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v155, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v149, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  if ((v157 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_69:
  v158 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  v159 = v174;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v90 + v158, v174, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v160 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  v161 = *(v180 + 48);
  v162 = v159;
  v163 = v169;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v162, v169, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v76 + v160, v163 + v161, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v164 = v171;
  if (v130(v163, 1, v171) == 1)
  {

    outlined destroy of Apple_Workout_Core_Goal?(v174, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    if (v130(v163 + v161, 1, v164) == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v163, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
      return 1;
    }

LABEL_75:
    outlined destroy of Apple_Workout_Core_Goal?(v163, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSg_ADtMR);
    return 0;
  }

  v165 = v172;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v163, v172, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  if (v130(v163 + v161, 1, v164) == 1)
  {

    outlined destroy of Apple_Workout_Core_Goal?(v174, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v165, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    goto LABEL_75;
  }

  v166 = v163 + v161;
  v167 = v170;
  outlined init with take of Apple_Workout_Core_Goal(v166, v170, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v168 = specialized static Apple_Workout_Core_PowerZonesAlertTargetZone.== infix(_:_:)(v165, v167);

  outlined destroy of Apple_Workout_Core_WorkoutStep(v167, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v174, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v165, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  outlined destroy of Apple_Workout_Core_Goal?(v163, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return (v168 & 1) != 0;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutStep@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WorkoutStep@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WorkoutStep(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStep);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutStep(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStep);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStep and conformance Apple_Workout_Core_WorkoutStep, type metadata accessor for Apple_Workout_Core_WorkoutStep, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStep);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_TargetZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_14;
        }

        if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_TargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 16) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
    {
      if (!*(v3 + 24) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
      {
        if (*(v3 + 32) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
        {
          type metadata accessor for Apple_Workout_Core_TargetZone(0);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_TargetZone@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_TargetZone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_TargetZone(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_TargetZone(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_TargetZone and conformance Apple_Workout_Core_TargetZone, type metadata accessor for Apple_Workout_Core_TargetZone, &protocol conformance descriptor for Apple_Workout_Core_TargetZone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_TargetZone(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_TargetZone and conformance Apple_Workout_Core_TargetZone, type metadata accessor for Apple_Workout_Core_TargetZone, &protocol conformance descriptor for Apple_Workout_Core_TargetZone);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_TargetZone(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_TargetZone and conformance Apple_Workout_Core_TargetZone, type metadata accessor for Apple_Workout_Core_TargetZone, &protocol conformance descriptor for Apple_Workout_Core_TargetZone);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          goto LABEL_14;
        }

        if (result == 4)
        {
          type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
          dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_5;
        }

        if (result == 2)
        {
LABEL_14:
          type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #3 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_HeartRateTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_HeartRateTargetZone@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  result = UnknownStorage.init()();
  v5 = a1[7];
  v6 = a2 + a1[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + a1[8];
  *v8 = 0;
  *(v8 + 4) = 1;
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_HeartRateTargetZone(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone, &protocol conformance descriptor for Apple_Workout_Core_HeartRateTargetZone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_HeartRateTargetZone(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone, &protocol conformance descriptor for Apple_Workout_Core_HeartRateTargetZone);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HeartRateTargetZone(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateTargetZone and conformance Apple_Workout_Core_HeartRateTargetZone, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone, &protocol conformance descriptor for Apple_Workout_Core_HeartRateTargetZone);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        closure #3 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 2:
        closure #2 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
      case 1:
        closure #1 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v46 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, v15, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v15, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v15, v24, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    outlined init with take of Apple_Workout_Core_Goal(v24, v21, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_Core_WorkoutStep(v21, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
      v36 = v51;
    }

    else
    {
      outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
      v38 = v46;
      outlined init with take of Apple_Workout_Core_Goal(v21, v46, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
      outlined init with take of Apple_Workout_Core_Goal(v38, v31, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneTarget and conformance Apple_Workout_Core_PowerZoneTarget, type metadata accessor for Apple_Workout_Core_PowerZoneTarget, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneTarget);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v31, v39, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
    return outlined destroy of Apple_Workout_Core_Goal?(v39, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
  }

  else
  {
    v42 = v47;
    outlined init with take of Apple_Workout_Core_Goal(v39, v47, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneTargetVSgMR);
    v43 = v45;
    outlined destroy of Apple_Workout_Core_Goal?(v45, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v42, v43, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #2 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, v15, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v15, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v15, v24, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    outlined init with take of Apple_Workout_Core_Goal(v24, v21, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_Goal(v21, v47, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
      outlined init with take of Apple_Workout_Core_Goal(v38, v31, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_WorkoutStep(v21, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneAutomatic and conformance Apple_Workout_Core_PowerZoneAutomatic, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneAutomatic);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v31, v39, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
    return outlined destroy of Apple_Workout_Core_Goal?(v39, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_Goal(v39, v46, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMd, &_s11WorkoutCore06Apple_a1_B19_PowerZoneAutomaticVSgMR);
    v43 = v45;
    outlined destroy of Apple_Workout_Core_Goal?(v45, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v42, v43, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #3 in Apple_Workout_Core_PowerZonesAlertTargetZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, v15, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v15, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v15, v24, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    outlined init with take of Apple_Workout_Core_Goal(v24, v21, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_Goal(v21, v47, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
      outlined init with take of Apple_Workout_Core_Goal(v38, v31, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_WorkoutStep(v21, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneCustom and conformance Apple_Workout_Core_PowerZoneCustom, type metadata accessor for Apple_Workout_Core_PowerZoneCustom, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneCustom);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v31, v39, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
    return outlined destroy of Apple_Workout_Core_Goal?(v39, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_Goal(v39, v46, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Goal?(v31, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMd, &_s11WorkoutCore06Apple_a1_B16_PowerZoneCustomVSgMR);
    v43 = v45;
    outlined destroy of Apple_Workout_Core_Goal?(v45, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v42, v43, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v3, &v15 - v10, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_8;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(v3, a1, a2, a3);
    }

    else
    {
      closure #3 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(v3, a1, a2, a3);
    }
  }

  else
  {
    closure #1 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_Core_WorkoutStep(v11, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  if (!v4)
  {
LABEL_8:
    type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneTarget and conformance Apple_Workout_Core_PowerZoneTarget, type metadata accessor for Apple_Workout_Core_PowerZoneTarget, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneTarget);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
  }

  result = outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v12, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneAutomatic and conformance Apple_Workout_Core_PowerZoneAutomatic, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneAutomatic);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  }

  result = outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_PowerZonesAlertTargetZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v12, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneCustom and conformance Apple_Workout_Core_PowerZoneCustom, type metadata accessor for Apple_Workout_Core_PowerZoneCustom, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneCustom);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
  }

  result = outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PowerZonesAlertTargetZone@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_HeartRateTargetZone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_HeartRateTargetZone(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PowerZonesAlertTargetZone(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone, &protocol conformance descriptor for Apple_Workout_Core_PowerZonesAlertTargetZone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PowerZonesAlertTargetZone(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone, &protocol conformance descriptor for Apple_Workout_Core_PowerZonesAlertTargetZone);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PowerZonesAlertTargetZone(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZonesAlertTargetZone and conformance Apple_Workout_Core_PowerZonesAlertTargetZone, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone, &protocol conformance descriptor for Apple_Workout_Core_PowerZonesAlertTargetZone);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_PowerZoneTarget.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
      }

      else if (result == 2)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_PowerZoneTarget.traverse<A>(visitor:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v5 = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType(), v5 = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return v5;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PowerZoneTarget@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PowerZoneTarget(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneTarget and conformance Apple_Workout_Core_PowerZoneTarget, type metadata accessor for Apple_Workout_Core_PowerZoneTarget, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneTarget);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PowerZoneTarget(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneTarget and conformance Apple_Workout_Core_PowerZoneTarget, type metadata accessor for Apple_Workout_Core_PowerZoneTarget, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneTarget);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PowerZoneTarget(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneTarget and conformance Apple_Workout_Core_PowerZoneTarget, type metadata accessor for Apple_Workout_Core_PowerZoneTarget, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneTarget);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_PowerZoneTarget(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || !specialized == infix<A>(_:_:)(*(a1 + 8), *(a1 + 16), *(a2 + 8)))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_PowerZoneAutomatic.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_CyclingPowerZone and conformance Apple_Workout_Core_CyclingPowerZone, type metadata accessor for Apple_Workout_Core_CyclingPowerZone, &protocol conformance descriptor for Apple_Workout_Core_CyclingPowerZone);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_PowerZoneAutomatic.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)(), !v4))
  {
    if (!*(*(v3 + 8) + 16) || (type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_CyclingPowerZone and conformance Apple_Workout_Core_CyclingPowerZone, type metadata accessor for Apple_Workout_Core_CyclingPowerZone, &protocol conformance descriptor for Apple_Workout_Core_CyclingPowerZone), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PowerZoneAutomatic@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = MEMORY[0x277D84F90];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PowerZoneAutomatic(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneAutomatic and conformance Apple_Workout_Core_PowerZoneAutomatic, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneAutomatic);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PowerZoneAutomatic(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneAutomatic and conformance Apple_Workout_Core_PowerZoneAutomatic, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneAutomatic);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PowerZoneAutomatic(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneAutomatic and conformance Apple_Workout_Core_PowerZoneAutomatic, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneAutomatic);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_PowerZoneAutomatic(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C17_CyclingPowerZoneV_Tt1g5(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #3 in Apple_Workout_Core_CyclingPowerZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  type metadata accessor for Apple_Workout_Core_Zone(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone, &protocol conformance descriptor for Apple_Workout_Core_Zone);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #1 in Apple_Workout_Core_CyclingPowerZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v14 + 28), v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Goal(v8, v13, type metadata accessor for Apple_Workout_Core_Zone);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_Zone and conformance Apple_Workout_Core_Zone, type metadata accessor for Apple_Workout_Core_Zone, &protocol conformance descriptor for Apple_Workout_Core_Zone);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_WorkoutStep(v13, type metadata accessor for Apple_Workout_Core_Zone);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_CyclingPowerZone@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_CyclingPowerZone(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_CyclingPowerZone and conformance Apple_Workout_Core_CyclingPowerZone, type metadata accessor for Apple_Workout_Core_CyclingPowerZone, &protocol conformance descriptor for Apple_Workout_Core_CyclingPowerZone);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_CyclingPowerZone(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_CyclingPowerZone and conformance Apple_Workout_Core_CyclingPowerZone, type metadata accessor for Apple_Workout_Core_CyclingPowerZone, &protocol conformance descriptor for Apple_Workout_Core_CyclingPowerZone);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_CyclingPowerZone(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_CyclingPowerZone and conformance Apple_Workout_Core_CyclingPowerZone, type metadata accessor for Apple_Workout_Core_CyclingPowerZone, &protocol conformance descriptor for Apple_Workout_Core_CyclingPowerZone);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_StepType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t Apple_Workout_Core_CyclingPowerZone.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      a4(a1, v7, a2, a3);
    }

    else if (result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_PowerZoneCustom.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType();
  return dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
}

uint64_t Apple_Workout_Core_CyclingPowerZone.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(double *, uint64_t, uint64_t, uint64_t), void (*a5)(void))
{
  if (!*v5 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v6))
  {
    if (!*(v5 + 8) || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v6))
    {
      result = a4(v5, a1, a2, a3);
      if (!v6)
      {
        a5(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_PowerZoneCustom.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  if ((*(a1 + *(result + 28) + 9) & 1) == 0)
  {
    lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  return result;
}

Swift::Int Apple_Workout_Core_IntervalsMetricsPublisher.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PowerZoneCustom@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 28);
  *v5 = 0;
  *(v5 + 4) = 256;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_PowerZoneTarget@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_PowerZoneTarget(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PowerZoneCustom(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneCustom and conformance Apple_Workout_Core_PowerZoneCustom, type metadata accessor for Apple_Workout_Core_PowerZoneCustom, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneCustom);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_StepType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PowerZoneCustom(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneCustom and conformance Apple_Workout_Core_PowerZoneCustom, type metadata accessor for Apple_Workout_Core_PowerZoneCustom, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneCustom);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PowerZoneCustom(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerZoneCustom and conformance Apple_Workout_Core_PowerZoneCustom, type metadata accessor for Apple_Workout_Core_PowerZoneCustom, &protocol conformance descriptor for Apple_Workout_Core_PowerZoneCustom);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_WorkoutStep.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static Apple_Workout_Core_WorkoutStep.== infix(_:_:)(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_PowerZonesAlertTargetZone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSg_AFtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSg_AFtMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1, &v23 - v16, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a2, &v17[v18], &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v17, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
LABEL_9:
      type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v17, v12, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
LABEL_6:
    outlined destroy of Apple_Workout_Core_Goal?(v17, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSg_AFtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_Core_Goal(&v17[v18], v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  v21 = specialized static Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  outlined destroy of Apple_Workout_Core_Goal?(v17, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_PowerZoneTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v3 > 3)
    {
      if (v3 > 5)
      {
        if (v3 == 6)
        {
          if (v2 != 6)
          {
            return 0;
          }
        }

        else if (v2 != 7)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }
    }

    else if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v43 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  MEMORY[0x28223BE20](v42, v7);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v41 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeO_AEtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeO_AEtMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v29 = &v41 - v28;
  v30 = *(v27 + 56);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, &v41 - v28, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a2, &v29[v30], type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_Core_WorkoutStep(v29, v24, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    if (swift_getEnumCaseMultiPayload())
    {
      v34 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget;
      v35 = v24;
LABEL_14:
      outlined destroy of Apple_Workout_Core_WorkoutStep(v35, v34);
      outlined destroy of Apple_Workout_Core_Goal?(v29, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeO_AEtMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeO_AEtMR);
LABEL_16:
      v33 = 0;
      return v33 & 1;
    }

    outlined init with take of Apple_Workout_Core_Goal(&v29[v30], v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    v33 = specialized static Apple_Workout_Core_PowerZoneTarget.== infix(_:_:)(v24, v12);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_PowerZoneTarget);
    v38 = v24;
    v39 = type metadata accessor for Apple_Workout_Core_PowerZoneTarget;
LABEL_18:
    outlined destroy of Apple_Workout_Core_WorkoutStep(v38, v39);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v29, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    return v33 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    outlined init with copy of Apple_Workout_Core_WorkoutStep(v29, v17, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v34 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom;
      v35 = v17;
      goto LABEL_14;
    }

    v36 = &v29[v30];
    v37 = v43;
    outlined init with take of Apple_Workout_Core_Goal(v36, v43, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    v33 = specialized static Apple_Workout_Core_PowerZoneCustom.== infix(_:_:)(v17, v37);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v37, type metadata accessor for Apple_Workout_Core_PowerZoneCustom);
    v38 = v17;
    v39 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom;
    goto LABEL_18;
  }

  outlined init with copy of Apple_Workout_Core_WorkoutStep(v29, v21, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic;
    v35 = v21;
    goto LABEL_14;
  }

  v32 = v44;
  outlined init with take of Apple_Workout_Core_Goal(&v29[v30], v44, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  if (*v21 != *v32 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C17_CyclingPowerZoneV_Tt1g5(*(v21 + 1), *(v32 + 8)) & 1) == 0 || (type metadata accessor for UnknownStorage(), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]), (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0))
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v32, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v21, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v29, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
    goto LABEL_16;
  }

  outlined destroy of Apple_Workout_Core_WorkoutStep(v32, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v21, type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v29, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type);
  v33 = 1;
  return v33 & 1;
}

uint64_t specialized static Apple_Workout_Core_IntervalsMetricsPublisher.== infix(_:_:)(double *a1, double *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v83 = &v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v77 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMR);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v84 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v77 - v25;
  if (*a1 != *a2)
  {
    goto LABEL_20;
  }

  v78 = v9;
  v79 = v16;
  v80 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v27 = *(v80 + 60);
  v28 = *(v20 + 48);
  v82 = a1;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + v27, v26, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v81 = a2;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a2 + v27, &v26[v28], &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v29 = *(v5 + 48);
  if (v29(v26, 1, v4) == 1)
  {
    if (v29(&v26[v28], 1, v4) == 1)
    {
      v30 = v4;
      outlined destroy of Apple_Workout_Core_Goal?(v26, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v26, v19, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  if (v29(&v26[v28], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v19, type metadata accessor for Apple_Workout_Core_WorkoutStep);
LABEL_7:
    v31 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMd;
    v32 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMR;
LABEL_8:
    v33 = v26;
LABEL_19:
    outlined destroy of Apple_Workout_Core_Goal?(v33, v31, v32);
    goto LABEL_20;
  }

  v34 = &v26[v28];
  v35 = v83;
  outlined init with take of Apple_Workout_Core_Goal(v34, v83, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  v30 = v4;
  v36 = *(v4 + 20);
  v37 = *&v19[v36];
  v38 = *(v35 + v36);
  if (v37 != v38)
  {

    v39 = closure #1 in static Apple_Workout_Core_WorkoutStep.== infix(_:_:)(v37, v38);

    if (!v39)
    {
      outlined destroy of Apple_Workout_Core_WorkoutStep(v35, type metadata accessor for Apple_Workout_Core_WorkoutStep);
      outlined destroy of Apple_Workout_Core_WorkoutStep(v19, type metadata accessor for Apple_Workout_Core_WorkoutStep);
      v31 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd;
      v32 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR;
      goto LABEL_8;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_WorkoutStep(v35, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v19, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  outlined destroy of Apple_Workout_Core_Goal?(v26, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  if ((v40 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v41 = v80;
  v42 = *(v80 + 64);
  v43 = *(v20 + 48);
  v44 = v84;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v82 + v42, v84, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v45 = v81;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v81 + v42, v44 + v43, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v46 = v30;
  if (v29(v44, 1, v30) != 1)
  {
    v47 = v41;
    v48 = v79;
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v44, v79, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    if (v29((v44 + v43), 1, v46) != 1)
    {
      v51 = v78;
      outlined init with take of Apple_Workout_Core_Goal(v44 + v43, v78, type metadata accessor for Apple_Workout_Core_WorkoutStep);
      v52 = *(v46 + 20);
      v53 = *(v48 + v52);
      v54 = *(v51 + v52);
      if (v53 == v54 || (, , v55 = closure #1 in static Apple_Workout_Core_WorkoutStep.== infix(_:_:)(v53, v54), , , v55))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v56 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_WorkoutStep(v51, type metadata accessor for Apple_Workout_Core_WorkoutStep);
        outlined destroy of Apple_Workout_Core_WorkoutStep(v48, type metadata accessor for Apple_Workout_Core_WorkoutStep);
        outlined destroy of Apple_Workout_Core_Goal?(v44, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
        v41 = v47;
        if ((v56 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

      outlined destroy of Apple_Workout_Core_WorkoutStep(v51, type metadata accessor for Apple_Workout_Core_WorkoutStep);
      outlined destroy of Apple_Workout_Core_WorkoutStep(v48, type metadata accessor for Apple_Workout_Core_WorkoutStep);
      v31 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd;
      v32 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR;
      goto LABEL_18;
    }

    outlined destroy of Apple_Workout_Core_WorkoutStep(v48, type metadata accessor for Apple_Workout_Core_WorkoutStep);
LABEL_17:
    v31 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMd;
    v32 = &_s11WorkoutCore06Apple_a1_b1_A4StepVSg_ADtMR;
LABEL_18:
    v33 = v44;
    goto LABEL_19;
  }

  if (v29((v44 + v43), 1, v30) != 1)
  {
    goto LABEL_17;
  }

  outlined destroy of Apple_Workout_Core_Goal?(v44, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
LABEL_25:
  if (v82[1] != v45[1] || v82[2] != v45[2] || v82[3] != v45[3] || v82[4] != v45[4] || v82[5] != v45[5] || v82[6] != v45[6] || v82[7] != v45[7] || v82[8] != v45[8])
  {
    goto LABEL_20;
  }

  v57 = v41[17];
  v58 = (v82 + v57);
  v59 = *(v82 + v57 + 8);
  v60 = (v45 + v57);
  v61 = *(v45 + v57 + 8);
  if (v59)
  {
    if (!v61)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v58 != *v60)
    {
      LOBYTE(v61) = 1;
    }

    if (v61)
    {
      goto LABEL_20;
    }
  }

  v62 = v41[18];
  v63 = (v82 + v62);
  v64 = *(v82 + v62 + 8);
  v65 = (v45 + v62);
  v66 = *(v45 + v62 + 8);
  if (v64)
  {
    if (!v66)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v63 != *v65)
    {
      LOBYTE(v66) = 1;
    }

    if (v66)
    {
      goto LABEL_20;
    }
  }

  v67 = v41[19];
  v68 = (v82 + v67);
  v69 = *(v82 + v67 + 4);
  v70 = (v45 + v67);
  v71 = *(v45 + v67 + 4);
  if (v69)
  {
    if (!v71)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (*v68 != *v70)
    {
      LOBYTE(v71) = 1;
    }

    if (v71)
    {
      goto LABEL_20;
    }
  }

  if (*(v82 + 18) == *(v45 + 18))
  {
    v72 = v41[20];
    v73 = (v82 + v72);
    v74 = *(v82 + v72 + 8);
    v75 = (v45 + v72);
    v76 = *(v45 + v72 + 8);
    if (v74)
    {
      if (v76)
      {
LABEL_60:
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v49 & 1;
      }
    }

    else
    {
      if (*v73 != *v75)
      {
        LOBYTE(v76) = 1;
      }

      if ((v76 & 1) == 0)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_20:
  v49 = 0;
  return v49 & 1;
}

uint64_t specialized static Apple_Workout_Core_HeartRateTargetZone.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v4 != v5)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v5 != 1)
  {
    if (v4 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

LABEL_11:
  v6 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v7 = v6[6];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[7];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v6[8];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 4);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 4);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized static Apple_Workout_Core_CyclingPowerZone.== infix(_:_:)(double *a1, double *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v26 - v15;
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    goto LABEL_9;
  }

  v17 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  v18 = a1;
  v19 = a2;
  v26[0] = v17;
  v26[1] = v18;
  v20 = *(v17 + 28);
  v21 = *(v13 + 48);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v18 + v20, v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v19 + v20, &v16[v21], &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
LABEL_12:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v23 & 1;
    }

    goto LABEL_8;
  }

  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16, v12, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_Zone);
LABEL_8:
    outlined destroy of Apple_Workout_Core_Goal?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
    goto LABEL_9;
  }

  outlined init with take of Apple_Workout_Core_Goal(&v16[v21], v8, type metadata accessor for Apple_Workout_Core_Zone);
  v25 = specialized static Apple_Workout_Core_Zone.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v8, type metadata accessor for Apple_Workout_Core_Zone);
  outlined destroy of Apple_Workout_Core_WorkoutStep(v12, type metadata accessor for Apple_Workout_Core_Zone);
  outlined destroy of Apple_Workout_Core_Goal?(v16, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  if (v25)
  {
    goto LABEL_12;
  }

LABEL_9:
  v23 = 0;
  return v23 & 1;
}

uint64_t specialized static Apple_Workout_Core_PowerZoneCustom.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = *(type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0) + 28);
  v5 = a1 + v4;
  v6 = *(a1 + v4 + 9);
  v7 = (a2 + v4);
  v8 = *(a2 + v4 + 9);
  if ((v6 & 1) == 0)
  {
    if ((v8 & 1) != 0 || !specialized == infix<A>(_:_:)(*v5, v5[8] & 1, *v7))
    {
      return 0;
    }

LABEL_8:
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v8)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t specialized static Apple_Workout_Core_TargetZone.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 3)
    {
      if (v3 > 5)
      {
        if (v3 == 6)
        {
          if (v2 != 6)
          {
            return 0;
          }
        }

        else if (v2 != 7)
        {
          return 0;
        }
      }

      else if (v3 == 4)
      {
        if (v2 != 4)
        {
          return 0;
        }
      }

      else if (v2 != 5)
      {
        return 0;
      }
    }

    else if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    type metadata accessor for Apple_Workout_Core_TargetZone(0);
    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_StepType] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void type metadata completion function for Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_WorkoutStep?, type metadata accessor for Apple_Workout_Core_WorkoutStep, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_WorkoutStep(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_TargetZone(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_HeartRateTargetZone(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Int32?, MEMORY[0x277D849A8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Apple_Workout_Core_PowerZonesAlertTargetZone(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type?, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_WorkoutStep?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_PowerZoneTarget(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Core_PowerZoneTarget(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_PowerZoneAutomatic(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for [Apple_Workout_Core_CyclingPowerZone], type metadata accessor for Apple_Workout_Core_CyclingPowerZone, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_CyclingPowerZone(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_Zone?, type metadata accessor for Apple_Workout_Core_Zone, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_137Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_138Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void type metadata completion function for Apple_Workout_Core_PowerZoneCustom(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    _sSdSgMaTm_0(319, &lazy cache variable for type metadata for Apple_Workout_Core_ZoneType?, &type metadata for Apple_Workout_Core_ZoneType);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void _sSdSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for Apple_Workout_Core_WorkoutStep._StorageClass(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_Goal?, type metadata accessor for Apple_Workout_Core_Goal, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_Activity?, type metadata accessor for Apple_Workout_Core_Activity, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_HeartRateTargetZone?, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Apple_Workout_Core_WorkoutStep?(319, &lazy cache variable for type metadata for Apple_Workout_Core_PowerZonesAlertTargetZone?, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_Goal?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PowerZone.init(displaySpan:configuration:)(uint64_t result, uint64_t a2, double a3, double a4)
{
  v5 = floor(a3);
  v6 = floor(a4);
  if (v5 > v6)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v5;
    *(v4 + 24) = v6;
    *(v4 + 32) = result;
    *(v4 + 40) = a2;
    return v4;
  }

  return result;
}

uint64_t PowerZone.init(from:)(void *a1)
{
  outlined init with copy of Decoder(a1, v5);
  Zone.init(from:)(v5);
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t PowerZone.__allocating_init(displaySpan:configuration:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  result = swift_allocObject();
  v9 = floor(a3);
  v10 = floor(a4);
  if (v9 > v10)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v9;
    *(result + 24) = v10;
    *(result + 32) = a1;
    *(result + 40) = a2;
  }

  return result;
}

uint64_t PowerZone.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  outlined init with copy of Decoder(a1, v5);
  Zone.init(from:)(v5);
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.getter()
{
  v1 = [v0 metadata];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v2, 0xD00000000000002FLL, 0x800000020B45B7B0);

  return v3;
}

double HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000038, 0x800000020B45B7E0, a1);

  return result;
}

double HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000038, 0x800000020B45B820, a1);

  return result;
}

uint64_t HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.getter()
{
  v1 = [v0 metadata];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v2, 0xD000000000000032, 0x800000020B45B860);

  return v3;
}

void HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.setter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();

    PropertyListEncoder.init()();
    type metadata accessor for CyclingPowerZonesConfiguration(0);
    lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration, type metadata accessor for CyclingPowerZonesConfiguration, &protocol conformance descriptor for CyclingPowerZonesConfiguration);
    v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v7 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD00000000000002FLL;
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = 0x800000020B462A70;
    *(inited + 48) = v5;
    *(inited + 56) = v7;
    outlined copy of Data._Representation(v5, v7);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v24 = closure #1 in HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.setter;
    v25 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v23 = &block_descriptor_3_4;
    v10 = _Block_copy(&aBlock);
    [v2 addMetadata:isa completion:v10];
    _Block_release(v10);

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.core);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136315138;

      v16 = CyclingPowerZonesConfiguration.description.getter();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &aBlock);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20AEA4000, v12, v13, "[CyclingPowerZones] Saved in workout metadata cycling configuration: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
      outlined consume of Data._Representation(v5, v7);
    }

    else
    {

      outlined consume of Data._Representation(v5, v7);
    }
  }

  else
  {
    v3 = MEMORY[0x20F2E6C00](0xD00000000000002FLL, 0x800000020B462A70);
    v24 = closure #2 in HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.setter;
    v25 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v23 = &block_descriptor_47;
    v4 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v4);
  }
}

void HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.setter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();

    PropertyListEncoder.init()();
    type metadata accessor for FunctionalThresholdPower(0);
    lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type FunctionalThresholdPower and conformance FunctionalThresholdPower, type metadata accessor for FunctionalThresholdPower, &protocol conformance descriptor for FunctionalThresholdPower);
    v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v7 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD00000000000002ELL;
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = 0x800000020B462AA0;
    *(inited + 48) = v5;
    *(inited + 56) = v7;
    outlined copy of Data._Representation(v5, v7);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v24 = closure #1 in HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.setter;
    v25 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v23 = &block_descriptor_9_5;
    v10 = _Block_copy(&aBlock);
    [v2 addMetadata:isa completion:v10];
    _Block_release(v10);

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.core);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136315138;

      v16 = FunctionalThresholdPower.description.getter();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &aBlock);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20AEA4000, v12, v13, "[CyclingPowerZones] Saved in workout metadata automatic FTP: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
      outlined consume of Data._Representation(v5, v7);
    }

    else
    {

      outlined consume of Data._Representation(v5, v7);
    }
  }

  else
  {
    v3 = MEMORY[0x20F2E6C00](0xD00000000000002ELL, 0x800000020B462AA0);
    v24 = closure #2 in HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.setter;
    v25 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v23 = &block_descriptor_6_4;
    v4 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v4);
  }
}

void HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, int a5)
{
  v211 = a5;
  v212 = a4;
  v213 = a1;
  v218 = a3;
  v7 = type metadata accessor for UUID();
  v215 = *(v7 - 8);
  v216 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v214 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v217 = (&v199 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v199 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v21 = MEMORY[0x28223BE20](v17, v20);
  v209 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21, v22);
  v219 = &v199 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v199 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v210 = &v199 - v31;
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v199 - v33;
  v35 = [v5 currentWorkoutActivity];
  if (v35)
  {
    v36 = v35;
    v208 = v5;
    outlined init with copy of Date?(a2, v16);
    v37 = v18[6];
    v38 = v37(v16, 1, v17);
    v220 = v36;
    if (v38 == 1)
    {
      v206 = v37;
      v207 = v18 + 6;
      _sSS_yptWOhTm_2(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static WOLog.core);
      v40 = v36;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock = v44;
        *v43 = 136315138;
        v45 = [v40 debugDescription];
        v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v205 = v18;
        v47 = v17;
        v48 = v46;
        v50 = v49;

        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &aBlock);
        v36 = v220;

        *(v43 + 4) = v51;
        v17 = v47;
        v18 = v205;
        _os_log_impl(&dword_20AEA4000, v41, v42, "[CyclingPowerZones] No lastProcessedEntryDate to write to activity metadata, current activity: %s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x20F2E9420](v44, -1, -1);
        MEMORY[0x20F2E9420](v43, -1, -1);
      }
    }

    else
    {
      v205 = v18[4];
      (v205)(v34, v16, v17);
      v56 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v34);
      if (v57 >> 60 == 15)
      {
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v58 = type metadata accessor for Logger();
        __swift_project_value_buffer(v58, static WOLog.core);
        v59 = v17;
        (v18[2])(v28, v34, v17);
        v60 = v220;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = v18;
          v64 = swift_slowAlloc();
          v220 = swift_slowAlloc();
          aBlock = v220;
          *v64 = 136315394;
          lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          LODWORD(v219) = v62;
          v65 = dispatch thunk of CustomStringConvertible.description.getter();
          v67 = v66;
          v218 = v61;
          v68 = v63[1];
          v68(v28, v59);
          v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, &aBlock);

          *(v64 + 4) = v69;
          *(v64 + 12) = 2080;
          v70 = [v60 debugDescription];
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &aBlock);

          *(v64 + 14) = v74;
          v75 = v218;
          _os_log_impl(&dword_20AEA4000, v218, v219, "[CyclingPowerZones] Failed to serialize lastProcessedEntryDate: %s, current activity: %s", v64, 0x16u);
          v76 = v220;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v76, -1, -1);
          MEMORY[0x20F2E9420](v64, -1, -1);

          v68(v34, v59);
        }

        else
        {

          v197 = v18[1];
          v197(v28, v59);
          v197(v34, v59);
        }

        return;
      }

      v77 = v57;
      v206 = v37;
      v207 = v18 + 6;
      v204 = v56;
      v78 = [v220 UUID];
      v79 = v214;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      isa = UUID._bridgeToObjectiveC()().super.isa;
      (*(v215 + 8))(v79, v216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000038;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B45B7E0;
      v81 = v204;
      *(inited + 48) = v204;
      *(inited + 56) = v77;
      outlined copy of Data?(v81, v77);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v200 = Dictionary._bridgeToObjectiveC()().super.isa;

      v82 = v18[2];
      v83 = v34;
      v201 = v34;
      v84 = v210;
      v82(v210, v83, v17);
      v85 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v86 = swift_allocObject();
      (v205)(v86 + v85, v84, v17);
      v36 = v220;
      *(v86 + ((v19 + v85 + 7) & 0xFFFFFFFFFFFFFFF8)) = v220;
      v225 = partial apply for closure #1 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v226 = v86;
      aBlock = MEMORY[0x277D85DD0];
      v222 = 1107296256;
      v223 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v224 = &block_descriptor_30_0;
      v87 = _Block_copy(&aBlock);
      v88 = v36;

      v89 = isa;
      v90 = v200;
      [v208 updateActivityWithUUID:isa addMedatata:v200 completion:v87];
      _Block_release(v87);

      outlined consume of Data?(v204, v77);
      (v18[1])(v201, v17);
    }

    v91 = v219;
    v92 = v217;
    outlined init with copy of Date?(v218, v217);
    if (v206(v92, 1, v17) == 1)
    {
      _sSS_yptWOhTm_2(v92, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v94 = v212;
      v93 = v213;
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      __swift_project_value_buffer(v95, static WOLog.core);
      v96 = v36;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        aBlock = v100;
        *v99 = 136315138;
        v101 = [v96 debugDescription];
        v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v104 = v103;

        v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &aBlock);

        *(v99 + 4) = v105;
        _os_log_impl(&dword_20AEA4000, v97, v98, "[CyclingPowerZones] No lastProcessedEventDate to write to activity metadata, current activity: %s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v100);
        MEMORY[0x20F2E9420](v100, -1, -1);
        MEMORY[0x20F2E9420](v99, -1, -1);
      }

      if (v211)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v118 = v18[4];
      v118(v91, v92, v17);
      v119 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v91);
      if (v120 >> 60 == 15)
      {
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v121 = type metadata accessor for Logger();
        __swift_project_value_buffer(v121, static WOLog.core);
        v122 = v209;
        (v18[2])(v209, v91, v17);
        v123 = v36;
        v124 = Logger.logObject.getter();
        v125 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v124, v125))
        {
          v126 = v17;
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          LODWORD(v218) = v125;
          v129 = v122;
          v220 = v128;
          aBlock = v128;
          *v127 = 136315394;
          lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v203 = v126;
          v130 = dispatch thunk of CustomStringConvertible.description.getter();
          v217 = v124;
          v132 = v131;
          v133 = v18[1];
          v133(v129, v126);
          v134 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v132, &aBlock);

          *(v127 + 4) = v134;
          *(v127 + 12) = 2080;
          v135 = [v123 debugDescription];
          v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v137 = v91;
          v139 = v138;

          v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v139, &aBlock);

          *(v127 + 14) = v140;
          v141 = v217;
          _os_log_impl(&dword_20AEA4000, v217, v218, "[CyclingPowerZones] Failed to serialize lastProcessedEventDate: %s, current activity: %s", v127, 0x16u);
          v142 = v220;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v142, -1, -1);
          MEMORY[0x20F2E9420](v127, -1, -1);

          v133(v137, v203);
        }

        else
        {

          v198 = v18[1];
          v198(v122, v17);
          v198(v91, v17);
        }

        return;
      }

      v143 = v119;
      v218 = v120;
      v144 = [v36 UUID];
      v203 = v17;
      v145 = v214;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v217 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v215 + 8))(v145, v216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v146 = swift_initStackObject();
      *(v146 + 16) = xmmword_20B423A90;
      *(v146 + 32) = 0xD000000000000038;
      *(v146 + 72) = MEMORY[0x277CC9318];
      *(v146 + 40) = 0x800000020B45B820;
      v207 = v143;
      v147 = v218;
      *(v146 + 48) = v143;
      *(v146 + 56) = v147;
      outlined copy of Data?(v143, v147);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v146);
      v148 = v91;
      swift_setDeallocating();
      _sSS_yptWOhTm_2(v146 + 32, &_sSS_yptMd, &_sSS_yptMR);
      v149 = v18;
      v150 = Dictionary._bridgeToObjectiveC()().super.isa;

      v151 = v210;
      v152 = v203;
      (v149[2])(v210, v148, v203);
      v153 = (*(v149 + 80) + 16) & ~*(v149 + 80);
      v154 = (v19 + v153 + 7) & 0xFFFFFFFFFFFFFFF8;
      v155 = swift_allocObject();
      v118(v155 + v153, v151, v152);
      v156 = v220;
      *(v155 + v154) = v220;
      v225 = partial apply for closure #2 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v226 = v155;
      aBlock = MEMORY[0x277D85DD0];
      v222 = 1107296256;
      v223 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v224 = &block_descriptor_24_3;
      v157 = _Block_copy(&aBlock);
      v158 = v156;

      v159 = v217;
      [v208 updateActivityWithUUID:v217 addMedatata:v150 completion:v157];
      _Block_release(v157);

      outlined consume of Data?(v207, v218);
      (v149[1])(v219, v152);
      v94 = v212;
      v93 = v213;
      if (v211)
      {
LABEL_27:
        v106 = v220;
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v107 = type metadata accessor for Logger();
        __swift_project_value_buffer(v107, static WOLog.core);
        v108 = v106;
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          aBlock = v112;
          *v111 = 136315138;
          v113 = [v108 debugDescription];
          v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v116 = v115;

          v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v116, &aBlock);

          *(v111 + 4) = v117;
          _os_log_impl(&dword_20AEA4000, v109, v110, "[CyclingPowerZones] No currentZoneIndex to write to activity metadata, current activity: %s", v111, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v112);
          MEMORY[0x20F2E9420](v112, -1, -1);
          MEMORY[0x20F2E9420](v111, -1, -1);
        }

        goto LABEL_44;
      }
    }

    v160 = specialized static ZonesMetadata.packedCurrentZoneIndex(_:)(v94);
    if (v161 >> 60 != 15)
    {
      v174 = v160;
      v175 = v220;
      v176 = v161;
      v177 = [v220 UUID];
      v178 = v214;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v179 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v215 + 8))(v178, v216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v180 = swift_initStackObject();
      *(v180 + 16) = xmmword_20B423A90;
      *(v180 + 32) = 0xD000000000000032;
      *(v180 + 72) = MEMORY[0x277CC9318];
      *(v180 + 40) = 0x800000020B45B860;
      *(v180 + 48) = v174;
      *(v180 + 56) = v176;
      outlined copy of Data?(v174, v176);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v180);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(v180 + 32, &_sSS_yptMd, &_sSS_yptMR);
      v181 = Dictionary._bridgeToObjectiveC()().super.isa;

      v182 = swift_allocObject();
      *(v182 + 16) = v94;
      *(v182 + 24) = v175;
      v225 = partial apply for closure #3 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v226 = v182;
      aBlock = MEMORY[0x277D85DD0];
      v222 = 1107296256;
      v223 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v224 = &block_descriptor_18_1;
      v183 = _Block_copy(&aBlock);
      v184 = v175;

      [v208 updateActivityWithUUID:v179 addMedatata:v181 completion:v183];
      _Block_release(v183);

      outlined consume of Data?(v174, v176);
LABEL_44:
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      PropertyListEncoder.init()();
      aBlock = v93;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
      lazy protocol witness table accessor for type [Int : Double] and conformance <> [A : B]();
      v185 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
      v187 = v186;

      v188 = v220;
      v189 = [v220 UUID];
      v190 = v214;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v191 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v215 + 8))(v190, v216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v192 = swift_initStackObject();
      *(v192 + 16) = xmmword_20B423A90;
      *(v192 + 32) = 0xD00000000000002FLL;
      *(v192 + 72) = MEMORY[0x277CC9318];
      *(v192 + 40) = 0x800000020B45B7B0;
      *(v192 + 48) = v185;
      *(v192 + 56) = v187;
      outlined copy of Data._Representation(v185, v187);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v192);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(v192 + 32, &_sSS_yptMd, &_sSS_yptMR);
      v193 = Dictionary._bridgeToObjectiveC()().super.isa;

      v194 = swift_allocObject();
      *(v194 + 16) = v93;
      *(v194 + 24) = v188;
      v225 = partial apply for closure #4 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:);
      v226 = v194;
      aBlock = MEMORY[0x277D85DD0];
      v222 = 1107296256;
      v223 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v224 = &block_descriptor_12_2;
      v195 = _Block_copy(&aBlock);
      v196 = v188;

      [v208 updateActivityWithUUID:v191 addMedatata:v193 completion:v195];
      _Block_release(v195);

      outlined consume of Data._Representation(v185, v187);
      return;
    }

    v162 = v220;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v163 = type metadata accessor for Logger();
    __swift_project_value_buffer(v163, static WOLog.core);
    v164 = v162;
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      aBlock = v168;
      *v167 = 134218242;
      *(v167 + 4) = v94;
      *(v167 + 12) = 2080;
      v169 = [v164 debugDescription];
      v170 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v172 = v171;

      v173 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v170, v172, &aBlock);

      *(v167 + 14) = v173;
      _os_log_impl(&dword_20AEA4000, v165, v166, "[CyclingPowerZones] Failed to serialize currentZoneIndex: %ld, current activity: %s", v167, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v168);
      MEMORY[0x20F2E9420](v168, -1, -1);
      MEMORY[0x20F2E9420](v167, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    __swift_project_value_buffer(v52, static WOLog.core);
    v220 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v220, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_20AEA4000, v220, v53, "[CyclingPowerZones] Builder failed to provide a workout activity", v54, 2u);
      MEMORY[0x20F2E9420](v54, -1, -1);
    }

    v55 = v220;
  }
}

void HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
    lazy protocol witness table accessor for type [Int : Double] and conformance <> [A : B]();
    v5 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v7 = v6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20B423A90;
    *(inited + 32) = 0xD00000000000002FLL;
    *(inited + 72) = MEMORY[0x277CC9318];
    *(inited + 40) = 0x800000020B45B7B0;
    *(inited + 48) = v5;
    *(inited + 56) = v7;
    outlined copy of Data._Representation(v5, v7);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v24 = closure #1 in HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter;
    v25 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v23 = &block_descriptor_36_0;
    v10 = _Block_copy(&aBlock);
    [v2 addMetadata:isa completion:v10];
    _Block_release(v10);

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.core);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock = v15;
      *v14 = 136315138;
      v16 = Dictionary.description.getter();
      v18 = v17;

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &aBlock);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20AEA4000, v12, v13, "[CyclingPowerZones] Saved in workout metadata elapsed time in zones: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
      outlined consume of Data._Representation(v5, v7);
    }

    else
    {
      outlined consume of Data._Representation(v5, v7);
    }
  }

  else
  {
    v3 = MEMORY[0x20F2E6C00](0xD00000000000002FLL, 0x800000020B45B7B0);
    v24 = closure #2 in HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter;
    v25 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v23 = &block_descriptor_33;
    v4 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v4);
  }
}

uint64_t HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v59 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v59 - v18;
  outlined init with copy of Date?(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _sSS_yptWOhTm_2(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v20 = MEMORY[0x20F2E6C00](0xD000000000000038, 0x800000020B45B7E0);
    v68 = closure #2 in HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.setter;
    v69 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v67 = &block_descriptor_39_1;
    v21 = _Block_copy(&aBlock);
    [v1 _removeMetadata_completion_];
    _Block_release(v21);

    return _sSS_yptWOhTm_2(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v8 + 32))(v19, v6, v7);
    v23 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v19);
    if (v24 >> 60 == 15)
    {
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static WOLog.core);
      (*(v8 + 16))(v12, v19, v7);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v62 = v19;
        v63 = a1;
        v28 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        aBlock = v61;
        *v28 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v29 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v31 = [v29 stringFromDate_];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = *(v8 + 8);
        v35(v12, v7);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &aBlock);

        *(v28 + 4) = v36;
        _os_log_impl(&dword_20AEA4000, v26, v27, "[CyclingPowerZones] Failed to serialize last processed entry date: %s", v28, 0xCu);
        v37 = v61;
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x20F2E9420](v37, -1, -1);
        MEMORY[0x20F2E9420](v28, -1, -1);

        _sSS_yptWOhTm_2(v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v35)(v62, v7);
      }

      else
      {

        _sSS_yptWOhTm_2(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v57 = *(v8 + 8);
        v57(v12, v7);
        return (v57)(v19, v7);
      }
    }

    else
    {
      v38 = v23;
      v39 = v24;
      v63 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000038;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B45B7E0;
      *(inited + 48) = v38;
      *(inited + 56) = v39;
      outlined copy of Data?(v38, v39);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v41 = Dictionary._bridgeToObjectiveC()().super.isa;

      v68 = closure #1 in HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.setter;
      v69 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v65 = 1107296256;
      v66 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v67 = &block_descriptor_42_0;
      v42 = _Block_copy(&aBlock);
      [v1 addMetadata:v41 completion:v42];
      _Block_release(v42);

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static WOLog.core);
      (*(v8 + 16))(v16, v19, v7);
      v44 = Logger.logObject.getter();
      v45 = v19;
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v46))
      {
        v61 = v38;
        v62 = v45;
        v47 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock = v60;
        *v47 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v48 = static WOLog.logDateFormatter;
        v49 = Date._bridgeToObjectiveC()().super.isa;
        v50 = [v48 stringFromDate_];

        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        v54 = *(v8 + 8);
        v54(v16, v7);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &aBlock);

        *(v47 + 4) = v55;
        _os_log_impl(&dword_20AEA4000, v44, v46, "[CyclingPowerZones] Saved in workout metadata last processed entry date: %s", v47, 0xCu);
        v56 = v60;
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x20F2E9420](v56, -1, -1);
        MEMORY[0x20F2E9420](v47, -1, -1);

        outlined consume of Data?(v61, v39);
        _sSS_yptWOhTm_2(v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v54)(v62, v7);
      }

      else
      {

        outlined consume of Data?(v38, v39);
        _sSS_yptWOhTm_2(v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v58 = *(v8 + 8);
        v58(v16, v7);
        return (v58)(v45, v7);
      }
    }
  }
}

uint64_t HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v59 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v59 - v18;
  outlined init with copy of Date?(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    _sSS_yptWOhTm_2(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v20 = MEMORY[0x20F2E6C00](0xD000000000000038, 0x800000020B45B820);
    v68 = closure #2 in HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.setter;
    v69 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v67 = &block_descriptor_45_2;
    v21 = _Block_copy(&aBlock);
    [v1 _removeMetadata_completion_];
    _Block_release(v21);

    return _sSS_yptWOhTm_2(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v8 + 32))(v19, v6, v7);
    v23 = specialized static ZonesMetadata.packedLastProcessedDate(_:)(v19);
    if (v24 >> 60 == 15)
    {
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static WOLog.core);
      (*(v8 + 16))(v12, v19, v7);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v62 = v19;
        v63 = a1;
        v28 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        aBlock = v61;
        *v28 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v29 = static WOLog.logDateFormatter;
        isa = Date._bridgeToObjectiveC()().super.isa;
        v31 = [v29 stringFromDate_];

        v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v34 = v33;

        v35 = *(v8 + 8);
        v35(v12, v7);
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &aBlock);

        *(v28 + 4) = v36;
        _os_log_impl(&dword_20AEA4000, v26, v27, "[CyclingPowerZones] Failed to serialize last processed event date: %s", v28, 0xCu);
        v37 = v61;
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x20F2E9420](v37, -1, -1);
        MEMORY[0x20F2E9420](v28, -1, -1);

        _sSS_yptWOhTm_2(v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v35)(v62, v7);
      }

      else
      {

        _sSS_yptWOhTm_2(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v57 = *(v8 + 8);
        v57(v12, v7);
        return (v57)(v19, v7);
      }
    }

    else
    {
      v38 = v23;
      v39 = v24;
      v63 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000038;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B45B820;
      *(inited + 48) = v38;
      *(inited + 56) = v39;
      outlined copy of Data?(v38, v39);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      v41 = Dictionary._bridgeToObjectiveC()().super.isa;

      v68 = closure #1 in HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.setter;
      v69 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v65 = 1107296256;
      v66 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v67 = &block_descriptor_48_0;
      v42 = _Block_copy(&aBlock);
      [v1 addMetadata:v41 completion:v42];
      _Block_release(v42);

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static WOLog.core);
      (*(v8 + 16))(v16, v19, v7);
      v44 = Logger.logObject.getter();
      v45 = v19;
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v46))
      {
        v61 = v38;
        v62 = v45;
        v47 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock = v60;
        *v47 = 136315138;
        if (one-time initialization token for logDateFormatter != -1)
        {
          swift_once();
        }

        v48 = static WOLog.logDateFormatter;
        v49 = Date._bridgeToObjectiveC()().super.isa;
        v50 = [v48 stringFromDate_];

        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        v54 = *(v8 + 8);
        v54(v16, v7);
        v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &aBlock);

        *(v47 + 4) = v55;
        _os_log_impl(&dword_20AEA4000, v44, v46, "[CyclingPowerZones] Saved in workout metadata last processed event date: %s", v47, 0xCu);
        v56 = v60;
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x20F2E9420](v56, -1, -1);
        MEMORY[0x20F2E9420](v47, -1, -1);

        outlined consume of Data?(v61, v39);
        _sSS_yptWOhTm_2(v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        return (v54)(v62, v7);
      }

      else
      {

        outlined consume of Data?(v38, v39);
        _sSS_yptWOhTm_2(v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v58 = *(v8 + 8);
        v58(v16, v7);
        return (v58)(v45, v7);
      }
    }
  }
}

void HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = MEMORY[0x20F2E6C00](0xD000000000000032, 0x800000020B45B860);
    v25 = closure #2 in HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.setter;
    v26 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v24 = &block_descriptor_51_1;
    v4 = _Block_copy(&aBlock);
    [v2 _removeMetadata_completion_];
    _Block_release(v4);
  }

  else
  {
    v6 = specialized static ZonesMetadata.packedCurrentZoneIndex(_:)(a1);
    if (v7 >> 60 == 15)
    {
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      __swift_project_value_buffer(v8, static WOLog.core);
      oslog = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 134217984;
        *(v10 + 4) = a1;
        _os_log_impl(&dword_20AEA4000, oslog, v9, "[CyclingPowerZones] Failed to serialize current zone index: %ld", v10, 0xCu);
        MEMORY[0x20F2E9420](v10, -1, -1);
      }
    }

    else
    {
      v11 = v6;
      v12 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20B423A90;
      *(inited + 32) = 0xD000000000000032;
      *(inited + 72) = MEMORY[0x277CC9318];
      *(inited + 40) = 0x800000020B45B860;
      *(inited + 48) = v11;
      *(inited + 56) = v12;
      outlined copy of Data?(v11, v12);
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      _sSS_yptWOhTm_2(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = closure #1 in HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.setter;
      v26 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v22 = 1107296256;
      v23 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v24 = &block_descriptor_54_1;
      v15 = _Block_copy(&aBlock);
      [v2 addMetadata:isa completion:v15];
      _Block_release(v15);

      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static WOLog.core);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        *(v19 + 4) = a1;
        _os_log_impl(&dword_20AEA4000, v17, v18, "[CyclingPowerZones] Saved in workout metadata current zone index: %ld", v19, 0xCu);
        MEMORY[0x20F2E9420](v19, -1, -1);
      }

      outlined consume of Data?(v11, v12);
    }
  }
}

uint64_t unpackedCyclingPowerZonesConfiguration(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002FLL, 0x800000020B462A70);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for CyclingPowerZonesConfiguration(0);
  lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration, type metadata accessor for CyclingPowerZonesConfiguration, &protocol conformance descriptor for CyclingPowerZonesConfiguration);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v5, v6);

  return v7[0];
}

uint64_t unpackedCyclingPowerZonesAutomaticFTP(from:)(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002ELL, 0x800000020B462AA0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a1 + 56) + 32 * v2, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for FunctionalThresholdPower(0);
  lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type FunctionalThresholdPower and conformance FunctionalThresholdPower, type metadata accessor for FunctionalThresholdPower, &protocol conformance descriptor for FunctionalThresholdPower);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  outlined consume of Data._Representation(v5, v6);

  return v7[0];
}

uint64_t HKWorkout.cyclingPowerZonesConfiguration.getter(uint64_t (*a1)(uint64_t))
{
  v3 = [v1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a1(v5);

  return v6;
}

uint64_t HKWorkout.elapsedTimeInCyclingPowerZones.getter()
{
  v1 = [v0 metadata];
  if (v1)
  {
    v2 = v1;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v3, 0xD00000000000002FLL, 0x800000020B45B7B0);

  return v4;
}

void (*HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = unpackedCyclingPowerZonesConfiguration(from:)(v4);

  *a1 = v5;
  return HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.modify;
}

uint64_t HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.getter(uint64_t (*a1)(uint64_t))
{
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = a1(v4);

  return v5;
}

void key path getter for HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration : HKLiveWorkoutBuilder(id *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = [*a1 metadata];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = a2(v6);

  *a3 = v7;
}

void (*HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = unpackedCyclingPowerZonesAutomaticFTP(from:)(v4);

  *a1 = v5;
  return HKLiveWorkoutBuilder.cyclingPowerZonesAutomaticFTP.modify;
}

void HKLiveWorkoutBuilder.cyclingPowerZonesConfiguration.modify(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

void key path getter for HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones : HKLiveWorkoutBuilder(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v4, 0xD00000000000002FLL, 0x800000020B45B7B0);

  *a2 = v5;
}

void (*HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedTimeInZones(from:key:)(v4, 0xD00000000000002FLL, 0x800000020B45B7B0);

  *a1 = v5;
  return HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.modify;
}

void HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter(v2);
  }

  else
  {
    HKLiveWorkoutBuilder.elapsedTimeInCyclingPowerZones.setter(*a1);
  }
}

double key path getter for HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones : HKLiveWorkoutBuilder@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000038, 0x800000020B45B7E0, a2);

  return result;
}

void (*HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v8, 0xD000000000000038, 0x800000020B45B7E0, v6);

  return HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.modify;
}

double key path getter for HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones : HKLiveWorkoutBuilder@<D0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v4, 0xD000000000000038, 0x800000020B45B820, a2);

  return result;
}

uint64_t key path setter for HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones : HKLiveWorkoutBuilder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v12 - v9;
  outlined init with copy of Date?(a1, &v12 - v9);
  return a5(v10);
}

void (*HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v4);
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 metadata];
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static ZonesMetadata.unpackedLastProcessedDate(from:key:)(v8, 0xD000000000000038, 0x800000020B45B820, v6);

  return HKLiveWorkoutBuilder.lastProcessedEventDateInCyclingPowerZones.modify;
}

void HKLiveWorkoutBuilder.lastProcessedEntryDateInCyclingPowerZones.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    outlined init with copy of Date?(v5, v4);
    a3(v4);
    _sSS_yptWOhTm_2(v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    a3(v5);
  }

  free(v5);

  free(v4);
}

void key path getter for HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones : HKLiveWorkoutBuilder(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v4, 0xD000000000000032, 0x800000020B45B860);
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7 & 1;
}

void (*HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v3 = [v1 metadata];
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = specialized static ZonesMetadata.unpackedCurrentZoneIndex(from:key:)(v4, 0xD000000000000032, 0x800000020B45B860);
  v7 = v6;

  *a1 = v5;
  *(a1 + 8) = v7 & 1;
  return HKLiveWorkoutBuilder.currentZoneIndexInCyclingPowerZones.modify;
}

void closure #1 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, uint64_t a3, void *a4, char *a5, const char *a6)
{
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static WOLog.core);
    (*(v13 + 16))(v16, a3, v12);
    v18 = a4;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50 = v22;
      *v21 = 136315394;
      lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = a5;
      v25 = v24;
      (*(v13 + 8))(v16, v12);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v50);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = [v18 debugDescription];
      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v50);

      *(v21 + 14) = v31;
      _os_log_impl(&dword_20AEA4000, v19, v20, v48, v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v22, -1, -1);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {

      (*(v13 + 8))(v16, v12);
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static WOLog.core);
    v33 = a4;
    v34 = a2;
    v48 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = v37;
      *v36 = 136315394;
      v38 = [v33 debugDescription];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v50);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      v49 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v43 = Optional.description.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v50);

      *(v36 + 14) = v45;
      _os_log_impl(&dword_20AEA4000, v48, v35, a6, v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v37, -1, -1);
      MEMORY[0x20F2E9420](v36, -1, -1);
    }

    else
    {
      v46 = v48;
    }
  }
}

void closure #3 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.core);
    v7 = a4;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 134218242;
      *(v9 + 4) = a3;
      *(v9 + 12) = 2080;
      v11 = [v7 debugDescription];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v33);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_20AEA4000, oslog, v8, "[CyclingPowerZones] Saved in activity metadata currentZoneIndex: %ld, current activity: %s", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      v16 = v9;
LABEL_10:
      MEMORY[0x20F2E9420](v16, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.core);
    v19 = a4;
    v20 = a2;
    oslog = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315394;
      v24 = [v19 debugDescription];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v33);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v29 = Optional.description.getter();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v33);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_20AEA4000, oslog, v21, "[CyclingPowerZones] Failed to save in activity metadata currentZoneIndex, current activity: %s, error: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v23, -1, -1);
      v16 = v22;
      goto LABEL_10;
    }
  }
}

void closure #4 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.core);

    v6 = a4;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v38 = v9;
      *v8 = 136315394;
      v10 = Dictionary.description.getter();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v38);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = [v6 debugDescription];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v38);

      *(v8 + 14) = v17;
      _os_log_impl(&dword_20AEA4000, oslog, v7, "[CyclingPowerZones] Saved in activity metadata elapsed time in zones: %s, current activity: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v9, -1, -1);
      v18 = v8;
LABEL_10:
      MEMORY[0x20F2E9420](v18, -1, -1);

      return;
    }
  }

  else
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.core);

    v21 = a4;
    v22 = a2;
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315650;
      v26 = Dictionary.description.getter();
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v38);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      v29 = [v21 debugDescription];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v38);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pSgMd, _ss5Error_pSgMR);
      v34 = Optional.description.getter();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v38);

      *(v24 + 24) = v36;
      _os_log_impl(&dword_20AEA4000, oslog, v23, "[CyclingPowerZones] Failed to save in activity metadata elapsed time in zones: %s, current activity: %s, error: %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v25, -1, -1);
      v18 = v24;
      goto LABEL_10;
    }
  }
}

uint64_t _sSS_yptWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

void partial apply for closure #2 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(char a1, void *a2, char *a3, const char *a4, ...)
{
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  closure #1 in HKLiveWorkoutBuilder.updateCurrentActivityCyclingPower(elapsedTimeInZones:lastProcessedEntryDate:lastProcessedEventDate:currentZoneIndex:)(a1, a2, v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t lazy protocol witness table accessor for type CyclingPowerZonesConfiguration and conformance CyclingPowerZonesConfiguration(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Apple_Workout_Core_TrackRunningCoordinator.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_TrackRunningCoordinator;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_TrackRunningCoordinator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_TrackRunningCoordinator.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_TrackRunningCoordinator.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_TrackRunningCoordinator._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_TrackRunningCoordinator._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_TrackRunningCoordinator.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      dispatch thunk of Decoder.decodeSingularBoolField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_TrackRunningCoordinator.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Apple_Workout_Core_TrackRunningCoordinator.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_TrackRunningCoordinator.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningCoordinator);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_TrackRunningCoordinator@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningCoordinator);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_TrackRunningCoordinator@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_TrackRunningCoordinator._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningCoordinator);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningCoordinator and conformance Apple_Workout_Core_TrackRunningCoordinator, type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningCoordinator);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_TrackRunningCoordinator(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_TrackRunningCoordinator(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *ElevationAccumulator.elevationGain.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ElevationAccumulator.elevationGain.setter(void *a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = [v1 updateHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();

    _Block_release(v7);
  }

  else
  {
  }
}

void key path setter for ElevationAccumulator.elevationGain : ElevationAccumulator(void **a1, char **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
  swift_beginAccess();
  v5 = *&v3[v4];
  *&v3[v4] = v2;
  v6 = v2;

  v7 = [v3 updateHandler];
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))();

    _Block_release(v8);
  }

  else
  {
  }
}

void (*ElevationAccumulator.elevationGain.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return ElevationAccumulator.elevationGain.modify;
}

void ElevationAccumulator.elevationGain.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 24) updateHandler];
    if (v4)
    {
      v5 = v4;
      (*(v4 + 2))();

      _Block_release(v5);
    }
  }
}

void *ElevationAccumulator.minimumAltitude.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*ElevationAccumulator.minimumAltitude.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return ElevationAccumulator.minimumAltitude.modify;
}

void *ElevationAccumulator.maximumAltitude.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void @objc ElevationAccumulator.minimumAltitude.setter(char *a1, uint64_t a2, void *a3, uint64_t *a4, SEL *a5)
{
  v9 = *a4;
  swift_beginAccess();
  v10 = *&a1[v9];
  *&a1[v9] = a3;
  v11 = a3;
  v12 = a1;

  ElevationAccumulator.minimumAltitude.didset(a4, a5);
}

void ElevationAccumulator.minimumAltitude.setter(void *a1, uint64_t *a2, SEL *a3)
{
  v5 = v3;
  v7 = *a2;
  swift_beginAccess();
  v8 = *&v5[v7];
  *&v5[v7] = a1;
  v9 = a1;

  v10 = [v5 updateHandler];
  if (v10)
  {
    v11 = v10;
    (*(v10 + 2))();
    _Block_release(v11);
  }

  v12 = *&v5[v7];
  if (v12 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v14 = Strong;
    v15 = v12;
    [v14 *a3];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void key path setter for ElevationAccumulator.minimumAltitude : ElevationAccumulator(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, SEL *a6)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *a5;
  swift_beginAccess();
  v11 = *(v9 + v10);
  *(v9 + v10) = v8;
  v12 = v8;

  ElevationAccumulator.minimumAltitude.didset(a5, a6);
}

void ElevationAccumulator.minimumAltitude.didset(uint64_t *a1, SEL *a2)
{
  v5 = [v2 updateHandler];
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))();
    _Block_release(v6);
  }

  v7 = *a1;
  swift_beginAccess();
  v8 = *&v2[v7];
  if (v8)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = v8;
      [v10 *a2];

      swift_unknownObjectRelease();
    }
  }
}

void (*ElevationAccumulator.maximumAltitude.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
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
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return ElevationAccumulator.maximumAltitude.modify;
}

void ElevationAccumulator.minimumAltitude.modify(uint64_t *a1, char a2, SEL *a3)
{
  v5 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = [*(v5 + 24) updateHandler];
    if (v6)
    {
      v7 = v6;
      (*(v6 + 2))();
      _Block_release(v7);
    }

    v8 = *(*(v5 + 24) + *(v5 + 32));
    if (v8)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = v8;
        [v10 *a3];
        swift_unknownObjectRelease();
      }
    }
  }

  free(v5);
}

void key path setter for ElevationAccumulator.invalidationTimer : ElevationAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *ElevationAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ElevationAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void ElevationAccumulator.updateMinimumAltitude(withAltitude:)(void *a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    if ([v5 compare_] != 1)
    {
      goto LABEL_8;
    }

    v6 = *&v1[v3];
    *&v1[v3] = a1;
    v7 = a1;

    v8 = [v1 updateHandler];
    if (v8)
    {
      v9 = v8;
      (*(v8 + 2))();
      _Block_release(v9);
    }

    v10 = *&v1[v3];
    if (!v10 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
LABEL_8:

      return;
    }

    v12 = Strong;
    v13 = v10;
    [v12 didUpdateMinimumAltitude_];

    goto LABEL_14;
  }

  *&v1[v3] = a1;
  v14 = a1;
  v15 = [v1 updateHandler];
  if (v15)
  {
    v16 = v15;
    (*(v15 + 2))();
    _Block_release(v16);
  }

  v17 = *&v1[v3];
  if (v17)
  {
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      v20 = v17;
      [v19 didUpdateMinimumAltitude_];

LABEL_14:
      swift_unknownObjectRelease();
    }
  }
}

void ElevationAccumulator.updateMaximumAltitude(withAltitude:)(void *a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    if ([v5 compare_] != -1)
    {
      goto LABEL_3;
    }

    v13 = *&v1[v3];
    *&v1[v3] = a1;
    v14 = a1;

    v15 = [v1 updateHandler];
    if (v15)
    {
      v16 = v15;
      (*(v15 + 2))();
      _Block_release(v16);
    }

    v17 = *&v1[v3];
    if (!v17 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
    {
LABEL_3:

      return;
    }

    v19 = Strong;
    v20 = v17;
    [v19 didUpdateMaximumAltitude_];

    goto LABEL_14;
  }

  *&v1[v3] = a1;
  v6 = a1;
  v7 = [v1 updateHandler];
  if (v7)
  {
    v8 = v7;
    (*(v7 + 2))();
    _Block_release(v8);
  }

  v9 = *&v1[v3];
  if (v9)
  {
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      [v11 didUpdateMaximumAltitude_];

LABEL_14:
      swift_unknownObjectRelease();
    }
  }
}

void *ElevationAccumulator.currentAltitude.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t ElevationAccumulator.currentAltitude.setter(void *a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v6 = *&v1[v3];
  if (v6)
  {
    v7 = v6;
    ElevationAccumulator.updateMinimumAltitude(withAltitude:)(v7);
    ElevationAccumulator.updateMaximumAltitude(withAltitude:)(v7);
  }

  v8 = [v1 updateHandler];
  if (v8)
  {
    v9 = v8;
    (*(v8 + 2))();
    _Block_release(v9);
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in ElevationAccumulator.currentAltitude.didset, v10);
}

uint64_t key path setter for ElevationAccumulator.currentAltitude : ElevationAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return ElevationAccumulator.currentAltitude.didset();
}

uint64_t ElevationAccumulator.currentAltitude.didset()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    ElevationAccumulator.updateMinimumAltitude(withAltitude:)(v3);
    ElevationAccumulator.updateMaximumAltitude(withAltitude:)(v3);
  }

  v4 = [v0 updateHandler];
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))();
    _Block_release(v5);
  }

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in ElevationAccumulator.currentAltitude.didsetpartial apply, v6);
}

void closure #1 in ElevationAccumulator.currentAltitude.didset(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    ElevationAccumulator.elevationDidBecomeStale()();
  }
}

uint64_t (*ElevationAccumulator.currentAltitude.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return ElevationAccumulator.currentAltitude.modify;
}

void ElevationAccumulator.currentAltitude.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *&v4[v3[4]];
    if (v5)
    {
      v6 = v5;
      ElevationAccumulator.updateMinimumAltitude(withAltitude:)(v6);
      ElevationAccumulator.updateMaximumAltitude(withAltitude:)(v6);

      v4 = v3[3];
    }

    v7 = [v4 updateHandler];
    if (v7)
    {
      v8 = v7;
      (*(v7 + 2))();
      _Block_release(v8);
    }

    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in ElevationAccumulator.currentAltitude.didsetpartial apply, v9);
  }

  free(v3);
}

uint64_t ElevationAccumulator.chartDataElements.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  if (!*(v0 + v1))
  {
    return MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter(&v3);

  return v3;
}

id ElevationAccumulator.chartUnit.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ElevationAccumulator.chartUnit.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for ElevationAccumulator.chartUnit : ElevationAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

double key path setter for ElevationAccumulator.elevationChartDataProvider : ElevationAccumulator(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double ElevationAccumulator.elevationChartDataProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id ElevationAccumulator.__allocating_init(builder:healthStore:liveWorkoutConfiguration:workoutSettingsManager:elevationUnit:delegate:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v13 = objc_allocWithZone(v7);
  *&v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain] = 0;
  *&v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude] = 0;
  *&v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude] = 0;
  *&v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer] = 0;
  *&v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude] = 0;
  swift_unknownObjectWeakInit();
  *&v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider] = 0;
  *&v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit] = a5;
  *&v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_healthStore] = a2;
  *&v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_liveWorkoutConfiguration] = a3;
  *&v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_workoutSettingsManager] = a4;
  v14 = a5;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  specialized static ElevationAccumulator.isElevationChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(v16, v17);
  v13[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartEnabled] = v18 & 1;
  swift_unknownObjectWeakAssign();
  v24.receiver = v13;
  v24.super_class = v7;
  v19 = objc_msgSendSuper2(&v24, sel_initWithBuilder_, a1);
  v20 = objc_opt_self();
  v21 = v19;
  v22 = [v20 defaultCenter];
  if (one-time initialization token for MetricPlattersDidSave != -1)
  {
    swift_once();
  }

  [v22 addObserver:v21 selector:? name:? object:?];

  swift_unknownObjectRelease();
  return v21;
}

id ElevationAccumulator.init(builder:healthStore:liveWorkoutConfiguration:workoutSettingsManager:elevationUnit:delegate:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain] = 0;
  *&v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_minimumAltitude] = 0;
  *&v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_maximumAltitude] = 0;
  *&v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer] = 0;
  *&v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude] = 0;
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider] = 0;
  *&v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit] = a5;
  *&v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_healthStore] = a2;
  *&v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_liveWorkoutConfiguration] = a3;
  *&v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_workoutSettingsManager] = a4;
  v12 = a5;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  specialized static ElevationAccumulator.isElevationChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(v14, v15);
  v6[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartEnabled] = v16 & 1;
  swift_unknownObjectWeakAssign();
  v22.receiver = v6;
  v22.super_class = type metadata accessor for ElevationAccumulator();
  v17 = objc_msgSendSuper2(&v22, sel_initWithBuilder_, a1);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 defaultCenter];
  if (one-time initialization token for MetricPlattersDidSave != -1)
  {
    swift_once();
  }

  [v20 addObserver:v19 selector:? name:? object:?];

  swift_unknownObjectRelease();
  return v19;
}

void ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.app);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Elevation recovery", v11, 2u);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  v15 = objc_allocWithZone(MEMORY[0x277CCDC88]);

  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = partial apply for closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed HKWorkoutRouteQuery, @guaranteed [CLLocation]?, @unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_48;
  v17 = _Block_copy(aBlock);
  v18 = [v15 initWithActiveWorkoutUUID:isa dataHandler:v17];
  _Block_release(v17);

  [*(v2 + OBJC_IVAR___NLSessionActivityElevationAccumulator_healthStore) executeQuery_];
}

uint64_t closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v97 = a6;
  v108 = a5;
  v96 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13, v15);
  v98 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for ElevationSample(0);
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v17);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Date();
  v20 = *(v107 - 1);
  result = MEMORY[0x28223BE20](v107, v21);
  v24 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v25 = a2 >> 62;
    v103 = a2;
    if (a2 >> 62)
    {
      result = __CocoaSet.count.getter();
      v25 = a2 >> 62;
      v26 = result;
    }

    else
    {
      v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v103;
    if (v26)
    {
      v106 = v103 & 0xC000000000000001;
      v94 = v8;
      v93 = v9;
      v92 = v13;
      v91 = v12;
      v90 = v14;
      v88 = v25;
      v105 = v20;
      if ((v103 & 0xC000000000000001) == 0)
      {
        v28 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          v29 = v26 - 1;
          if (!__OFSUB__(v26, 1))
          {
            if (v29 >= v28)
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v30 = *(v103 + 32 + 8 * v29);
            v8 = *(v103 + 32);
            v27 = v30;
            goto LABEL_10;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v95 = MEMORY[0x20F2E7A20](0, v103);
      result = v26 - 1;
      if (__OFSUB__(v26, 1))
      {
        __break(1u);
        return result;
      }

      v27 = MEMORY[0x20F2E7A20](result, v27);
      v8 = v95;
LABEL_10:
      v95 = v8;
      v31 = objc_opt_self();
      v13 = &selRef_localizedPaceStringWithDistance_overDuration_paceFormat_unitStyle_decimalTrimmingMode_distanceType_;
      v32 = [v31 meterUnit];
      [v27 altitude];
      v34 = v33;
      v35 = objc_opt_self();
      v89 = [v35 quantityWithUnit:v32 doubleValue:v34];

      v100 = v31;
      v36 = [v31 meterUnit];
      [v8 altitude];
      v99 = v35;
      v37 = [v35 quantityWithUnit:v36 doubleValue:?];

      v38 = v37;
      [v95 altitude];
      if (v26 >= 1)
      {
        v40 = v39;
        v41 = v26;
        v42 = 0;
        v43 = v105 + 8;
        v13 = MEMORY[0x277D84F90];
        v6 = 0.0;
        v104 = v38;
        v105 = v38;
        v8 = v103;
        do
        {
          v44 = v27;
          if (v106)
          {
            v45 = MEMORY[0x20F2E7A20](v42, v8);
          }

          else
          {
            v45 = *(v8 + 8 * v42 + 32);
          }

          v46 = v45;
          v47 = [v45 timestamp];
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          LOBYTE(v47) = static Date.< infix(_:_:)();
          (*v43)(v24, v107);
          if (v47)
          {
          }

          else
          {
            [v46 altitude];
            v49 = v48;
            v50 = [v100 meterUnit];
            v51 = [v99 quantityWithUnit:v50 doubleValue:v49];

            v52 = v105;
            if ([v105 compare_] == 1)
            {

              v105 = v51;
            }

            v53 = v104;
            if ([v104 compare_] == -1)
            {

              v104 = v51;
            }

            v54 = [v46 timestamp];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            *&v19[*(v102 + 20)] = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (v13[2] + 1), 1, v13);
            }

            v56 = v13[2];
            v55 = v13[3];
            if (v56 >= v55 >> 1)
            {
              v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v13);
            }

            v13[2] = (v56 + 1);
            outlined init with take of ElevationSample(v19, v13 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v56);
            v6 = v6 + fmax(v49 - v40, 0.0);
            v40 = v49;
            v8 = v103;
          }

          ++v42;
          v27 = v44;
        }

        while (v41 != v42);
        if (one-time initialization token for app == -1)
        {
LABEL_28:
          v57 = type metadata accessor for Logger();
          __swift_project_value_buffer(v57, static WOLog.app);

          v58 = v95;
          v59 = v27;
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            *v62 = 134218498;
            if (v88)
            {
              v64 = __CocoaSet.count.getter();
            }

            else
            {
              v64 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v62 + 4) = v64;

            *(v62 + 12) = 2112;
            *(v62 + 14) = v58;
            *(v62 + 22) = 2112;
            *(v62 + 24) = v59;
            *v63 = v58;
            v63[1] = v59;
            v65 = v58;
            v66 = v59;
            _os_log_impl(&dword_20AEA4000, v60, v61, "Recovered samples from locations: %ld, starting at: %@, ending at: %@", v62, 0x20u);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            swift_arrayDestroy();
            MEMORY[0x20F2E9420](v63, -1, -1);
            MEMORY[0x20F2E9420](v62, -1, -1);
          }

          else
          {
          }

          v108 = v58;
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v68 = Strong;
            v69 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
            swift_beginAccess();
            if (*&v68[v69])
            {

              v70 = specialized _arrayForceCast<A, B>(_:)(v13);

              ChartDataProvider.add(samples:)(v70);

LABEL_39:
              v107 = v59;
              swift_beginAccess();
              v71 = swift_unknownObjectWeakLoadStrong();
              if (v71)
              {
                v72 = v71;
                v73 = *(v71 + OBJC_IVAR___NLSessionActivityElevationAccumulator_healthStore);

                [v73 stopQuery_];
              }

              type metadata accessor for OS_dispatch_queue();
              v74 = static OS_dispatch_queue.main.getter();
              v75 = swift_allocObject();
              swift_beginAccess();
              v76 = swift_unknownObjectWeakLoadStrong();
              swift_unknownObjectWeakInit();

              v77 = swift_allocObject();
              *(v77 + 16) = v75;
              *(v77 + 24) = v6;
              v78 = v105;
              v79 = v104;
              *(v77 + 32) = v105;
              *(v77 + 40) = v79;
              v80 = v89;
              *(v77 + 48) = v89;
              aBlock[4] = partial apply for specialized closure #1 in closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:);
              aBlock[5] = v77;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
              aBlock[3] = &block_descriptor_45_3;
              v81 = _Block_copy(aBlock);
              v82 = v80;
              v83 = v78;
              v84 = v79;

              v85 = v98;
              static DispatchQoS.unspecified.getter();
              aBlock[0] = MEMORY[0x277D84F90];
              _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
              v86 = v91;
              v87 = v94;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              MEMORY[0x20F2E7580](0, v85, v86, v81);
              _Block_release(v81);

              (*(v93 + 8))(v86, v87);
              return (*(v90 + 8))(v85, v92);
            }
          }

          goto LABEL_39;
        }

LABEL_50:
        swift_once();
        goto LABEL_28;
      }

      goto LABEL_48;
    }
  }

  return result;
}

char *specialized closure #1 in closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(uint64_t a1, void *a2, void *a3, void *a4, double a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationGain;
    swift_beginAccess();
    if (!*&v10[v11])
    {
      v12 = [objc_opt_self() meterUnit];
      v13 = [objc_opt_self() quantityWithUnit:v12 doubleValue:a5];

      v14 = *&v10[v11];
      *&v10[v11] = v13;
      v15 = v13;

      v16 = [v10 updateHandler];
      if (v16)
      {
        v17 = v16;
        (*(v16 + 2))();

        _Block_release(v17);
      }

      else
      {
      }
    }

    ElevationAccumulator.updateMinimumAltitude(withAltitude:)(a2);
    ElevationAccumulator.updateMaximumAltitude(withAltitude:)(a3);
    v18 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
    swift_beginAccess();
    v19 = *&v10[v18];
    *&v10[v18] = a4;
    v20 = a4;

    v21 = *&v10[v18];
    if (v21)
    {
      v22 = v21;
      ElevationAccumulator.updateMinimumAltitude(withAltitude:)(v22);
      ElevationAccumulator.updateMaximumAltitude(withAltitude:)(v22);
    }

    v23 = [v10 updateHandler];
    if (v23)
    {
      v24 = v23;
      (*(v23 + 2))();
      _Block_release(v24);
    }

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in ElevationAccumulator.currentAltitude.didsetpartial apply, v25);
  }

  return result;
}

void ElevationAccumulator.activateElevationChartDataProvider(startDate:)(uint64_t a1)
{
  v42 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v45, v5);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v43 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v10 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for Date();
  v38 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v18;
  v19 = OBJC_IVAR___NLSessionActivityElevationAccumulator_chartUnit;
  swift_beginAccess();
  v20 = *(v1 + v19);
  v40 = v1;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 meterUnit];
  v24 = [objc_opt_self() quantityWithUnit:v23 doubleValue:10.0];

  [v24 doubleValueForUnit_];
  v26 = v25;

  v50 = 48;
  v51 = xmmword_20B440800;
  v52 = 4;
  v53 = 1;
  v54 = 0x4014000000000000;
  v55 = 0x6F69746176656C45;
  v56 = 0xE90000000000006ELL;
  v57 = 1;
  v58 = v26;
  v59 = 1;
  (*(v15 + 16))(v18, v42, v14);
  v27 = *(v1 + v19);
  v28 = v51;
  v42 = v50;
  type metadata accessor for ChartDataProvider(0);
  v29 = swift_allocObject();
  v30 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v31 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v37 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  Published.init(initialValue:)();
  (*(v10 + 32))(v29 + v30, v13, v41);
  v32 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  *(v29 + v32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v31);
  v33 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v49 = v31;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_2(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v47 + 104))(v46, *MEMORY[0x277D85260], v48);
  v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  outlined destroy of WorkoutChartProperties(&v50);
  *(v29 + v33) = v34;
  (*(v15 + 32))(v29 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate, v39, v38);
  *(v29 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v37;
  *(v29 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = v28;
  *(v29 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = v42;
  *(v29 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = 1;
  v35 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  v36 = v40;
  swift_beginAccess();
  *(v36 + v35) = v29;
}

Swift::Void __swiftcall ElevationAccumulator.accumulatorDidStop()()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  [*(v0 + v1) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  *(v0 + v3) = 0;
}

void ElevationAccumulator.process(sample:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore15ElevationSampleVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore15ElevationSampleVGMR);
  v3 = *(type metadata accessor for ElevationSample(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20B423A90;
  outlined init with copy of ElevationSample(a1 + OBJC_IVAR___WOElevationSample_bridgedValue, v5 + v4);
  v6 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  if (*(v1 + v6))
  {

    v7 = specialized _arrayForceCast<A, B>(_:)(v5);
    swift_setDeallocating();
    outlined destroy of ElevationSample(v5 + v4);
    swift_deallocClassInstance();
    ChartDataProvider.add(samples:)(v7);
  }

  else
  {
    swift_setDeallocating();
    outlined destroy of ElevationSample(v5 + v4);
    swift_deallocClassInstance();
  }
}

Swift::Void __swiftcall ElevationAccumulator.process(samples:)(Swift::OpaquePointer samples)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    v4 = specialized _arrayForceCast<A, B>(_:)(samples._rawValue);
    ChartDataProvider.add(samples:)(v4);
  }
}

double ElevationAccumulator.elevationDidBecomeStale()()
{
  v1 = v0;
  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.app);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Elevation became stale", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = OBJC_IVAR___NLSessionActivityElevationAccumulator_currentAltitude;
  swift_beginAccess();
  v7 = *&v1[v6];
  *&v1[v6] = 0;

  v8 = *&v1[v6];
  if (v8)
  {
    v9 = v8;
    ElevationAccumulator.updateMinimumAltitude(withAltitude:)(v9);
    ElevationAccumulator.updateMaximumAltitude(withAltitude:)(v9);
  }

  v10 = [v1 updateHandler];
  if (v10)
  {
    v11 = v10;
    (*(v10 + 2))();
    _Block_release(v11);
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in ElevationAccumulator.currentAltitude.didsetpartial apply, v12);

  v13 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
  swift_beginAccess();
  if (*&v1[v13])
  {

    v15 = specialized _arrayForceCast<A, B>(_:)(MEMORY[0x277D84F90]);
    ChartDataProvider.add(samples:)(v15);
  }

  return result;
}

id ElevationAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id ElevationAccumulator.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ElevationAccumulator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance ElevationAccumulator()
{
  v1 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance ElevationAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityElevationAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void specialized static ElevationAccumulator.isElevationChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(uint64_t a1, void *a2)
{
  v2 = static MetricPlatterProvider.metricPlatters(liveWorkoutConfiguration:workoutSettingsManager:)(a1, a2);
  v3 = -*(v2 + 16);
  v4 = -1;
  v5 = 32;
  while (2)
  {
    if (v3 + v4 == -1)
    {
LABEL_7:
    }

    else
    {
      if (++v4 < *(v2 + 16))
      {
        v7 = v5;
        v5 += 16;
        switch(*(v2 + v7))
        {
          case 0xE:

            goto LABEL_7;
          default:
            v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v6 & 1) == 0)
            {
              continue;
            }

            goto LABEL_7;
        }
      }

      __break(1u);
    }

    break;
  }
}

uint64_t partial apply for closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for Date() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(a1, a2, a3, a4, (v4 + v10), v11);
}

void specialized ElevationAccumulator.accumulatorDidStart(withStart:handler:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  if (*(v1 + OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartEnabled) == 1)
  {
    outlined init with copy of Date?(a1, v6);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      __break(1u);
    }

    else
    {
      ElevationAccumulator.activateElevationChartDataProvider(startDate:)(v6);
      (*(v8 + 8))(v6, v7);
    }
  }

  else
  {
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static WOLog.app);
    v14 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v10, "Elevation chart not enabled, not accumulating.", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v12 = v14;
  }
}

id keypath_get_12Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

double specialized ElevationAccumulator.handleMetricPlattersUpdated(notification:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v46 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartEnabled;
  v20 = v1[OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartEnabled];
  specialized static ElevationAccumulator.isElevationChartEnabled(liveWorkoutConfiguration:workoutSettingsManager:)(*&v1[OBJC_IVAR___NLSessionActivityElevationAccumulator_liveWorkoutConfiguration], *&v1[OBJC_IVAR___NLSessionActivityElevationAccumulator_workoutSettingsManager]);
  v1[v19] = v22 & 1;
  if (v20 != (v22 & 1))
  {
    v46 = v11;
    v50 = v18;
    v48 = v14;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.app);
    v24 = v1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v47 = v15;
    if (v27)
    {
      v28 = swift_slowAlloc();
      *v28 = 67109120;
      *(v28 + 4) = v1[v19];

      _os_log_impl(&dword_20AEA4000, v25, v26, "Elevation metric platter enablement changed. enabled=%{BOOL}d", v28, 8u);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    else
    {

      v25 = v24;
    }

    v29 = [v24 builder];
    v30 = [v29 startDate];

    if (v30)
    {
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = [v24 builder];
      v32 = [v31 _currentSnapshot];

      if (v32)
      {
        v33 = [v32 fiui_finalWorkoutUUID];

        v34 = v47;
        if (v33)
        {
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v35 = 0;
        }

        else
        {
          v35 = 1;
        }

        v39 = v46;
        (*(v46 + 56))(v6, v35, 1, v10);
        outlined init with take of UUID?(v6, v9);
        if ((*(v39 + 48))(v9, 1, v10) != 1)
        {
          v43 = v49;
          (*(v39 + 32))(v49, v9, v10);
          if (v1[v19] == 1)
          {
            v44 = v50;
            ElevationAccumulator.activateElevationChartDataProvider(startDate:)(v50);
            ElevationAccumulator.recoverLocations(fromStartDate:workoutUUID:)(v44);
            (*(v39 + 8))(v43, v10);
            (*(v34 + 8))(v44, v48);
          }

          else
          {
            (*(v39 + 8))(v43, v10);
            (*(v34 + 8))(v50, v48);
            v45 = OBJC_IVAR___NLSessionActivityElevationAccumulator_elevationChartDataProvider;
            swift_beginAccess();
            *(&v24->isa + v45) = 0;
          }

          return result;
        }
      }

      else
      {
        (*(v46 + 56))(v9, 1, 1, v10);
        v34 = v47;
      }

      _s10Foundation4UUIDVSgWOhTm_2(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_20AEA4000, v40, v41, "builder doesn't have a workout UUID, cannot activate elevation chart data provider", v42, 2u);
        MEMORY[0x20F2E9420](v42, -1, -1);
      }

      (*(v34 + 8))(v50, v48);
    }

    else
    {
      v50 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v50, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_20AEA4000, v50, v36, "builder doesn't have a start date, cannot activate elevation chart data provider", v37, 2u);
        MEMORY[0x20F2E9420](v37, -1, -1);
      }

      v38 = v50;
    }
  }

  return result;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id static RaceCoordinatorFactory.make(configuration:builder:healthStore:)(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for RaceWorkoutConfiguration(0);
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for RaceCoordinator(0));
    v9 = v5;
    v10 = a2;
    v11 = a3;
    v12 = specialized RaceCoordinator.init(configuration:builder:healthStore:)(v7, v10, v11);

    return v12;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000048, 0x800000020B462D70, "WorkoutCore/RaceCoordinatorFactory.swift", 40, 2, 18, 0);
    __break(1u);
  }

  return result;
}

id RaceCoordinatorFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RaceCoordinatorFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RaceCoordinatorFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RaceCoordinatorFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RaceCoordinatorFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *static WorkoutVoiceAlert.makeConfiguredAlerts(activityType:unitManager:)(void *a1, void *a2)
{
  v4 = type metadata accessor for WorkoutVoiceAlert();
  v57 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v59 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertVSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertVSgMR);
  v56 = *(v53 - 8);
  v8 = MEMORY[0x28223BE20](v53, v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v58 = &v45 - v12;
  v13 = [a2 userDistanceHKUnitForActivityType_];
  v14 = [a1 identifier];
  v15 = [a1 isIndoor];
  v16 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:v14 isIndoor:v15];
  v17 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001DLL, 0x800000020B454520, v16);
  if (v17 && (v18 = specialized TargetZone.__allocating_init(dict:)(v17)) != 0)
  {
    v19 = v18;
  }

  else
  {
    type metadata accessor for TargetZone();
    v19 = swift_allocObject();
    *(v19 + 16) = 1;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0;
  }

  swift_beginAccess();
  v21 = static HeartRateTargetZone.heartRateTargetZonesByActivityTypeKey;
  v20 = off_27C728570;

  v22 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(v21, v20, v16);

  if (!v22 || (specialized HeartRateTargetZone.__allocating_init(dict:)(v22), !v23))
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v23 = static HeartRateTargetZone.defaultZone;
  }

  v54 = v23;
  v24 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD000000000000020, 0x800000020B454540, v16);
  if (!v24 || (v55 = specialized TargetZone.__allocating_init(dict:)(v24)) == 0)
  {
    type metadata accessor for TargetZone();
    v25 = swift_allocObject();
    *(v25 + 16) = 4;
    *(v25 + 24) = 0;
    *(v25 + 32) = 0;
    v55 = v25;
    *(v25 + 40) = 0;
  }

  v26 = specialized static TargetZoneStorage.targetZoneDict(zoneKey:activityType:)(0xD00000000000001ELL, 0x800000020B454570, v16);
  if (v26 && (v27 = specialized TargetZone.__allocating_init(dict:)(v26)) != 0)
  {
    v28 = v27;
  }

  else
  {
    type metadata accessor for TargetZone();
    v28 = swift_allocObject();
    *(v28 + 16) = 6;
    *(v28 + 24) = 0;
    *(v28 + 32) = 0;
    *(v28 + 40) = 0;
  }

  v29 = objc_opt_self();
  v30 = [v29 timeSplitForActivityType_];
  v50 = v16;
  v52 = v13;
  v31 = [v29 distanceSplitForActivityType:v16 userDistanceUnit:v13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19FitnessIntelligence17WorkoutVoiceAlertVSgGMd, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence17WorkoutVoiceAlertVSgGMR);
  v32 = *(v56 + 72);
  v33 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v34 = 6;
  v46 = swift_allocObject();
  v35 = v46 + v33;
  v51 = v19;
  static WorkoutVoiceAlert.transformTargetZone(targetZone:)(v19, v46 + v33);
  static WorkoutVoiceAlert.transformHeartRateTargetZone(targetZone:)(v54, v35 + v32);
  static WorkoutVoiceAlert.transformTargetZone(targetZone:)(v55, v35 + 2 * v32);
  v49 = v28;
  static WorkoutVoiceAlert.transformTargetZone(targetZone:)(v28, v35 + 3 * v32);
  v48 = v30;
  static WorkoutVoiceAlert.transformWorkoutSplit(workoutSplit:)(v30, v35 + 4 * v32);
  v47 = v31;
  static WorkoutVoiceAlert.transformWorkoutSplit(workoutSplit:)(v31, v35 + 5 * v32);
  v36 = (v57 + 48);
  v37 = MEMORY[0x277D84F90];
  v38 = (v57 + 32);
  v45 = v35;
  v56 = v4;
  do
  {
    v39 = v58;
    outlined init with copy of WorkoutVoiceAlert?(v35, v58);
    outlined init with take of WorkoutVoiceAlert?(v39, v10);
    if ((*v36)(v10, 1, v4) == 1)
    {
      outlined destroy of WorkoutVoiceAlert?(v10, &_s19FitnessIntelligence17WorkoutVoiceAlertVSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertVSgMR);
    }

    else
    {
      v40 = *v38;
      (*v38)(v59, v10, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
      }

      v42 = v37[2];
      v41 = v37[3];
      if (v42 >= v41 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v37);
      }

      v37[2] = v42 + 1;
      v43 = v37 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v42;
      v4 = v56;
      v40(v43, v59, v56);
    }

    v35 += v32;
    --v34;
  }

  while (v34);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return v37;
}

uint64_t static WorkoutVoiceAlert.transformTargetZone(targetZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v53 = type metadata accessor for WorkoutVoiceAlert.Value();
  v3 = *(v53 - 8);
  v5 = MEMORY[0x28223BE20](v53, v4);
  v52 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v49 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for WorkoutVoiceAlert.ValueType();
  v54 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertV0E4TypeOSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertV0E4TypeOSgMR);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v49 - v23;
  v57 = type metadata accessor for WorkoutVoiceAlert.AlertType();
  v25 = *(v57 - 8);
  v27 = MEMORY[0x28223BE20](v57, v26);
  v29 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v56 = &v49 - v31;
  swift_beginAccess();
  if (*(a1 + 40) != 1)
  {
    v36 = 1;
    v37 = v58;
    goto LABEL_15;
  }

  v32 = [a1 primaryType];
  if ((v32 - 1) >= 3)
  {
    v36 = 1;
    (*(v25 + 56))(v24, 1, 1, v57);
    v38 = &_s19FitnessIntelligence17WorkoutVoiceAlertV0E4TypeOSgMd;
    v39 = &_s19FitnessIntelligence17WorkoutVoiceAlertV0E4TypeOSgMR;
    v40 = v24;
    goto LABEL_9;
  }

  v33 = v57;
  (*(v25 + 104))(v24, **(&unk_277D8B420 + (v32 - 1)), v57);
  (*(v25 + 56))(v24, 0, 1, v33);
  (*(v25 + 32))(v56, v24, v33);
  v34 = *(a1 + 16);
  v35 = MEMORY[0x277D0A230];
  if (v34 <= 7)
  {
    if (((1 << v34) & 0x2C) != 0)
    {
      v35 = MEMORY[0x277D0A228];
      goto LABEL_11;
    }

    if (((1 << v34) & 0x52) != 0)
    {
      v35 = MEMORY[0x277D0A220];
      goto LABEL_11;
    }

    if (v34 != 7)
    {
      goto LABEL_11;
    }

    v36 = 1;
    (*(v54 + 56))(v17, 1, 1, v18);
    (*(v25 + 8))(v56, v57);
    v38 = &_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMd;
    v39 = &_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMR;
    v40 = v17;
LABEL_9:
    outlined destroy of WorkoutVoiceAlert?(v40, v38, v39);
    v37 = v58;
    goto LABEL_15;
  }

LABEL_11:
  v41 = v54;
  (*(v54 + 104))(v17, *v35, v18);
  v50 = *(v41 + 56);
  v51 = v41 + 56;
  v50(v17, 0, 1, v18);
  (*(v41 + 32))(v55, v17, v18);
  swift_beginAccess();
  v42 = *(a1 + 24);
  swift_beginAccess();
  v43 = *(a1 + 32);
  *v9 = v42;
  if (v42 == v43)
  {
    v44 = MEMORY[0x277D0A218];
  }

  else
  {
    v9[1] = v43;
    v44 = MEMORY[0x277D0A208];
  }

  v37 = v58;
  v45 = v53;
  (*(v3 + 104))(v9, *v44, v53);
  (*(v25 + 16))(v29, v56, v57);
  v46 = v54;
  (*(v54 + 16))(v14, v55, v18);
  v50(v14, 0, 1, v18);
  (*(v3 + 16))(v52, v9, v45);
  WorkoutVoiceAlert.init(type:valueType:value:)();
  (*(v3 + 8))(v9, v45);
  (*(v46 + 8))(v55, v18);
  (*(v25 + 8))(v56, v57);
  v36 = 0;
LABEL_15:
  v47 = type metadata accessor for WorkoutVoiceAlert();
  return (*(*(v47 - 8) + 56))(v37, v36, 1, v47);
}

uint64_t static WorkoutVoiceAlert.transformHeartRateTargetZone(targetZone:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for Logger();
  v56 = *(v3 - 8);
  v57 = v3;
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for WorkoutVoiceAlert.Value();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v55 - v18;
  v20 = type metadata accessor for WorkoutVoiceAlert.AlertType();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1[OBJC_IVAR___WOCoreHeartRateTargetZone_type])
  {
    v31 = &a1[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex];
    swift_beginAccess();
    if (v31[8])
    {
      static Log.default.getter();
      v32 = a1;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v61 = v36;
        *v35 = 136315138;
        v37 = v31[8];
        v59 = *v31;
        v60 = v37;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
        v38 = Optional.description.getter();
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v61);

        *(v35 + 4) = v40;
        _os_log_impl(&dword_20AEA4000, v33, v34, "Unexpectedly found no zone index for automatic HeartRateTargetZone.Type. ZoneIndex %s.", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x20F2E9420](v36, -1, -1);
        MEMORY[0x20F2E9420](v35, -1, -1);
      }

      (*(v56 + 8))(v10, v57);
      goto LABEL_11;
    }

    v51 = *v31;
    result = HeartRateTargetZone.applicableRange.getter();
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      return result;
    }

    *v24 = v51 + 1;
    v24[8] = 0;
    (*(v21 + 104))(v24, *MEMORY[0x277D0A200], v20);
    v52 = type metadata accessor for WorkoutVoiceAlert.ValueType();
    (*(*(v52 - 8) + 56))(v19, 1, 1, v52);
    v50 = MEMORY[0x277D0A210];
    goto LABEL_18;
  }

  if (a1[OBJC_IVAR___WOCoreHeartRateTargetZone_type] == 1)
  {
    v25 = HeartRateTargetZone.applicableRange.getter();
    if (v27)
    {
      static Log.default.getter();
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_20AEA4000, v28, v29, "Unexpectedly found no range for automatic HeartRateTargetZone.Type", v30, 2u);
        MEMORY[0x20F2E9420](v30, -1, -1);
      }

      (*(v56 + 8))(v7, v57);
LABEL_11:
      v41 = type metadata accessor for WorkoutVoiceAlert();
      return (*(*(v41 - 8) + 56))(v58, 1, 1, v41);
    }

    v47 = v25;
    v48 = v26;
    *v24 = 0;
    v24[8] = 1;
    (*(v21 + 104))(v24, *MEMORY[0x277D0A200], v20);
    v49 = type metadata accessor for WorkoutVoiceAlert.ValueType();
    (*(*(v49 - 8) + 56))(v19, 1, 1, v49);
    *v15 = v47;
    v15[1] = v48;
    v50 = MEMORY[0x277D0A208];
LABEL_18:
    (*(v12 + 104))(v15, *v50, v11);
    v53 = v58;
    WorkoutVoiceAlert.init(type:valueType:value:)();
    v54 = type metadata accessor for WorkoutVoiceAlert();
    return (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  }

  v43 = type metadata accessor for WorkoutVoiceAlert();
  v44 = *(*(v43 - 8) + 56);
  v45 = v43;
  v46 = v58;

  return v44(v46, 1, 1, v45);
}

uint64_t static WorkoutVoiceAlert.transformWorkoutSplit(workoutSplit:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for WorkoutVoiceAlert.Value();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertV9ValueTypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for WorkoutVoiceAlert.AlertType();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v32 - v19;
  if ([a1 type] && objc_msgSend(a1, sel_enabled))
  {
    v21 = [a1 type];
    v22 = MEMORY[0x277D0A1F0];
    if (v21 != 1)
    {
      v22 = MEMORY[0x277D0A1F8];
    }

    (*(v13 + 104))(v20, *v22, v12);
    (*(v13 + 16))(v17, v20, v12);
    v23 = type metadata accessor for WorkoutVoiceAlert.ValueType();
    (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
    [a1 value];
    *v7 = v24;
    (*(v4 + 104))(v7, *MEMORY[0x277D0A218], v3);
    v25 = v33;
    WorkoutVoiceAlert.init(type:valueType:value:)();
    (*(v13 + 8))(v20, v12);
    v26 = type metadata accessor for WorkoutVoiceAlert();
    return (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  }

  else
  {
    v28 = type metadata accessor for WorkoutVoiceAlert();
    v29 = *(*(v28 - 8) + 56);
    v30 = v28;
    v31 = v33;

    return v29(v31, 1, 1, v30);
  }
}

uint64_t outlined init with copy of WorkoutVoiceAlert?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertVSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutVoiceAlert?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence17WorkoutVoiceAlertVSgMd, &_s19FitnessIntelligence17WorkoutVoiceAlertVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WorkoutVoiceAlert?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void _HKWorkoutGoalType.displayName(formattingManager:)(void *a1, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass_];
      v4 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B462E90);
      v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v2 = swift_getObjCClassFromMetadata();
      v3 = [objc_opt_self() bundleForClass_];
      v4 = MEMORY[0x20F2E6C00](0xD000000000000023, 0x800000020B462E30);
      v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
      v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
LABEL_12:
      v13 = v6;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      return;
    }

LABEL_9:
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v10 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = MEMORY[0x20F2E6C00](0xD000000000000022, 0x800000020B462DE0);
    v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
    goto LABEL_12;
  }

  if (a2 == 2)
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v12 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B462E10);
    v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
    goto LABEL_12;
  }

  if (a2 != 3)
  {
    goto LABEL_9;
  }

  v8 = MEMORY[0x20F2E6C00](0xD000000000000021, 0x800000020B462E60);
  v4 = [a1 localizationKeyForEnergyBaseKey_];

  if (v4)
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v9 = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v5 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];
    goto LABEL_12;
  }

  __break(1u);
}

void LivePowerZone.__allocating_init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  swift_beginAccess();
  *(v10 + 48) = a5;
  v11 = floor(a3);
  v12 = floor(a4);
  if (v11 > v12)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v11;
    *(v10 + 24) = v12;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
  }
}

uint64_t LivePowerZone.isEqual(to:)(uint64_t a1)
{
  v2 = *v1;
  outlined init with copy of Any(a1, v7);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  v3 = v1[6];
  swift_beginAccess();
  if (v3 != *(v6 + 48))
  {

LABEL_5:
    v4 = 0;
    return v4 & 1;
  }

  *&v7[3] = v2;
  v7[0] = v6;

  v4 = Zone.isEqual(to:)(v7);

  __swift_destroy_boxed_opaque_existential_1Tm_9(v7);
  return v4 & 1;
}

uint64_t static LivePowerZone.minCanonicalPowerZones()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B440900;
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  swift_beginAccess();
  *(v1 + 48) = 0;
  *(v1 + 16) = xmmword_20B440910;
  *(v1 + 32) = xmmword_20B4322F0;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  swift_beginAccess();
  *(v2 + 48) = 0;
  *(v2 + 16) = xmmword_20B440920;
  *(v2 + 32) = xmmword_20B440930;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  swift_beginAccess();
  *(v3 + 48) = 0;
  *(v3 + 16) = xmmword_20B440940;
  *(v3 + 32) = xmmword_20B42FA20;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  swift_beginAccess();
  *(v4 + 48) = 0;
  *(v4 + 16) = xmmword_20B440950;
  *(v4 + 32) = xmmword_20B440960;
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 48) = 0;
  *(v5 + 16) = xmmword_20B440970;
  *(v5 + 32) = xmmword_20B440980;
  *(v0 + 64) = v5;
  return v0;
}

uint64_t static LivePowerZone.maxCanonicalPowerZones()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B440990;
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  swift_beginAccess();
  *(v1 + 48) = 0;
  *(v1 + 16) = xmmword_20B440910;
  *(v1 + 32) = xmmword_20B4409A0;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  swift_beginAccess();
  *(v2 + 48) = 0;
  *(v2 + 16) = xmmword_20B440920;
  *(v2 + 32) = xmmword_20B4409B0;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  swift_beginAccess();
  *(v3 + 48) = 0;
  *(v3 + 16) = xmmword_20B440940;
  *(v3 + 32) = xmmword_20B4409C0;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  swift_beginAccess();
  *(v4 + 48) = 0;
  *(v4 + 16) = xmmword_20B440950;
  *(v4 + 32) = xmmword_20B4409D0;
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 48) = 0;
  *(v5 + 16) = xmmword_20B4409E0;
  *(v5 + 32) = xmmword_20B4290B0;
  *(v0 + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 48) = 0;
  swift_beginAccess();
  *(v6 + 48) = 0;
  *(v6 + 16) = xmmword_20B4409F0;
  *(v6 + 32) = xmmword_20B440A00;
  *(v0 + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  swift_beginAccess();
  *(v7 + 48) = 0;
  *(v7 + 16) = xmmword_20B440A10;
  *(v7 + 32) = xmmword_20B440A20;
  *(v0 + 80) = v7;
  v8 = swift_allocObject();
  *(v8 + 48) = 0;
  swift_beginAccess();
  *(v8 + 48) = 0;
  *(v8 + 16) = xmmword_20B440A30;
  *(v8 + 32) = xmmword_20B440A40;
  *(v0 + 88) = v8;
  return v0;
}

void LivePowerZone.init(displaySpan:configuration:elapsedTimeInZone:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 48) = a5;
  v11 = floor(a3);
  v12 = floor(a4);
  if (v11 > v12)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
    *(v5 + 24) = v12;
    *(v5 + 32) = a1;
    *(v5 + 40) = a2;
  }
}

uint64_t LivePowerZone.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  outlined init with copy of Decoder(a1, v4);
  v2 = LiveZone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm_9(a1);
  return v2;
}

uint64_t LivePowerZone.init(from:)(void *a1)
{
  outlined init with copy of Decoder(a1, v4);
  v2 = LiveZone.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1Tm_9(a1);
  return v2;
}

uint64_t specialized static LivePowerZone.canonicals()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B440A50;
  type metadata accessor for LivePowerZone();
  v1 = swift_allocObject();
  *(v1 + 48) = 0;
  swift_beginAccess();
  *(v1 + 48) = 0;
  *(v1 + 16) = xmmword_20B440910;
  *(v1 + 32) = xmmword_20B440A60;
  *(v0 + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  swift_beginAccess();
  *(v2 + 48) = 0;
  *(v2 + 16) = xmmword_20B440920;
  *(v2 + 32) = xmmword_20B440A70;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 48) = 0;
  swift_beginAccess();
  *(v3 + 48) = 0;
  *(v3 + 16) = xmmword_20B440940;
  *(v3 + 32) = xmmword_20B440A80;
  *(v0 + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 48) = 0;
  swift_beginAccess();
  *(v4 + 48) = 0;
  *(v4 + 16) = xmmword_20B440950;
  *(v4 + 32) = xmmword_20B42C8E0;
  *(v0 + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 48) = 0;
  swift_beginAccess();
  *(v5 + 48) = 0;
  *(v5 + 16) = xmmword_20B4409E0;
  *(v5 + 32) = xmmword_20B440A90;
  *(v0 + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 48) = 0;
  swift_beginAccess();
  *(v6 + 48) = 0;
  *(v6 + 16) = xmmword_20B4409F0;
  *(v6 + 32) = xmmword_20B440AA0;
  *(v0 + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 48) = 0;
  swift_beginAccess();
  *(v7 + 48) = 0;
  *(v7 + 16) = xmmword_20B440AB0;
  *(v7 + 32) = xmmword_20B440AC0;
  *(v0 + 80) = v7;
  return v0;
}

WorkoutCore::DistanceSampler::AggregateSample __swiftcall DistanceSampler.AggregateSample.adding(_:)(HKQuantitySample a1)
{
  v3 = v2;
  v28 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v27 - v12;
  v14 = [v3 quantityType];
  v15 = [v3 quantity];
  v16 = [(objc_class *)a1.super.super.super.isa quantity];
  v17 = [v15 _quantityByAddingQuantity_];

  v18 = [v3 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = [(objc_class *)a1.super.super.super.isa endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Date._bridgeToObjectiveC()().super.isa;
  v21 = Date._bridgeToObjectiveC()().super.isa;
  v22 = [objc_opt_self() quantitySampleWithType:v14 quantity:v17 startDate:isa endDate:v21];

  v23 = *(v6 + 8);
  v23(v10, v5);
  v23(v13, v5);
  v25 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v24 = v22;
  }

  result.sample.super.super.super.isa = v24;
  result.sampleCount = v25;
  return result;
}

unint64_t DistanceSampler.samplesByType.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo14HKQuantityTypeC_SaySo0D6SampleCGtGMd, &_ss23_ContiguousArrayStorageCySo14HKQuantityTypeC_SaySo0D6SampleCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  v2 = *(v0 + 112);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples);
  v4 = *(v0 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_aggregateSample + 8);
  if (v4)
  {
    v5 = v2;

    v13 = v4;
    v6 = v4;
    v12 = MEMORY[0x277D84F90];
    v7 = v6;
    MEMORY[0x20F2E6F30]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v8 = v12;
  }

  else
  {
    v13 = 0;
    v9 = v2;

    v8 = MEMORY[0x277D84F90];
  }

  _s10Foundation4DateVSgWOhTm_10(&v13, &_sSo16HKQuantitySampleCSgMd, &_sSo16HKQuantitySampleCSgMR);
  specialized Array.append<A>(contentsOf:)(v8);
  *(inited + 40) = v3;
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo14HKQuantityTypeC_SaySo0C6SampleCGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  _s10Foundation4DateVSgWOhTm_10(inited + 32, &_sSo14HKQuantityTypeC_SaySo0A6SampleCGtMd, &_sSo14HKQuantityTypeC_SaySo0A6SampleCGtMR);
  return v10;
}

void DistanceSampler.updateStartDate(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v48 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v48 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v48 - v22;
  v24 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_didInsertFirstSampleOnStartDateUpdate;
  if ((*(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_didInsertFirstSampleOnStartDateUpdate) & 1) == 0)
  {
    if (*(v1 + 136))
    {
LABEL_5:
      v27 = v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDistance;
      *v27 = 0;
      *(v27 + 8) = 0;
      (*(v12 + 16))(v7, a1, v11);
      (*(v12 + 56))(v7, 0, 1, v11);
      v28 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_lastDate;
      swift_beginAccess();
      outlined assign with take of Date?(v7, v1 + v28);
      swift_endAccess();
      return;
    }

    v51 = a1;
    v25 = *(v1 + 128);
    v26 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_firstSampleEndDate;
    swift_beginAccess();
    outlined init with copy of Date?(v1 + v26, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      _s10Foundation4DateVSgWOhTm_10(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      a1 = v51;
      goto LABEL_5;
    }

    v49 = *(v12 + 32);
    v50 = v12 + 32;
    v49(v23, v10, v11);
    v48 = OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples;
    v29 = *(v1 + OBJC_IVAR____TtC11WorkoutCore15DistanceSampler_samples);
    if (v29 >> 62)
    {
      v34 = __CocoaSet.count.getter();
      v30 = v51;
      if (v34)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v30 = v51;
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_9:
        if ((v29 & 0xC000000000000001) != 0)
        {

          v31 = MEMORY[0x20F2E7A20](0, v29);
        }

        else
        {
          if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v31 = *(v29 + 32);
        }

        v32 = v1;
        v33 = [v31 startDate];

        static Date._unconditionallyBridgeFromObjectiveC(_:)();
        v49(v20, v16, v11);
        goto LABEL_15;
      }
    }

    v32 = v1;
    (*(v12 + 16))(v20, v30, v11);
LABEL_15:
    lazy protocol witness table accessor for type Date and conformance Date();
    if (dispatch thunk of static Comparable.< infix(_:_:)())
    {
      v35 = *(v12 + 8);
      v35(v20, v11);
      v35(v23, v11);
    }

    else
    {
      v36 = [objc_opt_self() meterUnit];
      v37 = [objc_opt_self() quantityWithUnit:v36 doubleValue:v25];

      v38 = v32;
      v39 = *(v32 + 112);
      v40 = v37;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v42 = Date._bridgeToObjectiveC()().super.isa;
      v43 = [objc_opt_self() quantitySampleWithType:v39 quantity:v40 startDate:isa endDate:v42];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_20B425990;
      *(v44 + 32) = v43;
      v45 = v48;
      v52 = v44;

      specialized Array.append<A>(contentsOf:)(v46);

      v47 = *(v12 + 8);
      v47(v20, v11);
      v47(v23, v11);
      *(v38 + v45) = v52;

      *(v38 + v24) = 1;
    }
  }
}