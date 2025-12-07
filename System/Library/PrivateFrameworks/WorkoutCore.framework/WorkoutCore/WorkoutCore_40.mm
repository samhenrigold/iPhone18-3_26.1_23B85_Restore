uint64_t IntervalsMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalProgress;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalThisStep;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C4StepCSgGMR);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalNextStep, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistance, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePace, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPace, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAveragePower, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentPower, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalAverageCadence, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentCadence, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalTime, v2);
  v7 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalStartDate;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalActiveEnergy, v2);
  v9 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalCurrentStepIndex;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiSgGMd, &_s7Combine9PublishedVySiSgGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalTotalStepCount;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC11WorkoutCore25IntervalsMetricsPublisher__intervalDistanceGoalAchievedDuration;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t IntervalsMetricsPublisher.__deallocating_deinit()
{
  IntervalsMetricsPublisher.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance IntervalsMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t IntervalsMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntervalsMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  return v4;
}

void IntervalsMetricsPublisher.protobuf.getter(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v36 = (&v30 - v4);
  v37 = type metadata accessor for Date();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v5);
  v33 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  UnknownStorage.init()();
  v13 = v12[15];
  v14 = *(v8 + 56);
  v14(a1 + v13, 1, 1, v7);
  v15 = v12[16];
  v14(a1 + v15, 1, 1, v7);
  v16 = a1 + v12[17];
  *v16 = 0;
  v31 = v16;
  *(v16 + 8) = 1;
  v17 = a1 + v12[18];
  *v17 = 0;
  v34 = v17;
  *(v17 + 8) = 1;
  v18 = a1 + v12[19];
  *v18 = 0;
  v30 = v18;
  *(v18 + 4) = 1;
  v19 = a1 + v12[20];
  *v19 = 0;
  v32 = v19;
  *(v19 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  *a1 = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  if (v38)
  {
    WorkoutStep.protobuf.getter(v11);

    _s10Foundation4DateVSgWOhTm_13(a1 + v13, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    outlined init with take of Apple_Workout_Core_WorkoutStep(v11, a1 + v13);
    v14(a1 + v13, 0, 1, v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  if (v38)
  {
    WorkoutStep.protobuf.getter(v11);

    _s10Foundation4DateVSgWOhTm_13(a1 + v15, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    outlined init with take of Apple_Workout_Core_WorkoutStep(v11, a1 + v15);
    v14(a1 + v15, 0, 1, v7);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  *(a1 + 8) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  *(a1 + 16) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  *(a1 + 24) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  *(a1 + 32) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  *(a1 + 40) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  *(a1 + 48) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  *(a1 + 56) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  v20 = v34;
  *v34 = v38;
  *(v20 + 8) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  *(a1 + 64) = v38;
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v36;
  static Published.subscript.getter(v36);

  v22 = v35;
  v23 = v37;
  if ((*(v35 + 48))(v21, 1, v37) == 1)
  {
    _s10Foundation4DateVSgWOhTm_13(v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v24 = v33;
    (*(v22 + 32))(v33, v21, v23);
    Date.timeIntervalSinceReferenceDate.getter();
    v26 = v25;
    (*(v22 + 8))(v24, v23);
    v27 = v31;
    *v31 = v26;
    *(v27 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  if ((v39 & 1) == 0)
  {
    v28 = v32;
    *v32 = v38;
    *(v28 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  if (v39)
  {
    goto LABEL_14;
  }

  if (v38 < 0xFFFFFFFF80000000)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v38 <= 0x7FFFFFFF)
  {
    v29 = v30;
    *v30 = v38;
    *(v29 + 4) = 0;
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v38);

    if (v38 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v38 <= 0x7FFFFFFF)
    {
      *(a1 + 72) = v38;
      return;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher);
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOhTm_13(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void Apple_Workout_Core_IntervalsMetricsPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v80 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v79 = &v74 - v7;
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v76 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v74 = &v74 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v75 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v78 = &v74 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v74 - v27;
  v29 = *v1;
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v29;

  static Published.subscript.setter();
  v83 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v30 = *(v83 + 60);
  v77 = v1;
  _s10Foundation4DateVSgWOcTm_7(v1 + v30, v28, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v31 = *(v9 + 48);
  v32 = v31(v28, 1, v8);
  _s10Foundation4DateVSgWOhTm_13(v28, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v81 = v9 + 48;
  v82 = v31;
  if (v32 == 1)
  {
    v33 = v8;
    swift_getKeyPath();
    swift_getKeyPath();
    v84 = 0;

    static Published.subscript.setter();
    v34 = v83;
    v35 = v77;
  }

  else
  {
    v35 = v77;
    _s10Foundation4DateVSgWOcTm_7(v77 + v30, v25, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    v36 = v31(v25, 1, v8);
    v34 = v83;
    if (v36 == 1)
    {
      v37 = v83;
      v38 = v74;
      UnknownStorage.init()();
      v39 = v8;
      v40 = *(v8 + 20);
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
        v39 = v8;
      }

      *(v38 + v40) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
      v33 = v39;
      v41 = v82(v25, 1);

      v42 = v41 == 1;
      v34 = v37;
      if (!v42)
      {
        _s10Foundation4DateVSgWOhTm_13(v25, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
      }
    }

    else
    {
      v33 = v8;
      v38 = v74;
      outlined init with take of Apple_Workout_Core_WorkoutStep(v25, v74);
    }

    v43 = Apple_Workout_Core_WorkoutStep.decoded.getter();
    outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(v38, type metadata accessor for Apple_Workout_Core_WorkoutStep);
    swift_getKeyPath();
    swift_getKeyPath();
    v84 = v43;

    static Published.subscript.setter();
  }

  v44 = *(v34 + 64);
  v45 = v78;
  _s10Foundation4DateVSgWOcTm_7(v35 + v44, v78, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v46 = v82;
  v47 = (v82)(v45, 1, v33);
  _s10Foundation4DateVSgWOhTm_13(v45, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  if (v47 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v84 = 0;

    static Published.subscript.setter();
    v48 = v83;
    v49 = v79;
  }

  else
  {
    v50 = v75;
    _s10Foundation4DateVSgWOcTm_7(v35 + v44, v75, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    if (v46(v50, 1, v33) == 1)
    {
      v51 = v76;
      UnknownStorage.init()();
      v52 = *(v33 + 20);
      v48 = v83;
      if (one-time initialization token for defaultInstance != -1)
      {
        swift_once();
      }

      *(v51 + v52) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
      v53 = v46(v50, 1, v33);

      v49 = v79;
      if (v53 != 1)
      {
        _s10Foundation4DateVSgWOhTm_13(v50, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
      }
    }

    else
    {
      v51 = v76;
      outlined init with take of Apple_Workout_Core_WorkoutStep(v50, v76);
      v48 = v83;
      v49 = v79;
    }

    v54 = Apple_Workout_Core_WorkoutStep.decoded.getter();
    outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(v51, type metadata accessor for Apple_Workout_Core_WorkoutStep);
    swift_getKeyPath();
    swift_getKeyPath();
    v84 = v54;

    static Published.subscript.setter();
  }

  v55 = v35[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v55;

  static Published.subscript.setter();
  v56 = v35[2];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v56;

  static Published.subscript.setter();
  v57 = v35[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v57;

  static Published.subscript.setter();
  v58 = v35[4];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v58;

  static Published.subscript.setter();
  v59 = v35[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v59;

  static Published.subscript.setter();
  v60 = v35[6];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v60;

  static Published.subscript.setter();
  v61 = v35[7];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v61;

  static Published.subscript.setter();
  v62 = v35 + *(v48 + 72);
  if ((*(v62 + 8) & 1) == 0)
  {
    v63 = *v62;
    swift_getKeyPath();
    swift_getKeyPath();
    v84 = v63;

    static Published.subscript.setter();
  }

  v64 = v35[8];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v64;

  static Published.subscript.setter();
  if (*(v35 + *(v48 + 68) + 8))
  {
    v65 = 1;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    v65 = 0;
  }

  v66 = type metadata accessor for Date();
  (*(*(v66 - 8) + 56))(v49, v65, 1, v66);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_7(v49, v80, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_13(v49, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v67 = v83;
  v68 = v35 + *(v83 + 80);
  v69 = *v68;
  v70 = *(v68 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v69;
  v85 = (v70 & 1) != 0;

  static Published.subscript.setter();
  v71 = (v35 + *(v67 + 76));
  if ((v71[1] & 1) == 0)
  {
    v72 = *v71;
    swift_getKeyPath();
    swift_getKeyPath();
    v84 = v72;
    v85 = 0;

    static Published.subscript.setter();
  }

  v73 = *(v35 + 18);
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v73;

  static Published.subscript.setter();
}

uint64_t IntervalsMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static IntervalsMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance IntervalsMetricsPublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IntervalsMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance IntervalsMetricsPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static IntervalsMetricsPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance IntervalsMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static IntervalsMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static IntervalsMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntervalsMetricsPublisher(0);
  v11 = swift_allocObject();
  IntervalsMetricsPublisher.init()();
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_IntervalsMetricsPublisher.decodeInto(publisher:)(v11);
    outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(v10, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  }

  return v11;
}

uint64_t type metadata accessor for IntervalsMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for IntervalsMetricsPublisher;
  if (!type metadata singleton initialization cache for IntervalsMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalsMetricsPublisher(uint64_t a1)
{
  type metadata accessor for Published<Double>(319, &lazy cache variable for type metadata for Published<Double>, MEMORY[0x277D839F8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<WorkoutStep?>(319, &lazy cache variable for type metadata for Published<WorkoutStep?>, &_s11WorkoutCore0A4StepCSgMd, &_s11WorkoutCore0A4StepCSgMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<WorkoutStep?>(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<WorkoutStep?>(319, &lazy cache variable for type metadata for Published<Int?>, &_sSiSgMd, &_sSiSgMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<Double>(319, &lazy cache variable for type metadata for Published<Int>, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<WorkoutStep?>(319, &lazy cache variable for type metadata for Published<Double?>, &_sSdSgMd, &_sSdSgMR);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Published<Double>(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void type metadata accessor for Published<WorkoutStep?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

uint64_t _s10Foundation4DateVSgWOcTm_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

WorkoutCore::DataLinkCommand_optional __swiftcall DataLinkCommand.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 9;
  if (rawValue < 9)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DataLinkCommand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkCommand(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t DataLinkCommand.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x656D75736572;
    v7 = 6581861;
    if (v1 != 2)
    {
      v7 = 0x6D6765536B72616DLL;
    }

    if (*v0)
    {
      v6 = 0x6573756170;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x67654C7478656ELL;
    v3 = 1702131053;
    if (v1 != 7)
    {
      v3 = 0x6574756D6E75;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6F7272694D646E65;
    if (v1 != 4)
    {
      v4 = 0x65746E497478656ELL;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t DataLinkError.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DataLinkMirroredClientExpectation(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataLinkError(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DataLinkError(v1, v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
  v11 = (*(*(v10 - 8) + 48))(v9, 5, v10);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      return 0x736F6C436B6E696CLL;
    }

    else if (v11 == 4)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else if (v11)
  {
    if (v11 == 1)
    {
      return 0xD000000000000016;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else
  {
    outlined init with take of DataLinkMirroredClientExpectation(&v9[*(v10 + 48)], v5);
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x20F2E6D80](0xD00000000000002FLL, 0x800000020B468E40);
    v13 = _typeName(_:qualified:)();
    MEMORY[0x20F2E6D80](v13);

    MEMORY[0x20F2E6D80](0xD000000000000016, 0x800000020B468E70);
    v14 = DataLinkMirroredClientExpectation.description.getter();
    MEMORY[0x20F2E6D80](v14);

    MEMORY[0x20F2E6D80](10537, 0xE200000000000000);
    v15 = v16[0];
    outlined destroy of DataLinkMirroredClientExpectation(v5);
    return v15;
  }
}

uint64_t type metadata accessor for DataLinkError(uint64_t a1)
{
  result = type metadata singleton initialization cache for DataLinkError;
  if (!type metadata singleton initialization cache for DataLinkError)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of DataLinkError(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataLinkError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DataLinkMirroredClientExpectation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataLinkMirroredClientExpectation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DataLinkMirroredClientExpectation(uint64_t a1)
{
  v2 = type metadata accessor for DataLinkMirroredClientExpectation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type DataLinkCommand and conformance DataLinkCommand()
{
  result = lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand;
  if (!lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkCommand and conformance DataLinkCommand);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataLinkCommand(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataLinkCommand(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for DataLinkError(uint64_t a1)
{
  type metadata accessor for (hostMessageType: @thick MirroredHostMessageProtocol.Type, clientExpectation: DataLinkMirroredClientExpectation)(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void type metadata accessor for (hostMessageType: @thick MirroredHostMessageProtocol.Type, clientExpectation: DataLinkMirroredClientExpectation)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (hostMessageType: @thick MirroredHostMessageProtocol.Type, clientExpectation: DataLinkMirroredClientExpectation))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmTMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmTMR);
    type metadata accessor for DataLinkMirroredClientExpectation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (hostMessageType: @thick MirroredHostMessageProtocol.Type, clientExpectation: DataLinkMirroredClientExpectation));
    }
  }
}

uint64_t getEnumTagSinglePayload for RaceConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceConstants(_WORD *result, int a2, int a3)
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

void HKWorkout.makeDownhillRuns(healthStore:completion:)(void *a1, void (*a2)(uint64_t, void))
{
  v3 = v2;
  v6 = [v2 downhillRunEvents];
  if (!v6)
  {
    a2(0, 0);
    return;
  }

  v7 = v6;
  _sSo14HKWorkoutEventCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_13:

    a2(MEMORY[0x277D84F90], 0);
    goto LABEL_14;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_13;
  }

LABEL_4:
  v13 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v9 < 0)
  {
    __break(1u);
    return;
  }

  v10 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x20F2E7A20](v10, v8);
    }

    else
    {
      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    ++v10;
    specialized static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:)(v11, v3, a1);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v9 != v10);

  a2(v13, 0);
LABEL_14:
}

Class @objc HKWorkout.downhillRunEvents.getter(void *a1)
{
  v1 = a1;
  v2 = HKWorkout.downhillRunEvents.getter();

  if (v2)
  {
    _sSo14HKWorkoutEventCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

id HKWorkout.downhillRunEvents.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 workoutActivityType];
  if (v7 != 67 && v7 != 61)
  {
    return 0;
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v9 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B468F40);
  v10 = [v8 BOOLForKey_];

  if ((v10 & 1) == 0)
  {
    v14 = [v1 workoutEvents];
    if (v14)
    {
      v15 = v14;
      _sSo14HKWorkoutEventCMaTm_0(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = MEMORY[0x277D84F90];
      if (v16 >> 62)
      {
        goto LABEL_23;
      }

      for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
      {
        v18 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x20F2E7A20](v18, v16);
          }

          else
          {
            if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_22;
            }

            v19 = *(v16 + 8 * v18 + 32);
          }

          v20 = v19;
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (HKWorkoutEvent.isDownhillRun.getter())
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          ++v18;
          if (v21 == i)
          {
            v13 = v23;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        ;
      }

      v13 = MEMORY[0x277D84F90];
LABEL_25:

      return v13;
    }

    return 0;
  }

  result = [v1 fiui_dateInterval];
  if (result)
  {
    v12 = result;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = specialized static HKWorkout.fakeDownhillRunEvents(dateInterval:)(v6);
    (*(v3 + 8))(v6, v2);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t specialized static HKWorkout.fakeDownhillRunEvents(dateInterval:)(uint64_t a1)
{
  v123 = type metadata accessor for DateInterval();
  v128 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v2);
  v121 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for Date();
  v4 = *(v127 - 8);
  v6 = MEMORY[0x28223BE20](v127, v5);
  v105 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v126 = &v91 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v91 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v122 = &v91 - v16;
  DateInterval.duration.getter();
  v17 = objc_opt_self();
  v18 = [v17 mileUnit];
  v19 = [v17 hourUnit];
  v20 = [v18 unitDividedByUnit_];
  v106 = v20;

  v21 = objc_opt_self();
  v104 = [v21 quantityWithUnit:v20 doubleValue:11.0];
  v111 = [v21 quantityWithUnit:v20 doubleValue:12.0];
  v110 = [v21 quantityWithUnit:v20 doubleValue:24.0];
  v102 = [v21 quantityWithUnit:v20 doubleValue:29.0];
  v22 = [v17 percentUnit];
  v109 = [v21 quantityWithUnit:v22 doubleValue:15.0];

  v23 = [v17 percentUnit];
  v97 = [v21 quantityWithUnit:v23 doubleValue:35.0];

  v24 = [v17 percentUnit];
  v103 = [v21 quantityWithUnit:v24 doubleValue:45.0];

  v25 = [v17 meterUnit];
  v98 = [v21 quantityWithUnit:v25 doubleValue:472.0];

  v26 = [v17 meterUnit];
  v95 = [v21 quantityWithUnit:v26 doubleValue:491.0];

  v27 = [v17 meterUnit];
  v101 = [v21 quantityWithUnit:v27 doubleValue:421.0];

  v28 = [v17 meterUnit];
  v29 = [v21 quantityWithUnit:v28 doubleValue:5.0];

  v120 = v14;
  v107 = a1;
  DateInterval.start.getter();
  v30 = v122;
  Date.addingTimeInterval(_:)();
  v124 = *(v4 + 8);
  v125 = v4 + 8;
  v31 = v127;
  v124(v14, v127);
  v118 = *(v4 + 16);
  v119 = (v4 + 16);
  v118(v14, v30, v31);
  v32 = v121;
  DateInterval.init(start:duration:)();
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  v117 = xmmword_20B423940;
  *(inited + 16) = xmmword_20B423940;
  v116 = *MEMORY[0x277CCC470];
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v34;
  v35 = _sSo14HKWorkoutEventCMaTm_0(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  *(inited + 72) = v35;
  v36 = v111;
  *(inited + 48) = v111;
  v108 = *MEMORY[0x277CCC4E8];
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v37;
  *(inited + 120) = v35;
  v38 = v110;
  *(inited + 96) = v110;
  v114 = *MEMORY[0x277CCC430];
  *(inited + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 136) = v39;
  *(inited + 168) = v35;
  v40 = v109;
  *(inited + 144) = v109;
  v113 = *MEMORY[0x277CCC490];
  *(inited + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 184) = v41;
  *(inited + 216) = v35;
  v42 = v98;
  *(inited + 192) = v98;
  v112 = *MEMORY[0x277CCC488];
  *(inited + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 232) = v43;
  *(inited + 264) = v35;
  *(inited + 240) = v29;
  v100 = v36;
  v94 = v38;
  v99 = v40;
  v98 = v42;
  v44 = v29;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
  swift_arrayDestroy();
  isa = DateInterval._bridgeToObjectiveC()().super.isa;
  v46 = Dictionary._bridgeToObjectiveC()().super.isa;

  v110 = objc_opt_self();
  v96 = [v110 workoutEventWithType:7 dateInterval:isa metadata:v46];

  v47 = *(v128 + 8);
  v128 += 8;
  v109 = v47;
  v48 = v123;
  v47(v32, v123);
  v49 = v126;
  DateInterval.start.getter();
  v50 = v120;
  Date.addingTimeInterval(_:)();
  v51 = v127;
  v124(v49, v127);
  v118(v49, v50, v51);
  DateInterval.init(start:duration:)();
  v52 = swift_initStackObject();
  *(v52 + 16) = v117;
  *(v52 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v52 + 72) = v35;
  v53 = v94;
  *(v52 + 40) = v54;
  *(v52 + 48) = v53;
  *(v52 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v52 + 88) = v55;
  *(v52 + 120) = v35;
  v56 = v102;
  *(v52 + 96) = v102;
  *(v52 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v52 + 136) = v57;
  *(v52 + 168) = v35;
  v58 = v97;
  *(v52 + 144) = v97;
  *(v52 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v52 + 184) = v59;
  *(v52 + 216) = v35;
  v60 = v95;
  *(v52 + 192) = v95;
  *(v52 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v52 + 232) = v61;
  *(v52 + 264) = v35;
  *(v52 + 240) = v44;
  v92 = v53;
  v93 = v44;
  v102 = v56;
  v97 = v58;
  v95 = v60;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v52);
  swift_setDeallocating();
  swift_arrayDestroy();
  v62 = v121;
  v63 = DateInterval._bridgeToObjectiveC()().super.isa;
  v64 = Dictionary._bridgeToObjectiveC()().super.isa;

  v94 = [v110 workoutEventWithType:7 dateInterval:v63 metadata:v64];

  (v109)(v62, v48);
  v65 = v105;
  DateInterval.start.getter();
  v66 = v126;
  Date.addingTimeInterval(_:)();
  v67 = v127;
  v124(v65, v127);
  v118(v65, v66, v67);
  DateInterval.init(start:duration:)();
  v68 = swift_initStackObject();
  *(v68 + 16) = v117;
  *(v68 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v68 + 72) = v35;
  v69 = v104;
  *(v68 + 40) = v70;
  *(v68 + 48) = v69;
  *(v68 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v68 + 88) = v71;
  *(v68 + 120) = v35;
  v72 = v92;
  *(v68 + 96) = v92;
  *(v68 + 128) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v68 + 136) = v73;
  *(v68 + 168) = v35;
  v74 = v103;
  *(v68 + 144) = v103;
  *(v68 + 176) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v68 + 184) = v75;
  *(v68 + 216) = v35;
  v76 = v101;
  *(v68 + 192) = v101;
  *(v68 + 224) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v68 + 232) = v77;
  *(v68 + 264) = v35;
  v78 = v93;
  *(v68 + 240) = v93;
  v79 = v72;
  v80 = v78;
  v119 = v69;
  v81 = v74;
  v82 = v76;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v68);
  swift_setDeallocating();
  swift_arrayDestroy();
  v83 = DateInterval._bridgeToObjectiveC()().super.isa;
  v84 = Dictionary._bridgeToObjectiveC()().super.isa;

  v85 = [v110 workoutEventWithType:7 dateInterval:v83 metadata:v84];

  (v109)(v62, v123);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_20B42C8E0;
  v87 = v94;
  *(v86 + 32) = v96;
  *(v86 + 40) = v87;
  *(v86 + 48) = v85;

  v88 = v127;
  v89 = v124;
  v124(v126, v127);
  v89(v120, v88);
  v89(v122, v88);
  return v86;
}

uint64_t _sSo14HKWorkoutEventCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

double specialized WorkoutVoiceAnalyticsHandling.send()()
{
  v1 = v0;
  v2 = WorkoutVoiceMomentAnalyticsEvent.buildAnalyticsEvent()();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.workoutVoice);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock[0] = v7;
    *v6 = 136315394;
    type metadata accessor for WorkoutVoiceMomentAnalyticsEvent(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A25VoiceMomentAnalyticsEventVmMd, &_s11WorkoutCore0A25VoiceMomentAnalyticsEventVmMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, aBlock);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    _sSo8NSObjectCMaTm_4(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v11 = Dictionary.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, aBlock);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v14 = [objc_opt_self() sharedConnection];
  if (v14 && (v15 = v14, v16 = [v14 isHealthDataSubmissionAllowed], v15, (v16 & 1) != 0))
  {
    v17 = MEMORY[0x20F2E6C00](*v1, v1[1]);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    aBlock[4] = closure #1 in WorkoutVoiceAnalyticsHandling.send()partial apply;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_254;
    v19 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v19);
  }

  else
  {
  }

  return result;
}

{
  v1 = v0;
  v2 = WorkoutVoiceMuteAnalyticsEvent.buildAnalyticsEvent()();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.workoutVoice);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    aBlock[0] = v7;
    *v6 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A23VoiceMuteAnalyticsEventVmMd, &_s11WorkoutCore0A23VoiceMuteAnalyticsEventVmMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, aBlock);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    _sSo8NSObjectCMaTm_4(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
    v11 = Dictionary.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, aBlock);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v14 = [objc_opt_self() sharedConnection];
  if (v14 && (v15 = v14, v16 = [v14 isHealthDataSubmissionAllowed], v15, (v16 & 1) != 0))
  {
    v17 = MEMORY[0x20F2E6C00](*v1, v1[1]);
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    aBlock[4] = partial apply for closure #1 in WorkoutVoiceAnalyticsHandling.send();
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_230;
    v19 = _Block_copy(aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v19);
  }

  else
  {
  }

  return result;
}

void specialized WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v77 = a8;
  v78 = a7;
  v81 = a3;
  v82 = a4;
  v76 = a2;
  v79 = a1;
  v64 = a21;
  v71 = a20;
  v70 = a19;
  v73 = a17;
  v74 = a18;
  v72 = a16;
  v62 = a15;
  v61 = a14;
  v69 = a13;
  v68 = a12;
  v67 = a11;
  v66 = a10;
  v65 = a9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v75 = &v59 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v63 = &v59 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v33 = &v59 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = &v59 - v36;
  v38 = type metadata accessor for WorkoutState();
  v39 = *(v38 - 8);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v59 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v44);
  v59 = &v59 - v45;
  v83 = v21;
  v46 = v21 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v47 = *(v39 + 16);
  v60 = v38;
  v47(v43, v46, v38);
  v48 = type metadata accessor for Date();
  v49 = *(*(v48 - 8) + 48);
  v80 = a5;
  v49(a5, 1, v48);
  v50 = type metadata accessor for WorkoutGoal();
  (*(*(v50 - 8) + 56))(v37, 1, 1, v50);
  outlined init with copy of Measurement<NSUnitDuration>?(a6, v33, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v33, 1, v51) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v33, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  }

  else
  {
    Measurement.value.getter();
    (*(v52 + 8))(v33, v51);
  }

  v53 = type metadata accessor for WeatherCondition();
  v54 = v63;
  (*(*(v53 - 8) + 56))(v63, 1, 1, v53);
  v55 = type metadata accessor for WorkoutMediaDetails();
  v56 = v75;
  (*(*(v55 - 8) + 56))(v75, 1, 1, v55);
  v57 = v59;
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v56, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v54, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v37, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v58 = v60;
  (*(v39 + 8))(v43, v60);
  swift_beginAccess();
  (*(v39 + 40))(v46, v57, v58);
  swift_endAccess();
  WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()();
}

uint64_t WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v78 = a8;
  v79 = a7;
  v82 = a3;
  v83 = a4;
  v77 = a2;
  v80 = a1;
  v65 = a21;
  v71 = a19;
  v72 = a20;
  v74 = a17;
  v75 = a18;
  v73 = a16;
  v64 = a15;
  v63 = a14;
  v69 = a12;
  v70 = a13;
  v67 = a10;
  v68 = a11;
  v66 = a9;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v76 = &v59 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  MEMORY[0x28223BE20](v29 - 8, v30);
  v32 = &v59 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = &v59 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v40 = &v59 - v39;
  v62 = type metadata accessor for WorkoutState();
  v61 = *(v62 - 8);
  v42 = MEMORY[0x28223BE20](v62, v41);
  v44 = &v59 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v45);
  v60 = &v59 - v46;
  v47 = *(a23 + 40);
  v84 = a22;
  v85 = v23;
  v47(a22, a23);
  v48 = type metadata accessor for Date();
  v49 = *(*(v48 - 8) + 48);
  v81 = a5;
  v49(a5, 1, v48);
  v50 = type metadata accessor for WorkoutGoal();
  (*(*(v50 - 8) + 56))(v40, 1, 1, v50);
  outlined init with copy of Measurement<NSUnitDuration>?(a6, v36, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v36, 1, v51) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v36, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  }

  else
  {
    Measurement.value.getter();
    (*(v52 + 8))(v36, v51);
  }

  v53 = type metadata accessor for WeatherCondition();
  (*(*(v53 - 8) + 56))(v32, 1, 1, v53);
  v54 = type metadata accessor for WorkoutMediaDetails();
  v55 = v76;
  (*(*(v54 - 8) + 56))(v76, 1, 1, v54);
  v56 = v60;
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v55, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v32, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v40, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  (*(v61 + 8))(v44, v62);
  v57 = v84;
  (*(a23 + 48))(v56, v84, a23);
  return (*(a23 + 320))(v57, a23);
}

{
  return WorkoutBuddyMomentCoordinating.updateWorkoutContext(identifier:location:startDate:sessionStartDate:endDate:elapsedTime:totalDistanceTraveled:currentPace:avgPace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:splitAverageHeartRate:timeBasedSplitDuration:elapsedTimeInHeartRateZones:averagePower:elevationGain:metadata:samplesByType:activitySummaryRepresentable:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

unint64_t TimeBasedProgressMomentSupportError.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

Swift::Int TimeBasedProgressMomentSupportError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TimeBasedProgressMomentSupportError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TimeBasedProgressMomentSupportError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance TimeBasedProgressMomentSupportError()
{
  if (*v0)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();

  return WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()(a1, a2);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for WorkoutVoiceMoment();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v6;
  v3[12] = v5;

  return MEMORY[0x2822009F8](WorkoutBuddyMomentCoordinating.progressWorkoutToInSession(), v6, v5);
}

uint64_t specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()()
{
  v1[11] = v0;
  type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v1[14] = swift_task_alloc();
  v2 = type metadata accessor for WorkoutVoiceMoment();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession(), v0, 0);
}

{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  swift_beginAccess();
  *(v1 + v2) = 1;
  v3 = v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  swift_beginAccess();
  if (*(v3 + 8))
  {
LABEL_4:

    v15 = v0[1];

    return v15();
  }

  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[14];
  v7 = v0[11];
  v8 = *v3;
  v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v7 + v9, v6, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v10 = v0[12];
    outlined destroy of Measurement<NSUnitDuration>?(v0[14], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
    (*(*(v11 - 8) + 56))(v10, 4, 6, v11);
    v12 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for WorkoutVoiceMomentCoordinator(0);
    v13(v10, v14, v12);
    goto LABEL_4;
  }

  (*(v0[16] + 32))(v0[17], v0[14], v0[15]);
  v17 = swift_task_alloc();
  v0[18] = v17;
  *v17 = v0;
  v17[1] = specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  v18 = v0[17];
  v19 = v0[13];

  return WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(v19, v18, v8);
}

{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  }

  else
  {
    v5 = *(v2 + 88);
    outlined destroy of Measurement<NSUnitDuration>?(*(v2 + 104), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v4 = specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 152);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.workoutVoice);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Could not Infer Intro moment with error: %@", v7, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = swift_task_alloc();
  *(v0 + 160) = v11;
  *v11 = v0;
  v11[1] = specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession(), v1, 0);
}

{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()()
{
  v1 = v0[3];
  v2 = v0[2];
  (*(v1 + 88))(1, v2, v1);
  v3 = (*(v1 + 104))(v2, v1);
  if (v4)
  {
LABEL_4:

    v13 = v0[1];

    return v13();
  }

  v5 = v3;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  (*(v0[3] + 128))(v0[2]);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    v9 = v0[5];
    v11 = v0[2];
    v10 = v0[3];
    outlined destroy of Measurement<NSUnitDuration>?(v0[7], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
    (*(*(v12 - 8) + 56))(v9, 4, 6, v12);
    (*(v10 + 24))(v9, v11, v10);
    goto LABEL_4;
  }

  v22 = v0[3];
  (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
  v21 = (*(v22 + 240) + **(v22 + 240));
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  v16 = v0[10];
  v17 = v0[6];
  v18 = v0[3];
  v19 = v0[2];
  v20.n128_u64[0] = v5;

  return v21(v17, v16, v19, v18, v20);
}

{
  v2 = *v1;
  (*v1)[14] = v0;

  if (v0)
  {
    v3 = v2[11];
    v4 = v2[12];
    v5 = WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  }

  else
  {
    outlined destroy of Measurement<NSUnitDuration>?(v2[6], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v3 = v2[11];
    v4 = v2[12];
    v5 = WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.workoutVoice);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[14];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Could not Infer Intro moment with error: %@", v7, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v16 = v0[3];

  v15 = (*(v16 + 248) + **(v16 + 248));
  v11 = swift_task_alloc();
  v0[15] = v11;
  *v11 = v0;
  v11[1] = WorkoutBuddyMomentCoordinating.progressWorkoutToInSession();
  v12 = v0[3];
  v13 = v0[2];

  return v15(0, 2, v13, v12);
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](WorkoutBuddyMomentCoordinating.progressWorkoutToInSession(), v3, v2);
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t WorkoutVoiceMomentCoordinator.State.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutVoiceMomentType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v1, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v12 = (*(*(v11 - 8) + 48))(v10, 6, v11);
  if (v12 <= 2)
  {
    if (v12)
    {
      if (v12 == 1)
      {
        return 0x696C616974696E69;
      }

      else
      {
        return 0xD000000000000013;
      }
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B469020);
      _print_unlocked<A, B>(_:_:)();
      v14 = v15[0];
      (*(v3 + 8))(v6, v2);
      return v14;
    }
  }

  else if (v12 > 4)
  {
    if (v12 == 5)
    {
      return 0x69746172656E6567;
    }

    else
    {
      return 1701736292;
    }
  }

  else if (v12 == 3)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000024;
  }
}

uint64_t key path getter for WorkoutVoiceMomentCoordinator.workoutState : WorkoutVoiceMomentCoordinator@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v5 = type metadata accessor for WorkoutState();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for WorkoutVoiceMomentCoordinator.workoutState : WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for WorkoutState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t WorkoutVoiceMomentCoordinator.workoutState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v4 = type metadata accessor for WorkoutState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t WorkoutVoiceMomentCoordinator.workoutState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v4 = type metadata accessor for WorkoutState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double key path getter for WorkoutVoiceMomentCoordinator.state : WorkoutVoiceMomentCoordinator@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t key path setter for WorkoutVoiceMomentCoordinator.state : WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v12 - v9;
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(a1, &v12 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v10, v7);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  return outlined destroy of WorkoutVoiceMomentCoordinator.State(v10, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
}

void WorkoutVoiceMomentCoordinator.state.didset()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v36 - v8);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.workoutVoice);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v14;
    *v13 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v9);

    v15 = WorkoutVoiceMomentCoordinator.State.description.getter();
    v17 = v16;
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v9, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v37);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_20AEA4000, v11, v12, "Updated Moment Coordinator state to %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v9);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v20 = *(*(v19 - 8) + 56);
  v20(v6, 1, 6, v19);
  v21 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v9, v6);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v6, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v9, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  if ((v21 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v9);

    v20(v6, 6, 6, v19);
    v22 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v9, v6);
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v6, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v9, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    if ((v22 & 1) == 0)
    {
      if (*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isAnnouncementHandlerSet))
      {
        goto LABEL_19;
      }

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_20AEA4000, v30, v31, "Setting announcement handler for live workouts", v32, 2u);
        MEMORY[0x20F2E9420](v32, -1, -1);
      }

      v33 = v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_19:
        v29 = 1;
        goto LABEL_20;
      }

      v34 = *(v33 + 8);
      ObjectType = swift_getObjectType();
      (*(v34 + 16))(v1, &protocol witness table for WorkoutVoiceMomentCoordinator, ObjectType, v34);
      v29 = 1;
      goto LABEL_18;
    }
  }

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isAnnouncementHandlerSet) == 1)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v23, v24, "Unsetting announcement handler for live voice workouts", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    v26 = v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v26 + 8);
      v28 = swift_getObjectType();
      (*(v27 + 16))(0, 0, v28, v27);
      v29 = 0;
LABEL_18:
      swift_unknownObjectRelease();
      goto LABEL_20;
    }
  }

  v29 = 0;
LABEL_20:
  *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isAnnouncementHandlerSet) = v29;
}

double WorkoutVoiceMomentCoordinator.state.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t WorkoutVoiceMomentCoordinator.state.setter(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(a1, v5);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  return outlined destroy of WorkoutVoiceMomentCoordinator.State(a1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
}

void (*WorkoutVoiceMomentCoordinator.state.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(type metadata accessor for WorkoutVoiceMomentCoordinator.State(0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    a1[1] = swift_coroFrameAlloc();
    a1[2] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    a1[2] = malloc(v3);
    v4 = malloc(v3);
  }

  v5 = v4;
  a1[3] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  return WorkoutVoiceMomentCoordinator.state.modify;
}

void WorkoutVoiceMomentCoordinator.state.modify(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  if (a2)
  {
    outlined init with copy of WorkoutVoiceMomentCoordinator.State(a1[3], v2);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutVoiceMomentCoordinator.State(v2, v4);

    static Published.subscript.setter();
    WorkoutVoiceMomentCoordinator.state.didset();
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v2, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutVoiceMomentCoordinator.State(v3, v2);

    static Published.subscript.setter();
    WorkoutVoiceMomentCoordinator.state.didset();
  }

  outlined destroy of WorkoutVoiceMomentCoordinator.State(v3, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  free(v3);
  free(v2);

  free(v4);
}

uint64_t key path getter for WorkoutVoiceMomentCoordinator.$state : WorkoutVoiceMomentCoordinator(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutVoiceMomentCoordinator.$state : WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutVoiceMomentCoordinator.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WorkoutVoiceMomentCoordinator.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WorkoutVoiceMomentCoordinator.$state.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D22VoiceMomentCoordinatorC5StateO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator__state;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutVoiceMomentCoordinator.$state.modify;
}

void WorkoutVoiceMomentCoordinator.$state.modify(uint64_t a1, char a2)
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

uint64_t WorkoutVoiceMomentCoordinator.introMomentGenerationDuration.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  swift_beginAccess();
  return *v1;
}

void WorkoutVoiceMomentCoordinator.introMomentGenerationDuration.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t key path setter for WorkoutVoiceMomentCoordinator.outroInferenceResult : WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v19 - v14;
  outlined init with copy of Measurement<NSUnitDuration>?(a1, &v19 - v14, a5, a6);
  v16 = *a2;
  v17 = *a7;
  swift_beginAccess();
  outlined assign with take of WorkoutVoiceMoment?(v15, v16 + v17, a5, a6);
  return swift_endAccess();
}

uint64_t WorkoutVoiceMomentCoordinator.outroInferenceResult.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Measurement<NSUnitDuration>?(v4 + v8, a4, a2, a3);
}

uint64_t WorkoutVoiceMomentCoordinator.introMoment.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
  swift_beginAccess();
  outlined assign with take of WorkoutVoiceMoment?(a1, v1 + v3, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  return swift_endAccess();
}

uint64_t WorkoutVoiceMomentCoordinator.hasWorkoutTransitionedToInSession.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutVoiceMomentCoordinator.hasWorkoutTransitionedToInSession.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset, a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  *(v0 + 56) = v3;
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v2 + v4, v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v5 = type metadata accessor for WorkoutVoiceMoment();
  *(v0 + 72) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset, v3, 0);
}

