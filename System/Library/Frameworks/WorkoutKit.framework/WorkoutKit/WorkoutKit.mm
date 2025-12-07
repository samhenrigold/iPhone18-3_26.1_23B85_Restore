uint64_t type metadata accessor for WorkoutPlan.Workout(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutPlan(uint64_t a1)
{
  type metadata accessor for WorkoutPlan.Workout(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for WorkoutPlan.Route?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for UUID?(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [UUID]?(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t type metadata completion function for WorkoutPlan.Workout(uint64_t a1)
{
  result = type metadata accessor for SingleGoalWorkout(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CustomWorkout(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PacerWorkout(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for SingleGoalWorkout(uint64_t a1)
{
  result = type metadata singleton initialization cache for SingleGoalWorkout;
  if (!type metadata singleton initialization cache for SingleGoalWorkout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SingleGoalWorkout(uint64_t a1)
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKWorkoutSessionLocationType(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for HKWorkoutSwimmingLocationType(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for WorkoutGoal(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for HKWorkoutSwimmingLocationType(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for WorkoutGoal(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutGoal;
  if (!type metadata singleton initialization cache for WorkoutGoal)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutGoal(uint64_t a1)
{
  type metadata accessor for (Double, NSUnitLength)(319, &lazy cache variable for type metadata for (Double, NSUnitLength), &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (Double, NSUnitLength)(319, &lazy cache variable for type metadata for (Double, NSUnitDuration), &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (Double, NSUnitLength)(319, &lazy cache variable for type metadata for (Double, NSUnitEnergy), &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
      if (v3 <= 0x3F)
      {
        type metadata accessor for (Measurement<NSUnitLength>, Measurement<NSUnitDuration>)(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (Double, NSUnitLength)(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    _sSo14NSUnitDurationCMaTm_0(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t type metadata accessor for NSUnitDuration(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo14NSUnitDurationCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _sSo14NSUnitDurationCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t storeEnumTagSinglePayload for WorkoutPlan.Route(uint64_t result, int a2, int a3)
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

void type metadata accessor for (Measurement<NSUnitLength>, Measurement<NSUnitDuration>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Measurement<NSUnitLength>, Measurement<NSUnitDuration>))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Measurement<NSUnitLength>, Measurement<NSUnitDuration>));
    }
  }
}

uint64_t type metadata accessor for CustomWorkout(uint64_t a1)
{
  result = type metadata singleton initialization cache for CustomWorkout;
  if (!type metadata singleton initialization cache for CustomWorkout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CustomWorkout(uint64_t a1)
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKWorkoutSessionLocationType(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for WorkoutStep?(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for String?(319, &lazy cache variable for type metadata for [IntervalBlock], &type metadata for IntervalBlock, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for String?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for WorkoutStep?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WorkoutStep?)
  {
    type metadata accessor for WorkoutStep(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WorkoutStep?);
    }
  }
}

uint64_t type metadata accessor for WorkoutStep(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutStep;
  if (!type metadata singleton initialization cache for WorkoutStep)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutStep(uint64_t a1)
{
  type metadata accessor for WorkoutGoal(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WorkoutAlert?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for WorkoutAlert?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WorkoutAlert?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10WorkoutKit0A5Alert_pMd, &_s10WorkoutKit0A5Alert_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WorkoutAlert?);
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t type metadata accessor for PacerWorkout(uint64_t a1)
{
  result = type metadata singleton initialization cache for PacerWorkout;
  if (!type metadata singleton initialization cache for PacerWorkout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PacerWorkout(uint64_t a1)
{
  type metadata accessor for HKWorkoutActivityType(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HKWorkoutSessionLocationType(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WorkoutGoal(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for WorkoutPlan.Route?()
{
  if (!lazy cache variable for type metadata for WorkoutPlan.Route?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WorkoutPlan.Route?);
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

void type metadata accessor for [UUID]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [UUID]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [UUID]?);
    }
  }
}

void *_sSo28HKWorkoutSessionLocationTypeVSYSCSY8rawValuexSg03RawF0Qz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23B5E91F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23B5E9288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5E9384(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5E948C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5E9588(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5E9690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23B5E9790(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_23B5E98B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23B5E9930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23B5E99AC(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for WorkoutStep(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_23B5E9A50(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for WorkoutStep(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5E9F48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for CustomWorkout(0) + 32));
}

uint64_t sub_23B5EA00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_23B5EA0D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B5EA1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EA29C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EA3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EA4A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EA5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23B5EA6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 28);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV6TargetOwet_0(uint64_t a1, int a2)
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

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV6TargetOwst_0(uint64_t result, int a2, int a3)
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

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV6TargetOwug_0(uint64_t a1)
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

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV6TargetOwui_0(uint64_t result, int a2)
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

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueV0D4UnitOwet_0(uint64_t a1, int a2)
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

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueV0D4UnitOwst_0(uint64_t result, int a2, int a3)
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

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueV0D4UnitOwug_0(uint64_t a1)
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

uint64_t _s10WorkoutKit06Apple_A14_DistanceValueV0D4UnitOwui_0(uint64_t result, int a2)
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

uint64_t sub_23B5EA928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23B5EAA80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_23B5EACD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23B5EAD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_23B5EADC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_23B5EAE84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UnknownStorage();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_23B5EAF3C(uint64_t result)
{
  *(result + 16) = 0x3FF0000000000000;
  *result = 1;
  *(result + 8) = 1;
  return result;
}

uint64_t sub_23B5EAFCC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23B5EB00C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23B5EB054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutPlan(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23B5EB1A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WorkoutPlan(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_23B5EB410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EB50C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EB614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EB710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EB818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23B5EB890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for UnknownStorage();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_23B5EB920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UnknownStorage();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EBA1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EBB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5EBC20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5EBD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_23B5EBE80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_23B5EC000(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v14 = *(*(v13 - 8) + 48);
  v15 = a1 + a3[8];

  return v14(v15, a2, v13);
}

uint64_t sub_23B5EC154(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_5:
    v13 = *(v10 + 56);

    return v13(a1 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_5;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t _s10WorkoutKit26CompositionValidationErrorOwet_0(uint64_t a1, int a2)
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

uint64_t _s10WorkoutKit26CompositionValidationErrorOwst_0(uint64_t result, int a2, int a3)
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

uint64_t _s10WorkoutKit26CompositionValidationErrorOwug_0(uint64_t a1)
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

uint64_t _s10WorkoutKit26CompositionValidationErrorOwui_0(uint64_t result, int a2)
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

uint64_t sub_23B5EC4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UnknownStorage();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23B5EC5A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A4GoalV06OneOf_D5ValueOSgMR);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for UnknownStorage();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 24);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_23B5EC7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PacerWorkout(0) + 24);

  return outlined init with copy of WorkoutGoal(v3, a2);
}

uint64_t sub_23B5EC820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PacerWorkout(0) + 28);

  return outlined init with copy of WorkoutGoal(v3, a2);
}

uint64_t sub_23B5EC894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutGoal(0);
  v7 = *(*(v6 - 8) + 48);
  v8 = a1 + *(a3 + 24);

  return v7(v8, a2, v6);
}

uint64_t sub_23B5EC910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for WorkoutGoal(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = a1 + *(a4 + 24);

  return v8(v9, a2, a2, v7);
}

uint64_t sub_23B5EC990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutGoal(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_23B5ECA5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WorkoutGoal(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = a2;
  }

  return result;
}

uint64_t sub_23B5ECB18(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23B5ECB30(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23B5ECBDC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5ECC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_23B5ECD7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_23B5ECF7C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23B5ED028(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5ED0CC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_23B5ED248(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_23B5ED3CC(uint64_t result)
{
  *(result + 16) = 0x3FF0000000000000;
  *result = 2;
  *(result + 8) = 1;
  return result;
}

uint64_t sub_23B5ED3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UnknownStorage();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_23B5ED4E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UnknownStorage();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 32);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t sub_23B5ED604(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UnknownStorage();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_23B5ED6B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UnknownStorage();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23B5ED7CC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for UnknownStorage();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_23B5ED950(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for UnknownStorage();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_23B5EDAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for WorkoutGoal(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23B5EDB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for WorkoutGoal(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_23B5EDBE0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for WorkoutPlan.Workout(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_23B5EDD6C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for WorkoutPlan.Workout(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for UUID();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t HKWorkout.workoutPlan.getter(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](HKWorkout.workoutPlan.getter, 0, 0);
}

uint64_t HKWorkout.workoutPlan.getter()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanVSgMd, &_s10WorkoutKit0A4PlanVSgMR);
  *v3 = v0;
  v3[1] = HKWorkout.workoutPlan.getter;
  v5 = v0[2];

  return MEMORY[0x2822008A0](v5, 0, 0, 0x5074756F6B726F77, 0xEB000000006E616CLL, partial apply for closure #1 in HKWorkout.workoutPlan.getter, v2, v4);
}

{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](HKWorkout.workoutPlan.getter, 0, 0);
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

void closure #1 in HKWorkout.workoutPlan.getter(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() sharedInstance];
  v13 = [a2 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v11, v8);
  (*(v5 + 16))(v7, a1, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  (*(v5 + 32))(v16 + v15, v7, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in HKWorkout.workoutPlan.getter;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  [v12 retrieveWorkoutCompositionFromWorkoutUUID:isa completion:v17];
  _Block_release(v17);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t closure #1 in closure #1 in HKWorkout.workoutPlan.getter(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v28 = a1;
  v7 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for WorkoutPlan(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v27 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanVSgMd, &_s10WorkoutKit0A4PlanVSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v27 - v22;
  if (a3)
  {
    v29 = a3;
    v24 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    v27[1] = a4;
    if (a2 >> 60 == 15)
    {
      (*(v14 + 56))(v23, 1, 1, v13, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR);
      return CheckedContinuation.resume(returning:)();
    }

    else
    {
      v26 = v28;
      outlined copy of Data._Representation(v28, a2);
      static WorkoutPlan.protoComposition(from:)(v26, a2, v12);
      outlined init with copy of Apple_Workout_WorkoutPlan(v12, v9, type metadata accessor for Apple_Workout_WorkoutPlan);
      WorkoutPlan.init(from:)(v9, v16);
      outlined destroy of Apple_Workout_WorkoutPlan(v12, type metadata accessor for Apple_Workout_WorkoutPlan);
      outlined init with take of WorkoutPlan(v16, v19);
      outlined init with copy of Apple_Workout_WorkoutPlan(v19, v23, type metadata accessor for WorkoutPlan);
      (*(v14 + 56))(v23, 0, 1, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      outlined consume of Data?(v28, a2);
      return outlined destroy of Apple_Workout_WorkoutPlan(v19, type metadata accessor for WorkoutPlan);
    }
  }
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  outlined consume of Data?(v4, v8);
}

uint64_t HKWorkout.deserializeWorkoutPlan()@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v20 - v9;
  v11 = [v1 metadata];
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v11;
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x800000023B67EEA0), (v15 & 1) == 0))
  {

    goto LABEL_9;
  }

  outlined init with copy of Any(*(v13 + 56) + 32 * v14, v22);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v19 = 1;
    return swift_willThrow();
  }

  v16 = v20;
  v17 = v21;
  static WorkoutPlan.protoComposition(from:)(v20, v21, v10);
  if (!v2)
  {
    outlined init with copy of Apple_Workout_WorkoutPlan(v10, v6, type metadata accessor for Apple_Workout_WorkoutPlan);
    WorkoutPlan.init(from:)(v6, a1);
    outlined destroy of Apple_Workout_WorkoutPlan(v10, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  return outlined consume of Data._Representation(v16, v17);
}

unint64_t lazy protocol witness table accessor for type ImportError and conformance ImportError()
{
  result = lazy protocol witness table cache variable for type ImportError and conformance ImportError;
  if (!lazy protocol witness table cache variable for type ImportError and conformance ImportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImportError and conformance ImportError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HKWorkoutActivityType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HKWorkoutActivityType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t getEnumTagSinglePayload for WKPrivateMetadataKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WKPrivateMetadataKeys(_WORD *result, int a2, int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CLLocationCoordinate2D(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CLLocationCoordinate2D(uint64_t result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type HKWorkoutActivityType and conformance HKWorkoutActivityType(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t partial apply for closure #1 in closure #1 in HKWorkout.workoutPlan.getter(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMd, &_sScCy10WorkoutKit0A4PlanVSgs5Error_pGMR) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return closure #1 in closure #1 in HKWorkout.workoutPlan.getter(a1, a2, a3, v8);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t outlined init with take of WorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlan(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata completion function for Apple_Workout_CadenceAlert(uint64_t a1)
{
  type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_CadenceValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_CadenceRange(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_CadenceAlert(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_CadenceRange(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_CadenceValue?, type metadata accessor for Apple_Workout_CadenceValue);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata completion function for Apple_Workout_CadenceValue(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_TimeValue?, type metadata accessor for Apple_Workout_TimeValue);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_CadenceAlert._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_CadenceAlert._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cadenceSingleTarget";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cadenceRangeTarget";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_CadenceValue._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_CadenceValue._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "steps";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_CadenceRange._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_CadenceRange._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "minCadence";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxCadence";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_HeartRateAlert._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_HeartRateAlert._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zoneTarget";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "heartRateRangeTarget";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_HeartRateRange._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_HeartRateRange._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "minHeartRate";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxHeartRate";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutAlert._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutAlert._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "metric";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "speedAlert";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cadenceAlert";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "powerAlert";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "heartRateAlert";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutAlert.Metric._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutAlert.Metric._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23B678DE0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "UNKNOWN_METRIC";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "AVERAGE_SPEED";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CURRENT_SPEED";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CURRENT_CADENCE";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "CURRENT_POWER";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "CURRENT_HEART_RATE";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "AVERAGE_POWER";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutAlert.Target._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutAlert.Target._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN_ALERT_TARGET_TYPE";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VALUE";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RANGE";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ZONE";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_DistanceValue.DistanceUnit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_DistanceValue.DistanceUnit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23B678DD0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "UNKNOWN";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "METERS";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "KILOMETERS";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "FEET";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "YARDS";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "MILES";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_TimeValue.TimeUnit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_TimeValue.TimeUnit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SECONDS";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MINUTES";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "HOURS";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_EnergyValue.EnergyUnit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_EnergyValue.EnergyUnit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KILOCALORIES";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "KILOJOULES";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutConfiguration._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutConfiguration._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activity";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "swimmingLocation";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Internal_ScheduledWorkoutPlan._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Internal_ScheduledWorkoutPlan._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "plan";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scheduledTimestamp";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "lastCompletedTimestamp";
  *(v11 + 8) = 22;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_PowerAlert._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_PowerAlert._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "powerSingleTarget";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "powerRangeTarget";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "zoneTarget";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_PowerValue._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_PowerValue._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unit";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "power";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_PowerValue.PowerUnit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_PowerValue.PowerUnit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WATTS";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_PowerRange._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_PowerRange._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "minPower";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "maxPower";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_SpeedAlert._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_SpeedAlert._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "speedSingleTarget";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "speedRangeTarget";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_PacerWorkoutComposition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_PacerWorkoutComposition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activity";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "distance";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "time";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutGoal._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutGoal._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B67CAE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeValue";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "energyValue";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "distanceValue";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "poolSwimDistanceWithTimeValue";
  *(v15 + 8) = 29;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutGoal.GoalType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutGoal.GoalType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DD0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TIME";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ENERGY";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DISTANCE";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "OPEN";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "DISTANCE_WITH_TIME";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_RoutePoint._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_RoutePoint._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "coordinate";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "altitude";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutRoute._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutRoute._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "routePoints";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "routeSnapshot";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_CustomWorkoutComposition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_CustomWorkoutComposition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_23B678DD0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "activity";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "location";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "warmup";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "blocks";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "cooldown";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutStep._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutStep._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "goal";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "alert";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displayName";
  *(v11 + 8) = 11;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_IntervalBlock._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_IntervalBlock._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "steps";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "iterations";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_IntervalStep._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_IntervalStep._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "purpose";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "step";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_IntervalStep.Purpose._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_IntervalStep.Purpose._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B6792E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "WORK";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "RECOVERY";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_GoalWorkoutComposition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_GoalWorkoutComposition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B678DF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "activity";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "location";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "swimmingLocation";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "goal";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_SwimBikeRunWorkoutComposition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_SwimBikeRunWorkoutComposition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "subConfigurations";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutPlan._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutPlan._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_23B67E560;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 9;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 10;
  *v9 = "goalComposition";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 11;
  *v11 = "customComposition";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 13;
  *v13 = "pacerComposition";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 14;
  *v15 = "swimBikeRunComposition";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 100;
  *v17 = "route";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 101;
  *v19 = "referenceId";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 102;
  *v21 = "alternativeUUIDs";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 1000;
  *v22 = "majorVersion";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 1001;
  *v24 = "minorVersion";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 1002;
  *v26 = "privateVersion";
  *(v26 + 1) = 14;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_WorkoutPlan.Version._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_WorkoutPlan.Version._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, &_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23B677F60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "V1";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Apple_Workout_CadenceAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in Apple_Workout_CadenceAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_CadenceAlert.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_CadenceAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
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
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1, v12, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v12, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_CadenceValue(v12, v19, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
    outlined init with take of Apple_Workout_CadenceValue(v19, v16, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v16, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
      v30 = v45;
    }

    else
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      v32 = v41;
      outlined init with take of Apple_Workout_CadenceValue(v16, v41, type metadata accessor for Apple_Workout_CadenceValue);
      outlined init with take of Apple_Workout_CadenceValue(v32, v25, type metadata accessor for Apple_Workout_CadenceValue);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  }

  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, v33, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v33, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Apple_Workout_CadenceValue(v33, v40, type metadata accessor for Apple_Workout_CadenceValue);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v37 = v39;
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v39, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_CadenceValue(v36, v37, type metadata accessor for Apple_Workout_CadenceValue);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t closure #2 in Apple_Workout_CadenceAlert.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Apple_Workout_CadenceRange(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
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
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1, v12, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v12, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    outlined init with take of Apple_Workout_CadenceValue(v12, v19, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
    outlined init with take of Apple_Workout_CadenceValue(v19, v16, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
      v32 = v41;
      outlined init with take of Apple_Workout_CadenceValue(v16, v41, type metadata accessor for Apple_Workout_CadenceRange);
      outlined init with take of Apple_Workout_CadenceValue(v32, v25, type metadata accessor for Apple_Workout_CadenceRange);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v16, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
      v30 = v45;
    }
  }

  v33 = v43;
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange, &protocol conformance descriptor for Apple_Workout_CadenceRange);
  v34 = v44;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v34)
  {
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
  }

  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, v33, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v33, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
  }

  else
  {
    v36 = v40;
    outlined init with take of Apple_Workout_CadenceValue(v33, v40, type metadata accessor for Apple_Workout_CadenceRange);
    if (v29 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMd, &_s10WorkoutKit06Apple_A13_CadenceRangeVSgMR);
    v37 = v39;
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v39, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    outlined init with take of Apple_Workout_CadenceValue(v36, v37, type metadata accessor for Apple_Workout_CadenceRange);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t Apple_Workout_CadenceAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - v9;
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v3, &v13 - v9, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    closure #2 in Apple_Workout_CadenceAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  else
  {
    closure #1 in Apple_Workout_CadenceAlert.traverse<A>(visitor:)(v3, a1, a2, a3);
  }

  result = outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v10, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  if (!v4)
  {
LABEL_6:
    type metadata accessor for Apple_Workout_CadenceAlert(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_CadenceAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Workout_CadenceValue(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1, v7, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v7, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with take of Apple_Workout_CadenceValue(v7, v10, type metadata accessor for Apple_Workout_CadenceValue);
    lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v10, type metadata accessor for Apple_Workout_CadenceValue);
  }

  result = outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v7, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_CadenceAlert.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Apple_Workout_CadenceRange(0);
  MEMORY[0x28223BE20](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1, v7, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v11 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v7, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_CadenceValue(v7, v10, type metadata accessor for Apple_Workout_CadenceRange);
    lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange, &protocol conformance descriptor for Apple_Workout_CadenceRange);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v10, type metadata accessor for Apple_Workout_CadenceRange);
  }

  result = outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v7, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_CadenceAlert@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_CadenceAlert(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert, &protocol conformance descriptor for Apple_Workout_CadenceAlert);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_CadenceAlert(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert, &protocol conformance descriptor for Apple_Workout_CadenceAlert);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_CadenceAlert(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceAlert and conformance Apple_Workout_CadenceAlert, type metadata accessor for Apple_Workout_CadenceAlert, &protocol conformance descriptor for Apple_Workout_CadenceAlert);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_CadenceValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_CadenceValue.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_CadenceValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_CadenceValue(0);
  type metadata accessor for Apple_Workout_TimeValue(0);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_CadenceValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_CadenceValue.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Apple_Workout_CadenceValue(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_CadenceValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v12 = type metadata accessor for Apple_Workout_CadenceValue(0);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1 + *(v12 + 24), v7, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v7, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  }

  outlined init with take of Apple_Workout_CadenceValue(v7, v11, type metadata accessor for Apple_Workout_TimeValue);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v11, type metadata accessor for Apple_Workout_TimeValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_CadenceValue@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Workout_TimeValue(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_CadenceAlert@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_CadenceAlert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_CadenceValue(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_CadenceValue(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_CadenceValue(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_CadenceRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in Apple_Workout_CadenceRange.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_CadenceRange.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_CadenceRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_CadenceRange(0);
  type metadata accessor for Apple_Workout_CadenceValue(0);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_CadenceRange.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_CadenceRange(0);
  type metadata accessor for Apple_Workout_CadenceValue(0);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_CadenceRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_CadenceRange.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_CadenceRange.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_CadenceRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_CadenceRange(0);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1 + *(v12 + 20), v7, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v7, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  }

  outlined init with take of Apple_Workout_CadenceValue(v7, v11, type metadata accessor for Apple_Workout_CadenceValue);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v11, type metadata accessor for Apple_Workout_CadenceValue);
}

uint64_t closure #2 in Apple_Workout_CadenceRange.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_CadenceRange(0);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1 + *(v12 + 24), v7, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v7, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  }

  outlined init with take of Apple_Workout_CadenceValue(v7, v11, type metadata accessor for Apple_Workout_CadenceValue);
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceValue and conformance Apple_Workout_CadenceValue, type metadata accessor for Apple_Workout_CadenceValue, &protocol conformance descriptor for Apple_Workout_CadenceValue);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v11, type metadata accessor for Apple_Workout_CadenceValue);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_CadenceRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_CadenceRange@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_CadenceRange(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_CadenceRange(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange, &protocol conformance descriptor for Apple_Workout_CadenceRange);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_CadenceAlert@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_CadenceRange(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange, &protocol conformance descriptor for Apple_Workout_CadenceRange);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_CadenceAlert(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_CadenceRange(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange, type metadata accessor for Apple_Workout_CadenceRange, &protocol conformance descriptor for Apple_Workout_CadenceRange);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_CadenceAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_CadenceValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t specialized static Apple_Workout_CadenceRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v32 = (&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = (&v31 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSg_ADtMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSg_ADtMR);
  MEMORY[0x28223BE20](v12);
  v36 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  v34 = type metadata accessor for Apple_Workout_CadenceRange(0);
  v35 = v12;
  v17 = *(v34 + 20);
  v18 = *(v12 + 48);
  v37 = a1;
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1 + v17, v16, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  v38 = a2;
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a2 + v17, &v16[v18], &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v16, v11, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v33;
      outlined init with take of Apple_Workout_CadenceValue(&v16[v18], v33, type metadata accessor for Apple_Workout_CadenceValue);
      v22 = specialized static Apple_Workout_CadenceValue.== infix(_:_:)(v11, v21);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v21, type metadata accessor for Apple_Workout_CadenceValue);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v11, type metadata accessor for Apple_Workout_CadenceValue);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v16, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v11, type metadata accessor for Apple_Workout_CadenceValue);
LABEL_6:
    v20 = v16;
LABEL_14:
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v20, &_s10WorkoutKit06Apple_A13_CadenceValueVSg_ADtMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSg_ADtMR);
    goto LABEL_15;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v16, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
LABEL_8:
  v23 = *(v34 + 24);
  v24 = *(v35 + 48);
  v25 = v36;
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v37 + v23, v36, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v38 + v23, v25 + v24, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if (v19(v25, 1, v4) == 1)
  {
    if (v19((v25 + v24), 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v27 & 1;
    }

    goto LABEL_13;
  }

  v26 = v32;
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, v32, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if (v19((v25 + v24), 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v26, type metadata accessor for Apple_Workout_CadenceValue);
LABEL_13:
    v20 = v25;
    goto LABEL_14;
  }

  v29 = v33;
  outlined init with take of Apple_Workout_CadenceValue(v25 + v24, v33, type metadata accessor for Apple_Workout_CadenceValue);
  v30 = specialized static Apple_Workout_CadenceValue.== infix(_:_:)(v26, v29);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v29, type metadata accessor for Apple_Workout_CadenceValue);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v26, type metadata accessor for Apple_Workout_CadenceValue);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v25, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  if (v30)
  {
    goto LABEL_18;
  }

LABEL_15:
  v27 = 0;
  return v27 & 1;
}

uint64_t specialized static Apple_Workout_CadenceAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSg_AFtMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a1, &v20 - v12, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(a2, &v13[v15], &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v13, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
LABEL_9:
      type metadata accessor for Apple_Workout_CadenceAlert(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v17 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v13, v10, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v10, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
LABEL_6:
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v13, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSg_AFtMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_CadenceValue(&v13[v15], v7, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  v18 = specialized static Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget.== infix(_:_:)(v10, v7);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v7, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v10, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v13, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t specialized static Apple_Workout_CadenceValue.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Workout_TimeValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v14 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v15 = a1;
  v16 = a2;
  v23[0] = v14;
  v23[1] = v15;
  v17 = *(v14 + 24);
  v18 = *(v11 + 48);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v15 + v17, v13, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v16 + v17, &v13[v18], &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v13, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
LABEL_11:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_CadenceRange and conformance Apple_Workout_CadenceRange(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v13, v10, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v10, type metadata accessor for Apple_Workout_TimeValue);
LABEL_7:
    outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v13, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMd, &_s10WorkoutKit06Apple_A10_TimeValueVSg_ADtMR);
    goto LABEL_8;
  }

  outlined init with take of Apple_Workout_CadenceValue(&v13[v18], v7, type metadata accessor for Apple_Workout_TimeValue);
  v22 = static Apple_Workout_TimeValue.== infix(_:_:)(v10, v7);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v7, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v10, type metadata accessor for Apple_Workout_TimeValue);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v13, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  if (v22)
  {
    goto LABEL_11;
  }

LABEL_8:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_CadenceRange(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_CadenceValue(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetO_AEtMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v20 = *(v19 + 56);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(a1, &v27 - v17);
  outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(a2, &v18[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Apple_Workout_CadenceValue(&v18[v20], v6, type metadata accessor for Apple_Workout_CadenceRange);
      v21 = specialized static Apple_Workout_CadenceRange.== infix(_:_:)(v12, v6);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v6, type metadata accessor for Apple_Workout_CadenceRange);
      v22 = v12;
      v23 = type metadata accessor for Apple_Workout_CadenceRange;
LABEL_9:
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v22, v23);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v18, type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget);
      return v21 & 1;
    }

    v24 = type metadata accessor for Apple_Workout_CadenceRange;
    v25 = v12;
  }

  else
  {
    outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v18, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined init with take of Apple_Workout_CadenceValue(&v18[v20], v9, type metadata accessor for Apple_Workout_CadenceValue);
      v21 = specialized static Apple_Workout_CadenceValue.== infix(_:_:)(v15, v9);
      outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v9, type metadata accessor for Apple_Workout_CadenceValue);
      v22 = v15;
      v23 = type metadata accessor for Apple_Workout_CadenceValue;
      goto LABEL_9;
    }

    v24 = type metadata accessor for Apple_Workout_CadenceValue;
    v25 = v15;
  }

  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(v25, v24);
  outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(v18, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetO_AEtMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetO_AEtMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of ClosedRange<Measurement<NSUnitFrequency>>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL static HeartRateRangeAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87F0]);
  result = 0;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return 1;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t HeartRateRangeAlert.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int HeartRateRangeAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance HeartRateRangeAlert(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87F0]);
  result = 0;
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      return 1;
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateRangeAlert()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HeartRateRangeAlert(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateRangeAlert(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance HeartRateRangeAlert()
{
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance HeartRateRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  Measurement.value.getter();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  Measurement.value.getter();
  specialized WorkoutAlertValidating.validateRangeValue(_:_:)(v1, v2);
}

uint64_t static WorkoutAlert<>.heartRate(_:unit:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  type metadata accessor for NSUnitFrequency();
  v19 = a1;
  Measurement.init(value:unit:)();
  v20 = v19;
  Measurement.init(value:unit:)();
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E8]);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v22 = v6;
    v23 = *(v13 + 32);
    v23(v11, v18, v12);
    v23(&v11[*(v22 + 48)], v15, v12);
    outlined init with copy of ClosedRange<Measurement<NSUnitFrequency>>(v11, v8, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v24 = *(v22 + 48);
    v23(a2, v8, v12);
    v25 = *(v13 + 8);
    v25(&v8[v24], v12);
    outlined init with take of ClosedRange<Measurement<NSUnitFrequency>>(v11, v8, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v26 = *(v22 + 48);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
    v23(&a2[*(v27 + 36)], &v8[v26], v12);
    return (v25)(v8, v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for NSUnitFrequency()
{
  result = lazy cache variable for type metadata for NSUnitFrequency;
  if (!lazy cache variable for type metadata for NSUnitFrequency)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUnitFrequency);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of ClosedRange<Measurement<NSUnitFrequency>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of ClosedRange<Measurement<NSUnitFrequency>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int HeartRateZoneAlert.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateZoneAlert()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateZoneAlert(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance HeartRateZoneAlert()
{
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance HeartRateZoneAlert()
{
  if (*v0 < 1)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v1 = xmmword_23B6784C0;
    *(v1 + 16) = 3;
    swift_willThrow();
  }
}

uint64_t instantiation function for generic protocol witness table for HeartRateRangeAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type HeartRateRangeAlert and conformance HeartRateRangeAlert, type metadata accessor for HeartRateRangeAlert, &protocol conformance descriptor for HeartRateRangeAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type HeartRateRangeAlert and conformance HeartRateRangeAlert(&lazy protocol witness table cache variable for type HeartRateRangeAlert and conformance HeartRateRangeAlert, type metadata accessor for HeartRateRangeAlert, &protocol conformance descriptor for HeartRateRangeAlert);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for HeartRateRangeAlert(uint64_t a1)
{
  result = type metadata singleton initialization cache for HeartRateRangeAlert;
  if (!type metadata singleton initialization cache for HeartRateRangeAlert)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for HeartRateZoneAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type HeartRateZoneAlert and conformance HeartRateZoneAlert();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type HeartRateZoneAlert and conformance HeartRateZoneAlert();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type HeartRateZoneAlert and conformance HeartRateZoneAlert()
{
  result = lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert;
  if (!lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert;
  if (!lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert;
  if (!lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneAlert and conformance HeartRateZoneAlert);
  }

  return result;
}

void type metadata completion function for HeartRateRangeAlert(uint64_t a1)
{
  type metadata accessor for ClosedRange<Measurement<NSUnitFrequency>>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for ClosedRange<Measurement<NSUnitFrequency>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitFrequency>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E8]);
    v1 = type metadata accessor for ClosedRange();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ClosedRange<Measurement<NSUnitFrequency>>);
    }
  }
}

uint64_t getEnumTagSinglePayload for HeartRateZoneAlert(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateZoneAlert(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError()
{
  result = lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError;
  if (!lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AlertValidationError and conformance AlertValidationError);
  }

  return result;
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

Swift::Int IntervalStep.Purpose.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalStep.Purpose()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalStep.Purpose(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t IntervalStep.step.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IntervalStep(0) + 20);

  return outlined init with copy of WorkoutStep(v3, a1);
}

uint64_t type metadata accessor for IntervalStep(uint64_t a1)
{
  result = type metadata singleton initialization cache for IntervalStep;
  if (!type metadata singleton initialization cache for IntervalStep)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutStep(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IntervalStep.step.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IntervalStep(0) + 20);

  return outlined assign with take of WorkoutStep(a1, v3);
}

uint64_t outlined assign with take of WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutStep(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t IntervalStep.init(_:step:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = type metadata accessor for IntervalStep(0);
  return outlined init with take of WorkoutStep(a2, &a3[*(v5 + 20)], type metadata accessor for WorkoutStep);
}

uint64_t IntervalStep.init(_:goal:alert:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v7 = *a1;
  v8 = &a4[*(type metadata accessor for IntervalStep(0) + 20)];
  v9 = type metadata accessor for WorkoutStep(0);
  v10 = &v8[*(v9 + 20)];
  *(v10 + 32) = 0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  v11 = &v8[*(v9 + 24)];
  *v11 = 0;
  v11[1] = 0;
  outlined init with take of WorkoutStep(a2, v8, type metadata accessor for WorkoutGoal);
  result = outlined assign with take of WorkoutAlert?(a3, v10, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  *a4 = v7;
  return result;
}

uint64_t static IntervalStep.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = *(type metadata accessor for IntervalStep(0) + 20);

  return static WorkoutStep.== infix(_:_:)(&a1[v6], &a2[v6]);
}

uint64_t closure #1 in IntervalStep.protoRepresentation.getter(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  v7 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(type metadata accessor for Apple_Workout_IntervalStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + v12);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_IntervalStep._StorageClass(0);
    swift_allocObject();
    v14 = Apple_Workout_IntervalStep._StorageClass.init(copying:)(v14);
    *(a1 + v12) = v14;
  }

  swift_beginAccess();
  *(v14 + 16) = v11;
  *(v14 + 24) = 1;
  v15 = type metadata accessor for IntervalStep(0);
  MEMORY[0x28223BE20](v15);
  v21[-2] = v16;
  lazy protocol witness table accessor for type IntervalStep and conformance IntervalStep(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutStep and conformance Apple_Workout_WorkoutStep, type metadata accessor for Apple_Workout_WorkoutStep, &protocol conformance descriptor for Apple_Workout_WorkoutStep);
  static Message.with(_:)();
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a1 + v12);
  if ((v17 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_IntervalStep._StorageClass(0);
    swift_allocObject();
    v18 = Apple_Workout_IntervalStep._StorageClass.init(copying:)(v18);
    *(a1 + v12) = v18;
  }

  outlined init with take of WorkoutStep(v10, v6, type metadata accessor for Apple_Workout_WorkoutStep);
  (*(v8 + 56))(v6, 0, 1, v7);
  v19 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  swift_beginAccess();
  outlined assign with take of WorkoutAlert?(v6, v18 + v19, &_s10WorkoutKit06Apple_a1_A4StepVSgMd, &_s10WorkoutKit06Apple_a1_A4StepVSgMR);
  return swift_endAccess();
}

uint64_t IntervalStep.hash(into:)(uint64_t a1)
{
  MEMORY[0x23EEA0D50](*v1);
  type metadata accessor for IntervalStep(0);
  return WorkoutStep.hash(into:)(a1);
}

Swift::Int IntervalStep.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v0);
  type metadata accessor for IntervalStep(0);
  WorkoutStep.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance IntervalStep(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return static WorkoutStep.== infix(_:_:)(&a1[*(a3 + 20)], &a2[*(a3 + 20)]);
  }

  else
  {
    return 0;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance IntervalStep()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v0);
  WorkoutStep.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IntervalStep(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v1);
  WorkoutStep.hash(into:)(v3);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type IntervalStep.Purpose and conformance IntervalStep.Purpose()
{
  result = lazy protocol witness table cache variable for type IntervalStep.Purpose and conformance IntervalStep.Purpose;
  if (!lazy protocol witness table cache variable for type IntervalStep.Purpose and conformance IntervalStep.Purpose)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalStep.Purpose and conformance IntervalStep.Purpose);
  }

  return result;
}

uint64_t type metadata completion function for IntervalStep(uint64_t a1)
{
  result = type metadata accessor for WorkoutStep(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalStep.Purpose(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalStep.Purpose(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t lazy protocol witness table accessor for type IntervalStep and conformance IntervalStep(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of WorkoutStep(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of WorkoutAlert?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in static Apple_Workout_HeartRateAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  *a1 = 5;
  *(a1 + 8) = 1;
  *(a1 + 16) = 2;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_HeartRateAlert(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert, &protocol conformance descriptor for Apple_Workout_HeartRateAlert);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return outlined assign with take of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v6, a1 + *(v8 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for Apple_Workout_HeartRateRange(0);
  v10 = a2;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateRange and conformance Apple_Workout_HeartRateRange, type metadata accessor for Apple_Workout_HeartRateRange, &protocol conformance descriptor for Apple_Workout_HeartRateRange);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return outlined assign with take of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v6, a1, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v4 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a2;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateValue and conformance Apple_Workout_HeartRateValue, type metadata accessor for Apple_Workout_HeartRateValue, &protocol conformance descriptor for Apple_Workout_HeartRateValue);
  static Message.with(_:)();
  v8 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  v9 = *(v8 + 20);
  outlined destroy of Apple_Workout_HeartRateValue?(a1 + v9);
  outlined init with take of Apple_Workout_HeartRateValue(v7, a1 + v9);
  v10 = *(v5 + 56);
  v10(a1 + v9, 0, 1, v4);
  v14 = v16;
  static Message.with(_:)();
  v11 = *(v8 + 24);
  outlined destroy of Apple_Workout_HeartRateValue?(a1 + v11);
  outlined init with take of Apple_Workout_HeartRateValue(v7, a1 + v11);
  return (v10)(a1 + v11, 0, 1, v4);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.rangeAlert(_:)(double *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v7 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v8 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v9 = [v7 initWithSymbol:v8 converter:v6];

  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v11 = v10;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v11;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.rangeAlert(_:)(double *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  v6 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v7 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v8 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  v9 = [v7 initWithSymbol:v8 converter:v6];

  Measurement<>.converted(to:)();
  Measurement.value.getter();
  v11 = v10;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v11;
  return result;
}

uint64_t closure #1 in static Apple_Workout_HeartRateAlert.zoneAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  *a1 = 5;
  *(a1 + 8) = 1;
  *(a1 + 16) = 3;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_HeartRateAlert(0);
  v11 = a2;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(&lazy protocol witness table cache variable for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert, type metadata accessor for Apple_Workout_HeartRateAlert, &protocol conformance descriptor for Apple_Workout_HeartRateAlert);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return outlined assign with take of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v6, a1 + *(v8 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.zoneAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for Apple_Workout_ZoneValue(0);
  v10 = a2;
  lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(&lazy protocol witness table cache variable for type Apple_Workout_ZoneValue and conformance Apple_Workout_ZoneValue, type metadata accessor for Apple_Workout_ZoneValue, &protocol conformance descriptor for Apple_Workout_ZoneValue);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return outlined assign with take of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v6, a1, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
}

_DWORD *partial apply for closure #1 in closure #1 in closure #1 in static Apple_Workout_HeartRateAlert.zoneAlert(_:)(_DWORD *result)
{
  v2 = *(v1 + 16);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t outlined assign with take of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_HeartRateAlert and conformance Apple_Workout_HeartRateAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_HeartRateValue?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_HeartRateValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WKPercentileAnalytics.min.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 16);
    }

    else
    {
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v2 < MEMORY[0x23EEA0C00](v4))
    {
      return 0;
    }
  }

  else if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v5 = *(v0 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v8 = *(v0 + 16);
    }

    else
    {
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x23EEA0C00](v8);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = MEMORY[0x23EEA0B80](0, v5);

    goto LABEL_13;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);

LABEL_13:
    v7 = *(v6 + 24);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t WKPercentileAnalytics.max.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v4 = *(v0 + 16);
    }

    else
    {
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v2 < MEMORY[0x23EEA0C00](v4))
    {
      return 0;
    }
  }

  else if (v2 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  v5 = *(v0 + 16);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v9 = *(v0 + 16);
    }

    else
    {
      v9 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x23EEA0C00](v9);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_22:

    v7 = MEMORY[0x23EEA0B80](v6, v5);

    goto LABEL_15;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v6 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 8 * v6 + 32);

LABEL_15:
    v8 = *(v7 + 24);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t WKPercentileAnalytics.p50.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v2 = *(v0 + 16);
      if (v2 >> 62)
      {
        if (v2 < 0)
        {
          v9 = *(v0 + 16);
        }

        else
        {
          v9 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v0 = MEMORY[0x23EEA0C00](v9);
      }

      else
      {
        v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v0)
      {
LABEL_16:

        return 0;
      }

      v3 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEA0B80](v3, v2);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_10:
        if (*(v4 + 32) == 0.5)
        {

          v7 = *(v4 + 24);

          return v7;
        }

        ++v3;
        if (v5 == v0)
        {
          goto LABEL_16;
        }
      }

      v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 < v1)
      {
        break;
      }

      __break(1u);
LABEL_20:
      if (v1 < 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      if (v2 < MEMORY[0x23EEA0C00](v8))
      {
        return 0;
      }
    }

    v4 = *(v2 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t WKPercentileAnalytics.p90.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v2 = *(v0 + 16);
      if (v2 >> 62)
      {
        if (v2 < 0)
        {
          v9 = *(v0 + 16);
        }

        else
        {
          v9 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v0 = MEMORY[0x23EEA0C00](v9);
      }

      else
      {
        v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v0)
      {
LABEL_16:

        return 0;
      }

      v3 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEA0B80](v3, v2);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_10:
        if (*(v4 + 32) == 0.9)
        {

          v7 = *(v4 + 24);

          return v7;
        }

        ++v3;
        if (v5 == v0)
        {
          goto LABEL_16;
        }
      }

      v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 < v1)
      {
        break;
      }

      __break(1u);
LABEL_20:
      if (v1 < 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      if (v2 < MEMORY[0x23EEA0C00](v8))
      {
        return 0;
      }
    }

    v4 = *(v2 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t WKPercentileAnalytics.p95.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v2 = *(v0 + 16);
      if (v2 >> 62)
      {
        if (v2 < 0)
        {
          v9 = *(v0 + 16);
        }

        else
        {
          v9 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v0 = MEMORY[0x23EEA0C00](v9);
      }

      else
      {
        v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v0)
      {
LABEL_16:

        return 0;
      }

      v3 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEA0B80](v3, v2);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_10:
        if (*(v4 + 32) == 0.95)
        {

          v7 = *(v4 + 24);

          return v7;
        }

        ++v3;
        if (v5 == v0)
        {
          goto LABEL_16;
        }
      }

      v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 < v1)
      {
        break;
      }

      __break(1u);
LABEL_20:
      if (v1 < 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      if (v2 < MEMORY[0x23EEA0C00](v8))
      {
        return 0;
      }
    }

    v4 = *(v2 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t WKPercentileAnalytics.p99.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    goto LABEL_20;
  }

  if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v2 = *(v0 + 16);
      if (v2 >> 62)
      {
        if (v2 < 0)
        {
          v9 = *(v0 + 16);
        }

        else
        {
          v9 = v2 & 0xFFFFFFFFFFFFFF8;
        }

        v0 = MEMORY[0x23EEA0C00](v9);
      }

      else
      {
        v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v0)
      {
LABEL_16:

        return 0;
      }

      v3 = 0;
      while ((v2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEA0B80](v3, v2);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_10:
        if (*(v4 + 32) == 0.99)
        {

          v7 = *(v4 + 24);

          return v7;
        }

        ++v3;
        if (v5 == v0)
        {
          goto LABEL_16;
        }
      }

      v1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3 < v1)
      {
        break;
      }

      __break(1u);
LABEL_20:
      if (v1 < 0)
      {
        v8 = v1;
      }

      else
      {
        v8 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      if (v2 < MEMORY[0x23EEA0C00](v8))
      {
        return 0;
      }
    }

    v4 = *(v2 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t WKPercentileAnalytics.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  WKPercentileAnalytics.reset()();
  return v0;
}

uint64_t WKPercentileAnalytics.init()()
{
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = 0;
  WKPercentileAnalytics.reset()();
  return v0;
}

Swift::Void __swiftcall WKPercentileAnalytics.reset()()
{
  v7 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for WKPercentileAnalytics.Marker();
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0x3FF0000000000000;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = xmmword_23B678800;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = xmmword_23B678810;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = xmmword_23B678820;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = xmmword_23B678830;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = xmmword_23B678840;
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  *(v0 + 16) = v7;

  *(v0 + 24) = 0;
}

Swift::Void __swiftcall WKPercentileAnalytics.addSamples(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  if (v1)
  {
    v2 = (a1._rawValue + 32);
    do
    {
      v3 = *v2++;
      WKPercentileAnalytics.addSample(_:)(v3);
      --v1;
    }

    while (v1);
  }
}

Swift::Void __swiftcall WKPercentileAnalytics.addSample(_:)(Swift::Double a1)
{
  v3 = v1;
  v4 = *(v1 + 24);
  v5 = *(v3 + 16);
  if (v5 >> 62)
  {
    goto LABEL_36;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v4 >= *(v6 + 16))
  {
    goto LABEL_40;
  }

LABEL_3:
  v4 = *(v3 + 16);
  v2 = *(v3 + 24);
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_46:
      __break(1u);
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2 < v6)
      {
        v7 = a1;
        v2 = *(v4 + 8 * v2 + 32);

        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  while (1)
  {
    v7 = a1;

    v2 = MEMORY[0x23EEA0B80](v2, v4);

LABEL_7:
    *(v2 + 24) = v7;

    v6 = *(v3 + 24);
    v4 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_46;
    }

    v6 = *(v3 + 16);
    if (v6 >> 62)
    {
LABEL_48:
      if (v6 < 0)
      {
        v26 = v6;
      }

      else
      {
        v26 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      if (v4 != MEMORY[0x23EEA0C00](v26))
      {
        goto LABEL_41;
      }
    }

    else if (v4 != *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_41;
    }

    v8 = *(v3 + 16);
    if (v8 >> 62)
    {
      v27 = v8 < 0 ? *(v3 + 16) : v8 & 0xFFFFFFFFFFFFFF8;
      v9 = MEMORY[0x23EEA0C00](v27);
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = MEMORY[0x277D84F90];
    if (v9)
    {
      break;
    }

LABEL_22:
    v29 = v10;

    specialized MutableCollection<>.sort(by:)(&v29);

    v2 = v29;
    v4 = *(v3 + 16);
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v28 = *(v3 + 16);
      }

      else
      {
        v28 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      v16 = MEMORY[0x23EEA0C00](v28);
    }

    else
    {
      v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      v17 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x23EEA0B80](v17, v4);
        }

        else
        {
          v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v17 >= v5)
          {
            goto LABEL_35;
          }
        }

        v19 = v17 + 1;
        *(v18 + 16) = v17 + 1;
        v5 = *(v2 + 16);
        if (v17 >= v5)
        {
          break;
        }

        *(v18 + 24) = *(v2 + 32 + 8 * v17);

        ++v17;
        if (v16 == v19)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      if ((v5 & 0x8000000000000000) != 0)
      {
        v20 = v5;
      }

      else
      {
        v20 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v21 = a1;
      v22 = MEMORY[0x23EEA0C00](v20);
      a1 = v21;
      if (v4 < v22)
      {
        goto LABEL_3;
      }

LABEL_40:
      v4 = v3;
      WKPercentileAnalytics.update(with:)(a1);
    }

    else
    {
LABEL_33:
    }

LABEL_41:
    v23 = *(v3 + 24);
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      *(v3 + 24) = v25;
      return;
    }

    __break(1u);
  }

  v29 = MEMORY[0x277D84F90];

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v10 = v29;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x23EEA0B80](v11, v8);
      }

      else
      {
      }

      v13 = *(v12 + 24);

      v29 = v10;
      v15 = *(v10 + 2);
      v14 = *(v10 + 3);
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
        v10 = v29;
      }

      ++v11;
      *(v10 + 2) = v15 + 1;
      *&v10[8 * v15 + 32] = v13;
    }

    while (v9 != v11);

    goto LABEL_22;
  }

  __break(1u);

  __break(1u);
}

uint64_t WKPercentileAnalytics.update(with:)(double a1)
{
  v4 = *(v1 + 16);
  if ((v4 & 0xC000000000000001) != 0)
  {
    goto LABEL_136;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_138;
  }

  v5 = *(v4 + 32);

  while (1)
  {
    v6 = *(v5 + 24);

    v4 = *(v1 + 16);
    if (v6 <= a1)
    {
      if (v4 >> 62)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          v66 = *(v1 + 16);
        }

        else
        {
          v66 = v4 & 0xFFFFFFFFFFFFFF8;
        }

        v67 = MEMORY[0x23EEA0C00](v66);
        v5 = v67 - 1;
        if (!__OFSUB__(v67, 1))
        {
LABEL_11:
          v4 = *(v1 + 16);
          if ((v4 & 0xC000000000000001) != 0)
          {
            goto LABEL_157;
          }

          if (v5 < 0)
          {
            __break(1u);
          }

          else if (v5 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v9 = *(v4 + 8 * v5 + 32);

            goto LABEL_15;
          }

          __break(1u);
          goto LABEL_160;
        }
      }

      else
      {
        v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v5 = v8 - 1;
        if (!__OFSUB__(v8, 1))
        {
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_156;
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      break;
    }

LABEL_149:

    v7 = MEMORY[0x23EEA0B80](0, v4);

LABEL_8:
    *(v7 + 24) = a1;

LABEL_37:
    v4 = 1;
LABEL_38:
    v2 = *(v1 + 16);
    if (v2 >> 62)
    {
LABEL_138:
      if (v2 < 0)
      {
        v64 = v2;
      }

      else
      {
        v64 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = MEMORY[0x23EEA0C00](v64);
    }

    else
    {
      v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v18)
    {
      goto LABEL_53;
    }

    v19 = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x23EEA0B80](v19, v2);
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
LABEL_52:
        __break(1u);
LABEL_53:

        v25 = *(v1 + 16);
        if (!(v25 >> 62))
        {
          result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v26 = result - 1;
          if (!__OFSUB__(result, 1))
          {
            goto LABEL_55;
          }

LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (v25 < 0)
        {
          v65 = *(v1 + 16);
        }

        else
        {
          v65 = v25 & 0xFFFFFFFFFFFFFF8;
        }

        result = MEMORY[0x23EEA0C00](v65);
        v26 = result - 1;
        if (__OFSUB__(result, 1))
        {
          goto LABEL_147;
        }

LABEL_55:
        if (v26 >= 1)
        {
          if (v26 == 1)
          {
            return result;
          }

          v4 = 0;
          v27 = result - 2;
          a1 = -1.0;
          while (2)
          {
            v28 = v4 + 1;
            v29 = *(v1 + 16);
            if ((v29 & 0xC000000000000001) != 0)
            {

              v30 = MEMORY[0x23EEA0B80](v4 + 1, v29);

              if (v4 == 0x7FFFFFFFFFFFFFFFLL)
              {
                goto LABEL_113;
              }

              v31 = (v30 + 16);
              v32 = *(v30 + 40) - *(v30 + 16);
            }

            else
            {
              if (v28 < 0)
              {
                goto LABEL_112;
              }

              if (v28 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_114;
              }

              v30 = *(v29 + 8 * v4 + 40);
              v31 = (v30 + 16);
              v32 = *(v30 + 40) - *(v30 + 16);
            }

            v33 = *(v1 + 16);
            if ((v33 & 0xC000000000000001) != 0)
            {

              v34 = MEMORY[0x23EEA0B80](v4, v33);

              if (v32 > -1.0)
              {
                goto LABEL_69;
              }
            }

            else
            {
              if (v28 < 1)
              {
                goto LABEL_115;
              }

              if (v4 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_116;
              }

              v34 = *(v33 + 8 * v4 + 32);

              if (v32 > -1.0)
              {
LABEL_69:
                v35 = 0;
                goto LABEL_75;
              }
            }

            v36 = *(v34 + 16);
            v23 = __OFSUB__(v36, *v31);
            v37 = v36 - *v31;
            if (v23)
            {
              goto LABEL_120;
            }

            v35 = v37 < -1;
LABEL_75:
            v38 = v4 + 2;
            v39 = *(v1 + 16);
            if ((v39 & 0xC000000000000001) != 0)
            {

              v40 = MEMORY[0x23EEA0B80](v4 + 2, v39);

              if (v32 < 1.0)
              {
                goto LABEL_79;
              }
            }

            else
            {
              if ((v38 & 0x8000000000000000) != 0)
              {
                goto LABEL_117;
              }

              if (v38 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_118;
              }

              v40 = *(v39 + 8 * v4 + 48);

              if (v32 < 1.0)
              {
LABEL_79:
                if (v35)
                {
                  goto LABEL_87;
                }

LABEL_59:

                goto LABEL_60;
              }
            }

            v41 = *(v40 + 16);
            v23 = __OFSUB__(v41, *v31);
            v42 = v41 - *v31;
            if (v23)
            {
              goto LABEL_121;
            }

            v43 = v42 > 1 || v35;
            if ((v43 & 1) == 0)
            {
              goto LABEL_59;
            }

LABEL_87:
            v44 = v32 / fabs(v32);
            if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_122;
            }

            if (v44 <= -9.22337204e18)
            {
              goto LABEL_123;
            }

            if (v44 >= 9.22337204e18)
            {
              goto LABEL_124;
            }

            v45 = *(v40 + 16);
            v46 = *v31;
            v47 = v45 - *v31;
            if (__OFSUB__(v45, *v31))
            {
              goto LABEL_125;
            }

            v48 = v44;
            if (__OFSUB__(v47, v44))
            {
              goto LABEL_126;
            }

            v49 = *(v34 + 16);
            v23 = __OFSUB__(v46, v49);
            v50 = v46 - v49;
            if (v23)
            {
              goto LABEL_127;
            }

            if (__OFADD__(v50, v48))
            {
              goto LABEL_128;
            }

            v23 = __OFSUB__(v45, v49);
            v51 = v45 - v49;
            if (v23)
            {
              goto LABEL_129;
            }

            v52 = *(v34 + 24);
            v53 = *(v40 + 24);
            v54 = *(v30 + 24) + v48 / v51 * ((*(v30 + 24) - v52) * (v47 - v44) / v50 + (v53 - *(v30 + 24)) * (v50 + v48) / v47);
            if (v52 < v54 && v54 < v53)
            {

              v62 = *v31;
            }

            else
            {
              v23 = __OFADD__(v28, v48);
              v56 = v28 + v48;
              if (v23)
              {
                goto LABEL_131;
              }

              v57 = *(v1 + 16);
              if ((v57 & 0xC000000000000001) != 0)
              {

                v58 = MEMORY[0x23EEA0B80](v56, v57);
              }

              else
              {
                if ((v56 & 0x8000000000000000) != 0)
                {
                  goto LABEL_132;
                }

                if (v56 >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_134;
                }

                v58 = *(v57 + 8 * v56 + 32);
              }

              v59 = *(v30 + 24);
              v60 = *(v58 + 24);
              v61 = *(v58 + 16);

              v62 = *v31;
              if (__OFSUB__(v61, *v31))
              {
                goto LABEL_133;
              }

              v54 = v59 + (v60 - v59) * v48 / (v61 - *v31);
            }

            *(v30 + 24) = v54;
            v23 = __OFADD__(v62, v48);
            v63 = v62 + v48;
            if (v23)
            {
              goto LABEL_130;
            }

            *v31 = v63;
LABEL_60:

            if (v27 == ++v4)
            {
              return result;
            }

            continue;
          }
        }

LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

LABEL_46:
      *(v20 + 40) = *(v20 + 32) + *(v20 + 40);
      if (v19 >= v4)
      {
        v22 = *(v20 + 16);
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_119;
        }

        *(v20 + 16) = v24;
      }

      ++v19;
      if (v21 == v18)
      {
        goto LABEL_53;
      }
    }

    if (v19 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_52;
      }

      goto LABEL_46;
    }

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
LABEL_129:
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
LABEL_135:
    __break(1u);
LABEL_136:

    v5 = MEMORY[0x23EEA0B80](0, v4);
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v4 + 32);

    goto LABEL_8;
  }

LABEL_156:
  __break(1u);
LABEL_157:

  v9 = MEMORY[0x23EEA0B80](v5, v4);

LABEL_15:
  v10 = *(v9 + 24);

  v5 = *(v1 + 16);
  v11 = v5 >> 62;
  if (v10 <= a1)
  {
    goto LABEL_29;
  }

  if (!v11)
  {
    v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_18;
  }

LABEL_160:
  if (v5 < 0)
  {
    v68 = v5;
  }

  else
  {
    v68 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  v12 = MEMORY[0x23EEA0C00](v68);
LABEL_18:

  if (!v12)
  {
LABEL_36:

    goto LABEL_37;
  }

  v4 = 0;
  while (2)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x23EEA0B80](v4, v5);
      v14 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_28;
      }

LABEL_23:
      v15 = *(v13 + 24);

      if (v15 > a1)
      {

        goto LABEL_38;
      }

      ++v4;
      if (v14 == v12)
      {
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_135;
  }

  v14 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_23;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  if (!v11)
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_31;
    }

LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  if (v5 < 0)
  {
    v69 = v5;
  }

  else
  {
    v69 = v5 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x23EEA0C00](v69);
  v4 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_169;
  }

LABEL_31:
  v5 = *(v1 + 16);
  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_170:

    v17 = MEMORY[0x23EEA0B80](v4, v5);

    goto LABEL_35;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v5 + 8 * v4 + 32);

LABEL_35:
    *(v17 + 24) = a1;

    goto LABEL_38;
  }

  __break(1u);
  return result;
}

uint64_t WKPercentileAnalytics.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit12IntervalStepVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit12IntervalStepVGMR, type metadata accessor for IntervalStep);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D14_IntervalBlockVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D14_IntervalBlockVGMR, type metadata accessor for Apple_Workout_IntervalBlock);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR, type metadata accessor for ScheduledWorkoutPlan);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_d1_D13ConfigurationVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_d1_D13ConfigurationVGMR, type metadata accessor for Apple_Workout_WorkoutConfiguration);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D13_IntervalStepVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D13_IntervalStepVGMR, type metadata accessor for Apple_Workout_IntervalStep);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D11_RoutePointVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit06Apple_D11_RoutePointVGMR, type metadata accessor for Apple_Workout_RoutePoint);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10WorkoutKit13IntervalBlockVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit13IntervalBlockVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10WorkoutKit011SwimBikeRunD0V8ActivityOGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit011SwimBikeRunD0V8ActivityOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10WorkoutKit10RoutePointVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit10RoutePointVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMd, &_ss23_ContiguousArrayStorageCySo22CLLocationCoordinate2DVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
  result = _swift_stdlib_malloc_size(v17);
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

Swift::Int specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
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

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

unint64_t Apple_Workout_WorkoutAlert.workoutKitRepresentation.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  if (v2 != 1)
  {
    goto LABEL_10;
  }

  v3 = *v1;
  if (*v1 <= 1)
  {
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else if ((v3 - 2) < 4)
  {
    LOBYTE(v2) = 0;
  }

  if (*(v1 + 24) != 1)
  {
LABEL_10:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  v4 = *(v1 + 16);
  if (v4 <= 1)
  {
    if (v4)
    {
      v7 = v2;
      return Apple_Workout_WorkoutAlert.workoutKitTargetRepresentation(alertMetric:)(&v7, a1);
    }

    goto LABEL_10;
  }

  if (v4 != 2)
  {
    return Apple_Workout_WorkoutAlert.workoutKitZoneRepresentation(alertMetric:)(a1);
  }

  v8 = v2;
  return Apple_Workout_WorkoutAlert.workoutKitRangedRepresentation(alertMetric:)(&v8, a1);
}

uint64_t Apple_Workout_WorkoutAlert.workoutKitTargetRepresentation(alertMetric:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v108 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v114 = &v96 - v4;
  v5 = type metadata accessor for Apple_Workout_PowerValue(0);
  MEMORY[0x28223BE20](v5 - 8);
  v107 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_PowerAlert(0);
  MEMORY[0x28223BE20](v7 - 8);
  v115 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v96 = *(v9 - 8);
  v97 = v9;
  MEMORY[0x28223BE20](v9);
  v105 = &v96 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v112 = &v96 - v12;
  v102 = type metadata accessor for Apple_Workout_CadenceValue(0);
  MEMORY[0x28223BE20](v102);
  v103 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_CadenceAlert(0);
  MEMORY[0x28223BE20](v14 - 8);
  v113 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v98 = *(v16 - 8);
  v99 = v16;
  MEMORY[0x28223BE20](v16);
  v100 = &v96 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v101 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v106 = &v96 - v21;
  v22 = type metadata accessor for Apple_Workout_TimeValue(0);
  v109 = *(v22 - 8);
  v110 = v22;
  MEMORY[0x28223BE20](v22);
  v104 = (&v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = &v96 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v96 - v28;
  v30 = type metadata accessor for Apple_Workout_SpeedValue(0);
  MEMORY[0x28223BE20](v30);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v96 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v96 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v96 - v40;
  v42 = type metadata accessor for Apple_Workout_SpeedAlert(0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v96 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 8) != 1)
  {
    goto LABEL_10;
  }

  v45 = *v2;
  if (*v2 > 3)
  {
    if (v45 == 5)
    {
      goto LABEL_34;
    }

    v49 = *v116;
    v50 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v2 + *(v50 + 24), v35, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v51 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
    if ((*(*(v51 - 8) + 48))(v35, 1, v51) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v35, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      goto LABEL_34;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v58 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
      v59 = v35;
      goto LABEL_33;
    }

    v53 = v115;
    outlined init with take of Apple_Workout_PowerAlert(v35, v115, type metadata accessor for Apple_Workout_PowerAlert);
    v54 = v114;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v53, v114, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    v55 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
    if ((*(*(v55 - 8) + 48))(v54, 1, v55) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v53, type metadata accessor for Apple_Workout_PowerAlert);
      v56 = &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd;
      v57 = &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR;
LABEL_22:
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v54, v56, v57);
      goto LABEL_34;
    }

    if (!swift_getEnumCaseMultiPayload())
    {
      v68 = v107;
      outlined init with take of Apple_Workout_PowerAlert(v54, v107, type metadata accessor for Apple_Workout_PowerValue);
      v69 = [objc_opt_self() watts];
      v70 = type metadata accessor for PowerThresholdAlert(0);
      v71 = v108;
      *(v108 + 24) = v70;
      v71[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerThresholdAlert and conformance PowerThresholdAlert, type metadata accessor for PowerThresholdAlert, &protocol conformance descriptor for PowerThresholdAlert);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
      type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
      Measurement.init(value:unit:)();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v68, type metadata accessor for Apple_Workout_PowerValue);
      result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v53, type metadata accessor for Apple_Workout_PowerAlert);
      *(boxed_opaque_existential_1 + *(v70 + 20)) = v49;
      return result;
    }

    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v53, type metadata accessor for Apple_Workout_PowerAlert);
    v65 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget;
