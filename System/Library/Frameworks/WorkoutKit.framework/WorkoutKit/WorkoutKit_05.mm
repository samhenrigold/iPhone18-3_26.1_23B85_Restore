uint64_t key path setter for SingleGoalWorkout.activity : SingleGoalWorkout(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a2 = *a1;
  result = specialized Sequence<>.contains(_:)(v2, &outlined read-only object #0 of one-time initialization function for unsupportedActivityTypes);
  if (result)
  {
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v4 = swift_allocError();
    *v5 = v2;
    *(v5 + 8) = 0;
    swift_willThrow();
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t SingleGoalWorkout.activity.setter(uint64_t result)
{
  *v1 = result;
  if (qword_284E21CD8 == result || unk_284E21CE0 == result || qword_284E21CE8 == result)
  {
    v4 = result;
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    v5 = swift_allocError();
    *v6 = v4;
    *(v6 + 8) = 0;
    swift_willThrow();
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    String.init<A>(describing:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t SingleGoalWorkout.activity.modify(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = **(result + 8);
    if (qword_284E21CD8 == v2 || unk_284E21CE0 == v2 || qword_284E21CE8 == v2)
    {
      v5 = result;
      v6 = **(result + 8);
      lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
      v7 = swift_allocError();
      *v8 = v6;
      *(v8 + 8) = 0;
      swift_willThrow();
      *v5 = v7;
      v9 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      String.init<A>(describing:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t key path getter for SingleGoalWorkout.goal : SingleGoalWorkout@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SingleGoalWorkout(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutGoal(a1, v7, type metadata accessor for SingleGoalWorkout);
  return _s10WorkoutKit0A4GoalOWObTm_1(&v7[*(v5 + 36)], a2, type metadata accessor for WorkoutGoal);
}

uint64_t key path setter for SingleGoalWorkout.goal : SingleGoalWorkout(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutGoal(a1, v6, type metadata accessor for WorkoutGoal);
  v7 = type metadata accessor for SingleGoalWorkout(0);
  outlined assign with copy of WorkoutGoal(v6, a2 + *(v7 + 28));
  _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5(*a2, a2[1], a2[2]);
  return _s10WorkoutKit0A4GoalOWOhTm_0(v6, type metadata accessor for WorkoutGoal);
}

uint64_t SingleGoalWorkout.goal.setter(uint64_t a1)
{
  v3 = type metadata accessor for SingleGoalWorkout(0);
  outlined assign with copy of WorkoutGoal(a1, v1 + *(v3 + 28));
  _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5(*v1, v1[1], v1[2]);
  return _s10WorkoutKit0A4GoalOWOhTm_0(a1, type metadata accessor for WorkoutGoal);
}

void (*SingleGoalWorkout.goal.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(type metadata accessor for SingleGoalWorkout(0) + 28);
  return SingleGoalWorkout.goal.modify;
}

void SingleGoalWorkout.goal.modify(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5(**(a1 + 8), *(*(a1 + 8) + 8), *(*(a1 + 8) + 16));
  }
}

void SingleGoalWorkout.init(activity:location:swimmingLocation:goal:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - v11;
  v13 = type metadata accessor for WorkoutGoal(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v17 setActivityType_];
  [v17 setLocationType_];
  [v17 setSwimmingLocationType_];
  outlined init with copy of WorkoutGoal(a4, v16, type metadata accessor for WorkoutGoal);
  outlined init with copy of WorkoutGoal(v16, v12, type metadata accessor for WorkoutGoal);
  (*(v14 + 56))(v12, 0, 1, v13);
  v18 = v17;
  specialized static SingleGoalWorkout.validate(configuration:goal:)(v18, v12);
  outlined destroy of WorkoutGoal?(v12, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  *a5 = [v18 activityType];
  a5[1] = [v18 locationType];
  v19 = [v18 swimmingLocationType];

  a5[2] = v19;
  v20 = type metadata accessor for SingleGoalWorkout(0);
  _s10WorkoutKit0A4GoalOWObTm_1(v16, a5 + *(v20 + 28), type metadata accessor for WorkoutGoal);
  _s10WorkoutKit0A4GoalOWOhTm_0(a4, type metadata accessor for WorkoutGoal);
}

uint64_t SingleGoalWorkout.init(configuration:goal:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v14 - v8;
  outlined init with copy of WorkoutGoal(a2, v14 - v8, type metadata accessor for WorkoutGoal);
  v10 = type metadata accessor for WorkoutGoal(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  specialized static SingleGoalWorkout.validate(configuration:goal:)(a1, v9);
  if (v3)
  {

    _s10WorkoutKit0A4GoalOWOhTm_0(a2, type metadata accessor for WorkoutGoal);
    return outlined destroy of WorkoutGoal?(v9, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  }

  else
  {
    outlined destroy of WorkoutGoal?(v9, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
    *a3 = [a1 activityType];
    a3[1] = [a1 locationType];
    v12 = [a1 swimmingLocationType];

    a3[2] = v12;
    v13 = type metadata accessor for SingleGoalWorkout(0);
    return _s10WorkoutKit0A4GoalOWObTm_1(a2, a3 + *(v13 + 28), type metadata accessor for WorkoutGoal);
  }
}

uint64_t SingleGoalWorkout.init(from:)@<X0>(unsigned int *a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutGoal(0);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v41 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v42 = (&v36 - v16);
  v17 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v17 setActivityType_];
  v18 = type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  v19 = (a1 + v18[6]);
  if ((v19[1] & 1) == 0)
  {
    [v17 setLocationType_];
  }

  v20 = (a1 + v18[7]);
  if ((v20[1] & 1) == 0)
  {
    [v17 setSwimmingLocationType_];
  }

  outlined init with copy of WorkoutGoal?(a1 + v18[8], v8, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v21 = *(v10 + 48);
  if (v21(v8, 1, v9) == 1)
  {
    *v12 = 0;
    v12[8] = 1;
    v22 = *(v9 + 20);
    v23 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    (*(*(v23 - 8) + 56))(&v12[v22], 1, 1, v23);
    UnknownStorage.init()();
    v24 = v21(v8, 1, v9);
    v25 = v5;
    v26 = v41;
    if (v24 != 1)
    {
      outlined destroy of WorkoutGoal?(v8, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    }
  }

  else
  {
    _s10WorkoutKit0A4GoalOWObTm_1(v8, v12, type metadata accessor for Apple_Workout_WorkoutGoal);
    v25 = v5;
    v26 = v41;
  }

  v27 = v42;
  v28 = v40;
  Apple_Workout_WorkoutGoal.workoutKitRepresentation.getter(v42);
  if (v28)
  {

    _s10WorkoutKit0A4GoalOWOhTm_0(a1, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    v29 = type metadata accessor for Apple_Workout_WorkoutGoal;
    v30 = v12;
  }

  else
  {
    _s10WorkoutKit0A4GoalOWOhTm_0(v12, type metadata accessor for Apple_Workout_WorkoutGoal);
    outlined init with copy of WorkoutGoal(v27, v26, type metadata accessor for WorkoutGoal);
    outlined init with copy of WorkoutGoal(v26, v25, type metadata accessor for WorkoutGoal);
    (*(v38 + 56))(v25, 0, 1, v39);
    specialized static SingleGoalWorkout.validate(configuration:goal:)(v17, v25);
    outlined destroy of WorkoutGoal?(v25, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
    v31 = [v17 activityType];
    v32 = v37;
    *v37 = v31;
    v32[1] = [v17 locationType];
    v33 = [v17 swimmingLocationType];

    v32[2] = v33;
    v34 = type metadata accessor for SingleGoalWorkout(0);
    _s10WorkoutKit0A4GoalOWObTm_1(v26, v32 + *(v34 + 28), type metadata accessor for WorkoutGoal);
    _s10WorkoutKit0A4GoalOWOhTm_0(a1, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
    v29 = type metadata accessor for WorkoutGoal;
    v30 = v27;
  }

  return _s10WorkoutKit0A4GoalOWOhTm_0(v30, v29);
}

void closure #1 in SingleGoalWorkout.protoComposition.getter(char *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HIDWORD(*a2))
  {
    __break(1u);
    goto LABEL_12;
  }

  *a1 = *a2;
  v8 = a2[1];
  if (v8 == 1)
  {
LABEL_6:
    v10 = a2[2];
    if (!v10)
    {
LABEL_10:
      v12 = type metadata accessor for SingleGoalWorkout(0);
      MEMORY[0x28223BE20](v12);
      v15[-2] = v13;
      lazy protocol witness table accessor for type SingleGoalWorkout and conformance SingleGoalWorkout(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutGoal and conformance Apple_Workout_WorkoutGoal, type metadata accessor for Apple_Workout_WorkoutGoal, &protocol conformance descriptor for Apple_Workout_WorkoutGoal);
      static Message.with(_:)();
      v14 = *(type metadata accessor for Apple_Workout_GoalWorkoutComposition(0) + 32);
      outlined destroy of WorkoutGoal?(&a1[v14], &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
      _s10WorkoutKit0A4GoalOWObTm_1(v7, &a1[v14], type metadata accessor for Apple_Workout_WorkoutGoal);
      (*(v5 + 56))(&a1[v14], 0, 1, v4);
      return;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v10))
      {
        v11 = &a1[*(type metadata accessor for Apple_Workout_GoalWorkoutComposition(0) + 28)];
        *v11 = v10;
        v11[4] = 0;
        goto LABEL_10;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (!HIDWORD(v8))
  {
    v9 = &a1[*(type metadata accessor for Apple_Workout_GoalWorkoutComposition(0) + 24)];
    *v9 = v8;
    v9[4] = 0;
    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
}

void SingleGoalWorkout.hash(into:)(uint64_t a1)
{
  MEMORY[0x23EEA0D50](*v1);
  MEMORY[0x23EEA0D50](v1[1]);
  MEMORY[0x23EEA0D50](v1[2]);
  type metadata accessor for SingleGoalWorkout(0);
  WorkoutGoal.hash(into:)(a1);
}

Swift::Int SingleGoalWorkout.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v0);
  MEMORY[0x23EEA0D50](v0[1]);
  MEMORY[0x23EEA0D50](v0[2]);
  type metadata accessor for SingleGoalWorkout(0);
  WorkoutGoal.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SingleGoalWorkout()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v0);
  MEMORY[0x23EEA0D50](v0[1]);
  MEMORY[0x23EEA0D50](v0[2]);
  WorkoutGoal.hash(into:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance SingleGoalWorkout(uint64_t a1)
{
  MEMORY[0x23EEA0D50](*v1);
  MEMORY[0x23EEA0D50](v1[1]);
  MEMORY[0x23EEA0D50](v1[2]);
  WorkoutGoal.hash(into:)(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SingleGoalWorkout(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](*v1);
  MEMORY[0x23EEA0D50](v1[1]);
  MEMORY[0x23EEA0D50](v1[2]);
  WorkoutGoal.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t specialized static SingleGoalWorkout.validate(configuration:goal:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v15 - v6;
  v8 = [a1 activityType];
  if (qword_284E21CD8 == v8 || unk_284E21CE0 == v8 || qword_284E21CE8 == v8)
  {
    v11 = v8;
    lazy protocol witness table accessor for type CompositionValidationError and conformance CompositionValidationError();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = 0;
    return swift_willThrow();
  }

  else
  {
    outlined init with copy of WorkoutGoal?(a2, v7, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
    v14 = type metadata accessor for WorkoutGoal(0);
    if ((*(*(v14 - 8) + 48))(v7, 1, v14) == 1)
    {
      return outlined destroy of WorkoutGoal?(v7, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
    }

    else
    {
      _s10WorkoutKit0A4GoalO8validate3for8location16swimmingLocation4kindySo21HKWorkoutActivityTypeV_So0j7SessionhL0VSo0j8SwimminghL0VxmtKlFAA06SinglecA0V_Tt2g5([a1 activityType], objc_msgSend(a1, sel_locationType), objc_msgSend(a1, sel_swimmingLocationType));
      return _s10WorkoutKit0A4GoalOWOhTm_0(v7, type metadata accessor for WorkoutGoal);
    }
  }
}

uint64_t specialized static SingleGoalWorkout.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = *(type metadata accessor for SingleGoalWorkout(0) + 28);

  return specialized static WorkoutGoal.== infix(_:_:)((a1 + v5), a2 + v5);
}

uint64_t outlined init with copy of WorkoutGoal(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type SingleGoalWorkout and conformance SingleGoalWorkout(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of WorkoutGoal?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10WorkoutKit0A4GoalOWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of WorkoutGoal?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10WorkoutKit0A4GoalOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t WorkoutPlan.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  static WorkoutPlan.protoComposition(from:)(a1, a2, &v14 - v11);
  if (!v3)
  {
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v12, v9, type metadata accessor for Apple_Workout_WorkoutPlan);
    WorkoutPlan.init(from:)(v9, a3);
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v12, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  return outlined consume of Data._Representation(a1, a2);
}

uint64_t WorkoutPlan.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v138 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v133 = (&v130 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v132 = &v130 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v136 = &v130 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  MEMORY[0x28223BE20](v8 - 8);
  v147 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v162 = (&v130 - v11);
  MEMORY[0x28223BE20](v12);
  v151 = &v130 - v13;
  MEMORY[0x28223BE20](v14);
  v149 = &v130 - v15;
  v16 = type metadata accessor for UUID();
  v155 = *(v16 - 8);
  v156 = v16;
  MEMORY[0x28223BE20](v16);
  v146 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v157 = &v130 - v19;
  MEMORY[0x28223BE20](v20);
  v152 = &v130 - v21;
  v22 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0);
  MEMORY[0x28223BE20](v22 - 8);
  v142 = (&v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v143 = (&v130 - v25);
  v26 = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
  MEMORY[0x28223BE20](v26 - 8);
  v140 = &v130 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v141 = &v130 - v29;
  v30 = type metadata accessor for Apple_Workout_CustomWorkoutComposition(0);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v139 = &v130 - v34;
  v35 = type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  MEMORY[0x28223BE20](v35 - 8);
  v37 = (&v130 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v38);
  v40 = &v130 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = &v130 - v42;
  v148 = type metadata accessor for WorkoutPlan.Workout(0);
  MEMORY[0x28223BE20](v148);
  v150 = &v130 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v130 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = (&v130 - v49);
  MEMORY[0x28223BE20](v51);
  v53 = &v130 - v52;
  MEMORY[0x28223BE20](v54);
  v56 = (&v130 - v55);
  MEMORY[0x28223BE20](v57);
  v153 = &v130 - v58;
  v144 = type metadata accessor for WorkoutPlan(0);
  MEMORY[0x28223BE20](v144);
  v145 = &v130 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v135 = &v130 - v61;
  v62 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v63 = a1 + v62[7];
  v64 = *v63;
  if (v63[8] == 1)
  {
    if (!v64)
    {
      goto LABEL_10;
    }
  }

  else if (v64 != 1)
  {
LABEL_10:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v68 = 4;
    swift_willThrow();
    goto LABEL_11;
  }

  if (*(a1 + v62[8]) || *(a1 + v62[9]) != 5)
  {
    goto LABEL_10;
  }

  v130 = v62;
  v65 = v62[5];
  v131 = a1;
  _s10Foundation4UUIDVSgWOcTm_0(a1 + v65, v43, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v66 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  if ((*(*(v66 - 8) + 48))(v43, 1, v66) == 1)
  {
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v67 = 0;
    swift_willThrow();
LABEL_9:
    a1 = v131;
LABEL_11:
    v69 = a1;
    return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v69, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    a1 = v131;
    if (!EnumCaseMultiPayload)
    {
      outlined init with take of PacerWorkout(v43, v40, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
      _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v40, v37, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
      v72 = v154;
      SingleGoalWorkout.init(from:)(v37, v56);
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v40, type metadata accessor for Apple_Workout_GoalWorkoutComposition);
      v73 = v156;
      if (v72)
      {
        goto LABEL_11;
      }

      swift_storeEnumTagMultiPayload();
      v74 = v56;
      goto LABEL_28;
    }

    v75 = v139;
    outlined init with take of PacerWorkout(v43, v139, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v75, v32, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
    v79 = v154;
    CustomWorkout.init(from:)(v32, v53);
    if (!v79)
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v75, type metadata accessor for Apple_Workout_CustomWorkoutComposition);
      swift_storeEnumTagMultiPayload();
      outlined init with take of PacerWorkout(v53, v153, type metadata accessor for WorkoutPlan.Workout);
      v73 = v156;
      goto LABEL_29;
    }

    v78 = type metadata accessor for Apple_Workout_CustomWorkoutComposition;
LABEL_22:
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v75, v78);
    goto LABEL_11;
  }

  a1 = v131;
  if (EnumCaseMultiPayload == 2)
  {
    v75 = v141;
    outlined init with take of PacerWorkout(v43, v141, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    v76 = v140;
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v75, v140, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    v77 = v154;
    PacerWorkout.init(from:)(v76, v50);
    v73 = v156;
    if (v77)
    {
      v78 = type metadata accessor for Apple_Workout_PacerWorkoutComposition;
      goto LABEL_22;
    }

    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v75, type metadata accessor for Apple_Workout_PacerWorkoutComposition);
    swift_storeEnumTagMultiPayload();
    v74 = v50;
  }

  else
  {
    v80 = v43;
    v81 = v143;
    outlined init with take of PacerWorkout(v80, v143, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    v82 = v142;
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v81, v142, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    v83 = v154;
    SwimBikeRunWorkout.init(from:)(v82, &v158);
    v73 = v156;
    if (v83)
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v81, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
      goto LABEL_11;
    }

    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v81, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition);
    *v47 = v158;
    *(v47 + 8) = v159;
    swift_storeEnumTagMultiPayload();
    v74 = v47;
  }

LABEL_28:
  outlined init with take of PacerWorkout(v74, v153, type metadata accessor for WorkoutPlan.Workout);
LABEL_29:
  v84 = v149;
  UUID.init(uuidString:)();
  v85 = v155;
  v86 = *(v155 + 48);
  v154 = v155 + 48;
  v148 = v86;
  if (v86(v84, 1, v73) == 1)
  {
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v84, &_s10Foundation4UUIDVSgMd, "(!");
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v87 = 5;
    swift_willThrow();
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v153, type metadata accessor for WorkoutPlan.Workout);
    goto LABEL_11;
  }

  v88 = *(v85 + 32);
  v149 = (v85 + 32);
  v143 = v88;
  (v88)(v152, v84, v73);
  v89 = v130[11];
  v90 = v136;
  _s10Foundation4UUIDVSgWOcTm_0(a1 + v89, v136, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  v91 = *(v137 + 48);
  v92 = v91(v90, 1, v138);
  _s10WorkoutKit0A5Alert_pSgWOhTm_0(v90, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
  if (v92 == 1 || (v160 = &type metadata for WorkoutKitFeatures, v161 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures(), LOBYTE(v158) = 1, v93 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_1(&v158), (v93 & 1) == 0))
  {
    v142 = 0;
    v141 = 0;
    v103 = 0;
    v94 = v131;
    v102 = v155;
    v99 = v156;
  }

  else
  {
    v94 = v131;
    v95 = v131 + v89;
    v96 = v132;
    _s10Foundation4UUIDVSgWOcTm_0(v95, v132, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
    v97 = v138;
    v98 = v91(v96, 1, v138);
    v99 = v156;
    if (v98 == 1)
    {
      v100 = v133;
      *v133 = MEMORY[0x277D84F90];
      UnknownStorage.init()();
      *(v100 + *(v97 + 24)) = xmmword_23B67CF80;
      v101 = v91(v96, 1, v97);
      v102 = v155;
      if (v101 != 1)
      {
        _s10WorkoutKit0A5Alert_pSgWOhTm_0(v96, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
      }
    }

    else
    {
      v100 = v133;
      outlined init with take of PacerWorkout(v96, v133, type metadata accessor for Apple_Workout_WorkoutRoute);
      v102 = v155;
    }

    WorkoutPlan.Route.init(from:)(v100, &v158);
    v142 = v158;
    v103 = *(&v159 + 1);
    v141 = v159;
  }

  v104 = *(v94 + v130[12] + 8);
  v140 = v103;
  if (v104)
  {

    UUID.init(uuidString:)();
  }

  else
  {
    result = (*(v102 + 56))(v151, 1, 1, v99);
  }

  v105 = *(v131 + v130[6]);
  v106 = *(v105 + 16);
  if (!v106)
  {
    v109 = 0;
LABEL_53:
    v162 = type metadata accessor for WorkoutPlan.Workout;
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v153, v150, type metadata accessor for WorkoutPlan.Workout);
    v155 = *(v102 + 16);
    (v155)(v146, v152, v99);
    _s10Foundation4UUIDVSgWOcTm_0(v151, v147, &_s10Foundation4UUIDVSgMd, "(!");
    v115 = v144;
    v114 = v145;
    v116 = (v145 + *(v144 + 24));
    *v116 = 0;
    *(v116 + 1) = 0;
    *(v116 + 2) = 0;
    v117 = v99;
    v118 = *(v102 + 56);
    v157 = *(v115 + 28);
    v118(&v157[v114], 1, 1, v99);
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v150, v114, v162);
    v119 = v114 + *(v115 + 20);
    v120 = v146;
    (v155)(v119, v146, v99);
    v160 = &type metadata for WorkoutKitFeatures;
    v161 = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
    LOBYTE(v158) = 1;
    v121 = v142;
    v122 = v141;
    v123 = v140;
    outlined copy of WorkoutPlan.Route?(v142, v141, v140);
    LODWORD(v154) = isFeatureEnabled(_:)();
    v124 = *(v102 + 8);
    v155 = v102 + 8;
    v162 = v124;
    (v124)(v120, v117);
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v150, type metadata accessor for WorkoutPlan.Workout);
    __swift_destroy_boxed_opaque_existential_1(&v158);
    v125 = v123;
    if ((v154 & 1) == 0)
    {
      outlined consume of WorkoutPlan.Route?(v142, v141, v123);
      v121 = 0;
      v122 = 0;
      v125 = 0;
    }

    outlined consume of WorkoutPlan.Route?(*v116, *(v116 + 1), *(v116 + 2));
    *v116 = v121;
    *(v116 + 1) = v122;
    *(v116 + 2) = v125;
    v126 = v145;
    v127 = *(v144 + 32);
    outlined assign with take of UUID?(v147, &v157[v145], &_s10Foundation4UUIDVSgMd, "(!");
    *(v126 + v127) = v109;
    v128 = v135;
    outlined init with take of PacerWorkout(v126, v135, type metadata accessor for WorkoutPlan);
    WorkoutPlan.validate()();
    if (!v129)
    {
      outlined consume of WorkoutPlan.Route?(v142, v141, v123);
      _s10WorkoutKit0A5Alert_pSgWOhTm_0(v151, &_s10Foundation4UUIDVSgMd, "(!");
      (v162)(v152, v156);
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v153, type metadata accessor for WorkoutPlan.Workout);
      outlined init with take of PacerWorkout(v128, v134, type metadata accessor for WorkoutPlan);
      v69 = v131;
      return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v69, type metadata accessor for Apple_Workout_WorkoutPlan);
    }

    outlined consume of WorkoutPlan.Route?(v142, v141, v123);
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v151, &_s10Foundation4UUIDVSgMd, "(!");
    (v162)(v152, v156);
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v153, type metadata accessor for WorkoutPlan.Workout);
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v128, type metadata accessor for WorkoutPlan);
    goto LABEL_9;
  }

  v107 = 0;
  v108 = v105 + 40;
  v109 = MEMORY[0x277D84F90];
  v110 = v162;
  while (v107 < *(v105 + 16))
  {

    UUID.init(uuidString:)();

    if (v148(v110, 1, v99) == 1)
    {
      result = _s10WorkoutKit0A5Alert_pSgWOhTm_0(v110, &_s10Foundation4UUIDVSgMd, "(!");
    }

    else
    {
      (v143)(v157, v110, v99);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v109[2] + 1, 1, v109);
      }

      v112 = v109[2];
      v111 = v109[3];
      if (v112 >= v111 >> 1)
      {
        v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v111 > 1), v112 + 1, 1, v109);
      }

      v109[2] = v112 + 1;
      v113 = v109 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v112;
      v99 = v156;
      result = (v143)(v113, v157, v156);
    }

    ++v107;
    v108 += 16;
    if (v106 == v107)
    {
      v102 = v155;
      goto LABEL_53;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WorkoutPlan.validate()()
{
  v1 = v0;
  v36 = type metadata accessor for PacerWorkout(0);
  MEMORY[0x28223BE20](v36);
  v3 = (&v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CustomWorkout(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for SingleGoalWorkout(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for WorkoutPlan.Workout(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = v1;
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v1, v15, type metadata accessor for WorkoutPlan.Workout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of PacerWorkout(v15, v3, type metadata accessor for PacerWorkout);
      v24 = objc_allocWithZone(MEMORY[0x277CCDC38]);
      v25 = [v24 init];
      [v25 setActivityType_];
      [v25 setLocationType_];
      v26 = v38;
      specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(v25);
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v3, type metadata accessor for PacerWorkout);

      if (v26)
      {
        return;
      }
    }

    else
    {
      v31 = v38;
      specialized static SwimBikeRunWorkout.validateActivities(_:)(*v15);

      if (v31)
      {
        return;
      }
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of PacerWorkout(v15, v6, type metadata accessor for CustomWorkout);
    v27 = objc_allocWithZone(MEMORY[0x277CCDC38]);
    v28 = [v27 init];
    v29 = *v6;
    [v28 setActivityType_];
    [v28 setLocationType_];
    [v28 setSwimmingLocationType_];
    v30 = v38;
    specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(v28, v6 + v4[7], *(v6 + v4[8]), v6 + v4[9]);
    v21 = v30;

    v22 = type metadata accessor for CustomWorkout;
    v23 = v6;
  }

  else
  {
    outlined init with take of PacerWorkout(v15, v12, type metadata accessor for SingleGoalWorkout);
    v17 = objc_allocWithZone(MEMORY[0x277CCDC38]);
    v18 = [v17 init];
    [v18 setActivityType_];
    [v18 setLocationType_];
    [v18 setSwimmingLocationType_];
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v12 + *(v10 + 28), v9, type metadata accessor for WorkoutGoal);
    v19 = type metadata accessor for WorkoutGoal(0);
    (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
    v20 = v38;
    specialized static SingleGoalWorkout.validate(configuration:goal:)(v18, v9);
    v21 = v20;

    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v9, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
    v22 = type metadata accessor for SingleGoalWorkout;
    v23 = v12;
  }

  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v23, v22);
  if (!v21)
  {
LABEL_11:
    v32 = (v37 + *(type metadata accessor for WorkoutPlan(0) + 24));
    v33 = *v32;
    if (*v32)
    {
      v35 = v32[1];
      v34 = v32[2];
      outlined copy of WorkoutPlan.Route?(*v32, v35, v34);
      specialized static WorkoutPlan.Route.validate(routePoints:)(v33);
      outlined consume of WorkoutPlan.Route?(v33, v35, v34);
    }
  }
}

uint64_t WorkoutPlan.dataRepresentation(as:)(_BYTE *a1)
{
  v3 = type metadata accessor for JSONEncodingOptions();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  LOBYTE(a1) = *a1;
  WorkoutPlan.validate()();
  if (a1)
  {
    if (!v14)
    {
      v16[1] = v16;
      MEMORY[0x28223BE20](v13);
      v16[-2] = v1;
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);
      static Message.with(_:)();
      JSONEncodingOptions.init()();
      v7 = Message.jsonUTF8Data(options:)();
      (*(v4 + 8))(v6, v3);
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v9, type metadata accessor for Apple_Workout_WorkoutPlan);
    }
  }

  else if (!v14)
  {
    MEMORY[0x28223BE20](v13);
    v16[-2] = v1;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);
    static Message.with(_:)();
    v7 = Message.serializedData(partial:)();
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v12, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  return v7;
}

uint64_t WorkoutPlan.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutPlan(0) + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutPlan.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutPlan(0) + 20);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WorkoutPlan.route.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WorkoutPlan(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return outlined copy of WorkoutPlan.Route?(v4, v5, v6);
}

__n128 WorkoutPlan.route.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for WorkoutPlan(0) + 24);
  outlined consume of WorkoutPlan.Route?(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t WorkoutPlan.alternativeUUIDs.getter()
{
  type metadata accessor for WorkoutPlan(0);
}

uint64_t WorkoutPlan.alternativeUUIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WorkoutPlan(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t WorkoutPlan.Workout.activity.getter()
{
  v1 = type metadata accessor for PacerWorkout(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CustomWorkout(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for SingleGoalWorkout(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for WorkoutPlan.Workout(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v0, v12, type metadata accessor for WorkoutPlan.Workout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of PacerWorkout(v12, v3, type metadata accessor for PacerWorkout);
      v14 = *v3;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v3, type metadata accessor for PacerWorkout);
    }

    else
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v12, type metadata accessor for WorkoutPlan.Workout);
      return 82;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    outlined init with take of PacerWorkout(v12, v6, type metadata accessor for CustomWorkout);
    v14 = *v6;
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v6, type metadata accessor for CustomWorkout);
  }

  else
  {
    outlined init with take of PacerWorkout(v12, v9, type metadata accessor for SingleGoalWorkout);
    v14 = *v9;
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v9, type metadata accessor for SingleGoalWorkout);
  }

  return v14;
}

uint64_t WorkoutPlan.Workout.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for PacerWorkout(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for WorkoutStep(0);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v41 = type metadata accessor for CustomWorkout(0);
  MEMORY[0x28223BE20](v41);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for SingleGoalWorkout(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for WorkoutPlan.Workout(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v1, v22, type metadata accessor for WorkoutPlan.Workout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      outlined init with take of PacerWorkout(v22, v16, type metadata accessor for CustomWorkout);
      MEMORY[0x23EEA0D50](1);
      MEMORY[0x23EEA0D50](*v16);
      MEMORY[0x23EEA0D50](v16[1]);
      if (v16[3])
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v29 = v39;
      v28 = v40;
      v30 = v38;
      v31 = v36;
      v32 = v41;
      _s10Foundation4UUIDVSgWOcTm_0(v16 + *(v41 + 28), v14, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      v33 = *(v30 + 48);
      if (v33(v14, 1, v29) == 1)
      {
        Hasher._combine(_:)(0);
        v34 = v37;
      }

      else
      {
        outlined init with take of PacerWorkout(v14, v31, type metadata accessor for WorkoutStep);
        Hasher._combine(_:)(1u);
        WorkoutGoal.hash(into:)(a1);
        _s10Foundation4UUIDVSgWOcTm_0(v31 + *(v29 + 20), &v42, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        if (v43)
        {
          outlined init with take of WorkoutAlert(&v42, v44);
          __swift_project_boxed_opaque_existential_1(v44, v45);
          v32 = v41;
          dispatch thunk of Hashable.hash(into:)();
          __swift_destroy_boxed_opaque_existential_1(v44);
        }

        else
        {
          _s10WorkoutKit0A5Alert_pSgWOhTm_0(&v42, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        }

        v34 = v37;
        if (*(v31 + *(v29 + 24) + 8))
        {
          String.hash(into:)();
        }

        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v31, type metadata accessor for WorkoutStep);
      }

      specialized Array<A>.hash(into:)(a1, *(v16 + *(v32 + 32)));
      _s10Foundation4UUIDVSgWOcTm_0(v16 + *(v32 + 36), v34, &_s10WorkoutKit0A4StepVSgMd, &_s10WorkoutKit0A4StepVSgMR);
      if (v33(v34, 1, v29) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        outlined init with take of PacerWorkout(v34, v28, type metadata accessor for WorkoutStep);
        Hasher._combine(_:)(1u);
        WorkoutGoal.hash(into:)(a1);
        _s10Foundation4UUIDVSgWOcTm_0(v28 + *(v29 + 20), &v42, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        if (v43)
        {
          outlined init with take of WorkoutAlert(&v42, v44);
          __swift_project_boxed_opaque_existential_1(v44, v45);
          dispatch thunk of Hashable.hash(into:)();
          __swift_destroy_boxed_opaque_existential_1(v44);
        }

        else
        {
          _s10WorkoutKit0A5Alert_pSgWOhTm_0(&v42, &_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
        }

        if (*(v28 + *(v29 + 24) + 8))
        {
          String.hash(into:)();
        }

        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v28, type metadata accessor for WorkoutStep);
      }

      v24 = type metadata accessor for CustomWorkout;
      v25 = v16;
    }

    else
    {
      outlined init with take of PacerWorkout(v22, v19, type metadata accessor for SingleGoalWorkout);
      MEMORY[0x23EEA0D50](0);
      MEMORY[0x23EEA0D50](*v19);
      MEMORY[0x23EEA0D50](v19[1]);
      MEMORY[0x23EEA0D50](v19[2]);
      WorkoutGoal.hash(into:)(a1);
      v24 = type metadata accessor for SingleGoalWorkout;
      v25 = v19;
    }

    return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v25, v24);
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with take of PacerWorkout(v22, v5, type metadata accessor for PacerWorkout);
    MEMORY[0x23EEA0D50](2);
    MEMORY[0x23EEA0D50](*v5);
    MEMORY[0x23EEA0D50](v5[1]);
    WorkoutGoal.hash(into:)(a1);
    WorkoutGoal.hash(into:)(a1);
    v24 = type metadata accessor for PacerWorkout;
    v25 = v5;
    return _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v25, v24);
  }

  v26 = *v22;
  v27 = v22[2];
  MEMORY[0x23EEA0D50](3);
  specialized Array<A>.hash(into:)(a1, v26);
  if (v27)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t WorkoutPlan.Route.points.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t WorkoutPlan.Route.snapshot.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data?(v1, *(v0 + 16));
  return v1;
}

uint64_t WorkoutPlan.Route.snapshot.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t WorkoutPlan.Route.init(points:snapshot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = outlined consume of Data?(0, 0xF000000000000000);
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t WorkoutPlan.Route.routeLength.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v10;
    v4 = (v1 + 32);
    v5 = *(v10 + 16);
    do
    {
      v6 = *v4;
      v7 = *(v10 + 24);
      if (v5 >= v7 >> 1)
      {
        v9 = *v4;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v5 + 1, 1);
        v6 = v9;
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 16 * v5 + 32) = v6;
      v4 += 2;
      ++v5;
      --v2;
    }

    while (v2);
  }

  Array<A>.calculateLocationDistance()(v3);
}

uint64_t WorkoutPlan.Route.init(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = v15 - v12;
  v17 = a1;
  v18 = a2;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute, &protocol conformance descriptor for Apple_Workout_WorkoutRoute);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v3)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v13, v10, type metadata accessor for Apple_Workout_WorkoutRoute);
  WorkoutPlan.Route.init(from:)(v10, v15);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v13, type metadata accessor for Apple_Workout_WorkoutRoute);
  result = outlined consume of Data._Representation(a1, a2);
  *a3 = *&v15[0];
  *(a3 + 8) = *(v15 + 8);
  return result;
}

void WorkoutPlan.Route.init(from:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - v7;
  v48 = type metadata accessor for Apple_Workout_LocationCoordinate2D(0);
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v12 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v50 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v47 = &v39 - v15;
  v16 = *a1;
  v17 = *(*a1 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v40 = v2;
    v41 = a2;
    v42 = a1;
    v43 = v17;
    v51 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v19 = 0;
    v18 = v51;
    v20 = *(v12 + 80);
    v45 = v12;
    v46 = v16 + ((v20 + 32) & ~v20);
    v21 = (v9 + 48);
    v44 = v16;
    while (v19 < *(v16 + 16))
    {
      v22 = v47;
      _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v46 + *(v12 + 72) * v19, v47, type metadata accessor for Apple_Workout_RoutePoint);
      v23 = v50;
      _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v22, v50, type metadata accessor for Apple_Workout_RoutePoint);
      _s10Foundation4UUIDVSgWOcTm_0(v23 + *(v49 + 20), v8, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
      v24 = *v21;
      v25 = v48;
      if ((*v21)(v8, 1, v48) == 1)
      {
        *v11 = 0.0;
        v11[1] = 0.0;
        UnknownStorage.init()();
        if (v24(v8, 1, v25) != 1)
        {
          _s10WorkoutKit0A5Alert_pSgWOhTm_0(v8, &_s10WorkoutKit06Apple_A21_LocationCoordinate2DVSgMd, "4?");
        }
      }

      else
      {
        outlined init with take of PacerWorkout(v8, v11, type metadata accessor for Apple_Workout_LocationCoordinate2D);
      }

      v27 = *v11;
      v26 = v11[1];
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v11, type metadata accessor for Apple_Workout_LocationCoordinate2D);
      v52.latitude = v27;
      v52.longitude = v26;
      if (!CLLocationCoordinate2DIsValid(v52))
      {
        lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
        swift_allocError();
        *v35 = v27;
        *(v35 + 8) = v26;
        *(v35 + 16) = 0;
        swift_willThrow();
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v50, type metadata accessor for Apple_Workout_RoutePoint);
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v22, type metadata accessor for Apple_Workout_RoutePoint);

        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v42, type metadata accessor for Apple_Workout_WorkoutRoute);
        return;
      }

      v28 = v8;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v22, type metadata accessor for Apple_Workout_RoutePoint);
      v29 = (v50 + *(v49 + 24));
      v30 = *v29;
      v31 = *(v29 + 8);
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v50, type metadata accessor for Apple_Workout_RoutePoint);
      v51 = v18;
      v33 = *(v18 + 16);
      v32 = *(v18 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v18 = v51;
      }

      ++v19;
      *(v18 + 16) = v33 + 1;
      v34 = v18 + 32 * v33;
      *(v34 + 32) = v27;
      *(v34 + 40) = v26;
      *(v34 + 48) = v30;
      *(v34 + 56) = v31;
      v16 = v44;
      v8 = v28;
      v12 = v45;
      if (v43 == v19)
      {
        a2 = v41;
        a1 = v42;
        v3 = v40;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    specialized static WorkoutPlan.Route.validate(routePoints:)(v18);
    if (v3)
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(a1, type metadata accessor for Apple_Workout_WorkoutRoute);
    }

    else
    {
      v36 = (a1 + *(type metadata accessor for Apple_Workout_WorkoutRoute(0) + 24));
      v38 = *v36;
      v37 = v36[1];
      if (v37 >> 60 != 15)
      {
        outlined copy of Data?(v38, v37);
      }

      outlined consume of Data?(0, 0xF000000000000000);
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(a1, type metadata accessor for Apple_Workout_WorkoutRoute);
      *a2 = v18;
      a2[1] = v38;
      a2[2] = v37;
    }
  }
}