{
  *(*(v0 + 56) + 113) = *(v0 + 72) != 1;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset;

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset, a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  *(v0 + 56) = v3;
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v2 + v4, v1, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  v5 = type metadata accessor for AnnounceUtteranceRequest();
  *(v0 + 72) = (*(*(v5 - 8) + 48))(v1, 1, v5);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset, v3, 0);
}

{
  *(*(v0 + 56) + 113) = *(v0 + 72) != 1;
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset;

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for WorkoutVoiceMomentType();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)()
{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[7] = __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Prewarming Intro Moment", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];

  (*(v6 + 104))(v5, *MEMORY[0x277D0A468], v7);
  v12 = (*MEMORY[0x277D0A348] + MEMORY[0x277D0A348]);
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);
  v9 = v0[6];
  v10 = v0[3];

  return v12(v9, v10);
}

{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Prewarming Intro Moment failed with error %@", v7, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x2822009F8](closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), 0, 0);
}

uint64_t closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:)()
{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 40) configuration];
  v3 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v4 = *&v2[v3];

  if (v4 == 10)
  {
    v5 = closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);
  }

  else
  {
    v5 = closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, v1, 0);
}

{
  v1 = v0[6];
  v2 = objc_opt_self();
  v0[7] = v2;
  v3 = [v2 standardUserDefaults];
  v4 = MEMORY[0x20F2E6C00](*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey), *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey + 8));
  v5 = [v3 BOOLForKey_];

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);

  return WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:)(v5);
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:), v1, 0);
}