LABEL_32:
    v58 = v65;
    v59 = v54;
    goto LABEL_33;
  }

  if ((v45 - 1) >= 2)
  {
    if (!v45)
    {
LABEL_10:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v52 = 0;
      return swift_willThrow();
    }

    v60 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v2 + *(v60 + 24), v38, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v61 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
    if ((*(*(v61 - 8) + 48))(v38, 1, v61) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v38, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      goto LABEL_34;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v58 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
      v59 = v38;
      goto LABEL_33;
    }

    v62 = v113;
    outlined init with take of Apple_Workout_PowerAlert(v38, v113, type metadata accessor for Apple_Workout_CadenceAlert);
    v54 = v112;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v62, v112, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    v63 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
    if ((*(*(v63 - 8) + 48))(v54, 1, v63) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v62, type metadata accessor for Apple_Workout_CadenceAlert);
      v56 = &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd;
      v57 = &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR;
      goto LABEL_22;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v76 = v103;
      outlined init with take of Apple_Workout_PowerAlert(v54, v103, type metadata accessor for Apple_Workout_CadenceValue);
      v77 = v101;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v76 + *(v102 + 24), v101, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      v78 = v110;
      v79 = *(v109 + 48);
      if (v79(v77, 1, v110) == 1)
      {
        v80 = v104;
        *v104 = 0;
        *(v80 + 8) = 1;
        v80[2] = 0;
        UnknownStorage.init()();
        v81 = v79(v77, 1, v78);
        v82 = v111;
        v83 = v105;
        if (v81 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v77, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
        }
      }

      else
      {
        v80 = v104;
        outlined init with take of Apple_Workout_PowerAlert(v77, v104, type metadata accessor for Apple_Workout_TimeValue);
        v82 = v111;
        v83 = v105;
      }

      v91 = *(v80 + 2);
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v80, type metadata accessor for Apple_Workout_TimeValue);
      if (v91 <= 0.0)
      {
        lazy protocol witness table accessor for type ImportError and conformance ImportError();
        swift_allocError();
        *v95 = 1;
        swift_willThrow();
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v76, type metadata accessor for Apple_Workout_CadenceValue);
        return outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v62, type metadata accessor for Apple_Workout_CadenceAlert);
      }

      else
      {
        Apple_Workout_CadenceValue.measurement.getter(v83);
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v76, type metadata accessor for Apple_Workout_CadenceValue);
        result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v62, type metadata accessor for Apple_Workout_CadenceAlert);
        if (!v82)
        {
          v92 = type metadata accessor for CadenceThresholdAlert(0);
          v93 = v108;
          *(v108 + 24) = v92;
          v93[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type CadenceThresholdAlert and conformance CadenceThresholdAlert, type metadata accessor for CadenceThresholdAlert, &protocol conformance descriptor for CadenceThresholdAlert);
          v94 = __swift_allocate_boxed_opaque_existential_1(v93);
          return (*(v96 + 32))(v94, v83, v97);
        }
      }

      return result;
    }

    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v62, type metadata accessor for Apple_Workout_CadenceAlert);
    v65 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget;
    goto LABEL_32;
  }

  v46 = *v116;
  v47 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v2 + *(v47 + 24), v41, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v48 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v48 - 8) + 48))(v41, 1, v48) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v41, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