uint64_t WorkoutPlan.Route.dataRepresentation.getter()
{
  v2 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v0;
  v9 = *(v0 + 1);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute, &protocol conformance descriptor for Apple_Workout_WorkoutRoute);
  v5 = v2;
  static Message.with(_:)();
  if (!v1)
  {
    v5 = Message.serializedData(partial:)();
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v4, type metadata accessor for Apple_Workout_WorkoutRoute);
  }

  return v5;
}

uint64_t closure #1 in WorkoutPlan.Route.protoComposition.getter(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v29 = a3;
  v7 = type metadata accessor for Apple_Workout_RoutePoint(0);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v27 = a1;
    v28 = a4;
    v32 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v32;
    v12 = (a2 + 56);
    while (1)
    {
      v14 = *(v12 - 3);
      v13 = *(v12 - 2);
      v15 = *(v12 - 1);
      v16 = *v12;
      v33.latitude = v14;
      v33.longitude = v13;
      v17 = CLLocationCoordinate2DIsValid(v33);
      if (!v17)
      {
        break;
      }

      MEMORY[0x28223BE20](v17);
      *(&v26 - 4) = v14;
      *(&v26 - 3) = v13;
      *(&v26 - 2) = v15;
      *(&v26 - 8) = v16;
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_RoutePoint and conformance Apple_Workout_RoutePoint, type metadata accessor for Apple_Workout_RoutePoint, &protocol conformance descriptor for Apple_Workout_RoutePoint);
      static Message.with(_:)();
      v32 = v11;
      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
        v11 = v32;
      }

      *(v11 + 16) = v19 + 1;
      outlined init with take of PacerWorkout(v9, v11 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v19, type metadata accessor for Apple_Workout_RoutePoint);
      v12 += 4;
      if (!--v10)
      {
        a1 = v27;
        a4 = v28;
        goto LABEL_9;
      }
    }

    lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
    swift_allocError();
    *v20 = v14;
    *(v20 + 8) = v13;
    *(v20 + 16) = 0;
    swift_willThrow();
  }

  else
  {
LABEL_9:

    *a1 = v11;
    if (a4 >> 60 != 15)
    {
      v22 = (a1 + *(type metadata accessor for Apple_Workout_WorkoutRoute(0) + 24));
      v23 = *v22;
      v24 = v22[1];
      v25 = v29;
      outlined copy of Data._Representation(v29, a4);
      result = outlined consume of Data?(v23, v24);
      *v22 = v25;
      v22[1] = a4;
    }
  }

  return result;
}

