unint64_t Apple_Workout_WorkoutAlert.workoutKitZoneRepresentation(alertMetric:)@<X0>(void *a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v40 - v3;
  v4 = type metadata accessor for Apple_Workout_PowerAlert(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = type metadata accessor for Apple_Workout_ZoneValue(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = (&v40 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v22 = type metadata accessor for Apple_Workout_HeartRateAlert(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8) != 1)
  {
    goto LABEL_4;
  }

  v25 = *v1;
  if (*v1 <= 3)
  {
    if ((v25 - 1) >= 3)
    {
LABEL_4:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      v27 = 0;
LABEL_21:
      *v26 = v27;
      return swift_willThrow();
    }

LABEL_20:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    v27 = 1;
    goto LABEL_21;
  }

  if (v25 == 4)
  {
    v30 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v1 + *(v30 + 24), v18, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v31 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
    if ((*(*(v31 - 8) + 48))(v18, 1, v31) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v18, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      goto LABEL_20;
    }

    if (swift_getEnumCaseMultiPayload() == 2)
    {
      outlined init with take of Apple_Workout_PowerAlert(v18, v6, type metadata accessor for Apple_Workout_PowerAlert);
      v32 = v42;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v6, v42, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v6, type metadata accessor for Apple_Workout_PowerAlert);
      v33 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
      if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v32, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
        goto LABEL_20;
      }

      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v35 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget;
        v36 = v32;
        goto LABEL_19;
      }

      outlined init with take of Apple_Workout_PowerAlert(v32, v12, type metadata accessor for Apple_Workout_ZoneValue);
      v38 = *v12;
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v12, type metadata accessor for Apple_Workout_ZoneValue);
      v39 = v41;
      v41[3] = &type metadata for PowerZoneAlert;
      result = lazy protocol witness table accessor for type PowerZoneAlert and conformance PowerZoneAlert();
      goto LABEL_28;
    }

    v35 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
    v36 = v18;
LABEL_19:
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v36, v35);
    goto LABEL_20;
  }

  if (v25 != 5)
  {
    goto LABEL_20;
  }

  v28 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v1 + *(v28 + 24), v21, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v29 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v29 - 8) + 48))(v21, 1, v29) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v21, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v35 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
    v36 = v21;
    goto LABEL_19;
  }

  outlined init with take of Apple_Workout_PowerAlert(v21, v24, type metadata accessor for Apple_Workout_HeartRateAlert);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v24, v9, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v24, type metadata accessor for Apple_Workout_HeartRateAlert);
  v34 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  if ((*(*(v34 - 8) + 48))(v9, 1, v34) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v9, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    goto LABEL_20;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget;
    v36 = v9;
    goto LABEL_19;
  }

  outlined init with take of Apple_Workout_PowerAlert(v9, v15, type metadata accessor for Apple_Workout_ZoneValue);
  v38 = *v15;
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v15, type metadata accessor for Apple_Workout_ZoneValue);
  v39 = v41;
  v41[3] = &type metadata for HeartRateZoneAlert;
  result = lazy protocol witness table accessor for type HeartRateZoneAlert and conformance HeartRateZoneAlert();
LABEL_28:
  v39[4] = result;
  *v39 = v38;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
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

uint64_t outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_PowerAlert(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type PowerZoneAlert and conformance PowerZoneAlert()
{
  result = lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert;
  if (!lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert;
  if (!lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert;
  if (!lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZoneAlert and conformance PowerZoneAlert);
  }

  return result;
}

uint64_t Apple_Workout_Internal_ScheduledWorkoutPlan.workoutKitRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v45 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v41 - v7;
  v8 = type metadata accessor for Date();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for WorkoutPlan(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v1 + *(type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0) + 20));
  v21 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutPlan?(v20 + v21, v12);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    *v16 = 0;
    *(v16 + 1) = 0xE000000000000000;
    v23 = v13[5];
    v24 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
    (*(*(v24 - 8) + 56))(&v16[v23], 1, 1, v24);
    *&v16[v13[6]] = MEMORY[0x277D84F90];
    v25 = &v16[v13[7]];
    *v25 = 0;
    v25[8] = 1;
    *&v16[v13[8]] = 0;
    *&v16[v13[9]] = 0;
    UnknownStorage.init()();
    v26 = v13[11];
    v27 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
    v28 = &v16[v26];
    v3 = v2;
    (*(*(v27 - 8) + 56))(v28, 1, 1, v27);
    v29 = &v16[v13[12]];
    *v29 = 0;
    *(v29 + 1) = 0;
    if (v22(v12, 1, v13) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutPlan?(v12);
    }
  }

  else
  {
    outlined init with take of WorkoutPlan(v12, v16, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  result = WorkoutPlan.init(from:)(v16, v19);
  if (!v3)
  {
    swift_beginAccess();
    Date.init(timeIntervalSince1970:)();
    v31 = v20 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
    swift_beginAccess();
    if (*(v31 + 8))
    {
      v32 = 1;
      v33 = v41;
    }

    else
    {
      v33 = v41;
      Date.init(timeIntervalSince1970:)();
      v32 = 0;
    }

    v35 = v42;
    v34 = v43;
    v36 = *(v42 + 56);
    v36(v33, v32, 1, v43);
    v37 = v45;
    outlined init with take of WorkoutPlan(v19, v45, type metadata accessor for WorkoutPlan);
    v38 = v44;
    outlined init with take of Date?(v33, v44);
    v39 = type metadata accessor for ScheduledWorkoutPlan(0);
    v40 = *(v39 + 24);
    v36(v37 + v40, 1, 1, v34);
    (*(v35 + 32))(v37 + *(v39 + 20), v46, v34);
    return outlined assign with take of Date?(v38, v37 + v40);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutPlan?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutPlan?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WorkoutPlan(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(a1, a2, a3);
  if (!v4)
  {
    v7 = type metadata accessor for WorkoutStep(0);
    outlined init with copy of WorkoutStep?(v3 + *(v7 + 20), v10, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A13AlertProtable_pMd, &_s10WorkoutKit0A13AlertProtable_pMR);
      if (swift_dynamicCast())
      {
        v8 = *(&v13 + 1);
        if (*(&v13 + 1))
        {
          v9 = v14;
          __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
          (*(v9 + 32))(a1, a2, 1, v8, v9);
          __swift_destroy_boxed_opaque_existential_0Tm(&v12);
          return;
        }
      }

      else
      {
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
      }
    }

    else
    {
      outlined destroy of WorkoutStep?(v10, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
    }

    outlined destroy of WorkoutStep?(&v12, &_s10WorkoutKit0A13AlertProtable_pSgMd, &_s10WorkoutKit0A13AlertProtable_pSgMR);
  }
}

uint64_t static CustomWorkout.supportsActivity(_:)(uint64_t a1)
{
  if (qword_284E21CD8 == a1 || unk_284E21CE0 == a1 || qword_284E21CE8 == a1)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v4 = swift_allocError();
    *v5 = a1;
    *(v5 + 8) = 0;
  }

  else
  {
    if (a1 != 46)
    {
      return 1;
    }

    v19[3] = &type metadata for WorkoutKitFeatures;
    v19[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v19[0]) = 0;
    v16 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    if (v16)
    {
      return 1;
    }

    type metadata accessor for CustomValidationError(0);
    lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError, &protocol conformance descriptor for CustomValidationError);
    v4 = swift_allocError();
    *v18 = 46;
    swift_storeEnumTagMultiPayload();
  }

  swift_willThrow();
  if (one-time initialization token for validations != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WorkoutKitLog.validations);
  v7 = v4;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    v19[5] = v4;
    v12 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v13 = String.init<A>(describing:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_23B5E7000, v8, v9, "Not supported due to %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEA1330](v11, -1, -1);
    MEMORY[0x23EEA1330](v10, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t static CustomWorkout.supportsAlert(_:activity:location:)(void *a1, uint64_t a2, uint64_t a3)
{
  specialized static CustomWorkout.validateActivity(_:)(a2);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  return (*(v7 + 24))(a2, a3, v6, v7) & 1;
}

void _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a2;
  v55 = a3;
  v61 = a1;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v60 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v3;
  outlined init with copy of WorkoutStep(v3, v19, type metadata accessor for WorkoutGoal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v38 = *(v19 + 1);
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
      v39 = v38;
      Measurement.init(value:unit:)();
      v40 = v58;
      Measurement.value.getter();
      if (v41 <= 0.0)
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v59 + 8))(v8, v40);
      }

      else
      {
        (*(v59 + 8))(v8, v40);
      }
    }

    else
    {
      v25 = *(v19 + 1);
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
      v26 = v25;
      Measurement.init(value:unit:)();
      switch(v61)
      {
        case 1:
        case 3:
        case 13:
        case 21:
        case 24:
        case 27:
        case 31:
        case 36:
        case 37:
        case 46:
        case 52:
        case 60:
        case 61:
        case 67:
        case 70:
        case 71:
        case 75:
          goto LABEL_11;
        case 25:
        case 35:
        case 39:
        case 41:
          if (v54 == 2)
          {
            type metadata accessor for GoalValidationError(0);
            lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
            swift_allocError();
            *v47 = v61;
            v47[1] = 2;
LABEL_26:
            swift_storeEnumTagMultiPayload();
            swift_willThrow();

            (*(v60 + 8))(v16, v57);
          }

          else
          {
LABEL_11:
            v27 = v57;
            Measurement.value.getter();
            if (v28 <= 0.0)
            {
              type metadata accessor for GoalValidationError(0);
              lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
              swift_allocError();
              swift_storeEnumTagMultiPayload();
              swift_willThrow();

              (*(v60 + 8))(v16, v27);
            }

            else
            {
              (*(v60 + 8))(v16, v27);
            }
          }

          break;
        default:
          type metadata accessor for GoalValidationError(0);
          lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
          swift_allocError();
          v49 = v48;
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
          v51 = *(v50 + 48);
          v52 = *(v50 + 64);
          outlined init with copy of WorkoutStep(v56, v49, type metadata accessor for WorkoutGoal);
          *(v49 + v51) = v61;
          *(v49 + v52) = v54;
          goto LABEL_26;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v29 = *(v19 + 1);
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
      v30 = v29;
      Measurement.init(value:unit:)();
      type metadata accessor for CustomValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError, &protocol conformance descriptor for CustomValidationError);
      swift_allocError();
      v32 = v31;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v34 = *(v33 + 48);
      v35 = *(v33 + 64);
      outlined init with copy of WorkoutStep(v56, v32, type metadata accessor for WorkoutGoal);
      *(v32 + v34) = v61;
      *(v32 + v35) = v54;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v36 = *(v53 + 8);
      v37 = v11;
LABEL_20:
      v36(v37, v9);
      return;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
      v9 = v57;
      (*(v60 + 32))(v13, v19, v57);
      v22 = v58;
      (*(v59 + 32))(v5, &v19[v21], v58);
      if (v61 == 46 && v55 == 1)
      {
        Measurement.value.getter();
        if (v23 > 0.0)
        {
          Measurement.value.getter();
          if (v24 > 0.0)
          {
            goto LABEL_19;
          }
        }

        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        swift_allocError();
      }

      else
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        swift_allocError();
        v43 = v42;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMR);
        v45 = *(v44 + 48);
        v46 = *(v44 + 64);
        outlined init with copy of WorkoutStep(v56, v43, type metadata accessor for WorkoutGoal);
        *(v43 + v45) = v61;
        *(v43 + v46) = v55;
      }

      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_19:
      (*(v59 + 8))(v5, v22);
      v36 = *(v60 + 8);
      v37 = v13;
      goto LABEL_20;
    }
  }
}

void _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v41 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v12 = &v40 - v11;
  v13 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3;
  outlined init with copy of WorkoutStep(v3, v15, type metadata accessor for WorkoutGoal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
        (*(v45 + 8))(v15, v43);
        (*(v44 + 8))(&v15[v17], v5);
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        swift_allocError();
        v19 = v18;
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMR);
        v21 = *(v20 + 48);
        v22 = *(v20 + 64);
        outlined init with copy of WorkoutStep(v42, v19, type metadata accessor for WorkoutGoal);
        *(v19 + v21) = v46;
        *(v19 + v22) = v41;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      return;
    }

    v29 = *(v15 + 1);
    type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
    v25 = v29;
    Measurement.init(value:unit:)();
    Measurement.value.getter();
    if (v30 <= 0.0)
    {
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v40 + 8))(v10, v8);
      return;
    }

    (*(v40 + 8))(v10, v8);
LABEL_13:

    return;
  }

  if (EnumCaseMultiPayload)
  {
    v31 = *(v15 + 1);
    type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    v25 = v31;
    Measurement.init(value:unit:)();
    Measurement.value.getter();
    if (v32 <= 0.0)
    {
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v44 + 8))(v7, v5);
      return;
    }

    (*(v44 + 8))(v7, v5);
    goto LABEL_13;
  }

  v23 = a2;
  v24 = *(v15 + 1);
  type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  v25 = v24;
  Measurement.init(value:unit:)();
  v26 = v46;
  switch(v46)
  {
    case 1:
    case 3:
    case 13:
    case 21:
    case 24:
    case 27:
    case 31:
    case 36:
    case 37:
    case 46:
    case 52:
    case 60:
    case 61:
    case 67:
    case 70:
    case 71:
    case 75:
      goto LABEL_7;
    case 25:
    case 35:
    case 39:
    case 41:
      if (a2 == 2)
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        swift_allocError();
        *v33 = v26;
        v33[1] = 2;
LABEL_20:
        swift_storeEnumTagMultiPayload();
        v39 = v43;
        swift_willThrow();

        (*(v45 + 8))(v12, v39);
      }

      else
      {
LABEL_7:
        v27 = v43;
        Measurement.value.getter();
        if (v28 > 0.0)
        {
          (*(v45 + 8))(v12, v27);
          goto LABEL_13;
        }

        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        (*(v45 + 8))(v12, v27);
      }

      break;
    default:
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
      swift_allocError();
      v35 = v34;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v37 = *(v36 + 48);
      v38 = *(v36 + 64);
      outlined init with copy of WorkoutStep(v42, v35, type metadata accessor for WorkoutGoal);
      *(v35 + v37) = v26;
      *(v35 + v38) = v23;
      goto LABEL_20;
  }
}

uint64_t CustomWorkout.activity.setter(uint64_t result)
{
  *v1 = result;
  if (qword_284E21CD8 == result || unk_284E21CE0 == result || qword_284E21CE8 == result)
  {
    v5 = result;
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v6 = swift_allocError();
    *v7 = v5;
    *(v7 + 8) = 0;
LABEL_13:
    swift_willThrow();
    v10[0] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (result == 46)
  {
    v10[3] = &type metadata for WorkoutKitFeatures;
    v10[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v10[0]) = 0;
    v4 = isFeatureEnabled(_:)();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v10);
    if ((v4 & 1) == 0)
    {
      type metadata accessor for CustomValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError, &protocol conformance descriptor for CustomValidationError);
      v6 = swift_allocError();
      *v8 = 46;
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    }
  }

  return result;
}

void (*CustomWorkout.activity.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  return CustomWorkout.activity.modify;
}

void CustomWorkout.activity.modify(void **a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = **(v2 + 40);
    if (qword_284E21CD8 == v3 || unk_284E21CE0 == v3 || qword_284E21CE8 == v3)
    {
      lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
      v7 = swift_allocError();
      *v8 = v3;
      *(v8 + 8) = 0;
    }

    else
    {
      if (v3 != 46)
      {
        goto LABEL_11;
      }

      *(v2 + 24) = &type metadata for WorkoutKitFeatures;
      *(v2 + 32) = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
      *v2 = 0;
      v6 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v2);
      if (v6)
      {
        goto LABEL_11;
      }

      type metadata accessor for CustomValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError, &protocol conformance descriptor for CustomValidationError);
      v7 = swift_allocError();
      *v9 = 46;
      swift_storeEnumTagMultiPayload();
    }

    swift_willThrow();
    *v2 = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_11:

  free(v2);
}