LABEL_34:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v66 = 1;
    return swift_willThrow();
  }

  if (swift_getEnumCaseMultiPayload())
  {
    v58 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
    v59 = v41;
LABEL_33:
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v59, v58);
    goto LABEL_34;
  }

  outlined init with take of Apple_Workout_PowerAlert(v41, v44, type metadata accessor for Apple_Workout_SpeedAlert);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v44, v29, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  v64 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  if ((*(*(v64 - 8) + 48))(v29, 1, v64) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v44, type metadata accessor for Apple_Workout_SpeedAlert);
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v29, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
    goto LABEL_34;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v44, type metadata accessor for Apple_Workout_SpeedAlert);
    v58 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget;
    v59 = v29;
    goto LABEL_33;
  }

  outlined init with take of Apple_Workout_PowerAlert(v29, v32, type metadata accessor for Apple_Workout_SpeedValue);
  v73 = v106;
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v32[*(v30 + 24)], v106, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v74 = v110;
  v75 = *(v109 + 48);
  if (v75(v73, 1, v110) == 1)
  {
    *v26 = 0;
    v26[8] = 1;
    *(v26 + 2) = 0;
    UnknownStorage.init()();
    if (v75(v73, 1, v74) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v73, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_PowerAlert(v73, v26, type metadata accessor for Apple_Workout_TimeValue);
  }

  v84 = *(v26 + 2);
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v26, type metadata accessor for Apple_Workout_TimeValue);
  if (v84 <= 0.0)
  {
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v90 = 1;
    swift_willThrow();
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v32, type metadata accessor for Apple_Workout_SpeedValue);
    return outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v44, type metadata accessor for Apple_Workout_SpeedAlert);
  }

  else
  {
    v85 = v100;
    v86 = v111;
    Apple_Workout_SpeedValue.measurement.getter(v100);
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v32, type metadata accessor for Apple_Workout_SpeedValue);
    result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v44, type metadata accessor for Apple_Workout_SpeedAlert);
    if (!v86)
    {
      v87 = type metadata accessor for SpeedThresholdAlert(0);
      v88 = v108;
      *(v108 + 24) = v87;
      v88[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type SpeedThresholdAlert and conformance SpeedThresholdAlert, type metadata accessor for SpeedThresholdAlert, &protocol conformance descriptor for SpeedThresholdAlert);
      v89 = __swift_allocate_boxed_opaque_existential_1(v88);
      result = (*(v98 + 32))(v89, v85, v99);
      *(v89 + *(v87 + 20)) = v46;
    }
  }

  return result;
}