void WorkoutPlan.Route.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int WorkoutPlan.Route.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutPlan.Route()
{
  v1 = *v0;
  v2 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v1);
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance WorkoutPlan.Route(uint64_t a1)
{
  v2 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutPlan.Route(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t WorkoutPlan.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v29 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v30 = &v24 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v12;
  v13 = type metadata accessor for WorkoutPlan.Workout(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(a1, v15, type metadata accessor for WorkoutPlan.Workout);
  v25 = v10[2];
  v25(v12, a2, v9);
  v16 = v10[7];
  v16(v8, 1, 1, v9);
  v17 = type metadata accessor for WorkoutPlan(0);
  v18 = a3;
  v19 = a3 + v17[6];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  v28 = v17[7];
  v16((v18 + v28), 1, 1, v9);
  v20 = v17[8];
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v15, v18, type metadata accessor for WorkoutPlan.Workout);
  v21 = v26;
  v25((v18 + v17[5]), v26, v9);
  v31[3] = &type metadata for WorkoutKitFeatures;
  v31[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
  LOBYTE(v31[0]) = 1;
  isFeatureEnabled(_:)();
  v22 = v10[1];
  v22(v27, v9);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v29, type metadata accessor for WorkoutPlan.Workout);
  v22(v21, v9);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v15, type metadata accessor for WorkoutPlan.Workout);
  __swift_destroy_boxed_opaque_existential_1(v31);
  outlined consume of WorkoutPlan.Route?(*v19, *(v19 + 8), *(v19 + 16));
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  result = outlined assign with take of UUID?(v30, v18 + v28, &_s10Foundation4UUIDVSgMd, "(!");
  *(v18 + v20) = 0;
  return result;
}