{
  v1 = *(v0 + 48);
  v2 = [*(v0 + 56) standardUserDefaults];
  v3 = MEMORY[0x20F2E6C00](*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey), *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey + 8));
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = closure #2 in WorkoutVoiceMomentCoordinator.init(activityType:lastKnownLocation:workoutGoal:isMachineWorkout:unitManager:fitnessIntelligenceConnection:inferenceClient:workoutVoiceAvailabilityProvider:sessionActivity:analyticsIdentifier:);

    return WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(0);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  WorkoutVoiceMomentCoordinator.resetCachedState()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t WorkoutVoiceMomentCoordinator.deinit()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(0, 0, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  v6 = type metadata accessor for WorkoutState();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator__state;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMd, &_s7Combine9PublishedVy11WorkoutCore0C22VoiceMomentCoordinatorC5StateOGMR);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  outlined destroy of Measurement<NSUnitDuration>?(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_outroInferenceResult, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_inferenceClient;
  v10 = type metadata accessor for InferenceClient();
  (*(*(v10 - 8) + 8))(v1 + v9, v10);

  sub_20AEDD5E8(v2);
  sub_20AEDD5E8(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertDelegate);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm_19((v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider));

  outlined destroy of Measurement<NSUnitDuration>?(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  outlined destroy of Measurement<NSUnitDuration>?(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t WorkoutVoiceMomentCoordinator.__deallocating_deinit()
{
  WorkoutVoiceMomentCoordinator.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v2 + 72) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)()
{
  v1 = *(v0 + 64);
  v2 = v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 56))(1, v3, v4);
  swift_endAccess();
  v5 = v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(0, 0, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v8 = *(v0 + 64);
  v9 = *(v0 + 88);
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = MEMORY[0x20F2E6C00](*(v8 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey), *(v8 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey + 8));
  [v10 setBool:1 forKey:v11];

  v12 = *(v8 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v13 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyFeatureNoLongerAvailable;
  swift_beginAccess();
  *(v12 + v13) = 1;
  if (v9 == 1)
  {
    v14 = *(*(v0 + 64) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
    *(v0 + 80) = v14;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:), v14, 0);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }
}

{
  v1 = v0[10];
  v2 = *(v1 + 117);
  *(v1 + 117) = 1;
  if ((v2 & 1) == 0)
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler, type metadata accessor for WorkoutBuddyDisplayStateHandler, &protocol conformance descriptor for WorkoutBuddyDisplayStateHandler);
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v6;
    v7[4] = v3;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in WorkoutBuddyDisplayStateHandler.isNoLongerAvailableInThisWorkout.didset, v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t WorkoutVoiceMomentCoordinator.setDelegate(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.setDelegate(_:)()
{
  v1 = v0[4];
  *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate + 8) = v0[3];
  swift_unknownObjectWeakAssign();
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  v0[5] = v2;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v2, 0);
}

{
  v1 = *(v0 + 40);
  BluetoothHeadphonesMonitor.setDelegate(_:)(*(v0 + 32), &protocol witness table for WorkoutVoiceMomentCoordinator);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v1, 0);
}

{
  v1 = *(v0 + 32);
  BluetoothHeadphonesMonitor.beginObserving()();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v1, 0);
}

{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_breakthroughMomentChecker);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v1, 0);
}

{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  *(v1 + 136) = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
  swift_unknownObjectWeakAssign();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v2, 0);
}

{
  v1 = *(*(v0 + 32) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setDelegate(_:), v1, 0);
}

{
  v1.n128_f64[0] = specialized MusicMomentHandler.setDelegate(_:)(v0[4], v0[7]);
  v2 = v0[1];

  return v2(v1);
}

uint64_t WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  v2[13] = swift_task_alloc();
  v3 = type metadata accessor for WorkoutState();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  v2[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[35] = swift_task_alloc();
  v4 = type metadata accessor for CacheIndex();
  v2[36] = v4;
  v2[37] = *(v4 - 8);
  v2[38] = swift_task_alloc();
  v5 = type metadata accessor for HKActivitySummaryRepresentable();
  v2[39] = v5;
  v2[40] = *(v5 - 8);
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:)()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_metricsPublisher);
  *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_metricsPublisher) = v1;
  v4 = v1;

  v5 = *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  v0[42] = v5;
  v0[43] = *&v4[OBJC_IVAR____TtC11WorkoutCore16MetricsPublisher_workoutBuddyStatePublisher];

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:), v5, 0);
}

{
  *(*(v0 + 336) + 128) = &protocol witness table for WorkoutBuddyStatePublisher;
  swift_unknownObjectWeakAssign();
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(1);
}

{
  v1 = *(*v0 + 80);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:), v1, 0);
}

{
  v49 = v0[41];
  v69 = v0[40];
  v1 = v0[38];
  v73 = v0[39];
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v35 = v0[34];
  v36 = v0[33];
  v38 = v0[32];
  v5 = v0[31];
  v44 = v5;
  v59 = v0[30];
  v81 = v0[29];
  v41 = v0[28];
  v65 = v0[27];
  v43 = v0[26];
  v45 = v0[25];
  v47 = v0[24];
  v51 = v0[23];
  v53 = v0[22];
  v55 = v0[21];
  v57 = v0[20];
  v61 = v0[19];
  v63 = v0[18];
  v75 = v0[15];
  v77 = v0[16];
  v67 = v0[10];
  v71 = v0[14];
  v79 = v0[13];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v0 + 8);

  v6 = v0[8];
  MEMORY[0x20F2E5840]([v6 _activitySummaryIndex]);
  v7 = v6;
  static HKActivitySummaryRepresentable.from(_:pausedIntervals:rings:moveTotal:moveMinutestotal:exerciseTotal:standTotal:stepsTotal:flightsTotal:distanceTotal:activityMoveMode:isWheelchairUser:)();

  (*(v2 + 8))(v1, v3);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = type metadata accessor for Date();
  v10 = *(*(v9 - 8) + 56);
  v10(v35, 1, 1, v9);
  v10(v36, 1, 1, v9);
  v10(v38, 1, 1, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v5, 1, 1, v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v39 = *(*(v14 - 8) + 56);
  v39(v41, 1, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v43, 1, 1, v15);
  v16(v45, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v17 - 8) + 56))(v47, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v51, 1, 1, v18);
  v19(v53, 1, 1, v18);
  v19(v55, 1, 1, v18);
  v19(v57, 1, 1, v18);
  v13(v59, 1, 1, v11);
  v20 = v12;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v21 - 8) + 56))(v61, 1, 1, v21);
  v39(v65, 1, 1, v14);
  (*(v69 + 16))(v63, v49, v73);
  (*(v69 + 56))(v63, 0, 1, v73);
  v22 = v67 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v33 = v22;
  (*(v75 + 16))(v77, v22, v71);
  v23 = type metadata accessor for WorkoutGoal();
  (*(*(v23 - 8) + 56))(v79, 1, 1, v23);
  outlined init with copy of Measurement<NSUnitDuration>?(v44, v81, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  LODWORD(v12) = (*(v12 + 48))(v81, 1, v11);
  v24 = v0[29];
  if (v12 == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[29], &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  }

  else
  {
    Measurement.value.getter();
    (*(v20 + 8))(v24, v11);
  }

  v37 = v0[40];
  v40 = v0[39];
  v42 = v0[41];
  v78 = v0[35];
  v74 = v0[34];
  v70 = v0[33];
  v66 = v0[32];
  v34 = v0[31];
  v64 = v0[30];
  v58 = v0[26];
  v60 = v0[28];
  v46 = v0[24];
  v72 = v0[23];
  v76 = v0[22];
  v48 = v0[21];
  v50 = v0[27];
  v52 = v0[19];
  v54 = v0[25];
  v80 = v0[20];
  v82 = v0[18];
  v56 = v0[17];
  v62 = v0[16];
  v25 = v0[15];
  v32 = v0[14];
  v26 = v0[12];
  v68 = v0[13];
  v27 = v0[11];
  v28 = type metadata accessor for WeatherCondition();
  (*(*(v28 - 8) + 56))(v26, 1, 1, v28);
  v29 = type metadata accessor for WorkoutMediaDetails();
  (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v27, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v26, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v68, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  (*(v25 + 8))(v62, v32);
  swift_beginAccess();
  (*(v25 + 40))(v33, v56, v32);
  swift_endAccess();
  WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()();

  outlined destroy of Measurement<NSUnitDuration>?(v82, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v50, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v52, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v64, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v80, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v48, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v76, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v72, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v46, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v54, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v58, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v60, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v34, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v70, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v78, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v37 + 8))(v42, v40);

  v30 = v0[1];

  return v30();
}

Swift::Void __swiftcall WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v6;
  v7[4] = v0;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady(), v7);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v6 = type metadata accessor for WorkoutState();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady(), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()()
{
  v1 = [*(v0[8] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionActivity) configuration];
  v2 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v3 = *&v1[v2];

  if (v3 == 10 && (v4 = v0[14], outlined init with copy of Measurement<NSUnitDuration>?(v0[8] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v5 = type metadata accessor for UUID(), v6 = (*(*(v5 - 8) + 48))(v4, 1, v5), outlined destroy of Measurement<NSUnitDuration>?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v6 != 1))
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.workoutVoice);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v23, v24, "Recovered a workout with a transcript, no need to re-generate intro. Skipping", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    v27 = v0[12];
    v26 = v0[13];

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
    (*(*(v28 - 8) + 56))(v26, 4, 6, v28);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutVoiceMomentCoordinator.State(v26, v27);

    static Published.subscript.setter();
    WorkoutVoiceMomentCoordinator.state.didset();
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v26, type metadata accessor for WorkoutVoiceMomentCoordinator.State);

    v29 = v0[1];

    return v29();
  }

  else
  {
    v7 = v0[12];
    v8 = v0[13];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v8);

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
    v0[15] = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    v0[16] = v11;
    v0[17] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v7, 3, 6, v9);
    v12 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v8, v7);
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v7, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v8, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    if (v12)
    {
      v14 = v0[10];
      v13 = v0[11];
      v16 = v0[8];
      v15 = v0[9];
      v17 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
      swift_beginAccess();
      (*(v14 + 16))(v13, v16 + v17, v15);
      v18 = swift_task_alloc();
      v0[18] = v18;
      *v18 = v0;
      v18[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady();
      v19 = v0[11];

      return WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(v19);
    }

    else
    {
      v21 = *(v0[8] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler);
      v0[19] = v21;

      return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady(), v21, 0);
    }
  }
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *v0;

  (*(v2 + 8))(v1, v3);

  v5 = *(v4 + 8);

  return v5();
}

{
  v1 = [*(*(v0 + 152) + 168) response];
  v2 = *(v0 + 64);
  if (v1)
  {

    v3 = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady();
  }

  else
  {
    v3 = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady();
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  (*(v0 + 128))(v1, 2, 6, *(v0 + 120));
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v1, v2);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);

  v3 = *(v0 + 8);

  return v3();
}

{
  v14 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.workoutVoice);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v4);

    v7 = WorkoutVoiceMomentCoordinator.State.description.getter();
    v9 = v8;
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v4, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Unexpected State %s where we have retrieved media info but are not ready to generate intro", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v6);
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference()()
{
  *(v1 + 80) = v0;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference(), v0, 0);
}

{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm_2(v0 + 2, v3);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference();

  return v7(v3, v4);
}

{
  v1 = v0[10];
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  v0[13] = v2;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference(), v2, 0);
}

{
  v1 = *(v0 + 80);
  *(v0 + 112) = *(*(v0 + 104) + 112);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference(), v1, 0);
}

{
  if (*(v0 + 112))
  {
    v1 = 1;
  }

  else
  {
    v1 = FIShowAudioTranscriptions();
  }

  if (*(v0 + 96) != 1)
  {
    outlined consume of WorkoutVoiceAvailabilityProvider.State(*(v0 + 96));
    v1 = 0;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference()(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference(), v2, 0);
}

Swift::Bool __swiftcall WorkoutVoiceMomentCoordinator.hasDeliveredIntroMomentAndReadyForMoreMoments()()
{
  v0 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v2 = MEMORY[0x28223BE20](v0 - 8, v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v11 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v8 - 8) + 56))(v4, 4, 6, v8);
  v9 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v7, v4);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v4, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v7, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  return v9 & 1;
}

uint64_t WorkoutVoiceMomentCoordinator.announceUtterance(_:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = type metadata accessor for AnnounceUtteranceResult();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for AudioSynthesisIntensity();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  type metadata accessor for AudioSynthesisVoiceSelection();
  v3[32] = swift_task_alloc();
  type metadata accessor for AudioSynthesisSettings();
  v3[33] = swift_task_alloc();
  v6 = type metadata accessor for AnnounceUtteranceRequest();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceUtterance(_:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.announceUtterance(_:)()
{
  v45 = v0;
  v0[5] = &type metadata for WorkoutFeatures;
  v1 = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
  *(v0 + 16) = 0;
  v0[6] = v1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  if ((v2 & 1) == 0)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v5, v13))
    {
      goto LABEL_18;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20AEA4000, v5, v13, "Announce voice feedback not enabled", v14, 2u);
    v15 = v14;
    goto LABEL_17;
  }

  v3 = v0[21];
  if (*(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements))
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutVoice);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_18;
    }

    v8 = v0[19];
    v7 = v0[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136380675;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v44);
    v11 = "Canceling all pending announcements. Skipping announcement of %{private}s";
    goto LABEL_16;
  }

  v16 = *(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v17 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  if (*(v16 + v17))
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.workoutVoice);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_18;
    }

    v20 = v0[19];
    v19 = v0[20];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44 = v10;
    *v9 = 136380675;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, &v44);
    v11 = "Workout Buddy is Muted. Skipping announcement of %{private}s";
LABEL_16:
    _os_log_impl(&dword_20AEA4000, v5, v6, v11, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    v15 = v9;
LABEL_17:
    MEMORY[0x20F2E9420](v15, -1, -1);
LABEL_18:

    v21 = v0[1];

    return v21();
  }

  v23 = v0[35];
  v24 = v0[36];
  v26 = v0[31];
  v25 = v0[32];
  v28 = v0[29];
  v27 = v0[30];
  v41 = v0[28];
  v42 = v0[34];
  v43 = v0[27];
  v29 = v0[21];
  v30 = type metadata accessor for AudioSynthesisVoice();
  (*(*(v30 - 8) + 56))(v25, 1, 1, v30);
  (*(v27 + 104))(v26, *MEMORY[0x277D0A4D8], v28);

  AudioSynthesisSettings.init(voiceSelection:intensity:)();
  AnnounceUtteranceRequest.init(utterance:settings:)();
  (*(v23 + 16))(v41, v24, v42);
  v31 = *(v23 + 56);
  v0[37] = v31;
  v0[38] = (v23 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v31(v41, 0, 1, v42);
  v32 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  v0[39] = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  swift_beginAccess();
  outlined assign with copy of AnnounceUtteranceRequest?(v41, v29 + v32, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  swift_endAccess();
  v33 = type metadata accessor for TaskPriority();
  v0[40] = v33;
  v34 = *(v33 - 8);
  v35 = *(v34 + 56);
  v0[41] = v35;
  v0[42] = (v34 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v35(v43, 1, 1, v33);
  v36 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
  v0[43] = v36;
  v37 = swift_allocObject();
  v37[2] = v29;
  v37[3] = v36;
  v37[4] = v29;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v43, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didset, v37);

  outlined destroy of Measurement<NSUnitDuration>?(v41, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(1);
  v38 = swift_task_alloc();
  v0[44] = v38;
  *v38 = v0;
  v38[1] = WorkoutVoiceMomentCoordinator.announceUtterance(_:);
  v39 = v0[36];
  v40 = v0[26];

  return MEMORY[0x282160A80](v40, v39);
}

{
  v2 = *v1;
  v2[45] = v0;

  if (v0)
  {
    v3 = v2[21];

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceUtterance(_:), v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[46] = v4;
    *v4 = v2;
    v4[1] = WorkoutVoiceMomentCoordinator.announceUtterance(_:);

    return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(1);
  }
}

{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceUtterance(_:), v1, 0);
}

{
  v43 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];
  v4 = v0[23];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.workoutVoice);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[25];
  v10 = v0[26];
  if (v9)
  {
    v12 = v0[23];
    v13 = v0[24];
    v40 = v0[22];
    v14 = v0[19];
    v35 = v0[20];
    v38 = v0[26];
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v15 = 136380931;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v35, &v42);
    *(v15 + 12) = 2081;
    v6(v13, v11, v40);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v11, v40);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v42);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Announce result for utterance: %{private}s; result: %{private}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v37, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);

    v19(v38, v40);
  }

  else
  {
    v21 = v0[22];
    v22 = v0[23];

    v23 = *(v22 + 8);
    v23(v11, v21);
    v23(v10, v21);
  }

  v39 = v0[43];
  v24 = v0[40];
  v36 = v0[41];
  v25 = v0[39];
  v26 = v0[37];
  v41 = v0[36];
  v27 = v0[34];
  v28 = v0[35];
  v30 = v0[27];
  v29 = v0[28];
  v31 = v0[21];
  WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(0);
  v26(v29, 1, 1, v27);
  swift_beginAccess();
  outlined assign with copy of AnnounceUtteranceRequest?(v29, v31 + v25, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  swift_endAccess();
  v36(v30, 1, 1, v24);
  v32 = swift_allocObject();
  v32[2] = v31;
  v32[3] = v39;
  v32[4] = v31;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v30, &closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didsetpartial apply, v32);

  outlined destroy of Measurement<NSUnitDuration>?(v29, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  (*(v28 + 8))(v41, v27);

  v33 = v0[1];

  return v33();
}

{
  v22 = v0[43];
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[37];
  v5 = v0[34];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[21];
  WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(0);
  v4(v6, 1, 1, v5);
  swift_beginAccess();
  outlined assign with copy of AnnounceUtteranceRequest?(v6, v8 + v3, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  swift_endAccess();
  v2(v7, 1, 1, v1);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v22;
  v9[4] = v8;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in WorkoutVoiceMomentCoordinator.alertAnnouncementInFlight.didsetpartial apply, v9);

  outlined destroy of Measurement<NSUnitDuration>?(v6, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v10 = v0[45];
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.workoutVoice);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[45];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v15;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Could not announce utterance with error: %@", v16, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v17, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v17, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v20 = swift_task_alloc();
  v0[47] = v20;
  *v20 = v0;
  v20[1] = WorkoutVoiceMomentCoordinator.announceUtterance(_:);

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceUtterance(_:), v1, 0);
}

{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(a1);
}

uint64_t WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 40) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:), v1, 0);
}

