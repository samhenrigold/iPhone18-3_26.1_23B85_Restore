void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for ScheduledWorkoutPlan(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_59;
          }

          v36 = v22;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          outlined init with copy of ScheduledWorkoutPlan(v29, v42, type metadata accessor for ScheduledWorkoutPlan);
          v31 = v43;
          outlined init with copy of ScheduledWorkoutPlan(v26, v43, type metadata accessor for ScheduledWorkoutPlan);
          v32 = static Date.< infix(_:_:)();
          outlined destroy of ScheduledWorkoutPlan(v31, type metadata accessor for ScheduledWorkoutPlan);
          outlined destroy of ScheduledWorkoutPlan(v30, type metadata accessor for ScheduledWorkoutPlan);
          if (v32)
          {
            break;
          }

          v22 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v33 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_58;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          v33 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_58:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = a3;
        v19 = v42;
        outlined init with copy of ScheduledWorkoutPlan(a2, v42, type metadata accessor for ScheduledWorkoutPlan);
        v20 = v43;
        outlined init with copy of ScheduledWorkoutPlan(a4, v43, type metadata accessor for ScheduledWorkoutPlan);
        v21 = static Date.< infix(_:_:)();
        outlined destroy of ScheduledWorkoutPlan(v20, type metadata accessor for ScheduledWorkoutPlan);
        outlined destroy of ScheduledWorkoutPlan(v19, type metadata accessor for ScheduledWorkoutPlan);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v47, &v46, &v45);
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ScheduledWorkoutPlan(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized static WorkoutScheduler.remove(scheduledWorkouts:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0);
  v3[7] = swift_task_alloc();
  v3[8] = *(type metadata accessor for ScheduledWorkoutPlan(0) - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static WorkoutScheduler.remove(scheduledWorkouts:for:), 0, 0);
}

uint64_t specialized static WorkoutScheduler.remove(scheduledWorkouts:for:)()
{
  v0[2] = MEMORY[0x277D84F90];
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = v0[9];
      outlined init with copy of ScheduledWorkoutPlan(v4, v7, type metadata accessor for ScheduledWorkoutPlan);
      *(swift_task_alloc() + 16) = v7;
      lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan, &protocol conformance descriptor for Apple_Workout_Internal_ScheduledWorkoutPlan);
      static Message.with(_:)();

      v8 = Message.serializedData(partial:)();
      v10 = v9;
      outlined destroy of ScheduledWorkoutPlan(v0[7], type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v6);
      }

      outlined destroy of ScheduledWorkoutPlan(v0[9], type metadata accessor for ScheduledWorkoutPlan);
      *(v6 + 2) = v12 + 1;
      v13 = &v6[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      v0[2] = v6;
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v15 = v0[4];
  v14 = v0[5];
  v16 = swift_task_alloc();
  v0[10] = v16;
  v16[2] = v0 + 2;
  v16[3] = v15;
  v16[4] = v14;
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = specialized static WorkoutScheduler.remove(scheduledWorkouts:for:);
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v17, 0, 0, 0xD00000000000001ELL, 0x800000023B67F5E0, partial apply for closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:), v16, v18);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = specialized static WorkoutScheduler.remove(scheduledWorkouts:for:);
  }

  else
  {

    v2 = specialized static WorkoutScheduler.remove(scheduledWorkouts:for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t specialized static WorkoutScheduler.add(scheduledWorkouts:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v3[6] = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0);
  v3[7] = swift_task_alloc();
  v3[8] = *(type metadata accessor for ScheduledWorkoutPlan(0) - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static WorkoutScheduler.add(scheduledWorkouts:for:), 0, 0);
}

uint64_t specialized static WorkoutScheduler.add(scheduledWorkouts:for:)()
{
  v0[2] = MEMORY[0x277D84F90];
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = v0[9];
      outlined init with copy of ScheduledWorkoutPlan(v4, v7, type metadata accessor for ScheduledWorkoutPlan);
      *(swift_task_alloc() + 16) = v7;
      lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan, &protocol conformance descriptor for Apple_Workout_Internal_ScheduledWorkoutPlan);
      static Message.with(_:)();

      v8 = Message.serializedData(partial:)();
      v10 = v9;
      outlined destroy of ScheduledWorkoutPlan(v0[7], type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v6);
      }

      outlined destroy of ScheduledWorkoutPlan(v0[9], type metadata accessor for ScheduledWorkoutPlan);
      *(v6 + 2) = v12 + 1;
      v13 = &v6[16 * v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v10;
      v0[2] = v6;
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v15 = v0[4];
  v14 = v0[5];
  v16 = swift_task_alloc();
  v0[10] = v16;
  v16[2] = v0 + 2;
  v16[3] = v15;
  v16[4] = v14;
  v17 = swift_task_alloc();
  v0[11] = v17;
  *v17 = v0;
  v17[1] = specialized static WorkoutScheduler.add(scheduledWorkouts:for:);
  v18 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v17, 0, 0, 0xD00000000000001BLL, 0x800000023B67F5C0, partial apply for closure #2 in static WorkoutScheduler.add(scheduledWorkouts:for:), v16, v18);
}