uint64_t WorkoutPlan.init(_:id:route:referenceUUID:alternativeUUIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a3[1];
  v21 = *a3;
  v9 = a3[2];
  v10 = type metadata accessor for WorkoutPlan(0);
  v11 = a6 + v10[6];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = v10[7];
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  (*(v14 + 56))(a6 + v12, 1, 1, v13);
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(a1, a6, type metadata accessor for WorkoutPlan.Workout);
  (*(v14 + 16))(a6 + v10[5], a2, v13);
  v24[3] = &type metadata for WorkoutKitFeatures;
  v24[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
  LOBYTE(v24[0]) = 1;
  v15 = isFeatureEnabled(_:)();
  (*(v14 + 8))(a2, v13);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(a1, type metadata accessor for WorkoutPlan.Workout);
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (v15)
  {
    v17 = v20;
    v16 = v21;
  }

  else
  {
    outlined consume of WorkoutPlan.Route?(v21, v20, v9);
    v16 = 0;
    v17 = 0;
    v9 = 0;
  }

  outlined consume of WorkoutPlan.Route?(*v11, *(v11 + 8), *(v11 + 16));
  *v11 = v16;
  *(v11 + 8) = v17;
  *(v11 + 16) = v9;
  v18 = v10[8];
  result = outlined assign with take of UUID?(a4, a6 + v12, &_s10Foundation4UUIDVSgMd, "(!");
  *(a6 + v18) = a5;
  return result;
}

uint64_t static WorkoutPlan.protoComposition(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = type metadata accessor for JSONDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v34 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v34 - v19;
  v21 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v42 = *(v21 - 8);
  v23 = v42 + 56;
  v22 = *(v42 + 56);
  v22(v20, 1, 1, v21);
  v47 = a1;
  v48 = a2;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v39 = a1;
  v40 = a2;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  v36 = lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);
  v24 = v49;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v34 = v23;
  v35 = v22;
  if (v24)
  {
    v25 = v24;
  }

  else
  {
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v20, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    v22(v17, 0, 1, v21);
    outlined init with take of Apple_Workout_WorkoutPlan?(v17, v20);
    v25 = 0;
  }

  v49 = v20;
  _s10Foundation4UUIDVSgWOcTm_0(v20, v14, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  v26 = *(v42 + 48);
  v27 = v26(v14, 1, v21);
  _s10WorkoutKit0A5Alert_pSgWOhTm_0(v14, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  if (v27 == 1)
  {
    outlined copy of Data._Representation(v39, v40);
    JSONDecodingOptions.init()();
    v28 = v37;
    Message.init(jsonUTF8Data:options:)();
    v29 = v49;
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v49, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    v35(v28, 0, 1, v21);
    outlined init with take of Apple_Workout_WorkoutPlan?(v28, v29);
  }

  else
  {
    v29 = v49;
  }

  v30 = v25;
  v31 = v43;
  _s10Foundation4UUIDVSgWOcTm_0(v29, v43, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  if (v26(v31, 1, v21) == 1)
  {
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v31, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    if (!v30)
    {
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v33 = 2;
    }

    swift_willThrow();
    return _s10WorkoutKit0A5Alert_pSgWOhTm_0(v29, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  }

  else
  {
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v29, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);

    return outlined init with take of PacerWorkout(v31, v41, type metadata accessor for Apple_Workout_WorkoutPlan);
  }
}

uint64_t WorkoutPlan.dataRepresentation.getter()
{
  v1 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  MEMORY[0x28223BE20](v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutPlan.validate()();
  if (!v5)
  {
    MEMORY[0x28223BE20](v4);
    v7[-2] = v0;
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);
    static Message.with(_:)();
    v0 = Message.serializedData(partial:)();
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v3, type metadata accessor for Apple_Workout_WorkoutPlan);
  }

  return v0;
}

WorkoutKit::WorkoutPlan::SerializationFormat_optional __swiftcall WorkoutPlan.SerializationFormat.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t WorkoutPlan.SerializationFormat.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutPlan.SerializationFormat()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutPlan.SerializationFormat()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x23EEA0D50](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutPlan.SerializationFormat(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x23EEA0D50](v3);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutPlan.SerializationFormat@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutPlan.SerializationFormat(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

void WorkoutPlan.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v24 = v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  WorkoutPlan.Workout.hash(into:)(a1);
  v12 = type metadata accessor for WorkoutPlan(0);
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  v13 = (v1 + v12[6]);
  v14 = *v13;
  if (*v13)
  {
    v23 = v6;
    v15 = v13[2];
    v22[1] = v13[1];
    Hasher._combine(_:)(1u);
    specialized Array<A>.hash(into:)(a1, v14);
    if (v15 >> 60 == 15)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Data.hash(into:)();
    }

    v6 = v23;
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  _s10Foundation4UUIDVSgWOcTm_0(v1 + v12[7], v11, &_s10Foundation4UUIDVSgMd, "(!");
  if ((*(v4 + 48))(v11, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v16 = v24;
    (*(v4 + 32))(v24, v11, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v16, v3);
  }

  v17 = *(v1 + v12[8]);
  if (v17)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x23EEA0D50](*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = *(v4 + 16);
      v20 = v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v21 = *(v4 + 72);
      do
      {
        v19(v6, v20, v3);
        dispatch thunk of Hashable.hash(into:)();
        (*(v4 + 8))(v6, v3);
        v20 += v21;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int WorkoutPlan.Workout.hashValue.getter(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutPlan.Workout(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutPlan.Workout(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutPlan@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void closure #1 in WorkoutPlan.protoComposition.getter(uint64_t *a1, uint64_t a2)
{
  v111 = type metadata accessor for UUID();
  v100 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  MEMORY[0x28223BE20](v5 - 8);
  v99 = &v94 - v6;
  v105 = type metadata accessor for Apple_Workout_WorkoutRoute(0);
  v94 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v108 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for PacerWorkout(0);
  MEMORY[0x28223BE20](v103);
  v104 = (&v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = type metadata accessor for CustomWorkout(0);
  MEMORY[0x28223BE20](v101);
  v10 = (&v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v102 = &v94 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v95 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v96 = &v94 - v16;
  MEMORY[0x28223BE20](v17);
  v97 = &v94 - v18;
  MEMORY[0x28223BE20](v19);
  v98 = &v94 - v20;
  v21 = type metadata accessor for SingleGoalWorkout(0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for WorkoutPlan.Workout(0);
  MEMORY[0x28223BE20](v24);
  v26 = (&v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v28 = a1 + v27[7];
  *v28 = 1;
  v28[8] = 1;
  *(a1 + v27[8]) = 0;
  v106 = v27;
  *(a1 + v27[9]) = 5;
  v107 = type metadata accessor for WorkoutPlan(0);
  v29 = UUID.uuidString.getter();
  v31 = v30;

  *a1 = v29;
  a1[1] = v31;
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(a2, v26, type metadata accessor for WorkoutPlan.Workout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = v104;
      outlined init with take of PacerWorkout(v26, v104, type metadata accessor for PacerWorkout);
      v40 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
      [v40 setActivityType_];
      [v40 setLocationType_];
      v41 = v109;
      specialized static PacerWorkout.validate(configuration:distanceGoal:timeGoal:)(v40);

      v42 = v108;
      if (v41)
      {
        v43 = type metadata accessor for PacerWorkout;
        goto LABEL_10;
      }

      v55 = type metadata accessor for Apple_Workout_PacerWorkoutComposition(0);
      MEMORY[0x28223BE20](v55);
      *(&v94 - 2) = v10;
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_PacerWorkoutComposition and conformance Apple_Workout_PacerWorkoutComposition, type metadata accessor for Apple_Workout_PacerWorkoutComposition, &protocol conformance descriptor for Apple_Workout_PacerWorkoutComposition);
      v56 = v96;
      static Message.with(_:)();
      v103 = 0;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v10, type metadata accessor for PacerWorkout);
      v57 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
      v54 = v56;
    }

    else
    {
      v47 = *v26;
      v48 = v26[1];
      v49 = v26[2];
      v50 = v109;
      specialized static SwimBikeRunWorkout.validateActivities(_:)(*v26);
      v42 = v108;
      if (v50)
      {

        return;
      }

      v61 = type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition(0);
      v109 = &v94;
      MEMORY[0x28223BE20](v61);
      *(&v94 - 4) = v47;
      *(&v94 - 3) = v48;
      *(&v94 - 2) = v49;
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_SwimBikeRunWorkoutComposition and conformance Apple_Workout_SwimBikeRunWorkoutComposition, type metadata accessor for Apple_Workout_SwimBikeRunWorkoutComposition, &protocol conformance descriptor for Apple_Workout_SwimBikeRunWorkoutComposition);
      v62 = v95;
      static Message.with(_:)();
      v103 = 0;

      v63 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
      v54 = v62;
    }

    v37 = v105;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload)
  {
    outlined init with take of PacerWorkout(v26, v10, type metadata accessor for CustomWorkout);
    v44 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
    v45 = *v10;
    [v44 setActivityType_];
    [v44 setLocationType_];
    [v44 setSwimmingLocationType_];
    v46 = v109;
    specialized static CustomWorkout.validate(configuration:warmup:blocks:cooldown:)(v44, v10 + v101[7], *(v10 + v101[8]), v10 + v101[9]);

    v37 = v105;
    v42 = v108;
    if (!v46)
    {
      v58 = type metadata accessor for Apple_Workout_CustomWorkoutComposition(0);
      v104 = a1;
      MEMORY[0x28223BE20](v58);
      *(&v94 - 2) = v10;
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_CustomWorkoutComposition and conformance Apple_Workout_CustomWorkoutComposition, type metadata accessor for Apple_Workout_CustomWorkoutComposition, &protocol conformance descriptor for Apple_Workout_CustomWorkoutComposition);
      v59 = v97;
      static Message.with(_:)();
      v103 = 0;
      a1 = v104;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v10, type metadata accessor for CustomWorkout);
      v60 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
      v54 = v59;
      goto LABEL_19;
    }

    v43 = type metadata accessor for CustomWorkout;
LABEL_10:
    v38 = v43;
    v39 = v10;
    goto LABEL_11;
  }

  outlined init with take of PacerWorkout(v26, v23, type metadata accessor for SingleGoalWorkout);
  v33 = [objc_allocWithZone(MEMORY[0x277CCDC38]) init];
  [v33 setActivityType_];
  [v33 setLocationType_];
  [v33 setSwimmingLocationType_];
  v34 = v102;
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v23 + *(v21 + 28), v102, type metadata accessor for WorkoutGoal);
  v35 = type metadata accessor for WorkoutGoal(0);
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  v36 = v109;
  specialized static SingleGoalWorkout.validate(configuration:goal:)(v33, v34);
  _s10WorkoutKit0A5Alert_pSgWOhTm_0(v34, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);

  v37 = v105;
  if (v36)
  {
    v38 = type metadata accessor for SingleGoalWorkout;
    v39 = v23;
LABEL_11:
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v39, v38);
    return;
  }

  v51 = type metadata accessor for Apple_Workout_GoalWorkoutComposition(0);
  MEMORY[0x28223BE20](v51);
  *(&v94 - 2) = v23;
  lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_GoalWorkoutComposition and conformance Apple_Workout_GoalWorkoutComposition, type metadata accessor for Apple_Workout_GoalWorkoutComposition, &protocol conformance descriptor for Apple_Workout_GoalWorkoutComposition);
  v52 = v98;
  static Message.with(_:)();
  v103 = 0;
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v23, type metadata accessor for SingleGoalWorkout);
  v53 = type metadata accessor for Apple_Workout_WorkoutPlan.OneOf_Content(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  v54 = v52;
  v42 = v108;
LABEL_19:
  v64 = outlined assign with take of UUID?(v54, a1 + v106[5], &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMd, &_s10WorkoutKit06Apple_a1_A4PlanV13OneOf_ContentOSgMR);
  v65 = (a2 + *(v107 + 24));
  v66 = *v65;
  if (*v65)
  {
    v68 = v65[1];
    v67 = v65[2];
    MEMORY[0x28223BE20](v64);
    *(&v94 - 4) = v66;
    *(&v94 - 3) = v68;
    *(&v94 - 2) = v67;

    outlined copy of Data?(v68, v67);
    lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutRoute and conformance Apple_Workout_WorkoutRoute, type metadata accessor for Apple_Workout_WorkoutRoute, &protocol conformance descriptor for Apple_Workout_WorkoutRoute);
    v69 = v103;
    static Message.with(_:)();
    outlined consume of WorkoutPlan.Route?(v66, v68, v67);
    if (v69)
    {
      return;
    }

    v103 = 0;
    v70 = v106[11];
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(a1 + v70, &_s10WorkoutKit06Apple_a1_A5RouteVSgMd, &_s10WorkoutKit06Apple_a1_A5RouteVSgMR);
    outlined init with take of PacerWorkout(v42, a1 + v70, type metadata accessor for Apple_Workout_WorkoutRoute);
    (*(v94 + 56))(a1 + v70, 0, 1, v37);
  }

  v71 = v99;
  _s10Foundation4UUIDVSgWOcTm_0(a2 + *(v107 + 28), v99, &_s10Foundation4UUIDVSgMd, "(!");
  v72 = v100;
  v73 = v111;
  if ((*(v100 + 48))(v71, 1, v111) == 1)
  {
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v71, &_s10Foundation4UUIDVSgMd, "(!");
  }

  else
  {
    v74 = UUID.uuidString.getter();
    v76 = v75;
    (*(v72 + 8))(v71, v73);
    v77 = (a1 + v106[12]);

    *v77 = v74;
    v77[1] = v76;
  }

  v78 = *(a2 + *(v107 + 32));
  if (v78)
  {
    v79 = *(v78 + 16);
    v80 = MEMORY[0x277D84F90];
    if (v79)
    {
      v104 = a1;
      v112 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v79, 0);
      v80 = v112;
      v82 = *(v72 + 16);
      v81 = v72 + 16;
      v83 = v78 + ((*(v81 + 64) + 32) & ~*(v81 + 64));
      v108 = *(v81 + 56);
      v109 = v82;
      v107 = v81 - 8;
      do
      {
        v84 = v110;
        v85 = v111;
        v86 = v81;
        (v109)(v110, v83, v111);
        v87 = UUID.uuidString.getter();
        v89 = v88;
        (*v107)(v84, v85);
        v112 = v80;
        v91 = *(v80 + 16);
        v90 = *(v80 + 24);
        if (v91 >= v90 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), v91 + 1, 1);
          v80 = v112;
        }

        *(v80 + 16) = v91 + 1;
        v92 = v80 + 16 * v91;
        *(v92 + 32) = v87;
        *(v92 + 40) = v89;
        v83 += v108;
        --v79;
        v81 = v86;
      }

      while (v79);
      a1 = v104;
    }

    v93 = v106[6];

    *(a1 + v93) = v80;
  }
}