uint64_t Apple_Workout_WorkoutAlert.workoutKitRangedRepresentation(alertMetric:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v394 = a2;
  v412 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v361 = &v327 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v359 = &v327 - v5;
  v387 = type metadata accessor for Apple_Workout_HeartRateValue(0);
  v360 = *(v387 - 8);
  MEMORY[0x28223BE20](v387);
  v366 = (&v327 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v365 = (&v327 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v401 = &v327 - v10;
  v385 = type metadata accessor for Apple_Workout_HeartRateRange(0);
  MEMORY[0x28223BE20](v385);
  v392 = &v327 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_HeartRateAlert(0);
  MEMORY[0x28223BE20](v12 - 8);
  v405 = &v327 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
  MEMORY[0x28223BE20](v380);
  v379 = &v327 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v377 = &v327 - v16;
  v388 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v378 = *(v388 - 8);
  MEMORY[0x28223BE20](v388);
  v386 = &v327 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v399 = &v327 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
  MEMORY[0x28223BE20](v20 - 8);
  v383 = &v327 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v381 = &v327 - v23;
  v398 = type metadata accessor for Apple_Workout_PowerValue(0);
  v408 = *(v398 - 8);
  MEMORY[0x28223BE20](v398);
  v384 = &v327 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v382 = (&v327 - v26);
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR);
  MEMORY[0x28223BE20](v376);
  v396 = &v327 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v28 - 8);
  v410 = &v327 - v29;
  v397 = type metadata accessor for Apple_Workout_PowerRange(0);
  MEMORY[0x28223BE20](v397);
  v409 = &v327 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Apple_Workout_PowerAlert(0);
  MEMORY[0x28223BE20](v31 - 8);
  v411 = &v327 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
  MEMORY[0x28223BE20](v369);
  v370 = &v327 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v368 = &v327 - v35;
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v371 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v358 = &v327 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v357 = &v327 - v38;
  MEMORY[0x28223BE20](v39);
  v336 = &v327 - v40;
  MEMORY[0x28223BE20](v41);
  v344 = &v327 - v42;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  MEMORY[0x28223BE20](v367);
  v375 = &v327 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v333 = &v327 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
  MEMORY[0x28223BE20](v46 - 8);
  v335 = &v327 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v343 = &v327 - v49;
  MEMORY[0x28223BE20](v50);
  v364 = &v327 - v51;
  MEMORY[0x28223BE20](v52);
  v356 = &v327 - v53;
  v389 = type metadata accessor for Apple_Workout_CadenceValue(0);
  v391 = *(v389 - 8);
  MEMORY[0x28223BE20](v389);
  v334 = &v327 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v342 = &v327 - v56;
  MEMORY[0x28223BE20](v57);
  v348 = &v327 - v58;
  MEMORY[0x28223BE20](v59);
  v363 = &v327 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v61 - 8);
  v400 = &v327 - v62;
  v374 = type metadata accessor for Apple_Workout_CadenceRange(0);
  MEMORY[0x28223BE20](v374);
  v390 = &v327 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for Apple_Workout_CadenceAlert(0);
  MEMORY[0x28223BE20](v64 - 8);
  v402 = &v327 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
  MEMORY[0x28223BE20](v332);
  v331 = &v327 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v330 = &v327 - v68;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v337 = *(v341 - 8);
  MEMORY[0x28223BE20](v341);
  v340 = &v327 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v350 = &v327 - v71;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  MEMORY[0x28223BE20](v328);
  v329 = &v327 - v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v73 - 8);
  v349 = &v327 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v355 = &v327 - v76;
  MEMORY[0x28223BE20](v77);
  v353 = &v327 - v78;
  MEMORY[0x28223BE20](v79);
  v373 = &v327 - v80;
  v407 = type metadata accessor for Apple_Workout_TimeValue(0);
  v404 = *(v407 - 8);
  MEMORY[0x28223BE20](v407);
  v347 = (&v327 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v82);
  v362 = (&v327 - v83);
  MEMORY[0x28223BE20](v84);
  v352 = (&v327 - v85);
  MEMORY[0x28223BE20](v86);
  v88 = &v327 - v87;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  MEMORY[0x28223BE20](v89 - 8);
  v339 = &v327 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v345 = &v327 - v92;
  MEMORY[0x28223BE20](v93);
  v354 = &v327 - v94;
  MEMORY[0x28223BE20](v95);
  v97 = &v327 - v96;
  v393 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v406 = *(v393 - 8);
  MEMORY[0x28223BE20](v393);
  v338 = &v327 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v99);
  v346 = &v327 - v100;
  MEMORY[0x28223BE20](v101);
  v351 = &v327 - v102;
  MEMORY[0x28223BE20](v103);
  v105 = &v327 - v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v106 - 8);
  v108 = &v327 - v107;
  v109 = type metadata accessor for Apple_Workout_SpeedRange(0);
  MEMORY[0x28223BE20](v109);
  v403 = &v327 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  MEMORY[0x28223BE20](v111 - 8);
  v113 = &v327 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v114);
  v116 = &v327 - v115;
  MEMORY[0x28223BE20](v117);
  v119 = &v327 - v118;
  MEMORY[0x28223BE20](v120);
  v122 = &v327 - v121;
  v123 = type metadata accessor for Apple_Workout_SpeedAlert(0);
  MEMORY[0x28223BE20](v123 - 8);
  v125 = &v327 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v413 + 8) != 1)
  {
    goto LABEL_12;
  }

  v126 = *v413;
  if (*v413 <= 3)
  {
    if ((v126 - 1) < 2)
    {
      v127 = v125;
      LODWORD(v412) = *v412;
      v128 = v413;
      v129 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v128 + *(v129 + 24), v122, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      v130 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
      if ((*(*(v130 - 8) + 48))(v122, 1, v130) == 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v122, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
LABEL_62:
        lazy protocol witness table accessor for type ImportError and conformance ImportError();
        swift_allocError();
        *v208 = 1;
        return swift_willThrow();
      }

      if (swift_getEnumCaseMultiPayload())
      {
        v142 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
        v143 = v122;
LABEL_61:
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v143, v142);
        goto LABEL_62;
      }

      outlined init with take of Apple_Workout_PowerAlert(v122, v127, type metadata accessor for Apple_Workout_SpeedAlert);
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v127, v108, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
      v152 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
      if ((*(*(v152 - 8) + 48))(v108, 1, v152) == 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v127, type metadata accessor for Apple_Workout_SpeedAlert);
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v108, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
        goto LABEL_62;
      }

      if (swift_getEnumCaseMultiPayload() != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v127, type metadata accessor for Apple_Workout_SpeedAlert);
        v142 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget;
        v143 = v108;
        goto LABEL_61;
      }

      v163 = v403;
      outlined init with take of Apple_Workout_PowerAlert(v108, v403, type metadata accessor for Apple_Workout_SpeedRange);
      v411 = *(v109 + 20);
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v163 + v411, v97, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      v165 = v406 + 48;
      v164 = *(v406 + 48);
      v166 = v393;
      v167 = v164(v97, 1, v393);
      v413 = v164;
      v406 = v165;
      if (v167 == 1)
      {
        UnknownStorage.init()();
        v168 = *(v166 + 20);
        v169 = type metadata accessor for Apple_Workout_DistanceValue(0);
        (*(*(v169 - 8) + 56))(&v105[v168], 1, 1, v169);
        (*(v404 + 56))(&v105[*(v166 + 24)], 1, 1, v407);
        if (v164(v97, 1, v166) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v97, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
        }
      }

      else
      {
        outlined init with take of Apple_Workout_PowerAlert(v97, v105, type metadata accessor for Apple_Workout_SpeedValue);
      }

      v209 = &v105[*(v166 + 24)];
      v210 = v373;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v209, v373, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      v211 = *(v404 + 48);
      v212 = v407;
      if (v211(v210, 1, v407) == 1)
      {
        *v88 = 0;
        v88[8] = 1;
        *(v88 + 2) = 0;
        UnknownStorage.init()();
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v105, type metadata accessor for Apple_Workout_SpeedValue);
        if (v211(v210, 1, v212) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v210, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
        }
      }

      else
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v105, type metadata accessor for Apple_Workout_SpeedValue);
        outlined init with take of Apple_Workout_PowerAlert(v210, v88, type metadata accessor for Apple_Workout_TimeValue);
      }

      v213 = *(v88 + 2);
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v88, type metadata accessor for Apple_Workout_TimeValue);
      v214 = v393;
      v215 = v413;
      if (v213 <= 0.0)
      {
        goto LABEL_99;
      }

      v216 = v211;
      v410 = *(v109 + 24);
      v217 = v354;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v403 + v410, v354, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      if (v215(v217, 1, v214) == 1)
      {
        v218 = v351;
        UnknownStorage.init()();
        v219 = *(v214 + 20);
        v220 = type metadata accessor for Apple_Workout_DistanceValue(0);
        v221 = v218 + v219;
        v222 = v218;
        (*(*(v220 - 8) + 56))(v221, 1, 1, v220);
        (*(v404 + 56))(v218 + *(v214 + 24), 1, 1, v407);
        v223 = v215(v217, 1, v214);
        v224 = v353;
        if (v223 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v217, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
        }
      }

      else
      {
        v222 = v351;
        outlined init with take of Apple_Workout_PowerAlert(v217, v351, type metadata accessor for Apple_Workout_SpeedValue);
        v224 = v353;
      }

      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v222 + *(v214 + 24), v224, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      v264 = v222;
      v265 = v407;
      if (v216(v224, 1, v407) == 1)
      {
        v266 = v352;
        *v352 = 0;
        *(v266 + 8) = 1;
        v267 = v266;
        v266[2] = 0;
        UnknownStorage.init()();
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v264, type metadata accessor for Apple_Workout_SpeedValue);
        if (v216(v224, 1, v265) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v224, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
        }
      }

      else
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v222, type metadata accessor for Apple_Workout_SpeedValue);
        v267 = v352;
        outlined init with take of Apple_Workout_PowerAlert(v224, v352, type metadata accessor for Apple_Workout_TimeValue);
      }

      v268 = v267[2];
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v267, type metadata accessor for Apple_Workout_TimeValue);
      v269 = v407;
      if (v268 <= 0.0)
      {
LABEL_99:
        lazy protocol witness table accessor for type ImportError and conformance ImportError();
        swift_allocError();
        *v279 = 1;
        swift_willThrow();
LABEL_100:
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v403, type metadata accessor for Apple_Workout_SpeedRange);
        return outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v127, type metadata accessor for Apple_Workout_SpeedAlert);
      }

      v270 = v345;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v403 + v411, v345, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      if (v215(v270, 1, v214) == 1)
      {
        v271 = v346;
        UnknownStorage.init()();
        v272 = v215;
        v273 = *(v214 + 20);
        v274 = type metadata accessor for Apple_Workout_DistanceValue(0);
        (*(*(v274 - 8) + 56))(v271 + v273, 1, 1, v274);
        (*(v404 + 56))(v271 + *(v214 + 24), 1, 1, v269);
        v275 = v272;
        v276 = v272(v270, 1, v214);
        v277 = v395;
        v278 = v350;
        if (v276 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v270, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
        }
      }

      else
      {
        v275 = v215;
        v271 = v346;
        outlined init with take of Apple_Workout_PowerAlert(v270, v346, type metadata accessor for Apple_Workout_SpeedValue);
        v277 = v395;
        v278 = v350;
      }

      Apple_Workout_SpeedValue.measurement.getter(v278);
      if (v277)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v271, type metadata accessor for Apple_Workout_SpeedValue);
        goto LABEL_100;
      }

      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v271, type metadata accessor for Apple_Workout_SpeedValue);
      v292 = v339;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v403 + v410, v339, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
      if (v275(v292, 1, v214) == 1)
      {
        v293 = v214;
        v294 = v338;
        UnknownStorage.init()();
        v295 = *(v293 + 20);
        v296 = type metadata accessor for Apple_Workout_DistanceValue(0);
        (*(*(v296 - 8) + 56))(v294 + v295, 1, 1, v296);
        (*(v404 + 56))(v294 + *(v293 + 24), 1, 1, v269);
        v297 = v275(v292, 1, v293);
        v298 = v294;
        v299 = v341;
        if (v297 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v292, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
        }
      }

      else
      {
        v298 = v338;
        outlined init with take of Apple_Workout_PowerAlert(v292, v338, type metadata accessor for Apple_Workout_SpeedValue);
        v299 = v341;
      }

      v305 = v340;
      Apple_Workout_SpeedValue.measurement.getter(v340);
      v395 = 0;
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v298, type metadata accessor for Apple_Workout_SpeedValue);
      lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitSpeed> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
      v306 = v350;
      v307 = dispatch thunk of static Comparable.<= infix(_:_:)();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v403, type metadata accessor for Apple_Workout_SpeedRange);
      result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v127, type metadata accessor for Apple_Workout_SpeedAlert);
      if (v307)
      {
        v308 = v337;
        v309 = *(v337 + 32);
        v310 = v330;
        v309(v330, v306, v299);
        v311 = v332;
        v309((v310 + *(v332 + 48)), v305, v299);
        v312 = v331;
        outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v310, v331, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
        v413 = *(v311 + 48);
        v313 = v329;
        v309(v329, v312, v299);
        v314 = *(v308 + 8);
        v314(v413 + v312, v299);
        outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v310, v312, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCG5lower_AF5uppertMR);
        v309(&v313[*(v328 + 36)], (v312 + *(v311 + 48)), v299);
        v314(v312, v299);
        v202 = type metadata accessor for SpeedRangeAlert(0);
        v315 = v394;
        *(v394 + 24) = v202;
        v315[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type SpeedRangeAlert and conformance SpeedRangeAlert, type metadata accessor for SpeedRangeAlert, &protocol conformance descriptor for SpeedRangeAlert);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v315);
        v205 = &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd;
        v206 = &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR;
        v207 = v313;
        goto LABEL_57;
      }

      goto LABEL_132;
    }

    if (!v126)
    {
LABEL_12:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v136 = 0;
      return swift_willThrow();
    }

    v144 = v413;
    v145 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v144 + *(v145 + 24), v119, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v146 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
    if ((*(*(v146 - 8) + 48))(v119, 1, v146) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v119, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      goto LABEL_62;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v142 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
      v143 = v119;
      goto LABEL_61;
    }

    v149 = v402;
    outlined init with take of Apple_Workout_PowerAlert(v119, v402, type metadata accessor for Apple_Workout_CadenceAlert);
    v150 = v400;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v149, v400, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
    v151 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget(0);
    if ((*(*(v151 - 8) + 48))(v150, 1, v151) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v149, type metadata accessor for Apple_Workout_CadenceAlert);
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v150, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A13_CadenceAlertV06OneOf_dE6TargetOSgMR);
      goto LABEL_62;
    }

    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v149, type metadata accessor for Apple_Workout_CadenceAlert);
      v142 = type metadata accessor for Apple_Workout_CadenceAlert.OneOf_CadenceAlertTarget;
      v143 = v150;
      goto LABEL_61;
    }

    v176 = v390;
    outlined init with take of Apple_Workout_PowerAlert(v150, v390, type metadata accessor for Apple_Workout_CadenceRange);
    v413 = *(v374 + 20);
    v177 = v356;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v413 + v176, v356, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v179 = v391 + 48;
    v178 = *(v391 + 48);
    v180 = v389;
    v181 = v178(v177, 1, v389);
    v391 = v179;
    if (v181 == 1)
    {
      v182 = v363;
      *v363 = 0;
      UnknownStorage.init()();
      v183 = v407;
      (*(v404 + 56))(&v182[*(v180 + 24)], 1, 1, v407);
      v184 = v178;
      if (v178(v177, 1, v180) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v177, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      }
    }

    else
    {
      v184 = v178;
      v182 = v363;
      outlined init with take of Apple_Workout_PowerAlert(v177, v363, type metadata accessor for Apple_Workout_CadenceValue);
      v183 = v407;
    }

    v251 = v355;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v182[*(v180 + 24)], v355, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v252 = *(v404 + 48);
    if (v252(v251, 1, v183) == 1)
    {
      v253 = v362;
      *v362 = 0;
      *(v253 + 8) = 1;
      v253[2] = 0;
      UnknownStorage.init()();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v182, type metadata accessor for Apple_Workout_CadenceValue);
      v254 = v252(v251, 1, v183);
      v255 = v364;
      if (v254 != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v251, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v182, type metadata accessor for Apple_Workout_CadenceValue);
      v253 = v362;
      outlined init with take of Apple_Workout_PowerAlert(v251, v362, type metadata accessor for Apple_Workout_TimeValue);
      v255 = v364;
    }

    v256 = *(v253 + 2);
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v253, type metadata accessor for Apple_Workout_TimeValue);
    v257 = v390;
    v258 = v184;
    if (v256 <= 0.0)
    {
      goto LABEL_110;
    }

    v412 = *(v374 + 24);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v412[v390], v255, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v259 = v389;
    if (v184(v255, 1, v389) == 1)
    {
      v260 = v348;
      *v348 = 0;
      UnknownStorage.init()();
      v261 = v407;
      (*(v404 + 56))(&v260[*(v259 + 24)], 1, 1, v407);
      v262 = v259;
      v263 = v260;
      if (v184(v255, 1, v262) != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v255, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      }
    }

    else
    {
      v263 = v348;
      outlined init with take of Apple_Workout_PowerAlert(v255, v348, type metadata accessor for Apple_Workout_CadenceValue);
      v261 = v407;
    }

    v280 = v349;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v263[*(v389 + 24)], v349, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    if (v252(v280, 1, v261) == 1)
    {
      v281 = v347;
      *v347 = 0;
      *(v281 + 8) = 1;
      v282 = v281;
      v281[2] = 0;
      UnknownStorage.init()();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v263, type metadata accessor for Apple_Workout_CadenceValue);
      v283 = v252(v280, 1, v261);
      v257 = v390;
      if (v283 != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v280, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v263, type metadata accessor for Apple_Workout_CadenceValue);
      v282 = v347;
      outlined init with take of Apple_Workout_PowerAlert(v280, v347, type metadata accessor for Apple_Workout_TimeValue);
      v257 = v390;
    }

    v284 = v282[2];
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v282, type metadata accessor for Apple_Workout_TimeValue);
    if (v284 <= 0.0)
    {
LABEL_110:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v291 = 1;
      swift_willThrow();
LABEL_111:
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v257, type metadata accessor for Apple_Workout_CadenceRange);
      return outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v149, type metadata accessor for Apple_Workout_CadenceAlert);
    }

    v285 = v343;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v413 + v257, v343, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v286 = v389;
    if (v184(v285, 1, v389) == 1)
    {
      v287 = v342;
      *v342 = 0;
      UnknownStorage.init()();
      (*(v404 + 56))(&v287[*(v286 + 24)], 1, 1, v407);
      v288 = v184(v285, 1, v286);
      v289 = v395;
      v290 = v344;
      if (v288 != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v285, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      }
    }

    else
    {
      v287 = v342;
      outlined init with take of Apple_Workout_PowerAlert(v285, v342, type metadata accessor for Apple_Workout_CadenceValue);
      v289 = v395;
      v290 = v344;
    }

    Apple_Workout_CadenceValue.measurement.getter(v290);
    if (v289)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v287, type metadata accessor for Apple_Workout_CadenceValue);
      goto LABEL_111;
    }

    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v287, type metadata accessor for Apple_Workout_CadenceValue);
    v300 = v335;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(&v412[v257], v335, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
    v301 = v389;
    if (v258(v300, 1, v389) == 1)
    {
      v302 = v334;
      *v334 = 0;
      UnknownStorage.init()();
      (*(v404 + 56))(&v302[*(v301 + 24)], 1, 1, v407);
      v303 = v258(v300, 1, v301);
      v304 = v372;
      if (v303 != 1)
      {
        outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v300, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMd, &_s10WorkoutKit06Apple_A13_CadenceValueVSgMR);
      }
    }

    else
    {
      v302 = v334;
      outlined init with take of Apple_Workout_PowerAlert(v300, v334, type metadata accessor for Apple_Workout_CadenceValue);
      v304 = v372;
    }

    v316 = v336;
    Apple_Workout_CadenceValue.measurement.getter(v336);
    v395 = 0;
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v302, type metadata accessor for Apple_Workout_CadenceValue);
    lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
    v317 = v344;
    v318 = dispatch thunk of static Comparable.<= infix(_:_:)();
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v257, type metadata accessor for Apple_Workout_CadenceRange);
    result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v149, type metadata accessor for Apple_Workout_CadenceAlert);
    if ((v318 & 1) == 0)
    {
      goto LABEL_133;
    }

    v319 = v371;
    v320 = *(v371 + 32);
    v321 = v368;
    v320(v368, v317, v304);
    v322 = v369;
    v320((v321 + *(v369 + 48)), v316, v304);
    v323 = v370;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v321, v370, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v324 = *(v322 + 48);
    v320(v333, v323, v304);
    v325 = *(v319 + 8);
    v325(v323 + v324, v304);
    outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v321, v323, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v244 = v333;
    v320(&v333[*(v367 + 36)], (v323 + *(v322 + 48)), v304);
    v325(v323, v304);
    v326 = type metadata accessor for CadenceRangeAlert(0);
    v246 = v394;
    *(v394 + 24) = v326;
    v247 = &lazy protocol witness table cache variable for type CadenceRangeAlert and conformance CadenceRangeAlert;
    v248 = type metadata accessor for CadenceRangeAlert;
    v249 = &protocol conformance descriptor for CadenceRangeAlert;