{
  v2 = *(v0 + 24);
  *(v2 + 113) = 0;
  if ((*(v2 + 115) & 1) == 0)
  {
    v3 = *(v0 + 24);
    v4 = *(v3 + 112);
    if (v4 != 2 && (v4 & 1) != 0)
    {
      *(v3 + 114) = *(v0 + 40);
    }
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = closure #1 in WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = type metadata accessor for InferenceResult();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMomentType();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for WorkoutVoiceMoment();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v3[30] = swift_task_alloc();
  type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.infer(moment:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.infer(moment:)()
{
  v55 = v0;
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v50 = v0[29];
  v5 = v0[23];
  v4 = v0[24];
  v7 = v0[12];
  v6 = v0[13];
  WorkoutVoiceMoment.type.getter();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v8 - 8) + 56))(v1, 0, 6, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v1, v2);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v52 = *(v4 + 16);
  v52(v3, v7, v5);
  v9 = 1;
  (*(v4 + 56))(v3, 0, 1, v5);
  v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight;
  swift_beginAccess();
  outlined assign with copy of AnnounceUtteranceRequest?(v3, v6 + v10, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  swift_endAccess();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v50, 1, 1, v11);
  v12 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v12;
  v13[4] = v6;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v50, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didset, v13);

  outlined destroy of Measurement<NSUnitDuration>?(v3, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(1);
  v14 = *(v6 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v15 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  if ((*(v14 + v15) & 1) == 0)
  {
    v16 = v0[28];
    v17 = type metadata accessor for AudioSynthesisVoice();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v9 = 0;
  }

  v18 = v0[28];
  v19 = type metadata accessor for AudioSynthesisVoiceSelection();
  (*(*(v19 - 8) + 56))(v18, v9, 1, v19);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v20 = v0[27];
  v21 = v0[28];
  v22 = v0[25];
  v23 = v0[23];
  v24 = v0[12];
  v25 = type metadata accessor for Logger();
  v0[33] = __swift_project_value_buffer(v25, static WOLog.workoutVoice);
  v52(v22, v24, v23);
  outlined init with copy of Measurement<NSUnitDuration>?(v21, v20, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[27];
  if (v28)
  {
    v30 = v0[25];
    v31 = v0[24];
    v51 = v0[23];
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v54 = v33;
    *v32 = 136315394;
    WorkoutVoiceMoment.type.getter();
    v34 = String.init<A>(describing:)();
    v36 = v35;
    (*(v31 + 8))(v30, v51);
    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v54);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    v38 = Optional.description.getter();
    v40 = v39;
    outlined destroy of Measurement<NSUnitDuration>?(v29, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v54);

    *(v32 + 14) = v41;
    _os_log_impl(&dword_20AEA4000, v26, v27, "Sending inference+announce request for moment %s with voice selection %s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v33, -1, -1);
    MEMORY[0x20F2E9420](v32, -1, -1);
  }

  else
  {
    v43 = v0[24];
    v42 = v0[25];
    v44 = v0[23];

    outlined destroy of Measurement<NSUnitDuration>?(v29, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
    (*(v43 + 8))(v42, v44);
  }

  v53 = (*MEMORY[0x277D0A368] + MEMORY[0x277D0A368]);
  v45 = swift_task_alloc();
  v0[34] = v45;
  *v45 = v0;
  v45[1] = WorkoutVoiceMomentCoordinator.infer(moment:);
  v46 = v0[28];
  v47 = v0[18];
  v48 = v0[12];

  return v53(v47, v48, v46);
}

{
  v2 = *v1;
  v2[35] = v0;

  if (v0)
  {
    v3 = v2[13];

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.infer(moment:), v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[36] = v4;
    *v4 = v2;
    v4[1] = WorkoutVoiceMomentCoordinator.infer(moment:);

    return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(1);
  }
}

{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.infer(moment:), v1, 0);
}

{
  v28 = v0;
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[14];
  v4 = *(v0[15] + 16);
  v4(v0[17], v1, v3);
  v4(v2, v1, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[14];
  v11 = v0[15];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v12 = 134218243;
    InferenceResult.inferenceDuration.getter();
    v14 = v13;
    v15 = *(v11 + 8);
    v15(v8, v10);
    *(v12 + 4) = v14;
    *(v12 + 12) = 2081;
    v16 = InferenceResult.text.getter();
    v18 = v17;
    v15(v9, v10);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v27);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_20AEA4000, v5, v6, "Moment took %f. Text: %{private}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v26);
    MEMORY[0x20F2E9420](v26, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  else
  {

    v20 = *(v11 + 8);
    v20(v9, v10);
    v20(v8, v10);
  }

  v21 = InferenceResult.text.getter();
  v23 = v22;
  v0[37] = v22;
  v24 = swift_task_alloc();
  v0[38] = v24;
  *v24 = v0;
  v24[1] = WorkoutVoiceMomentCoordinator.infer(moment:);

  return WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:)(v21, v23);
}

{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.infer(moment:), v1, 0);
}

{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  outlined destroy of Measurement<NSUnitDuration>?(v0[28], &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
  (*(v2 + 32))(v5, v1, v3);
  $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(v4);
  $defer #1 () in WorkoutVoiceMomentCoordinator.infer(moment:)(v4);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[35];
  outlined destroy of Measurement<NSUnitDuration>?(v0[28], &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMd, &_s19FitnessIntelligence28AudioSynthesisVoiceSelectionOSgMR);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[35];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Inference Failed. Error %@", v6, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = swift_task_alloc();
  v0[39] = v10;
  *v10 = v0;
  v10[1] = WorkoutVoiceMomentCoordinator.infer(moment:);

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.infer(moment:), v1, 0);
}

{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  WorkoutVoiceMoment.type.getter();
  (*(v4 + 104))(v2, *MEMORY[0x277D0A468], v3);
  v5 = static WorkoutVoiceMomentType.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[13] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
    swift_beginAccess();
    v8 = *(v7 + 24);
    v9 = *(v7 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    (*(v9 + 80))(1, v8, v9);
    swift_endAccess();
  }

  v10 = v0[13];
  swift_willThrow();
  $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(v10);
  $defer #1 () in WorkoutVoiceMomentCoordinator.infer(moment:)(v10);

  v11 = v0[1];

  return v11();
}

uint64_t $defer #1 () in WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v27 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v17);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v19 = *(*(v18 - 8) + 56);
  v19(v14, 6, 6, v18);
  v20 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v17, v14);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v14, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v17, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  if ((v20 & 1) == 0)
  {
    v19(v17, 4, 6, v18);
    swift_getKeyPath();
    swift_getKeyPath();
    outlined init with copy of WorkoutVoiceMomentCoordinator.State(v17, v14);

    static Published.subscript.setter();
    WorkoutVoiceMomentCoordinator.state.didset();
    outlined destroy of WorkoutVoiceMomentCoordinator.State(v17, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  }

  v21 = type metadata accessor for WorkoutVoiceMoment();
  (*(*(v21 - 8) + 56))(v9, 1, 1, v21);
  v22 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight;
  swift_beginAccess();
  outlined assign with copy of AnnounceUtteranceRequest?(v9, a1 + v22, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  swift_endAccess();
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  v24 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = v24;
  v25[4] = a1;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in WorkoutVoiceMomentCoordinator.momentInFlight.didsetpartial apply, v25);

  return outlined destroy of Measurement<NSUnitDuration>?(v9, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
}

double $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v34 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v33 = v9;
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = v32 - v20;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = v23;
  v24[4] = a1;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v21, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript(), v24);

  _sSo8NSObjectCMaTm_4(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v25 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v26 = v10 + 8;
  v27 = *(v10 + 8);
  v32[1] = v26;
  v27(v14, v9);
  v28 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in $defer #2 () in WorkoutVoiceMomentCoordinator.infer(moment:);
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_278;
  v29 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v38 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v30 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7500](v17, v8, v30, v29);
  _Block_release(v29);

  (*(v37 + 8))(v30, v2);
  (*(v35 + 8))(v8, v36);
  v27(v17, v33);

  return result;
}

uint64_t WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:)()
{
  v1 = v0[7] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v16 = (*(v3 + 8) + **(v3 + 8));
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:);
    v7 = v0[5];
    v6 = v0[6];

    return v16(v7, v6, ObjectType, v3);
  }

  else
  {
    if (FIShowAudioTranscriptions())
    {
      v9 = *(v0[7] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
      v10 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
      swift_beginAccess();
      if ((*(v9 + v10) & 1) == 0)
      {
        v11 = v0[6];
        v12 = v0[5];
        objc_allocWithZone(type metadata accessor for TranscriptWorkoutAlert());

        v13 = TranscriptWorkoutAlert.init(title:message:)(0, 0, v12, v11);
        v14 = swift_unknownObjectWeakLoadStrong();
        if (v14)
        {
          [v14 alertSource:v0[7] didTriggerAlert:v13];
          swift_unknownObjectRelease();
        }
      }
    }

    v15 = v0[1];

    return v15();
  }
}

{
  v1 = *(*v0 + 56);

  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.receivedInferenceResponse(_:), v1, 0);
}

{
  if (FIShowAudioTranscriptions())
  {
    v1 = *(v0[7] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
    v2 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
    swift_beginAccess();
    if ((*(v1 + v2) & 1) == 0)
    {
      v3 = v0[6];
      v4 = v0[5];
      objc_allocWithZone(type metadata accessor for TranscriptWorkoutAlert());

      v5 = TranscriptWorkoutAlert.init(title:message:)(0, 0, v4, v3);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong alertSource:v0[7] didTriggerAlert:v5];
        swift_unknownObjectRelease();
      }
    }
  }

  v7 = v0[1];

  return v7();
}

double WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v19 - v6;
  if ((*(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasCheckedForHealthDataAvailability) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasCheckedForHealthDataAvailability) = 1;
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static WOLog.workoutVoice);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v20);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_20AEA4000, v9, v10, "[%s]: checking if protected health data is available", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v12);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    v16 = type metadata accessor for TaskPriority();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    v17 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
    v18 = swift_allocObject();
    v18[2] = v1;
    v18[3] = v17;
    v18[4] = v1;
    v18[5] = v2;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded(), v18);
  }

  return result;
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded(), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v1 = static WorkoutCoreInjector.healthStore;
  v0[2] = v0;
  v0[7] = v0 + 31;
  v0[3] = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySb_Sbts5Error_pGMd, &_sSccySb_Sbts5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned Bool, @unowned NSError?) -> () with result type (Bool, Bool);
  v0[13] = &block_descriptor_72;
  v0[14] = v2;
  [v1 isProtectedDataAvailableWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 168);
  if (v2)
  {
    v4 = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
  }

  else
  {
    v4 = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v13 = v0;
  if (*(v0 + 248))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    *(v0 + 200) = __swift_project_value_buffer(v3, static WOLog.workoutVoice);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      v8 = _typeName(_:qualified:)();
      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_20AEA4000, v4, v5, "[%s]: protected health data not available; disabling workout voice for current workout and canceling any pending announcements.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v7);
      MEMORY[0x20F2E9420](v7, -1, -1);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    *(*(v0 + 168) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) = 1;
    v11 = swift_task_alloc();
    *(v0 + 208) = v11;
    *v11 = v0;
    v11[1] = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();

    return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
  }
}

{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded(), v1, 0);
}

{
  v37 = v0;
  v1 = [*(v0[21] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionActivity) configuration];
  v2 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_startSource;
  swift_beginAccess();
  v3 = *&v1[v2];

  if (v3 == 10 && (v4 = v0[23], outlined init with copy of Measurement<NSUnitDuration>?(v0[21] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_recoveredSessionIdentifier, v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v5 = type metadata accessor for UUID(), v6 = (*(*(v5 - 8) + 48))(v4, 1, v5), outlined destroy of Measurement<NSUnitDuration>?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR), v6 != 1))
  {
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v30 = 136315138;
      v32 = _typeName(_:qualified:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v36);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_20AEA4000, v28, v29, "[%s]: recovered a workout with a transcript, no need to present phone locked alert again. Skipping.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    v26 = swift_task_alloc();
    v0[27] = v26;
    *v26 = v0;
    v27 = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
  }

  else
  {
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36 = v10;
      *v9 = 136315138;
      v11 = _typeName(_:qualified:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v36);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_20AEA4000, v7, v8, "[%s]: protected health data not available; presenting phone locked alert.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    v14 = v0[21];
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    v17 = MEMORY[0x20F2E6C00](0xD000000000000028, 0x800000020B469460);
    v18 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v19 = [v16 localizedStringForKey:v17 value:0 table:v18];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v0[28] = v20;
    v0[29] = v22;
    v23 = v14 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_delegate;

    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      (*(v24 + 24))(v20, v22, ObjectType, v24);
      swift_unknownObjectRelease();
    }

    v26 = swift_task_alloc();
    v0[30] = v26;
    *v26 = v0;
    v27 = closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded();
  }

  v26[1] = v27;

  return WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(0);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

{
  v1 = *(*v0 + 168);

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded(), v1, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()(__n128 a1)
{
  v2 = v1[28];
  v3 = v1[29];
  v4 = objc_allocWithZone(type metadata accessor for TranscriptWorkoutAlert());
  v5 = TranscriptWorkoutAlert.init(title:message:)(0, 0, v2, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alertSource:v1[21] didTriggerAlert:v5];
    swift_unknownObjectRelease();
  }

  v7 = v1[1];

  return v7();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.presentPhoneLockedAlertIfNeeded()(uint64_t a1)
{
  v20 = v1;
  swift_willThrow();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 192);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.workoutVoice);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v1 + 192);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v9 = 136315394;
    v12 = _typeName(_:qualified:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v19);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[%s]: received error checking health data availability: %@", v9, 0x16u);
    outlined destroy of Measurement<NSUnitDuration>?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v11);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Bool, @unowned Bool, @unowned NSError?) -> () with result type (Bool, Bool)(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1Tm_2((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    v11 = *(*(v7 + 64) + 40);
    *v11 = a2;
    v11[1] = a3;

    return MEMORY[0x282200950](v7);
  }
}

uint64_t WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for UUID();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for WorkoutState();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMomentType();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v2[16] = swift_task_alloc();
  type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)()
{
  v1 = v0[17];
  v2 = v0[18];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v2);

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v0[19] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 56);
  v0[20] = v5;
  v0[21] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 3, 6, v3);
  v6 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v2, v1);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v2, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  if (v6)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    v0[22] = __swift_project_value_buffer(v7, static WOLog.workoutVoice);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Generating Intro Moment", v10, 2u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v11 = v0[6];

    v12 = *(v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
    v0[23] = v12;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), v12, 0);
  }

  else
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.workoutVoice);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v14, v15, "Coordinator isn't ready to generate intro. Returning", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }

    v17 = v0[1];

    return v17();
  }
}

{
  *(*(v0 + 184) + 113) = 1;
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), v1, 0);
}

{
  v7 = *(v0 + 40);
  (*(*(v0 + 112) + 104))(*(v0 + 120), *MEMORY[0x277D0A468], *(v0 + 104));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  v1[1] = vextq_s8(v7, v7, 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 40);

  return WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(v3, v4, v5, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), v1);
}

{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = v2[6];
    (*(v2[14] + 8))(v2[15], v2[13]);

    v4 = WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
    v5 = v3;
  }

  else
  {
    v7 = v2[15];
    v6 = v2[16];
    v8 = v2[13];
    v9 = v2[14];
    v10 = v2[6];

    (*(v9 + 8))(v7, v8);
    outlined destroy of Measurement<NSUnitDuration>?(v6, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v4 = WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
    v5 = v10;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  (*(v0 + 160))(v1, 4, 6, *(v0 + 152));
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v1, v2);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = *(v0 + 48);
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v4 + 16))(v3, v9 + v11, v6);
  WorkoutState.identifier.getter();
  (*(v4 + 8))(v3, v6);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v8 + 8))(v5, v7);
  v15 = MEMORY[0x20F2E6C00](v12, v14);

  v16 = MEMORY[0x20F2E6C00](*(v9 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey), *(v9 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey + 8));
  [v10 setObject:v15 forKey:v16];

  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = *(v0 + 216);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Could not Infer Intro moment with error: %@", v6, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 224) = v10;
  *v10 = v0;
  v10[1] = WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), v1, 0);
}

{

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v2 + 16))(v1, v7 + v9, v4);
  WorkoutState.identifier.getter();
  (*(v2 + 8))(v1, v4);
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v6 + 8))(v3, v5);
  v13 = MEMORY[0x20F2E6C00](v10, v12);

  v14 = MEMORY[0x20F2E6C00](*(v7 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey), *(v7 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey + 8));
  [v8 setObject:v13 forKey:v14];

  v15 = *(v0 + 8);

  return v15();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for WorkoutVoiceMoment();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMomentType();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:)()
{
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D0A468], v0[10]);
  v6 = (*MEMORY[0x277D0A340] + MEMORY[0x277D0A340]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[4];

  return v6(v2, v3, v4);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
  }

  else
  {
    v5 = closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMoment(workoutState:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v41 = v0;
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  outlined init with copy of Measurement<NSUnitDuration>?(v0[14], v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[13], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v6, "No Intro Moment", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    v8 = v0[14];

    outlined destroy of Measurement<NSUnitDuration>?(v8, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v9 = 1;
  }

  else
  {
    v10 = *(v0[6] + 32);
    v10(v0[9], v0[13], v0[5]);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[5];
    v14 = v0[6];
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.workoutVoice);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[14];
    v21 = v0[8];
    if (v19)
    {
      v39 = v10;
      v22 = v0[6];
      v23 = v0[7];
      v24 = v0[5];
      v38 = v0[14];
      v25 = swift_slowAlloc();
      v37 = v18;
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136380675;
      v16(v23, v21, v24);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      v30 = v24;
      v10 = v39;
      (*(v22 + 8))(v21, v30);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v40);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_20AEA4000, v17, v37, "Intro moment: %{private}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);

      v32 = v38;
    }

    else
    {
      v34 = v0[5];
      v33 = v0[6];

      (*(v33 + 8))(v21, v34);
      v32 = v20;
    }

    outlined destroy of Measurement<NSUnitDuration>?(v32, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v10(v0[2], v0[9], v0[5]);
    v9 = 0;
  }

  (*(v0[6] + 56))(v0[2], v9, 1, v0[5]);

  v35 = v0[1];

  return v35();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a3;
  *(v4 + 40) = a1;
  *(v4 + 72) = type metadata accessor for WorkoutVoiceMomentAnalyticsEvent(0);
  *(v4 + 80) = swift_task_alloc();
  v5 = type metadata accessor for WorkoutState();
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  v6 = type metadata accessor for WorkoutVoiceMomentType();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:), v3, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)()
{
  *(v0 + 144) = CFAbsoluteTimeGetCurrent();
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:);
  v2 = *(v0 + 136);
  v3 = *(v0 + 56);

  return WorkoutVoiceMomentCoordinator.infer(moment:)(v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:);
  }

  else
  {
    v4 = WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  v3 = *(v0 + 48);
  v4 = *(v0 + 40);
  v5 = type metadata accessor for InferenceResult();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  outlined init with take of InferenceResult?(v2, v4, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  *(v0 + 176) = v3 + CFAbsoluteTimeGetCurrent() - v1;
  *(v0 + 168) = 0;
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  WorkoutVoiceMoment.type.getter();
  v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v11 = *(v7 + 16);
  v11(v6, v9 + v10, v8);
  if (*(v9 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isDemoMode) == 1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.workoutVoice);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 120);
    v16 = *(v0 + 128);
    v19 = *(v0 + 104);
    v18 = *(v0 + 112);
    v20 = *(v0 + 88);
    v21 = *(v0 + 96);
    if (v15)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20AEA4000, v13, v14, "skipping analytics for demo mode", v22, 2u);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    (*(v21 + 8))(v19, v20);
    (*(v17 + 8))(v16, v18);

    v23 = *(v0 + 8);

    return v23();
  }

  else
  {
    v26 = *(v0 + 120);
    v25 = *(v0 + 128);
    v27 = *(v0 + 104);
    v28 = *(v0 + 112);
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);
    v31 = *(v0 + 64);
    v32 = *(v0 + 72);
    v35 = *(v0 + 40);
    v33 = v31 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier;
    *(v0 + 184) = *(v31 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
    *(v0 + 192) = *(v33 + 8);
    v11(v30 + v32[6], v27, v29);
    (*(v26 + 16))(v30 + v32[7], v25, v28);
    outlined init with copy of Measurement<NSUnitDuration>?(v35, v30 + v32[8], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v34 = *(v31 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
    *(v0 + 200) = v34;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:), v34, 0);
  }
}

{
  v1 = *(v0 + 200);
  *(v0 + 208) = *(v1 + 112);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:), v1, 0);
}

{
  v1 = *(v0 + 64);
  *(v0 + 209) = *(*(v0 + 200) + 113);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:), v1, 0);
}