uint64_t specialized static WorkoutPlan.Route.validate(routePoints:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1 < 2)
  {
    lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 16) = 1;
    return swift_willThrow();
  }

  else
  {
    v2 = (result + 40);
    v3 = v1 + 1;
    while (--v3)
    {
      v4 = v2 + 4;
      v6 = *(v2 - 1);
      v5 = *v2;
      v9.latitude = v6;
      v9.longitude = *v2;
      result = CLLocationCoordinate2DIsValid(v9);
      v2 = v4;
      if ((result & 1) == 0)
      {
        lazy protocol witness table accessor for type RouteValidationError and conformance RouteValidationError();
        swift_allocError();
        *v7 = v6;
        *(v7 + 8) = v5;
        *(v7 + 16) = 0;
        return swift_willThrow();
      }
    }
  }

  return result;
}

BOOL specialized static WorkoutPlan.Route.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit10RoutePointV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 == 15)
  {
    if (v5 >> 60 == 15)
    {
      outlined copy of Data?(v2, v3);
      outlined copy of Data?(v4, v5);
      outlined consume of Data?(v2, v3);
      return 1;
    }

    goto LABEL_6;
  }

  if (v5 >> 60 == 15)
  {
LABEL_6:
    outlined copy of Data?(v2, v3);
    outlined copy of Data?(v4, v5);
    outlined consume of Data?(v2, v3);
    outlined consume of Data?(v4, v5);
    return 0;
  }

  outlined copy of Data?(v2, v3);
  outlined copy of Data?(v4, v5);
  v7 = specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
  outlined consume of Data?(v4, v5);
  outlined consume of Data?(v2, v3);
  return v7;
}