LABEL_80:
    v246[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(v247, v248, v249);
    v250 = __swift_allocate_boxed_opaque_existential_1(v246);
    return outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v244, v250, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  }

  v131 = v413;
  if (v126 != 5)
  {
    LODWORD(v412) = *v412;
    v134 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v131 + *(v134 + 24), v116, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    v135 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
    if ((*(*(v135 - 8) + 48))(v116, 1, v135) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v116, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
      goto LABEL_62;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v142 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
      v143 = v116;
      goto LABEL_61;
    }

    v137 = v411;
    outlined init with take of Apple_Workout_PowerAlert(v116, v411, type metadata accessor for Apple_Workout_PowerAlert);
    v138 = v410;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v137, v410, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR);
    v139 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(0);
    if ((*(*(v139 - 8) + 48))(v138, 1, v139) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v137, type metadata accessor for Apple_Workout_PowerAlert);
      v140 = &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMd;
      v141 = &_s10WorkoutKit06Apple_A11_PowerAlertV06OneOf_dE6TargetOSgMR;
LABEL_24:
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v138, v140, v141);
      goto LABEL_62;
    }

    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v153 = v409;
      outlined init with take of Apple_Workout_PowerAlert(v138, v409, type metadata accessor for Apple_Workout_PowerRange);
      v154 = v381;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v153 + *(v397 + 20), v381, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
      v155 = v408 + 48;
      v156 = *(v408 + 48);
      v157 = v398;
      v158 = v156(v154, 1, v398);
      v408 = v155;
      if (v158 == 1)
      {
        v159 = v382;
        *v382 = 0;
        *(v159 + 8) = 1;
        v159[2] = 0;
        UnknownStorage.init()();
        v160 = v156(v154, 1, v157);
        v161 = v388;
        v162 = v384;
        if (v160 != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v154, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
        }
      }

      else
      {
        v159 = v382;
        outlined init with take of Apple_Workout_PowerAlert(v154, v382, type metadata accessor for Apple_Workout_PowerValue);
        v161 = v388;
        v162 = v384;
      }

      v185 = objc_opt_self();
      v186 = [v185 watts];
      type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitPower, 0x277CCAE30);
      Measurement.init(value:unit:)();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v159, type metadata accessor for Apple_Workout_PowerValue);
      v187 = v383;
      outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v409 + *(v397 + 24), v383, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
      v188 = v398;
      if (v156(v187, 1, v398) == 1)
      {
        *v162 = 0;
        *(v162 + 8) = 1;
        *(v162 + 16) = 0;
        UnknownStorage.init()();
        if (v156(v187, 1, v188) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v187, &_s10WorkoutKit06Apple_A11_PowerValueVSgMd, &_s10WorkoutKit06Apple_A11_PowerValueVSgMR);
        }
      }

      else
      {
        outlined init with take of Apple_Workout_PowerAlert(v187, v162, type metadata accessor for Apple_Workout_PowerValue);
      }

      v189 = [v185 watts];
      v190 = v386;
      Measurement.init(value:unit:)();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v162, type metadata accessor for Apple_Workout_PowerValue);
      lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitPower> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
      v191 = v399;
      v192 = dispatch thunk of static Comparable.<= infix(_:_:)();
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v409, type metadata accessor for Apple_Workout_PowerRange);
      result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v411, type metadata accessor for Apple_Workout_PowerAlert);
      if (v192)
      {
        v194 = v378;
        v195 = *(v378 + 32);
        v196 = v377;
        v195(v377, v191, v161);
        v197 = v380;
        v195((v196 + *(v380 + 48)), v190, v161);
        v198 = v379;
        outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v196, v379, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
        v199 = *(v197 + 48);
        v195(v396, v198, v161);
        v200 = *(v194 + 8);
        v200(v198 + v199, v161);
        outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v196, v198, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCG5lower_AF5uppertMR);
        v201 = v396;
        v195(&v396[*(v376 + 36)], (v198 + *(v197 + 48)), v161);
        v200(v198, v161);
        v202 = type metadata accessor for PowerRangeAlert(0);
        v203 = v394;
        *(v394 + 24) = v202;
        v203[4] = lazy protocol witness table accessor for type PowerThresholdAlert and conformance PowerThresholdAlert(&lazy protocol witness table cache variable for type PowerRangeAlert and conformance PowerRangeAlert, type metadata accessor for PowerRangeAlert, &protocol conformance descriptor for PowerRangeAlert);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v203);
        v205 = &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMd;
        v206 = &_sSNy10Foundation11MeasurementVySo11NSUnitPowerCGGMR;
        v207 = v201;