{
  v1 = *(v0 + 209);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v6 = *(v0 + 168);
  v5 = *(v0 + 176);
  v8 = *(v0 + 120);
  v7 = *(v0 + 128);
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  v11 = *(v0 + 88);
  v12 = *(v0 + 96);
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);
  v15 = *(v0 + 48);
  v16 = *(v0 + 160) != 0;
  *v14 = 0xD000000000000026;
  v14[1] = 0x800000020B469090;
  v14[2] = v4;
  v14[3] = v3;
  v17 = v14 + v13[9];
  *v17 = v15;
  v17[8] = 0;
  v18 = v14 + v13[10];
  *v18 = v5;
  v18[8] = v16;
  *(v14 + v13[11]) = v2;
  *(v14 + v13[12]) = v1;
  *(v14 + v13[13]) = 2;
  *(v14 + v13[14]) = v6;
  specialized WorkoutVoiceAnalyticsHandling.send()();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v14, type metadata accessor for WorkoutVoiceMomentAnalyticsEvent);
  (*(v12 + 8))(v10, v11);
  (*(v8 + 8))(v7, v9);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = v0[20];
  v2 = v0[5];
  v3 = type metadata accessor for InferenceResult();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = v1;
  v0[21] = v1;
  v0[22] = 0;
  v6 = v0[12];
  v5 = v0[13];
  v7 = v0[11];
  v8 = v0[8];
  WorkoutVoiceMoment.type.getter();
  v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v10 = *(v6 + 16);
  v10(v5, v8 + v9, v7);
  if (*(v8 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isDemoMode) == 1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.workoutVoice);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    v14 = os_log_type_enabled(v12, v13);
    v16 = v0[15];
    v15 = v0[16];
    v18 = v0[13];
    v17 = v0[14];
    v20 = v0[11];
    v19 = v0[12];
    if (v14)
    {
      v35 = v0[16];
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20AEA4000, v12, v13, "skipping analytics for demo mode", v21, 2u);
      v22 = v21;
      v15 = v35;
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);

    v23 = v0[1];

    return v23();
  }

  else
  {
    v26 = v0[15];
    v25 = v0[16];
    v27 = v0[13];
    v28 = v0[14];
    v30 = v0[10];
    v29 = v0[11];
    v31 = v0[8];
    v32 = v0[9];
    v36 = v0[5];
    v33 = v31 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier;
    v0[23] = *(v31 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
    v0[24] = *(v33 + 8);
    v10(v30 + v32[6], v27, v29);
    (*(v26 + 16))(v30 + v32[7], v25, v28);
    outlined init with copy of Measurement<NSUnitDuration>?(v36, v30 + v32[8], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v34 = *(v31 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
    v0[25] = v34;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:), v34, 0);
  }
}

void WorkoutVoiceMomentCoordinator.supportsPeriodicProgressMoments()(__int16 *a1@<X8>)
{
  v3 = type metadata accessor for WorkoutState();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_supportedMetrics);
  v9 = *(v8 + 16);
  v10 = (v8 + 32);
  while (v9)
  {
    v11 = *v10++;
    --v9;
    if (v11 == 35)
    {
      v12 = 256;
      goto LABEL_8;
    }
  }

  v13 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v13, v3);
  v14 = WorkoutState.activityType.getter();
  (*(v4 + 8))(v7, v3);
  v15 = [v14 supportsWorkoutVoiceMotivationProgressMoments];

  if (v15)
  {
    lazy protocol witness table accessor for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError();
    static Result<>.success.getter();
    return;
  }

  v12 = 257;
LABEL_8:
  *a1 = v12;
}

uint64_t WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported()()
{
  v1[8] = v0;
  v2 = type metadata accessor for WorkoutState();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported(), v0, 0);
}

{
  v30 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_supportedMetrics);
  v3 = *(v2 + 16);
  v4 = (v2 + 32);
  while (v3)
  {
    v5 = *v4++;
    --v3;
    if (v5 == 35)
    {
      v6 = 0;
LABEL_9:
      if (one-time initialization token for workoutVoice != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static WOLog.workoutVoice);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v29 = v16;
        *v15 = 136315138;
        if (v6)
        {
          v17 = 0xD000000000000029;
        }

        else
        {
          v17 = 0xD00000000000001BLL;
        }

        if (v6)
        {
          v18 = "iceCompanionNotConnectedAlert";
        }

        else
        {
          v18 = "NotSupportProgressMoments";
        }

        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18 | 0x8000000000000000, &v29);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_20AEA4000, v13, v14, "Current Workout does not support time based progress moments with error %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm_19(v16);
        MEMORY[0x20F2E9420](v16, -1, -1);
        MEMORY[0x20F2E9420](v15, -1, -1);
      }

      v20 = *(v0 + 8);

      return v20();
    }
  }

  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 72);
  v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v8 + 16))(v7, v1 + v10, v9);
  v11 = WorkoutState.activityType.getter();
  (*(v8 + 8))(v7, v9);
  LODWORD(v7) = [v11 supportsWorkoutVoiceMotivationProgressMoments];

  if (!v7)
  {
    v6 = 1;
    goto LABEL_9;
  }

  lazy protocol witness table accessor for type TimeBasedProgressMomentSupportError and conformance TimeBasedProgressMomentSupportError();
  static Result<>.success.getter();
  if (*(v0 + 105) == 1)
  {
    v6 = *(v0 + 104);
    goto LABEL_9;
  }

  v23 = *(v0 + 80);
  v22 = *(v0 + 88);
  v25 = *(v0 + 64);
  v24 = *(v0 + 72);
  v26 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v23 + 16))(v22, v25 + v26, v24);
  v27 = swift_task_alloc();
  *(v0 + 96) = v27;
  *v27 = v0;
  v27[1] = WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported();
  v28 = *(v0 + 88);

  return WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(v28);
}

{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t WorkoutVoiceMomentCoordinator.checkForBreakthroughs()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.checkForBreakthroughs(), v0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.checkForBreakthroughs();

  return BreakthroughMomentChecker.startChecking()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WorkoutVoiceMomentCoordinator.generateOutroMoment()()
{
  v1[16] = v0;
  v2 = type metadata accessor for WorkoutState();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v3 = type metadata accessor for WorkoutVoiceMomentType();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v1[23] = swift_task_alloc();
  type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v0, 0);
}

{
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[26] = __swift_project_value_buffer(v1, static WOLog.workoutVoice);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Generating Outro Moment", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = v0[16];

  v6 = *(v5 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  v0[27] = v6;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v6, 0);
}

{
  *(*(v0 + 216) + 113) = 1;
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.generateOutroMoment();

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(1);
}

{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v1, 0);
}

{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[18];
  v18 = v0[17];
  v19 = v0[19];
  v7 = v0[16];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v0[29] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v0[30] = v10;
  v0[31] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v1, 5, 6, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v1, v2);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  (*(v3 + 104))(v4, *MEMORY[0x277D0A470], v5);
  v11 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v6 + 16))(v19, v7 + v11, v18);

  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = WorkoutVoiceMomentCoordinator.generateOutroMoment();
  v14 = v0[22];
  v13 = v0[23];
  v15 = v0[19];
  v16 = v0[16];

  return specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(v13, v14, v15, v16, v16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v6 = *(*v1 + 152);
  v7 = *(*v1 + 144);
  v8 = *(*v1 + 136);
  *(*v1 + 264) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  v9 = *(v2 + 128);
  if (v0)
  {
    v10 = WorkoutVoiceMomentCoordinator.generateOutroMoment();
  }

  else
  {
    v10 = WorkoutVoiceMomentCoordinator.generateOutroMoment();
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

{
  v1 = v0[23];
  v2 = v0[16];
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_outroInferenceResult;
  swift_beginAccess();
  outlined assign with take of WorkoutVoiceMoment?(v1, v2 + v3, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  swift_endAccess();
  v4 = *(v0[16] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  v0[34] = v4;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v4, 0);
}

{
  v1 = *(v0 + 128);
  BluetoothHeadphonesMonitor.stopObserving()();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v1, 0);
}

{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 128);
  (*(v0 + 240))(v2, 6, 6, *(v0 + 232));
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v2, v1);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v2, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v3 + v4, v0 + 16);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v5);
  (*(v6 + 96))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 16));

  v7 = *(v0 + 8);

  return v7();
}

{
  v1 = *(v0 + 264);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 264);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Could not Infer Outro moment with error: %@", v6, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 280) = v10;
  *v10 = v0;
  v10[1] = WorkoutVoiceMomentCoordinator.generateOutroMoment();

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v1, 0);
}

{

  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  *(v0 + 272) = v1;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateOutroMoment(), v1, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment()(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for WorkoutVoiceMoment();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for WorkoutState();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMomentType();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment(), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment()()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[6];
  v0[20] = *(v4 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  (*(v2 + 104))(v1, *MEMORY[0x277D0A470], v3);

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment(), v4, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[6];
  v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v11 = (*MEMORY[0x277D0A340] + MEMORY[0x277D0A340]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment();
  v7 = v0[19];
  v8 = v0[17];
  v9 = v0[14];

  return v11(v7, v8, v9);
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = v2[17];
  v4 = v2[16];
  v5 = v2[15];
  (*(v2[13] + 8))(v2[14], v2[12]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment();
  }

  else
  {
    v6 = closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{
  v43 = v0;
  v1 = v0[18];
  v2 = v0[7];
  v3 = v0[8];
  outlined init with copy of Measurement<NSUnitDuration>?(v0[19], v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[18], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v6, "No Outro Moment", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    v8 = v0[19];

    outlined destroy of Measurement<NSUnitDuration>?(v8, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v9 = 1;
  }

  else
  {
    v10 = v0[22];
    v11 = *(v0[8] + 32);
    v11(v0[11], v0[18], v0[7]);
    static Task<>.checkCancellation()();
    if (v10)
    {
      v12 = v0[19];
      (*(v0[8] + 8))(v0[11], v0[7]);
      outlined destroy of Measurement<NSUnitDuration>?(v12, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);

      v13 = v0[1];
      goto LABEL_16;
    }

    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v14 = v0[10];
    v15 = v0[11];
    v16 = v0[7];
    v17 = v0[8];
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static WOLog.workoutVoice);
    v19 = *(v17 + 16);
    v19(v14, v15, v16);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[19];
    v24 = v0[10];
    if (v22)
    {
      v39 = v21;
      v25 = v0[8];
      v26 = v0[9];
      v41 = v11;
      v27 = v0[7];
      v40 = v0[19];
      v28 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v28 = 136380675;
      v19(v26, v24, v27);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      v32 = v27;
      v11 = v41;
      (*(v25 + 8))(v24, v32);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v42);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_20AEA4000, v20, v39, "Outro moment: %{private}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v38);
      MEMORY[0x20F2E9420](v38, -1, -1);
      MEMORY[0x20F2E9420](v28, -1, -1);

      v34 = v40;
    }

    else
    {
      v36 = v0[7];
      v35 = v0[8];

      (*(v35 + 8))(v24, v36);
      v34 = v23;
    }

    outlined destroy of Measurement<NSUnitDuration>?(v34, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v11(v0[5], v0[11], v0[7]);
    v9 = 0;
  }

  (*(v0[8] + 56))(v0[5], v9, 1, v0[7]);

  v13 = v0[1];
LABEL_16:

  return v13();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for WorkoutVoiceMomentType();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider);
  if (v1)
  {
    [v1 markAveragingSegment];
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v2, static WOLog.workoutVoice);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Generating Split Moment", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = v0[3];

  v7 = *(v6 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  v0[9] = v7;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), v7, 0);
}

{
  *(*(v0 + 72) + 113) = 1;
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), v1, 0);
}

{
  v7 = v0[1];
  (*(v0[2].i64[1] + 104))(v0[3].i64[0], *MEMORY[0x277D0A478], v0[2].i64[0]);
  v1 = swift_task_alloc();
  v0[5].i64[1] = v1;
  v1[1] = vextq_s8(v7, v7, 8uLL);
  v2 = swift_task_alloc();
  v0[6].i64[0] = v2;
  *v2 = v0;
  v2[1] = WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
  v4 = v0[3].i64[0];
  v3 = v0[3].i64[1];
  v5 = v0[1].i64[0];

  return WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(v3, v4, v5, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), v1);
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = v2[3];
    (*(v2[5] + 8))(v2[6], v2[4]);

    v4 = WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
    v5 = v3;
  }

  else
  {
    v7 = v2[6];
    v6 = v2[7];
    v8 = v2[4];
    v9 = v2[5];
    v10 = v2[3];

    (*(v9 + 8))(v7, v8);
    outlined destroy of Measurement<NSUnitDuration>?(v6, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v4 = WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
    v5 = v10;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 104);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Could not Infer Split moment with error: %@", v6, 0xCu);
    outlined destroy of Measurement<NSUnitDuration>?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v10 = swift_task_alloc();
  *(v0 + 112) = v10;
  *v10 = v0;
  v10[1] = WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
}

{
  v1 = *(*v0 + 24);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), v1, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for WorkoutVoiceMoment();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMomentType();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)()
{
  (*(v0[11] + 104))(v0[12], *MEMORY[0x277D0A478], v0[10]);
  v6 = (*MEMORY[0x277D0A340] + MEMORY[0x277D0A340]);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[4];

  return v6(v2, v3, v4);
}

{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
  }

  else
  {
    v5 = closure #1 in WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v41 = v0;
  v1 = v0[13];
  v2 = v0[5];
  v3 = v0[6];
  outlined init with copy of Measurement<NSUnitDuration>?(v0[14], v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[13], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.workoutVoice);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, v5, v6, "No split Moment", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    v8 = v0[14];

    outlined destroy of Measurement<NSUnitDuration>?(v8, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v9 = 1;
  }

  else
  {
    v10 = *(v0[6] + 32);
    v10(v0[9], v0[13], v0[5]);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v11 = v0[8];
    v12 = v0[9];
    v13 = v0[5];
    v14 = v0[6];
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.workoutVoice);
    v16 = *(v14 + 16);
    v16(v11, v12, v13);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[14];
    v21 = v0[8];
    if (v19)
    {
      v39 = v10;
      v22 = v0[6];
      v23 = v0[7];
      v24 = v0[5];
      v38 = v0[14];
      v25 = swift_slowAlloc();
      v37 = v18;
      v26 = swift_slowAlloc();
      v40 = v26;
      *v25 = 136380675;
      v16(v23, v21, v24);
      v27 = String.init<A>(describing:)();
      v29 = v28;
      v30 = v24;
      v10 = v39;
      (*(v22 + 8))(v21, v30);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v40);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_20AEA4000, v17, v37, "Split moment: %{private}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm_19(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);

      v32 = v38;
    }

    else
    {
      v34 = v0[5];
      v33 = v0[6];

      (*(v33 + 8))(v21, v34);
      v32 = v20;
    }

    outlined destroy of Measurement<NSUnitDuration>?(v32, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v10(v0[2], v0[9], v0[5]);
    v9 = 0;
  }

  (*(v0[6] + 56))(v0[2], v9, 1, v0[5]);

  v35 = v0[1];

  return v35();
}

double WorkoutVoiceMomentCoordinator.setHeartRateDataProvider(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider) = a1;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  return result;
}

Swift::Void __swiftcall WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v28 - v4;
  v6 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = (&v28 - v12);
  v14 = type metadata accessor for WorkoutState();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_didPrefetchOutroContext;
  if ((*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_didPrefetchOutroContext) & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
    swift_beginAccess();
    (*(v15 + 16))(v18, v1 + v20, v14);
    WorkoutState.duration.getter();
    v22 = v21;
    (*(v15 + 8))(v18, v14);
    if (NLWorkoutAutoDiscardDurationLimit() < v22)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v13);

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
      (*(*(v23 - 8) + 56))(v10, 4, 6, v23);
      v24 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v13, v10);
      outlined destroy of WorkoutVoiceMomentCoordinator.State(v10, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
      outlined destroy of WorkoutVoiceMomentCoordinator.State(v13, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
      if (v24)
      {
        *(v1 + v19) = 1;
        v25 = type metadata accessor for TaskPriority();
        (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
        v26 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
        v27 = swift_allocObject();
        v27[2] = v1;
        v27[3] = v26;
        v27[4] = v1;
        swift_retain_n();
        _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded(), v27);
      }
    }
  }
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = type metadata accessor for WorkoutState();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutVoiceMomentType();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded(), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded()()
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
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "Prewarming Outro Moment", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v6 = v0[10];
  v5 = v0[11];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[5];

  (*(v6 + 104))(v5, *MEMORY[0x277D0A470], v7);
  v12 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v10 + 16))(v8, v11 + v12, v9);
  v17 = (*MEMORY[0x277D0A348] + MEMORY[0x277D0A348]);
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded();
  v14 = v0[11];
  v15 = v0[8];

  return v17(v14, v15);
}

{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 104) = v0;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v10 = *(v2 + 40);

    return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.prewarmFutureContextsIfNeeded(), v10, 0);
  }

  else
  {

    v11 = *(v9 + 8);

    return v11();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(uint64_t a1, char a2)
{
  *(v3 + 336) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v3 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  *(v3 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  *(v3 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  *(v3 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  *(v3 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  *(v3 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  *(v3 + 224) = swift_task_alloc();
  *(v3 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  *(v3 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  *(v3 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  *(v3 + 296) = swift_task_alloc();
  v4 = type metadata accessor for WorkoutState();
  *(v3 + 304) = v4;
  *(v3 + 312) = *(v4 - 8);
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)()
{
  v1 = *(v0 + 320);
  v53 = v1;
  v54 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v42 = v3;
  v41 = v2;
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);
  v52 = v5;
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v57 = *(v0 + 256);
  v58 = *(v0 + 264);
  v47 = *(v0 + 240);
  v59 = *(v0 + 232);
  v50 = *(v0 + 224);
  v51 = v6;
  v55 = *(v0 + 208);
  v56 = *(v0 + 248);
  v45 = *(v0 + 200);
  v48 = *(v0 + 192);
  v49 = *(v0 + 216);
  v39 = *(v0 + 184);
  v46 = *(v0 + 176);
  v37 = *(v0 + 168);
  v38 = *(v0 + 160);
  v40 = *(v0 + 152);
  v44 = *(v0 + 336);
  v8 = *(v0 + 136);
  v9 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  v43 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v3 + 16))(v1, v8 + v9, v2);
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = type metadata accessor for WorkoutGoal();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 56);
  v13(v6, 1, 1, v12);
  v13(v7, 1, 1, v12);
  v13(v58, 1, 1, v12);
  v14 = type metadata accessor for WeatherCondition();
  (*(*(v14 - 8) + 56))(v57, 1, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v16 = *(*(v15 - 8) + 56);
  v16(v56, 1, 1, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v18 = *(*(v17 - 8) + 56);
  v18(v59, 1, 1, v17);
  v18(v50, 1, 1, v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v19 - 8) + 56))(v49, 1, 1, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v21 = *(*(v20 - 8) + 56);
  v21(v55, 1, 1, v20);
  v21(v45, 1, 1, v20);
  v21(v48, 1, 1, v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v22 - 8) + 56))(v46, 1, 1, v22);
  v16(v47, 1, 1, v15);
  v23 = type metadata accessor for WorkoutMediaDetails();
  (*(*(v23 - 8) + 56))(v37, 1, 1, v23);
  v24 = type metadata accessor for HKActivitySummaryRepresentable();
  (*(*(v24 - 8) + 56))(v38, 1, 1, v24);
  v21(v39, 1, 1, v20);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  (*(*(v25 - 8) + 56))(v40, 1, 1, v25);
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v40, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v39, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v38, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v37, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v47, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v46, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v48, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v45, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v55, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v49, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v50, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v59, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v56, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v57, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v52, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v4, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(v42 + 8))(v53, v41);
  swift_beginAccess();
  (*(v42 + 40))(v8 + v43, v54, v41);
  swift_endAccess();
  v26 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v8 + v26, v0 + 16);
  v27 = *(v0 + 40);
  v28 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v27);
  v29 = (*(v28 + 24))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 16));
  if (v44 == 1 && (v29 & 1) == 0)
  {
    v30 = *(v0 + 136);
    v31 = *(v0 + 144);
    v32 = type metadata accessor for TaskPriority();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    v33 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
    v34 = swift_allocObject();
    v34[2] = v30;
    v34[3] = v33;
    v34[4] = v30;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:), v34);
  }

  v35 = *(v0 + 8);

  return v35();
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = type metadata accessor for WorkoutState();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = closure #1 in WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:);
  v7 = v0[8];

  return WorkoutVoiceMomentCoordinator.generateSplitMoment(workoutState:)(v7);
}