uint64_t specialized static WorkoutPlan.Workout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v43 = type metadata accessor for PacerWorkout(0);
  MEMORY[0x28223BE20](v43);
  v45 = (&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for CustomWorkout(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for SingleGoalWorkout(0);
  MEMORY[0x28223BE20](v42);
  v44 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for WorkoutPlan.Workout(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = (&v41 - v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = (&v41 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV0A0O_AEtMd, &_s10WorkoutKit0A4PlanV0A0O_AEtMR);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v41 - v21;
  v24 = (&v41 + *(v23 + 56) - v21);
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(a1, &v41 - v21, type metadata accessor for WorkoutPlan.Workout);
  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v46, v24, type metadata accessor for WorkoutPlan.Workout);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v22, v13, type metadata accessor for WorkoutPlan.Workout);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v13, type metadata accessor for PacerWorkout);
        goto LABEL_27;
      }

      v26 = v45;
      outlined init with take of PacerWorkout(v24, v45, type metadata accessor for PacerWorkout);
      if (*v13 == *v26 && v13[1] == v26[1] && (specialized static WorkoutGoal.== infix(_:_:)((v13 + *(v43 + 24)), v26 + *(v43 + 24)) & 1) != 0 && (specialized static WorkoutGoal.== infix(_:_:)((v13 + *(v43 + 28)), v26 + *(v43 + 28)) & 1) != 0)
      {
        v27 = type metadata accessor for PacerWorkout;
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v26, type metadata accessor for PacerWorkout);
        v28 = v13;