void key path setter for CustomWorkout.location : CustomWorkout(void *a1, uint64_t a2)
{
  *(a2 + 8) = *a1;
  CustomWorkout.validate()();
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void CustomWorkout.location.setter(uint64_t a1)
{
  *(v1 + 8) = a1;
  CustomWorkout.validate()();
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CustomWorkout.validate()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  v2 = *v0;
  [v1 setActivityType_];
  [v1 setLocationType_];
  [v1 setSwimmingLocationType_];
  v3 = type metadata accessor for CustomWorkout(0);
  specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(v1, v0 + v3[7], *(v0 + v3[8]), v0 + v3[9]);
}

void CustomWorkout.location.modify(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    CustomWorkout.validate()();
    if (v3)
    {
      *a1 = v3;
      v4 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      String.init<A>(describing:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }
}

uint64_t CustomWorkout.displayName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CustomWorkout.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CustomWorkout.warmup.setter(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutStep(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for CustomWorkout(0) + 28);
  outlined assign with copy of WorkoutStep?(a1, v1 + v7);
  if ((*(v4 + 48))(v1 + v7, 1, v3))
  {
    return outlined destroy of WorkoutStep?(a1, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }

  outlined init with copy of WorkoutStep(v1 + v7, v6, type metadata accessor for WorkoutStep);
  _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(*v1, v1[1], *v1 == 46);
  outlined destroy of WorkoutStep?(a1, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  return outlined destroy of WorkoutStep(v6, type metadata accessor for WorkoutStep);
}

void (*CustomWorkout.warmup.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v4 + 8) = v1;
  v6 = type metadata accessor for WorkoutStep(0);
  *(v5 + 16) = v6;
  v7 = *(v6 - 8);
  *(v5 + 24) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 32) = v8;
  *(v5 + 40) = *(type metadata accessor for CustomWorkout(0) + 28);
  return CustomWorkout.warmup.modify;
}

void CustomWorkout.warmup.modify(uint64_t *a1, char a2)
{
  CustomWorkout.warmup.modify(a1, a2);
}

{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 8);
    if (!(*(*(v2 + 24) + 48))(v4 + v3, 1, *(v2 + 16)))
    {
      outlined init with copy of WorkoutStep(v4 + v3, *(v2 + 32), type metadata accessor for WorkoutStep);
      _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(*v4, v4[1], *v4 == 46);
      outlined destroy of WorkoutStep(*(v2 + 32), type metadata accessor for WorkoutStep);
    }
  }

  free(*(v2 + 32));

  free(v2);
}

uint64_t CustomWorkout.blocks.getter()
{
  type metadata accessor for CustomWorkout(0);
}

uint64_t key path setter for CustomWorkout.blocks : CustomWorkout(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for CustomWorkout(0) + 32);

  *(a2 + v4) = v3;

  specialized Sequence.forEach(_:)(v5, a2);
}

uint64_t CustomWorkout.blocks.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CustomWorkout(0) + 32);

  *(v1 + v3) = a1;

  specialized Sequence.forEach(_:)(v4, v1);
}

void closure #1 in CustomWorkout.blocks.didset(uint64_t *a1, uint64_t *a2)
{
  v20 = type metadata accessor for IntervalStep(0);
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *a2;
  v21 = *a2 == 46;
  v19 = *(v8 + 16);
  if (v19)
  {
    v10 = 0;
    v27 = a2[1];
    v11 = &_s10WorkoutKit0A5Alert_pSgMR;
    v17 = v8;
    v18 = v5;
    do
    {
      if (v10 >= *(v8 + 16))
      {
        __break(1u);
        return;
      }

      v12 = v11;
      outlined init with copy of WorkoutStep(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, type metadata accessor for IntervalStep);
      v13 = &v7[*(v20 + 20)];
      _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(v9, v27, v21);
      if (v2)
      {
        outlined destroy of WorkoutStep(v7, type metadata accessor for IntervalStep);
        return;
      }

      v14 = &v13[*(type metadata accessor for WorkoutStep(0) + 20)];
      v11 = v12;
      outlined init with copy of WorkoutStep?(v14, v22, &_s10WorkoutKit0A5Alert_pSgMd, v12);
      if (v23)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A13AlertProtable_pMd, &_s10WorkoutKit0A13AlertProtable_pMR);
        if (swift_dynamicCast())
        {
          v15 = *(&v25 + 1);
          v11 = v12;
          if (*(&v25 + 1))
          {
            v16 = v26;
            __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
            (*(v16 + 32))(v9, v27, 1, v15, v16);
            __swift_destroy_boxed_opaque_existential_0Tm(&v24);
            v8 = v17;
            v5 = v18;
            v11 = v12;
            goto LABEL_5;
          }
        }

        else
        {
          v26 = 0;
          v24 = 0u;
          v25 = 0u;
          v11 = v12;
        }
      }

      else
      {
        outlined destroy of WorkoutStep?(v22, &_s10WorkoutKit0A5Alert_pSgMd, v12);
        v24 = 0u;
        v25 = 0u;
        v26 = 0;
      }

      outlined destroy of WorkoutStep?(&v24, &_s10WorkoutKit0A13AlertProtable_pSgMd, &_s10WorkoutKit0A13AlertProtable_pSgMR);
LABEL_5:
      ++v10;
      outlined destroy of WorkoutStep(v7, type metadata accessor for IntervalStep);
    }

    while (v19 != v10);
  }
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = (result + 40);
    do
    {
      v7 = v5;
      v8 = *v6;
      v9[0] = *(v6 - 1);
      v9[1] = v8;

      closure #1 in CustomWorkout.blocks.didset(v9, a2);

      if (v2)
      {
        break;
      }

      v5 = v7 - 1;
      v6 += 2;
    }

    while (v7);
  }

  return result;
}

uint64_t (*CustomWorkout.blocks.modify(uint64_t a1))(uint64_t result, char a2)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(type metadata accessor for CustomWorkout(0) + 32);
  return CustomWorkout.blocks.modify;
}

uint64_t CustomWorkout.blocks.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(result + 8);

    specialized Sequence.forEach(_:)(v3, v2);
  }

  return result;
}

uint64_t key path setter for CustomWorkout.warmup : CustomWorkout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  outlined init with copy of WorkoutStep?(a1, &v11 - v8, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  return a5(v9);
}