{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t WorkoutVoiceMomentCoordinator.updateWorkoutStartDate(date:)(uint64_t a1)
{
  v108 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v116 = &v106 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v115 = &v106 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v126 = &v106 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v113 = &v106 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v114 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v128 = &v106 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v127 = &v106 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v132 = &v106 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v131 = &v106 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v31 = MEMORY[0x28223BE20](v29 - 8, v30);
  v119 = &v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v118 = &v106 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v37 = MEMORY[0x28223BE20](v35 - 8, v36);
  v107 = &v106 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v39);
  v129 = &v106 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v130 = &v106 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v46 = MEMORY[0x28223BE20](v44 - 8, v45);
  v48 = &v106 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v48;
  v50 = MEMORY[0x28223BE20](v46, v49);
  v52 = &v106 - v51;
  MEMORY[0x28223BE20](v50, v53);
  v55 = &v106 - v54;
  v121 = &v106 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  MEMORY[0x28223BE20](v56 - 8, v57);
  v59 = &v106 - v58;
  v122 = &v106 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v60 - 8, v61);
  v63 = &v106 - v62;
  v124 = &v106 - v62;
  v64 = type metadata accessor for WorkoutState();
  v109 = v64;
  v110 = *(v64 - 8);
  v65 = v110;
  v67 = MEMORY[0x28223BE20](v64, v66);
  v69 = &v106 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v69;
  MEMORY[0x28223BE20](v67, v70);
  v125 = &v106 - v71;
  v72 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  v111 = v1;
  v112 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  (*(v65 + 16))(v69, v1 + v72, v64);
  v73 = type metadata accessor for UUID();
  (*(*(v73 - 8) + 56))(v63, 1, 1, v73);
  v74 = type metadata accessor for WorkoutGoal();
  (*(*(v74 - 8) + 56))(v59, 1, 1, v74);
  v75 = type metadata accessor for Date();
  v76 = *(v75 - 8);
  v77 = *(v76 + 56);
  v77(v55, 1, 1, v75);
  v78 = *(v76 + 16);
  v117 = v52;
  v78(v52, v108, v75);
  v77(v52, 0, 1, v75);
  v77(v48, 1, 1, v75);
  v79 = type metadata accessor for WeatherCondition();
  (*(*(v79 - 8) + 56))(v130, 1, 1, v79);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v81 = *(*(v80 - 8) + 56);
  v81(v129, 1, 1, v80);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v83 = *(*(v82 - 8) + 56);
  v83(v118, 1, 1, v82);
  v83(v119, 1, 1, v82);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v84 - 8) + 56))(v131, 1, 1, v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v86 = *(*(v85 - 8) + 56);
  v86(v132, 1, 1, v85);
  v86(v127, 1, 1, v85);
  v86(v128, 1, 1, v85);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  v88 = v113;
  (*(*(v87 - 8) + 56))(v113, 1, 1, v87);
  v89 = v107;
  v81(v107, 1, 1, v80);
  v90 = type metadata accessor for WorkoutMediaDetails();
  (*(*(v90 - 8) + 56))(v126, 1, 1, v90);
  v91 = type metadata accessor for HKActivitySummaryRepresentable();
  v92 = v115;
  (*(*(v91 - 8) + 56))(v115, 1, 1, v91);
  v93 = v114;
  v86(v114, 1, 1, v85);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v95 = v116;
  (*(*(v94 - 8) + 56))(v116, 1, 1, v94);
  v96 = v88;
  v97 = v128;
  v98 = v127;
  v99 = v119;
  v100 = v118;
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v95, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v93, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v92, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v126, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v89, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v96, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v97, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v98, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v132, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v131, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v99, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v100, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v129, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v130, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v120, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v117, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v121, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v122, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v124, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v101 = v110;
  v102 = v109;
  (*(v110 + 8))(v123, v109);
  v103 = v112;
  v104 = v111;
  swift_beginAccess();
  (*(v101 + 40))(v104 + v103, v125, v102);
  return swift_endAccess();
}

uint64_t WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(char a1, char a2)
{
  *(v3 + 104) = v2;
  *(v3 + 209) = a2;
  *(v3 + 208) = a1;
  v4 = type metadata accessor for UUID();
  *(v3 + 112) = v4;
  *(v3 + 120) = *(v4 - 8);
  *(v3 + 128) = swift_task_alloc();
  v5 = type metadata accessor for WorkoutState();
  *(v3 + 136) = v5;
  *(v3 + 144) = *(v5 - 8);
  *(v3 + 152) = swift_task_alloc();
  type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v2, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)()
{
  if (*(v0 + 208))
  {
    if (*(v0 + 209))
    {
      WorkoutVoiceMomentCoordinator.resetCachedState()();
LABEL_9:
      v21 = *(*(v0 + 104) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler);
      *(v0 + 184) = v21;

      return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v21, 0);
    }

LABEL_8:
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v9 = *(v0 + 128);
    v10 = *(v0 + 136);
    v11 = *(v0 + 112);
    v12 = *(v0 + 120);
    v13 = *(v0 + 104);
    v14 = [objc_opt_self() standardUserDefaults];
    v15 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
    swift_beginAccess();
    (*(v8 + 16))(v7, v13 + v15, v10);
    WorkoutState.identifier.getter();
    (*(v8 + 8))(v7, v10);
    v16 = UUID.uuidString.getter();
    v18 = v17;
    (*(v12 + 8))(v9, v11);
    v19 = MEMORY[0x20F2E6C00](v16, v18);

    v20 = MEMORY[0x20F2E6C00](*(v13 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey), *(v13 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey + 8));
    [v14 setObject:v19 forKey:v20];

    goto LABEL_9;
  }

  if (!*(v0 + 209))
  {
    goto LABEL_8;
  }

  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 104);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v4 - 8) + 56))(v1, 6, 6, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v1, v2);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  *(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) = 1;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:);

  return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
}

{
  v1 = *(*v0 + 104);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v1, 0);
}

{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
  swift_beginAccess();
  outlined init with copy of WorkoutBuddyAvailabilityProviding(v1 + v2, (v0 + 2));
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm_2(v0 + 2, v3);
  (*(v4 + 96))(v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  WorkoutVoiceMomentCoordinator.resetCachedState()();
  v5 = *(v0[13] + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_musicMomentHandler);
  v0[23] = v5;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v5, 0);
}

{
  v1 = *(v0 + 104);
  MusicMomentHandler.stopActiveTasks()();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v1, 0);
}

{
  v1 = *(*(v0 + 104) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_breakthroughMomentChecker);
  *(v0 + 192) = v1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v1, 0);
}

{
  v1 = *(v0 + 104);
  BreakthroughMomentChecker.stopChecking()();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v1, 0);
}

{
  v1 = *(v0 + 208);
  *(*(v0 + 104) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider) = 0;
  swift_unknownObjectRelease();
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(*(v0 + 104) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
    *(v0 + 200) = v4;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:), v4, 0);
  }
}

{
  BluetoothHeadphonesMonitor.stopObserving()();

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall WorkoutVoiceMomentCoordinator.setIsIntelligenceAnnouncementHandlerSpeaking(_:)(Swift::Bool a1)
{
  v2 = v1;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.workoutVoice);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_20AEA4000, v5, v6, "setIsIntelligenceAnnouncementHandlerSpeaking %{BOOL}d", v7, 8u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  if (a1)
  {
    started = type metadata accessor for VoiceMotivationStartEventAlert();
  }

  else
  {
    started = type metadata accessor for VoiceMotivationEndEventAlert();
  }

  v10 = [objc_allocWithZone(started) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alertSource:v2 didTriggerAlert:v10];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[38] = a4;
  v5[39] = a5;
  v5[36] = a2;
  v5[37] = a3;
  v5[35] = a1;
  v5[40] = type metadata accessor for WorkoutVoiceMomentAnalyticsEvent(0);
  v5[41] = swift_task_alloc();
  type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutVoiceMoment();
  v5[44] = v7;
  v5[45] = *(v7 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutVoiceMomentType();
  v5[52] = v8;
  v5[53] = *(v8 - 8);
  v5[54] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), a4, 0);
}

uint64_t specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)()
{
  *(v0 + 472) = CFAbsoluteTimeGetCurrent();
  v1 = swift_task_alloc();
  *(v0 + 480) = v1;
  *v1 = v0;
  v1[1] = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  v2 = *(v0 + 456);
  v3 = *(v0 + 312);

  return closure #1 in WorkoutVoiceMomentCoordinator.generateOutroMoment()(v2, v3);
}

{
  v2 = *v1;
  *(*v1 + 488) = v0;

  v3 = *(v2 + 304);
  if (v0)
  {
    v4 = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  else
  {
    v4 = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v84 = v0;
  v1 = *(v0 + 472);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  v4 = *(v0 + 416);
  outlined init with take of InferenceResult?(*(v0 + 456), *(v0 + 464), &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v5 = CFAbsoluteTimeGetCurrent() - v1;
  v6 = *MEMORY[0x277D0A468];
  v7 = *(v3 + 104);
  v7(v2, v6, v4);
  v8 = static WorkoutVoiceMomentType.== infix(_:_:)();
  v81 = *(v3 + 8);
  v81(v2, v4);
  if (v8)
  {
    v9 = *(v0 + 464);
    v10 = *(v0 + 448);
    v11 = *(v0 + 304);
    v12 = v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
    swift_beginAccess();
    *v12 = v5;
    *(v12 + 8) = 0;
    outlined init with copy of Measurement<NSUnitDuration>?(v9, v10, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v13 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
    swift_beginAccess();
    outlined assign with take of WorkoutVoiceMoment?(v10, v11 + v13, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    swift_endAccess();
  }

  v14 = *(v0 + 440);
  v15 = *(v0 + 352);
  v16 = *(v0 + 360);
  outlined init with copy of Measurement<NSUnitDuration>?(*(v0 + 464), v14, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v17 = *(v0 + 440);
    v18 = *(v0 + 280);
    outlined destroy of Measurement<NSUnitDuration>?(*(v0 + 464), &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v19 = v17;
LABEL_18:
    outlined destroy of Measurement<NSUnitDuration>?(v19, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v64 = type metadata accessor for InferenceResult();
    (*(*(v64 - 8) + 56))(v18, 1, 1, v64);
LABEL_19:

    v65 = *(v0 + 8);

    return v65();
  }

  v21 = *(v0 + 336);
  v20 = *(v0 + 344);
  (*(*(v0 + 360) + 32))(*(v0 + 384), *(v0 + 440), *(v0 + 352));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v20);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v22 - 8) + 56))(v21, 6, 6, v22);
  v23 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v20, v21);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v21, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v20, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v24 = &lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification;
  if (v23 & 1) != 0 || (v25 = *(v0 + 304), *(v25 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) == 1) || (v26 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider, swift_beginAccess(), outlined init with copy of WorkoutBuddyAvailabilityProviding(v25 + v26, v0 + 16), v27 = *(v0 + 40), v28 = *(v0 + 48), __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v27), v29 = (*(v28 + 24))(v27, v28), __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 16)), (v29))
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 376);
    v31 = *(v0 + 384);
    v32 = *(v0 + 352);
    v33 = *(v0 + 360);
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static WOLog.workoutVoice);
    v35 = *(v33 + 16);

    v35(v30, v31, v32);
    swift_retain_n();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 376);
    if (v38)
    {
      v80 = *(v0 + 360);
      v40 = *(v0 + 344);
      v78 = *(v0 + 368);
      v79 = *(v0 + 352);
      v41 = *(v0 + 304);
      v42 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = v82;
      *v42 = 136315907;
      swift_getKeyPath();
      v77 = v35;
      swift_getKeyPath();
      static Published.subscript.getter(v40);

      v43 = WorkoutVoiceMomentCoordinator.State.description.getter();
      v45 = v44;
      outlined destroy of WorkoutVoiceMomentCoordinator.State(v40, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v83);

      *(v42 + 4) = v46;
      *(v42 + 12) = 1024;
      LODWORD(v43) = *(v41 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements);

      *(v42 + 14) = v43;

      *(v42 + 18) = 1024;
      v47 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
      swift_beginAccess();
      outlined init with copy of WorkoutBuddyAvailabilityProviding(v41 + v47, v0 + 96);
      v48 = *(v0 + 120);
      v49 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1Tm_2((v0 + 96), v48);
      LOBYTE(v47) = (*(v49 + 24))(v48, v49);
      __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 96));

      *(v42 + 20) = v47 & 1;

      *(v42 + 24) = 2081;
      v77(v78, v39, v79);
      v50 = String.init<A>(describing:)();
      v52 = v51;
      v53 = *(v80 + 8);
      v53(v39, v79);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v83);
      v24 = &lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification;

      *(v42 + 26) = v54;
      _os_log_impl(&dword_20AEA4000, v36, v37, "State is %s, shouldCancelAllPendingAnnouncements is %{BOOL}d, isWorkoutBuddyNoLongerAvailableInCurrentWorkout %{BOOL}d.  Stopping inference for moment %{private}s", v42, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v82, -1, -1);
      MEMORY[0x20F2E9420](v42, -1, -1);
    }

    else
    {
      v55 = *(v0 + 352);
      v56 = *(v0 + 360);

      v53 = *(v56 + 8);
      v53(v39, v55);
    }

    *(v0 + 496) = v53;
    v57 = *(v0 + 304);
    v58 = v24[185];
    swift_beginAccess();
    outlined init with copy of WorkoutBuddyAvailabilityProviding(v57 + v58, v0 + 56);
    v59 = *(v0 + 80);
    v60 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1Tm_2((v0 + 56), v59);
    LOBYTE(v57) = (*(v60 + 24))(v59, v60);
    __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 56));
    if ((v57 & 1) == 0)
    {
      v63 = *(v0 + 464);
      v18 = *(v0 + 280);
      (*(v0 + 496))(*(v0 + 384), *(v0 + 352));
      v19 = v63;
      goto LABEL_18;
    }

    v61 = swift_task_alloc();
    *(v0 + 504) = v61;
    *v61 = v0;
    v61[1] = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);

    return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
  }

  else
  {
    v66 = *(v0 + 432);
    v67 = *(v0 + 416);
    v68 = *(v0 + 400);
    v69 = type metadata accessor for InferenceResult();
    (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
    v7(v66, v6, v67);
    lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentType and conformance WorkoutVoiceMomentType, MEMORY[0x277D0A480], MEMORY[0x277D0A488]);
    v70 = dispatch thunk of static Equatable.== infix(_:_:)();
    v81(v66, v67);
    if (v70)
    {
      v71 = *(v0 + 304);
      v72 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
      swift_beginAccess();
      if ((*(v71 + v72) & 1) == 0)
      {
        v76 = *(v0 + 464);
        (*(*(v0 + 360) + 8))(*(v0 + 384), *(v0 + 352));
        outlined destroy of Measurement<NSUnitDuration>?(v76, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
        outlined init with take of InferenceResult?(*(v0 + 400), *(v0 + 280), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
        goto LABEL_19;
      }
    }

    v73 = swift_task_alloc();
    *(v0 + 512) = v73;
    *v73 = v0;
    v73[1] = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
    v75 = *(v0 + 384);
    v74 = *(v0 + 392);

    return WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(v74, v75, v5);
  }
}

{
  v1 = v0[61];
  v2 = v0[51];
  v3 = v0[38];
  v4 = type metadata accessor for InferenceResult();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v1;
  if (*(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isDemoMode) == 1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.workoutVoice);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[61];
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v7, v8, "skipping analytics for demo mode", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    outlined destroy of Measurement<NSUnitDuration>?(v0[51], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[52];
    v15 = v0[53];
    v25 = v0[51];
    v17 = v0[40];
    v16 = v0[41];
    v18 = v0[37];
    v19 = v0[38];
    v20 = v0[36];
    v21 = v19 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier;
    v0[66] = *(v19 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
    v0[67] = *(v21 + 8);
    v22 = v17[6];
    v23 = type metadata accessor for WorkoutState();
    (*(*(v23 - 8) + 16))(v16 + v22, v18, v23);
    (*(v15 + 16))(v16 + v17[7], v20, v14);
    outlined init with copy of Measurement<NSUnitDuration>?(v25, v16 + v17[8], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v24 = *(v19 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
    v0[68] = v24;

    return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v24, 0);
  }
}

{
  v1 = *(*v0 + 304);

  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v1, 0);
}

{
  v1 = *(v0 + 464);
  v2 = *(v0 + 280);
  (*(v0 + 496))(*(v0 + 384), *(v0 + 352));
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v3 = type metadata accessor for InferenceResult();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  v4 = *(v0 + 8);

  return v4();
}

{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 304);
  if (v0)
  {
    v4 = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  else
  {
    v4 = specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[58];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  v5 = v0[44];
  v6 = v0[45];
  outlined destroy of Measurement<NSUnitDuration>?(v2, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  (*(v6 + 8))(v4, v5);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  outlined init with take of InferenceResult?(v3, v2, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  outlined init with take of InferenceResult?(v0[50], v0[35], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[58];
  v2 = v0[48];
  v3 = v0[44];
  v4 = v0[45];
  outlined destroy of Measurement<NSUnitDuration>?(v0[50], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  (*(v4 + 8))(v2, v3);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);

  v5 = v0[1];

  return v5();
}

{
  v1 = *(v0 + 544);
  *(v0 + 552) = *(v1 + 112);
  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v1, 0);
}

{
  v1 = *(v0 + 304);
  *(v0 + 553) = *(*(v0 + 544) + 113);
  return MEMORY[0x2822009F8](specialized WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v1, 0);
}

{
  v1 = *(v0 + 553);
  v2 = *(v0 + 552);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);
  v5 = *(v0 + 488);
  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  *v7 = 0xD000000000000026;
  v7[1] = 0x800000020B469090;
  v7[2] = v4;
  v7[3] = v3;
  v8 = v7 + v6[9];
  *v8 = 0;
  v8[8] = 1;
  v9 = v7 + v6[10];
  *v9 = 0;
  v9[8] = 1;
  *(v7 + v6[11]) = v2;
  *(v7 + v6[12]) = v1;
  *(v7 + v6[13]) = 2;
  *(v7 + v6[14]) = v5;
  specialized WorkoutVoiceAnalyticsHandling.send()();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v7, type metadata accessor for WorkoutVoiceMomentAnalyticsEvent);
  outlined destroy of Measurement<NSUnitDuration>?(*(v0 + 408), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[39] = a5;
  v6[40] = v5;
  v6[37] = a3;
  v6[38] = a4;
  v6[35] = a1;
  v6[36] = a2;
  v6[41] = type metadata accessor for WorkoutVoiceMomentAnalyticsEvent(0);
  v6[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v7 = type metadata accessor for WorkoutVoiceMoment();
  v6[48] = v7;
  v6[49] = *(v7 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v8 = type metadata accessor for WorkoutVoiceMomentType();
  v6[53] = v8;
  v6[54] = *(v8 - 8);
  v6[55] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v5, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:)()
{
  v1 = *(v0 + 304);
  *(v0 + 480) = CFAbsoluteTimeGetCurrent();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 488) = v2;
  *v2 = v0;
  v2[1] = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  v3 = *(v0 + 464);

  return v5(v3);
}

{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  else
  {
    v4 = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v84 = v0;
  v1 = *(v0 + 480);
  v3 = *(v0 + 432);
  v2 = *(v0 + 440);
  v4 = *(v0 + 424);
  outlined init with take of InferenceResult?(*(v0 + 464), *(v0 + 472), &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v5 = CFAbsoluteTimeGetCurrent() - v1;
  v6 = *MEMORY[0x277D0A468];
  v7 = *(v3 + 104);
  v7(v2, v6, v4);
  v8 = static WorkoutVoiceMomentType.== infix(_:_:)();
  v81 = *(v3 + 8);
  v81(v2, v4);
  if (v8)
  {
    v9 = *(v0 + 472);
    v10 = *(v0 + 456);
    v11 = *(v0 + 320);
    v12 = v11 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
    swift_beginAccess();
    *v12 = v5;
    *(v12 + 8) = 0;
    outlined init with copy of Measurement<NSUnitDuration>?(v9, v10, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v13 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
    swift_beginAccess();
    outlined assign with take of WorkoutVoiceMoment?(v10, v11 + v13, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    swift_endAccess();
  }

  v14 = *(v0 + 448);
  v15 = *(v0 + 384);
  v16 = *(v0 + 392);
  outlined init with copy of Measurement<NSUnitDuration>?(*(v0 + 472), v14, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v17 = *(v0 + 448);
    v18 = *(v0 + 280);
    outlined destroy of Measurement<NSUnitDuration>?(*(v0 + 472), &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v19 = v17;
LABEL_18:
    outlined destroy of Measurement<NSUnitDuration>?(v19, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v64 = type metadata accessor for InferenceResult();
    (*(*(v64 - 8) + 56))(v18, 1, 1, v64);
LABEL_19:

    v65 = *(v0 + 8);

    return v65();
  }

  v21 = *(v0 + 368);
  v20 = *(v0 + 376);
  (*(*(v0 + 392) + 32))(*(v0 + 416), *(v0 + 448), *(v0 + 384));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v20);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v22 - 8) + 56))(v21, 6, 6, v22);
  v23 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v20, v21);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v21, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v20, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v24 = &lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification;
  if (v23 & 1) != 0 || (v25 = *(v0 + 320), (*(v25 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements)) || (v26 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider, swift_beginAccess(), outlined init with copy of WorkoutBuddyAvailabilityProviding(v25 + v26, v0 + 16), v27 = *(v0 + 40), v28 = *(v0 + 48), __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v27), v29 = (*(v28 + 24))(v27, v28), __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 16)), (v29))
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 408);
    v31 = *(v0 + 416);
    v32 = *(v0 + 384);
    v33 = *(v0 + 392);
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static WOLog.workoutVoice);
    v35 = *(v33 + 16);

    v35(v30, v31, v32);
    swift_retain_n();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 408);
    if (v38)
    {
      v80 = *(v0 + 392);
      v40 = *(v0 + 376);
      v78 = *(v0 + 400);
      v79 = *(v0 + 384);
      v41 = *(v0 + 320);
      v42 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = v82;
      *v42 = 136315907;
      swift_getKeyPath();
      v77 = v35;
      swift_getKeyPath();
      static Published.subscript.getter(v40);

      v43 = WorkoutVoiceMomentCoordinator.State.description.getter();
      v45 = v44;
      outlined destroy of WorkoutVoiceMomentCoordinator.State(v40, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v83);

      *(v42 + 4) = v46;
      *(v42 + 12) = 1024;
      LODWORD(v43) = *(v41 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements);

      *(v42 + 14) = v43;

      *(v42 + 18) = 1024;
      v47 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
      swift_beginAccess();
      outlined init with copy of WorkoutBuddyAvailabilityProviding(v41 + v47, v0 + 96);
      v48 = *(v0 + 120);
      v49 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1Tm_2((v0 + 96), v48);
      LOBYTE(v47) = (*(v49 + 24))(v48, v49);
      __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 96));

      *(v42 + 20) = v47 & 1;

      *(v42 + 24) = 2081;
      v77(v78, v39, v79);
      v50 = String.init<A>(describing:)();
      v52 = v51;
      v53 = *(v80 + 8);
      v53(v39, v79);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v83);
      v24 = &lazy protocol witness table cache variable for type WorkoutNotification and conformance WorkoutNotification;

      *(v42 + 26) = v54;
      _os_log_impl(&dword_20AEA4000, v36, v37, "State is %s, shouldCancelAllPendingAnnouncements is %{BOOL}d, isWorkoutBuddyNoLongerAvailableInCurrentWorkout %{BOOL}d.  Stopping inference for moment %{private}s", v42, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v82, -1, -1);
      MEMORY[0x20F2E9420](v42, -1, -1);
    }

    else
    {
      v55 = *(v0 + 384);
      v56 = *(v0 + 392);

      v53 = *(v56 + 8);
      v53(v39, v55);
    }

    *(v0 + 520) = v53;
    v57 = *(v0 + 320);
    v58 = v24[185];
    swift_beginAccess();
    outlined init with copy of WorkoutBuddyAvailabilityProviding(v57 + v58, v0 + 56);
    v59 = *(v0 + 80);
    v60 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1Tm_2((v0 + 56), v59);
    LOBYTE(v57) = (*(v60 + 24))(v59, v60);
    __swift_destroy_boxed_opaque_existential_1Tm_19((v0 + 56));
    if ((v57 & 1) == 0)
    {
      v63 = *(v0 + 472);
      v18 = *(v0 + 280);
      (*(v0 + 520))(*(v0 + 416), *(v0 + 384));
      v19 = v63;
      goto LABEL_18;
    }

    v61 = swift_task_alloc();
    *(v0 + 528) = v61;
    *v61 = v0;
    v61[1] = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);

    return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(0);
  }

  else
  {
    v66 = *(v0 + 440);
    v67 = *(v0 + 424);
    v68 = *(v0 + 360);
    v69 = type metadata accessor for InferenceResult();
    (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
    v7(v66, v6, v67);
    lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentType and conformance WorkoutVoiceMomentType, MEMORY[0x277D0A480], MEMORY[0x277D0A488]);
    v70 = dispatch thunk of static Equatable.== infix(_:_:)();
    v81(v66, v67);
    if (v70)
    {
      v71 = *(v0 + 320);
      v72 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
      swift_beginAccess();
      if (*(v71 + v72) != 1)
      {
        v76 = *(v0 + 472);
        (*(*(v0 + 392) + 8))(*(v0 + 416), *(v0 + 384));
        outlined destroy of Measurement<NSUnitDuration>?(v76, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
        outlined init with take of InferenceResult?(*(v0 + 360), *(v0 + 280), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
        goto LABEL_19;
      }
    }

    v73 = swift_task_alloc();
    *(v0 + 504) = v73;
    *v73 = v0;
    v73[1] = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
    v74 = *(v0 + 416);
    v75 = *(v0 + 352);

    return WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(v75, v74, v5);
  }
}

{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {
    v4 = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  else
  {
    v4 = WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[59];
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[49];
  v6 = v0[44];
  v5 = v0[45];
  outlined destroy of Measurement<NSUnitDuration>?(v5, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  (*(v4 + 8))(v2, v3);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  outlined init with take of InferenceResult?(v6, v5, &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  outlined init with take of InferenceResult?(v0[45], v0[35], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);

  v7 = v0[1];

  return v7();
}

{
  v1 = *(*v0 + 320);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v1, 0);
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 280);
  (*(v0 + 520))(*(v0 + 416), *(v0 + 384));
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v3 = type metadata accessor for InferenceResult();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  v4 = *(v0 + 8);

  return v4();
}

{
  v1 = v0[62];
  v2 = v0[43];
  v3 = v0[40];
  v4 = type metadata accessor for InferenceResult();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = v1;
  if (*(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_isDemoMode) == 1)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.workoutVoice);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[62];
    if (v9)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_20AEA4000, v7, v8, "skipping analytics for demo mode", v11, 2u);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    outlined destroy of Measurement<NSUnitDuration>?(v0[43], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[53];
    v15 = v0[54];
    v16 = v0[42];
    v25 = v0[43];
    v18 = v0[40];
    v17 = v0[41];
    v20 = v0[36];
    v19 = v0[37];
    v21 = v18 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier;
    v0[67] = *(v18 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
    v0[68] = *(v21 + 8);
    v22 = v17[6];
    v23 = type metadata accessor for WorkoutState();
    (*(*(v23 - 8) + 16))(v16 + v22, v19, v23);
    (*(v15 + 16))(v16 + v17[7], v20, v14);
    outlined init with copy of Measurement<NSUnitDuration>?(v25, v16 + v17[8], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
    v24 = *(v18 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
    v0[69] = v24;

    return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v24, 0);
  }
}

{
  v1 = *(v0 + 552);
  *(v0 + 560) = *(v1 + 112);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v1, 0);
}

{
  v1 = *(v0 + 320);
  *(v0 + 561) = *(*(v0 + 552) + 113);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.momentInferenceHandler(momentType:withState:_:), v1, 0);
}

{
  v1 = *(v0 + 561);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = *(v0 + 536);
  v5 = *(v0 + 496);
  v6 = *(v0 + 328);
  v7 = *(v0 + 336);
  *v7 = 0xD000000000000026;
  v7[1] = 0x800000020B469090;
  v7[2] = v4;
  v7[3] = v3;
  v8 = v7 + v6[9];
  *v8 = 0;
  v8[8] = 1;
  v9 = v7 + v6[10];
  *v9 = 0;
  v9[8] = 1;
  *(v7 + v6[11]) = v2;
  *(v7 + v6[12]) = v1;
  *(v7 + v6[13]) = 2;
  *(v7 + v6[14]) = v5;
  specialized WorkoutVoiceAnalyticsHandling.send()();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v7, type metadata accessor for WorkoutVoiceMomentAnalyticsEvent);
  outlined destroy of Measurement<NSUnitDuration>?(*(v0 + 344), &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = v0[59];
  v2 = v0[52];
  v3 = v0[48];
  v4 = v0[49];
  outlined destroy of Measurement<NSUnitDuration>?(v0[45], &_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  (*(v4 + 8))(v2, v3);
  outlined destroy of Measurement<NSUnitDuration>?(v1, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);

  v5 = v0[1];

  return v5();
}

void WorkoutVoiceMomentCoordinator.resetCachedState()()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = MEMORY[0x20F2E6C00](*(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey), *(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_siriFallbackUserDefaultsKey + 8));
  [v2 removeObjectForKey_];

  v4 = [v1 standardUserDefaults];
  v5 = MEMORY[0x20F2E6C00](*(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey), *(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey + 8));
  [v4 removeObjectForKey_];

  v6 = [v1 standardUserDefaults];
  v7 = MEMORY[0x20F2E6C00](*(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey), *(v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionIdentifierKey + 8));
  [v6 removeObjectForKey_];
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  v6 = type metadata accessor for WorkoutVoiceTranscript();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript(), a4, 0);
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript()()
{
  *(v0 + 128) = *(*(v0 + 96) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceSession);
  type metadata accessor for WorkoutVoiceSession();
  lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceSession and conformance WorkoutVoiceSession, MEMORY[0x277D0A370], MEMORY[0x277D0A378]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript(), v2, v1);
}