LABEL_34:
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v28, v27);
LABEL_47:
        _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v22, type metadata accessor for WorkoutPlan.Workout);
        v29 = 1;
        return v29 & 1;
      }

      v37 = type metadata accessor for PacerWorkout;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v26, type metadata accessor for PacerWorkout);
      v38 = v13;
      goto LABEL_36;
    }

    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v22, v10, type metadata accessor for WorkoutPlan.Workout);
    v30 = *v10;
    v31 = v10[1];
    v32 = v10[2];
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_27;
    }

    v33 = v24[1];
    v34 = v24[2];
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ10WorkoutKit011SwimBikeRunB0V8ActivityO_Tt1g5(v30, *v24))
    {
      if (v32)
      {
        if (v34)
        {
          if (v31 != v33 || v32 != v34)
          {
            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v36)
            {
              goto LABEL_47;
            }

LABEL_38:
            _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v22, type metadata accessor for WorkoutPlan.Workout);
            goto LABEL_39;
          }

LABEL_46:

          goto LABEL_47;
        }
      }

      else if (!v34)
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_46;
      }
    }

    goto LABEL_38;
  }

  if (!EnumCaseMultiPayload)
  {
    _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v22, v19, type metadata accessor for WorkoutPlan.Workout);
    if (swift_getEnumCaseMultiPayload())
    {
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v19, type metadata accessor for SingleGoalWorkout);
LABEL_27:
      _s10WorkoutKit0A5Alert_pSgWOhTm_0(v22, &_s10WorkoutKit0A4PlanV0A0O_AEtMd, &_s10WorkoutKit0A4PlanV0A0O_AEtMR);