uint64_t CustomWorkout.cooldown.setter(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutStep(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(type metadata accessor for CustomWorkout(0) + 36);
  outlined assign with copy of WorkoutStep?(a1, v1 + v7);
  if ((*(v4 + 48))(v1 + v7, 1, v3))
  {
    return outlined destroy of WorkoutStep?(a1, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }

  outlined init with copy of WorkoutStep(v1 + v7, v6, type metadata accessor for WorkoutStep);
  _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(*v1, v1[1], *v1 == 46);
  outlined destroy of WorkoutStep?(a1, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  return outlined destroy of WorkoutStep(v6, type metadata accessor for WorkoutStep);
}

void (*CustomWorkout.cooldown.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v4 + 8) = v1;
  v6 = type metadata accessor for WorkoutStep(0);
  *(v5 + 16) = v6;
  v7 = *(v6 - 8);
  *(v5 + 24) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  *(v5 + 32) = v8;
  *(v5 + 40) = *(type metadata accessor for CustomWorkout(0) + 36);
  return CustomWorkout.cooldown.modify;
}

uint64_t CustomWorkout.init(activity:location:displayName:warmup:blocks:cooldown:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v31 = a6;
  v34 = a3;
  v35 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v19 setActivityType_];
  [v19 setLocationType_];
  [v19 setSwimmingLocationType_];
  v33 = a5;
  outlined init with copy of WorkoutStep?(a5, v18, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v32 = a7;
  outlined init with copy of WorkoutStep?(a7, v15, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v20 = type metadata accessor for CustomWorkout(0);
  v21 = v20[7];
  v22 = type metadata accessor for WorkoutStep(0);
  v23 = *(*(v22 - 8) + 56);
  v30 = v21;
  v23(&a8[v21], 1, 1, v22);
  v24 = v20[9];
  v23(&a8[v24], 1, 1, v22);
  v25 = v31;
  specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(v19, v18, v31, v15);
  *a8 = [v19 activityType];
  v26 = [v19 locationType];

  outlined destroy of WorkoutStep?(v32, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  outlined destroy of WorkoutStep?(v33, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v28 = v34;
  v27 = v35;
  *(a8 + 1) = v26;
  *(a8 + 2) = v28;
  *(a8 + 3) = v27;
  outlined assign with take of WorkoutStep?(v18, &a8[v30], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  *&a8[v20[8]] = v25;
  return outlined assign with take of WorkoutStep?(v15, &a8[v24], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
}

uint64_t CustomWorkout.init(configuration:displayName:warmup:blocks:cooldown:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v11 = type metadata accessor for CustomWorkout(0);
  v12 = v11[7];
  v13 = type metadata accessor for WorkoutStep(0);
  v14 = *(*(v13 - 8) + 56);
  v14(&a7[v12], 1, 1, v13);
  v21 = v11[9];
  v14(&a7[v21], 1, 1, v13);
  specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(a1, a4, a5, a6);
  if (v19)
  {

    outlined destroy of WorkoutStep?(a6, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    outlined destroy of WorkoutStep?(a4, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    outlined destroy of WorkoutStep?(&a7[v12], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    return outlined destroy of WorkoutStep?(&a7[v21], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }

  else
  {
    *a7 = [a1 activityType];
    v16 = [a1 locationType];

    *(a7 + 1) = v16;
    *(a7 + 2) = a2;
    *(a7 + 3) = a3;
    outlined assign with take of WorkoutStep?(a4, &a7[v12], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    *&a7[v11[8]] = a5;
    return outlined assign with take of WorkoutStep?(a6, &a7[v21], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }
}

uint64_t CustomWorkout.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v143 = type metadata accessor for CustomWorkout(0);
  MEMORY[0x28223BE20](v143);
  v144 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for WorkoutStep(0);
  v151 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v166 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for Apple_Workout_IntervalStep(0);
  v170 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v175 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = type metadata accessor for IntervalStep(0);
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v165 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for Apple_Workout_IntervalBlock(0);
  v157 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v152 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v8 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v138 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v160 = &v134 - v11;
  MEMORY[0x28223BE20](v12);
  v161 = &v134 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v140 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v172 = &v134 - v17;
  MEMORY[0x28223BE20](v18);
  v145 = &v134 - v19;
  MEMORY[0x28223BE20](v20);
  v158 = &v134 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v134 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  MEMORY[0x28223BE20](v25 - 8);
  v142 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v141 = &v134 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v134 - v30;
  MEMORY[0x28223BE20](v31);
  v148 = &v134 - v32;
  MEMORY[0x28223BE20](v33);
  v150 = &v134 - v34;
  MEMORY[0x28223BE20](v35);
  v159 = &v134 - v36;
  v37 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  v38 = *(type metadata accessor for Apple_Workout_CustomWorkoutComposition(0) + 20);
  v153 = a1;
  v39 = *(a1 + v38);
  swift_beginAccess();
  [v37 setActivityType_];
  swift_beginAccess();
  if ((*(v39 + 24) & 1) == 0)
  {
    [v37 setLocationType_];
  }

  v155 = v37;
  v40 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  swift_beginAccess();
  outlined init with copy of WorkoutStep?(v39 + v40, v24, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v41 = *(v8 + 48);
  v42 = v171;
  v43 = v41(v24, 1, v171);
  outlined destroy of WorkoutStep?(v24, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  v168 = v8 + 48;
  v154 = v39;
  v169 = v41;
  if (v43 == 1)
  {
    v136 = *(v151 + 56);
    v136(v159, 1, 1, v156);
    v44 = v162;
    v45 = v160;
  }

  else
  {
    v46 = v39 + v40;
    v47 = v158;
    outlined init with copy of WorkoutStep?(v46, v158, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v41(v47, 1, v42) == 1)
    {
      v48 = v161;
      UnknownStorage.init()();
      v49 = v42[5];
      v50 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
      (*(*(v50 - 8) + 56))(v48 + v49, 1, 1, v50);
      v51 = v42[6];
      v52 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
      (*(*(v52 - 8) + 56))(v48 + v51, 1, 1, v52);
      v53 = (v48 + v42[7]);
      *v53 = 0;
      v53[1] = 0;
      v54 = v169(v47, 1, v42);
      v55 = v155;
      v56 = v150;
      v45 = v160;
      if (v54 != 1)
      {
        outlined destroy of WorkoutStep?(v47, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      }
    }

    else
    {
      _s10WorkoutKit0A4StepVWObTm_0(v47, v161, type metadata accessor for Apple_Workout_WorkoutStep);
      v55 = v155;
      v56 = v150;
      v45 = v160;
    }

    v57 = v162;
    Apple_Workout_WorkoutStep.workoutKitRepresentation.getter(v56);
    v44 = v57;
    v58 = v156;
    if (v57)
    {
      outlined destroy of WorkoutStep(v161, type metadata accessor for Apple_Workout_WorkoutStep);

      goto LABEL_51;
    }

    outlined destroy of WorkoutStep(v161, type metadata accessor for Apple_Workout_WorkoutStep);
    v136 = *(v151 + 56);
    v136(v56, 0, 1, v58);
    outlined init with take of WorkoutStep?(v56, v159);
  }

  v59 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  v60 = v154;
  swift_beginAccess();
  v61 = *(v60 + v59);
  v62 = *(v61 + 16);
  v63 = MEMORY[0x277D84F90];
  if (!v62)
  {
    v158 = MEMORY[0x277D84F90];
LABEL_40:
    v96 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
    v97 = v154;
    swift_beginAccess();
    v98 = v145;
    outlined init with copy of WorkoutStep?(v97 + v96, v145, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    v99 = v171;
    v100 = v169;
    v101 = v169(v98, 1, v171);
    outlined destroy of WorkoutStep?(v98, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v101 == 1)
    {
      v162 = v44;
      v102 = v148;
      v103 = v156;
      v104 = v136;
      v136(v148, 1, 1, v156);
      v105 = v155;
LABEL_53:
      v120 = v154;
      swift_beginAccess();
      v121 = *(v120 + 32);
      v122 = *(v120 + 40);
      v171 = v121;

      [v105 setSwimmingLocationType_];
      v123 = v141;
      outlined init with copy of WorkoutStep?(v159, v141, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      v124 = v102;
      v125 = v142;
      outlined init with copy of WorkoutStep?(v124, v142, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      v126 = v143;
      v127 = v144;
      v172 = *(v143 + 28);
      v104(&v144[v172], 1, 1, v103);
      v175 = *(v126 + 36);
      v104(&v127[v175], 1, 1, v103);
      v128 = v158;
      v129 = v162;
      specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(v105, v123, v158, v125);
      v162 = v129;
      if (!v129)
      {
        *v127 = [v105 activityType];
        v131 = v126;
        v132 = [v105 locationType];

        outlined destroy of WorkoutStep?(v148, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
        outlined destroy of WorkoutStep?(v159, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
        v133 = v171;
        *(v127 + 1) = v132;
        *(v127 + 2) = v133;
        *(v127 + 3) = v122;
        outlined assign with take of WorkoutStep?(v123, &v127[v172], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
        *&v127[*(v131 + 32)] = v128;
        outlined assign with take of WorkoutStep?(v125, &v127[v175], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
        _s10WorkoutKit0A4StepVWObTm_0(v127, v137, type metadata accessor for CustomWorkout);
        return outlined destroy of WorkoutStep(v153, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
      }

      outlined destroy of WorkoutStep?(v125, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      outlined destroy of WorkoutStep?(v123, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      outlined destroy of WorkoutStep?(v148, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      outlined destroy of WorkoutStep?(v159, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      outlined destroy of WorkoutStep?(&v127[v172], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      outlined destroy of WorkoutStep?(&v127[v175], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      v107 = v153;
      return outlined destroy of WorkoutStep(v107, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    }

    v109 = v97 + v96;
    v110 = v140;
    outlined init with copy of WorkoutStep?(v109, v140, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    if (v100(v110, 1, v99) == 1)
    {
      v111 = v138;
      UnknownStorage.init()();
      v112 = v99[5];
      v113 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
      (*(*(v113 - 8) + 56))(v111 + v112, 1, 1, v113);
      v114 = v99[6];
      v115 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
      (*(*(v115 - 8) + 56))(v111 + v114, 1, 1, v115);
      v116 = (v111 + v99[7]);
      *v116 = 0;
      v116[1] = 0;
      v117 = v100(v110, 1, v99);
      v102 = v148;
      v105 = v155;
      if (v117 != 1)
      {
        outlined destroy of WorkoutStep?(v110, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
      }
    }

    else
    {
      v111 = v138;
      _s10WorkoutKit0A4StepVWObTm_0(v110, v138, type metadata accessor for Apple_Workout_WorkoutStep);
      v102 = v148;
      v105 = v155;
    }

    v118 = v139;
    Apple_Workout_WorkoutStep.workoutKitRepresentation.getter(v139);
    v119 = v136;
    v103 = v156;
    if (!v44)
    {
      v162 = 0;
      outlined destroy of WorkoutStep(v111, type metadata accessor for Apple_Workout_WorkoutStep);
      v119(v118, 0, 1, v103);
      outlined init with take of WorkoutStep?(v118, v102);
      v104 = v119;
      goto LABEL_53;
    }

    outlined destroy of WorkoutStep(v111, type metadata accessor for Apple_Workout_WorkoutStep);
    outlined destroy of WorkoutStep?(v159, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
LABEL_51:
    v107 = v153;
    return outlined destroy of WorkoutStep(v107, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
  }

  v174 = MEMORY[0x277D84F90];

  v135 = v62;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62, 0);
  v64 = 0;
  v65 = v174;
  v147 = v61 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
  v66 = v152;
  v146 = v61;
  while (v64 < *(v61 + 16))
  {
    v158 = v65;
    v67 = *(v157 + 72);
    v150 = v64;
    outlined init with copy of WorkoutStep(v147 + v67 * v64, v66, type metadata accessor for Apple_Workout_IntervalBlock);
    v68 = *v66;
    v69 = *(*v66 + 16);
    if (v69)
    {
      v173 = v63;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v69, 0);
      v70 = 0;
      v63 = v173;
      v162 = v68 + ((*(v170 + 80) + 32) & ~*(v170 + 80));
      v161 = v68;
      v160 = v69;
      while (v70 < *(v68 + 16))
      {
        v71 = v175;
        outlined init with copy of WorkoutStep(v162 + *(v170 + 72) * v70, v175, type metadata accessor for Apple_Workout_IntervalStep);
        v72 = *(v71 + *(v167 + 20));
        swift_beginAccess();
        if (*(v72 + 24) != 1)
        {
          goto LABEL_42;
        }

        v73 = *(v72 + 16);
        if (v73 == 1)
        {
          v74 = 0;
        }

        else
        {
          if (v73 != 2)
          {
LABEL_42:

            lazy protocol witness table accessor for type ImportError and conformance ImportError();
            swift_allocError();
            *v106 = 0;
            swift_willThrow();

LABEL_44:
            v107 = v153;
            v108 = v152;
            outlined destroy of WorkoutStep?(v159, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
            outlined destroy of WorkoutStep(v175, type metadata accessor for Apple_Workout_IntervalStep);
            outlined destroy of WorkoutStep(v108, type metadata accessor for Apple_Workout_IntervalBlock);

            return outlined destroy of WorkoutStep(v107, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
          }

          v74 = 1;
        }

        v75 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
        swift_beginAccess();
        v76 = v72 + v75;
        v77 = v172;
        outlined init with copy of WorkoutStep?(v76, v172, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
        v78 = v171;
        v79 = v169;
        if (v169(v77, 1, v171) == 1)
        {
          UnknownStorage.init()();
          v80 = v78[5];
          v81 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
          (*(*(v81 - 8) + 56))(v45 + v80, 1, 1, v81);
          v82 = v78[6];
          v83 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
          v84 = v45 + v82;
          v85 = v172;
          (*(*(v83 - 8) + 56))(v84, 1, 1, v83);
          v86 = (v45 + v78[7]);
          *v86 = 0;
          v86[1] = 0;
          if (v79(v85, 1, v78) != 1)
          {
            outlined destroy of WorkoutStep?(v85, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
          }
        }

        else
        {
          _s10WorkoutKit0A4StepVWObTm_0(v77, v45, type metadata accessor for Apple_Workout_WorkoutStep);
        }

        v87 = v166;
        Apple_Workout_WorkoutStep.workoutKitRepresentation.getter(v166);
        if (v44)
        {

          outlined destroy of WorkoutStep(v45, type metadata accessor for Apple_Workout_WorkoutStep);
          goto LABEL_44;
        }

        outlined destroy of WorkoutStep(v45, type metadata accessor for Apple_Workout_WorkoutStep);
        outlined destroy of WorkoutStep(v175, type metadata accessor for Apple_Workout_IntervalStep);
        v88 = v165;
        _s10WorkoutKit0A4StepVWObTm_0(v87, &v165[*(v164 + 20)], type metadata accessor for WorkoutStep);
        *v88 = v74;
        v173 = v63;
        v90 = *(v63 + 16);
        v89 = *(v63 + 24);
        if (v90 >= v89 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v89 > 1), v90 + 1, 1);
          v88 = v165;
          v63 = v173;
        }

        ++v70;
        *(v63 + 16) = v90 + 1;
        _s10WorkoutKit0A4StepVWObTm_0(v88, v63 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v90, type metadata accessor for IntervalStep);
        v68 = v161;
        if (v160 == v70)
        {
          v66 = v152;
          goto LABEL_32;
        }
      }

      __break(1u);
      break;
    }

LABEL_32:
    v91 = (v66 + *(v149 + 24));
    if (v91[1])
    {
      v92 = 1;
    }

    else
    {
      v92 = *v91;
      if (!v92)
      {
        goto LABEL_59;
      }
    }

    outlined destroy of WorkoutStep(v66, type metadata accessor for Apple_Workout_IntervalBlock);
    v65 = v158;
    v174 = v158;
    v94 = *(v158 + 16);
    v93 = *(v158 + 24);
    if (v94 >= v93 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1);
      v66 = v152;
      v65 = v174;
    }

    v64 = (v150 + 1);
    *(v65 + 16) = v94 + 1;
    v95 = v65 + 16 * v94;
    *(v95 + 32) = v63;
    *(v95 + 40) = v92;
    v61 = v146;
    v63 = MEMORY[0x277D84F90];
    if (v64 == v135)
    {
      v158 = v65;

      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_59:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in CustomWorkout.protoComposition.getter(char *a1, void *a2)
{
  v85 = type metadata accessor for Apple_Workout_IntervalBlock(0);
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v70 - v7;
  v77 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v71 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  v80 = type metadata accessor for WorkoutStep(0);
  MEMORY[0x28223BE20](v80);
  v75 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v74 = &v70 - v21;
  v22 = *a2;
  if (HIDWORD(*a2))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v82 = v20;
  v73 = v14;
  v23 = *(type metadata accessor for Apple_Workout_CustomWorkoutComposition(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *&a1[v23];
  v81 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
    swift_allocObject();
    v25 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v25);
    *&a1[v23] = v25;
  }

  swift_beginAccess();
  *(v25 + 16) = v22;
  v26 = a2[1];
  if (v26 == 1)
  {
    goto LABEL_10;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  if (HIDWORD(v26))
  {
LABEL_34:
    __break(1u);
    return;
  }

  v27 = v81;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *&a1[v27];
  if ((v28 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
    swift_allocObject();
    v29 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v29);
    *&a1[v27] = v29;
  }

  swift_beginAccess();
  *(v29 + 20) = v26;
  *(v29 + 24) = 0;
LABEL_10:
  v30 = a2;
  v31 = a2[3];
  v78 = v8;
  if (v31)
  {
    v32 = v30;
    v33 = v30[2];

    v34 = v81;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v36 = *&a1[v34];
    if ((v35 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
      swift_allocObject();
      v36 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v36);
      *&a1[v34] = v36;
    }

    swift_beginAccess();
    *(v36 + 32) = v33;
    *(v36 + 40) = v31;

    v30 = v32;
    v8 = v78;
  }

  v37 = type metadata accessor for CustomWorkout(0);
  outlined init with copy of WorkoutStep?(v30 + *(v37 + 28), v17, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v38 = *(v82 + 48);
  v82 += 48;
  v39 = v38(v17, 1, v80);
  v40 = v30;
  v72 = v38;
  v79 = v37;
  if (v39 == 1)
  {
    outlined destroy of WorkoutStep?(v17, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }

  else
  {
    v41 = v74;
    v42 = _s10WorkoutKit0A4StepVWObTm_0(v17, v74, type metadata accessor for WorkoutStep);
    MEMORY[0x28223BE20](v42);
    *(&v70 - 2) = v41;
    lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep, &protocol conformance descriptor for Apple_Workout_WorkoutStep);
    v43 = v70;
    v44 = v77;
    static Message.with(_:)();
    v45 = v81;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v47 = *&a1[v45];
    if ((v46 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
      swift_allocObject();
      v47 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v47);
      *&a1[v45] = v47;
    }

    _s10WorkoutKit0A4StepVWObTm_0(v43, v8, type metadata accessor for Apple_Workout_WorkoutStep);
    (*(v76 + 56))(v8, 0, 1, v44);
    v48 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
    swift_beginAccess();
    outlined assign with take of WorkoutStep?(v8, v47 + v48, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    swift_endAccess();
    outlined destroy of WorkoutStep(v74, type metadata accessor for WorkoutStep);
    v37 = v79;
  }

  v49 = *&v40[*(v37 + 32)];
  v50 = *(v49 + 16);
  v51 = MEMORY[0x277D84F90];
  if (v50)
  {
    v70 = v40;
    v74 = a1;
    v84 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
    v51 = v84;
    v52 = lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type Apple_Workout_IntervalBlock and conformance Apple_Workout_IntervalBlock, type metadata accessor for Apple_Workout_IntervalBlock, &protocol conformance descriptor for Apple_Workout_IntervalBlock);
    v53 = v49 + 40;
    do
    {
      v54 = *(v53 - 8);
      MEMORY[0x28223BE20](v52);
      *(&v70 - 2) = v54;
      *(&v70 - 1) = v55;

      static Message.with(_:)();

      v84 = v51;
      v57 = *(v51 + 16);
      v56 = *(v51 + 24);
      if (v57 >= v56 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1);
        v51 = v84;
      }

      v53 += 16;
      *(v51 + 16) = v57 + 1;
      v52 = _s10WorkoutKit0A4StepVWObTm_0(v5, v51 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v57, type metadata accessor for Apple_Workout_IntervalBlock);
      --v50;
    }

    while (v50);
    v8 = v78;
    a1 = v74;
    v40 = v70;
  }

  v58 = v81;
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *&a1[v58];
  if ((v59 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
    swift_allocObject();
    v60 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v60);
    *&a1[v58] = v60;
  }

  v61 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks;
  swift_beginAccess();
  *(v60 + v61) = v51;

  v62 = v73;
  outlined init with copy of WorkoutStep?(&v40[*(v79 + 36)], v73, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  if (v72(v62, 1, v80) == 1)
  {
    outlined destroy of WorkoutStep?(v62, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  }

  else
  {
    v63 = v75;
    v64 = _s10WorkoutKit0A4StepVWObTm_0(v62, v75, type metadata accessor for WorkoutStep);
    MEMORY[0x28223BE20](v64);
    *(&v70 - 2) = v63;
    lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep, &protocol conformance descriptor for Apple_Workout_WorkoutStep);
    v65 = v71;
    v66 = v77;
    static Message.with(_:)();
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v68 = *&a1[v58];
    if ((v67 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
      swift_allocObject();
      v68 = Apple_Workout_CustomWorkoutComposition._StorageClass.init(copying:)(v68);
      *&a1[v58] = v68;
    }

    _s10WorkoutKit0A4StepVWObTm_0(v65, v8, type metadata accessor for Apple_Workout_WorkoutStep);
    (*(v76 + 56))(v8, 0, 1, v66);
    v69 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown;
    swift_beginAccess();
    outlined assign with take of WorkoutStep?(v8, v68 + v69, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
    swift_endAccess();
    outlined destroy of WorkoutStep(v75, type metadata accessor for WorkoutStep);
  }
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void CustomWorkout.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for WorkoutStep(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v20 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v19 - v14;
  MEMORY[0x23EEA0D50](*v1, v13);
  MEMORY[0x23EEA0D50](v1[1]);
  if (v1[3])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v16 = type metadata accessor for CustomWorkout(0);
  outlined init with copy of WorkoutStep?(v1 + v16[7], v15, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v17 = *(v4 + 48);
  if (v17(v15, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    _s10WorkoutKit0A4StepVWObTm_0(v15, v8, type metadata accessor for WorkoutStep);
    Hasher._combine(_:)(1u);
    WorkoutGoal.hash(into:)(a1);
    outlined init with copy of WorkoutStep?(&v8[*(v3 + 20)], &v21, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (v22)
    {
      outlined init with take of WorkoutAlert(&v21, v23);
      v19 = v11;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      v11 = v19;
      dispatch thunk of Hashable.hash(into:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of WorkoutStep?(&v21, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    }

    if (*&v8[*(v3 + 24) + 8])
    {
      String.hash(into:)();
    }

    outlined destroy of WorkoutStep(v8, type metadata accessor for WorkoutStep);
  }

  specialized Array<A>.hash(into:)(a1, *(v1 + v16[8]));
  outlined init with copy of WorkoutStep?(v1 + v16[9], v11, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  if (v17(v11, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v18 = v20;
    _s10WorkoutKit0A4StepVWObTm_0(v11, v20, type metadata accessor for WorkoutStep);
    Hasher._combine(_:)(1u);
    WorkoutGoal.hash(into:)(a1);
    outlined init with copy of WorkoutStep?(v18 + *(v3 + 20), &v21, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (v22)
    {
      outlined init with take of WorkoutAlert(&v21, v23);
      __swift_project_boxed_opaque_existential_1(v23, v24);
      dispatch thunk of Hashable.hash(into:)();
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    else
    {
      outlined destroy of WorkoutStep?(&v21, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    }

    if (*(v20 + *(v3 + 24) + 8))
    {
      String.hash(into:)();
    }

    outlined destroy of WorkoutStep(v20, type metadata accessor for WorkoutStep);
  }
}

Swift::Int CustomWorkout.hashValue.getter()
{
  Hasher.init(_seed:)();
  CustomWorkout.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CustomWorkout()
{
  Hasher.init(_seed:)();
  CustomWorkout.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CustomWorkout(uint64_t a1)
{
  Hasher.init(_seed:)();
  CustomWorkout.hash(into:)(v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError()
{
  result = lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError;
  if (!lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompositionValidationError and conformance CompositionValidationError);
  }

  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures()
{
  result = lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntervalStep(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  result = MEMORY[0x23EEA0D50](v9, v6);
  if (v9)
  {
    v11 = &v8[*(v4 + 20)];
    v12 = type metadata accessor for WorkoutStep(0);
    v13 = *(v12 + 24);
    v21 = *(v12 + 20);
    v14 = &v11[v13];
    v15 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v16 = *(v5 + 72);
    v19 = v11;
    v20 = v16;
    while (1)
    {
      outlined init with copy of WorkoutStep(v15, v8, type metadata accessor for IntervalStep);
      MEMORY[0x23EEA0D50](*v8);
      v17 = v19;
      WorkoutGoal.hash(into:)(a1);
      outlined init with copy of WorkoutStep?(&v17[v21], &v22, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      if (v23)
      {
        break;
      }

      outlined destroy of WorkoutStep?(&v22, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      if (*(v14 + 1))
      {
        goto LABEL_8;
      }

LABEL_3:
      result = outlined destroy of WorkoutStep(v8, type metadata accessor for IntervalStep);
      v15 += v20;
      if (!--v9)
      {
        return result;
      }
    }

    outlined init with take of WorkoutAlert(&v22, v24);
    __swift_project_boxed_opaque_existential_1(v24, v24[3]);
    dispatch thunk of Hashable.hash(into:)();
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    if (!*(v14 + 1))
    {
      goto LABEL_3;
    }

LABEL_8:
    String.hash(into:)();
    goto LABEL_3;
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x23EEA0D50](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 16;
      MEMORY[0x23EEA0D50](v7);
      result = MEMORY[0x23EEA0D50](v6);
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v34 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v34 - v6;
  v7 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for IntervalStep(0);
  v35 = *(v36 - 8);
  v10 = MEMORY[0x28223BE20](v36);
  v53 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  result = MEMORY[0x23EEA0D50](v12, v10);
  v38 = v12;
  if (v12)
  {
    v14 = 0;
    v37 = a2 + 32;
    v45 = (v5 + 32);
    v44 = (v3 + 32);
    v43 = (v3 + 8);
    v42 = (v5 + 8);
    v46 = v7;
    while (1)
    {
      v41 = v14;
      v15 = (v37 + 16 * v14);
      v16 = *v15;
      v39 = v15[1];
      MEMORY[0x23EEA0D50](*(v16 + 16));
      v17 = *(v16 + 16);
      v40 = v16;
      if (v17)
      {
        break;
      }

LABEL_4:
      v14 = v41 + 1;
      MEMORY[0x23EEA0D50](v39);

      if (v14 == v38)
      {
        return result;
      }
    }

    v18 = &v53[*(v36 + 20)];
    v19 = type metadata accessor for WorkoutStep(0);
    v20 = *(v19 + 24);
    v52 = *(v19 + 20);
    v54 = v18;
    v21 = v18 + v20;
    v22 = v16 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v51 = *(v35 + 72);
    v23 = v53;

    while (1)
    {
      outlined init with copy of WorkoutStep(v22, v23, type metadata accessor for IntervalStep);
      MEMORY[0x23EEA0D50](*v23);
      outlined init with copy of WorkoutStep(v54, v9, type metadata accessor for WorkoutGoal);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v30 = *v9;
        v31 = *(v9 + 1);
        v32 = 3;
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
        v26 = v47;
        v27 = v48;
        (*v45)(v47, v9, v48);
        v29 = v49;
        v28 = v50;
        (*v44)(v49, &v9[v25], v50);
        MEMORY[0x23EEA0D50](4);
        lazy protocol witness table accessor for type Measurement<NSUnitLength> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitLength> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
        dispatch thunk of Hashable.hash(into:)();
        lazy protocol witness table accessor for type Measurement<NSUnitLength> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitDuration> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
        dispatch thunk of Hashable.hash(into:)();
        (*v43)(v29, v28);
        (*v42)(v26, v27);
      }

      else
      {
        MEMORY[0x23EEA0D50](0);
      }

LABEL_21:
      outlined init with copy of WorkoutStep?(v54 + v52, &v55, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      if (v56)
      {
        outlined init with take of WorkoutAlert(&v55, v57);
        __swift_project_boxed_opaque_existential_1(v57, v57[3]);
        dispatch thunk of Hashable.hash(into:)();
        __swift_destroy_boxed_opaque_existential_0Tm(v57);
      }

      else
      {
        outlined destroy of WorkoutStep?(&v55, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      }

      v23 = v53;
      if (*(v21 + 8))
      {
        String.hash(into:)();
      }

      outlined destroy of WorkoutStep(v23, type metadata accessor for IntervalStep);
      v22 += v51;
      if (!--v17)
      {
        goto LABEL_4;
      }
    }

    v30 = *v9;
    v31 = *(v9 + 1);
    if (EnumCaseMultiPayload)
    {
      v32 = 2;
    }

    else
    {
      v32 = 1;
    }

LABEL_17:
    MEMORY[0x23EEA0D50](v32);
    if (v30 == 0.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v30;
    }

    MEMORY[0x23EEA0D70](*&v33);
    NSObject.hash(into:)();

    goto LABEL_21;
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x23EEA0D50](v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      MEMORY[0x23EEA0D70](*&v5);
      if (v6 == 0.0)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = v6;
      }

      MEMORY[0x23EEA0D70](*&v9);
      if (v8 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v10 = v7;
        }

        else
        {
          v10 = 0;
        }

        MEMORY[0x23EEA0D70](v10);
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }
}

uint64_t specialized static CustomWorkout.validateActivity(_:)(uint64_t result)
{
  v1 = result;
  if (qword_284E21CD8 == result || unk_284E21CE0 == result || qword_284E21CE8 == result)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    swift_allocError();
    *v4 = v1;
    *(v4 + 8) = 0;
    return swift_willThrow();
  }

  if (result == 46)
  {
    v7[3] = &type metadata for WorkoutKitFeatures;
    v7[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v7[0]) = 0;
    v5 = isFeatureEnabled(_:)();
    result = __swift_destroy_boxed_opaque_existential_0Tm(v7);
    if ((v5 & 1) == 0)
    {
      type metadata accessor for CustomValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError, &protocol conformance descriptor for CustomValidationError);
      swift_allocError();
      *v6 = 46;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined assign with copy of WorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v129 = a3;
  v131 = a2;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v124 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v135 = &v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v126 = &v104 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v104 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v122 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v10 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v104 - v12;
  v14 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IntervalStep(0);
  v133 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v26 = &v104 - v25;
  v27 = [a1 activityType];
  v28 = v136;
  result = specialized static CustomWorkout.validateActivity(_:)(v27);
  if (v28)
  {
    return result;
  }

  v132 = v17;
  v136 = v14;
  v109 = v22;
  v120 = v10;
  v134 = v19;
  v115 = a1;
  v121 = v13;
  v127 = 0;
  outlined init with copy of WorkoutStep?(v131, v26, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v30 = type metadata accessor for WorkoutStep(0);
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v131 = v30;
  v108 = v32;
  v107 = v31 + 48;
  if ((v32)(v26, 1) == 1)
  {
    outlined destroy of WorkoutStep?(v26, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    v33 = v121;
    v34 = v115;
    result = v125;
    v35 = &off_278B84000;
  }

  else
  {
    v35 = &off_278B84000;
    v34 = v115;
    v36 = [v115 activityType];
    v37 = [v34 locationType];
    v38 = [v34 swimmingLocationType];
    v39 = v127;
    _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5(v36, v37, v38);
    outlined destroy of WorkoutStep(v26, type metadata accessor for WorkoutStep);
    v33 = v121;
    result = v125;
    if (v39)
    {
      return result;
    }

    v127 = 0;
  }

  v41 = v134;
  v40 = v135;
  v110 = *(v129 + 16);
  if (!v110)
  {
LABEL_43:
    v78 = v109;
    outlined init with copy of WorkoutStep?(result, v109, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    if (v108(v78, 1, v131) == 1)
    {
      return outlined destroy of WorkoutStep?(v78, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    }

    _s10WorkoutKit0A4StepV8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06CustomA0V_Tt2g5([v34 v35[96]], objc_msgSend(v34, sel_locationType), objc_msgSend(v34, sel_swimmingLocationType));
    return outlined destroy of WorkoutStep(v78, type metadata accessor for WorkoutStep);
  }

  v42 = 0;
  v43 = v129 + 32;
  v113 = (v122 + 32);
  v112 = (v124 + 4);
  v123 = v124 + 1;
  v124 = (v122 + 8);
  v44 = &off_278B84000;
  v106 = v129 + 32;
  while (1)
  {
    v111 = v42;
    v45 = *(v43 + 16 * v42);

    v46 = [v34 v35[96]];
    v119 = [v34 locationType];
    v47 = [v34 v44[98]];
    v48 = v45;
    v49 = *(v45 + 16);
    if (v49)
    {
      break;
    }

LABEL_8:
    v42 = v111 + 1;

    v34 = v115;
    result = v125;
    v35 = &off_278B84000;
    v43 = v106;
    v44 = &off_278B84000;
    if (v42 == v110)
    {
      goto LABEL_43;
    }
  }

  v50 = v47;
  v51 = v46;
  v52 = 0;
  v122 = v51;
  v105 = v50;
  v54 = v51 == 46 && v50 == 1;
  v114 = v54;
  v129 = v45;
  while (1)
  {
    if (v52 >= *(v48 + 16))
    {
      __break(1u);
LABEL_55:
      type metadata accessor for GoalValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
      v127 = swift_allocError();
      v99 = v98;
      v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v101 = *(v100 + 48);
      v102 = *(v100 + 64);
      outlined init with copy of WorkoutStep(v41, v99, type metadata accessor for WorkoutGoal);
      *(v99 + v101) = v122;
      *(v99 + v102) = v119;
LABEL_56:
      swift_storeEnumTagMultiPayload();
      v103 = v134;
      swift_willThrow();

      (*v124)(v33, v130);

      v97 = v103;
      return outlined destroy of WorkoutStep(v97, type metadata accessor for IntervalStep);
    }

    outlined init with copy of WorkoutStep(v48 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v52, v41, type metadata accessor for IntervalStep);
    v41 += *(v132 + 20);
    outlined init with copy of WorkoutStep(v41, v16, type metadata accessor for WorkoutGoal);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v59 = *(v16 + 1);
        type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
        v60 = v59;
        v61 = v126;
        Measurement.init(value:unit:)();
        v62 = v128;
        Measurement.value.getter();
        if (v63 <= 0.0)
        {
          type metadata accessor for GoalValidationError(0);
          lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
          v89 = swift_allocError();
          swift_storeEnumTagMultiPayload();
          v127 = v89;
          swift_willThrow();

          (*v123)(v61, v62);
          goto LABEL_50;
        }

        (*v123)(v61, v62);
      }

      else
      {
        v56 = *(v16 + 1);
        type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
        v40 = v56;
        Measurement.init(value:unit:)();
        switch(v122)
        {
          case 1uLL:
          case 3uLL:
          case 0xDuLL:
          case 0x15uLL:
          case 0x18uLL:
          case 0x1BuLL:
          case 0x1FuLL:
          case 0x24uLL:
          case 0x25uLL:
          case 0x2EuLL:
          case 0x34uLL:
          case 0x3CuLL:
          case 0x3DuLL:
          case 0x43uLL:
          case 0x46uLL:
          case 0x47uLL:
          case 0x4BuLL:
            goto LABEL_27;
          case 0x19uLL:
          case 0x23uLL:
          case 0x27uLL:
          case 0x29uLL:
            if (v119 == 2)
            {
              type metadata accessor for GoalValidationError(0);
              lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
              v127 = swift_allocError();
              *v77 = v122;
              v77[1] = 2;
              goto LABEL_56;
            }

LABEL_27:
            v57 = v130;
            Measurement.value.getter();
            if (v58 <= 0.0)
            {
              type metadata accessor for GoalValidationError(0);
              lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
              v96 = swift_allocError();
              swift_storeEnumTagMultiPayload();
              v127 = v96;
              swift_willThrow();

              (*v124)(v33, v57);
              goto LABEL_50;
            }

            (*v124)(v33, v57);

            break;
          default:
            goto LABEL_55;
        }
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCG_ACySo0C8DurationCGtMR) + 48);
      v65 = v120;
      v66 = v40;
      v67 = v130;
      (*v113)(v120, v16, v130);
      v68 = v66;
      v69 = v128;
      (*v112)(v68, &v16[v64], v128);
      if (!v114)
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        v90 = swift_allocError();
        v92 = v91;
        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d16SwimmingLocationF0VtMR);
        v94 = *(v93 + 48);
        v95 = *(v93 + 64);
        outlined init with copy of WorkoutStep(v41, v92, type metadata accessor for WorkoutGoal);
        *(v92 + v94) = v122;
        *(v92 + v95) = v105;
        swift_storeEnumTagMultiPayload();
        v127 = v90;
        swift_willThrow();
        (*v123)(v135, v128);
        (*v124)(v65, v67);
        goto LABEL_50;
      }

      Measurement.value.getter();
      v70 = v135;
      if (v71 <= 0.0 || (Measurement.value.getter(), v72 <= 0.0))
      {
        type metadata accessor for GoalValidationError(0);
        lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type GoalValidationError and conformance GoalValidationError, type metadata accessor for GoalValidationError, &protocol conformance descriptor for GoalValidationError);
        v79 = swift_allocError();
        swift_storeEnumTagMultiPayload();
        v127 = v79;
        swift_willThrow();
        (*v123)(v70, v69);
        (*v124)(v65, v130);
        goto LABEL_50;
      }

      (*v123)(v70, v69);
      (*v124)(v65, v130);
      v33 = v121;
    }

    else if (EnumCaseMultiPayload != 4)
    {
      v80 = *(v16 + 1);
      type metadata accessor for NSUnitDuration(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
      v81 = v80;
      v82 = v116;
      Measurement.init(value:unit:)();
      type metadata accessor for CustomValidationError(0);
      lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(&lazy protocol witness table cache variable for type CustomValidationError and conformance CustomValidationError, type metadata accessor for CustomValidationError, &protocol conformance descriptor for CustomValidationError);
      v83 = swift_allocError();
      v85 = v84;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMd, &_s10WorkoutKit0A4GoalO_So21HKWorkoutActivityTypeVSo0d15SessionLocationF0VtMR);
      v87 = *(v86 + 48);
      v88 = *(v86 + 64);
      outlined init with copy of WorkoutStep(v41, v85, type metadata accessor for WorkoutGoal);
      *(v85 + v87) = v122;
      *(v85 + v88) = v119;
      swift_storeEnumTagMultiPayload();
      v127 = v83;
      swift_willThrow();

      (*(v117 + 8))(v82, v118);
      goto LABEL_50;
    }

    outlined init with copy of WorkoutStep?(v41 + *(v131 + 20), v137, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
    if (!v138)
    {
      outlined destroy of WorkoutStep?(v137, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
      v139 = 0u;
      v140 = 0u;
      v141 = 0;
      v41 = v134;
      goto LABEL_18;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A13AlertProtable_pMd, &_s10WorkoutKit0A13AlertProtable_pMR);
    v73 = swift_dynamicCast();
    v41 = v134;
    if ((v73 & 1) == 0)
    {
      v141 = 0;
      v139 = 0u;
      v140 = 0u;
      goto LABEL_18;
    }

    v74 = *(&v140 + 1);
    if (*(&v140 + 1))
    {
      break;
    }

LABEL_18:
    outlined destroy of WorkoutStep?(&v139, &_s10WorkoutKit0A13AlertProtable_pSgMd, &_s10WorkoutKit0A13AlertProtable_pSgMR);
LABEL_19:
    ++v52;
    outlined destroy of WorkoutStep(v41, type metadata accessor for IntervalStep);
    v48 = v129;
    v40 = v135;
    if (v49 == v52)
    {
      goto LABEL_8;
    }
  }

  v75 = v141;
  __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
  v76 = v127;
  (*(v75 + 32))(v122, v119, 1, v74, v75);
  v127 = v76;
  if (!v76)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v139);
    v41 = v134;
    goto LABEL_19;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v139);
LABEL_50:

  v97 = v134;
  return outlined destroy of WorkoutStep(v97, type metadata accessor for IntervalStep);
}

BOOL specialized static CustomWorkout.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for WorkoutStep(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v39 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSg_ADtMd, &_s10WorkoutKit0A4StepVSg_ADtMR);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  if (*a1 != *a2)
  {
    return 0;
  }

  v21 = a1[3];
  v22 = a2[3];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    v44 = v18;
    if ((a1[2] != a2[2] || v21 != v22) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v44 = v18;
    if (v22)
    {
      return 0;
    }
  }

  v42 = v10;
  v41 = type metadata accessor for CustomWorkout(0);
  v23 = *(v41 + 28);
  v24 = *(v44 + 48);
  outlined init with copy of WorkoutStep?(a1 + v23, v20, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v43 = v24;
  outlined init with copy of WorkoutStep?(a2 + v23, &v20[v24], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v27 = *(v5 + 48);
  v26 = v5 + 48;
  v25 = v27;
  if (v27(v20, 1, v4) != 1)
  {
    outlined init with copy of WorkoutStep?(v20, v13, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
    v30 = v25(&v20[v43], 1, v4);
    v29 = v42;
    if (v30 != 1)
    {
      v40 = v26;
      _s10WorkoutKit0A4StepVWObTm_0(&v20[v43], v7, type metadata accessor for WorkoutStep);
      LODWORD(v43) = static WorkoutStep.== infix(_:_:)(v13, v7);
      outlined destroy of WorkoutStep(v7, type metadata accessor for WorkoutStep);
      outlined destroy of WorkoutStep(v13, type metadata accessor for WorkoutStep);
      outlined destroy of WorkoutStep?(v20, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      if ((v43 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    outlined destroy of WorkoutStep(v13, type metadata accessor for WorkoutStep);
LABEL_14:
    v31 = v20;
LABEL_15:
    outlined destroy of WorkoutStep?(v31, &_s10WorkoutKit0A4StepVSg_ADtMd, &_s10WorkoutKit0A4StepVSg_ADtMR);
    return 0;
  }

  v28 = v25(&v20[v43], 1, v4);
  v29 = v42;
  if (v28 != 1)
  {
    goto LABEL_14;
  }

  v40 = v26;
  outlined destroy of WorkoutStep?(v20, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
LABEL_17:
  v32 = v41;
  _sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit13IntervalBlockV_Tt1g5(*(a1 + *(v41 + 32)), *(a2 + *(v41 + 32)));
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  v34 = *(v32 + 36);
  v35 = a1 + v34;
  v36 = *(v44 + 48);
  outlined init with copy of WorkoutStep?(v35, v16, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  outlined init with copy of WorkoutStep?(a2 + v34, &v16[v36], &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v36], 1, v4) == 1)
    {
      outlined destroy of WorkoutStep?(v16, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      return 1;
    }

    goto LABEL_23;
  }

  outlined init with copy of WorkoutStep?(v16, v29, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  if (v25(&v16[v36], 1, v4) == 1)
  {
    outlined destroy of WorkoutStep(v29, type metadata accessor for WorkoutStep);
LABEL_23:
    v31 = v16;
    goto LABEL_15;
  }

  _s10WorkoutKit0A4StepVWObTm_0(&v16[v36], v7, type metadata accessor for WorkoutStep);
  v37 = static WorkoutStep.== infix(_:_:)(v29, v7);
  outlined destroy of WorkoutStep(v7, type metadata accessor for WorkoutStep);
  outlined destroy of WorkoutStep(v29, type metadata accessor for WorkoutStep);
  outlined destroy of WorkoutStep?(v16, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  return (v37 & 1) != 0;
}

uint64_t outlined init with take of WorkoutAlert(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t lazy protocol witness table accessor for type CustomValidationError and conformance CustomValidationError(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined assign with take of WorkoutStep?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitLength> and conformance Measurement<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t outlined init with copy of WorkoutStep?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of WorkoutStep?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of WorkoutStep(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of WorkoutStep(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10WorkoutKit0A4StepVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of WorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata completion function for Apple_Workout_HeartRateAlert(uint64_t a1)
{
  type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_ZoneValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_HeartRateRange(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_HeartRateAlert(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_HeartRateRange(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_HeartRateValue?, type metadata accessor for Apple_Workout_HeartRateValue);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Apple_Workout_HeartRateAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_HeartRateAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_HeartRateAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_HeartRateAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Workout_ZoneValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1, v12, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v12, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_ZoneValue(v12, v19, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
    outlined init with take of Apple_Workout_ZoneValue(v19, v16, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v16, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
      v30 = v45;
    }

    else
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
      v32 = v41;
      outlined init with take of Apple_Workout_ZoneValue(v16, v41, type metadata accessor for Apple_Workout_ZoneValue);
      outlined init with take of Apple_Workout_ZoneValue(v32, v25, type metadata accessor for Apple_Workout_ZoneValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue, &protocol conformance descriptor for Apple_Workout_ZoneValue);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  }

  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, v33, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v33, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Apple_Workout_ZoneValue(v33, v40, type metadata accessor for Apple_Workout_ZoneValue);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMd, &_s10WorkoutKit06Apple_A10_ZoneValueVSgMR);
    v37 = v39;
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v39, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    outlined init with take of Apple_Workout_ZoneValue(v36, v37, type metadata accessor for Apple_Workout_ZoneValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in Apple_Workout_HeartRateAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1, v12, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v12, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_ZoneValue(v12, v19, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
    outlined init with take of Apple_Workout_ZoneValue(v19, v16, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
      v32 = v41;
      outlined init with take of Apple_Workout_ZoneValue(v16, v41, type metadata accessor for Apple_Workout_HeartRateRange);
      outlined init with take of Apple_Workout_ZoneValue(v32, v25, type metadata accessor for Apple_Workout_HeartRateRange);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v16, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange, &protocol conformance descriptor for Apple_Workout_HeartRateRange);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
  }

  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, v33, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v33, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Apple_Workout_ZoneValue(v33, v40, type metadata accessor for Apple_Workout_HeartRateRange);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateRangeVSgMR);
    v37 = v39;
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v39, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    outlined init with take of Apple_Workout_ZoneValue(v36, v37, type metadata accessor for Apple_Workout_HeartRateRange);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Workout_HeartRateAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v3, &v13 - v9, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in Apple_Workout_HeartRateAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in Apple_Workout_HeartRateAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v10, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Apple_Workout_HeartRateAlert(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_HeartRateAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Workout_ZoneValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1, v7, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v7, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Apple_Workout_ZoneValue(v7, v10, type metadata accessor for Apple_Workout_ZoneValue);
    lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue, &protocol conformance descriptor for Apple_Workout_ZoneValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v10, type metadata accessor for Apple_Workout_ZoneValue);
  }

  result = outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v7, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_HeartRateAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1, v7, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v7, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_ZoneValue(v7, v10, type metadata accessor for Apple_Workout_HeartRateRange);
    lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange, &protocol conformance descriptor for Apple_Workout_HeartRateRange);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v10, type metadata accessor for Apple_Workout_HeartRateRange);
  }

  result = outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v7, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_HeartRateAlert@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_HeartRateAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_HeartRateAlert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_HeartRateAlert(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert, &protocol conformance descriptor for Apple_Workout_HeartRateAlert);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_HeartRateAlert(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert, &protocol conformance descriptor for Apple_Workout_HeartRateAlert);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_HeartRateAlert(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert, &protocol conformance descriptor for Apple_Workout_HeartRateAlert);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_HeartRateRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_HeartRateRange.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_HeartRateRange.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_HeartRateRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_HeartRateRange(0);
  type metadata accessor for Apple_Workout_HeartRateValue(0);
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue, &protocol conformance descriptor for Apple_Workout_HeartRateValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_HeartRateRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_HeartRateRange(0);
  type metadata accessor for Apple_Workout_HeartRateValue(0);
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue, &protocol conformance descriptor for Apple_Workout_HeartRateValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_HeartRateRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_HeartRateRange.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_HeartRateRange.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_HeartRateRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1 + *(v12 + 20), v7, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v7, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  }

  outlined init with take of Apple_Workout_ZoneValue(v7, v11, type metadata accessor for Apple_Workout_HeartRateValue);
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue, &protocol conformance descriptor for Apple_Workout_HeartRateValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v11, type metadata accessor for Apple_Workout_HeartRateValue);
}

uint64_t closure #2 in Apple_Workout_HeartRateRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1 + *(v12 + 24), v7, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v7, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  }

  outlined init with take of Apple_Workout_ZoneValue(v7, v11, type metadata accessor for Apple_Workout_HeartRateValue);
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue, &protocol conformance descriptor for Apple_Workout_HeartRateValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v11, type metadata accessor for Apple_Workout_HeartRateValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_HeartRateRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_HeartRateRange@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_HeartRateRange(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_HeartRateRange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange, &protocol conformance descriptor for Apple_Workout_HeartRateRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_HeartRateAlert@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_HeartRateRange(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange, &protocol conformance descriptor for Apple_Workout_HeartRateRange);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_HeartRateAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_HeartRateRange(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange, &protocol conformance descriptor for Apple_Workout_HeartRateRange);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_HeartRateAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_ZoneValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static Apple_Workout_HeartRateRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v37 = (&v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v39 = (&v37 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v38 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMR);
  MEMORY[0x28223BE20](v14);
  v42 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  v41 = v14;
  v19 = *(v40 + 20);
  v20 = *(v14 + 48);
  v43 = a1;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1 + v19, v18, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v44 = a2;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a2 + v19, &v18[v20], &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v18, v13, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
    if (v21(&v18[v20], 1, v4) != 1)
    {
      v26 = v39;
      outlined init with take of Apple_Workout_ZoneValue(&v18[v20], v39, type metadata accessor for Apple_Workout_HeartRateValue);
      if (*v13 == *v26)
      {
        v22 = v4;
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v27 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v26, type metadata accessor for Apple_Workout_HeartRateValue);
        outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v13, type metadata accessor for Apple_Workout_HeartRateValue);
        outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v18, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
        if ((v27 & 1) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v26, type metadata accessor for Apple_Workout_HeartRateValue);
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v13, type metadata accessor for Apple_Workout_HeartRateValue);
      v23 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd;
      v24 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR;
LABEL_7:
      v25 = v18;
LABEL_17:
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v25, v23, v24);
      goto LABEL_18;
    }

    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v13, type metadata accessor for Apple_Workout_HeartRateValue);
LABEL_6:
    v23 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMd;
    v24 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMR;
    goto LABEL_7;
  }

  if (v21(&v18[v20], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  v22 = v4;
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v18, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
LABEL_10:
  v28 = *(v40 + 24);
  v29 = *(v41 + 48);
  v30 = v42;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v43 + v28, v42, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v44 + v28, v30 + v29, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  if (v21(v30, 1, v22) == 1)
  {
    if (v21((v30 + v29), 1, v22) == 1)
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v30, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
LABEL_23:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_15;
  }

  v31 = v38;
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v30, v38, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  if (v21((v30 + v29), 1, v22) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v31, type metadata accessor for Apple_Workout_HeartRateValue);
LABEL_15:
    v23 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMd;
    v24 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSg_ADtMR;
LABEL_16:
    v25 = v30;
    goto LABEL_17;
  }

  v34 = v30 + v29;
  v35 = v37;
  outlined init with take of Apple_Workout_ZoneValue(v34, v37, type metadata accessor for Apple_Workout_HeartRateValue);
  if (*v31 != *v35)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v35, type metadata accessor for Apple_Workout_HeartRateValue);
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v31, type metadata accessor for Apple_Workout_HeartRateValue);
    v23 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd;
    v24 = &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR;
    goto LABEL_16;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v35, type metadata accessor for Apple_Workout_HeartRateValue);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v31, type metadata accessor for Apple_Workout_HeartRateValue);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v30, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  if (v36)
  {
    goto LABEL_23;
  }

LABEL_18:
  v32 = 0;
  return v32 & 1;
}

uint64_t specialized static Apple_Workout_HeartRateAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a1, &v20 - v12, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(a2, &v13[v15], &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v13, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
LABEL_9:
      type metadata accessor for Apple_Workout_HeartRateAlert(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v13, v10, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v10, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
LABEL_6:
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v13, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_ZoneValue(&v13[v15], v7, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  v18 = specialized static Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget.== infix(_:_:)(v10, v7);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v7, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v10, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v13, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_ZoneValue(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v26 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetO_AEtMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetO_AEtMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v26 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(a1, &v26 - v17);
  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(a2, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v18, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of Apple_Workout_ZoneValue(&v18[v20], v9, type metadata accessor for Apple_Workout_ZoneValue);
      if (*v15 == *v9)
      {
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v24 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v9, type metadata accessor for Apple_Workout_ZoneValue);
        if (v24)
        {
          outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v15, type metadata accessor for Apple_Workout_ZoneValue);
          outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v18, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
          v21 = 1;
          return v21 & 1;
        }
      }

      else
      {
        outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v9, type metadata accessor for Apple_Workout_ZoneValue);
      }

      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v15, type metadata accessor for Apple_Workout_ZoneValue);
      outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v18, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
LABEL_13:
      v21 = 0;
      return v21 & 1;
    }

    v22 = type metadata accessor for Apple_Workout_ZoneValue;
    v23 = v15;
LABEL_7:
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v23, v22);
    outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(v18, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetO_AEtMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetO_AEtMR);
    goto LABEL_13;
  }

  outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v18, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v22 = type metadata accessor for Apple_Workout_HeartRateRange;
    v23 = v12;
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_ZoneValue(&v18[v20], v6, type metadata accessor for Apple_Workout_HeartRateRange);
  v21 = specialized static Apple_Workout_HeartRateRange.== infix(_:_:)(v12, v6);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v6, type metadata accessor for Apple_Workout_HeartRateRange);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v12, type metadata accessor for Apple_Workout_HeartRateRange);
  outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(v18, type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget);
  return v21 & 1;
}

uint64_t outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata completion function for Apple_Workout_WorkoutAlert(uint64_t a1)
{
  type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Workout_WorkoutAlert.OneOf_AlertValue?)
  {
    type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Workout_WorkoutAlert.OneOf_AlertValue?);
    }
  }
}

uint64_t type metadata accessor for Apple_Workout_WorkoutAlert(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t type metadata completion function for Apple_Workout_WorkoutAlert.OneOf_AlertValue(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_SpeedAlert(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_CadenceAlert(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_PowerAlert(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_HeartRateAlert(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "ntrackerapp.sharing";
      v3 = 0xD00000000000002ELL;
    }

    else
    {
      v4 = "ntrackerapp.insession.platters";
      v3 = 0xD000000000000023;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000023;
    }

    else
    {
      v3 = 0xD000000000000018;
    }

    if (v2)
    {
      v4 = "com.apple.WorkoutKit.api";
    }

    else
    {
      v4 = &unk_23B67ECE0;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD00000000000002ELL;
    }

    else
    {
      v5 = 0xD000000000000023;
    }

    if (a2 == 2)
    {
      v6 = "ntrackerapp.sharing";
    }

    else
    {
      v6 = "ntrackerapp.insession.platters";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000023;
    }

    else
    {
      v5 = 0xD000000000000018;
    }

    if (a2)
    {
      v6 = "com.apple.WorkoutKit.api";
    }

    else
    {
      v6 = &unk_23B67ECE0;
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutAlert.Metric(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric);
  }

  return result;
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_WorkoutAlert.Metric@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_WorkoutAlert.Metric@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutAlert.Metric(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutAlert.Target(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutAlert.Metric(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Apple_Workout_WorkoutAlert.Metric] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result > 4)
      {
        switch(result)
        {
          case 5:
            closure #4 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 6:
            closure #5 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
          case 7:
            closure #6 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            v11 = v4;
            lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric();
LABEL_18:
            v4 = v11;
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 2:
            v11 = v4;
            lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target();
            goto LABEL_18;
          case 4:
            closure #3 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
            break;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_SpeedAlert(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v46 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v45 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Workout_WorkoutAlert(0) + 24);
  v44 = a1;
  v42 = v29;
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v12, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v31 = v13;
    v32 = v50;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert(v12, v19, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    outlined init with take of Apple_Workout_SpeedAlert(v19, v16, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v16, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
      v32 = v50;
    }

    else
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
      v33 = v16;
      v34 = v45;
      outlined init with take of Apple_Workout_SpeedAlert(v33, v45, type metadata accessor for Apple_Workout_SpeedAlert);
      outlined init with take of Apple_Workout_SpeedAlert(v34, v25, type metadata accessor for Apple_Workout_SpeedAlert);
      v32 = v50;
      v28(v25, 0, 1, v50);
    }
  }

  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert, &protocol conformance descriptor for Apple_Workout_SpeedAlert);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
  }

  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v25, v35, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
  if ((*(v47 + 48))(v35, 1, v32) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v35, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
  }

  else
  {
    v38 = v46;
    outlined init with take of Apple_Workout_SpeedAlert(v35, v46, type metadata accessor for Apple_Workout_SpeedAlert);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertVSgMR);
    v39 = v44;
    v40 = v42;
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v44 + v42, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert(v38, v39 + v40, type metadata accessor for Apple_Workout_SpeedAlert);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #4 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_CadenceAlert(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Workout_WorkoutAlert(0) + 24);
  v44 = a1;
  v42 = v29;
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v12, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert(v12, v19, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    outlined init with take of Apple_Workout_SpeedAlert(v19, v16, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of Apple_Workout_SpeedAlert(v32, v46, type metadata accessor for Apple_Workout_CadenceAlert);
      outlined init with take of Apple_Workout_SpeedAlert(v33, v25, type metadata accessor for Apple_Workout_CadenceAlert);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v16, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert, &protocol conformance descriptor for Apple_Workout_CadenceAlert);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
  }

  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v25, v35, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v35, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of Apple_Workout_SpeedAlert(v35, v45, type metadata accessor for Apple_Workout_CadenceAlert);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertVSgMR);
    v39 = v44;
    v40 = v42;
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v44 + v42, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert(v38, v39 + v40, type metadata accessor for Apple_Workout_CadenceAlert);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #5 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_PowerAlert(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Workout_WorkoutAlert(0) + 24);
  v44 = a1;
  v42 = v29;
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v12, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert(v12, v19, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    outlined init with take of Apple_Workout_SpeedAlert(v19, v16, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of Apple_Workout_SpeedAlert(v32, v46, type metadata accessor for Apple_Workout_PowerAlert);
      outlined init with take of Apple_Workout_SpeedAlert(v33, v25, type metadata accessor for Apple_Workout_PowerAlert);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v16, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert, &protocol conformance descriptor for Apple_Workout_PowerAlert);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
  }

  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v25, v35, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v35, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of Apple_Workout_SpeedAlert(v35, v45, type metadata accessor for Apple_Workout_PowerAlert);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertVSgMR);
    v39 = v44;
    v40 = v42;
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v44 + v42, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert(v38, v39 + v40, type metadata accessor for Apple_Workout_PowerAlert);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t closure #6 in Apple_Workout_WorkoutAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Apple_Workout_HeartRateAlert(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v48 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v41 - v24;
  v47 = v6;
  v26 = *(v6 + 56);
  v50 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v41 - v24, 1, 1, v27, v23);
  v29 = *(type metadata accessor for Apple_Workout_WorkoutAlert(0) + 24);
  v44 = a1;
  v42 = v29;
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + v29, v12, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v43 = v14;
  v30 = (*(v14 + 48))(v12, 1, v13);
  if (v30 == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v12, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_SpeedAlert(v12, v19, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    outlined init with take of Apple_Workout_SpeedAlert(v19, v16, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
      v32 = v16;
      v33 = v46;
      outlined init with take of Apple_Workout_SpeedAlert(v32, v46, type metadata accessor for Apple_Workout_HeartRateAlert);
      outlined init with take of Apple_Workout_SpeedAlert(v33, v25, type metadata accessor for Apple_Workout_HeartRateAlert);
      v34 = v50;
      v28(v25, 0, 1, v50);
      goto LABEL_7;
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v16, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  }

  v34 = v50;
LABEL_7:
  v35 = v48;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert, &protocol conformance descriptor for Apple_Workout_HeartRateAlert);
  v36 = v49;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v36)
  {
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
  }

  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v25, v35, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
  if ((*(v47 + 48))(v35, 1, v34) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v35, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
  }

  else
  {
    v38 = v45;
    outlined init with take of Apple_Workout_SpeedAlert(v35, v45, type metadata accessor for Apple_Workout_HeartRateAlert);
    if (v30 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v25, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertVSgMR);
    v39 = v44;
    v40 = v42;
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v44 + v42, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    outlined init with take of Apple_Workout_SpeedAlert(v38, v39 + v40, type metadata accessor for Apple_Workout_HeartRateAlert);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v39 + v40, 0, 1, v31);
  }
}

uint64_t Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  if (*v3)
  {
    v13 = *(v3 + 8);
    v20 = *v3;
    v21 = v13;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Metric and conformance Apple_Workout_WorkoutAlert.Metric();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3 + 16))
  {
    v15 = *(v3 + 24);
    v20 = *(v3 + 16);
    v21 = v15;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert.Target and conformance Apple_Workout_WorkoutAlert.Target();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v5 = 0;
  }

  v16 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v6 + *(v16 + 24), v12, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v17 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v19 = v5;
    if (EnumCaseMultiPayload == 2)
    {
      closure #3 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #4 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  else
  {
    v19 = v5;
    if (EnumCaseMultiPayload)
    {
      closure #2 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(v6, a1, a2, a3);
    }

    else
    {
      closure #1 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(v6, a1, a2, a3);
    }
  }

  result = _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v12, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  if (!v19)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_SpeedAlert(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + *(v11 + 24), v7, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v7, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_SpeedAlert(v7, v10, type metadata accessor for Apple_Workout_SpeedAlert);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert, &protocol conformance descriptor for Apple_Workout_SpeedAlert);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v10, type metadata accessor for Apple_Workout_SpeedAlert);
  }

  result = _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v7, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_CadenceAlert(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + *(v11 + 24), v7, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v7, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_SpeedAlert(v7, v10, type metadata accessor for Apple_Workout_CadenceAlert);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert, &protocol conformance descriptor for Apple_Workout_CadenceAlert);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v10, type metadata accessor for Apple_Workout_CadenceAlert);
  }

  result = _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v7, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_PowerAlert(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + *(v11 + 24), v7, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v7, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    outlined init with take of Apple_Workout_SpeedAlert(v7, v10, type metadata accessor for Apple_Workout_PowerAlert);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_PowerAlert and conformance Apple_Workout_PowerAlert, type metadata accessor for Apple_Workout_PowerAlert, &protocol conformance descriptor for Apple_Workout_PowerAlert);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v10, type metadata accessor for Apple_Workout_PowerAlert);
  }

  result = _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v7, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_WorkoutAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_HeartRateAlert(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + *(v11 + 24), v7, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v12 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v7, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Apple_Workout_SpeedAlert(v7, v10, type metadata accessor for Apple_Workout_HeartRateAlert);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert, &protocol conformance descriptor for Apple_Workout_HeartRateAlert);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v10, type metadata accessor for Apple_Workout_HeartRateAlert);
  }

  result = _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v7, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_WorkoutAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  (*(*(v4 - 8) + 56))(a2 + v3, 1, 1, v4);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_WorkoutAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_WorkoutAlert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutAlert(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutAlert(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutAlert(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_WorkoutAlert@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_SpeedAlert(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized static Apple_Workout_WorkoutAlert.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSg_AFtMR);
  MEMORY[0x28223BE20](v11);
  v14 = v27 - v13;
  v15 = *a1;
  v16 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v16 <= 2)
    {
      if (v16)
      {
        if (v16 == 1)
        {
          if (v15 != 1)
          {
            goto LABEL_44;
          }
        }

        else if (v15 != 2)
        {
          goto LABEL_44;
        }
      }

      else if (v15)
      {
        goto LABEL_44;
      }
    }

    else if (v16 > 4)
    {
      if (v16 == 5)
      {
        if (v15 != 5)
        {
          goto LABEL_44;
        }
      }

      else if (v15 != 6)
      {
        goto LABEL_44;
      }
    }

    else if (v16 == 3)
    {
      if (v15 != 3)
      {
        goto LABEL_44;
      }
    }

    else if (v15 != 4)
    {
      goto LABEL_44;
    }
  }

  else if (v15 != v16)
  {
    goto LABEL_44;
  }

  v17 = a1[2];
  v18 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        if (v17 != 2)
        {
          goto LABEL_44;
        }
      }

      else if (v17 != 3)
      {
        goto LABEL_44;
      }
    }

    else if (v18)
    {
      if (v17 != 1)
      {
        goto LABEL_44;
      }
    }

    else if (v17)
    {
      goto LABEL_44;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_44;
  }

  v19 = v12;
  v20 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v21 = *(v20 + 24);
  v22 = *(v19 + 48);
  v27[0] = v20;
  v27[1] = a1;
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a1 + v21, v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(a2 + v21, &v14[v22], &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v23 = *(v5 + 48);
  if (v23(v14, 1, v4) != 1)
  {
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOcTm_0(v14, v10, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    if (v23(&v14[v22], 1, v4) == 1)
    {
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v10, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
      goto LABEL_29;
    }

    outlined init with take of Apple_Workout_SpeedAlert(&v14[v22], v7, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    v24 = specialized static Apple_Workout_WorkoutAlert.OneOf_AlertValue.== infix(_:_:)(v10, v7);
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v7, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v10, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    if (v24)
    {
      goto LABEL_43;
    }

LABEL_44:
    v25 = 0;
    return v25 & 1;
  }

  if (v23(&v14[v22], 1, v4) != 1)
  {
LABEL_29:
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSg_AFtMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSg_AFtMR);
    goto LABEL_44;
  }

  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
LABEL_43:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v25 & 1;
}

uint64_t specialized static Apple_Workout_WorkoutAlert.OneOf_AlertValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v2 = type metadata accessor for Apple_Workout_HeartRateAlert(0);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Apple_Workout_PowerAlert(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_CadenceAlert(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_SpeedAlert(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v39 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueO_AEtMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueO_AEtMR);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v39 - v26;
  v29 = *(v28 + 56);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v41, &v39 - v26);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v42, &v27[v29]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v27, v18);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v31 = type metadata accessor for Apple_Workout_PowerAlert;
        v32 = v18;
        goto LABEL_15;
      }

      outlined init with take of Apple_Workout_SpeedAlert(&v27[v29], v6, type metadata accessor for Apple_Workout_PowerAlert);
      v33 = static Apple_Workout_PowerAlert.== infix(_:_:)(v18, v6);
      v34 = type metadata accessor for Apple_Workout_PowerAlert;
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v6, type metadata accessor for Apple_Workout_PowerAlert);
      v35 = v18;
    }

    else
    {
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v27, v15);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v31 = type metadata accessor for Apple_Workout_HeartRateAlert;
        v32 = v15;
        goto LABEL_15;
      }

      v37 = v40;
      outlined init with take of Apple_Workout_SpeedAlert(&v27[v29], v40, type metadata accessor for Apple_Workout_HeartRateAlert);
      v33 = static Apple_Workout_HeartRateAlert.== infix(_:_:)();
      v34 = type metadata accessor for Apple_Workout_HeartRateAlert;
      _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v37, type metadata accessor for Apple_Workout_HeartRateAlert);
      v35 = v15;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v27, v21);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = type metadata accessor for Apple_Workout_CadenceAlert;
      v32 = v21;
      goto LABEL_15;
    }

    outlined init with take of Apple_Workout_SpeedAlert(&v27[v29], v9, type metadata accessor for Apple_Workout_CadenceAlert);
    v33 = static Apple_Workout_CadenceAlert.== infix(_:_:)();
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v9, type metadata accessor for Apple_Workout_CadenceAlert);
    v35 = v21;
    v36 = type metadata accessor for Apple_Workout_CadenceAlert;
LABEL_18:
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v35, v36);
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v27, type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue);
    return v33 & 1;
  }

  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v27, v24);
  if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_SpeedAlert(&v27[v29], v12, type metadata accessor for Apple_Workout_SpeedAlert);
    v33 = static Apple_Workout_SpeedAlert.== infix(_:_:)(v24, v12);
    v34 = type metadata accessor for Apple_Workout_SpeedAlert;
    _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v12, type metadata accessor for Apple_Workout_SpeedAlert);
    v35 = v24;
LABEL_17:
    v36 = v34;
    goto LABEL_18;
  }

  v31 = type metadata accessor for Apple_Workout_SpeedAlert;
  v32 = v24;
LABEL_15:
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOWOhTm_0(v32, v31);
  _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(v27, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueO_AEtMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueO_AEtMR);
  v33 = 0;
  return v33 & 1;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t WorkoutPlan.presentPreview()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlan.presentPreview(), 0, 0);
}

{
  WorkoutPlan.validate()();
  if (v1 || (WorkoutPlan.validate()(), v2))
  {

    v8 = v0[1];

    return v8();
  }

  else
  {
    v3 = v0[2];
    *(swift_task_alloc() + 16) = v3;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan();
    static Message.with(_:)();

    v4 = v0[4];
    v5 = Message.serializedData(partial:)();
    v7 = v6;
    v0[5] = v5;
    v0[6] = v6;
    outlined destroy of Apple_Workout_WorkoutPlan(v4);
    v10 = swift_task_alloc();
    v0[7] = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v7;
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = WorkoutPlan.presentPreview();
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v11, 0, 0, 0xD000000000000010, 0x800000023B67F270, partial apply for closure #1 in WorkoutPlan.presentPreview(), v10, v12);
  }
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = WorkoutPlan.presentPreview();
  }

  else
  {

    v2 = WorkoutPlan.presentPreview();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t WorkoutPlan.openInWorkoutApp()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = WorkoutPlan.openInWorkoutApp();

  return WorkoutPlan.openWorkoutApp()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WorkoutPlan.openWorkoutApp()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlan.openWorkoutApp(), 0, 0);
}

{
  WorkoutPlan.validate()();
  if (v1 || (WorkoutPlan.validate()(), v2))
  {

    v8 = v0[1];

    return v8();
  }

  else
  {
    v3 = v0[2];
    *(swift_task_alloc() + 16) = v3;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan();
    static Message.with(_:)();

    v4 = v0[4];
    v5 = Message.serializedData(partial:)();
    v7 = v6;
    v0[5] = v5;
    v0[6] = v6;
    outlined destroy of Apple_Workout_WorkoutPlan(v4);
    v10 = swift_task_alloc();
    v0[7] = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v7;
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = WorkoutPlan.openWorkoutApp();
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v11, 0, 0, 0xD000000000000010, 0x800000023B67F290, partial apply for closure #1 in WorkoutPlan.openWorkoutApp(), v10, v12);
  }
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = WorkoutPlan.openWorkoutApp();
  }

  else
  {

    v2 = WorkoutPlan.openWorkoutApp();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined consume of Data._Representation(v0[5], v0[6]);

  v1 = v0[1];

  return v1();
}

{
  outlined consume of Data._Representation(v0[5], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t WorkoutPlan.save()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutPlan.save(), 0, 0);
}

{
  WorkoutPlan.validate()();
  if (v1 || (WorkoutPlan.validate()(), v2))
  {

    v8 = v0[1];

    return v8();
  }

  else
  {
    v3 = v0[2];
    *(swift_task_alloc() + 16) = v3;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan();
    static Message.with(_:)();

    v4 = v0[4];
    v5 = Message.serializedData(partial:)();
    v7 = v6;
    v0[5] = v5;
    v0[6] = v6;
    outlined destroy of Apple_Workout_WorkoutPlan(v4);
    v10 = swift_task_alloc();
    v0[7] = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v7;
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = WorkoutPlan.save();
    v12 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v11, 0, 0, 0x292865766173, 0xE600000000000000, partial apply for closure #1 in WorkoutPlan.save(), v10, v12);
  }
}

{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = WorkoutPlan.save();
  }

  else
  {

    v2 = WorkoutPlan.save();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void closure #1 in WorkoutPlan.presentPreview()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v18 = a6;
  v19 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - v11;
  v13 = [objc_opt_self() sharedInstance];
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v10 + 16))(v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v15, v12, v9);
  aBlock[4] = a5;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = v18;
  v17 = _Block_copy(aBlock);

  [v13 *v19];
  _Block_release(v17);
}

uint64_t closure #1 in closure #1 in WorkoutPlan.presentPreview()(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan;
  if (!lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan)
  {
    type metadata accessor for Apple_Workout_WorkoutPlan(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_WorkoutPlan(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void closure #1 in WorkoutPlan.protoComposition.getterpartial apply(uint64_t *a1)
{
  partial apply for closure #1 in WorkoutPlan.protoComposition.getter(a1);
}

{
  partial apply for closure #1 in WorkoutPlan.protoComposition.getter(a1);
}

{
  _s10WorkoutKit0A4PlanV16protoCompositionAA06Apple_a1_aC0VvgyAFzKXEfU_TA_0(a1);
}

{
  _s10WorkoutKit0A4PlanV16protoCompositionAA06Apple_a1_aC0VvgyAFzKXEfU_TA_1(a1);
}

{
  _s10WorkoutKit0A4PlanV16protoCompositionAA06Apple_a1_aC0VvgyAFzKXEfU_TA_1(a1);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata completion function for Apple_Workout_HeartRateValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_PoolSwimDistanceWithTimeValue(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_DistanceValue?(319, &lazy cache variable for type metadata for Apple_Workout_DistanceValue?, type metadata accessor for Apple_Workout_DistanceValue);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_DistanceValue?(319, &lazy cache variable for type metadata for Apple_Workout_TimeValue?, type metadata accessor for Apple_Workout_TimeValue);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_DistanceValue?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_17Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_18Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for Apple_Workout_HeartRateValue(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_TimeValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_DistanceValue.DistanceUnit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_DistanceValue.DistanceUnit@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_DistanceValue.DistanceUnit@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_TimeValue.TimeUnit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_EnergyValue.EnergyUnit@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_EnergyValue.EnergyUnit@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_DistanceValue.DistanceUnit(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_EnergyValue.EnergyUnit(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_DistanceValue.DistanceUnit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_EnergyValue.EnergyUnit and conformance Apple_Workout_EnergyValue.EnergyUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_DistanceValue.DistanceUnit and conformance Apple_Workout_DistanceValue.DistanceUnit);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit;
  if (!lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_TimeValue.TimeUnit and conformance Apple_Workout_TimeValue.TimeUnit);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Apple_Workout_EnergyValue.EnergyUnit] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1)
{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_DistanceValue._protobuf_nameMap, "distance", 8);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_HeartRateValue._protobuf_nameMap, "beatsPerMinute", 14);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_TimeValue._protobuf_nameMap, "time", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_EnergyValue._protobuf_nameMap, "energy", 6);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_ZoneValue._protobuf_nameMap, "zone", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_LocationCoordinate2D._protobuf_nameMap, "latitude", 8, "longitude");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_PoolSwimDistanceWithTimeValue._protobuf_nameMap, "distanceValue", 13, "timeValue");
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_SpeedValue._protobuf_nameMap, "distance", "time", 4);
}

{
  return one-time initialization function for _protobuf_nameMap(a1, static Apple_Workout_SpeedRange._protobuf_nameMap, "minSpeed", "maxSpeed", 8);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_DistanceValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_DistanceValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_DistanceValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_HeartRateValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t Apple_Workout_HeartRateValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Apple_Workout_HeartRateValue(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_HeartRateValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue, &protocol conformance descriptor for Apple_Workout_HeartRateValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_HeartRateValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue, &protocol conformance descriptor for Apple_Workout_HeartRateValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_HeartRateValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue, &protocol conformance descriptor for Apple_Workout_HeartRateValue);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_HeartRateValue(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_DistanceValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, void (*a6)(void))
{
  if (!*v6 || (a4(a1, a2, a3), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v7))
  {
    if (!v6[2] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v7))
    {
      (a6)(0, a2, a3, a4, a5);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_TimeValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_TimeValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_TimeValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);

  return Message.hash(into:)();
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_23B677F60;
  v10 = (v9 + v8);
  v11 = v9 + v8 + v6[14];
  *v10 = 1;
  *v11 = "unit";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = type metadata accessor for _NameMap.NameDescription();
  v14 = *(*(v13 - 8) + 104);
  (v14)(v11, v12, v13);
  v15 = v10 + v7 + v6[14];
  *(v10 + v7) = 2;
  *v15 = a3;
  *(v15 + 1) = a4;
  v15[16] = 2;
  v14();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_23B6792F0;
  v11 = v10 + v9 + v8[14];
  *(v10 + v9) = 1;
  *v11 = a3;
  *(v11 + 8) = a4;
  *(v11 + 16) = 2;
  v12 = *MEMORY[0x277D21870];
  v13 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Apple_Workout_DistanceValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v5 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4();
      dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
    }

    else if (result == 2)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_DistanceValue@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_EnergyValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue, &protocol conformance descriptor for Apple_Workout_EnergyValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_EnergyValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue, &protocol conformance descriptor for Apple_Workout_EnergyValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_EnergyValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_EnergyValue and conformance Apple_Workout_EnergyValue, type metadata accessor for Apple_Workout_EnergyValue, &protocol conformance descriptor for Apple_Workout_EnergyValue);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_ZoneValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_ZoneValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Apple_Workout_ZoneValue(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_HeartRateValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_HeartRateValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_ZoneValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue, &protocol conformance descriptor for Apple_Workout_ZoneValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_ZoneValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue, &protocol conformance descriptor for Apple_Workout_ZoneValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_ZoneValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue, &protocol conformance descriptor for Apple_Workout_ZoneValue);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_ZoneValue(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t one-time initialization function for _protobuf_nameMap(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23B677F60;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x277D21870];
  v16 = type metadata accessor for _NameMap.NameDescription();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 9;
  v18[16] = 2;
  v17();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v7 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23B677F60;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 8;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Apple_Workout_LocationCoordinate2D.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_LocationCoordinate2D.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
  {
    if (!v3[1] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_LocationCoordinate2D@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_DistanceValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_DistanceValue(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_LocationCoordinate2D(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D, &protocol conformance descriptor for Apple_Workout_LocationCoordinate2D);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_LocationCoordinate2D(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D, &protocol conformance descriptor for Apple_Workout_LocationCoordinate2D);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_LocationCoordinate2D(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_LocationCoordinate2D and conformance Apple_Workout_LocationCoordinate2D, type metadata accessor for Apple_Workout_LocationCoordinate2D, &protocol conformance descriptor for Apple_Workout_LocationCoordinate2D);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_LocationCoordinate2D(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_PoolSwimDistanceWithTimeValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      closure #1 in Apple_Workout_PoolSwimDistanceWithTimeValue.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_PoolSwimDistanceWithTimeValue.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PoolSwimDistanceWithTimeValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  type metadata accessor for Apple_Workout_DistanceValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_PoolSwimDistanceWithTimeValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  type metadata accessor for Apple_Workout_TimeValue(0);
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_PoolSwimDistanceWithTimeValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_PoolSwimDistanceWithTimeValue.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_PoolSwimDistanceWithTimeValue.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_PoolSwimDistanceWithTimeValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  outlined init with copy of Apple_Workout_TimeValue?(a1 + *(v12 + 20), v7, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_TimeValue?(v7, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  }

  outlined init with take of Apple_Workout_TimeValue(v7, v11, type metadata accessor for Apple_Workout_DistanceValue);
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_TimeValue(v11, type metadata accessor for Apple_Workout_DistanceValue);
}

uint64_t closure #2 in Apple_Workout_PoolSwimDistanceWithTimeValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_TimeValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  outlined init with copy of Apple_Workout_TimeValue?(a1 + *(v12 + 24), v7, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_TimeValue?(v7, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  outlined init with take of Apple_Workout_TimeValue(v7, v11, type metadata accessor for Apple_Workout_TimeValue);
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_TimeValue(v11, type metadata accessor for Apple_Workout_TimeValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_PoolSwimDistanceWithTimeValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_DistanceValue(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Workout_TimeValue(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_PoolSwimDistanceWithTimeValue@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_PoolSwimDistanceWithTimeValue(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_PoolSwimDistanceWithTimeValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue, &protocol conformance descriptor for Apple_Workout_PoolSwimDistanceWithTimeValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_DistanceValue@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_PoolSwimDistanceWithTimeValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue, &protocol conformance descriptor for Apple_Workout_PoolSwimDistanceWithTimeValue);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_DistanceValue(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_PoolSwimDistanceWithTimeValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue, type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue, &protocol conformance descriptor for Apple_Workout_PoolSwimDistanceWithTimeValue);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_DistanceValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static Apple_Workout_PoolSwimDistanceWithTimeValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Apple_Workout_TimeValue(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = (&v37 - v6);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR);
  MEMORY[0x28223BE20](v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v37 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Apple_Workout_PoolSwimDistanceWithTimeValue(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  outlined init with copy of Apple_Workout_TimeValue?(a1 + v19, v18, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  outlined init with copy of Apple_Workout_TimeValue?(v46 + v19, &v18[v20], &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    outlined init with copy of Apple_Workout_TimeValue?(v18, v14, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      outlined init with take of Apple_Workout_TimeValue(&v18[v20], v11, type metadata accessor for Apple_Workout_DistanceValue);
      v25 = specialized static Apple_Workout_DistanceValue.== infix(_:_:)(v14, v11);
      outlined destroy of Apple_Workout_TimeValue(v11, type metadata accessor for Apple_Workout_DistanceValue);
      outlined destroy of Apple_Workout_TimeValue(v14, type metadata accessor for Apple_Workout_DistanceValue);
      outlined destroy of Apple_Workout_TimeValue?(v18, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_TimeValue(v14, type metadata accessor for Apple_Workout_DistanceValue);
LABEL_6:
    v22 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMd;
    v23 = &_s10WorkoutKit06Apple_A14_DistanceValueVSg_ADtMR;
    v24 = v18;
LABEL_14:
    outlined destroy of Apple_Workout_TimeValue?(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Apple_Workout_TimeValue?(v18, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  outlined init with copy of Apple_Workout_TimeValue?(v45 + v26, v44, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with copy of Apple_Workout_TimeValue?(v46 + v26, v28 + v27, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      outlined destroy of Apple_Workout_TimeValue?(v28, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v39;
  outlined init with copy of Apple_Workout_TimeValue?(v28, v39, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    outlined destroy of Apple_Workout_TimeValue(v31, type metadata accessor for Apple_Workout_TimeValue);
LABEL_13:
    v22 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd;
    v23 = &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v38;
  outlined init with take of Apple_Workout_TimeValue(v34, v38, type metadata accessor for Apple_Workout_TimeValue);
  v36 = specialized static Apple_Workout_TimeValue.== infix(_:_:)(v31, v35);
  outlined destroy of Apple_Workout_TimeValue(v35, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of Apple_Workout_TimeValue(v31, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of Apple_Workout_TimeValue?(v28, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t specialized static Apple_Workout_EnergyValue.== infix(_:_:)(double *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
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

  if (a1[2] == *(a2 + 2))
  {
    type metadata accessor for Apple_Workout_EnergyValue(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Apple_Workout_DistanceValue.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        if (v2 != 3)
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

    else if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
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

  if (a1[2] == *(a2 + 16))
  {
    type metadata accessor for Apple_Workout_DistanceValue(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t specialized static Apple_Workout_TimeValue.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3 > 1)
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

  if (a1[2] == *(a2 + 16))
  {
    type metadata accessor for Apple_Workout_TimeValue(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_PoolSwimDistanceWithTimeValue and conformance Apple_Workout_PoolSwimDistanceWithTimeValue(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t outlined init with copy of Apple_Workout_TimeValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_TimeValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_TimeValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_TimeValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation14DateComponentsVG_10WorkoutKit09ScheduledG4PlanVs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = type metadata accessor for ScheduledWorkoutPlan(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v21 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v21;
  v12 = *(type metadata accessor for DateComponents() - 8);
  v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v18 = *(v12 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v11 = v21;
    }

    *(v11 + 16) = v15 + 1;
    outlined init with take of ScheduledWorkoutPlan(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15);
    v13 += v18;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t WorkoutScheduler.scheduledWorkouts.getter()
{
  return MEMORY[0x2822009F8](WorkoutScheduler.scheduledWorkouts.getter, 0, 0);
}

{
  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v2 = static WorkoutScheduler.bundleId;
  v1 = unk_27E168D50;
  v0[4] = unk_27E168D50;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10WorkoutKit09ScheduledA4PlanVGMd, &_sSay10WorkoutKit09ScheduledA4PlanVGMR);
  *v4 = v0;
  v4[1] = WorkoutScheduler.scheduledWorkouts.getter;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000020, 0x800000023B67F480, partial apply for closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:), v3, v5);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = WorkoutScheduler.scheduledWorkouts.getter;
  }

  else
  {

    v2 = WorkoutScheduler.scheduledWorkouts.getter;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{
  v17 = v0;

  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WorkoutKitLog.scheduling);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    *(v0 + 24) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_23B5E7000, v4, v5, "failed to retrieve scheduled plans due to %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23EEA1330](v8, -1, -1);
    MEMORY[0x23EEA1330](v7, -1, -1);
  }

  v13 = *(v0 + 8);
  v14 = MEMORY[0x277D84F90];

  return v13(v14);
}

uint64_t static WorkoutScheduler.retrieveScheduledWorkouts(from:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](static WorkoutScheduler.retrieveScheduledWorkouts(from:), 0, 0);
}

uint64_t static WorkoutScheduler.retrieveScheduledWorkouts(from:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10WorkoutKit09ScheduledA4PlanVGMd, &_sSay10WorkoutKit09ScheduledA4PlanVGMR);
  *v4 = v0;
  v4[1] = static WorkoutScheduler.retrieveScheduledWorkouts(from:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000020, 0x800000023B67F480, closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:)partial apply, v3, v5);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = static WorkoutScheduler.retrieveScheduledWorkouts(from:);
  }

  else
  {

    v2 = static WorkoutScheduler.retrieveScheduledWorkouts(from:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WorkoutScheduler.schedule(_:at:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](WorkoutScheduler.schedule(_:at:), 0, 0);
}

uint64_t WorkoutScheduler.schedule(_:at:)()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMR);
  v2 = type metadata accessor for DateComponents();
  *(v0 + 32) = v2;
  v3 = *(v2 - 8);
  *(v0 + 40) = v3;
  v4 = *(v3 + 80);
  *(v0 + 64) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = xmmword_23B6792F0;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = WorkoutScheduler.schedule(_:at:);
  v8 = *(v0 + 16);

  return specialized WorkoutScheduler.schedule(_:dateComponents:)(v8, v6);
}

uint64_t WorkoutScheduler.schedule(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = WorkoutScheduler.schedule(_:dateComponents:);

  return specialized WorkoutScheduler.schedule(_:dateComponents:)(a1, a2);
}

uint64_t WorkoutScheduler.remove(_:at:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](WorkoutScheduler.remove(_:at:), 0, 0);
}

uint64_t WorkoutScheduler.remove(_:at:)()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMR);
  v2 = type metadata accessor for DateComponents();
  *(v0 + 32) = v2;
  v3 = *(v2 - 8);
  *(v0 + 40) = v3;
  v4 = *(v3 + 80);
  *(v0 + 64) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = xmmword_23B6792F0;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = WorkoutScheduler.remove(_:at:);
  v8 = *(v0 + 16);

  return specialized WorkoutScheduler.remove(_:dateComponents:)(v8, v6);
}

uint64_t WorkoutScheduler.remove(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = WorkoutScheduler.remove(_:dateComponents:);

  return specialized WorkoutScheduler.remove(_:dateComponents:)(a1, a2);
}

uint64_t WorkoutScheduler.markComplete(_:at:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](WorkoutScheduler.markComplete(_:at:), 0, 0);
}

uint64_t WorkoutScheduler.markComplete(_:at:)()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMd, &_ss23_ContiguousArrayStorageCy10Foundation14DateComponentsVGMR);
  v2 = type metadata accessor for DateComponents();
  *(v0 + 32) = v2;
  v3 = *(v2 - 8);
  *(v0 + 40) = v3;
  v4 = *(v3 + 80);
  *(v0 + 64) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = xmmword_23B6792F0;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = WorkoutScheduler.markComplete(_:at:);
  v8 = *(v0 + 16);

  return specialized WorkoutScheduler.markComplete(_:dateComponents:)(v8, v6);
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = (*(*v0 + 64) + 32) & ~*(*v0 + 64);
  v7 = *v0;

  swift_setDeallocating();
  (*(v2 + 8))(v1 + v4, v3);
  swift_deallocClassInstance();
  v5 = *(v7 + 8);

  return v5();
}

uint64_t WorkoutScheduler.markComplete(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = WorkoutScheduler.markComplete(_:dateComponents:);

  return specialized WorkoutScheduler.markComplete(_:dateComponents:)(a1, a2);
}

uint64_t WorkoutScheduler.markComplete(_:dateComponents:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WorkoutScheduler.removeAllWorkouts()()
{
  return MEMORY[0x2822009F8](WorkoutScheduler.removeAllWorkouts(), 0, 0);
}

{
  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[3] = __swift_project_value_buffer(v1, static WorkoutKitLog.scheduling);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23B5E7000, v2, v3, "removing all scheduled workouts", v4, 2u);
    MEMORY[0x23EEA1330](v4, -1, -1);
  }

  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v6 = static WorkoutScheduler.bundleId;
  v5 = unk_27E168D50;
  v0[4] = unk_27E168D50;

  v7 = swift_task_alloc();
  v0[5] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = WorkoutScheduler.removeAllWorkouts();
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD00000000000001ALL, 0x800000023B67F4B0, partial apply for closure #1 in static WorkoutScheduler.removeAll(sourceBundleId:), v7, v9);
}

{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = WorkoutScheduler.removeAllWorkouts();
  }

  else
  {

    v2 = WorkoutScheduler.removeAllWorkouts();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{
  v16 = v0;
  v1 = v0[7];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B5E7000, v3, v4, "failed to remove all workouts due to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA1330](v7, -1, -1);
    MEMORY[0x23EEA1330](v6, -1, -1);
  }

  else
  {
    v12 = v0[7];
  }

  v13 = v0[1];

  return v13();
}

uint64_t static WorkoutScheduler.removeAll(sourceBundleId:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](static WorkoutScheduler.removeAll(sourceBundleId:), 0, 0);
}

uint64_t static WorkoutScheduler.removeAll(sourceBundleId:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = static WorkoutScheduler.removeAll(sourceBundleId:);
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD00000000000001ALL, 0x800000023B67F4B0, closure #1 in static WorkoutScheduler.removeAll(sourceBundleId:)partial apply, v3, v5);
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = static WorkoutScheduler.removeAll(sourceBundleId:);
  }

  else
  {

    v2 = static WorkoutScheduler.removeAll(sourceBundleId:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t one-time initialization function for bundleId()
{
  result = closure #1 in variable initialization expression of static WorkoutScheduler.bundleId();
  static WorkoutScheduler.bundleId = result;
  unk_27E168D50 = v1;
  return result;
}

uint64_t closure #1 in variable initialization expression of static WorkoutScheduler.bundleId()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;

    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      return v2;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Collection.dropFirst(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for ScheduledWorkoutPlan(0);
    return a2;
  }

  return result;
}

uint64_t static WorkoutScheduler.remove(scheduledWorkouts:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static WorkoutScheduler.remove(scheduledWorkouts:for:);

  return specialized static WorkoutScheduler.remove(scheduledWorkouts:for:)(a1, a2, a3);
}

uint64_t static WorkoutScheduler.add(scheduledWorkouts:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static WorkoutScheduler.add(scheduledWorkouts:for:);

  return specialized static WorkoutScheduler.add(scheduledWorkouts:for:)(a1, a2, a3);
}

uint64_t static WorkoutScheduler.add(scheduledWorkouts:for:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in WorkoutScheduler.schedule(_:dateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WorkoutPlan(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ScheduledWorkoutPlan(a2, v12, type metadata accessor for WorkoutPlan);
  (*(v7 + 16))(v9, a1, v6);
  return ScheduledWorkoutPlan.init(_:date:)(v12, v9, a3);
}

uint64_t closure #1 in WorkoutScheduler.markComplete(_:dateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutPlan(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ScheduledWorkoutPlan(a2, v15, type metadata accessor for WorkoutPlan);
  (*(v10 + 16))(v12, a1, v9);
  ScheduledWorkoutPlan.init(_:date:)(v15, v12, a3);
  static Date.now.getter();
  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
  v17 = type metadata accessor for ScheduledWorkoutPlan(0);
  return outlined assign with take of Date?(v8, a3 + *(v17 + 24));
}

WorkoutKit::WorkoutScheduler::AuthorizationState_optional __swiftcall WorkoutScheduler.AuthorizationState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutScheduler.AuthorizationState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutScheduler.AuthorizationState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t WorkoutScheduler.authorizationState.getter()
{
  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v2 = static WorkoutScheduler.bundleId;
  v1 = unk_27E168D50;
  v0[4] = unk_27E168D50;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = WorkoutScheduler.authorizationState.getter;
  v5 = v0[3];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000018, 0x800000023B67F4D0, partial apply for closure #1 in static WorkoutScheduler.authorizationState(for:), v3, &type metadata for WorkoutScheduler.AuthorizationState);
}

{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](WorkoutScheduler.authorizationState.getter, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v17 = v0;

  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WorkoutKitLog.scheduling);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v0 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23B5E7000, v4, v5, "failed to retrieve authorization state due to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEA1330](v9, -1, -1);
    MEMORY[0x23EEA1330](v8, -1, -1);
  }

  else
  {
  }

  **(v0 + 24) = 0;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t static WorkoutScheduler.authorizationState(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](static WorkoutScheduler.authorizationState(for:), 0, 0);
}

uint64_t static WorkoutScheduler.authorizationState(for:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = static WorkoutScheduler.authorizationState(for:);
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD000000000000018, 0x800000023B67F4D0, closure #1 in static WorkoutScheduler.authorizationState(for:)partial apply, v3, &type metadata for WorkoutScheduler.AuthorizationState);
}

{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static WorkoutScheduler.authorizationState(for:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WorkoutScheduler.requestAuthorization()()
{
  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v2 = static WorkoutScheduler.bundleId;
  v1 = unk_27E168D50;
  v0[4] = unk_27E168D50;

  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = WorkoutScheduler.requestAuthorization();
  v5 = v0[3];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000001ALL, 0x800000023B67F4F0, partial apply for closure #1 in static WorkoutScheduler.requestAuthorization(for:), v3, &type metadata for WorkoutScheduler.AuthorizationState);
}

{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](WorkoutScheduler.requestAuthorization(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v17 = v0;

  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WorkoutKitLog.scheduling);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    *(v0 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23B5E7000, v4, v5, "failed to request authorization state due to %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EEA1330](v9, -1, -1);
    MEMORY[0x23EEA1330](v8, -1, -1);
  }

  else
  {
  }

  **(v0 + 24) = 0;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t static WorkoutScheduler.requestAuthorization(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](static WorkoutScheduler.requestAuthorization(for:), 0, 0);
}

uint64_t static WorkoutScheduler.requestAuthorization(for:)()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = static WorkoutScheduler.requestAuthorization(for:);
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0xD00000000000001ALL, 0x800000023B67F4F0, closure #1 in static WorkoutScheduler.requestAuthorization(for:)partial apply, v3, &type metadata for WorkoutScheduler.AuthorizationState);
}

{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](static WorkoutScheduler.requestAuthorization(for:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void closure #2 in static WorkoutScheduler.add(scheduledWorkouts:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v18 = [objc_opt_self() sharedInstance];

  isa = Array._bridgeToObjectiveC()().super.isa;

  v12 = MEMORY[0x23EEA0A00](a3, a4);
  (*(v8 + 16))(v10, a1, v7);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = partial apply for closure #1 in closure #2 in static WorkoutScheduler.add(scheduledWorkouts:for:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_46;
  v15 = _Block_copy(aBlock);

  v16 = v18;
  [v18 addScheduledWorkouts:isa sourceBundleId:v12 completion:v15];
  _Block_release(v15);
}

void closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - v9;
  v11 = [objc_opt_self() sharedInstance];

  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = MEMORY[0x23EEA0A00](a3, a4);
  (*(v8 + 16))(v10, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v10, v7);
  aBlock[4] = partial apply for closure #1 in closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_55;
  v16 = _Block_copy(aBlock);

  [v11 removeScheduledWorkouts:isa sourceBundleId:v13 completion:v16];
  _Block_release(v16);
}

uint64_t closure #1 in closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:)(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMd, &_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() sharedInstance];
  v11 = MEMORY[0x23EEA0A00](a2, a3);
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [Data], @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_76;
  v14 = _Block_copy(aBlock);

  [v10 retrieveScheduledWorkoutCompositionsForSourceBundleId:v11 completion:v14];
  _Block_release(v14);
}

uint64_t closure #1 in closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:)(uint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for ScheduledWorkoutPlan(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = a2;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMd, &_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v18 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      v11 = v18;
      v12 = (a1 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        outlined copy of Data._Representation(v13, *v12);
        static ScheduledWorkoutPlan.importFromData(_:)(v13, v14, v7);
        outlined consume of Data._Representation(v13, v14);
        v18 = v11;
        v16 = v11[2];
        v15 = v11[3];
        if (v16 >= v15 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v11 = v18;
        }

        v12 += 2;
        v11[2] = v16 + 1;
        outlined init with take of ScheduledWorkoutPlan(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16);
        --v10;
      }

      while (v10);
    }

    v18 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMd, &_sScCySay10WorkoutKit09ScheduledA4PlanVGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [Data], @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = a3;
  v4(v5, a3);
}

void closure #1 in static WorkoutScheduler.removeAll(sourceBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() sharedInstance];
  v11 = MEMORY[0x23EEA0A00](a2, a3);
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in static WorkoutScheduler.removeAll(sourceBundleId:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_61;
  v14 = _Block_copy(aBlock);

  [v10 deleteScheduledWorkoutCompositionsForSourceBundleId:v11 completion:v14];
  _Block_release(v14);
}

uint64_t closure #1 in closure #2 in static WorkoutScheduler.add(scheduledWorkouts:for:)(int a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a2)
  {
    v9 = a2;
    specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void closure #1 in static WorkoutScheduler.authorizationState(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() sharedInstance];
  v11 = MEMORY[0x23EEA0A00](a2, a3);
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in static WorkoutScheduler.authorizationState(for:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_38;
  v14 = _Block_copy(aBlock);

  [v10 retrieveAuthorizationStateForBundleId:v11 completion:v14];
  _Block_release(v14);
}

void closure #1 in closure #1 in static WorkoutScheduler.authorizationState(for:)(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (!a1)
  {
    lazy protocol witness table accessor for type AuthorizationError and conformance AuthorizationError();
    swift_allocError();
    *v4 = 1;
    goto LABEL_3;
  }

  v3 = a1;
  if ([v3 unsignedIntegerValue] >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void closure #1 in static WorkoutScheduler.requestAuthorization(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - v8;
  v10 = [objc_opt_self() sharedInstance];
  v11 = MEMORY[0x23EEA0A00](a2, a3);
  (*(v7 + 16))(v9, a1, v6);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v9, v6);
  aBlock[4] = partial apply for closure #1 in closure #1 in static WorkoutScheduler.requestAuthorization(for:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);

  [v10 requestAuthorizationForBundleId:v11 completion:v14];
  _Block_release(v14);
}

void closure #1 in closure #1 in static WorkoutScheduler.requestAuthorization(for:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(a3, a4);
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    return;
  }

  if (!a1)
  {
    specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(a3, a4);
    lazy protocol witness table accessor for type AuthorizationError and conformance AuthorizationError();
    swift_allocError();
    *v9 = 1;
    goto LABEL_3;
  }

  v7 = a1;
  v8 = [v7 unsignedIntegerValue];
  specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(a3, a4);
  if (v8 >= 3)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
  }
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
  result = _swift_stdlib_malloc_size_1(v17);
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

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for ScheduledWorkoutPlan(0) - 8);
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

void specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR);
      v7 = *(type metadata accessor for ScheduledWorkoutPlan(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size_1(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for ScheduledWorkoutPlan(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ScheduledWorkoutPlan(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ScheduledWorkoutPlan(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ScheduledWorkoutPlan(0);
  MEMORY[0x28223BE20](v8);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      outlined init with copy of ScheduledWorkoutPlan(v22, v16, type metadata accessor for ScheduledWorkoutPlan);
      outlined init with copy of ScheduledWorkoutPlan(v19, v12, type metadata accessor for ScheduledWorkoutPlan);
      v23 = static Date.< infix(_:_:)();
      outlined destroy of ScheduledWorkoutPlan(v12, type metadata accessor for ScheduledWorkoutPlan);
      outlined destroy of ScheduledWorkoutPlan(v16, type metadata accessor for ScheduledWorkoutPlan);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      outlined init with take of ScheduledWorkoutPlan(v22, v34);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of ScheduledWorkoutPlan(v24, v19);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v99 = a1;
  v9 = type metadata accessor for ScheduledWorkoutPlan(0);
  v108 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v111 = &v97 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v97 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v97 - v17;
  v110 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v99;
    if (!*v99)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v92 = a4;
    }

    else
    {
LABEL_128:
      v92 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v113 = v92;
    a4 = *(v92 + 2);
    if (a4 >= 2)
    {
      while (*v110)
      {
        v93 = *&v92[16 * a4];
        v94 = v92;
        v95 = *&v92[16 * a4 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v110 + *(v108 + 72) * v93, *v110 + *(v108 + 72) * *&v92[16 * a4 + 16], *v110 + *(v108 + 72) * v95, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v93)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = specialized _ArrayBuffer._consumeAndCreateNew()(v94);
        }

        if (a4 - 2 >= *(v94 + 2))
        {
          goto LABEL_122;
        }

        v96 = &v94[16 * a4];
        *v96 = v93;
        *(v96 + 1) = v95;
        v113 = v94;
        specialized Array.remove(at:)(a4 - 1);
        v92 = v113;
        a4 = *(v113 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v98 = a4;
  v112 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v103 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *v110;
      v25 = *(v108 + 72);
      v5 = *v110 + v25 * v23;
      v100 = v22;
      v26 = v25;
      v109 = v25;
      outlined init with copy of ScheduledWorkoutPlan(v5, v18, type metadata accessor for ScheduledWorkoutPlan);
      outlined init with copy of ScheduledWorkoutPlan(v24 + v26 * v100, v15, type metadata accessor for ScheduledWorkoutPlan);
      LODWORD(v107) = static Date.< infix(_:_:)();
      outlined destroy of ScheduledWorkoutPlan(v15, type metadata accessor for ScheduledWorkoutPlan);
      outlined destroy of ScheduledWorkoutPlan(v18, type metadata accessor for ScheduledWorkoutPlan);
      v27 = v100 + 2;
      v28 = v24 + v109 * (v100 + 2);
      while (v19 != v27)
      {
        outlined init with copy of ScheduledWorkoutPlan(v28, v18, type metadata accessor for ScheduledWorkoutPlan);
        outlined init with copy of ScheduledWorkoutPlan(v5, v15, type metadata accessor for ScheduledWorkoutPlan);
        v29 = static Date.< infix(_:_:)() & 1;
        outlined destroy of ScheduledWorkoutPlan(v15, type metadata accessor for ScheduledWorkoutPlan);
        outlined destroy of ScheduledWorkoutPlan(v18, type metadata accessor for ScheduledWorkoutPlan);
        ++v27;
        v28 += v109;
        v5 += v109;
        if ((v107 & 1) != v29)
        {
          v19 = v27 - 1;
          break;
        }
      }

      a4 = v98;
      v22 = v100;
      if (v107)
      {
        if (v19 < v100)
        {
          goto LABEL_125;
        }

        if (v100 < v19)
        {
          v97 = v6;
          v30 = v109 * (v19 - 1);
          v31 = v19;
          v32 = v19 * v109;
          v107 = v19;
          v33 = v100;
          v34 = v100 * v109;
          do
          {
            if (v33 != --v31)
            {
              v35 = *v110;
              if (!*v110)
              {
                goto LABEL_131;
              }

              v5 = v35 + v34;
              outlined init with take of ScheduledWorkoutPlan(v35 + v34, v102);
              if (v34 < v30 || v5 >= v35 + v32)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v34 != v30)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of ScheduledWorkoutPlan(v102, v35 + v30);
            }

            ++v33;
            v30 -= v109;
            v32 -= v109;
            v34 += v109;
          }

          while (v33 < v31);
          v6 = v97;
          a4 = v98;
          v22 = v100;
          v19 = v107;
        }
      }
    }

    v36 = v110[1];
    if (v19 < v36)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v36)
        {
          v37 = v110[1];
        }

        else
        {
          v37 = v22 + a4;
        }

        if (v37 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v37)
        {
          break;
        }
      }
    }

    v38 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v103;
    }

    else
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v103 + 2) + 1, 1, v103);
    }

    a4 = *(v21 + 2);
    v39 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v39 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v40 = &v21[16 * a4];
    *(v40 + 4) = v22;
    *(v40 + 5) = v38;
    v41 = *v99;
    if (!*v99)
    {
      goto LABEL_133;
    }

    v104 = v38;
    if (a4)
    {
      while (1)
      {
        v42 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v43 = *(v21 + 4);
          v44 = *(v21 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_52:
          if (v46)
          {
            goto LABEL_112;
          }

          v59 = &v21[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_115;
          }

          v65 = &v21[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_119;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v69 = &v21[16 * v5];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_66:
        if (v64)
        {
          goto LABEL_114;
        }

        v72 = &v21[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_117;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v42 - 1;
        if (v42 - 1 >= v5)
        {
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
          goto LABEL_127;
        }

        if (!*v110)
        {
          goto LABEL_130;
        }

        v80 = v21;
        v81 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v42 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v110 + *(v108 + 72) * v81, *v110 + *(v108 + 72) * *&v21[16 * v42 + 32], *v110 + *(v108 + 72) * v5, v41);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v81)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = specialized _ArrayBuffer._consumeAndCreateNew()(v80);
        }

        if (a4 >= *(v80 + 2))
        {
          goto LABEL_109;
        }

        v82 = &v80[16 * a4];
        *(v82 + 4) = v81;
        *(v82 + 5) = v5;
        v113 = v80;
        specialized Array.remove(at:)(v42);
        v21 = v113;
        v5 = *(v113 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v21[16 * v5 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_110;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_111;
      }

      v54 = &v21[16 * v5];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_113;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_116;
      }

      if (v58 >= v50)
      {
        v76 = &v21[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_120;
        }

        if (v45 < v79)
        {
          v42 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v110[1];
    v20 = v104;
    a4 = v98;
    if (v104 >= v19)
    {
      goto LABEL_95;
    }
  }

  v97 = v6;
  v83 = v19;
  v84 = v22;
  v85 = *v110;
  v86 = *(v108 + 72);
  v87 = *v110 + v86 * (v19 - 1);
  v88 = -v86;
  v100 = v84;
  v101 = v86;
  v89 = v84 - v19;
  v107 = v83;
  v5 = v85 + v83 * v86;
  v104 = v37;
LABEL_85:
  v105 = v5;
  v106 = v89;
  v109 = v87;
  v90 = v87;
  while (1)
  {
    outlined init with copy of ScheduledWorkoutPlan(v5, v18, type metadata accessor for ScheduledWorkoutPlan);
    outlined init with copy of ScheduledWorkoutPlan(v90, v15, type metadata accessor for ScheduledWorkoutPlan);
    a4 = static Date.< infix(_:_:)();
    outlined destroy of ScheduledWorkoutPlan(v15, type metadata accessor for ScheduledWorkoutPlan);
    outlined destroy of ScheduledWorkoutPlan(v18, type metadata accessor for ScheduledWorkoutPlan);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v87 = v109 + v101;
      v89 = v106 - 1;
      v38 = v104;
      v5 = v105 + v101;
      if (++v107 != v104)
      {
        goto LABEL_85;
      }

      v6 = v97;
      v22 = v100;
      if (v104 < v100)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    a4 = v111;
    outlined init with take of ScheduledWorkoutPlan(v5, v111);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of ScheduledWorkoutPlan(a4, v90);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}