{
  v1 = *(v0 + 96);
  dispatch thunk of WorkoutVoiceSession.transcript.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.persistTranscript(), v1, 0);
}

{
  lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceTranscript and conformance WorkoutVoiceTranscript, MEMORY[0x277D0A498], MEMORY[0x277D0A490]);
  v1 = SnapshotSerializable.protobufData()();
  v2 = v0[12];
  v3 = v1;
  v5 = v4;
  (*(v0[14] + 8))(v0[15], v0[13]);
  v6 = *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_sessionActivity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = 0xD00000000000002BLL;
  *(inited + 72) = MEMORY[0x277CC9318];
  *(inited + 40) = 0x800000020B4687C0;
  *(inited + 48) = v3;
  *(inited + 56) = v5;
  outlined copy of Data._Representation(v3, v5);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Measurement<NSUnitDuration>?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 insertOrUpdateMetadata:isa forceTopLevel:1];

  outlined consume of Data._Representation(v3, v5);

  v9 = v0[1];

  return v9();
}

uint64_t WorkoutVoiceMomentCoordinator.cancelAnyPendingAnnouncements()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.cancelAnyPendingAnnouncements(), v0, 0);
}

{
  *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) = 1;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = WorkoutVoiceMomentCoordinator.cancelAnyPendingAnnouncements();

  return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
}

uint64_t WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()()
{
  v1[8] = v0;
  v2 = type metadata accessor for AnnounceCancellationResult();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for AnnounceCancellationRequest();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  v1[16] = swift_task_alloc();
  v4 = type metadata accessor for AnnounceUtteranceRequest();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  v1[23] = swift_task_alloc();
  v5 = type metadata accessor for WorkoutVoiceMoment();
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny(), v0, 0);
}

{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_momentInFlight;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v4 + v5, v3, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[23], &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
    v6 = v0[17];
    v7 = v0[18];
    v8 = v0[16];
    v9 = v0[8];
    v10 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
    swift_beginAccess();
    outlined init with copy of Measurement<NSUnitDuration>?(v9 + v10, v8, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
    if ((*(v7 + 48))(v8, 1, v6) == 1)
    {
      outlined destroy of Measurement<NSUnitDuration>?(v0[16], &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);

      v11 = v0[1];

      return v11();
    }

    else
    {
      (*(v0[18] + 32))(v0[22], v0[16], v0[17]);
      AnnounceUtteranceRequest.requestIdentifier.getter();
      AnnounceCancellationRequest.init(requestIdentifier:)();
      v15 = swift_task_alloc();
      v0[32] = v15;
      *v15 = v0;
      v15[1] = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
      v16 = v0[15];
      v17 = v0[12];

      return MEMORY[0x282160A90](v17, v16);
    }
  }

  else
  {
    (*(v0[25] + 32))(v0[29], v0[23], v0[24]);
    v18 = (*MEMORY[0x277D0A350] + MEMORY[0x277D0A350]);
    v13 = swift_task_alloc();
    v0[30] = v13;
    *v13 = v0;
    v13[1] = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
    v14 = v0[29];

    return v18(v14);
  }
}

{
  v42 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.workoutVoice);
  v6 = *(v4 + 16);
  v6(v1, v2, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 224);
    v40 = *(v0 + 232);
    v11 = *(v0 + 216);
    v12 = *(v0 + 192);
    v37 = *(v0 + 200);
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v41 = v38;
    *v13 = 67109379;
    *(v13 + 4) = v9;
    *(v13 + 8) = 2081;
    v14 = v10;
    v15 = v10;
    v16 = v12;
    v6(v11, v14, v12);
    v39 = v12;
    v17 = String.init<A>(describing:)();
    v19 = v18;
    v20 = *(v37 + 8);
    v20(v15, v16);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v41);

    *(v13 + 10) = v21;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Result of canceling announcement: %{BOOL}d, for %{private}s", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v38);
    MEMORY[0x20F2E9420](v38, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);

    v20(v40, v39);
  }

  else
  {
    v23 = *(v0 + 224);
    v22 = *(v0 + 232);
    v24 = *(v0 + 192);
    v25 = *(v0 + 200);

    v26 = *(v25 + 8);
    v26(v23, v24);
    v26(v22, v24);
  }

  v27 = *(v0 + 136);
  v28 = *(v0 + 144);
  v29 = *(v0 + 128);
  v30 = *(v0 + 64);
  v31 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v30 + v31, v29, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  if ((*(v28 + 48))(v29, 1, v27) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(*(v0 + 128), &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);

    v32 = *(v0 + 8);

    return v32();
  }

  else
  {
    (*(*(v0 + 144) + 32))(*(v0 + 176), *(v0 + 128), *(v0 + 136));
    AnnounceUtteranceRequest.requestIdentifier.getter();
    AnnounceCancellationRequest.init(requestIdentifier:)();
    v34 = swift_task_alloc();
    *(v0 + 256) = v34;
    *v34 = v0;
    v34[1] = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
    v35 = *(v0 + 120);
    v36 = *(v0 + 96);

    return MEMORY[0x282160A90](v36, v35);
  }
}

{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
  }

  else
  {
    v4 = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v48 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[9];
  v8 = v0[10];
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.workoutVoice);
  (*(v8 + 16))(v6, v5, v7);
  v10 = *(v4 + 16);
  v10(v1, v2, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[21];
  v46 = v0[22];
  if (v13)
  {
    v37 = v0[18];
    v35 = v0[20];
    v36 = v0[17];
    v42 = v0[13];
    v44 = v0[15];
    v40 = v0[12];
    v41 = v0[14];
    v39 = v12;
    v16 = v0[10];
    v15 = v0[11];
    v17 = v0[9];
    v18 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v47 = v38;
    *v18 = 67109379;
    v19 = AnnounceCancellationResult.cancellationSuccess.getter() & 1;
    v20 = *(v16 + 8);
    v20(v15, v17);
    *(v18 + 4) = v19;
    *(v18 + 8) = 2081;
    v10(v35, v14, v36);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    v24 = *(v37 + 8);
    v24(v14, v36);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v47);

    *(v18 + 10) = v25;
    _os_log_impl(&dword_20AEA4000, v11, v39, "Result of canceling announcement: %{BOOL}d for %{private}s", v18, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v38);
    MEMORY[0x20F2E9420](v38, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);

    v20(v40, v17);
    (*(v41 + 8))(v44, v42);
    v24(v46, v36);
  }

  else
  {
    v26 = v0[17];
    v27 = v0[18];
    v28 = v0[14];
    v29 = v0[12];
    v43 = v0[13];
    v45 = v0[15];
    v30 = v0[9];
    v31 = *(v0[10] + 8);
    v31(v0[11], v30);

    v32 = *(v27 + 8);
    v32(v14, v26);
    v31(v29, v30);
    (*(v28 + 8))(v45, v43);
    v32(v46, v26);
  }

  v33 = v0[1];

  return v33();
}

{
  v45 = v0;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[31];
  v2 = v0[29];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.workoutVoice);
  v7 = *(v4 + 16);
  v7(v3, v2, v5);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[31];
  v13 = v0[29];
  if (v11)
  {
    v41 = v0[31];
    v14 = v0[26];
    v15 = v0[27];
    v16 = v0[24];
    v39 = v0[25];
    v43 = v0[29];
    v17 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v44 = v42;
    *v17 = 136380931;
    v7(v15, v14, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = *(v39 + 8);
    v21(v14, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v44);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v41;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v40 = v24;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Could not cancel announcement for %{private}s, error %@", v17, 0x16u);
    outlined destroy of Measurement<NSUnitDuration>?(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v40, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v42);
    MEMORY[0x20F2E9420](v42, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);

    v21(v43, v16);
  }

  else
  {
    v26 = v0[25];
    v25 = v0[26];
    v27 = v0[24];

    v28 = *(v26 + 8);
    v28(v25, v27);
    v28(v13, v27);
  }

  v29 = v0[17];
  v30 = v0[18];
  v31 = v0[16];
  v32 = v0[8];
  v33 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_alertAnnouncementInFlight;
  swift_beginAccess();
  outlined init with copy of Measurement<NSUnitDuration>?(v32 + v33, v31, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    outlined destroy of Measurement<NSUnitDuration>?(v0[16], &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMd, &_s19FitnessIntelligence24AnnounceUtteranceRequestVSgMR);

    v34 = v0[1];

    return v34();
  }

  else
  {
    (*(v0[18] + 32))(v0[22], v0[16], v0[17]);
    AnnounceUtteranceRequest.requestIdentifier.getter();
    AnnounceCancellationRequest.init(requestIdentifier:)();
    v36 = swift_task_alloc();
    v0[32] = v36;
    *v36 = v0;
    v36[1] = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
    v37 = v0[15];
    v38 = v0[12];

    return MEMORY[0x282160A90](v38, v37);
  }
}

{
  v37 = v0;
  (*(v0[14] + 8))(v0[15], v0[13]);
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[17];
  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.workoutVoice);
  v7 = *(v4 + 16);
  v7(v3, v2, v5);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[33];
  v13 = v0[22];
  if (v11)
  {
    v33 = v0[33];
    v14 = v0[19];
    v15 = v0[20];
    v16 = v0[17];
    v31 = v0[18];
    v35 = v0[22];
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = v34;
    *v17 = 136380931;
    v7(v15, v14, v16);
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = *(v31 + 8);
    v21(v14, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v36);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = v33;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v24;
    *v32 = v24;
    _os_log_impl(&dword_20AEA4000, v9, v10, "Could not cancel announcement for %{private}s, error %@", v17, 0x16u);
    outlined destroy of Measurement<NSUnitDuration>?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v32, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm_19(v34);
    MEMORY[0x20F2E9420](v34, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);

    v21(v35, v16);
  }

  else
  {
    v26 = v0[18];
    v25 = v0[19];
    v27 = v0[17];

    v28 = *(v26 + 8);
    v28(v25, v27);
    v28(v13, v27);
  }

  v29 = v0[1];

  return v29();
}

uint64_t WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 272) = a1;
  *(v4 + 248) = v1;

  v5 = *(v3 + 64);
  if (v1)
  {
    v6 = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
  }

  else
  {
    v6 = WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny();
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:)(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 160) = a1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:)()
{
  v1 = *(*(v0 + 128) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  *(v0 + 136) = v1;
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:), v1, 0);
}

{
  v2 = *(v0 + 160);
  *(*(v0 + 136) + 115) = v2;
  if (v2 == 1)
  {
    *(*(v0 + 136) + 114) = 2;
  }

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:), v1, 0);
}