LABEL_39:
      v29 = 0;
      return v29 & 1;
    }

    v39 = v44;
    outlined init with take of PacerWorkout(v24, v44, type metadata accessor for SingleGoalWorkout);
    if (*v19 == *v39 && v19[1] == v39[1] && v19[2] == v39[2] && (specialized static WorkoutGoal.== infix(_:_:)((v19 + *(v42 + 28)), v39 + *(v42 + 28)) & 1) != 0)
    {
      v27 = type metadata accessor for SingleGoalWorkout;
      _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v39, type metadata accessor for SingleGoalWorkout);
      v28 = v19;
      goto LABEL_34;
    }

    v37 = type metadata accessor for SingleGoalWorkout;
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v39, type metadata accessor for SingleGoalWorkout);
    v38 = v19;
LABEL_36:
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v38, v37);
    goto LABEL_38;
  }

  _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(v22, v16, type metadata accessor for WorkoutPlan.Workout);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v16, type metadata accessor for CustomWorkout);
    goto LABEL_27;
  }

  outlined init with take of PacerWorkout(v24, v6, type metadata accessor for CustomWorkout);
  v29 = static CustomWorkout.== infix(_:_:)();
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v6, type metadata accessor for CustomWorkout);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v16, type metadata accessor for CustomWorkout);
  _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(v22, type metadata accessor for WorkoutPlan.Workout);
  return v29 & 1;
}

BOOL specialized static WorkoutPlan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  if ((specialized static WorkoutPlan.Workout.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for WorkoutPlan(0);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v44 = v7;
  v45 = v4;
  v46 = v14;
  v47 = v5;
  v15 = *(v14 + 24);
  v17 = *(a1 + v15);
  v16 = *(a1 + v15 + 8);
  v18 = *(a1 + v15 + 16);
  v19 = (a2 + v15);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  if (!v17)
  {
    v48 = v16;
    outlined copy of WorkoutPlan.Route?(0, v16, v18);
    if (!v20)
    {
      outlined copy of WorkoutPlan.Route?(0, v21, v22);
      outlined consume of WorkoutPlan.Route?(0, v48, v18);
      goto LABEL_12;
    }

    outlined copy of WorkoutPlan.Route?(v20, v21, v22);
    v27 = v48;
LABEL_10:
    outlined consume of WorkoutPlan.Route?(v17, v27, v18);
    outlined consume of WorkoutPlan.Route?(v20, v21, v22);
    return 0;
  }

  v52 = v17;
  v53 = v16;
  v54 = v18;
  if (!v20)
  {
    v27 = v16;
    outlined copy of WorkoutPlan.Route?(v17, v16, v18);
    outlined copy of WorkoutPlan.Route?(0, v21, v22);
    outlined copy of WorkoutPlan.Route?(v17, v27, v18);

    outlined consume of Data?(v27, v18);
    goto LABEL_10;
  }

  v49 = v20;
  v50 = v21;
  v51 = v22;
  v48 = v16;
  outlined copy of WorkoutPlan.Route?(v17, v16, v18);
  outlined copy of WorkoutPlan.Route?(v20, v21, v22);
  v23 = v48;
  outlined copy of WorkoutPlan.Route?(v17, v48, v18);
  v24 = specialized static WorkoutPlan.Route.== infix(_:_:)(&v52, &v49);
  v25 = v50;
  v43 = v51;

  outlined consume of Data?(v25, v43);
  v26 = v53;
  v43 = v54;

  outlined consume of Data?(v26, v43);
  outlined consume of WorkoutPlan.Route?(v17, v23, v18);
  if (!v24)
  {
    return 0;
  }

LABEL_12:
  v28 = v46;
  v29 = *(v46 + 28);
  v30 = *(v11 + 48);
  _s10Foundation4UUIDVSgWOcTm_0(a1 + v29, v13, &_s10Foundation4UUIDVSgMd, "(!");
  _s10Foundation4UUIDVSgWOcTm_0(a2 + v29, &v13[v30], &_s10Foundation4UUIDVSgMd, "(!");
  v31 = v47;
  v32 = *(v47 + 48);
  v33 = v45;
  if (v32(v13, 1, v45) != 1)
  {
    _s10Foundation4UUIDVSgWOcTm_0(v13, v10, &_s10Foundation4UUIDVSgMd, "(!");
    if (v32(&v13[v30], 1, v33) != 1)
    {
      v35 = &v13[v30];
      v36 = v44;
      (*(v31 + 32))(v44, v35, v33);
      lazy protocol witness table accessor for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v37 = dispatch thunk of static Equatable.== infix(_:_:)();
      v38 = *(v31 + 8);
      v38(v36, v33);
      v38(v10, v33);
      _s10WorkoutKit0A5Alert_pSgWOhTm_0(v13, &_s10Foundation4UUIDVSgMd, "(!");
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_21;
    }

    (*(v31 + 8))(v10, v33);
LABEL_17:
    _s10WorkoutKit0A5Alert_pSgWOhTm_0(v13, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  if (v32(&v13[v30], 1, v33) != 1)
  {
    goto LABEL_17;
  }

  _s10WorkoutKit0A5Alert_pSgWOhTm_0(v13, &_s10Foundation4UUIDVSgMd, "(!");
LABEL_21:
  v39 = *(v28 + 32);
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  if (v40)
  {
    if (!v41)
    {
      return 0;
    }

    v42 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation4UUIDV_Tt1g5(v40, v41);

    return (v42 & 1) != 0;
  }

  return !v41;
}

uint64_t _s10WorkoutKit06Apple_a1_A4PlanVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of WorkoutPlan.Workout(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlan.Workout(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s10WorkoutKit06Apple_a1_A4PlanVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of PacerWorkout(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type WorkoutPlan.Route and conformance WorkoutPlan.Route()
{
  result = lazy protocol witness table cache variable for type WorkoutPlan.Route and conformance WorkoutPlan.Route;
  if (!lazy protocol witness table cache variable for type WorkoutPlan.Route and conformance WorkoutPlan.Route)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPlan.Route and conformance WorkoutPlan.Route);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutPlan.SerializationFormat and conformance WorkoutPlan.SerializationFormat()
{
  result = lazy protocol witness table cache variable for type WorkoutPlan.SerializationFormat and conformance WorkoutPlan.SerializationFormat;
  if (!lazy protocol witness table cache variable for type WorkoutPlan.SerializationFormat and conformance WorkoutPlan.SerializationFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutPlan.SerializationFormat and conformance WorkoutPlan.SerializationFormat);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for WorkoutPlan.Route(uint64_t *a1, int a2)
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

uint64_t getEnumTagSinglePayload for WorkoutPlan.SerializationFormat(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutPlan.SerializationFormat(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10WorkoutKit0A5Alert_pSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_WorkoutPlan?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = MEMORY[0x28211C320](_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t dispatch thunk of Decoder.decodeSingularDoubleField(value:)()
{
  return MEMORY[0x28217E320]();
}

{
  return MEMORY[0x28217E328]();
}

uint64_t dispatch thunk of Decoder.decodeSingularStringField(value:)()
{
  return MEMORY[0x28217E338]();
}

{
  return MEMORY[0x28217E340]();
}

uint64_t dispatch thunk of Decoder.decodeSingularUInt32Field(value:)()
{
  return MEMORY[0x28217E348]();
}

{
  return MEMORY[0x28217E350]();
}