LABEL_57:
        result = outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v207, boxed_opaque_existential_1, v205, v206);
        *(boxed_opaque_existential_1 + *(v202 + 20)) = v412;
        return result;
      }

      __break(1u);
      goto LABEL_131;
    }

    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v137, type metadata accessor for Apple_Workout_PowerAlert);
    v170 = type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget;
LABEL_59:
    v142 = v170;
    v143 = v138;
    goto LABEL_61;
  }

  v132 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v131 + *(v132 + 24), v113, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v133 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  if ((*(*(v133 - 8) + 48))(v113, 1, v133) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v113, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
    goto LABEL_62;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v142 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue;
    v143 = v113;
    goto LABEL_61;
  }

  v147 = v405;
  outlined init with take of Apple_Workout_PowerAlert(v113, v405, type metadata accessor for Apple_Workout_HeartRateAlert);
  v138 = v401;
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v147, v401, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd, &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR);
  v148 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget(0);
  if ((*(*(v148 - 8) + 48))(v138, 1, v148) == 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v147, type metadata accessor for Apple_Workout_HeartRateAlert);
    v140 = &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMd;
    v141 = &_s10WorkoutKit06Apple_A15_HeartRateAlertV06OneOf_deF6TargetOSgMR;
    goto LABEL_24;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v147, type metadata accessor for Apple_Workout_HeartRateAlert);
    v170 = type metadata accessor for Apple_Workout_HeartRateAlert.OneOf_HeartRateAlertTarget;
    goto LABEL_59;
  }

  v171 = v392;
  outlined init with take of Apple_Workout_PowerAlert(v138, v392, type metadata accessor for Apple_Workout_HeartRateRange);
  v172 = v359;
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v171 + *(v385 + 20), v359, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v173 = *(v360 + 48);
  v174 = v387;
  if (v173(v172, 1, v387) == 1)
  {
    v175 = v365;
    *v365 = 0;
    UnknownStorage.init()();
    if (v173(v172, 1, v174) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v172, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
    }
  }

  else
  {
    v175 = v365;
    outlined init with take of Apple_Workout_PowerAlert(v172, v365, type metadata accessor for Apple_Workout_HeartRateValue);
  }

  v225 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v226 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v227 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  [v226 initWithSymbol:v227 converter:v225];

  type metadata accessor for NSUnitPower(0, &lazy cache variable for type metadata for NSUnitFrequency, 0x277CCAE00);
  v228 = v357;
  Measurement.init(value:unit:)();
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v175, type metadata accessor for Apple_Workout_HeartRateValue);
  v229 = v361;
  outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v392 + *(v385 + 24), v361, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
  v230 = v387;
  if (v173(v229, 1, v387) == 1)
  {
    v231 = v366;
    *v366 = 0;
    UnknownStorage.init()();
    if (v173(v229, 1, v230) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v229, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMd, &_s10WorkoutKit06Apple_A15_HeartRateValueVSgMR);
    }
  }

  else
  {
    v231 = v366;
    outlined init with take of Apple_Workout_PowerAlert(v229, v366, type metadata accessor for Apple_Workout_HeartRateValue);
  }

  v232 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v233 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v234 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  [v233 initWithSymbol:v234 converter:v232];

  v235 = v358;
  Measurement.init(value:unit:)();
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v231, type metadata accessor for Apple_Workout_HeartRateValue);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v236 = v372;
  LOBYTE(v234) = dispatch thunk of static Comparable.<= infix(_:_:)();
  outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v392, type metadata accessor for Apple_Workout_HeartRateRange);
  result = outlined destroy of Apple_Workout_WorkoutAlert.OneOf_AlertValue(v405, type metadata accessor for Apple_Workout_HeartRateAlert);
  if (v234)
  {
    v237 = v371;
    v238 = *(v371 + 32);
    v239 = v368;
    v238(v368, v228, v236);
    v240 = v369;
    v238((v239 + *(v369 + 48)), v235, v236);
    v241 = v370;
    outlined init with copy of Apple_Workout_WorkoutAlert.OneOf_AlertValue?(v239, v370, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v242 = *(v240 + 48);
    v238(v375, v241, v236);
    v243 = *(v237 + 8);
    v243(v241 + v242, v236);
    outlined init with take of (lower: Measurement<NSUnitFrequency>, upper: Measurement<NSUnitFrequency>)(v239, v241, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v244 = v375;
    v238(&v375[*(v367 + 36)], (v241 + *(v240 + 48)), v236);
    v243(v241, v236);
    v245 = type metadata accessor for HeartRateRangeAlert(0);
    v246 = v394;
    *(v394 + 24) = v245;
    v247 = &lazy protocol witness table cache variable for type HeartRateRangeAlert and conformance HeartRateRangeAlert;
    v248 = type metadata accessor for HeartRateRangeAlert;
    v249 = &protocol conformance descriptor for HeartRateRangeAlert;
    goto LABEL_80;
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}