{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = specialized static WorkoutScheduler.add(scheduledWorkouts:for:);
  }

  else
  {

    v2 = specialized static WorkoutScheduler.add(scheduledWorkouts:for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized WorkoutScheduler.schedule(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](specialized WorkoutScheduler.schedule(_:dateComponents:), 0, 0);
}

uint64_t specialized WorkoutScheduler.schedule(_:dateComponents:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation14DateComponentsVG_10WorkoutKit09ScheduledG4PlanVs5NeverOTg5(partial apply for closure #1 in WorkoutScheduler.schedule(_:dateComponents:), v3, v2);
  v0[6] = v4;

  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[7] = __swift_project_value_buffer(v5, static WorkoutKitLog.scheduling);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v4 + 16);

    _os_log_impl(&dword_23B5E7000, v6, v7, "scheduling %ld workouts", v8, 0xCu);
    MEMORY[0x23EEA1330](v8, -1, -1);
  }

  else
  {
  }

  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v10 = static WorkoutScheduler.bundleId;
  v9 = unk_27E168D50;
  v0[8] = unk_27E168D50;

  v11 = swift_task_alloc();
  v0[9] = v11;
  *(v11 + 16) = v10;
  *(v11 + 24) = v9;
  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10WorkoutKit09ScheduledA4PlanVGMd, &_sSay10WorkoutKit09ScheduledA4PlanVGMR);
  *v12 = v0;
  v12[1] = specialized WorkoutScheduler.schedule(_:dateComponents:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000020, 0x800000023B67F480, closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:)partial apply, v11, v13);
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {

    v2 = specialized WorkoutScheduler.schedule(_:dateComponents:);
  }

  else
  {

    v2 = specialized WorkoutScheduler.schedule(_:dateComponents:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v14 = v0;
  v1 = v0[11];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[3] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_23B5E7000, v3, v4, "failed to add workouts due to %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EEA1330](v6, -1, -1);
    MEMORY[0x23EEA1330](v5, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = specialized WorkoutScheduler.schedule(_:dateComponents:);
  }

  else
  {

    v2 = specialized WorkoutScheduler.schedule(_:dateComponents:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = static WorkoutScheduler.bundleId;
  v1 = unk_27E168D50;
  v0[16] = unk_27E168D50;

  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = specialized WorkoutScheduler.schedule(_:dateComponents:);
  v4 = v0[6];

  return specialized static WorkoutScheduler.add(scheduledWorkouts:for:)(v4, v2, v1);
}

{
  v14 = v0;

  v1 = v0[15];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[3] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_23B5E7000, v3, v4, "failed to add workouts due to %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EEA1330](v6, -1, -1);
    MEMORY[0x23EEA1330](v5, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized WorkoutScheduler.schedule(_:dateComponents:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v14 = v0;

  v1 = v0[18];
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v0[3] = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_23B5E7000, v3, v4, "failed to add workouts due to %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x23EEA1330](v6, -1, -1);
    MEMORY[0x23EEA1330](v5, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t specialized WorkoutScheduler.schedule(_:dateComponents:)(uint64_t a1)
{
  v33 = v3;
  v5 = *(v3[2] + 16);
  v6 = *(v3[6] + 16);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v7 >= 51)
  {
    v8 = v3[11];
    v32 = v3[2];

    specialized MutableCollection<>.sort(by:)(&v32);
    if (v8)
    {
    }

    v16 = v32;
    v17 = v7 - 50;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v17;
      _os_log_impl(&dword_23B5E7000, v18, v19, "over limit. dropping oldest %ld workouts", v20, 0xCu);
      MEMORY[0x23EEA1330](v20, -1, -1);
    }

    v1 = specialized Collection.dropFirst(_:)(v17, v16);
    if ((v23 & 1) == 0)
    {
      goto LABEL_11;
    }

    v4 = v23;
    v7 = v22;
    v2 = v21;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
      swift_unknownObjectRelease();
      v26 = MEMORY[0x277D84F90];
    }

    v27 = *(v26 + 16);

    if (!__OFSUB__(v4 >> 1, v7))
    {
      if (v27 == (v4 >> 1) - v7)
      {
        v25 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v25)
        {
LABEL_19:
          v28 = static WorkoutScheduler.bundleId;
          v29 = unk_27E168D50;
          v3[12] = v25;
          v3[13] = v29;
          v31 = specialized static WorkoutScheduler.remove(scheduledWorkouts:for:);

          v30 = swift_task_alloc();
          v3[14] = v30;
          *v30 = v3;
          v30[1] = specialized WorkoutScheduler.schedule(_:dateComponents:);
          v13 = v25;
          v14 = v28;
          v15 = v29;
          goto LABEL_20;
        }

        v25 = MEMORY[0x277D84F90];
LABEL_18:
        swift_unknownObjectRelease();
        goto LABEL_19;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    swift_unknownObjectRelease();
    v23 = v4;
    v22 = v7;
    v21 = v2;
LABEL_11:
    specialized _copyCollectionToContiguousArray<A>(_:)(v1, v21, v22, v23);
    v25 = v24;
    goto LABEL_18;
  }

  v11 = static WorkoutScheduler.bundleId;
  v10 = unk_27E168D50;
  v3[16] = unk_27E168D50;
  v31 = specialized static WorkoutScheduler.add(scheduledWorkouts:for:);

  v12 = swift_task_alloc();
  v3[17] = v12;
  *v12 = v3;
  v12[1] = specialized WorkoutScheduler.schedule(_:dateComponents:);
  v13 = v3[6];
  v14 = v11;
  v15 = v10;
LABEL_20:

  return v31(v13, v14, v15);
}

uint64_t specialized WorkoutScheduler.remove(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](specialized WorkoutScheduler.remove(_:dateComponents:), 0, 0);
}

uint64_t specialized WorkoutScheduler.remove(_:dateComponents:)()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation14DateComponentsVG_10WorkoutKit09ScheduledG4PlanVs5NeverOTg5(partial apply for closure #1 in WorkoutScheduler.remove(_:dateComponents:), v3, v2);
  v0[5] = v4;

  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v0[6] = __swift_project_value_buffer(v5, static WorkoutKitLog.scheduling);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v4 + 16);

    _os_log_impl(&dword_23B5E7000, v6, v7, "removing %ld scheduled workouts", v8, 0xCu);
    MEMORY[0x23EEA1330](v8, -1, -1);
  }

  else
  {
  }

  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v9 = static WorkoutScheduler.bundleId;
  v10 = unk_27E168D50;
  v0[7] = unk_27E168D50;

  v11 = swift_task_alloc();
  v0[8] = v11;
  *v11 = v0;
  v11[1] = specialized WorkoutScheduler.remove(_:dateComponents:);

  return specialized static WorkoutScheduler.remove(scheduledWorkouts:for:)(v4, v9, v10);
}

{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized WorkoutScheduler.remove(_:dateComponents:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v16 = v0;
  v1 = v0[9];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
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
    _os_log_impl(&dword_23B5E7000, v3, v4, "failed to remove workouts due to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA1330](v7, -1, -1);
    MEMORY[0x23EEA1330](v6, -1, -1);
  }

  else
  {
    v12 = v0[9];
  }

  v13 = v0[1];

  return v13();
}

uint64_t specialized WorkoutScheduler.markComplete(_:dateComponents:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, "(!");
  v2[11] = swift_task_alloc();
  v2[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for ScheduledWorkoutPlan(0);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized WorkoutScheduler.markComplete(_:dateComponents:), 0, 0);
}

uint64_t specialized WorkoutScheduler.markComplete(_:dateComponents:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v0[22] = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation14DateComponentsVG_10WorkoutKit09ScheduledG4PlanVs5NeverOTg5(partial apply for closure #1 in WorkoutScheduler.markComplete(_:dateComponents:), v3, v1);

  if (one-time initialization token for bundleId != -1)
  {
    swift_once();
  }

  v5 = static WorkoutScheduler.bundleId;
  v4 = unk_27E168D50;
  v0[23] = unk_27E168D50;

  v6 = swift_task_alloc();
  v0[24] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = swift_task_alloc();
  v0[25] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10WorkoutKit09ScheduledA4PlanVGMd, &_sSay10WorkoutKit09ScheduledA4PlanVGMR);
  *v7 = v0;
  v7[1] = specialized WorkoutScheduler.markComplete(_:dateComponents:);

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000020, 0x800000023B67F480, closure #1 in static WorkoutScheduler.retrieveScheduledWorkouts(from:)partial apply, v6, v8);
}

{
  *(*v1 + 208) = v0;

  if (v0)
  {

    v2 = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  }

  else
  {

    v2 = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v15 = v0;
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = v0[26];
  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WorkoutKitLog.scheduling);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14[0] = v7;
    *v6 = 136315138;
    v0[3] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B5E7000, v4, v5, "failed to mark workouts as complete due to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA1330](v7, -1, -1);
    MEMORY[0x23EEA1330](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

{
  v154 = v0;
  v153 = *MEMORY[0x277D85DE8];
  v1 = v0[22];
  v2 = v0[2];
  v133 = *(v1 + 16);
  if (!v133)
  {

    v103 = MEMORY[0x277D84F90];
    v102 = MEMORY[0x277D84F90];
    goto LABEL_148;
  }

  v3 = 0;
  v4 = v0[15];
  v117 = v0[14];
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v131 = v1 + v5;
  v112 = v5;
  v6 = v2 + v5;
  v7 = v0[8];
  v118 = (v7 + 32);
  v128 = (v7 + 8);
  v129 = v0[12];
  v130 = (v7 + 48);
  v8 = *(v4 + 72);
  v113 = v7;
  v114 = MEMORY[0x277D84F90];
  v127 = v0[2];
  v115 = MEMORY[0x277D84F90];
  v116 = v0[26];
  v132 = v2 + v5;
  v139 = v8;
  do
  {
    outlined init with copy of ScheduledWorkoutPlan(v131 + v3 * v8, v0[21], type metadata accessor for ScheduledWorkoutPlan);
    v9 = *(v2 + 16);
    if (v9)
    {
      v134 = v3;
      v10 = 0;
      v140 = *(v2 + 16);
      while (1)
      {
        v11 = v0[21];
        v12 = v0[18];
        outlined init with copy of ScheduledWorkoutPlan(v6 + v10 * v8, v12, type metadata accessor for ScheduledWorkoutPlan);
        if ((specialized static WorkoutPlan.Workout.== infix(_:_:)(v12, v11) & 1) == 0)
        {
          goto LABEL_9;
        }

        v13 = type metadata accessor for WorkoutPlan(0);
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          goto LABEL_9;
        }

        v14 = v13[6];
        v15 = v0[18] + v14;
        v17 = *v15;
        v16 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = (v0[21] + v14);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        if (!*v15)
        {
          outlined copy of WorkoutPlan.Route?(0, *(v15 + 8), *(v15 + 16));
          if (v21)
          {
            outlined copy of WorkoutPlan.Route?(v21, v20, v22);
LABEL_27:
            outlined consume of WorkoutPlan.Route?(v17, v16, v18);
            v25 = v21;
            v26 = v20;
            v27 = v22;
            goto LABEL_56;
          }

          outlined copy of WorkoutPlan.Route?(0, v20, v22);
          goto LABEL_29;
        }

        if (!v21)
        {
          outlined copy of WorkoutPlan.Route?(*v15, *(v15 + 8), *(v15 + 16));
          outlined copy of WorkoutPlan.Route?(0, v20, v22);
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);

          outlined consume of Data?(v16, v18);
          goto LABEL_27;
        }

        v23 = *(v17 + 16);
        if (v23 != *(v21 + 16))
        {
          goto LABEL_54;
        }

        if (v23)
        {
          v24 = v17 == v21;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v54 = (v21 + 56);
          v55 = (v17 + 56);
          while (*(v55 - 3) == *(v54 - 3) && *(v55 - 2) == *(v54 - 2))
          {
            if (*v55)
            {
              if ((*v54 & 1) == 0)
              {
                break;
              }
            }

            else if ((*v54 & 1) != 0 || *(v55 - 1) != *(v54 - 1))
            {
              break;
            }

            v54 += 4;
            v55 += 4;
            if (!--v23)
            {
              goto LABEL_20;
            }
          }

LABEL_54:
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of WorkoutPlan.Route?(v21, v20, v22);
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
LABEL_55:
          outlined consume of WorkoutPlan.Route?(v21, v20, v22);

          outlined consume of Data?(v16, v18);
          v25 = v17;
          v26 = v16;
          v27 = v18;
LABEL_56:
          outlined consume of WorkoutPlan.Route?(v25, v26, v27);
LABEL_57:
          v8 = v139;
          v9 = v140;
          goto LABEL_9;
        }

LABEL_20:
        if (v18 >> 60 == 15)
        {
          if (v22 >> 60 != 15)
          {
            goto LABEL_45;
          }

          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of WorkoutPlan.Route?(v21, v20, v22);
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of Data?(v16, v18);
          outlined copy of Data?(v20, v22);
          goto LABEL_23;
        }

        if (v22 >> 60 == 15)
        {
LABEL_45:
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of WorkoutPlan.Route?(v21, v20, v22);
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of Data?(v16, v18);
          outlined copy of Data?(v20, v22);
          outlined consume of Data?(v16, v18);
          v52 = v20;
          v53 = v22;
LABEL_46:
          outlined consume of Data?(v52, v53);
          goto LABEL_55;
        }

        v56 = v18 >> 62;
        v57 = v22 >> 62;
        if (v18 >> 62 == 3)
        {
          break;
        }

        if (v56 <= 1)
        {
          if (!v56)
          {
            v58 = BYTE6(v18);
            if (v57 <= 1)
            {
              goto LABEL_79;
            }

            goto LABEL_84;
          }

          LODWORD(v58) = HIDWORD(v16) - v16;
          if (__OFSUB__(HIDWORD(v16), v16))
          {
            goto LABEL_161;
          }

          v58 = v58;
          goto LABEL_78;
        }

        if (v56 == 2)
        {
          v60 = *(v16 + 16);
          v59 = *(v16 + 24);
          v61 = __OFSUB__(v59, v60);
          v58 = v59 - v60;
          if (v61)
          {
            goto LABEL_162;
          }

          goto LABEL_78;
        }

        v58 = 0;
        if (v57 <= 1)
        {
LABEL_79:
          if (v57)
          {
            LODWORD(v62) = HIDWORD(v20) - v20;
            if (__OFSUB__(HIDWORD(v20), v20))
            {
              goto LABEL_160;
            }

            v62 = v62;
          }

          else
          {
            v62 = BYTE6(v22);
          }

          goto LABEL_86;
        }

LABEL_84:
        if (v57 != 2)
        {
          if (v58)
          {
LABEL_101:
            outlined copy of WorkoutPlan.Route?(v17, v16, v18);
            outlined copy of WorkoutPlan.Route?(v21, v20, v22);
            outlined copy of WorkoutPlan.Route?(v17, v16, v18);
            outlined copy of Data?(v16, v18);
            outlined copy of Data?(v20, v22);
            outlined consume of Data?(v20, v22);
            v52 = v16;
            v53 = v18;
            goto LABEL_46;
          }

LABEL_102:
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of WorkoutPlan.Route?(v21, v20, v22);
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of Data?(v16, v18);
          outlined copy of Data?(v20, v22);
          outlined consume of Data?(v20, v22);
LABEL_23:
          outlined consume of Data?(v16, v18);
          outlined consume of WorkoutPlan.Route?(v21, v20, v22);

          outlined consume of Data?(v16, v18);
LABEL_29:
          outlined consume of WorkoutPlan.Route?(v17, v16, v18);
          v8 = v139;
          goto LABEL_30;
        }

        v64 = *(v20 + 16);
        v63 = *(v20 + 24);
        v61 = __OFSUB__(v63, v64);
        v62 = v63 - v64;
        if (v61)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          swift_once();
LABEL_153:
          v107 = type metadata accessor for Logger();
          __swift_project_value_buffer(v107, static WorkoutKitLog.scheduling);
          v108 = Logger.logObject.getter();
          v109 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v108, v109))
          {
            v110 = swift_slowAlloc();
            *v110 = 0;
            _os_log_impl(&dword_23B5E7000, v108, v109, "no known workouts to update", v110, 2u);
            MEMORY[0x23EEA1330](v110, -1, -1);
          }

          v111 = v0[1];

          return v111();
        }

LABEL_86:
        if (v58 != v62)
        {
          goto LABEL_101;
        }

        if (v58 < 1)
        {
          goto LABEL_102;
        }

        if (v56 > 1)
        {
          if (v56 == 2)
          {
            v136 = *(v16 + 16);
            v123 = *(v16 + 24);
            outlined copy of WorkoutPlan.Route?(v17, v16, v18);
            outlined copy of WorkoutPlan.Route?(v21, v20, v22);
            outlined copy of WorkoutPlan.Route?(v17, v16, v18);
            outlined copy of Data?(v16, v18);
            v126 = v20;
            outlined copy of Data?(v20, v22);
            v72 = __DataStorage._bytes.getter();
            if (v72)
            {
              v73 = v72;
              v72 = __DataStorage._offset.getter();
              v74 = v136;
              if (__OFSUB__(v136, v72))
              {
                goto LABEL_166;
              }

              __s2a = (v136 - v72 + v73);
            }

            else
            {
              __s2a = 0;
              v74 = v136;
            }

            if (__OFSUB__(v123, v74))
            {
              goto LABEL_165;
            }

            MEMORY[0x23EEA04C0](v72);
            v77 = __s2a;
            goto LABEL_117;
          }

          *(v0 + 286) = 0;
          v0[35] = 0;
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of WorkoutPlan.Route?(v21, v20, v22);
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of Data?(v16, v18);
          outlined copy of Data?(v20, v22);
          v77 = (v0 + 35);
          v78 = v20;
LABEL_118:
          result = closure #1 in static Data.== infix(_:_:)(v77, v78, v22, &v147);
          if (v116)
          {
            return result;
          }

          outlined consume of Data?(v20, v22);
          v116 = 0;
          v137 = v147;
          v6 = v132;
          goto LABEL_132;
        }

        v126 = v20;
        if (v56)
        {
          if (v16 >> 32 < v16)
          {
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
          }

          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of WorkoutPlan.Route?(v21, v20, v22);
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of Data?(v16, v18);
          outlined copy of Data?(v20, v22);
          v75 = __DataStorage._bytes.getter();
          v76 = v75;
          if (v75)
          {
            v75 = __DataStorage._offset.getter();
            if (__OFSUB__(v16, v75))
            {
              goto LABEL_167;
            }

            v76 += v16 - v75;
          }

          MEMORY[0x23EEA04C0](v75);
          v77 = v76;
LABEL_117:
          v20 = v126;
          v78 = v126;
          goto LABEL_118;
        }

        v141 = v16;
        v142 = v18;
        v143 = BYTE2(v18);
        v144 = BYTE3(v18);
        v145 = BYTE4(v18);
        v146 = BYTE5(v18);
        if (v57)
        {
          if (v57 == 1)
          {
            if (v20 >> 32 < v20)
            {
              goto LABEL_168;
            }

            outlined copy of WorkoutPlan.Route?(v17, v16, v18);
            outlined copy of WorkoutPlan.Route?(v21, v20, v22);
            outlined copy of WorkoutPlan.Route?(v17, v16, v18);
            outlined copy of Data?(v16, v18);
            outlined copy of Data?(v20, v22);
            v65 = __DataStorage._bytes.getter();
            if (!v65)
            {
              goto LABEL_173;
            }

            v66 = v65;
            v67 = __DataStorage._offset.getter();
            if (__OFSUB__(v20, v67))
            {
              goto LABEL_170;
            }

            v68 = (v20 - v67 + v66);
            result = MEMORY[0x23EEA04C0](v67);
            if (!v68)
            {
              goto LABEL_174;
            }

            if (result >= (v20 >> 32) - v20)
            {
              v70 = (v20 >> 32) - v20;
            }

            else
            {
              v70 = result;
            }

            v71 = v68;
          }

          else
          {
            v138 = *(v20 + 16);
            v124 = *(v20 + 24);
            outlined copy of WorkoutPlan.Route?(v17, v16, v18);
            outlined copy of WorkoutPlan.Route?(v21, v20, v22);
            outlined copy of WorkoutPlan.Route?(v17, v16, v18);
            outlined copy of Data?(v16, v18);
            outlined copy of Data?(v20, v22);
            v80 = __DataStorage._bytes.getter();
            if (v80)
            {
              v81 = v80;
              v80 = __DataStorage._offset.getter();
              v82 = v138;
              if (__OFSUB__(v138, v80))
              {
                goto LABEL_171;
              }

              __s2b = (v138 - v80 + v81);
            }

            else
            {
              __s2b = 0;
              v82 = v138;
            }

            v83 = v124 - v82;
            if (__OFSUB__(v124, v82))
            {
              goto LABEL_169;
            }

            v65 = MEMORY[0x23EEA04C0](v80);
            v71 = __s2b;
            if (!__s2b)
            {
              __break(1u);
LABEL_173:
              result = MEMORY[0x23EEA04C0](v65);
LABEL_174:
              __break(1u);
              return result;
            }

            if (v65 >= v83)
            {
              v70 = v83;
            }

            else
            {
              v70 = v65;
            }
          }

          v79 = memcmp(&v141, v71, v70);
          outlined consume of Data?(v126, v22);
          v6 = v132;
        }

        else
        {
          v147 = v20;
          v148 = v22;
          v149 = BYTE2(v22);
          v150 = BYTE3(v22);
          v151 = BYTE4(v22);
          v152 = BYTE5(v22);
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of WorkoutPlan.Route?(v21, v20, v22);
          outlined copy of WorkoutPlan.Route?(v17, v16, v18);
          outlined copy of Data?(v16, v18);
          outlined copy of Data?(v20, v22);
          v79 = memcmp(&v141, &v147, BYTE6(v22));
          outlined consume of Data?(v126, v22);
        }

        v137 = v79 == 0;
        v20 = v126;
LABEL_132:
        outlined consume of Data?(v16, v18);
        outlined consume of WorkoutPlan.Route?(v21, v20, v22);

        outlined consume of Data?(v16, v18);
        outlined consume of WorkoutPlan.Route?(v17, v16, v18);
        v8 = v139;
        v9 = v140;
        if (!v137)
        {
          goto LABEL_9;
        }

LABEL_30:
        v28 = v0[21];
        v29 = v0[13];
        v30 = v0[7];
        v31 = v13[7];
        v32 = *(v129 + 48);
        outlined init with copy of UUID?(v0[18] + v31, v29, &_s10Foundation4UUIDVSgMd, "(!");
        outlined init with copy of UUID?(v28 + v31, v29 + v32, &_s10Foundation4UUIDVSgMd, "(!");
        v33 = *v130;
        if ((*v130)(v29, 1, v30) == 1)
        {
          v34 = v33(v29 + v32, 1, v0[7]);
          v6 = v132;
          v9 = v140;
          if (v34 != 1)
          {
            goto LABEL_8;
          }

          outlined destroy of (UUID?, UUID?)(v0[13], &_s10Foundation4UUIDVSgMd, "(!");
        }

        else
        {
          v35 = v0[7];
          outlined init with copy of UUID?(v0[13], v0[11], &_s10Foundation4UUIDVSgMd, "(!");
          if (v33(v29 + v32, 1, v35) == 1)
          {
            (*v128)(v0[11], v0[7]);
            v6 = v132;
            v9 = v140;
LABEL_8:
            outlined destroy of (UUID?, UUID?)(v0[13], &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
            goto LABEL_9;
          }

          v36 = v0[13];
          v38 = v0[10];
          v37 = v0[11];
          v39 = v0[7];
          (*v118)(v38, v29 + v32, v39);
          lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
          v40 = dispatch thunk of static Equatable.== infix(_:_:)();
          v41 = *v128;
          (*v128)(v38, v39);
          v41(v37, v39);
          v8 = v139;
          outlined destroy of (UUID?, UUID?)(v36, &_s10Foundation4UUIDVSgMd, "(!");
          v6 = v132;
          v9 = v140;
          if ((v40 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v42 = v13[8];
        v43 = *(v0[18] + v42);
        v44 = *(v0[21] + v42);
        if (v43)
        {
          if (!v44)
          {
            goto LABEL_9;
          }

          v45 = *(v43 + 16);
          if (v45 != *(v44 + 16))
          {
            goto LABEL_9;
          }

          if (v45 && v43 != v44)
          {
            v46 = (*(v113 + 80) + 32) & ~*(v113 + 80);
            __s2 = *(v113 + 72);
            v135 = *(v113 + 16);

            v122 = v43;
            v125 = v44;
            while (1)
            {
              v135(v0[10], v43 + v46, v0[7]);
              v48 = v0[9];
              v47 = v0[10];
              v49 = v0[7];
              v135(v48, v44 + v46, v49);
              lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
              v50 = dispatch thunk of static Equatable.== infix(_:_:)();
              v51 = *v128;
              (*v128)(v48, v49);
              v51(v47, v49);
              if ((v50 & 1) == 0)
              {
                break;
              }

              v43 = v122;
              v46 += __s2;
              --v45;
              v44 = v125;
              if (!v45)
              {

                v6 = v132;
                v8 = v139;
                v9 = v140;
                goto LABEL_66;
              }
            }

            v6 = v132;
            goto LABEL_57;
          }
        }

        else if (v44)
        {
          goto LABEL_9;
        }

LABEL_66:
        if (static Date.== infix(_:_:)())
        {
          v84 = v0[19];
          v85 = v0[20];
          v86 = v0[6];
          outlined init with take of ScheduledWorkoutPlan(v0[18], v84);
          outlined init with take of ScheduledWorkoutPlan(v84, v85);
          outlined init with copy of UUID?(v85 + *(v117 + 24), v86, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          v87 = type metadata accessor for Date();
          v88 = (*(*(v87 - 8) + 48))(v86, 1, v87);
          v89 = v0[20];
          v2 = v127;
          if (v88 == 1)
          {
            v90 = v0[17];
            outlined destroy of (UUID?, UUID?)(v0[6], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
            outlined init with copy of ScheduledWorkoutPlan(v89, v90, type metadata accessor for ScheduledWorkoutPlan);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v115 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v115[2] + 1, 1, v115, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR, type metadata accessor for ScheduledWorkoutPlan);
            }

            v91 = v115;
            v93 = v115[2];
            v92 = v115[3];
            if (v93 >= v92 >> 1)
            {
              v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v115, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR, type metadata accessor for ScheduledWorkoutPlan);
            }

            v94 = v0[21];
            v96 = v0[16];
            v95 = v0[17];
            v91[2] = v93 + 1;
            v115 = v91;
            outlined init with take of ScheduledWorkoutPlan(v95, v91 + v112 + v93 * v8);
            outlined init with copy of ScheduledWorkoutPlan(v94, v96, type metadata accessor for ScheduledWorkoutPlan);
            v97 = v114;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v97 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v114[2] + 1, 1, v114, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR, type metadata accessor for ScheduledWorkoutPlan);
            }

            v99 = v97[2];
            v98 = v97[3];
            v114 = v97;
            if (v99 >= v98 >> 1)
            {
              v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v99 + 1, 1, v97, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMd, &_ss23_ContiguousArrayStorageCy10WorkoutKit09ScheduledD4PlanVGMR, type metadata accessor for ScheduledWorkoutPlan);
            }

            v100 = v0[16];
            outlined destroy of ScheduledWorkoutPlan(v0[20], type metadata accessor for ScheduledWorkoutPlan);
            v114[2] = v99 + 1;
            outlined init with take of ScheduledWorkoutPlan(v100, v114 + v112 + v99 * v8);
          }

          else
          {
            v101 = v0[6];
            outlined destroy of ScheduledWorkoutPlan(v0[20], type metadata accessor for ScheduledWorkoutPlan);
            outlined destroy of (UUID?, UUID?)(v101, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

          v3 = v134;
          v6 = v132;
          goto LABEL_4;
        }

LABEL_9:
        ++v10;
        outlined destroy of ScheduledWorkoutPlan(v0[18], type metadata accessor for ScheduledWorkoutPlan);
        if (v10 == v9)
        {
          v2 = v127;
          v3 = v134;
          goto LABEL_4;
        }
      }

      v58 = 0;
      if (!v16 && v18 == 0xC000000000000000 && v22 >> 62 == 3)
      {
        v58 = 0;
        if (!v20 && v22 == 0xC000000000000000)
        {
          outlined copy of WorkoutPlan.Route?(v17, 0, 0xC000000000000000);
          outlined copy of WorkoutPlan.Route?(v21, 0, 0xC000000000000000);
          outlined copy of WorkoutPlan.Route?(v17, 0, 0xC000000000000000);
          outlined copy of Data?(0, 0xC000000000000000);
          outlined copy of Data?(0, 0xC000000000000000);
          outlined consume of Data?(0, 0xC000000000000000);
          goto LABEL_23;
        }
      }

LABEL_78:
      if (v57 <= 1)
      {
        goto LABEL_79;
      }

      goto LABEL_84;
    }

LABEL_4:
    ++v3;
    outlined destroy of ScheduledWorkoutPlan(v0[21], type metadata accessor for ScheduledWorkoutPlan);
  }

  while (v3 != v133);

  v102 = v114;
  v103 = v115;
LABEL_148:

  v0[27] = v103;
  v0[28] = v102;
  if (!v102[2])
  {

    if (one-time initialization token for scheduling != -1)
    {
      goto LABEL_163;
    }

    goto LABEL_153;
  }

  v105 = static WorkoutScheduler.bundleId;
  v104 = unk_27E168D50;
  v0[29] = unk_27E168D50;

  v106 = swift_task_alloc();
  v0[30] = v106;
  *v106 = v0;
  v106[1] = specialized WorkoutScheduler.markComplete(_:dateComponents:);

  return specialized static WorkoutScheduler.remove(scheduledWorkouts:for:)(v103, v105, v104);
}

{
  *(*v1 + 248) = v0;

  if (v0)
  {

    v2 = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  }

  else
  {
    v2 = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = static WorkoutScheduler.bundleId;
  v1 = unk_27E168D50;
  v0[32] = unk_27E168D50;

  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = specialized WorkoutScheduler.markComplete(_:dateComponents:);
  v4 = v0[28];

  return specialized static WorkoutScheduler.add(scheduledWorkouts:for:)(v4, v2, v1);
}

{
  v2 = *v1;
  *(v2 + 272) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](specialized WorkoutScheduler.markComplete(_:dateComponents:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v15 = v0;
  v14[1] = *MEMORY[0x277D85DE8];
  v1 = v0[31];
  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WorkoutKitLog.scheduling);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14[0] = v7;
    *v6 = 136315138;
    v0[3] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B5E7000, v4, v5, "failed to mark workouts as complete due to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA1330](v7, -1, -1);
    MEMORY[0x23EEA1330](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

{
  v15 = v0;
  v14[1] = *MEMORY[0x277D85DE8];

  v1 = v0[34];
  if (one-time initialization token for scheduling != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WorkoutKitLog.scheduling);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14[0] = v7;
    *v6 = 136315138;
    v0[3] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23B5E7000, v4, v5, "failed to mark workouts as complete due to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EEA1330](v7, -1, -1);
    MEMORY[0x23EEA1330](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

unint64_t lazy protocol witness table accessor for type WorkoutScheduler.AuthorizationState and conformance WorkoutScheduler.AuthorizationState()
{
  result = lazy protocol witness table cache variable for type WorkoutScheduler.AuthorizationState and conformance WorkoutScheduler.AuthorizationState;
  if (!lazy protocol witness table cache variable for type WorkoutScheduler.AuthorizationState and conformance WorkoutScheduler.AuthorizationState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutScheduler.AuthorizationState and conformance WorkoutScheduler.AuthorizationState);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutScheduler.AuthorizationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutScheduler.AuthorizationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void partial apply for closure #1 in closure #1 in static WorkoutScheduler.requestAuthorization(for:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMd, &_sScCy10WorkoutKit0A9SchedulerC18AuthorizationStateOs5Error_pGMR);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  closure #1 in closure #1 in static WorkoutScheduler.requestAuthorization(for:)(a1, a2, v5, v6);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type AuthorizationError and conformance AuthorizationError()
{
  result = lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError;
  if (!lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError;
  if (!lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AuthorizationError and conformance AuthorizationError);
  }

  return result;
}

uint64_t outlined destroy of ScheduledWorkoutPlan(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:)(int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);

  return closure #1 in closure #2 in static WorkoutScheduler.remove(scheduledWorkouts:for:)(a1, a2);
}

uint64_t objectdestroyTm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t outlined copy of WorkoutPlan.Route?(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return outlined copy of Data?(a2, a3);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(result, a2);
  }

  return result;
}

uint64_t outlined consume of WorkoutPlan.Route?(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {

    return outlined consume of Data?(a2, a3);
  }

  return result;
}

uint64_t outlined init with take of ScheduledWorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledWorkoutPlan(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of (UUID?, UUID?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of ScheduledWorkoutPlan(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_34Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in static WorkoutScheduler.authorizationState(for:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

void closure #1 in ScheduledWorkoutPlan.protoRepresentation.getterpartial apply(uint64_t a1)
{
  partial apply for closure #1 in ScheduledWorkoutPlan.protoRepresentation.getter(a1);
}

{
  _s10WorkoutKit09ScheduledA4PlanV19protoRepresentationAA06Apple_a10_Internal_caD0VvgyAFzKXEfU_TA_0(a1);
}

uint64_t type metadata accessor for Apple_Workout_WorkoutConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_WorkoutConfiguration;
  if (!type metadata singleton initialization cache for Apple_Workout_WorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_WorkoutConfiguration(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UInt32?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for UInt32?()
{
  if (!lazy cache variable for type metadata for UInt32?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UInt32?);
    }
  }
}

uint64_t Apple_Workout_WorkoutConfiguration.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      type metadata accessor for Apple_Workout_WorkoutConfiguration(0);
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }

    else if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t Apple_Workout_WorkoutConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_WorkoutConfiguration.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in Apple_Workout_WorkoutConfiguration.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for Apple_Workout_WorkoutConfiguration(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_WorkoutConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_WorkoutConfiguration(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_WorkoutConfiguration.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_WorkoutConfiguration(0);
  if ((*(a1 + *(result + 28) + 4) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_WorkoutConfiguration@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = 0;
  result = UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = a2 + *(a1 + 24);
  *v6 = 0;
  v6[4] = 1;
  v7 = a2 + v5;
  *v7 = 0;
  v7[4] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_WorkoutConfiguration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_WorkoutConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_WorkoutConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration, &protocol conformance descriptor for Apple_Workout_WorkoutConfiguration);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_WorkoutConfiguration@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_WorkoutConfiguration._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_WorkoutConfiguration(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration, &protocol conformance descriptor for Apple_Workout_WorkoutConfiguration);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_WorkoutConfiguration(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_WorkoutConfiguration(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration, type metadata accessor for Apple_Workout_WorkoutConfiguration, &protocol conformance descriptor for Apple_Workout_WorkoutConfiguration);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_WorkoutConfiguration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_WorkoutConfiguration.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for Apple_Workout_WorkoutConfiguration(0);
  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = *(v4 + 28);
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_WorkoutConfiguration and conformance Apple_Workout_WorkoutConfiguration(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for defaultInstance()
{
  type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  v2 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp) = 0;
  v4 = v0 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
  *v4 = 0;
  *(v4 + 8) = 1;
  static Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for Apple_Workout_CustomWorkoutComposition._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v1 = OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__warmup;
  v2 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__blocks) = MEMORY[0x277D84F90];
  result = (v3)(v0 + OBJC_IVAR____TtCV10WorkoutKit38Apple_Workout_CustomWorkoutCompositionP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__cooldown, 1, 1, v2);
  static Apple_Workout_CustomWorkoutComposition._StorageClass.defaultInstance = v0;
  return result;
}

{
  type metadata accessor for Apple_Workout_IntervalStep._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  v1 = OBJC_IVAR____TtCV10WorkoutKit26Apple_Workout_IntervalStepP33_2441507AB9E2A3F708B1D29CF80B16B513_StorageClass__step;
  v2 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  static Apple_Workout_IntervalStep._StorageClass.defaultInstance = v0;
  return result;
}

uint64_t Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.__deallocating_deinit()
{
  outlined destroy of Apple_Workout_WorkoutPlan?(v0 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);

  return swift_deallocClassInstance();
}

void type metadata completion function for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(uint64_t a1)
{
  type metadata accessor for Apple_Workout_WorkoutPlan?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Apple_Workout_WorkoutPlan?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Workout_WorkoutPlan?)
  {
    type metadata accessor for Apple_Workout_WorkoutPlan(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Workout_WorkoutPlan?);
    }
  }
}

uint64_t type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(0);
    swift_allocObject();
    v12 = specialized Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.init(copying:)(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)(v10, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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
        closure #3 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 2:
        closure #2 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 1:
        closure #1 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_WorkoutPlan(0);
  lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0);
  result = closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = closure #1 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(a1, a2, a3, a4);
  if (!v4)
  {
    v10 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
    swift_beginAccess();
    if (*(a1 + v10))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    return closure #2 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(a1, a2, a3, a4);
  }

  return result;
}

uint64_t closure #1 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutPlan?(a1 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of Apple_Workout_WorkoutPlan?(v7, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  }

  outlined init with take of Apple_Workout_WorkoutPlan(v7, v11);
  lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_WorkoutPlan(v11);
}

uint64_t closure #2 in closure #1 in Apple_Workout_Internal_ScheduledWorkoutPlan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
  result = swift_beginAccess();
  if ((*(v4 + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #1 in static Apple_Workout_Internal_ScheduledWorkoutPlan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = (&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4PlanVSg_ADtMR);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutPlan?(a1 + v17, v16);
  v18 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  swift_beginAccess();
  v19 = *(v8 + 56);
  outlined init with copy of Apple_Workout_WorkoutPlan?(v16, v10);
  outlined init with copy of Apple_Workout_WorkoutPlan?(a2 + v18, &v10[v19]);
  v20 = *(v5 + 48);
  if (v20(v10, 1, v4) == 1)
  {

    outlined destroy of Apple_Workout_WorkoutPlan?(v16, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    if (v20(&v10[v19], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_WorkoutPlan?(v10, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_WorkoutPlan?(v10, v13);
  if (v20(&v10[v19], 1, v4) == 1)
  {

    outlined destroy of Apple_Workout_WorkoutPlan?(v16, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    outlined destroy of Apple_Workout_WorkoutPlan(v13);
LABEL_6:
    outlined destroy of Apple_Workout_WorkoutPlan?(v10, &_s10WorkoutKit06Apple_a1_A4PlanVSg_ADtMd, &_s10WorkoutKit06Apple_a1_A4PlanVSg_ADtMR);
LABEL_12:

    return 0;
  }

  v21 = v33;
  outlined init with take of Apple_Workout_WorkoutPlan(&v10[v19], v33);

  v22 = specialized static Apple_Workout_WorkoutPlan.== infix(_:_:)(v13, v21);
  outlined destroy of Apple_Workout_WorkoutPlan(v21);
  outlined destroy of Apple_Workout_WorkoutPlan?(v16, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  outlined destroy of Apple_Workout_WorkoutPlan(v13);
  outlined destroy of Apple_Workout_WorkoutPlan?(v10, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v23 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
  swift_beginAccess();
  if (v24 != *(a2 + v25))
  {
    goto LABEL_12;
  }

  v26 = a1 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);

  v28 = a2 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
  swift_beginAccess();
  v29 = *v28;
  v30 = *(v28 + 8);

  if (v26)
  {
    if (!v30)
    {
      return 0;
    }
  }

  else
  {
    if (v27 == v29)
    {
      v32 = v30;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Internal_ScheduledWorkoutPlan@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Internal_ScheduledWorkoutPlan@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan, &protocol conformance descriptor for Apple_Workout_Internal_ScheduledWorkoutPlan);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Internal_ScheduledWorkoutPlan@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Internal_ScheduledWorkoutPlan._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan, &protocol conformance descriptor for Apple_Workout_Internal_ScheduledWorkoutPlan);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan, &protocol conformance descriptor for Apple_Workout_Internal_ScheduledWorkoutPlan);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t outlined init with take of Apple_Workout_WorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static Apple_Workout_Internal_ScheduledWorkoutPlan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static Apple_Workout_Internal_ScheduledWorkoutPlan.== infix(_:_:)(v5, v6);

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t specialized Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  v7 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
  *(v1 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp) = 0;
  v9 = v1 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_WorkoutPlan?(a1 + v10, v5);
  swift_beginAccess();
  outlined assign with take of Apple_Workout_WorkoutPlan?(v5, v1 + v6);
  swift_endAccess();
  v11 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
  swift_beginAccess();
  v12 = *(a1 + v11);
  swift_beginAccess();
  *(v1 + v8) = v12;
  v13 = (a1 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp);
  swift_beginAccess();
  v14 = *v13;
  LOBYTE(v13) = *(v13 + 8);
  swift_beginAccess();
  *v9 = v14;
  *(v9 + 8) = v13;
  return v1;
}

uint64_t outlined assign with take of Apple_Workout_WorkoutPlan?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutPlan?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t closure #1 in closure #1 in static Apple_Workout_SpeedAlert.targetAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for Apple_Workout_SpeedValue(0);
  v10 = a2;
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_0(v6, a1, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in static Apple_Workout_SpeedAlert.targetAlert(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17[-v11];
  if (*(a2 + *((a3)(0, v10) + 20)))
  {
    v13 = 1;
  }

  else
  {
    v13 = 2;
  }

  *a1 = v13;
  *(a1 + 8) = 1;
  *(a1 + 16) = a4;
  *(a1 + 24) = 1;
  type metadata accessor for Apple_Workout_SpeedAlert(0);
  v18 = a2;
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert, type metadata accessor for Apple_Workout_SpeedAlert, &protocol conformance descriptor for Apple_Workout_SpeedAlert);
  static Message.with(_:)();
  v14 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  v15 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_0(v12, a1 + *(v15 + 24), &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMd, &_s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgMR);
}

uint64_t closure #1 in closure #1 in static Apple_Workout_SpeedAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for Apple_Workout_SpeedRange(0);
  v10 = a2;
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedRange and conformance Apple_Workout_SpeedRange, type metadata accessor for Apple_Workout_SpeedRange, &protocol conformance descriptor for Apple_Workout_SpeedRange);
  static Message.with(_:)();
  v7 = type metadata accessor for Apple_Workout_SpeedAlert.OneOf_SpeedAlertTarget(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_0(v6, a1, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMd, &_s10WorkoutKit06Apple_A11_SpeedAlertV06OneOf_dE6TargetOSgMR);
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_SpeedAlert.rangeAlert(_:)(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v5 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_SpeedValue and conformance Apple_Workout_SpeedValue, type metadata accessor for Apple_Workout_SpeedValue, &protocol conformance descriptor for Apple_Workout_SpeedValue);
  static Message.with(_:)();
  v15 = v2;
  v9 = type metadata accessor for Apple_Workout_SpeedRange(0);
  v10 = *(v9 + 20);
  outlined destroy of Apple_Workout_SpeedValue?(a1 + v10, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  outlined init with take of Apple_Workout_SpeedValue(v8, a1 + v10, type metadata accessor for Apple_Workout_SpeedValue);
  v11 = *(v6 + 56);
  v11(a1 + v10, 0, 1, v5);
  v16 = v18;
  static Message.with(_:)();
  v12 = *(v9 + 24);
  outlined destroy of Apple_Workout_SpeedValue?(a1 + v12, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMd, &_s10WorkoutKit06Apple_A11_SpeedValueVSgMR);
  outlined init with take of Apple_Workout_SpeedValue(v8, a1 + v12, type metadata accessor for Apple_Workout_SpeedValue);
  return (v11)(a1 + v12, 0, 1, v5);
}

uint64_t _s10WorkoutKit06Apple_a1_A5AlertV06OneOf_D5ValueOSgWOdTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t closure #1 in closure #1 in closure #1 in static Apple_Workout_SpeedAlert.targetAlert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a4;
  v6 = type metadata accessor for Apple_Workout_TimeValue(0);
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[4] = a2;
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_DistanceValue and conformance Apple_Workout_DistanceValue, type metadata accessor for Apple_Workout_DistanceValue, &protocol conformance descriptor for Apple_Workout_DistanceValue);
  static Message.with(_:)();
  v13 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v14 = *(v13 + 20);
  outlined destroy of Apple_Workout_SpeedValue?(a1 + v14, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  outlined init with take of Apple_Workout_SpeedValue(v12, a1 + v14, type metadata accessor for Apple_Workout_DistanceValue);
  (*(v10 + 56))(a1 + v14, 0, 1, v9);
  lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(&lazy protocol witness table cache variable for type Apple_Workout_TimeValue and conformance Apple_Workout_TimeValue, type metadata accessor for Apple_Workout_TimeValue, &protocol conformance descriptor for Apple_Workout_TimeValue);
  static Message.with(_:)();
  v15 = *(v13 + 24);
  outlined destroy of Apple_Workout_SpeedValue?(a1 + v15, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  outlined init with take of Apple_Workout_SpeedValue(v8, a1 + v15, type metadata accessor for Apple_Workout_TimeValue);
  return (*(v18 + 56))(a1 + v15, 0, 1, v6);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #1 in static Apple_Workout_SpeedAlert.targetAlert(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  *a1 = 1;
  *(a1 + 8) = 1;
  v6 = [objc_opt_self() metersPerSecond];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *(a1 + 16) = v8;
  return result;
}

uint64_t closure #1 in closure #2 in closure #1 in closure #1 in closure #1 in static Apple_Workout_SpeedAlert.rangeAlert(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  *a1 = 1;
  *(a1 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMd, &_sSNy10Foundation11MeasurementVySo11NSUnitSpeedCGGMR);
  v6 = [objc_opt_self() metersPerSecond];
  Measurement<>.converted(to:)();

  Measurement.value.getter();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *(a1 + 16) = v8;
  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_SpeedAlert and conformance Apple_Workout_SpeedAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Apple_Workout_SpeedValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_SpeedValue(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

WorkoutKit::WKAnalyticsEvent::EventName_optional __swiftcall WKAnalyticsEvent.EventName.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WKAnalyticsEvent.EventName.init(rawValue:), v3);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t WKAnalyticsEvent.EventName.rawValue.getter()
{
  v1 = 0xD000000000000023;
  v2 = 0xD00000000000002ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000023;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WKAnalyticsEvent.EventName()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WKAnalyticsEvent.EventName(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WKAnalyticsEvent.EventName(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WKAnalyticsEvent.EventName(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000023;
  v3 = "ntrackerapp.sharing";
  v4 = 0xD00000000000002ELL;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000023;
    v3 = "ntrackerapp.insession.platters";
  }

  if (*v1)
  {
    v5 = "com.apple.WorkoutKit.api";
  }

  else
  {
    v2 = 0xD000000000000018;
    v5 = &unk_23B67ECE0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v2 = v4;
    v6 = v3;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

WorkoutKit::WKAnalyticsEvent::Key_optional __swiftcall WKAnalyticsEvent.Key.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WKAnalyticsEvent.Key.rawValue.getter()
{
  result = 0x7974697669746361;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      v2 = 1634891108;
      goto LABEL_17;
    case 3:
      result = 0x746E696F70646E65;
      break;
    case 4:
      result = 0x656D656761676E65;
      break;
    case 5:
      result = 0x657079546C616F67;
      break;
    case 6:
      v2 = 1633906540;
LABEL_17:
      result = v2 | 0x6E6F697400000000;
      break;
    case 7:
      result = 7889261;
      break;
    case 8:
      result = 0x63697274656DLL;
      break;
    case 9:
      result = 7235949;
      break;
    case 0xA:
      result = 3159408;
      break;
    case 0xB:
      result = 3160432;
      break;
    case 0xC:
      result = 3488112;
      break;
    case 0xD:
      result = 3750256;
      break;
    case 0xE:
      result = 0x4472657474616C70;
      break;
    case 0xF:
      result = 0x5472657474616C70;
      break;
    case 0x10:
      result = 0x72656469766F7270;
      break;
    case 0x11:
      result = 0xD000000000000014;
      break;
    case 0x12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WKAnalyticsEvent.Key()
{
  v0 = WKAnalyticsEvent.Key.rawValue.getter();
  v2 = v1;
  if (v0 == WKAnalyticsEvent.Key.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WKAnalyticsEvent.Key()
{
  Hasher.init(_seed:)();
  WKAnalyticsEvent.Key.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WKAnalyticsEvent.Key(uint64_t a1)
{
  WKAnalyticsEvent.Key.rawValue.getter();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WKAnalyticsEvent.Key(uint64_t a1)
{
  Hasher.init(_seed:)();
  WKAnalyticsEvent.Key.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WKAnalyticsEvent.Key@<X0>(uint64_t *a1@<X8>)
{
  result = WKAnalyticsEvent.Key.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

WorkoutKit::WKAnalyticsEvent::APIEndpoint_optional __swiftcall WKAnalyticsEvent.APIEndpoint.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v4 = rawValue;
  v5 = NSString.init(stringLiteral:)();
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {

    v8 = 0;
  }

  else
  {
    v9 = v4;
    v10 = NSString.init(stringLiteral:)();
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {

      v8 = 1;
    }

    else
    {
      v12 = v9;
      v13 = NSString.init(stringLiteral:)();
      v14 = static NSObject.== infix(_:_:)();

      if (v14)
      {

        v8 = 2;
      }

      else
      {
        v15 = v12;
        v16 = NSString.init(stringLiteral:)();
        v17 = static NSObject.== infix(_:_:)();

        if (v17)
        {

          v8 = 3;
        }

        else
        {
          v18 = v15;
          v19 = NSString.init(stringLiteral:)();
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {

            v8 = 4;
          }

          else
          {
            v21 = NSString.init(stringLiteral:)();
            v22 = static NSObject.== infix(_:_:)();

            if (v22)
            {
              v8 = 5;
            }

            else
            {
              v8 = 6;
            }
          }
        }
      }
    }
  }

  *v3 = v8;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WKAnalyticsEvent.APIEndpoint()
{
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v0 = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  v1 = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  v2 = static NSObject.== infix(_:_:)();

  return v2 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WKAnalyticsEvent.APIEndpoint()
{
  Hasher.init(_seed:)();
  v0 = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance WKAnalyticsEvent.APIEndpoint(uint64_t a1)
{
  v1 = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WKAnalyticsEvent.APIEndpoint(uint64_t a1)
{
  Hasher.init(_seed:)();
  v1 = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WKAnalyticsEvent.APIEndpoint@<X0>(uint64_t *a1@<X8>)
{
  result = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WKAnalyticsEvent.LocationType@<X0>(uint64_t *a5@<X8>)
{
  return protocol witness for RawRepresentable.rawValue.getter in conformance WKAnalyticsEvent.LocationType(a5);
}

{
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  result = NSString.init(stringLiteral:)();
  *a5 = result;
  return result;
}

void WKAnalyticsEvent.LocationType.init(rawValue:)(void *a1@<X0>, char *a6@<X8>)
{
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v8 = a1;
  v9 = NSString.init(stringLiteral:)();
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {

    v11 = 0;
  }

  else
  {
    v12 = NSString.init(stringLiteral:)();
    v13 = static NSObject.== infix(_:_:)();

    if (v13)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  *a6 = v11;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WKAnalyticsEvent.LocationType(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v8 = NSString.init(stringLiteral:)();
  v9 = NSString.init(stringLiteral:)();
  v10 = static NSObject.== infix(_:_:)();

  return v10 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WKAnalyticsEvent.LocationType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v6 = NSString.init(stringLiteral:)();
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance WKAnalyticsEvent.LocationType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v7 = NSString.init(stringLiteral:)();
  NSObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WKAnalyticsEvent.LocationType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Hasher.init(_seed:)();
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  v7 = NSString.init(stringLiteral:)();
  NSObject.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static WKAnalyticsEvent.metricPlatters(_:activityType:configurationType:duration:isIndoor:swimmingLocationType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  v57 = a8;
  v56 = a7;
  v55 = a6;
  v54 = a5;
  v53 = a4;
  v52 = a3;
  v51 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v50 = UUID.uuidString.getter();
  v58 = v15;
  (*(v12 + 8))(v14, v11);
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;
  v49 = 0x800000023B67EDA0;
  v48 = 0x800000023B67EE30;
  v47 = 0x800000023B67EE50;
  v59 = a1;

  v22 = 0;
  v46 = xmmword_23B67A7C0;
  while (v19)
  {
LABEL_9:
    v31 = __clz(__rbit64(v19)) | (v22 << 6);
    v32 = *(v59 + 56);
    v33 = (*(v59 + 48) + 16 * v31);
    v34 = v33[1];
    v60 = *v33;
    v35 = *(v32 + 8 * v31);
    v62 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = v46;
    *(inited + 32) = 0x7974697669746361;
    v61 = inited + 32;
    *(inited + 40) = 0xEC00000065707954;
    v37 = objc_allocWithZone(MEMORY[0x277CCACA8]);

    v38 = MEMORY[0x23EEA0A00](v51, v52);
    v39 = [v37 initWithString_];

    *(inited + 48) = v39;
    *(inited + 56) = 0xD000000000000011;
    *(inited + 64) = v49;
    v40 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v41 = MEMORY[0x23EEA0A00](v53, v54);
    v42 = [v40 initWithString_];

    *(inited + 72) = v42;
    *(inited + 80) = 0x6E6F697461727564;
    *(inited + 88) = 0xE800000000000000;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    *(inited + 104) = 0x4472657474616C70;
    *(inited + 112) = 0xEF6E6F6974617275;
    *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    *(inited + 128) = 0x5472657474616C70;
    *(inited + 136) = 0xEB00000000657079;
    v43 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v44 = MEMORY[0x23EEA0A00](v60, v34);

    v45 = [v43 initWithString_];

    *(inited + 144) = v45;
    strcpy((inited + 152), "locationType");
    *(inited + 165) = 0;
    *(inited + 166) = -5120;
    type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
    v19 &= v19 - 1;
    *(inited + 168) = NSString.init(stringLiteral:)();
    *(inited + 176) = 0xD000000000000014;
    *(inited + 184) = v48;
    v23 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v24 = MEMORY[0x23EEA0A00](v56, v57);
    v25 = [v23 initWithString_];

    *(inited + 192) = v25;
    *(inited + 200) = 0xD000000000000012;
    *(inited + 208) = v47;
    v26 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v27 = MEMORY[0x23EEA0A00](v50, v58);
    v28 = [v26 initWithString_];

    *(inited + 216) = v28;
    v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayDestroy();
    specialized static WKAnalyticsEvent.send(eventName:payload:)(&v62, v29);
  }

  while (1)
  {
    v30 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v30 >= v20)
    {
    }

    v19 = *(v16 + 8 * v30);
    ++v22;
    if (v19)
    {
      v22 = v30;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t static WKAnalyticsEvent.share(engagement:activityType:configurationType:goalType:)(void *a1, void *a2, void *a3, void *a4)
{
  v15 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B678DF0;
  *(inited + 32) = 0x656D656761676E65;
  *(inited + 40) = 0xEA0000000000746ELL;
  *(inited + 48) = a1;
  strcpy((inited + 56), "activityType");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = a2;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x800000023B67EDA0;
  *(inited + 96) = a3;
  *(inited + 104) = 0x657079546C616F67;
  *(inited + 112) = 0xE800000000000000;
  *(inited + 120) = a4;
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  specialized static WKAnalyticsEvent.send(eventName:payload:)(&v15, v13);
}

uint64_t static WKAnalyticsEvent.latency(metric:analytics:)(char *a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B6792F0;
  *(inited + 32) = 0x63697274656DLL;
  *(inited + 40) = 0xE600000000000000;
  type metadata accessor for NSString(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  *(inited + 48) = NSString.init(stringLiteral:)();
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, NSObject)(inited + 32);
  v5 = WKPercentileAnalytics.min.getter();
  v6 = 0x277CCA000uLL;
  v7 = &off_278B84000;
  if ((v8 & 1) == 0)
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, 7235949, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  }

  v11 = WKPercentileAnalytics.max.getter();
  if ((v12 & 1) == 0)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, 7889261, 0xE300000000000000, v14);
  }

  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  if (v15 >> 62)
  {
    goto LABEL_80;
  }

  if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while (1)
    {
      v16 = *(a2 + 16);
      if (v16 >> 62)
      {
        if (v16 < 0)
        {
          v54 = *(a2 + 16);
        }

        else
        {
          v54 = v16 & 0xFFFFFFFFFFFFFF8;
        }

        v17 = MEMORY[0x23EEA0C00](v54);
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v17)
      {
LABEL_20:

        v6 = 0x277CCA000;
        goto LABEL_22;
      }

      v18 = 0;
      v6 = v16 & 0xFFFFFFFFFFFFFF8;
      while ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x23EEA0B80](v18, v16);
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_14:
        if (*(v19 + 32) == 0.5)
        {

          v21 = *(v19 + 24);

          v6 = 0x277CCA000uLL;
          v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v7[113]];
          v23 = swift_isUniquelyReferenced_nonNull_native();
          v58 = v4;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 3159408, 0xE300000000000000, v23);
          goto LABEL_22;
        }

        ++v18;
        if (v20 == v17)
        {
          goto LABEL_20;
        }
      }

      v15 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18 < v15)
      {
        break;
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      if ((v15 & 0x8000000000000000) != 0)
      {
        v50 = v15;
      }

      else
      {
        v50 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      if (v16 < MEMORY[0x23EEA0C00](v50))
      {
        goto LABEL_22;
      }
    }

    v19 = *(v16 + 8 * v18 + 32);

    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_22:
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  if (v24 >> 62)
  {
    if (v24 < 0)
    {
      v51 = *(a2 + 16);
    }

    else
    {
      v51 = v24 & 0xFFFFFFFFFFFFFF8;
    }

    if (v25 < MEMORY[0x23EEA0C00](v51))
    {
      goto LABEL_39;
    }
  }

  else if (v25 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

  v16 = *(a2 + 16);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v55 = *(a2 + 16);
    }

    else
    {
      v55 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    v26 = MEMORY[0x23EEA0C00](v55);
  }

  else
  {
    v26 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    v27 = 0;
    v6 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x23EEA0B80](v27, v16);
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        v15 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27 >= v15)
        {
          goto LABEL_77;
        }

        v28 = *(v16 + 8 * v27 + 32);

        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }

      if (*(v28 + 32) == 0.9)
      {
        break;
      }

      ++v27;
      if (v29 == v26)
      {
        goto LABEL_37;
      }
    }

    v30 = *(v28 + 24);

    v6 = 0x277CCA000uLL;
    v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v7[113]];
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, 3160432, 0xE300000000000000, v32);
  }

  else
  {
LABEL_37:

    v6 = 0x277CCA000;
  }

LABEL_39:
  v33 = *(a2 + 16);
  v34 = *(a2 + 24);
  if (v33 >> 62)
  {
    if (v33 < 0)
    {
      v52 = *(a2 + 16);
    }

    else
    {
      v52 = v33 & 0xFFFFFFFFFFFFFF8;
    }

    if (v34 < MEMORY[0x23EEA0C00](v52))
    {
      goto LABEL_56;
    }
  }

  else if (v34 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

  v16 = *(a2 + 16);
  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v56 = *(a2 + 16);
    }

    else
    {
      v56 = v16 & 0xFFFFFFFFFFFFFF8;
    }

    v35 = MEMORY[0x23EEA0C00](v56);
  }

  else
  {
    v35 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v35)
  {
    v36 = 0;
    v6 = v16 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x23EEA0B80](v36, v16);
        v7 = (v36 + 1);
        if (__OFADD__(v36, 1))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v15 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v36 >= v15)
        {
          goto LABEL_78;
        }

        v37 = *(v16 + 8 * v36 + 32);

        v7 = (v36 + 1);
        if (__OFADD__(v36, 1))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }
      }

      if (*(v37 + 32) == 0.95)
      {
        break;
      }

      ++v36;
      if (v7 == v35)
      {
        goto LABEL_54;
      }
    }

    v38 = *(v37 + 24);

    v6 = 0x277CCA000uLL;
    v7 = &off_278B84000;
    v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, 3488112, 0xE300000000000000, v40);
  }

  else
  {
LABEL_54:

    v7 = &off_278B84000;
    v6 = 0x277CCA000;
  }

LABEL_56:
  v41 = *(a2 + 16);
  v42 = *(a2 + 24);
  if (v41 >> 62)
  {
    if (v41 < 0)
    {
      v53 = *(a2 + 16);
    }

    else
    {
      v53 = v41 & 0xFFFFFFFFFFFFFF8;
    }

    if (v42 < MEMORY[0x23EEA0C00](v53))
    {
      goto LABEL_73;
    }
  }

  else if (v42 < *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_73;
  }

  a2 = *(a2 + 16);
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v57 = a2;
    }

    else
    {
      v57 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = MEMORY[0x23EEA0C00](v57);
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16)
  {
    v43 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x23EEA0B80](v43, a2);
        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_70;
        }
      }

      else
      {
        v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v43 >= v15)
        {
          goto LABEL_79;
        }

        v44 = *(a2 + 8 * v43 + 32);

        v45 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }
      }

      if (*(v44 + 32) == 0.99)
      {
        break;
      }

      ++v43;
      if (v45 == v16)
      {
        goto LABEL_71;
      }
    }

    v46 = *(v44 + 24);

    v47 = [objc_allocWithZone(*(v6 + 2992)) v7[113]];
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, 3750256, 0xE300000000000000, v48);
  }

  else
  {
LABEL_71:
  }

LABEL_73:
  if (*(v4 + 16) >= 2uLL)
  {
    LOBYTE(v58) = 3;
    specialized static WKAnalyticsEvent.send(eventName:payload:)(&v58, v4);
  }
}

void closure #1 in static WKAnalyticsEvent.send(eventName:payload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x23EEA0A00](a1, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = partial apply for closure #1 in closure #1 in static WKAnalyticsEvent.send(eventName:payload:);
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v7[3] = &block_descriptor_40;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t specialized static WKAnalyticsEvent.send(eventName:payload:)(_BYTE *a1, uint64_t a2)
{
  v28 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0xD000000000000018;
  v14 = &unk_23B67ECE0;
  v15 = "ntrackerapp.sharing";
  v16 = 0xD00000000000002ELL;
  if (*a1 != 2)
  {
    v16 = 0xD000000000000023;
    v15 = "ntrackerapp.insession.platters";
  }

  if (*a1)
  {
    v13 = 0xD000000000000023;
    v14 = "com.apple.WorkoutKit.api";
  }

  if (*a1 <= 1u)
  {
    v17 = v13;
  }

  else
  {
    v17 = v16;
  }

  if (*a1 <= 1u)
  {
    v18 = v14;
  }

  else
  {
    v18 = v15;
  }

  v19 = v18 | 0x8000000000000000;
  v20 = [objc_opt_self() sharedConnection];
  if (v20 && (v21 = v20, v22 = [v20 isHealthDataSubmissionAllowed], v21, (v22 & 1) != 0))
  {
    type metadata accessor for NSString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    (*(v10 + 104))(v12, *MEMORY[0x277D851D0], v9);
    v23 = static OS_dispatch_queue.global(qos:)();
    (*(v10 + 8))(v12, v9);
    v24 = swift_allocObject();
    v24[2] = v17;
    v24[3] = v19;
    v24[4] = v28;
    aBlock[4] = partial apply for closure #1 in static WKAnalyticsEvent.send(eventName:payload:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_2;
    v25 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v32 = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x23EEA0AF0](0, v8, v5, v25);
    _Block_release(v25);

    (*(v31 + 8))(v5, v3);
    (*(v29 + 8))(v8, v30);
  }

  else
  {
  }
}

uint64_t specialized static WKAnalyticsEvent.api(bundleId:endpoint:)(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B677F60;
  *(inited + 32) = 0x746E696F70646E65;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = WKAnalyticsEvent.APIEndpoint.rawValue.getter();
  *(inited + 56) = 0x72656469766F7270;
  *(inited + 64) = 0xE800000000000000;
  v5 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v6 = MEMORY[0x23EEA0A00](a1, a2);
  v7 = [v5 initWithString_];

  *(inited + 72) = v7;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  swift_arrayDestroy();
  specialized static WKAnalyticsEvent.send(eventName:payload:)(&v10, v8);
}

uint64_t outlined destroy of (String, NSObject)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type WKAnalyticsEvent.EventName and conformance WKAnalyticsEvent.EventName()
{
  result = lazy protocol witness table cache variable for type WKAnalyticsEvent.EventName and conformance WKAnalyticsEvent.EventName;
  if (!lazy protocol witness table cache variable for type WKAnalyticsEvent.EventName and conformance WKAnalyticsEvent.EventName)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WKAnalyticsEvent.EventName and conformance WKAnalyticsEvent.EventName);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WKAnalyticsEvent.Key and conformance WKAnalyticsEvent.Key()
{
  result = lazy protocol witness table cache variable for type WKAnalyticsEvent.Key and conformance WKAnalyticsEvent.Key;
  if (!lazy protocol witness table cache variable for type WKAnalyticsEvent.Key and conformance WKAnalyticsEvent.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WKAnalyticsEvent.Key and conformance WKAnalyticsEvent.Key);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WKAnalyticsEvent.APIEndpoint and conformance WKAnalyticsEvent.APIEndpoint()
{
  result = lazy protocol witness table cache variable for type WKAnalyticsEvent.APIEndpoint and conformance WKAnalyticsEvent.APIEndpoint;
  if (!lazy protocol witness table cache variable for type WKAnalyticsEvent.APIEndpoint and conformance WKAnalyticsEvent.APIEndpoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WKAnalyticsEvent.APIEndpoint and conformance WKAnalyticsEvent.APIEndpoint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WKAnalyticsEvent.LocationType and conformance WKAnalyticsEvent.LocationType()
{
  result = lazy protocol witness table cache variable for type WKAnalyticsEvent.LocationType and conformance WKAnalyticsEvent.LocationType;
  if (!lazy protocol witness table cache variable for type WKAnalyticsEvent.LocationType and conformance WKAnalyticsEvent.LocationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WKAnalyticsEvent.LocationType and conformance WKAnalyticsEvent.LocationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WKAnalyticsEvent.LatencyMetric and conformance WKAnalyticsEvent.LatencyMetric()
{
  result = lazy protocol witness table cache variable for type WKAnalyticsEvent.LatencyMetric and conformance WKAnalyticsEvent.LatencyMetric;
  if (!lazy protocol witness table cache variable for type WKAnalyticsEvent.LatencyMetric and conformance WKAnalyticsEvent.LatencyMetric)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WKAnalyticsEvent.LatencyMetric and conformance WKAnalyticsEvent.LatencyMetric);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKAnalyticsEvent(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WKAnalyticsEvent(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for WKAnalyticsEvent.EventName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WKAnalyticsEvent.EventName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKAnalyticsEvent.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WKAnalyticsEvent.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKAnalyticsEvent.APIEndpoint(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WKAnalyticsEvent.APIEndpoint(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WKAnalyticsEvent.LocationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WKAnalyticsEvent.LocationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t type metadata accessor for NSString(uint64_t a1, unint64_t *a2, void *a3)
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

Swift::Int StateError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance StateError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StateError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type StateError and conformance StateError()
{
  result = lazy protocol witness table cache variable for type StateError and conformance StateError;
  if (!lazy protocol witness table cache variable for type StateError and conformance StateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateError and conformance StateError);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StateError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StateError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Apple_Workout_CadenceValue.measurement.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for Apple_Workout_TimeValue(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v31 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v29 = &v28 - v14;
  v15 = *(type metadata accessor for Apple_Workout_CadenceValue(0) + 24);
  v30 = v2;
  outlined init with copy of Apple_Workout_DistanceValue?(v2 + v15, v5, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  v16 = *(v7 + 48);
  if (v16(v5, 1, v6) == 1)
  {
    *v9 = 0;
    v9[8] = 1;
    *(v9 + 2) = 0;
    UnknownStorage.init()();
    if (v16(v5, 1, v6) != 1)
    {
      outlined destroy of Apple_Workout_DistanceValue?(v5, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    }
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_0(v5, v9, type metadata accessor for Apple_Workout_TimeValue);
  }

  if (v9[8] != 1)
  {
    goto LABEL_8;
  }

  v17 = *v9;
  if (*v9 > 1)
  {
    if (v17 == 2)
    {
      v20 = &selRef_minutes;
    }

    else
    {
      v20 = &selRef_hours;
    }
  }

  else
  {
    if (!v17)
    {
LABEL_8:
      lazy protocol witness table accessor for type ImportError and conformance ImportError();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
      return outlined destroy of Apple_Workout_DistanceValue(v9, type metadata accessor for Apple_Workout_TimeValue);
    }

    v20 = &selRef_seconds;
  }

  v21 = [objc_opt_self() *v20];
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
  Measurement.init(value:unit:)();
  outlined destroy of Apple_Workout_DistanceValue(v9, type metadata accessor for Apple_Workout_TimeValue);
  v22 = [objc_opt_self() minutes];
  v23 = v29;
  Measurement<>.converted(to:)();

  v24 = *(v31 + 8);
  v24(v12, v10);
  Measurement.value.getter();
  v25 = [objc_allocWithZone(MEMORY[0x277CCADC0]) initWithCoefficient_];
  v26 = objc_allocWithZone(MEMORY[0x277CCAE00]);
  v27 = MEMORY[0x23EEA0A00](0x696D2F746E756F63, 0xE90000000000006ELL);
  [v26 initWithSymbol:v27 converter:v25];

  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitFrequency, 0x277CCAE00);
  Measurement.init(value:unit:)();
  return (v24)(v23, v10);
}

uint64_t Apple_Workout_SpeedValue.measurement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v48 - v4;
  v5 = type metadata accessor for Apple_Workout_TimeValue(0);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = (&v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, "v|");
  v50 = *(v7 - 8);
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v48 - v12;
  v14 = type metadata accessor for Apple_Workout_DistanceValue(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v19 = *(v18 - 8);
  v57 = v18;
  v58 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v59 = &v48 - v23;
  v24 = type metadata accessor for Apple_Workout_SpeedValue(0);
  v25 = *(v24 + 20);
  v53 = v2;
  outlined init with copy of Apple_Workout_DistanceValue?(v2 + v25, v13, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
  v26 = *(v15 + 48);
  if (v26(v13, 1, v14) == 1)
  {
    *v17 = 0;
    v17[8] = 1;
    *(v17 + 2) = 0;
    UnknownStorage.init()();
    if (v26(v13, 1, v14) != 1)
    {
      outlined destroy of Apple_Workout_DistanceValue?(v13, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMd, &_s10WorkoutKit06Apple_A14_DistanceValueVSgMR);
    }
  }

  else
  {
    _s10WorkoutKit06Apple_A10_TimeValueVWObTm_0(v13, v17, type metadata accessor for Apple_Workout_DistanceValue);
  }

  v27 = v60;
  Apple_Workout_DistanceValue.measurement.getter();
  result = outlined destroy of Apple_Workout_DistanceValue(v17, type metadata accessor for Apple_Workout_DistanceValue);
  v29 = v61;
  if (!v27)
  {
    v30 = [objc_opt_self() meters];
    v31 = v57;
    Measurement<>.converted(to:)();

    v32 = v58 + 8;
    v60 = *(v58 + 8);
    v60(v21, v31);
    outlined init with copy of Apple_Workout_DistanceValue?(v53 + *(v24 + 24), v29, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
    v33 = v55;
    v34 = *(v54 + 48);
    if (v34(v29, 1, v55) == 1)
    {
      v35 = v56;
      *v56 = 0;
      *(v35 + 8) = 1;
      v35[2] = 0;
      UnknownStorage.init()();
      if (v34(v29, 1, v33) != 1)
      {
        outlined destroy of Apple_Workout_DistanceValue?(v29, &_s10WorkoutKit06Apple_A10_TimeValueVSgMd, &_s10WorkoutKit06Apple_A10_TimeValueVSgMR);
      }
    }

    else
    {
      v35 = v56;
      _s10WorkoutKit06Apple_A10_TimeValueVWObTm_0(v29, v56, type metadata accessor for Apple_Workout_TimeValue);
    }

    if (*(v35 + 8) != 1)
    {
      goto LABEL_13;
    }

    v36 = *v35;
    if (*v35 > 1)
    {
      v58 = v32;
      if (v36 == 2)
      {
        v38 = &selRef_minutes;
      }

      else
      {
        v38 = &selRef_hours;
      }
    }

    else
    {
      if (!v36)
      {
LABEL_13:
        lazy protocol witness table accessor for type ImportError and conformance ImportError();
        swift_allocError();
        *v37 = 0;
        swift_willThrow();
        outlined destroy of Apple_Workout_DistanceValue(v35, type metadata accessor for Apple_Workout_TimeValue);
        return (v60)(v59, v31);
      }

      v58 = v32;
      v38 = &selRef_seconds;
    }

    v39 = [objc_opt_self() *v38];
    type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    v40 = v48;
    Measurement.init(value:unit:)();
    outlined destroy of Apple_Workout_DistanceValue(v35, type metadata accessor for Apple_Workout_TimeValue);
    v41 = [objc_opt_self() seconds];
    v42 = v49;
    v43 = v51;
    Measurement<>.converted(to:)();

    v44 = *(v50 + 8);
    v44(v40, v43);
    v45 = v57;
    v46 = v59;
    Measurement.value.getter();
    Measurement.value.getter();
    v47 = [objc_opt_self() metersPerSecond];
    type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitSpeed, 0x277CCAE40);
    Measurement.init(value:unit:)();
    v44(v42, v43);
    return (v60)(v46, v45);
  }

  return result;
}

uint64_t Apple_Workout_DistanceValue.measurement.getter()
{
  if (*(v0 + 8) != 1)
  {
    goto LABEL_6;
  }

  v1 = *v0;
  if (*v0 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = [objc_opt_self() meters];
      }

      else
      {
        v2 = [objc_opt_self() kilometers];
      }

      goto LABEL_13;
    }

LABEL_6:
    lazy protocol witness table accessor for type ImportError and conformance ImportError();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  if (v1 == 3)
  {
    v5 = [objc_opt_self() feet];
    type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    return Measurement.init(value:unit:)();
  }

  if (v1 == 4)
  {
    v2 = [objc_opt_self() yards];
  }

  else
  {
    v2 = [objc_opt_self() miles];
  }

LABEL_13:
  v6 = v2;
  type metadata accessor for NSUnitLength(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
  return Measurement.init(value:unit:)();
}

uint64_t outlined init with copy of Apple_Workout_DistanceValue?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_DistanceValue?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_DistanceValue(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10WorkoutKit06Apple_A10_TimeValueVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for NSUnitLength(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t Apple_Workout_WorkoutStep.workoutKitRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = type metadata accessor for Apple_Workout_WorkoutAlert(0);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - v8;
  v10 = type metadata accessor for WorkoutStep(0);
  MEMORY[0x28223BE20](v10);
  v53 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  v15 = type metadata accessor for Apple_Workout_WorkoutGoal(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WorkoutGoal(0);
  MEMORY[0x28223BE20](v19 - 8);
  v57 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for Apple_Workout_WorkoutStep(0);
  v51 = v2;
  v52 = v21;
  outlined init with copy of Apple_Workout_WorkoutGoal?(v2 + *(v21 + 20), v14, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    *v18 = 0;
    v18[8] = 1;
    v23 = *(v15 + 20);
    v24 = type metadata accessor for Apple_Workout_WorkoutGoal.OneOf_GoalValue(0);
    (*(*(v24 - 8) + 56))(&v18[v23], 1, 1, v24);
    UnknownStorage.init()();
    if (v22(v14, 1, v15) != 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal?(v14, &_s10WorkoutKit06Apple_a1_A4GoalVSgMd, &_s10WorkoutKit06Apple_a1_A4GoalVSgMR);
    }
  }

  else
  {
    _s10WorkoutKit0A4StepVWObTm_1(v14, v18, type metadata accessor for Apple_Workout_WorkoutGoal);
  }

  v25 = v57;
  v26 = v54;
  Apple_Workout_WorkoutGoal.workoutKitRepresentation.getter(v57);
  result = outlined destroy of Apple_Workout_WorkoutGoal(v18, type metadata accessor for Apple_Workout_WorkoutGoal);
  if (!v26)
  {
    v28 = v53;
    outlined init with copy of WorkoutGoal(v25, v53);
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    v29 = v28 + *(v10 + 20);
    *(v29 + 32) = 0;
    *v29 = 0u;
    *(v29 + 16) = 0u;
    v30 = (v28 + *(v10 + 24));
    *v30 = 0;
    v30[1] = 0;
    v44 = v29;
    v45 = v30;
    outlined assign with take of WorkoutAlert?(v55, v29);
    v31 = v51;
    v32 = *(v52 + 24);
    outlined init with copy of Apple_Workout_WorkoutGoal?(v51 + v32, v9, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
    v33 = v50;
    v54 = *(v49 + 48);
    v34 = v54(v9, 1, v50);
    outlined destroy of Apple_Workout_WorkoutGoal?(v9, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
    if (v34 == 1)
    {
      outlined destroy of Apple_Workout_WorkoutGoal(v57, type metadata accessor for WorkoutGoal);
    }

    else
    {
      v35 = v46;
      outlined init with copy of Apple_Workout_WorkoutGoal?(v31 + v32, v46, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
      v36 = v54;
      if (v54(v35, 1, v33) == 1)
      {
        v37 = v47;
        *v47 = 0;
        *(v37 + 8) = 1;
        v37[2] = 0;
        *(v37 + 24) = 1;
        v38 = *(v33 + 24);
        v39 = type metadata accessor for Apple_Workout_WorkoutAlert.OneOf_AlertValue(0);
        (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
        UnknownStorage.init()();
        if (v36(v35, 1, v33) != 1)
        {
          outlined destroy of Apple_Workout_WorkoutGoal?(v35, &_s10WorkoutKit06Apple_a1_A5AlertVSgMd, &_s10WorkoutKit06Apple_a1_A5AlertVSgMR);
        }
      }

      else
      {
        v37 = v47;
        _s10WorkoutKit0A4StepVWObTm_1(v35, v47, type metadata accessor for Apple_Workout_WorkoutAlert);
      }

      Apple_Workout_WorkoutAlert.workoutKitRepresentation.getter(v55);
      outlined destroy of Apple_Workout_WorkoutGoal(v37, type metadata accessor for Apple_Workout_WorkoutAlert);
      outlined destroy of Apple_Workout_WorkoutGoal(v57, type metadata accessor for WorkoutGoal);
      outlined assign with take of WorkoutAlert?(v55, v44);
    }

    v40 = (v31 + *(v52 + 28));
    v41 = v40[1];
    if (v41)
    {
      v42 = v45;
      *v45 = *v40;
      v42[1] = v41;
    }

    _s10WorkoutKit0A4StepVWObTm_1(v53, v48, type metadata accessor for WorkoutStep);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutGoal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutGoal(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of WorkoutAlert?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A5Alert_pSgMd, &_s10WorkoutKit0A5Alert_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_WorkoutGoal?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_WorkoutGoal?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_WorkoutGoal(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10WorkoutKit0A4StepVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t one-time initialization function for default(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t static WorkoutKitLog.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t getEnumTagSinglePayload for WorkoutKitLog(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WorkoutKitLog(_WORD *result, int a2, int a3)
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

const char *WorkoutKitFeatures.feature.getter()
{
  v1 = "PoolSwimmingCustomWorkouts";
  v2 = "OpenWaterSwimmingCustomWorkouts";
  if (*v0 != 2)
  {
    v2 = "IntervalPaceAlertIndoorRunning";
  }

  if (*v0)
  {
    v1 = "WorkoutPlanRoute";
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

Swift::Int WorkoutKitFeatures.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutKitFeatures()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutKitFeatures(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance WorkoutKitFeatures()
{
  v1 = "PoolSwimmingCustomWorkouts";
  v2 = "OpenWaterSwimmingCustomWorkouts";
  if (*v0 != 2)
  {
    v2 = "IntervalPaceAlertIndoorRunning";
  }

  if (*v0)
  {
    v1 = "WorkoutPlanRoute";
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

uint64_t getEnumTagSinglePayload for WorkoutKitFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutKitFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t HKQuantity.lengthMeasurement.getter()
{
  type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
  v28 = v0;
  v1 = [v0 _unit];
  v2 = objc_opt_self();
  v3 = [v2 meterUnitWithMetricPrefix_];
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {
    v5 = [v2 meterUnitWithMetricPrefix_];
    [v28 doubleValueForUnit_];

    v6 = [objc_opt_self() kilometers];
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    return Measurement.init(value:unit:)();
  }

  v8 = [v0 _unit];
  v9 = [v2 footUnit];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v11 = [v2 footUnit];
    [v28 doubleValueForUnit_];

    v12 = [objc_opt_self() feet];
LABEL_10:
    v21 = v12;
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    return Measurement.init(value:unit:)();
  }

  v13 = [v0 _unit];
  v14 = [v2 yardUnit];
  v15 = static NSObject.== infix(_:_:)();

  if (v15)
  {
    v16 = [v2 yardUnit];
    [v28 doubleValueForUnit_];

    v12 = [objc_opt_self() yards];
    goto LABEL_10;
  }

  v17 = [v0 _unit];
  v18 = [v2 mileUnit];
  v19 = static NSObject.== infix(_:_:)();

  if (v19)
  {
    v20 = [v2 mileUnit];
    [v28 doubleValueForUnit_];

    v12 = [objc_opt_self() miles];
    goto LABEL_10;
  }

  v22 = [v2 meterUnit];
  v23 = [v28 isCompatibleWithUnit_];

  if (v23)
  {
    v24 = [v2 meterUnit];
    [v28 doubleValueForUnit_];

    v25 = [objc_opt_self() meters];
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitLength, 0x277CCAE20);
    return Measurement.init(value:unit:)();
  }

  v26 = [v28 _unit];
  lazy protocol witness table accessor for type ImportError and conformance ImportError();
  swift_allocError();
  *v27 = v26;
  return swift_willThrow();
}

uint64_t HKQuantity.durationMeasurement.getter()
{
  v1 = v0;
  type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
  v2 = [v0 _unit];
  v3 = objc_opt_self();
  v4 = [v3 hourUnit];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = [v3 hourUnit];
    [v1 doubleValueForUnit_];

    v7 = [objc_opt_self() hours];
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    return Measurement.init(value:unit:)();
  }

  v8 = [v0 _unit];
  v9 = [v3 minuteUnit];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v11 = [v3 minuteUnit];
    [v1 doubleValueForUnit_];

    v12 = [objc_opt_self() minutes];
LABEL_7:
    v16 = v12;
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitDuration, 0x277CCADD0);
    return Measurement.init(value:unit:)();
  }

  v13 = [v3 secondUnit];
  v14 = [v1 isCompatibleWithUnit_];

  if (v14)
  {
    v15 = [v3 secondUnit];
    [v1 doubleValueForUnit_];

    v12 = [objc_opt_self() seconds];
    goto LABEL_7;
  }

  v18 = [v1 0x278B84BEFLL];
  lazy protocol witness table accessor for type ImportError and conformance ImportError();
  swift_allocError();
  *v19 = v18;
  return swift_willThrow();
}

uint64_t HKQuantity.energyMeasurement.getter()
{
  v1 = v0;
  type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for HKUnit, 0x277CCDAB0);
  v2 = [v0 _unit];
  v3 = objc_opt_self();
  v4 = [v3 jouleUnitWithMetricPrefix_];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = [v3 jouleUnitWithMetricPrefix_];
    [v1 doubleValueForUnit_];

    v7 = [objc_opt_self() kilojoules];
LABEL_5:
    v11 = v7;
    type metadata accessor for HKUnit(0, &lazy cache variable for type metadata for NSUnitEnergy, 0x277CCADF8);
    return Measurement.init(value:unit:)();
  }

  v8 = [v3 kilocalorieUnit];
  v9 = [v1 isCompatibleWithUnit_];

  if (v9)
  {
    v10 = [v3 kilocalorieUnit];
    [v1 doubleValueForUnit_];

    v7 = [objc_opt_self() kilocalories];
    goto LABEL_5;
  }

  v13 = [v1 _unit];
  lazy protocol witness table accessor for type ImportError and conformance ImportError();
  swift_allocError();
  *v14 = v13;
  return swift_willThrow();
}

uint64_t type metadata accessor for HKUnit(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t ScheduledWorkoutPlan.init(_:scheduledDate:lastCompletedDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ScheduledWorkoutPlan(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  (*(v11 + 56))(a4 + v9, 1, 1, v10);
  _s10WorkoutKit0A4PlanVWObTm_0(a1, a4, type metadata accessor for WorkoutPlan);
  (*(v11 + 32))(a4 + *(v8 + 20), a2, v10);
  return outlined assign with take of Date?(a3, a4 + v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t type metadata accessor for ScheduledWorkoutPlan(uint64_t a1)
{
  result = type metadata singleton initialization cache for ScheduledWorkoutPlan;
  if (!type metadata singleton initialization cache for ScheduledWorkoutPlan)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ScheduledWorkoutPlan.init(_:date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a1;
  v36 = type metadata accessor for DateComponents();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Calendar();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for Date();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  v34 = a2;
  Calendar.date(from:)();
  (*(v7 + 8))(v9, v6);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    outlined destroy of Date?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v37 = 0xD00000000000002ELL;
    v38 = 0x800000023B67F980;
    v25 = v32;
    v26 = v33;
    v27 = v36;
    (*(v33 + 16))(v32, v34, v36);
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    (*(v26 + 8))(v25, v27);
    MEMORY[0x23EEA0A50](v28, v30);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v33 + 8))(v34, v36);
    v20 = *(v17 + 32);
    v20(v19, v15, v16);
    v21 = type metadata accessor for ScheduledWorkoutPlan(0);
    v20((a3 + *(v21 + 20)), v19, v16);
    v22 = *(v17 + 56);
    v22(v12, 1, 1, v16);
    v23 = *(v21 + 24);
    v22((a3 + v23), 1, 1, v16);
    _s10WorkoutKit0A4PlanVWObTm_0(v35, a3, type metadata accessor for WorkoutPlan);
    return outlined assign with take of Date?(v12, a3 + v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

uint64_t ScheduledWorkoutPlan.complete.setter(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  if (a1)
  {
    static Date.now.getter();
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    v7 = type metadata accessor for ScheduledWorkoutPlan(0);
    return outlined assign with take of Date?(v5, v1 + *(v7 + 24), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v9 = *(type metadata accessor for ScheduledWorkoutPlan(0) + 24);
    outlined destroy of Date?(v1 + v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 56);

    return v11(v1 + v9, 1, 1, v10);
  }
}

uint64_t ScheduledWorkoutPlan.isEquivalent(to:)(uint64_t a1)
{
  if (!specialized static WorkoutPlan.== infix(_:_:)(v1, a1))
  {
    return 0;
  }

  type metadata accessor for ScheduledWorkoutPlan(0);

  return static Date.== infix(_:_:)();
}

BOOL ScheduledWorkoutPlan.complete.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for ScheduledWorkoutPlan(0);
  outlined init with copy of Date?(v0 + *(v4 + 24), v3);
  v5 = type metadata accessor for Date();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  outlined destroy of Date?(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v6;
}

uint64_t ScheduledWorkoutPlan.dataRepresentation(as:)(char *a1)
{
  v18 = type metadata accessor for JSONEncodingOptions();
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  v12 = *a1;
  v17 = v1;
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan, &protocol conformance descriptor for Apple_Workout_Internal_ScheduledWorkoutPlan);
  if (v12)
  {
    v13 = v6;
    static Message.with(_:)();
    if (!v2)
    {
      JSONEncodingOptions.init()();
      v13 = Message.jsonUTF8Data(options:)();
      (*(v16 + 8))(v5, v18);
      outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v8, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
    }
  }

  else
  {
    v13 = v6;
    static Message.with(_:)();
    if (!v2)
    {
      v13 = Message.serializedData(partial:)();
      outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v11, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
    }
  }

  return v13;
}

uint64_t static ScheduledWorkoutPlan.importFromData(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = type metadata accessor for JSONDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a19_Internal_ScheduledA4PlanVSgMd, &_s10WorkoutKit06Apple_a19_Internal_ScheduledA4PlanVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v26 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v25 - v18;
  v32 = a1;
  v33 = a2;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Apple_Workout_Internal_ScheduledWorkoutPlan and conformance Apple_Workout_Internal_ScheduledWorkoutPlan, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan, &protocol conformance descriptor for Apple_Workout_Internal_ScheduledWorkoutPlan);
  v20 = v34;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v20)
  {

    v21 = *(v15 + 56);
    v21(v13, 1, 1, v14);
    outlined destroy of Date?(v13, &_s10WorkoutKit06Apple_a19_Internal_ScheduledA4PlanVSgMd, &_s10WorkoutKit06Apple_a19_Internal_ScheduledA4PlanVSgMR);
    outlined copy of Data._Representation(a1, a2);
    JSONDecodingOptions.init()();
    Message.init(jsonUTF8Data:options:)();
    v21(v10, 0, 1, v14);
    v22 = v26;
    _s10WorkoutKit0A4PlanVWObTm_0(v10, v26, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
    Apple_Workout_Internal_ScheduledWorkoutPlan.workoutKitRepresentation.getter(v27);
    v23 = v22;
  }

  else
  {
    (*(v15 + 56))(v13, 0, 1, v14);
    _s10WorkoutKit0A4PlanVWObTm_0(v13, v19, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
    Apple_Workout_Internal_ScheduledWorkoutPlan.workoutKitRepresentation.getter(v27);
    v23 = v19;
  }

  return outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v23, type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan);
}

uint64_t ScheduledWorkoutPlan.date.getter()
{
  v0 = type metadata accessor for TimeZone();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.current.getter();
  type metadata accessor for ScheduledWorkoutPlan(0);
  Calendar.dateComponents(in:from:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t key path getter for ScheduledWorkoutPlan.date : ScheduledWorkoutPlan(uint64_t a1)
{
  v1 = type metadata accessor for TimeZone();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.current.getter();
  type metadata accessor for ScheduledWorkoutPlan(0);
  Calendar.dateComponents(in:from:)();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t key path setter for ScheduledWorkoutPlan.date : ScheduledWorkoutPlan(uint64_t a1)
{
  v2 = type metadata accessor for DateComponents();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return ScheduledWorkoutPlan.date.setter(v5);
}

uint64_t ScheduledWorkoutPlan.date.setter(uint64_t a1)
{
  v2 = type metadata accessor for DateComponents();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v22[0] = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.autoupdatingCurrent.getter();
  Calendar.date(from:)();
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    outlined destroy of Date?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);

    v23 = 0xD00000000000002ELL;
    v24 = 0x800000023B67F980;
    v18 = v22[0];
    (*(v3 + 16))(v22[0], a1, v2);
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v3 + 8))(v18, v2);
    MEMORY[0x23EEA0A50](v19, v21);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v3 + 8))(a1, v2);
    (*(v13 + 32))(v15, v11, v12);
    v16 = type metadata accessor for ScheduledWorkoutPlan(0);
    return (*(v13 + 40))(v22[1] + *(v16 + 20), v15, v12);
  }

  return result;
}

void (*ScheduledWorkoutPlan.date.modify(void *a1))(uint64_t a1, char a2)
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
  v6 = type metadata accessor for TimeZone();
  v7 = *(v6 - 8);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v6 - 8) + 64));
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Calendar();
  v11 = *(v10 - 8);
  if (v3)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(*(v10 - 8) + 64));
  }

  v13 = v12;
  v5[2] = v12;
  v14 = type metadata accessor for DateComponents();
  v5[3] = v14;
  v15 = *(v14 - 8);
  v5[4] = v15;
  v16 = *(v15 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v5[6] = v17;
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.current.getter();
  type metadata accessor for ScheduledWorkoutPlan(0);
  Calendar.dateComponents(in:from:)();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  return ScheduledWorkoutPlan.date.modify;
}

void ScheduledWorkoutPlan.date.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  if (a2)
  {
    v5 = v2[3];
    v6 = v2[4];
    v8 = v2[1];
    v7 = v2[2];
    (*(v6 + 16))(*(*a1 + 40), v4, v5);
    ScheduledWorkoutPlan.date.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = v2[1];
    v7 = v2[2];
    ScheduledWorkoutPlan.date.setter(*(*a1 + 48));
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t key path getter for ScheduledWorkoutPlan.complete : ScheduledWorkoutPlan@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for ScheduledWorkoutPlan(0);
  outlined init with copy of Date?(a1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Date();
  LOBYTE(a1) = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  result = outlined destroy of Date?(v6, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *a2 = a1;
  return result;
}

uint64_t key path setter for ScheduledWorkoutPlan.complete : ScheduledWorkoutPlan(_BYTE *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  if (*a1 == 1)
  {
    static Date.now.getter();
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    v8 = type metadata accessor for ScheduledWorkoutPlan(0);
    return outlined assign with take of Date?(v6, a2 + *(v8 + 24), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v10 = *(type metadata accessor for ScheduledWorkoutPlan(0) + 24);
    outlined destroy of Date?(a2 + v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2 + v10, 1, 1, v11);
  }
}

void (*ScheduledWorkoutPlan.complete.modify(void *a1))(uint64_t **a1)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[2] = v7;
  v9 = *(type metadata accessor for ScheduledWorkoutPlan(0) + 24);
  *(v5 + 10) = v9;
  outlined init with copy of Date?(v1 + v9, v8);
  v10 = type metadata accessor for Date();
  v5[3] = v10;
  v11 = *(v10 - 8);
  v5[4] = v11;
  v12 = (*(v11 + 48))(v8, 1, v10) != 1;
  outlined destroy of Date?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v5 + 44) = v12;
  return ScheduledWorkoutPlan.complete.modify;
}

void ScheduledWorkoutPlan.complete.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = ((*a1)[4] + 56);
  v4 = *(*a1 + 10);
  if (*(*a1 + 44))
  {
    v6 = *v1;
    v5 = *(v1 + 1);
    static Date.now.getter();
    (*v3)(v5, 0, 1, v2);
    outlined assign with take of Date?(v5, v6 + v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v7 = *v1;
    outlined destroy of Date?(*v1 + v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*v3)(v7 + v4, 1, 1, v2);
  }

  v8 = *(v1 + 1);
  free(*(v1 + 2));
  free(v8);

  free(v1);
}

uint64_t ScheduledWorkoutPlan.scheduledDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ScheduledWorkoutPlan(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ScheduledWorkoutPlan.scheduledDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ScheduledWorkoutPlan(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ScheduledWorkoutPlan.lastCompletedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ScheduledWorkoutPlan(0) + 24);

  return outlined init with copy of Date?(v3, a1);
}

void ScheduledWorkoutPlan.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  WorkoutPlan.hash(into:)(a1);
  v10 = type metadata accessor for ScheduledWorkoutPlan(0);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  outlined init with copy of Date?(v1 + *(v10 + 24), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v4 + 8))(v6, v3);
  }
}

Swift::Int ScheduledWorkoutPlan.hashValue.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11[-1] - v6;
  Hasher.init(_seed:)();
  WorkoutPlan.hash(into:)(v11);
  v8 = type metadata accessor for ScheduledWorkoutPlan(0);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  outlined init with copy of Date?(v0 + *(v8 + 24), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ScheduledWorkoutPlan(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v12 - v10;
  WorkoutPlan.hash(into:)(a1);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  outlined init with copy of Date?(v2 + *(a2 + 24), v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v8, v5);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScheduledWorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13[-1] - v9;
  Hasher.init(_seed:)();
  WorkoutPlan.hash(into:)(v13);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  outlined init with copy of Date?(v2 + *(a2 + 24), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ScheduledWorkoutPlan.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C756465686373;
  v4 = 0xED00006574614464;
  v5 = 0x800000023B67EE80;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000023B67EE80;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7A696C6169726573;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEE006E616C506465;
  }

  v8 = 0x656C756465686373;
  if (*a2 == 1)
  {
    v5 = 0xED00006574614464;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7A696C6169726573;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEE006E616C506465;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ScheduledWorkoutPlan.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ScheduledWorkoutPlan.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ScheduledWorkoutPlan.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ScheduledWorkoutPlan.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ScheduledWorkoutPlan.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ScheduledWorkoutPlan.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE006E616C506465;
  v4 = 0xED00006574614464;
  v5 = 0x656C756465686373;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000023B67EE80;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7A696C6169726573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ScheduledWorkoutPlan.CodingKeys()
{
  v1 = 0x656C756465686373;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7A696C6169726573;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ScheduledWorkoutPlan.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ScheduledWorkoutPlan.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScheduledWorkoutPlan.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ScheduledWorkoutPlan.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScheduledWorkoutPlan.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v40 - v4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v40 - v11;
  v12 = type metadata accessor for WorkoutPlan(0);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10WorkoutKit09ScheduledD4PlanV10CodingKeys33_67CB82B903BEAD065118911C28DD1602LLOGMd, &_ss22KeyedDecodingContainerVy10WorkoutKit09ScheduledD4PlanV10CodingKeys33_67CB82B903BEAD065118911C28DD1602LLOGMR);
  v51 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = type metadata accessor for ScheduledWorkoutPlan(0);
  v21 = MEMORY[0x28223BE20](v20);
  v24 = *(v23 + 24);
  v25 = *(v6 + 56);
  v55 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v24;
  v26 = v5;
  v25(v55 + v24, 1, 1, v5, v21);
  v27 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  lazy protocol witness table accessor for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys();
  v28 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
    return outlined destroy of Date?(v55 + v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v42 = v20;
    v43 = v16;
    v29 = v49;
    v30 = v50;
    v44 = v6;
    v52 = v26;
    v58 = 0;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = v56;
    v31 = v57;
    outlined copy of Data._Representation(v56, v57);
    static WorkoutPlan.protoComposition(from:)(v32, v31, v29);
    v41 = v32;
    outlined init with copy of WorkoutPlan(v29, v30, type metadata accessor for Apple_Workout_WorkoutPlan);
    v33 = v48;
    WorkoutPlan.init(from:)(v30, v48);
    outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v29, type metadata accessor for Apple_Workout_WorkoutPlan);
    v34 = v41;
    outlined consume of Data._Representation(v41, v31);
    v35 = v43;
    _s10WorkoutKit0A4PlanVWObTm_0(v33, v43, type metadata accessor for WorkoutPlan);
    _s10WorkoutKit0A4PlanVWObTm_0(v35, v55, type metadata accessor for WorkoutPlan);
    LOBYTE(v56) = 1;
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v36 = v52;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v44 + 32))(v55 + *(v42 + 20), v47, v36);
    LOBYTE(v56) = 2;
    v37 = v46;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v51 + 8))(v19, v17);
    outlined consume of Data._Representation(v34, v31);
    v38 = v55;
    outlined assign with take of Date?(v37, v55 + v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined init with copy of WorkoutPlan(v38, v45, type metadata accessor for ScheduledWorkoutPlan);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v38, type metadata accessor for ScheduledWorkoutPlan);
  }
}

uint64_t ScheduledWorkoutPlan.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  MEMORY[0x28223BE20](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10WorkoutKit09ScheduledD4PlanV10CodingKeys33_67CB82B903BEAD065118911C28DD1602LLOGMd, &_ss22KeyedEncodingContainerVy10WorkoutKit09ScheduledD4PlanV10CodingKeys33_67CB82B903BEAD065118911C28DD1602LLOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  WorkoutPlan.validate()();
  if (v11)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v21 = v9;
  v22 = v7;
  v23 = v6;
  MEMORY[0x28223BE20](v10);
  *(&v21 - 2) = v2;
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);
  v13 = v24;
  static Message.with(_:)();
  v14 = Message.serializedData(partial:)();
  v15 = v21;
  v16 = v22;
  v17 = v14;
  v19 = v18;
  outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(v13, type metadata accessor for Apple_Workout_WorkoutPlan);
  v25 = v17;
  v26 = v19;
  v27 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v20 = v23;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v25, v26);
  type metadata accessor for ScheduledWorkoutPlan(0);
  LOBYTE(v25) = 1;
  type metadata accessor for Date();
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v25) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  lazy protocol witness table accessor for type Date? and conformance <A> A?();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v16 + 8))(v15, v20);
}

void closure #1 in ScheduledWorkoutPlan.protoRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for Date();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for Apple_Workout_WorkoutPlan(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  WorkoutPlan.validate()();
  if (!v18)
  {
    v46 = v13;
    v47 = v11;
    v48 = v5;
    v45 = v8;
    v51 = v6;
    MEMORY[0x28223BE20](v17);
    *(&v44 - 2) = a2;
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutPlan and conformance Apple_Workout_WorkoutPlan, type metadata accessor for Apple_Workout_WorkoutPlan, &protocol conformance descriptor for Apple_Workout_WorkoutPlan);
    static Message.with(_:)();
    v44 = 0;
    v19 = *(type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan(0) + 20);
    v20 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v20 + v19);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(0);
      swift_allocObject();
      v23 = specialized Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.init(copying:)(v22);

      *(v20 + v19) = v23;
      v22 = v23;
    }

    v24 = v46;
    v25 = v47;
    _s10WorkoutKit0A4PlanVWObTm_0(v15, v47, type metadata accessor for Apple_Workout_WorkoutPlan);
    (*(v24 + 56))(v25, 0, 1, v12);
    v26 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__plan;
    swift_beginAccess();
    outlined assign with take of Date?(v25, v22 + v26, &_s10WorkoutKit06Apple_a1_A4PlanVSgMd, &_s10WorkoutKit06Apple_a1_A4PlanVSgMR);
    swift_endAccess();
    v27 = type metadata accessor for ScheduledWorkoutPlan(0);
    Date.timeIntervalSince1970.getter();
    v29 = v28;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v20 + v19);
    if ((v30 & 1) == 0)
    {
      type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(0);
      swift_allocObject();
      v32 = specialized Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.init(copying:)(v31);

      *(v20 + v19) = v32;
      v31 = v32;
    }

    v33 = OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__scheduledTimestamp;
    swift_beginAccess();
    *(v31 + v33) = v29;
    v34 = v48;
    outlined init with copy of Date?(v16 + *(v27 + 24), v48);
    v35 = v49;
    v36 = v51;
    if ((*(v49 + 48))(v34, 1, v51) == 1)
    {
      outlined destroy of Date?(v34, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v37 = v45;
      (*(v35 + 32))(v45, v34, v36);
      Date.timeIntervalSince1970.getter();
      v39 = v38;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        (*(v35 + 8))(v37, v36);
        v40 = *(v20 + v19);
      }

      else
      {
        type metadata accessor for Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass(0);
        swift_allocObject();

        v42 = v37;
        v40 = specialized Apple_Workout_Internal_ScheduledWorkoutPlan._StorageClass.init(copying:)(v41);

        (*(v35 + 8))(v42, v36);

        *(v20 + v19) = v40;
      }

      v43 = v40 + OBJC_IVAR____TtCV10WorkoutKit43Apple_Workout_Internal_ScheduledWorkoutPlanP33_3FCADBE7D900E8AACFA62DB79F0F3ABD13_StorageClass__lastCompletedTimestamp;
      swift_beginAccess();
      *v43 = v39;
      *(v43 + 8) = 0;
    }
  }
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of WorkoutPlan(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlan(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL specialized static ScheduledWorkoutPlan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  if (!specialized static WorkoutPlan.== infix(_:_:)(a1, a2))
  {
    return 0;
  }

  v14 = type metadata accessor for ScheduledWorkoutPlan(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  outlined init with copy of Date?(a1 + v15, v13);
  outlined init with copy of Date?(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      outlined destroy of Date?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      return 1;
    }

    goto LABEL_8;
  }

  outlined init with copy of Date?(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    outlined destroy of Date?(v13, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v16], v4);
  lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v10, v4);
  outlined destroy of Date?(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (v19 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys;
  if (!lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScheduledWorkoutPlan.CodingKeys and conformance ScheduledWorkoutPlan.CodingKeys);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined init with copy of WorkoutPlan(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Internal_ScheduledWorkoutPlan(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type Date? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type Date? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    lazy protocol witness table accessor for type DateComponents and conformance DateComponents(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date? and conformance <A> A?);
  }

  return result;
}

void type metadata completion function for ScheduledWorkoutPlan(uint64_t a1)
{
  type metadata accessor for WorkoutPlan(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Date?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ScheduledWorkoutPlan.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScheduledWorkoutPlan.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t specialized ScheduledWorkoutPlan.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ScheduledWorkoutPlan.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DateComponents and conformance DateComponents(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s10WorkoutKit0A4PlanVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

Swift::Int ExportError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExportError()
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExportError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](0);
  return Hasher._finalize()();
}

Swift::Int XPCServiceError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance XPCServiceError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance XPCServiceError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

Swift::Bool __swiftcall AppError.isEqual(to:)(NSError *to)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit8AppErrorOmMd, &_s10WorkoutKit8AppErrorOmMR);
  v4 = String.init<A>(reflecting:)();
  v6 = v5;
  v7 = [(NSError *)to domain];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v12 & 1) == 0)
    {
      return result;
    }
  }

  v14 = [(NSError *)to code];
  if (v14 == 1)
  {
    return v3;
  }

  if (v14)
  {
    return 0;
  }

  return v3 ^ 1;
}

Swift::Int AppError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x23EEA0D50](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ExportError and conformance ExportError()
{
  result = lazy protocol witness table cache variable for type ExportError and conformance ExportError;
  if (!lazy protocol witness table cache variable for type ExportError and conformance ExportError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExportError and conformance ExportError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type QueryError and conformance QueryError()
{
  result = lazy protocol witness table cache variable for type QueryError and conformance QueryError;
  if (!lazy protocol witness table cache variable for type QueryError and conformance QueryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type QueryError and conformance QueryError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCServiceError and conformance XPCServiceError()
{
  result = lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError;
  if (!lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCServiceError and conformance XPCServiceError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppError and conformance AppError()
{
  result = lazy protocol witness table cache variable for type AppError and conformance AppError;
  if (!lazy protocol witness table cache variable for type AppError and conformance AppError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppError and conformance AppError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10WorkoutKit11ImportErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for ImportError(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImportError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ImportError(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExportError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ExportError(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for XPCServiceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for XPCServiceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t closure #1 in HKWorkoutConfiguration.protoRepresentation.getter(_DWORD *a1, id a2)
{
  result = [a2 activityType];
  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_8;
  }

  *a1 = result;
  result = [a2 locationType];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  if (HIDWORD(result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = type metadata accessor for Apple_Workout_WorkoutConfiguration(0);
  v7 = a1 + *(v6 + 24);
  *v7 = v5;
  v7[4] = 0;
  result = [a2 swimmingLocationType];
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!HIDWORD(result))
  {
    v8 = a1 + *(v6 + 28);
    *v8 = result;
    v8[4] = 0;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t CadenceThresholdAlert.init(target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t CadenceThresholdAlert.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CadenceThresholdAlert.target.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static CadenceThresholdAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSUnitFrequency();

  return static Measurement.== infix<A, B>(_:_:)();
}

uint64_t CadenceThresholdAlert.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int CadenceThresholdAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CadenceThresholdAlert(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NSUnitFrequency();

  return static Measurement.== infix<A, B>(_:_:)();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CadenceThresholdAlert()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CadenceThresholdAlert(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CadenceThresholdAlert(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance CadenceThresholdAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  Measurement.value.getter();
  if (v0 <= 0.0)
  {
    lazy protocol witness table accessor for type AlertValidationError and conformance AlertValidationError();
    swift_allocError();
    *v1 = xmmword_23B6784C0;
    *(v1 + 16) = 3;
    swift_willThrow();
  }
}

uint64_t static WorkoutAlert<>.cadence(_:unit:)(void *a1, double a2)
{
  type metadata accessor for NSUnitFrequency();
  v3 = a1;

  return Measurement.init(value:unit:)();
}

BOOL static CadenceRangeAlert.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t CadenceRangeAlert.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int CadenceRangeAlert.hashValue.getter()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CadenceRangeAlert(uint64_t a1, uint64_t a2)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CadenceRangeAlert()
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CadenceRangeAlert(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CadenceRangeAlert(uint64_t a1)
{
  Hasher.init(_seed:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  lazy protocol witness table accessor for type Measurement<NSUnitFrequency> and conformance Measurement<A>(&lazy protocol witness table cache variable for type Measurement<NSUnitFrequency> and conformance Measurement<A>, MEMORY[0x277CC87E0]);
  dispatch thunk of Hashable.hash(into:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for WorkoutAlertProtable.protoRepresentation.getter in conformance CadenceThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Apple_Workout_WorkoutAlert(0);
  lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(&lazy protocol witness table cache variable for type Apple_Workout_WorkoutAlert and conformance Apple_Workout_WorkoutAlert, type metadata accessor for Apple_Workout_WorkoutAlert, &protocol conformance descriptor for Apple_Workout_WorkoutAlert);
  return static Message.with(_:)();
}

void protocol witness for WorkoutAlertProtable.validateValues(for:location:) in conformance CadenceRangeAlert()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  Measurement.value.getter();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMd, &_sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGMR);
  Measurement.value.getter();
  specialized WorkoutAlertValidating.validateRangeValue(_:_:)(v1, v2);
}

uint64_t static WorkoutAlert<>.cadence(_:unit:)@<X0>(void *a1@<X0>, char *a2@<X8>)
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
    _sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGWOcTm_0(v11, v8, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
    v24 = *(v22 + 48);
    v23(a2, v8, v12);
    v25 = *(v13 + 8);
    v25(&v8[v24], v12);
    _sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGWObTm_0(v11, v8, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCG5lower_AF5uppertMR);
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

uint64_t _sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGWOcTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sSNy10Foundation11MeasurementVySo15NSUnitFrequencyCGGWObTm_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t instantiation function for generic protocol witness table for CadenceThresholdAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(&lazy protocol witness table cache variable for type CadenceThresholdAlert and conformance CadenceThresholdAlert, type metadata accessor for CadenceThresholdAlert, &protocol conformance descriptor for CadenceThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(&lazy protocol witness table cache variable for type CadenceThresholdAlert and conformance CadenceThresholdAlert, type metadata accessor for CadenceThresholdAlert, &protocol conformance descriptor for CadenceThresholdAlert);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for CadenceRangeAlert(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(&lazy protocol witness table cache variable for type CadenceRangeAlert and conformance CadenceRangeAlert, type metadata accessor for CadenceRangeAlert, &protocol conformance descriptor for CadenceRangeAlert);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CadenceThresholdAlert and conformance CadenceThresholdAlert(&lazy protocol witness table cache variable for type CadenceRangeAlert and conformance CadenceRangeAlert, type metadata accessor for CadenceRangeAlert, &protocol conformance descriptor for CadenceRangeAlert);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for CadenceThresholdAlert(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Measurement<NSUnitFrequency>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Measurement<NSUnitFrequency>)
  {
    type metadata accessor for NSUnitFrequency();
    v1 = type metadata accessor for Measurement();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Measurement<NSUnitFrequency>);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t type metadata completion function for CadenceThresholdAlert(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_PowerAlert(uint64_t a1)
{
  type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?, type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_PowerValue(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_PowerRange(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_ZoneValue(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_PowerAlert(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for Apple_Workout_PowerRange(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(319, &lazy cache variable for type metadata for Apple_Workout_PowerValue?, type metadata accessor for Apple_Workout_PowerValue);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_PowerAlert.OneOf_PowerAlertTarget?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t type metadata completion function for Apple_Workout_PowerValue(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_PowerValue.PowerUnit(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_PowerValue.PowerUnit(uint64_t result, int a2, int a3)
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