{
  if (*(v0 + 160) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 152) = v1;
    *v1 = v0;
    v1[1] = WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:);

    return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
  }

  else
  {
    v3 = *(v0 + 128);
    v4 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration;
    v5 = *(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
    v6 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
    swift_beginAccess();
    *(v5 + v6) = 0;
    v7 = [objc_opt_self() standardUserDefaults];
    v8 = MEMORY[0x20F2E6C00](*(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey), *(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey + 8));
    [v7 setBool:0 forKey:v8];

    if (*(v3 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_metricsPublisher))
    {
      v9 = *(v0 + 128);
      v10 = *(v0 + 160);
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter((v0 + 120));

      v11 = *(v0 + 120);
      v12 = *(*(v3 + v4) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
      v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v14 = [*(v12 + v13) workoutActivityType];
      v15 = *(v9 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
      v16 = *(v9 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier + 8);
      *(v0 + 16) = 0xD000000000000033;
      *(v0 + 24) = 0x800000020B4690C0;
      *(v0 + 32) = v14;
      *(v0 + 40) = v10;
      *(v0 + 48) = v15;
      *(v0 + 56) = v16;
      *(v0 + 64) = v11;

      specialized WorkoutVoiceAnalyticsHandling.send()();
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:), v1, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 160);
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration;
  v4 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v5 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyMuted;
  swift_beginAccess();
  *(v4 + v5) = v2;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x20F2E6C00](*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey), *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_muteStatusUserDefaultsKey + 8));
  [v6 setBool:v2 forKey:v7];

  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_metricsPublisher))
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 160);
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter((v0 + 120));

    v10 = *(v0 + 120);
    v11 = *(*(v1 + v3) + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
    v12 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v13 = [*(v11 + v12) workoutActivityType];
    v14 = *(v8 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier);
    v15 = *(v8 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_analyticsIdentifier + 8);
    *(v0 + 16) = 0xD000000000000033;
    *(v0 + 24) = 0x800000020B4690C0;
    *(v0 + 32) = v13;
    *(v0 + 40) = v9;
    *(v0 + 48) = v14;
    *(v0 + 56) = v15;
    *(v0 + 64) = v10;

    specialized WorkoutVoiceAnalyticsHandling.send()();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:)(char a1)
{
  *(v2 + 128) = v1;
  *(v2 + 216) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v2 + 136) = swift_task_alloc();
  v3 = type metadata accessor for WorkoutState();
  *(v2 + 144) = v3;
  *(v2 + 152) = *(v3 - 8);
  *(v2 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v1, 0);
}

uint64_t WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 216);
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_liveWorkoutConfiguration);
  v4 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_isWorkoutBuddyUnavailableDueToHeadphonesOff;
  swift_beginAccess();
  *(v3 + v4) = (v2 & 1) == 0;
  v5 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_displayStateHandler);
  *(v0 + 168) = v5;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v5, 0);
}

{
  v1 = *(v0 + 216);
  *(*(v0 + 168) + 112) = v1;
  if ((v1 & 1) == 0)
  {
    *(*(v0 + 168) + 114) = 2;
  }

  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:);

  return WorkoutBuddyDisplayStateHandler.notifyObserversIfNeeded(forceNotifyObservers:)(0);
}

{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v1, 0);
}

{
  if (*(v0 + 216) == 1 && (v1 = *(v0 + 128), v2 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_startedDisconnected, *(v0 + 184) = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_startedDisconnected, v3 = *(v1 + v2), v3 != 2) && (v3 & 1) != 0 && (v5 = *(v0 + 152), v4 = *(v0 + 160), v6 = *(v0 + 144), v7 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState, swift_beginAccess(), (*(v5 + 16))(v4, v1 + v7, v6), WorkoutState.duration.getter(), v9 = v8, (*(v5 + 8))(v4, v6), v9 <= 45.0))
  {
    v12 = *(v0 + 128);
    v13 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutVoiceAvailabilityProvider;
    swift_beginAccess();
    outlined init with copy of WorkoutBuddyAvailabilityProviding(v12 + v13, v0 + 16);
    v14 = *(v0 + 40);
    v15 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm_2((v0 + 16), v14);
    v17 = (*(v15 + 8) + **(v15 + 8));
    v16 = swift_task_alloc();
    *(v0 + 192) = v16;
    *v16 = v0;
    v16[1] = WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:);

    return v17(v14, v15);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

{
  v1 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm_19(v0 + 2);
  v2 = *(v1 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_headphonesMonitor);
  v0[26] = v2;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v2, 0);
}

{
  v1 = *(v0 + 128);
  *(v0 + 217) = *(*(v0 + 208) + 112);
  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v1, 0);
}

{
  v1 = *(v0 + 200);
  if (*(v0 + 217))
  {
    if (v1 != 1)
    {
      goto LABEL_8;
    }

LABEL_6:
    v3 = *(v0 + 128);
    v4 = *(v0 + 136);
    *(v3 + *(v0 + 184)) = 0;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = v6;
    v7[4] = v3;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply, v7);

    goto LABEL_9;
  }

  v2 = FIShowAudioTranscriptions();
  if (v1 == 1)
  {
    if (!v2)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v1 = *(v0 + 200);
LABEL_8:
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v1);
LABEL_9:

  v8 = *(v0 + 8);

  return v8();
}

uint64_t WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:)(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 200) = a1;

  return MEMORY[0x2822009F8](WorkoutVoiceMomentCoordinator.setHeadphonesConnected(_:), v2, 0);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutVoiceMomentCoordinator@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutVoiceMomentCoordinator(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double protocol witness for WorkoutBuddyMomentCoordinating.state.getter in conformance WorkoutVoiceMomentCoordinator@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.state.setter in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(a1, v5);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  return outlined destroy of WorkoutVoiceMomentCoordinator.State(a1, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
}

uint64_t (*protocol witness for WorkoutBuddyMomentCoordinating.state.modify in conformance WorkoutVoiceMomentCoordinator(void *a1))()
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
  v2[4] = WorkoutVoiceMomentCoordinator.state.modify(v2);
  return protocol witness for WorkoutBuddyMomentCoordinating.state.modify in conformance WorkoutVoiceMomentCoordinator;
}

void protocol witness for WorkoutBuddyMomentCoordinating.state.modify in conformance WorkoutVoiceMomentCoordinator(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.workoutState.getter in conformance WorkoutVoiceMomentCoordinator@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v4 = type metadata accessor for WorkoutState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.workoutState.setter in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v4 = type metadata accessor for WorkoutState();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.hasWorkoutTransitionedToInSession.getter in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  swift_beginAccess();
  return *(v0 + v1);
}

void protocol witness for WorkoutBuddyMomentCoordinating.hasWorkoutTransitionedToInSession.setter in conformance WorkoutVoiceMomentCoordinator(char a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_hasWorkoutTransitionedToInSession;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.introMomentGenerationDuration.getter in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = v0 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  swift_beginAccess();
  return *v1;
}

void protocol witness for WorkoutBuddyMomentCoordinating.introMomentGenerationDuration.setter in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMomentGenerationDuration;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.outroInferenceResult.getter in conformance WorkoutVoiceMomentCoordinator@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Measurement<NSUnitDuration>?(v4 + v8, a4, a2, a3);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.introMoment.setter in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_introMoment;
  swift_beginAccess();
  outlined assign with take of WorkoutVoiceMoment?(a1, v1 + v3, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMd, &_s19FitnessIntelligence18WorkoutVoiceMomentVSgMR);
  return swift_endAccess();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.setDelegate(_:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for WorkoutBuddyMomentCoordinating.setDelegate(_:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.setDelegate(_:)(a1, a2);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.setMetricsPublisher(_:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for WorkoutBuddyMomentCoordinating.setMetricsPublisher(_:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.setMetricsPublisher(_:)(a1);
}

double protocol witness for WorkoutBuddyMomentCoordinating.setHeartRateDataProvider(_:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_heartRateDataProvider) = a1;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  return result;
}

double protocol witness for WorkoutBuddyMomentCoordinating.generateIntroMomentWhenReady() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
  v7 = swift_allocObject();
  v7[2] = v0;
  v7[3] = v6;
  v7[4] = v0;
  swift_retain_n();
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in WorkoutVoiceMomentCoordinator.generateIntroMomentWhenReady()partial apply, v7);

  return result;
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.conditionsMetForMomentInference() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.conditionsMetForMomentInference() in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.conditionsMetForMomentInference()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.conditionsMetForMomentInference() in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.hasDeliveredIntroMomentAndReadyForMoreMoments() in conformance WorkoutVoiceMomentCoordinator()
{
  v0 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v2 = MEMORY[0x28223BE20](v0 - 8, v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2, v5);
  v7 = (&v11 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  (*(*(v8 - 8) + 56))(v4, 4, 6, v8);
  v9 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v7, v4);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v4, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v7, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  return v9 & 1;
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.generatePeriodicProgressMomentIfSupported() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.generatePeriodicProgressMomentIfSupported() in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.generatePeriodicProgressMomentIfSupported()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.checkForBreakthroughs() in conformance WorkoutVoiceMomentCoordinator()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](protocol witness for WorkoutBuddyMomentCoordinating.checkForBreakthroughs() in conformance WorkoutVoiceMomentCoordinator, v0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.checkForBreakthroughs() in conformance WorkoutVoiceMomentCoordinator;

  return BreakthroughMomentChecker.startChecking()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.generateOutroMoment() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.generateOutroMoment() in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.generateOutroMoment()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.progressWorkoutToInSession() in conformance WorkoutVoiceMomentCoordinator()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.progressWorkoutToInSession() in conformance WorkoutVoiceMomentCoordinator;

  return specialized WorkoutBuddyMomentCoordinating.progressWorkoutToInSession()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.announceMoment(momentGenerationDuration:moment:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for WorkoutBuddyMomentCoordinating.announceMoment(momentGenerationDuration:moment:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.announceMoment(momentGenerationDuration:moment:)(a1, a2, a3);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.announceMoment(momentGenerationDuration:moment:) in conformance WorkoutVoiceMomentCoordinator()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.setWorkoutBuddyConnected(_:voiceAvailabilityState:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for WorkoutBuddyMomentCoordinating.setWorkoutBuddyConnected(_:voiceAvailabilityState:) in conformance WorkoutVoiceMomentCoordinator;

  return specialized WorkoutVoiceMomentCoordinator.setWorkoutBuddyConnected(_:voiceAvailabilityState:)(a1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:) in conformance WorkoutVoiceMomentCoordinator(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for WorkoutBuddyMomentCoordinating.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.fallbackToSiriForFutureAnnouncements(shouldRemoveWorkoutBuddyUI:)(a1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.stopActiveTasks(isGeneratingOutro:workoutWasEnded:) in conformance WorkoutVoiceMomentCoordinator(char a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for WorkoutBuddyMomentCoordinating.stopActiveTasks(isGeneratingOutro:workoutWasEnded:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.stopActiveTasks(isGeneratingOutro:workoutWasEnded:)(a1, a2);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.cancelAnyPendingAnnouncements() in conformance WorkoutVoiceMomentCoordinator()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](protocol witness for WorkoutBuddyMomentCoordinating.cancelAnyPendingAnnouncements() in conformance WorkoutVoiceMomentCoordinator, v0, 0);
}

{
  *(*(v0 + 16) + OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_shouldCancelAllPendingAnnouncements) = 1;
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = protocol witness for WorkoutBuddyMomentCoordinating.cancelAnyPendingAnnouncements() in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.cancelInFlightAnnouncementsIfAny()();
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.setWorkoutBuddyMuted(_:) in conformance WorkoutVoiceMomentCoordinator(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for WorkoutBuddyMomentCoordinating.setWorkoutBuddyMuted(_:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.setWorkoutBuddyMuted(_:)(a1);
}

uint64_t protocol witness for WorkoutBuddyMomentCoordinating.updateSplitEvents(_:shouldAnnounceSplit:) in conformance WorkoutVoiceMomentCoordinator(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for WorkoutBuddyMomentCoordinating.updateSplitEvents(_:shouldAnnounceSplit:) in conformance WorkoutVoiceMomentCoordinator;

  return WorkoutVoiceMomentCoordinator.updateSplitEvents(_:shouldAnnounceSplit:)(a1, a2);
}

uint64_t WorkoutVoiceMomentCoordinator.updateWorkoutState(withSong:isPlaying:elapsedTime:duration:)(void *a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6)
{
  v115[1] = a5;
  v115[0] = __PAIR64__(a6, a4);
  v117 = a3;
  v116 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v122 = v115 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v121 = v115 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v120 = v115 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v135 = v115 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v119 = v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v134 = v115 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v133 = v115 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v132 = v115 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v144 = v115 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  v36 = MEMORY[0x28223BE20](v34 - 8, v35);
  v131 = v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v130 = v115 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  v42 = MEMORY[0x28223BE20](v40 - 8, v41);
  v118 = v115 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v143 = v115 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v142 = v115 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51 = MEMORY[0x28223BE20](v49 - 8, v50);
  v141 = v115 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v51, v53);
  v140 = v115 - v55;
  MEMORY[0x28223BE20](v54, v56);
  v139 = v115 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  MEMORY[0x28223BE20](v58 - 8, v59);
  v138 = v115 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v61 - 8, v62);
  v137 = v115 - v63;
  v128 = type metadata accessor for WorkoutState();
  v125 = *(v128 - 8);
  v65 = MEMORY[0x28223BE20](v128, v64);
  v67 = v115 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65, v68);
  v129 = v115 - v69;
  v127 = type metadata accessor for WorkoutMediaDetails();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v70);
  v72 = v115 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v73 = [a1 title];
    if (v73)
    {
      v74 = v73;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v75 = [a1 artist];
    if (v75)
    {
      v76 = v75;
      v77 = [v75 name];

      if (v77)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    v78 = [a1 genre];
    if (v78)
    {
      v79 = v78;
      v80 = [v78 name];

      if (v80)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    [a1 isFavorite];
  }

  v124 = v72;
  WorkoutMediaDetails.init(title:artistName:genreName:isFavorited:isPlaying:elapsedTime:duration:)();
  v81 = v136;
  v82 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  v117 = OBJC_IVAR____TtC11WorkoutCore29WorkoutVoiceMomentCoordinator_workoutState;
  swift_beginAccess();
  v83 = *(v125 + 16);
  v123 = v67;
  v83(v67, v81 + v82, v128);
  v84 = type metadata accessor for UUID();
  (*(*(v84 - 8) + 56))(v137, 1, 1, v84);
  v85 = type metadata accessor for WorkoutGoal();
  (*(*(v85 - 8) + 56))(v138, 1, 1, v85);
  v86 = type metadata accessor for Date();
  v87 = *(*(v86 - 8) + 56);
  v87(v139, 1, 1, v86);
  v87(v140, 1, 1, v86);
  v87(v141, 1, 1, v86);
  v88 = type metadata accessor for WeatherCondition();
  (*(*(v88 - 8) + 56))(v142, 1, 1, v88);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitLengthCGMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGMR);
  v90 = *(*(v89 - 8) + 56);
  v90(v143, 1, 1, v89);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGMR);
  v92 = *(*(v91 - 8) + 56);
  v92(v130, 1, 1, v91);
  v92(v131, 1, 1, v91);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo12NSUnitEnergyCGMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGMR);
  (*(*(v93 - 8) + 56))(v144, 1, 1, v93);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGMR);
  v95 = *(*(v94 - 8) + 56);
  (v95)(v132, 1, 1, v94);
  v95();
  (v95)(v134, 1, 1, v94);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitPowerCGMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGMR);
  (*(*(v96 - 8) + 56))(v135, 1, 1, v96);
  v97 = v118;
  v90(v118, 1, 1, v89);
  v98 = v126;
  v99 = v120;
  v100 = v127;
  (*(v126 + 16))(v120, v124, v127);
  (*(v98 + 56))(v99, 0, 1, v100);
  v101 = type metadata accessor for HKActivitySummaryRepresentable();
  v102 = v121;
  (*(*(v101 - 8) + 56))(v121, 1, 1, v101);
  v103 = v119;
  (v95)(v119, 1, 1, v94);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo14NSUnitDurationCGMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGMR);
  v105 = v122;
  (*(*(v104 - 8) + 56))(v122, 1, 1, v104);
  v106 = v134;
  v107 = v132;
  v108 = v131;
  v109 = v130;
  WorkoutState.updatedWith(identifier:activityType:status:goal:configuredAlerts:start:sessionStart:end:duration:location:weatherConditions:distance:pace:averagePace:caloriesBurned:heartRate:averageHeartRate:maximumHeartRate:elapsedTimeInHeartRateZones:averagePower:elevationGain:events:metadata:samplesByType:route:mediaDetails:activitySummaryRepresentable:isMachineWorkout:splitAverageHeartRate:timeBasedSplitDuration:)();
  outlined destroy of Measurement<NSUnitDuration>?(v105, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMd, &_s10Foundation11MeasurementVySo14NSUnitDurationCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v103, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v102, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMd, &_s19FitnessIntelligence30HKActivitySummaryRepresentableVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v99, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMd, &_s19FitnessIntelligence19WorkoutMediaDetailsVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v97, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v135, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMd, &_s10Foundation11MeasurementVySo11NSUnitPowerCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v106, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v133, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v107, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMd, &_s10Foundation11MeasurementVySo15NSUnitFrequencyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v144, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitEnergyCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v108, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v109, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMd, &_s10Foundation11MeasurementVy19FitnessIntelligence8UnitPaceCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v143, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMd, &_s10Foundation11MeasurementVySo12NSUnitLengthCGSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v142, &_s19FitnessIntelligence16WeatherConditionVSgMd, &_s19FitnessIntelligence16WeatherConditionVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v141, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v140, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v139, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v138, &_s10WorkoutKit0A4GoalOSgMd, &_s10WorkoutKit0A4GoalOSgMR);
  outlined destroy of Measurement<NSUnitDuration>?(v137, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v110 = v125;
  v111 = v128;
  (*(v125 + 8))(v123, v128);
  (*(v126 + 8))(v124, v127);
  v112 = v136;
  v113 = v117;
  swift_beginAccess();
  (*(v110 + 40))(v112 + v113, v129, v111);
  return swift_endAccess();
}

Swift::Void __swiftcall WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)(Swift::Double queryDuration)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v27 = &v26 - v6;
  v7 = type metadata accessor for WorkoutVoiceMomentCoordinator.State(0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v26 - v13;
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.workoutVoice);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = queryDuration;
    _os_log_impl(&dword_20AEA4000, v16, v17, "Time it took for music fetching %f seconds", v18, 0xCu);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v14);

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMd, &_s19FitnessIntelligence22WorkoutVoiceMomentTypeO06momentF0_tMR);
  v20 = *(*(v19 - 8) + 56);
  v20(v11, 2, 6, v19);
  v21 = specialized static WorkoutVoiceMomentCoordinator.State.== infix(_:_:)(v14, v11);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v11, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v14, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  v20(v14, 3, 6, v19);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of WorkoutVoiceMomentCoordinator.State(v14, v11);

  static Published.subscript.setter();
  WorkoutVoiceMomentCoordinator.state.didset();
  outlined destroy of WorkoutVoiceMomentCoordinator.State(v14, type metadata accessor for WorkoutVoiceMomentCoordinator.State);
  if (v21)
  {
    v22 = type metadata accessor for TaskPriority();
    v23 = v27;
    (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
    v24 = lazy protocol witness table accessor for type WorkoutBuddyDisplayStateHandler and conformance WorkoutBuddyDisplayStateHandler(&lazy protocol witness table cache variable for type WorkoutVoiceMomentCoordinator and conformance WorkoutVoiceMomentCoordinator, type metadata accessor for WorkoutVoiceMomentCoordinator, &protocol conformance descriptor for WorkoutVoiceMomentCoordinator);
    v25 = swift_allocObject();
    v25[2] = v2;
    v25[3] = v24;
    v25[4] = v2;
    swift_retain_n();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v23, &async function pointer to partial apply for closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:), v25);
  }
}

uint64_t closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v6 = type metadata accessor for WorkoutState();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceMomentCoordinator.initialMusicInfoAvailable(queryDuration:), a4, 0);
}