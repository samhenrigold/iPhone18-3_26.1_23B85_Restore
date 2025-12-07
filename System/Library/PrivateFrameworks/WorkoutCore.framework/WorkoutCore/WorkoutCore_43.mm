BOOL Apple_Workout_Core_MetricsPublisher.hasWorkoutIdentifierBytes.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes;
  swift_beginAccess();
  return *(v1 + 8) >> 60 != 15;
}

Swift::Void __swiftcall Apple_Workout_Core_MetricsPublisher.clearWorkoutIdentifierBytes()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v4 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v4;
  }

  v5 = (v4 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = xmmword_20B449A80;
  outlined consume of Data?(v6, v7);
}

uint64_t Apple_Workout_Core_MetricsPublisher.raceInformationPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.raceInformationPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.raceInformationPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.raceInformationPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.raceInformationPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.racePositionStatePublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  UnknownStorage.init()();
  v11 = *(v9 + 44);
  v12 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.racePositionStatePublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.racePositionStatePublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  v11 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.racePositionStatePublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0;
    UnknownStorage.init()();
    v19 = *(v9 + 44);
    v20 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.racePositionStatePublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.locationPositionPublisher.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  }

  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 1) = v11;
  UnknownStorage.init()();
  v12 = *(v9 + 28);
  v13 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.locationPositionPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  }

  v12 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  *(a2 + 1) = v12;
  UnknownStorage.init()();
  v13 = *(v10 + 28);
  v14 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.locationPositionPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.locationPositionPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.locationPositionPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = MEMORY[0x277D84F90];
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 1) = v19;
    UnknownStorage.init()();
    v20 = *(v9 + 28);
    v21 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
    (*(*(v21 - 8) + 56))(&v14[v20], 1, 1, v21);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.locationPositionPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.waterTemperatureMetricsPublisher.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  }

  *a1 = 0;
  UnknownStorage.init()();
  v11 = &a1[*(v9 + 24)];
  *v11 = 0;
  v11[8] = 1;
  v12 = &a1[*(v9 + 28)];
  *v12 = 0;
  v12[8] = 1;
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.waterTemperatureMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.waterTemperatureMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.waterTemperatureMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    UnknownStorage.init()();
    v19 = &v14[*(v9 + 24)];
    *v19 = 0;
    v19[8] = 1;
    v20 = &v14[*(v9 + 28)];
    *v20 = 0;
    v20[8] = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.waterTemperatureMetricsPublisher.modify;
}

void (*Apple_Workout_Core_MetricsPublisher.descent.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *(v4 + 72) = v7;
  return Apple_Workout_Core_MetricsPublisher.descent.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.downhillRunCount.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount);
  swift_beginAccess();
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

void key path getter for Apple_Workout_Core_MetricsPublisher.downhillRunCount : Apple_Workout_Core_MetricsPublisher(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  v4 = *v3;
  if (*(v3 + 4))
  {
    v4 = 0;
  }

  *a2 = v4;
}

void key path setter for Apple_Workout_Core_MetricsPublisher.downhillRunCount : Apple_Workout_Core_MetricsPublisher(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  v7 = v6 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 4) = 0;
}

void Apple_Workout_Core_MetricsPublisher.downhillRunCount.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  v7 = v6 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 4) = 0;
}

void (*Apple_Workout_Core_MetricsPublisher.downhillRunCount.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Apple_Workout_Core_MetricsPublisher.downhillRunCount.modify;
}

void Apple_Workout_Core_MetricsPublisher.downhillRunCount.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v10 = v7 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  *v10 = v3;
  *(v10 + 4) = 0;

  free(v2);
}

BOOL Apple_Workout_Core_MetricsPublisher.hasDownhillRunCount.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  return (*(v1 + 4) & 1) == 0;
}

Swift::Void __swiftcall Apple_Workout_Core_MetricsPublisher.clearDownhillRunCount()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v4 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v4;
  }

  v5 = v4 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  *v5 = 0;
  *(v5 + 4) = 1;
}

uint64_t Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v9 + 24);
  v14 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  }

  UnknownStorage.init()();
  v12 = *(v10 + 20);
  v13 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  v14 = *(v10 + 24);
  v15 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  v11 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v19 = *(v9 + 20);
    v20 = type metadata accessor for Apple_Workout_Core_RunningTrackInfo(0);
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    v21 = *(v9 + 24);
    v22 = type metadata accessor for Apple_Workout_Core_TrackRunningCoordinator(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.trackRunningMetricsPublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v6, a1, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v6, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher : Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8 + v9, v7, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v7, a2, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  UnknownStorage.init()();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher : Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  v13 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v12, v7, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(a1, v7, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  v11 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 1;
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v14, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  }

  return Apple_Workout_Core_MetricsPublisher.workoutBuddyStatePublisher.modify;
}

uint64_t Apple_Workout_Core_MetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_MetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t static Apple_Workout_Core_ConfigurationType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t Apple_Workout_Core_MetricsPublisher._StorageClass.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v1 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  v2 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  v4 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  v6 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  v8 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace) = 0;
  v9 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  v10 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData) = MEMORY[0x277D84F90];
  v13 = (v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  v17 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed) = 0;
  v18 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  v19 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  (*(*(v19 - 8) + 56))(v0 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  v21 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  (*(*(v21 - 8) + 56))(v0 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  v23 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  (*(*(v23 - 8) + 56))(v0 + v22, 1, 1, v23);
  v24 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  *v24 = 0;
  *(v24 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex) = 0;
  v25 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  *v25 = 0;
  *(v25 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset) = 0;
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration) = 0;
  v26 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  *v31 = 0;
  *(v31 + 8) = 1;
  v32 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  v33 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  (*(*(v33 - 8) + 56))(v0 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  v35 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  (*(*(v35 - 8) + 56))(v0 + v34, 1, 1, v35);
  *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes) = xmmword_20B449A80;
  v36 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  v37 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  (*(*(v37 - 8) + 56))(v0 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  v39 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  (*(*(v39 - 8) + 56))(v0 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  v41 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  (*(*(v41 - 8) + 56))(v0 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  v43 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  (*(*(v43 - 8) + 56))(v0 + v42, 1, 1, v43);
  v44 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  *v44 = 0;
  *(v44 + 8) = 1;
  v45 = v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  *v45 = 0;
  *(v45 + 4) = 1;
  v46 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  v47 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  (*(*(v47 - 8) + 56))(v0 + v46, 1, 1, v47);
  v48 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  v49 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  (*(*(v49 - 8) + 56))(v0 + v48, 1, 1, v49);
  return v0;
}

uint64_t Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v350 = &v278 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v349 = &v278 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v348 = &v278 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v347 = &v278 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v346 = &v278 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v345 = &v278 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v344 = &v278 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v343 = &v278 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v332 = &v278 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v30 - 8, v31);
  v328 = &v278 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v324 = &v278 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v318 = &v278 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v304 = &v278 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v295 = &v278 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v291 = &v278 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v48 - 8, v49);
  v286 = &v278 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v51 - 8, v52);
  v281 = &v278 - v53;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  v54 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  v279 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  v55 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  (*(*(v55 - 8) + 56))(v1 + v54, 1, 1, v55);
  v56 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  v282 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  v57 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  (*(*(v57 - 8) + 56))(v1 + v56, 1, 1, v57);
  v58 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  v283 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  v59 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  (*(*(v59 - 8) + 56))(v1 + v58, 1, 1, v59);
  v60 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  v284 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  v61 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  (*(*(v61 - 8) + 56))(v1 + v60, 1, 1, v61);
  v285 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance) = 0;
  v287 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer) = 0;
  v288 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace) = 0;
  v289 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace) = 0;
  v290 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace) = 0;
  v292 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace) = 0;
  v293 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace) = 0;
  v62 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  v294 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  v63 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  (*(*(v63 - 8) + 56))(v1 + v62, 1, 1, v63);
  v64 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
  *v64 = 0;
  *(v64 + 8) = 1;
  v65 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  v296 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  *v65 = 0;
  *(v65 + 8) = 1;
  v297 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData) = MEMORY[0x277D84F90];
  v66 = (v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  *v66 = 0;
  v66[1] = 0xE000000000000000;
  v67 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  v298 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  *v67 = 0;
  *(v67 + 8) = 1;
  v68 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  v299 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  *v68 = 0;
  *(v68 + 8) = 1;
  v69 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  v300 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  v70 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  (*(*(v70 - 8) + 56))(v1 + v69, 1, 1, v70);
  v301 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed) = 0;
  v71 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  v302 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  v72 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  (*(*(v72 - 8) + 56))(v1 + v71, 1, 1, v72);
  v73 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  v303 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  v74 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  (*(*(v74 - 8) + 56))(v1 + v73, 1, 1, v74);
  v75 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  v305 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  v76 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  (*(*(v76 - 8) + 56))(v1 + v75, 1, 1, v76);
  v77 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  v306 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  *v77 = 0;
  *(v77 + 8) = 1;
  v307 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex) = 0;
  v308 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration) = 0;
  v309 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance) = 0;
  v310 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace) = 0;
  v311 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy) = 0;
  v312 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy) = 0;
  v313 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower) = 0;
  v314 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex) = 0;
  v78 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  v315 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  *v78 = 0;
  *(v78 + 8) = 1;
  v316 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration) = 0;
  v317 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance) = 0;
  v319 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace) = 0;
  v320 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower) = 0;
  v321 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime) = 0;
  v322 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset) = 0;
  v323 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration) = 0;
  v79 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  v325 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  *v79 = 0;
  *(v79 + 8) = 1;
  v80 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  v326 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  *v80 = 0;
  *(v80 + 8) = 1;
  v81 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  v327 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  *v81 = 0;
  *(v81 + 8) = 1;
  v82 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  v329 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  *v82 = 0;
  *(v82 + 8) = 1;
  v83 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  v330 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  *v83 = 0;
  *(v83 + 8) = 1;
  v84 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  v331 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  *v84 = 0;
  *(v84 + 8) = 1;
  v85 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  v333 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  v86 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  (*(*(v86 - 8) + 56))(v1 + v85, 1, 1, v86);
  v87 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  v334 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  v88 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  (*(*(v88 - 8) + 56))(v1 + v87, 1, 1, v88);
  v335 = (v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  *(v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes) = xmmword_20B449A80;
  v89 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  v336 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  v90 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  (*(*(v90 - 8) + 56))(v1 + v89, 1, 1, v90);
  v91 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  v337 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  v92 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  (*(*(v92 - 8) + 56))(v1 + v91, 1, 1, v92);
  v93 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  v338 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  v94 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  (*(*(v94 - 8) + 56))(v1 + v93, 1, 1, v94);
  v95 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  v339 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  v96 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  (*(*(v96 - 8) + 56))(v1 + v95, 1, 1, v96);
  v97 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  v340 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  *v97 = 0;
  *(v97 + 8) = 1;
  v98 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  v280 = v1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  *v98 = 0;
  *(v98 + 4) = 1;
  v99 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  v342 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  v100 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  (*(*(v100 - 8) + 56))(v1 + v99, 1, 1, v100);
  v101 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  v341 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  v102 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  (*(*(v102 - 8) + 56))(v1 + v101, 1, 1, v102);
  swift_beginAccess();
  LOBYTE(v101) = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v101;
  swift_beginAccess();
  v103 = *(a1 + 24);
  v104 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v103;
  *(v1 + 32) = v104;
  swift_beginAccess();
  v105 = *(a1 + 40);
  v106 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v105;
  *(v1 + 48) = v106;
  swift_beginAccess();
  LOBYTE(v105) = *(a1 + 49);
  swift_beginAccess();
  *(v1 + 49) = v105;
  v107 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  v108 = v281;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v107, v281, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v109 = v279;
  swift_beginAccess();

  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v108, v1 + v109, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  swift_endAccess();
  v110 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  v111 = v286;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v110, v286, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v112 = v282;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v111, v1 + v112, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  swift_endAccess();
  v113 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  v114 = v291;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v113, v291, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v115 = v283;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v114, v1 + v115, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  swift_endAccess();
  v116 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  v117 = v295;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v116, v295, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v118 = v284;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v117, v1 + v118, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  swift_endAccess();
  v119 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  swift_beginAccess();
  v120 = *(a1 + v119);
  v121 = v285;
  swift_beginAccess();
  *(v1 + v121) = v120;
  v122 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  swift_beginAccess();
  v123 = *(a1 + v122);
  v124 = v287;
  swift_beginAccess();
  *(v1 + v124) = v123;
  v125 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  swift_beginAccess();
  v126 = *(a1 + v125);
  v127 = v288;
  swift_beginAccess();
  *(v1 + v127) = v126;
  v128 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  swift_beginAccess();
  v129 = *(a1 + v128);
  v130 = v289;
  swift_beginAccess();
  *(v1 + v130) = v129;
  v131 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  swift_beginAccess();
  v132 = *(a1 + v131);
  v133 = v290;
  swift_beginAccess();
  *(v1 + v133) = v132;
  v134 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  swift_beginAccess();
  v135 = *(a1 + v134);
  v136 = v292;
  swift_beginAccess();
  *(v1 + v136) = v135;
  v137 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  swift_beginAccess();
  v138 = *(a1 + v137);
  v139 = v293;
  swift_beginAccess();
  *(v1 + v139) = v138;
  v140 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  v141 = v304;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v140, v304, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v142 = v294;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v141, v1 + v142, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  swift_endAccess();
  v143 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain);
  swift_beginAccess();
  v144 = *v143;
  LOBYTE(v143) = *(v143 + 8);
  swift_beginAccess();
  *v64 = v144;
  *(v64 + 8) = v143;
  v145 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation);
  swift_beginAccess();
  v146 = *v145;
  LOBYTE(v145) = *(v145 + 8);
  v147 = v296;
  swift_beginAccess();
  *v147 = v146;
  *(v147 + 8) = v145;
  v148 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  swift_beginAccess();
  v149 = *(a1 + v148);
  v150 = v297;
  swift_beginAccess();
  *(v1 + v150) = v149;

  v151 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v153 = *v151;
  v152 = v151[1];
  swift_beginAccess();
  *v66 = v153;
  v66[1] = v152;

  v154 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence);
  swift_beginAccess();
  v155 = *v154;
  LOBYTE(v154) = *(v154 + 8);
  v156 = v298;
  swift_beginAccess();
  *v156 = v155;
  *(v156 + 8) = v154;
  v157 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence);
  swift_beginAccess();
  v158 = *v157;
  LOBYTE(v157) = *(v157 + 8);
  v159 = v299;
  swift_beginAccess();
  *v159 = v158;
  *(v159 + 8) = v157;
  v160 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  v161 = v318;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v160, v318, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v162 = v300;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v161, v1 + v162, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  swift_endAccess();
  v163 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  swift_beginAccess();
  v164 = *(a1 + v163);
  v165 = v301;
  swift_beginAccess();
  *(v1 + v165) = v164;
  v166 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  v167 = v324;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v166, v324, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v168 = v302;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v167, v1 + v168, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  swift_endAccess();
  v169 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  v170 = v328;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v169, v328, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v171 = v303;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v170, v1 + v171, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  swift_endAccess();
  v172 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  v173 = v332;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v172, v332, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v174 = v305;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v173, v1 + v174, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  swift_endAccess();
  v175 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime);
  swift_beginAccess();
  v176 = *v175;
  LOBYTE(v175) = *(v175 + 8);
  v177 = v306;
  swift_beginAccess();
  *v177 = v176;
  *(v177 + 8) = v175;
  v178 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  swift_beginAccess();
  LODWORD(v178) = *(a1 + v178);
  v179 = v307;
  swift_beginAccess();
  *(v1 + v179) = v178;
  v180 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  swift_beginAccess();
  v181 = *(a1 + v180);
  v182 = v308;
  swift_beginAccess();
  *(v1 + v182) = v181;
  v183 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  swift_beginAccess();
  v184 = *(a1 + v183);
  v185 = v309;
  swift_beginAccess();
  *(v1 + v185) = v184;
  v186 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  swift_beginAccess();
  v187 = *(a1 + v186);
  v188 = v310;
  swift_beginAccess();
  *(v1 + v188) = v187;
  v189 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  swift_beginAccess();
  v190 = *(a1 + v189);
  v191 = v311;
  swift_beginAccess();
  *(v1 + v191) = v190;
  v192 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  swift_beginAccess();
  v193 = *(a1 + v192);
  v194 = v312;
  swift_beginAccess();
  *(v1 + v194) = v193;
  v195 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  swift_beginAccess();
  v196 = *(a1 + v195);
  v197 = v313;
  swift_beginAccess();
  *(v1 + v197) = v196;
  v198 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  swift_beginAccess();
  LODWORD(v198) = *(a1 + v198);
  v199 = v314;
  swift_beginAccess();
  *(v1 + v199) = v198;
  v200 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate);
  swift_beginAccess();
  v201 = *v200;
  LOBYTE(v200) = *(v200 + 8);
  v202 = v315;
  swift_beginAccess();
  *v202 = v201;
  *(v202 + 8) = v200;
  v203 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  swift_beginAccess();
  v204 = *(a1 + v203);
  v205 = v316;
  swift_beginAccess();
  *(v1 + v205) = v204;
  v206 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  swift_beginAccess();
  v207 = *(a1 + v206);
  v208 = v317;
  swift_beginAccess();
  *(v1 + v208) = v207;
  v209 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  swift_beginAccess();
  v210 = *(a1 + v209);
  v211 = v319;
  swift_beginAccess();
  *(v1 + v211) = v210;
  v212 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  swift_beginAccess();
  v213 = *(a1 + v212);
  v214 = v320;
  swift_beginAccess();
  *(v1 + v214) = v213;
  v215 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  swift_beginAccess();
  v216 = *(a1 + v215);
  v217 = v321;
  swift_beginAccess();
  *(v1 + v217) = v216;
  v218 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  swift_beginAccess();
  v219 = *(a1 + v218);
  v220 = v322;
  swift_beginAccess();
  *(v1 + v220) = v219;
  v221 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  swift_beginAccess();
  v222 = *(a1 + v221);
  v223 = v323;
  swift_beginAccess();
  *(v1 + v223) = v222;
  v224 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength);
  swift_beginAccess();
  v225 = *v224;
  LOBYTE(v224) = *(v224 + 8);
  v226 = v325;
  swift_beginAccess();
  *v226 = v225;
  *(v226 + 8) = v224;
  v227 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength);
  swift_beginAccess();
  v228 = *v227;
  LOBYTE(v227) = *(v227 + 8);
  v229 = v326;
  swift_beginAccess();
  *v229 = v228;
  *(v229 + 8) = v227;
  v230 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation);
  swift_beginAccess();
  v231 = *v230;
  LOBYTE(v230) = *(v230 + 8);
  v232 = v327;
  swift_beginAccess();
  *v232 = v231;
  *(v232 + 8) = v230;
  v233 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation);
  swift_beginAccess();
  v234 = *v233;
  LOBYTE(v233) = *(v233 + 8);
  v235 = v329;
  swift_beginAccess();
  *v235 = v234;
  *(v235 + 8) = v233;
  v236 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime);
  swift_beginAccess();
  v237 = *v236;
  LOBYTE(v236) = *(v236 + 8);
  v238 = v330;
  swift_beginAccess();
  *v238 = v237;
  *(v238 + 8) = v236;
  v239 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime);
  swift_beginAccess();
  v240 = *v239;
  LOBYTE(v239) = *(v239 + 8);
  v241 = v331;
  swift_beginAccess();
  *v241 = v240;
  *(v241 + 8) = v239;
  v242 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  v243 = v343;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v242, v343, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v244 = v333;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v243, v1 + v244, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  swift_endAccess();
  v245 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  v246 = v344;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v245, v344, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v247 = v334;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v246, v1 + v247, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  swift_endAccess();
  v248 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v250 = *v248;
  v249 = v248[1];
  v251 = v335;
  swift_beginAccess();
  v252 = *v251;
  v253 = v251[1];
  *v251 = v250;
  v251[1] = v249;
  outlined copy of Data?(v250, v249);
  outlined consume of Data?(v252, v253);
  v254 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  v255 = v345;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v254, v345, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v256 = v336;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v255, v1 + v256, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  swift_endAccess();
  v257 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  v258 = v346;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v257, v346, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v259 = v337;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v258, v1 + v259, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  swift_endAccess();
  v260 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  v261 = v347;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v260, v347, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v262 = v338;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v261, v1 + v262, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  swift_endAccess();
  v263 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  v264 = v348;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v263, v348, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v265 = v339;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v264, v1 + v265, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  swift_endAccess();
  v266 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent);
  swift_beginAccess();
  v267 = *v266;
  LOBYTE(v266) = *(v266 + 8);
  v268 = v340;
  swift_beginAccess();
  *v268 = v267;
  *(v268 + 8) = v266;
  v269 = a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  LODWORD(v267) = *v269;
  LOBYTE(v269) = *(v269 + 4);
  v270 = v280;
  swift_beginAccess();
  *v270 = v267;
  *(v270 + 4) = v269;
  v271 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  v272 = v349;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v271, v349, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v273 = v342;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v272, v1 + v273, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  swift_endAccess();
  v274 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  v275 = v350;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v274, v350, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);

  v276 = v341;
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v275, v1 + v276, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  swift_endAccess();
  return v1;
}

uint64_t outlined assign with take of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t Apple_Workout_Core_MetricsPublisher._StorageClass.deinit()
{

  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);

  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  outlined consume of Data?(*(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes), *(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes + 8));
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v0 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  return v0;
}

uint64_t Apple_Workout_Core_MetricsPublisher._StorageClass.__deallocating_deinit()
{
  Apple_Workout_Core_MetricsPublisher._StorageClass.deinit();

  return swift_deallocClassInstance();
}

uint64_t Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_MetricsPublisher._StorageClass.init(copying:)(v11);
    *(v4 + v8) = v10;
  }

  return closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(v10, a1, a2, a3);
}

uint64_t closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v11 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        closure #1 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 2:
        closure #2 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 3:
        closure #3 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 4:
        closure #4 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 5:
        closure #5 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 6:
        closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 7:
        closure #7 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 8:
        closure #8 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 10:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
        goto LABEL_3;
      case 11:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
        goto LABEL_3;
      case 12:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
        goto LABEL_3;
      case 13:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
        goto LABEL_3;
      case 14:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
        goto LABEL_3;
      case 15:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
        goto LABEL_3;
      case 16:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
        goto LABEL_3;
      case 17:
        closure #16 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 18:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
        goto LABEL_66;
      case 19:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
        goto LABEL_66;
      case 20:
        closure #19 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 21:
        v14 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit;
        v15 = MEMORY[0x277D217D8];
        goto LABEL_62;
      case 22:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
        goto LABEL_66;
      case 23:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
        goto LABEL_66;
      case 24:
        closure #23 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 25:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
        goto LABEL_3;
      case 26:
        closure #25 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 27:
        closure #26 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 28:
        closure #27 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 30:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
        goto LABEL_66;
      case 31:
        v13 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
        goto LABEL_64;
      case 32:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
        goto LABEL_3;
      case 33:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
        goto LABEL_3;
      case 34:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
        goto LABEL_3;
      case 35:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
        goto LABEL_3;
      case 36:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
        goto LABEL_3;
      case 37:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
        goto LABEL_3;
      case 38:
        v13 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
LABEL_64:
        closure #29 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4, v13);
        continue;
      case 39:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
        goto LABEL_66;
      case 40:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
        goto LABEL_3;
      case 41:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
        goto LABEL_3;
      case 42:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
        goto LABEL_3;
      case 43:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
        goto LABEL_3;
      case 44:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
        goto LABEL_3;
      case 45:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
        goto LABEL_3;
      case 46:
        v9 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
LABEL_3:
        closure #9 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4, v9);
        continue;
      case 47:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
        goto LABEL_66;
      case 48:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
        goto LABEL_66;
      case 49:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
        goto LABEL_66;
      case 50:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
        goto LABEL_66;
      case 51:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
        goto LABEL_66;
      case 52:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
        goto LABEL_66;
      case 53:
        closure #51 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 54:
        closure #52 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 55:
        v14 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes;
        v15 = MEMORY[0x277D21760];
LABEL_62:
        closure #20 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4, v14, v15);
        continue;
      case 56:
        closure #54 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 57:
        closure #55 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 58:
        closure #56 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 59:
        closure #57 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        continue;
      case 60:
        v12 = &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
LABEL_66:
        closure #17 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4, v12);
        break;
      case 61:
        closure #59 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 62:
        closure #60 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      case 63:
        closure #61 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularStringField(value:)();
  return swift_endAccess();
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  lazy protocol witness table accessor for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType();
  dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularBoolField(value:)();
  return swift_endAccess();
}

uint64_t closure #5 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #7 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_HeartRateMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #8 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_EnergyMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #16 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_LapsMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #19 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement, &protocol conformance descriptor for Apple_Workout_Core_WorkoutChartDataElement);
  dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #23 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_PowerMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #25 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStatePublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #26 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_IntervalsMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #27 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MultiSportMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #29 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #9 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #51 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher, type metadata accessor for Apple_Workout_Core_PlatterPublisher, &protocol conformance descriptor for Apple_Workout_Core_PlatterPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #52 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher, type metadata accessor for Apple_Workout_Core_GoalPublisher, &protocol conformance descriptor for Apple_Workout_Core_GoalPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #20 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t closure #54 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher, &protocol conformance descriptor for Apple_Workout_Core_RaceInformationPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #55 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_RacePositionStatePublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #56 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher, &protocol conformance descriptor for Apple_Workout_Core_LocationPositionPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #57 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #17 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
  return swift_endAccess();
}

uint64_t closure #59 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
  return swift_endAccess();
}

uint64_t closure #60 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

uint64_t closure #61 in closure #1 in Apple_Workout_Core_MetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  return swift_endAccess();
}

void Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    UnknownStorage.traverse<A>(visitor:)();
  }
}

void closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if (*(a1 + 16) == 1)
  {
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v4)
    {
      return;
    }

    v5 = 0;
  }

  swift_beginAccess();
  v10 = *(a1 + 32);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v5)
    {

      return;
    }
  }

  swift_beginAccess();
  if (*(a1 + 40))
  {
    lazy protocol witness table accessor for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType();
    dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v5)
    {
      return;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (*(a1 + 49) == 1)
  {
    v12 = v5;
    dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    if (v5)
    {
      return;
    }
  }

  else
  {
    v12 = v5;
  }

  closure #1 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
  if (!v12)
  {
    closure #2 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #3 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #4 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    v13 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
    swift_beginAccess();
    if (*(a1 + v13))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
    swift_beginAccess();
    if (*(a1 + v14))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v15 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
    swift_beginAccess();
    if (*(a1 + v15))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v16 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
    swift_beginAccess();
    if (*(a1 + v16))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v17 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
    swift_beginAccess();
    if (*(a1 + v17))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v18 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
    swift_beginAccess();
    if (*(a1 + v18))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v19 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
    swift_beginAccess();
    if (*(a1 + v19))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #5 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain, 18);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation, 19);
    v20 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
    swift_beginAccess();
    if (*(*(a1 + v20) + 16))
    {
      type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutChartDataElement and conformance Apple_Workout_Core_WorkoutChartDataElement, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement, &protocol conformance descriptor for Apple_Workout_Core_WorkoutChartDataElement);

      dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    }

    v21 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
    swift_beginAccess();
    v22 = *v21;
    v23 = v21[1];
    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {

      dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    }

    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence, 22);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence, 23);
    closure #10 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    v25 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
    swift_beginAccess();
    if (*(a1 + v25))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #11 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #12 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #13 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime, 30);
    v26 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
    swift_beginAccess();
    if (*(a1 + v26))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    v27 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
    swift_beginAccess();
    if (*(a1 + v27))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v28 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
    swift_beginAccess();
    if (*(a1 + v28))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v29 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
    swift_beginAccess();
    if (*(a1 + v29))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v30 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
    swift_beginAccess();
    if (*(a1 + v30))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v31 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
    swift_beginAccess();
    if (*(a1 + v31))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v32 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
    swift_beginAccess();
    if (*(a1 + v32))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v33 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
    swift_beginAccess();
    if (*(a1 + v33))
    {
      dispatch thunk of Visitor.visitSingularInt32Field(value:fieldNumber:)();
    }

    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate, 39);
    v34 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
    swift_beginAccess();
    if (*(a1 + v34))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v35 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
    swift_beginAccess();
    if (*(a1 + v35))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v36 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
    swift_beginAccess();
    if (*(a1 + v36))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v37 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
    swift_beginAccess();
    if (*(a1 + v37))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v38 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
    swift_beginAccess();
    if (*(a1 + v38))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v39 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
    swift_beginAccess();
    if (*(a1 + v39))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    v40 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
    swift_beginAccess();
    if (*(a1 + v40))
    {
      dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
    }

    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength, 47);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength, 48);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation, 49);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation, 50);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime, 51);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime, 52);
    closure #22 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #23 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #24 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1);
    closure #25 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #26 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #27 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #28 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4, &OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent, 60);
    closure #30 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #31 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
    closure #32 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(a1, a2, a3, a4);
  }
}

uint64_t closure #1 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
}

uint64_t closure #2 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_ActivitySummaryMetricsPublisher and conformance Apple_Workout_Core_ActivitySummaryMetricsPublisher, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
}

uint64_t closure #3 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_HeartRateMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
}

uint64_t closure #4 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_EnergyMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
}

uint64_t closure #5 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LapsMetricsPublisher and conformance Apple_Workout_Core_LapsMetricsPublisher, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_LapsMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
}

uint64_t closure #10 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_PowerMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
}

uint64_t closure #11 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStatePublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
}

uint64_t closure #12 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_IntervalsMetricsPublisher and conformance Apple_Workout_Core_IntervalsMetricsPublisher, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_IntervalsMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
}

uint64_t closure #13 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MultiSportMetricsPublisher and conformance Apple_Workout_Core_MultiSportMetricsPublisher, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MultiSportMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
}

uint64_t closure #22 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher, type metadata accessor for Apple_Workout_Core_PlatterPublisher, &protocol conformance descriptor for Apple_Workout_Core_PlatterPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
}

uint64_t closure #23 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher, type metadata accessor for Apple_Workout_Core_GoalPublisher, &protocol conformance descriptor for Apple_Workout_Core_GoalPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_GoalPublisher);
}

void closure #24 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1)
{
  v1 = (a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v2 = v1[1];
  if (v2 >> 60 != 15)
  {
    v3 = *v1;
    outlined copy of Data._Representation(v3, v2);
    dispatch thunk of Visitor.visitSingularBytesField(value:fieldNumber:)();
    outlined consume of Data?(v3, v2);
  }
}

uint64_t closure #25 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RaceInformationPublisher and conformance Apple_Workout_Core_RaceInformationPublisher, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher, &protocol conformance descriptor for Apple_Workout_Core_RaceInformationPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
}

uint64_t closure #26 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_RacePositionStatePublisher and conformance Apple_Workout_Core_RacePositionStatePublisher, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_RacePositionStatePublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
}

uint64_t closure #27 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher, &protocol conformance descriptor for Apple_Workout_Core_LocationPositionPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
}

uint64_t closure #28 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
}

void closure #6 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  swift_beginAccess();
  if ((*(v6 + 8) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }
}

void closure #30 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  if ((*(v4 + 4) & 1) == 0)
  {
    dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)();
  }
}

uint64_t closure #31 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_TrackRunningMetricsPublisher and conformance Apple_Workout_Core_TrackRunningMetricsPublisher, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
}

uint64_t closure #32 in closure #1 in Apple_Workout_Core_MetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(a1 + v14, v8, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v8, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v8, v13, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutBuddyStatePublisher and conformance Apple_Workout_Core_WorkoutBuddyStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v13, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
}

BOOL closure #1 in static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v687 = type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher(0);
  v685 = *(v687 - 8);
  MEMORY[0x28223BE20](v687, v4);
  v686 = &v607 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v682 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v682, v6);
  v688 = &v607 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v684 = &v607 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v683 = &v607 - v13;
  v680 = type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher(0);
  v678 = *(v680 - 8);
  MEMORY[0x28223BE20](v680, v14);
  v679 = &v607 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v675, v16);
  v681 = &v607 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v677 = &v607 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v676 = &v607 - v23;
  v673 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  v671 = *(v673 - 8);
  MEMORY[0x28223BE20](v673, v24);
  v672 = &v607 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v668, v26);
  v674 = &v607 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v670 = &v607 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v669 = &v607 - v33;
  v666 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  v664 = *(v666 - 8);
  MEMORY[0x28223BE20](v666, v34);
  v665 = (&v607 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v661, v36);
  v667 = &v607 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v40 = MEMORY[0x28223BE20](v38 - 8, v39);
  v663 = (&v607 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v40, v42);
  v662 = &v607 - v43;
  v659 = type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher(0);
  v657 = *(v659 - 8);
  MEMORY[0x28223BE20](v659, v44);
  v658 = &v607 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v654 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v654, v46);
  v660 = &v607 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v50 = MEMORY[0x28223BE20](v48 - 8, v49);
  v656 = (&v607 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v50, v52);
  v655 = &v607 - v53;
  v652 = type metadata accessor for Apple_Workout_Core_RaceInformationPublisher(0);
  v650 = *(v652 - 8);
  MEMORY[0x28223BE20](v652, v54);
  v651 = &v607 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v647, v56);
  v653 = &v607 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v60 = MEMORY[0x28223BE20](v58 - 8, v59);
  v649 = &v607 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60, v62);
  v648 = &v607 - v63;
  v645 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  v643 = *(v645 - 8);
  MEMORY[0x28223BE20](v645, v64);
  v644 = &v607 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v640 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v640, v66);
  v646 = &v607 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v70 = MEMORY[0x28223BE20](v68 - 8, v69);
  v642 = &v607 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70, v72);
  v641 = &v607 - v73;
  v636 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  v634 = *(v636 - 8);
  MEMORY[0x28223BE20](v636, v74);
  v638 = (&v607 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v633, v76);
  v639 = &v607 - v77;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v80 = MEMORY[0x28223BE20](v78 - 8, v79);
  v637 = (&v607 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v80, v82);
  v635 = &v607 - v83;
  v631 = type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher(0);
  v629 = *(v631 - 8);
  MEMORY[0x28223BE20](v631, v84);
  v630 = &v607 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v626 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v626, v86);
  v632 = &v607 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v90 = MEMORY[0x28223BE20](v88 - 8, v89);
  v628 = &v607 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v90, v92);
  v627 = &v607 - v93;
  v624 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v622 = *(v624 - 8);
  MEMORY[0x28223BE20](v624, v94);
  v623 = (&v607 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  v619 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v619, v96);
  v625 = &v607 - v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v100 = MEMORY[0x28223BE20](v98 - 8, v99);
  v621 = (&v607 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v100, v102);
  v620 = &v607 - v103;
  v617 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  v615 = *(v617 - 8);
  MEMORY[0x28223BE20](v617, v104);
  v616 = &v607 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v612, v106);
  v618 = &v607 - v107;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v110 = MEMORY[0x28223BE20](v108 - 8, v109);
  v614 = &v607 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v110, v112);
  v613 = &v607 - v113;
  v693 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v691 = *(v693 - 8);
  MEMORY[0x28223BE20](v693, v114);
  v611 = &v607 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v689 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v689, v116);
  v694 = &v607 - v117;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v120 = MEMORY[0x28223BE20](v118 - 8, v119);
  v690 = &v607 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v120, v122);
  v692 = &v607 - v123;
  v700 = type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher(0);
  v697 = *(v700 - 8);
  MEMORY[0x28223BE20](v700, v124);
  v695 = (&v607 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0));
  v696 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v696, v126);
  v701 = &v607 - v127;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v130 = MEMORY[0x28223BE20](v128 - 8, v129);
  v698 = (&v607 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v130, v132);
  v699 = &v607 - v133;
  v707 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  v706 = *(v707 - 8);
  MEMORY[0x28223BE20](v707, v134);
  v702 = (&v607 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0));
  v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v705, v136);
  v708 = &v607 - v137;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v140 = MEMORY[0x28223BE20](v138 - 8, v139);
  v703 = (&v607 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v140, v142);
  v716 = &v607 - v143;
  v713 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  v712 = *(v713 - 8);
  MEMORY[0x28223BE20](v713, v144);
  v704 = (&v607 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0));
  v711 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v711, v146);
  v714 = &v607 - v147;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v150 = MEMORY[0x28223BE20](v148 - 8, v149);
  v709 = (&v607 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v150, v152);
  v721 = &v607 - v153;
  v719 = type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher(0);
  v718 = *(v719 - 8);
  MEMORY[0x28223BE20](v719, v154);
  v710 = &v607 - ((v155 + 15) & 0xFFFFFFFFFFFFFFF0);
  v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v717, v156);
  v720 = &v607 - v157;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v160 = MEMORY[0x28223BE20](v158 - 8, v159);
  v715 = &v607 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v160, v162);
  v722 = &v607 - v163;
  v164 = type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher(0);
  v723 = *(v164 - 8);
  MEMORY[0x28223BE20](v164, v165);
  v167 = (&v607 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v168, v169);
  v171 = &v607 - v170;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v174 = MEMORY[0x28223BE20](v172 - 8, v173);
  v176 = (&v607 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v174, v177);
  v179 = &v607 - v178;
  swift_beginAccess();
  v180 = *(a1 + 16);
  swift_beginAccess();
  if (v180 != *(a2 + 16))
  {
    return 0;
  }

  swift_beginAccess();
  v182 = a1;
  v183 = *(a1 + 24);
  v609 = v182;
  v184 = *(v182 + 32);
  swift_beginAccess();
  v185 = *(a2 + 24);
  v186 = *(a2 + 32);
  v610 = a2;
  if ((v183 != v185 || v184 != v186) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v187 = v609;
  swift_beginAccess();
  v188 = *(v187 + 40);
  v189 = v610;
  swift_beginAccess();
  v190 = *(v189 + 40);
  if (*(v189 + 48) == 1)
  {
    if (v190 <= 1)
    {
      if (v190)
      {
        if (v188 != 1)
        {
          return 0;
        }
      }

      else if (v188)
      {
        return 0;
      }
    }

    else if (v190 == 2)
    {
      if (v188 != 2)
      {
        return 0;
      }
    }

    else if (v190 == 3)
    {
      if (v188 != 3)
      {
        return 0;
      }
    }

    else if (v188 != 4)
    {
      return 0;
    }
  }

  else if (v188 != v190)
  {
    return 0;
  }

  swift_beginAccess();
  v191 = *(v187 + 49);
  swift_beginAccess();
  if (v191 != *(v189 + 49))
  {
    return 0;
  }

  v192 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v187 + v192, v179, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v193 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elapsedTimeMetricsPublisher;
  swift_beginAccess();
  v194 = *(v168 + 48);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v179, v171, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v608 = v194;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v189 + v193, &v171[v194], &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v195 = *(v723 + 48);
  if (v195(v171, 1, v164) == 1)
  {

    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v179, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    if (v195(&v171[v608], 1, v164) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v171, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
      goto LABEL_31;
    }

LABEL_22:
    v197 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSg_ADtMd;
    v198 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSg_ADtMR;
    v199 = v171;
LABEL_70:
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v199, v197, v198);
    goto LABEL_71;
  }

  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v171, v176, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  v196 = v608;
  if (v195(&v171[v608], 1, v164) == 1)
  {

    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v179, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v176, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
    goto LABEL_22;
  }

  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(&v171[v196], v167, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  v189 = v610;
  if (*v176 != *v167)
  {

    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v167, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v179, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v176, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
    v199 = v171;
    v197 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd;
    v198 = &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR;
    goto LABEL_70;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

  v200 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v167, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v179, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v176, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v171, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B28_ElapsedTimeMetricsPublisherVSgMR);
  if ((v200 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_31:
  v201 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  v202 = v722;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v187 + v201, v722, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v203 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__activitySummaryMetricsPublisher;
  swift_beginAccess();
  v204 = *(v717 + 48);
  v205 = v720;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v202, v720, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v189 + v203, v205 + v204, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v206 = *(v718 + 48);
  v207 = v719;
  if (v206(v205, 1, v719) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v202, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
    v208 = v206(v205 + v204, 1, v207);
    v209 = v716;
    v210 = v721;
    if (v208 == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v205, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v211 = v715;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v205, v715, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v212 = v206(v205 + v204, 1, v207);
  v213 = v716;
  v210 = v721;
  if (v212 == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v722, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v211, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
LABEL_36:
    v197 = &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSg_ADtMd;
    v198 = &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSg_ADtMR;
    v199 = v205;
    goto LABEL_70;
  }

  v214 = v205 + v204;
  v215 = v710;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v214, v710, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  v216 = specialized static Apple_Workout_Core_ActivitySummaryMetricsPublisher.== infix(_:_:)(v211, v215);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v215, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v722, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v211, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v205, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B32_ActivitySummaryMetricsPublisherVSgMR);
  v209 = v213;
  if ((v216 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_39:
  v217 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v187 + v217, v210, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v218 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__heartRateMetricsPublisher;
  swift_beginAccess();
  v219 = *(v711 + 48);
  v220 = v210;
  v221 = v210;
  v222 = v714;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v220, v714, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v189 + v218, v222 + v219, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  v223 = *(v712 + 48);
  v224 = v713;
  if (v223(v222, 1, v713) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v221, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
    if (v223(v222 + v219, 1, v224) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v222, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  v225 = v709;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v222, v709, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  if (v223(v222 + v219, 1, v224) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v721, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v225, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
LABEL_44:
    v197 = &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSg_ADtMd;
    v198 = &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSg_ADtMR;
    v199 = v222;
    goto LABEL_70;
  }

  v226 = v222 + v219;
  v227 = v704;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v226, v704, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  v228 = specialized static Apple_Workout_Core_HeartRateMetricsPublisher.== infix(_:_:)(v225, v227);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v227, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v721, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v225, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v222, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_HeartRateMetricsPublisherVSgMR);
  if ((v228 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_46:
  v229 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v187 + v229, v209, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v230 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__energyMetricsPublisher;
  swift_beginAccess();
  v231 = *(v705 + 48);
  v232 = v708;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v209, v708, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v233 = v189 + v230;
  v234 = v232;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v233, v232 + v231, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  v235 = *(v706 + 48);
  v236 = v707;
  if (v235(v232, 1, v707) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v209, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    if (v235(v232 + v231, 1, v236) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v232, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
      goto LABEL_49;
    }

    goto LABEL_64;
  }

  v269 = v703;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v234, v703, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  if (v235(v234 + v231, 1, v236) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v209, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v269, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
LABEL_64:
    v197 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSg_ADtMd;
    v198 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSg_ADtMR;
    v199 = v234;
    goto LABEL_70;
  }

  v270 = v234 + v231;
  v271 = v702;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v270, v702, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  if (*v269 != *v271 || v269[1] != v271[1])
  {
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v271, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v209, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v269, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
    v199 = v234;
    v197 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd;
    v198 = &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR;
    goto LABEL_70;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v272 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v271, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v209, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v269, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v234, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B23_EnergyMetricsPublisherVSgMR);
  if ((v272 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_49:
  v237 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  swift_beginAccess();
  v238 = *(v187 + v237);
  v239 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distance;
  swift_beginAccess();
  if (v238 != *(v189 + v239))
  {
    goto LABEL_71;
  }

  v240 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  swift_beginAccess();
  v241 = *(v187 + v240);
  v242 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__secondsAheadOfPacer;
  swift_beginAccess();
  if (v241 != *(v189 + v242))
  {
    goto LABEL_71;
  }

  v243 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  swift_beginAccess();
  v244 = *(v187 + v243);
  v245 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentPace;
  swift_beginAccess();
  if (v244 != *(v189 + v245))
  {
    goto LABEL_71;
  }

  v246 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  swift_beginAccess();
  v247 = *(v187 + v246);
  v248 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averagePace;
  swift_beginAccess();
  if (v247 != *(v189 + v248))
  {
    goto LABEL_71;
  }

  v249 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  swift_beginAccess();
  v250 = *(v187 + v249);
  v251 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__rollingPace;
  swift_beginAccess();
  if (v250 != *(v189 + v251))
  {
    goto LABEL_71;
  }

  v252 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  swift_beginAccess();
  v253 = *(v187 + v252);
  v254 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__requiredPace;
  swift_beginAccess();
  if (v253 != *(v189 + v254))
  {
    goto LABEL_71;
  }

  v255 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  swift_beginAccess();
  v256 = *(v187 + v255);
  v257 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__fastestPace;
  swift_beginAccess();
  if (v256 != *(v189 + v257))
  {
    goto LABEL_71;
  }

  v258 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  v259 = v699;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v187 + v258, v699, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v260 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__lapsMetricsPublisher;
  swift_beginAccess();
  v261 = *(v696 + 48);
  v262 = v259;
  v263 = v701;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v262, v701, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v189 + v260, v263 + v261, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  v264 = *(v697 + 48);
  if (v264(v263, 1, v700) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v699, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
    if (v264(v701 + v261, 1, v700) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v701, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
      goto LABEL_59;
    }

    goto LABEL_74;
  }

  v273 = v701;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v701, v698, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  if (v264(v273 + v261, 1, v700) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v699, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v698, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
LABEL_74:
    v274 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSg_ADtMR;
    v276 = v701;
LABEL_75:
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v276, v274, v275);
    goto LABEL_71;
  }

  v277 = v695;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v701 + v261, v695, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  if (*v698 != *v277)
  {
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v695, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v699, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v698, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
    v276 = v701;
    v274 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd;
    v275 = &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR;
    goto LABEL_75;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v278 = v698;
  v279 = v695;
  v280 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v279, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v699, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v278, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v701, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B21_LapsMetricsPublisherVSgMR);
  if ((v280 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_59:
  v265 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
  swift_beginAccess();
  v266 = *v265;
  v267 = *(v265 + 8);
  v268 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationGain;
  swift_beginAccess();
  if (v267)
  {
    if (*(v268 + 8))
    {
      goto LABEL_82;
    }

LABEL_71:

    return 0;
  }

  if ((*(v268 + 8) & 1) != 0 || v266 != *v268)
  {
    goto LABEL_71;
  }

LABEL_82:
  v281 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  swift_beginAccess();
  v282 = *v281;
  v283 = *(v281 + 8);
  v284 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentElevation;
  swift_beginAccess();
  if (v283)
  {
    if ((*(v284 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v284 + 8) & 1) != 0 || v282 != *v284)
  {
    goto LABEL_71;
  }

  v285 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  v286 = v609;
  swift_beginAccess();
  v287 = *(v286 + v285);
  v288 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartData;
  v289 = v610;
  swift_beginAccess();
  v290 = *(v289 + v288);

  LOBYTE(v289) = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B16ChartDataElementV_Tt1g5(v287, v290);

  if ((v289 & 1) == 0)
  {
    goto LABEL_71;
  }

  v291 = (v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  v292 = *v291;
  v293 = v291[1];
  v294 = (v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__elevationChartUnit);
  swift_beginAccess();
  if ((v292 != *v294 || v293 != v294[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_71;
  }

  v295 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  swift_beginAccess();
  v296 = *v295;
  v297 = *(v295 + 8);
  v298 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentCadence;
  swift_beginAccess();
  if (v297)
  {
    if ((*(v298 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v298 + 8) & 1) != 0 || v296 != *v298)
  {
    goto LABEL_71;
  }

  v299 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  swift_beginAccess();
  v300 = *v299;
  v301 = *(v299 + 8);
  v302 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageCadence;
  swift_beginAccess();
  if (v301)
  {
    if ((*(v302 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v302 + 8) & 1) != 0 || v300 != *v302)
  {
    goto LABEL_71;
  }

  v303 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  v304 = v609;
  swift_beginAccess();
  v305 = v692;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v304 + v303, v692, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v306 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__powerMetricsPublisher;
  v307 = v610;
  swift_beginAccess();
  v308 = *(v689 + 48);
  v309 = v305;
  v310 = v694;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v309, v694, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v307 + v306, v310 + v308, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  v311 = *(v691 + 48);
  if (v311(v310, 1, v693) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v692, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
    if (v311(v694 + v308, 1, v693) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v694, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
      goto LABEL_109;
    }

    goto LABEL_107;
  }

  v312 = v694;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v694, v690, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  if (v311(v312 + v308, 1, v693) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v692, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v690, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
LABEL_107:
    v274 = &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSg_ADtMR;
    v276 = v694;
    goto LABEL_75;
  }

  v313 = v694;
  v314 = v694 + v308;
  v315 = v611;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v314, v611, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  v316 = v690;
  v317 = specialized static Apple_Workout_Core_PowerMetricsPublisher.== infix(_:_:)(v690, v315);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v315, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v692, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v316, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v313, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B22_PowerMetricsPublisherVSgMR);
  if ((v317 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_109:
  v318 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  v319 = v609;
  swift_beginAccess();
  v320 = *(v319 + v318);
  v321 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__flightsClimbed;
  v322 = v610;
  swift_beginAccess();
  if (v320 != *(v322 + v321))
  {
    goto LABEL_71;
  }

  v323 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  v324 = v609;
  swift_beginAccess();
  v325 = v613;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v324 + v323, v613, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v326 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutStatePublisher;
  v327 = v610;
  swift_beginAccess();
  v328 = *(v612 + 48);
  v329 = v325;
  v330 = v618;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v329, v618, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v327 + v326, v330 + v328, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  v331 = *(v615 + 48);
  if (v331(v330, 1, v617) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v613, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
    if (v331(v618 + v328, 1, v617) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v618, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
      goto LABEL_117;
    }

    goto LABEL_115;
  }

  v332 = v618;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v618, v614, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  if (v331(v332 + v328, 1, v617) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v613, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v614, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
LABEL_115:
    v274 = &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSg_ADtMR;
    v276 = v618;
    goto LABEL_75;
  }

  v333 = v618;
  v334 = v618 + v328;
  v335 = v616;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v334, v616, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  v336 = v614;
  v337 = specialized static Apple_Workout_Core_WorkoutStatePublisher.== infix(_:_:)(v614, v335);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v335, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v613, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v336, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v333, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A14StatePublisherVSgMR);
  if ((v337 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_117:
  v338 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  v339 = v609;
  swift_beginAccess();
  v340 = v620;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v339 + v338, v620, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v341 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__intervalsMetricsPublisher;
  v342 = v610;
  swift_beginAccess();
  v343 = *(v619 + 48);
  v344 = v340;
  v345 = v625;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v344, v625, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v342 + v341, v345 + v343, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  v346 = *(v622 + 48);
  if (v346(v345, 1, v624) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v620, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
    if (v346(v625 + v343, 1, v624) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v625, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
      goto LABEL_124;
    }

    goto LABEL_122;
  }

  v347 = v625;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v625, v621, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  if (v346(v347 + v343, 1, v624) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v620, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v621, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
LABEL_122:
    v274 = &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSg_ADtMR;
    v276 = v625;
    goto LABEL_75;
  }

  v348 = v625;
  v349 = v625 + v343;
  v350 = v623;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v349, v623, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  v351 = v621;
  v352 = specialized static Apple_Workout_Core_IntervalsMetricsPublisher.== infix(_:_:)(v621, v350);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v350, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v620, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v351, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v348, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_IntervalsMetricsPublisherVSgMR);
  if ((v352 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_124:
  v353 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  v354 = v609;
  swift_beginAccess();
  v355 = v627;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v354 + v353, v627, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v356 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__multisportMetricsPublisher;
  v357 = v610;
  swift_beginAccess();
  v358 = *(v626 + 48);
  v359 = v355;
  v360 = v632;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v359, v632, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v357 + v356, v360 + v358, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  v361 = *(v629 + 48);
  if (v361(v360, 1, v631) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v627, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
    if (v361(v632 + v358, 1, v631) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v632, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
      goto LABEL_131;
    }

    goto LABEL_129;
  }

  v362 = v632;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v632, v628, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  if (v361(v362 + v358, 1, v631) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v627, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v628, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
LABEL_129:
    v274 = &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSg_ADtMR;
    v276 = v632;
    goto LABEL_75;
  }

  v363 = v632;
  v364 = v632 + v358;
  v365 = v630;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v364, v630, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  v366 = v628;
  v367 = specialized static Apple_Workout_Core_MultiSportMetricsPublisher.== infix(_:_:)(v628, v365);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v365, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v627, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v366, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v363, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_MultiSportMetricsPublisherVSgMR);
  if ((v367 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_131:
  v368 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  swift_beginAccess();
  v369 = *v368;
  v370 = *(v368 + 8);
  v371 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__distanceGoalFinishTime;
  swift_beginAccess();
  if (v370)
  {
    if ((*(v371 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v371 + 8) & 1) != 0 || v369 != *v371)
  {
    goto LABEL_71;
  }

  v372 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  v373 = v609;
  swift_beginAccess();
  LODWORD(v372) = *(v373 + v372);
  v374 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentIndex;
  v375 = v610;
  swift_beginAccess();
  if (v372 != *(v375 + v374))
  {
    goto LABEL_71;
  }

  v376 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  v377 = v609;
  swift_beginAccess();
  v378 = *(v377 + v376);
  v379 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDuration;
  v380 = v610;
  swift_beginAccess();
  if (v378 != *(v380 + v379))
  {
    goto LABEL_71;
  }

  v381 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  v382 = v609;
  swift_beginAccess();
  v383 = *(v382 + v381);
  v384 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentDistance;
  v385 = v610;
  swift_beginAccess();
  if (v383 != *(v385 + v384))
  {
    goto LABEL_71;
  }

  v386 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  v387 = v609;
  swift_beginAccess();
  v388 = *(v387 + v386);
  v389 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentPace;
  v390 = v610;
  swift_beginAccess();
  if (v388 != *(v390 + v389))
  {
    goto LABEL_71;
  }

  v391 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  v392 = v609;
  swift_beginAccess();
  v393 = *(v392 + v391);
  v394 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentActiveEnergy;
  v395 = v610;
  swift_beginAccess();
  if (v393 != *(v395 + v394))
  {
    goto LABEL_71;
  }

  v396 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  v397 = v609;
  swift_beginAccess();
  v398 = *(v397 + v396);
  v399 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentTotalEnergy;
  v400 = v610;
  swift_beginAccess();
  if (v398 != *(v400 + v399))
  {
    goto LABEL_71;
  }

  v401 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  v402 = v609;
  swift_beginAccess();
  v403 = *(v402 + v401);
  v404 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__segmentAveragePower;
  v405 = v610;
  swift_beginAccess();
  if (v403 != *(v405 + v404))
  {
    goto LABEL_71;
  }

  v406 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  v407 = v609;
  swift_beginAccess();
  LODWORD(v406) = *(v407 + v406);
  v408 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitIndex;
  v409 = v610;
  swift_beginAccess();
  if (v406 != *(v409 + v408))
  {
    goto LABEL_71;
  }

  v410 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  swift_beginAccess();
  v411 = *v410;
  v412 = *(v410 + 8);
  v413 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitStartDate;
  swift_beginAccess();
  if (v412)
  {
    if ((*(v413 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v413 + 8) & 1) != 0 || v411 != *v413)
  {
    goto LABEL_71;
  }

  v414 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  v415 = v609;
  swift_beginAccess();
  v416 = *(v415 + v414);
  v417 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDuration;
  v418 = v610;
  swift_beginAccess();
  if (v416 != *(v418 + v417))
  {
    goto LABEL_71;
  }

  v419 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  v420 = v609;
  swift_beginAccess();
  v421 = *(v420 + v419);
  v422 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitDistance;
  v423 = v610;
  swift_beginAccess();
  if (v421 != *(v423 + v422))
  {
    goto LABEL_71;
  }

  v424 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  v425 = v609;
  swift_beginAccess();
  v426 = *(v425 + v424);
  v427 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitPace;
  v428 = v610;
  swift_beginAccess();
  if (v426 != *(v428 + v427))
  {
    goto LABEL_71;
  }

  v429 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  v430 = v609;
  swift_beginAccess();
  v431 = *(v430 + v429);
  v432 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__splitAveragePower;
  v433 = v610;
  swift_beginAccess();
  if (v431 != *(v433 + v432))
  {
    goto LABEL_71;
  }

  v434 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  v435 = v609;
  swift_beginAccess();
  v436 = *(v435 + v434);
  v437 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTime;
  v438 = v610;
  swift_beginAccess();
  if (v436 != *(v438 + v437))
  {
    goto LABEL_71;
  }

  v439 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  v440 = v609;
  swift_beginAccess();
  v441 = *(v440 + v439);
  v442 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerRemainingTimeWithOffset;
  v443 = v610;
  swift_beginAccess();
  if (v441 != *(v443 + v442))
  {
    goto LABEL_71;
  }

  v444 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  v445 = v609;
  swift_beginAccess();
  v446 = *(v445 + v444);
  v447 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__timerDuration;
  v448 = v610;
  swift_beginAccess();
  if (v446 != *(v448 + v447))
  {
    goto LABEL_71;
  }

  v449 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  swift_beginAccess();
  v450 = *v449;
  v451 = *(v449 + 8);
  v452 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentStrideLength;
  swift_beginAccess();
  if (v451)
  {
    if ((*(v452 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v452 + 8) & 1) != 0 || v450 != *v452)
  {
    goto LABEL_71;
  }

  v453 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  swift_beginAccess();
  v454 = *v453;
  v455 = *(v453 + 8);
  v456 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageStrideLength;
  swift_beginAccess();
  if (v455)
  {
    if ((*(v456 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v456 + 8) & 1) != 0 || v454 != *v456)
  {
    goto LABEL_71;
  }

  v457 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  swift_beginAccess();
  v458 = *v457;
  v459 = *(v457 + 8);
  v460 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentVerticalOscillation;
  swift_beginAccess();
  if (v459)
  {
    if ((*(v460 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v460 + 8) & 1) != 0 || v458 != *v460)
  {
    goto LABEL_71;
  }

  v461 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  swift_beginAccess();
  v462 = *v461;
  v463 = *(v461 + 8);
  v464 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageVerticalOscillation;
  swift_beginAccess();
  if (v463)
  {
    if ((*(v464 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v464 + 8) & 1) != 0 || v462 != *v464)
  {
    goto LABEL_71;
  }

  v465 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  swift_beginAccess();
  v466 = *v465;
  v467 = *(v465 + 8);
  v468 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__currentGroundContactTime;
  swift_beginAccess();
  if (v467)
  {
    if ((*(v468 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v468 + 8) & 1) != 0 || v466 != *v468)
  {
    goto LABEL_71;
  }

  v469 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  swift_beginAccess();
  v470 = *v469;
  v471 = *(v469 + 8);
  v472 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__averageGroundContactTime;
  swift_beginAccess();
  if (v471)
  {
    if ((*(v472 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v472 + 8) & 1) != 0 || v470 != *v472)
  {
    goto LABEL_71;
  }

  v473 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  v474 = v609;
  swift_beginAccess();
  v475 = v635;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v474 + v473, v635, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v476 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__platterPublisher;
  v477 = v610;
  swift_beginAccess();
  v478 = *(v633 + 48);
  v479 = v475;
  v480 = v639;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v479, v639, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v477 + v476, v480 + v478, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  v481 = *(v634 + 48);
  if (v481(v480, 1, v636) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v635, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
    if (v481(v639 + v478, 1, v636) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v639, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
      goto LABEL_194;
    }

    goto LABEL_191;
  }

  v482 = v639;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v639, v637, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  if (v481(v482 + v478, 1, v636) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v635, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v637, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
LABEL_191:
    v274 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSg_ADtMR;
    v276 = v639;
    goto LABEL_75;
  }

  v483 = v638;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v639 + v478, v638, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C14_MetricPlatterV_Tt1g5(*v637, *v483) & 1) == 0)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v635, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v638, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v637, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
    v276 = v639;
    v274 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd;
    v275 = &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR;
    goto LABEL_75;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v485 = v637;
  v484 = v638;
  v486 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v635, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v484, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v485, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v639, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_PlatterPublisherVSgMR);
  if ((v486 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_194:
  v487 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  v488 = v609;
  swift_beginAccess();
  v489 = v641;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v488 + v487, v641, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v490 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__goalPublisher;
  v491 = v610;
  swift_beginAccess();
  v492 = *(v640 + 48);
  v493 = v489;
  v494 = v646;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v493, v646, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v491 + v490, v494 + v492, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  v495 = *(v643 + 48);
  if (v495(v494, 1, v645) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v641, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
    if (v495(v646 + v492, 1, v645) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v646, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
      goto LABEL_202;
    }

    goto LABEL_199;
  }

  v496 = v646;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v646, v642, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  if (v495(v496 + v492, 1, v645) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v641, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v642, type metadata accessor for Apple_Workout_Core_GoalPublisher);
LABEL_199:
    v274 = &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSg_ADtMR;
    v276 = v646;
    goto LABEL_75;
  }

  v497 = v646;
  v498 = v646 + v492;
  v499 = v644;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v498, v644, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  v500 = v642;
  v501 = static Apple_Workout_Core_GoalPublisher.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v499, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v641, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v500, type metadata accessor for Apple_Workout_Core_GoalPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v497, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B14_GoalPublisherVSgMR);
  if ((v501 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_202:
  v502 = (v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v504 = *v502;
  v503 = v502[1];
  v505 = (v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutIdentifierBytes);
  swift_beginAccess();
  v506 = *v505;
  v507 = v505[1];
  outlined copy of Data?(v504, v503);
  outlined copy of Data?(v506, v507);
  if (v503 >> 60 == 15)
  {
    if (v507 >> 60 == 15)
    {
      outlined consume of Data?(v504, v503);
      goto LABEL_210;
    }

LABEL_208:
    outlined consume of Data?(v504, v503);
    outlined consume of Data?(v506, v507);
    return 0;
  }

  outlined copy of Data?(v504, v503);
  outlined copy of Data?(v506, v507);
  if (v507 >> 60 == 15)
  {

    outlined consume of Data?(v506, v507);
    outlined consume of Data?(v504, v503);
    goto LABEL_208;
  }

  v508 = specialized static Data.== infix(_:_:)(v504, v503, v506, v507);
  outlined consume of Data?(v506, v507);
  outlined consume of Data?(v504, v503);
  outlined consume of Data?(v506, v507);
  outlined consume of Data?(v504, v503);
  if (!v508)
  {
    goto LABEL_71;
  }

LABEL_210:
  v509 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  v510 = v609;
  swift_beginAccess();
  v511 = v648;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v510 + v509, v648, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v512 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__raceInformationPublisher;
  v513 = v610;
  swift_beginAccess();
  v514 = *(v647 + 48);
  v515 = v511;
  v516 = v653;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v515, v653, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v513 + v512, v516 + v514, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  v517 = *(v650 + 48);
  if (v517(v516, 1, v652) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v648, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
    if (v517(v653 + v514, 1, v652) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v653, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
      goto LABEL_217;
    }

    goto LABEL_215;
  }

  v518 = v653;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v653, v649, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  if (v517(v518 + v514, 1, v652) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v648, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v649, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
LABEL_215:
    v274 = &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSg_ADtMR;
    v276 = v653;
    goto LABEL_75;
  }

  v519 = v653;
  v520 = v653 + v514;
  v521 = v651;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v520, v651, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  v522 = v649;
  v523 = specialized static Apple_Workout_Core_RaceInformationPublisher.== infix(_:_:)(v649, v521);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v521, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v648, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v522, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v519, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B25_RaceInformationPublisherVSgMR);
  if ((v523 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_217:
  v524 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  v525 = v609;
  swift_beginAccess();
  v526 = v655;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v525 + v524, v655, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v527 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__racePositionStatePublisher;
  v528 = v610;
  swift_beginAccess();
  v529 = *(v654 + 48);
  v530 = v526;
  v531 = v660;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v530, v660, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v528 + v527, v531 + v529, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  v532 = *(v657 + 48);
  if (v532(v531, 1, v659) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v655, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
    if (v532(v660 + v529, 1, v659) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v660, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
      goto LABEL_224;
    }

    goto LABEL_222;
  }

  v533 = v660;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v660, v656, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  if (v532(v533 + v529, 1, v659) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v655, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v656, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
LABEL_222:
    v274 = &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSg_ADtMR;
    v276 = v660;
    goto LABEL_75;
  }

  v534 = v660;
  v535 = v660 + v529;
  v536 = v658;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v535, v658, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  v537 = v656;
  v538 = specialized static Apple_Workout_Core_RacePositionStatePublisher.== infix(_:_:)(v656, v536);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v536, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v655, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v537, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v534, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_B27_RacePositionStatePublisherVSgMR);
  if ((v538 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_224:
  v539 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  v540 = v609;
  swift_beginAccess();
  v541 = v662;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v540 + v539, v662, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v542 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__locationPositionPublisher;
  v543 = v610;
  swift_beginAccess();
  v544 = *(v661 + 48);
  v545 = v541;
  v546 = v667;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v545, v667, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v543 + v542, v546 + v544, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  v547 = *(v664 + 48);
  if (v547(v546, 1, v666) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v662, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
    if (v547(v667 + v544, 1, v666) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v667, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
      goto LABEL_231;
    }

    goto LABEL_229;
  }

  v548 = v667;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v667, v663, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  if (v547(v548 + v544, 1, v666) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v662, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v663, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
LABEL_229:
    v274 = &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSg_ADtMR;
    v276 = v667;
    goto LABEL_75;
  }

  v549 = v667;
  v550 = v667 + v544;
  v551 = v665;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v550, v665, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  v552 = v663;
  v553 = specialized static Apple_Workout_Core_LocationPositionPublisher.== infix(_:_:)(v663, v551);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v551, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v662, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v552, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v549, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B26_LocationPositionPublisherVSgMR);
  if ((v553 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_231:
  v554 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  v555 = v609;
  swift_beginAccess();
  v556 = v669;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v555 + v554, v669, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v557 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__waterTemperatureMetricsPublisher;
  v558 = v610;
  swift_beginAccess();
  v559 = *(v668 + 48);
  v560 = v556;
  v561 = v674;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v560, v674, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v558 + v557, v561 + v559, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  v562 = *(v671 + 48);
  if (v562(v561, 1, v673) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v669, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
    if (v562(v674 + v559, 1, v673) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v674, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
      goto LABEL_238;
    }

    goto LABEL_236;
  }

  v563 = v674;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v674, v670, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  if (v562(v563 + v559, 1, v673) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v669, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v670, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
LABEL_236:
    v274 = &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSg_ADtMR;
    v276 = v674;
    goto LABEL_75;
  }

  v564 = v674;
  v565 = v674 + v559;
  v566 = v672;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v565, v672, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  v567 = v670;
  v568 = specialized static Apple_Workout_Core_WaterTemperatureMetricsPublisher.== infix(_:_:)(v670, v566);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v566, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v669, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v567, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v564, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B33_WaterTemperatureMetricsPublisherVSgMR);
  if ((v568 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_238:
  v569 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  swift_beginAccess();
  v570 = *v569;
  v571 = *(v569 + 8);
  v572 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__descent;
  swift_beginAccess();
  if (v571)
  {
    if ((*(v572 + 8) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v572 + 8) & 1) != 0 || v570 != *v572)
  {
    goto LABEL_71;
  }

  v573 = v609 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  v574 = *v573;
  v575 = *(v573 + 4);
  v576 = v610 + OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__downhillRunCount;
  swift_beginAccess();
  if (v575)
  {
    if ((*(v576 + 4) & 1) == 0)
    {
      goto LABEL_71;
    }
  }

  else if ((*(v576 + 4) & 1) != 0 || v574 != *v576)
  {
    goto LABEL_71;
  }

  v577 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  v578 = v609;
  swift_beginAccess();
  v579 = v676;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v578 + v577, v676, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v580 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__trackRunningMetricsPublisher;
  v581 = v610;
  swift_beginAccess();
  v582 = *(v675 + 48);
  v583 = v579;
  v584 = v681;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v583, v681, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v581 + v580, v584 + v582, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  v585 = *(v678 + 48);
  if (v585(v584, 1, v680) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v676, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
    if (v585(v681 + v582, 1, v680) == 1)
    {
      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v681, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
      goto LABEL_255;
    }

    goto LABEL_253;
  }

  v586 = v681;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v681, v677, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  if (v585(v586 + v582, 1, v680) == 1)
  {
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v676, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v677, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
LABEL_253:
    v274 = &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSg_ADtMd;
    v275 = &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSg_ADtMR;
    v276 = v681;
    goto LABEL_75;
  }

  v587 = v681;
  v588 = v681 + v582;
  v589 = v679;
  outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v588, v679, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  v590 = v677;
  v591 = specialized static Apple_Workout_Core_TrackRunningMetricsPublisher.== infix(_:_:)(v677, v589);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v589, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v676, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v590, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v587, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B29_TrackRunningMetricsPublisherVSgMR);
  if ((v591 & 1) == 0)
  {
    goto LABEL_71;
  }

LABEL_255:
  v592 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  v593 = v609;
  swift_beginAccess();
  v594 = v683;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v593 + v592, v683, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v595 = OBJC_IVAR____TtCV11WorkoutCore35Apple_Workout_Core_MetricsPublisherP33_508C7676BE35C88A6A3FC097C9B7FAB413_StorageClass__workoutBuddyStatePublisher;
  v596 = v610;
  swift_beginAccess();
  v597 = *(v682 + 48);
  v598 = v594;
  v599 = v688;
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v598, v688, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v596 + v595, v599 + v597, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  v600 = *(v685 + 48);
  if (v600(v599, 1, v687) != 1)
  {
    v601 = v688;
    outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v688, v684, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    if (v600(v601 + v597, 1, v687) == 1)
    {

      outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v683, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
      outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v684, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
      goto LABEL_260;
    }

    v602 = v688;
    v603 = v688 + v597;
    v604 = v686;
    outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v603, v686, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
    v605 = v684;
    v606 = specialized static Apple_Workout_Core_WorkoutBuddyStatePublisher.== infix(_:_:)(v684, v604);

    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v604, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v683, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(v605, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v602, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
    return (v606 & 1) != 0;
  }

  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v683, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  if (v600(v688 + v597, 1, v687) != 1)
  {
LABEL_260:
    outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v688, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSg_ADtMR);
    return 0;
  }

  outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(v688, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMd, &_s11WorkoutCore06Apple_a1_b1_A19BuddyStatePublisherVSgMR);
  return 1;
}

Swift::Int Apple_Workout_Core_MetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v4) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MetricsPublisher(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_ConfigurationType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = closure #1 in static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined init with copy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_ConfigurationType and conformance Apple_Workout_Core_ConfigurationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_ConfigurationType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_ConfigurationType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_ConfigurationType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B18_ConfigurationTypeOGMd, &_sSay11WorkoutCore06Apple_a1_B18_ConfigurationTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_ConfigurationType] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double keypath_get_51Tm@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  result = *(v5 + v6);
  *a3 = result;
  return result;
}

void keypath_get_91Tm(uint64_t a1@<X0>, uint64_t *a2@<X3>, _DWORD *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_ConfigurationType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_ConfigurationType(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_ConfigurationType(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_ConfigurationType(uint64_t result, int a2)
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

uint64_t type metadata completion function for Apple_Workout_Core_MetricsPublisher(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_MetricsPublisher._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_MetricsPublisher._StorageClass(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_ElapsedTimeMetricsPublisher?, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_ActivitySummaryMetricsPublisher?, type metadata accessor for Apple_Workout_Core_ActivitySummaryMetricsPublisher);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_HeartRateMetricsPublisher?, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_EnergyMetricsPublisher?, type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_LapsMetricsPublisher?, type metadata accessor for Apple_Workout_Core_LapsMetricsPublisher);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_PowerMetricsPublisher?, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_WorkoutStatePublisher?, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_IntervalsMetricsPublisher?, type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_MultiSportMetricsPublisher?, type metadata accessor for Apple_Workout_Core_MultiSportMetricsPublisher);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_PlatterPublisher?, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_GoalPublisher?, type metadata accessor for Apple_Workout_Core_GoalPublisher);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_RaceInformationPublisher?, type metadata accessor for Apple_Workout_Core_RaceInformationPublisher);
                        if (v12 <= 0x3F)
                        {
                          type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_RacePositionStatePublisher?, type metadata accessor for Apple_Workout_Core_RacePositionStatePublisher);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_LocationPositionPublisher?, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_WaterTemperatureMetricsPublisher?, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
                              if (v15 <= 0x3F)
                              {
                                type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_TrackRunningMetricsPublisher?, type metadata accessor for Apple_Workout_Core_TrackRunningMetricsPublisher);
                                if (v16 <= 0x3F)
                                {
                                  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(319, &lazy cache variable for type metadata for Apple_Workout_Core_WorkoutBuddyStatePublisher?, type metadata accessor for Apple_Workout_Core_WorkoutBuddyStatePublisher);
                                  if (v17 <= 0x3F)
                                  {
                                    swift_updateClassMetadata2();
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
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined destroy of Apple_Workout_Core_ActivitySummaryMetricsPublisher?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int WorkoutFeatures.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutFeatures()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutFeatures(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for WorkoutFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t AddWorkoutType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AddWorkoutType and conformance AddWorkoutType()
{
  result = lazy protocol witness table cache variable for type AddWorkoutType and conformance AddWorkoutType;
  if (!lazy protocol witness table cache variable for type AddWorkoutType and conformance AddWorkoutType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AddWorkoutType and conformance AddWorkoutType);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AddWorkoutType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AddWorkoutType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance AddWorkoutType@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t MultiSportWorkoutConfiguration.workoutKitRepresentation.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v11);

  v0 = v11[0];
  if (!(v11[0] >> 62))
  {
    v1 = *((v11[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_13:

    MultiSportWorkoutConfiguration.displayName.getter();
    return SwimBikeRunWorkout.init(configurations:displayName:)();
  }

  v1 = __CocoaSet.count.getter();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_3:
  v11[4] = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v1 & 0x8000000000000000) == 0)
  {
    v3 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F2E7A20](v3, v0);
      }

      else
      {
        v4 = *(v0 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v7 = *&v5[v6];
      v8 = objc_allocWithZone(MEMORY[0x277CCDC38]);
      v9 = v7;
      v10 = [v8 init];
      [v10 setActivityType_];
      [v10 setLocationType_];
      if ([v9 effectiveTypeIdentifier] == 46)
      {
        [v10 setSwimmingLocationType_];
      }

      ++v3;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v1 != v3);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id specialized static MultiSportWorkoutConfiguration.workoutCoreRepresentation(_:id:occurrence:)(uint64_t a1, char *a2, void *a3)
{
  v7 = type metadata accessor for Date();
  v101 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v73 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v92 = &v73 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v91 = &v73 - v20;
  v94 = type metadata accessor for SwimBikeRunWorkout.Activity();
  v21 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v22);
  v100 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for UUID();
  v24 = *(v95 - 8);
  v26 = MEMORY[0x28223BE20](v95, v25);
  v90 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v89 = &v73 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v102 = &v73 - v32;
  v33 = SwimBikeRunWorkout.activities.getter();
  v34 = *(v33 + 16);
  if (v34)
  {
    v74 = a2;
    v75 = a3;
    v76 = a1;
    v77 = v3;
    v108 = MEMORY[0x277D84F90];
    v35 = v33;
    v99 = v34;
    specialized ContiguousArray.reserveCapacity(_:)();
    v37 = *(v21 + 16);
    v36 = v21 + 16;
    v87 = v37;
    v38 = (*(v36 + 64) + 32) & ~*(v36 + 64);
    v73 = v35;
    v39 = v35 + v38;
    v86 = *(v36 + 56);
    v78 = (v101 + 16);
    v85 = (v101 + 8);
    v93 = (v24 + 16);
    v84 = (v101 + 56);
    v83 = (v24 + 56);
    v82 = (v24 + 8);
    v88 = v36;
    v81 = (v36 - 8);
    v80 = v11;
    v79 = v15;
    v40 = v94;
    do
    {
      v101 = v39;
      v87(v100, v39, v40);
      v41 = SwimBikeRunWorkout.Activity.hkConfiguration.getter();
      v98 = HKWorkoutConfiguration.fiuiWorkoutActivityType(isPartOfMultisport:)(1);

      v42 = objc_allocWithZone(MEMORY[0x277D0A838]);
      v96 = [v42 initWithGoalTypeIdentifier:0 value:{0, v73}];
      UUID.init()();
      v43 = v91;
      Date.init()();
      v44 = *v78;
      v45 = v92;
      (*v78)(v92, v43, v7);
      v46 = v79;
      v44(v79, v43, v7);
      v47 = v80;
      v44(v80, v43, v7);
      v48 = type metadata accessor for Occurrence(0);
      v49 = objc_allocWithZone(v48);
      *&v49[OBJC_IVAR____TtC11WorkoutCore10Occurrence_count] = 0;
      v44(&v49[OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate], v45, v7);
      v44(&v49[OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate], v46, v7);
      v44(&v49[OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate], v47, v7);
      v107.receiver = v49;
      v107.super_class = v48;
      v97 = objc_msgSendSuper2(&v107, sel_init);
      v50 = *v85;
      (*v85)(v47, v7);
      v50(v46, v7);
      v50(v45, v7);
      v50(v43, v7);
      v51 = *v93;
      v52 = v89;
      v53 = v95;
      (*v93)(v89, v102, v95);
      v54 = objc_allocWithZone(type metadata accessor for GoalWorkoutConfiguration(0));
      swift_beginAccess();
      v55 = v96;
      v104 = v96;
      type metadata accessor for NLSessionActivityGoal();
      v96 = v55;
      Published.init(initialValue:)();
      swift_endAccess();
      v56 = v90;
      v51(v90, v52, v53);
      *&v54[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
      v57 = *v84;
      (*v84)(&v54[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v7);
      v57(&v54[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v7);
      v58 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
      v59 = type metadata accessor for WorkoutPlan.Route();
      (*(*(v59 - 8) + 56))(&v54[v58], 1, 1, v59);
      (*v83)(&v54[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v53);
      v60 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
      *&v54[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
      v51(&v54[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v56, v53);
      v61 = v97;
      *&v54[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v98;
      v54[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
      *&v54[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v61;
      swift_beginAccess();
      *&v54[v60] = 0;
      v54[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
      v62 = type metadata accessor for WorkoutConfiguration(0);
      v103.receiver = v54;
      v103.super_class = v62;
      v40 = v94;
      objc_msgSendSuper2(&v103, sel_init);

      v63 = *v82;
      (*v82)(v56, v53);
      v63(v52, v53);
      v63(v102, v53);
      (*v81)(v100, v40);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v39 = v101 + v86;
      --v99;
    }

    while (v99);

    v64 = v108;
    a3 = v75;
    a2 = v74;
  }

  else
  {

    v51 = *(v24 + 16);
    v64 = MEMORY[0x277D84F90];
  }

  v65 = v102;
  v51(v102, a2, v95);
  v66 = specialized MultiSportWorkoutConfiguration.__allocating_init(_:uuid:occurrence:)(v64, v65, a3);
  v67 = SwimBikeRunWorkout.displayName.getter();
  if (v68)
  {
    v69 = v67;
    v70 = v68;
    swift_getKeyPath();
    swift_getKeyPath();
    v105 = v69;
    v106 = v70;
    v71 = v66;
    static Published.subscript.setter();
  }

  return v66;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Date?, @in_guaranteed Date?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - v12;
  v14 = *(a1 + 32);
  if (a2)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for Date();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for Date();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  if (a3)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 56))(v10, v17, 1, v18);

  v14(v13, v10);

  _sSo8NSObjectCSgWOhTm_16(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return _sSo8NSObjectCSgWOhTm_16(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t DownhillSnowSportsAccumulator.distanceEndDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastUpdated;
  swift_beginAccess();
  return _s10Foundation4DateVSgWOcTm_8(v1 + v3, a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

double DownhillSnowSportsAccumulator.distance.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_distance;
  swift_beginAccess();
  return *(v0 + v1);
}

double DownhillSnowSportsAccumulator.averageSpeed.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_averageSpeed;
  swift_beginAccess();
  return *(v0 + v1);
}

double DownhillSnowSportsAccumulator.maximumSpeed.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_maximumSpeed;
  swift_beginAccess();
  return *(v0 + v1);
}

double DownhillSnowSportsAccumulator.descent.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_descent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DownhillSnowSportsAccumulator.downhillRunCount.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void key path setter for DownhillSnowSportsAccumulator.lastRun : DownhillSnowSportsAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastRun;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *DownhillSnowSportsAccumulator.lastRun.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastRun;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

id DownhillSnowSportsAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownhillSnowSportsAccumulator.init()()
{
  v1 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastUpdated;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_distance] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_averageSpeed] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_maximumSpeed] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_descent] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastRun] = 0;
  v3 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns;
  v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns] = 0;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B468F40);
  v6 = [v4 BOOLForKey_];

  v0[v3] = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CC1D48]) init];
  *&v0[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_skiTracker] = v7;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for DownhillSnowSportsAccumulator(0);
  v8 = objc_msgSendSuper2(&v14, sel_init);
  if (*(v8 + OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns) == 1)
  {
    v9 = objc_allocWithZone(type metadata accessor for FakeCMSkiTracker());
    v10 = v8;
    v11 = [v9 init];
    v12 = *&v10[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_skiTracker];
    *&v10[OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_skiTracker] = v11;
  }

  return v8;
}

uint64_t type metadata accessor for DownhillSnowSportsAccumulator(uint64_t a1)
{
  result = type metadata singleton initialization cache for DownhillSnowSportsAccumulator;
  if (!type metadata singleton initialization cache for DownhillSnowSportsAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void closure #1 in DownhillSnowSportsAccumulator.accumulatorDidStart(withStart:handler:)(void *a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    DownhillSnowSportsAccumulator.handle(data:error:)(a1, a2);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed CMLiveSkiData?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void DownhillSnowSportsAccumulator.handle(data:error:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v89 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v89 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v25 = &v89 - v24;
  if (!a2)
  {
    v95 = v22;
    if (!a1)
    {
      if (one-time initialization token for downhillSnowSports != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static WOLog.downhillSnowSports);
      v95 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v95, v41))
      {
        goto LABEL_7;
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20AEA4000, v95, v41, "CMSkiTracker returned no live data)", v29, 2u);
      goto LABEL_6;
    }

    v89 = v23;
    v92 = v9;
    v90 = a1;
    v93 = a1;
    v34 = [v93 date];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v35 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastUpdated;
    swift_beginAccess();
    v91 = v35;
    v36 = v2;
    _s10Foundation4DateVSgWOcTm_8(v2 + v35, v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v37 = *(v14 + 48);
    v38 = v95;
    v39 = v37(v12, 1, v95);
    v94 = v14;
    if (v39 == 1)
    {
      static Date.distantPast.getter();
      if (v37(v12, 1, v38) != 1)
      {
        _sSo8NSObjectCSgWOhTm_16(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }
    }

    else
    {
      (*(v14 + 32))(v20, v12, v38);
    }

    v42 = static Date.> infix(_:_:)();
    v43 = *(v94 + 8);
    v43(v20, v38);
    v43(v25, v38);
    if (v42)
    {
      v44 = v2;
      if (one-time initialization token for downhillSnowSports != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      __swift_project_value_buffer(v45, static WOLog.downhillSnowSports);
      v36 = v93;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v92;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v50 = 138412290;
        *(v50 + 4) = v36;
        *v43 = v90;
        v51 = v36;
        _os_log_impl(&dword_20AEA4000, v46, v47, "CMSkiTracker live update: %@", v50, 0xCu);
        _sSo8NSObjectCSgWOhTm_16(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v43, -1, -1);
        MEMORY[0x20F2E9420](v50, -1, -1);
      }

      v52 = [v36 date];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v94 + 56))(v49, 0, 1, v38);
      v38 = v91;
      swift_beginAccess();
      outlined assign with take of Date?(v49, v38 + v44);
      swift_endAccess();
      [v36 distance];
      v54 = v53;
      v55 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_distance;
      swift_beginAccess();
      *(&v44->isa + v55) = v54;
      [v36 averageSpeed];
      v57 = v56;
      v58 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_averageSpeed;
      swift_beginAccess();
      *(&v44->isa + v58) = v57;
      [v36 verticalDescent];
      v60 = v59;
      v61 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_descent;
      swift_beginAccess();
      *(&v44->isa + v61) = v60;
      [v36 maximumSpeed];
      v63 = v62;
      v64 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_maximumSpeed;
      swift_beginAccess();
      *(&v44->isa + v64) = v63;
      v65 = [v36 runCount];
      if ((v65 & 0x8000000000000000) == 0)
      {
        v66 = v65;
        v67 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount;
        swift_beginAccess();
        *(&v44->isa + v67) = v66;
        v68 = [v44 updateHandler];
        if (v68)
        {
          v69 = v68;
          (*(v68 + 2))();

          _Block_release(v69);
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    else if (one-time initialization token for downhillSnowSports == -1)
    {
      goto LABEL_28;
    }

    swift_once();
LABEL_28:
    v70 = type metadata accessor for Logger();
    __swift_project_value_buffer(v70, static WOLog.downhillSnowSports);
    v71 = v93;
    v95 = v36;
    v72 = v36;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v96[0] = v94;
      *v75 = 136315394;
      v76 = [v71 date];
      LODWORD(v93) = v74;
      v77 = v76;
      v78 = v89;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      lazy protocol witness table accessor for type Date and conformance Date();
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      v43(v78, v38);
      v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v96);

      *(v75 + 4) = v82;
      *(v75 + 12) = 2080;
      v83 = v92;
      _s10Foundation4DateVSgWOcTm_8(v91 + v95, v92, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v84 = Optional.description.getter();
      v86 = v85;
      _sSo8NSObjectCSgWOhTm_16(v83, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v86, v96);

      *(v75 + 14) = v87;
      _os_log_impl(&dword_20AEA4000, v73, v93, "CMSkiTracker returned live data with date=%s older than lastUpdated=%s", v75, 0x16u);
      v88 = v94;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v88, -1, -1);
      MEMORY[0x20F2E9420](v75, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (one-time initialization token for downhillSnowSports != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static WOLog.downhillSnowSports);
  v27 = a2;
  v95 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v95, v28))
  {
    goto LABEL_7;
  }

  v29 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  *v29 = 138412290;
  v31 = a2;
  v32 = _swift_stdlib_bridgeErrorToNSError();
  *(v29 + 4) = v32;
  *v30 = v32;
  _os_log_impl(&dword_20AEA4000, v95, v28, "CMSkiTracker error handling live data. error=%@", v29, 0xCu);
  _sSo8NSObjectCSgWOhTm_16(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  MEMORY[0x20F2E9420](v30, -1, -1);
LABEL_6:
  MEMORY[0x20F2E9420](v29, -1, -1);
LABEL_7:
  v33 = v95;
}

void DownhillSnowSportsAccumulator.downhillRunDidComplete(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v47 = v46 - v6;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v46 - v14;
  if (one-time initialization token for downhillSnowSports != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static WOLog.downhillSnowSports);
  v18 = a1;
  v46[1] = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = v2;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v18;
    *v23 = v18;
    v24 = v18;
    _os_log_impl(&dword_20AEA4000, v19, v20, "downhillRunDidComplete completed_run=%@", v22, 0xCu);
    _sSo8NSObjectCSgWOhTm_16(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v23, -1, -1);
    v25 = v22;
    v2 = v21;
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  v26 = *(v8 + 16);
  v26(v15, &v18[OBJC_IVAR___WODownhillRun_startTime], v7);
  v27 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_lastRun;
  swift_beginAccess();
  v28 = *&v2[v27];
  if (v28)
  {
    v29 = v47;
    v26(v47, (v28 + OBJC_IVAR___WODownhillRun_endTime), v7);
    (*(v8 + 56))(v29, 0, 1, v7);
    (*(v8 + 32))(v12, v29, v7);
  }

  else
  {
    v30 = v47;
    (*(v8 + 56))(v47, 1, 1, v7);
    static Date.distantPast.getter();
    if ((*(v8 + 48))(v30, 1, v7) != 1)
    {
      _sSo8NSObjectCSgWOhTm_16(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v31 = static Date.> infix(_:_:)();
  v32 = *(v8 + 8);
  v32(v12, v7);
  v32(v15, v7);
  if (v31)
  {
    v33 = *&v2[v27];
    *&v2[v27] = v18;
    v34 = v18;
  }

  else
  {
    v35 = v18;
    v36 = v2;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v39 = 138412546;
      *(v39 + 4) = v35;
      *v40 = v35;
      *(v39 + 12) = 2080;
      v48 = *&v2[v27];
      v49 = v41;
      v42 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore11DownhillRunCSgMd, &_s11WorkoutCore11DownhillRunCSgMR);
      v43 = Optional.description.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v49);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_20AEA4000, v37, v38, "downhillRunDidComplete completed run older than last run. completed_run=%@ last_run=%s", v39, 0x16u);
      _sSo8NSObjectCSgWOhTm_16(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }
  }
}

uint64_t DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  return MEMORY[0x2822009F8](DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), 0, 0);
}

uint64_t DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v1 = v0[6].i64[1];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14HKWorkoutEventC_So10HKQuantityCtMd, &_sSo14HKWorkoutEventC_So10HKQuantityCtMR);
  v3 = swift_task_alloc();
  v0[8].i64[1] = v3;
  v4 = v0[7];
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore11DownhillRunCGMd, &_sSay11WorkoutCore11DownhillRunCGMR);
  v6 = swift_task_alloc();
  v0[9].i64[0] = v6;
  *v6 = v0;
  v6[1] = DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return MEMORY[0x282200740](&v0[6], v2, v5, 0, 0, &async function pointer to partial apply for closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), v3, v2);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
  }

  else
  {

    v2 = DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v16 = v0;
  v1 = v0[12];
  type metadata accessor for DownhillRunsStats();
  v0[20] = swift_initStackObject();
  DownhillRunsStats.init(downhillRuns:)(v1);
  v0[21] = v2;
  if (one-time initialization token for downhillSnowSports != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.downhillSnowSports);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;

    v8 = DownhillRunsStats.description.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "DownhillSnowSportsAccumulator recovered downhill_runs_stats=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  type metadata accessor for MainActor();
  v0[22] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), v13, v12);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[16];

  closure #2 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(v3, v1);
  if (v2)
  {
  }

  else
  {

    MEMORY[0x2822009F8](DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), 0, 0);
  }
}

uint64_t closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = type metadata accessor for Date();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v7 = type metadata accessor for DateInterval();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScg8IteratorVySo14HKWorkoutEventC_So10HKQuantityCts5Error_p_GMd, &_sScg8IteratorVySo14HKWorkoutEventC_So10HKQuantityCts5Error_p_GMR);
  v5[33] = v8;
  v5[34] = *(v8 - 8);
  v5[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), 0, 0);
}

uint64_t closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(v5 + 192);
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_17:
    v26 = MEMORY[0x277D84F90];
    *(v5 + 160) = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14HKWorkoutEventC_So10HKQuantityCtMd, &_sSo14HKWorkoutEventC_So10HKQuantityCtMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    ThrowingTaskGroup.makeAsyncIterator()();
    *(v5 + 304) = v26;
    v27 = swift_task_alloc();
    *(v5 + 312) = v27;
    *v27 = v5;
    v27[1] = closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
    a4 = *(v5 + 264);
    v7 = v5 + 144;
    a5 = (v5 + 168);
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004E8](v7, a2, a3, a4, a5);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v29 = *(v5 + 192) + 32;
    v30 = **(v5 + 184);
    v31 = v6 & 0xC000000000000001;
    v32 = v7;
    while (1)
    {
      if (v31)
      {
        v10 = MEMORY[0x20F2E7A20](v8, *(v5 + 192), a3, a4, a5);
      }

      else
      {
        v10 = *(v29 + 8 * v8);
      }

      v11 = v10;
      v13 = *(v5 + 288);
      v12 = *(v5 + 296);
      v14 = *(v5 + 200);
      v15 = type metadata accessor for TaskPriority();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v12, 1, 1, v15);
      v17 = swift_allocObject();
      v17[2] = 0;
      v18 = v17 + 2;
      v17[3] = 0;
      v17[4] = v14;
      v17[5] = v11;
      _s10Foundation4DateVSgWOcTm_8(v12, v13, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v12) = (*(v16 + 48))(v13, 1, v15);
      v19 = v14;
      v20 = v11;
      v21 = *(v5 + 288);
      if (v12 == 1)
      {
        _sSo8NSObjectCSgWOhTm_16(*(v5 + 288), &_sScPSgMd, &_sScPSgMR);
        if (!*v18)
        {
          goto LABEL_13;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v16 + 8))(v21, v15);
        if (!*v18)
        {
LABEL_13:
          v22 = 0;
          v24 = 0;
          goto LABEL_14;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();
      v24 = v23;
      swift_unknownObjectRelease();
LABEL_14:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14HKWorkoutEventC_So10HKQuantityCtMd, &_sSo14HKWorkoutEventC_So10HKQuantityCtMR);
      v25 = v24 | v22;
      if (v24 | v22)
      {
        v25 = v5 + 64;
        *(v5 + 64) = 0;
        *(v5 + 72) = 0;
        *(v5 + 80) = v22;
        *(v5 + 88) = v24;
      }

      ++v8;
      v9 = *(v5 + 296);
      *(v5 + 96) = 1;
      *(v5 + 104) = v25;
      *(v5 + 112) = v30;
      swift_task_create();

      _sSo8NSObjectCSgWOhTm_16(v9, &_sScPSgMd, &_sScPSgMR);
      if (v32 == v8)
      {
        goto LABEL_17;
      }
    }
  }

  __break(1u);
  return MEMORY[0x2822004E8](v7, a2, a3, a4, a5);
}

uint64_t closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{

  if (v0)
  {

    v1 = closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
  }

  else
  {
    v1 = closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v1 = v0[18];
  if (v1)
  {
    v27 = v0[18];
    v28 = v0[19];
    v2 = v0[32];
    v25 = v0[31];
    v3 = v0[29];
    v26 = v0[30];
    v5 = v0[27];
    v4 = v0[28];
    v6 = [v1 dateInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    DateInterval.start.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v8 = *(v4 + 8);
    v8(v3, v5);
    DateInterval.end.getter();
    v9 = Date._bridgeToObjectiveC()().super.isa;
    v8(v3, v5);
    type metadata accessor for HKWorkoutEvent();
    v10 = Array._bridgeToObjectiveC()().super.isa;
    v0[6] = _s11WorkoutCore11DownhillRunC09calculateA4Time12dateInterval17pauseResumeEventsSd10Foundation04DateH0V_SaySo14HKWorkoutEventCGSgtFZyAG0M0VSg_APtcfU_TA_0;
    v0[7] = v7;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@in_guaranteed Date?, @in_guaranteed Date?) -> ();
    v0[5] = &block_descriptor_77;
    v11 = _Block_copy(v0 + 2);

    _HKEnumerateActiveWorkoutIntervalsStartingPaused();
    _Block_release(v11);

    (*(v25 + 8))(v2, v26);
    swift_beginAccess();
    v12 = *(v7 + 16);

    v13 = objc_allocWithZone(type metadata accessor for DownhillRun(0));
    v14 = v27;
    v15 = v28;
    v16 = specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(v14, v28, 0, v12);

    v17 = v16;
    MEMORY[0x20F2E6F30]();
    if (*((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[20] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v0[38] = v0[20];
    v18 = swift_task_alloc();
    v0[39] = v18;
    *v18 = v0;
    v18[1] = closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);
    v19 = v0[33];

    return MEMORY[0x2822004E8](v0 + 18, 0, 0, v19, v0 + 21);
  }

  else
  {
    v20 = v0[38];
    v21 = v0[22];
    (*(v0[34] + 8))(v0[35], v0[33]);
    *v21 = v20;

    v22 = v0[1];

    return v22();
  }
}

{
  (*(v0[34] + 8))(v0[35], v0[33]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return HKHealthStore.distance(for:)(a5);
}

uint64_t closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:), 0, 0);
  }
}

uint64_t closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v1 = v0[5];
  if (!v1)
  {
    v2 = [objc_opt_self() meterUnit];
    v1 = [objc_opt_self() quantityWithUnit:v2 doubleValue:0.0];
  }

  v4 = v0[2];
  v3 = v0[3];
  *v4 = v3;
  v4[1] = v1;
  v7 = v0[1];
  v5 = v3;

  return v7();
}

void closure #2 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(char *a1, void *a2)
{
  v4 = a2[3];
  v5 = MEMORY[0x20F2E6C00](7548781, 0xE300000000000000);
  v6 = objc_opt_self();
  v7 = [v6 unitFromString_];

  [v4 doubleValueForUnit_];
  v9 = v8;

  v10 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_averageSpeed;
  swift_beginAccess();
  *&a1[v10] = v9;
  v11 = a2[4];
  v12 = 0;
  v13 = 0;
  if (v11)
  {
    v14 = MEMORY[0x20F2E6C00](7548781, 0xE300000000000000);
    v15 = [v6 unitFromString_];

    [v11 doubleValueForUnit_];
    v13 = v16;
  }

  v17 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_maximumSpeed;
  swift_beginAccess();
  *&a1[v17] = v13;
  v18 = a2[8];
  if (v18)
  {
    v19 = [v6 meterUnit];
    [v18 doubleValueForUnit_];
    v12 = v20;
  }

  v21 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_descent;
  swift_beginAccess();
  *&a1[v21] = v12;
  v22 = a2[5];
  v23 = [v6 meterUnit];
  [v22 doubleValueForUnit_];
  v25 = v24;

  v26 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_distance;
  swift_beginAccess();
  *&a1[v26] = v25;
  v27 = a2[9];
  if (v27 < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_downhillRunCount;
    swift_beginAccess();
    *&a1[v28] = v27;
    v29 = [a1 updateHandler];
    if (v29)
    {
      v30 = v29;
      (*(v29 + 2))();
      _Block_release(v30);
    }
  }
}

uint64_t @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  type metadata accessor for HKWorkoutEvent();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v8;
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5[6] = v9;
  v10 = a3;
  a5;
  v11 = swift_task_alloc();
  v5[7] = v11;
  *v11 = v5;
  v11[1] = @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(v8, v9, v10);
}

uint64_t @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 32);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v10 = *(v7 + 8);

  return v10();
}

id DownhillSnowSportsAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownhillSnowSportsAccumulator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall DownhillSnowSportsAccumulator.isPaceAvailable()()
{
  if (*(v0 + OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns))
  {
    return 1;
  }

  else
  {
    return [objc_opt_self() isAvailable];
  }
}

void specialized DownhillSnowSportsAccumulator.accumulatorDidStart(withStart:handler:)()
{
  if ((*(v0 + OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_fakeDownhillRuns) & 1) != 0 || [objc_opt_self() isAvailable])
  {
    v1 = *(v0 + OBJC_IVAR___NLSessionActivityDownhillSnowSportsAccumulator_skiTracker);
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in DownhillSnowSportsAccumulator.accumulatorDidStart(withStart:handler:);
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CMLiveSkiData?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_67_0;
    v3 = _Block_copy(aBlock);
    v4 = v1;

    [v4 startLiveUpdatesWithHandler_];
    _Block_release(v3);
  }

  else
  {
    if (one-time initialization token for downhillSnowSports != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.downhillSnowSports);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_20AEA4000, oslog, v6, "CMSkiTracker not available on this device, not accumulating.", v7, 2u);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }
  }
}

uint64_t partial apply for closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(a1, a2, v6, v7, v8);
}

double keypath_getTm_9@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

void keypath_setTm_9(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

void type metadata completion function for DownhillSnowSportsAccumulator(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x190);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return v11(a1, a2, a3);
}

uint64_t partial apply for @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return @objc closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(v2, v3, v4, v5, v6);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sIeghH_IeAgH_TRTATQ0_;

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t objectdestroy_40Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:);

  return closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in DownhillSnowSportsAccumulator.recover(downhillRunEvents:pauseResumeEvents:healthStore:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s10Foundation4DateVSgWOcTm_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *static ZoneTrackerFactory.make(activityType:liveWorkoutConfiguration:distanceUnit:metadataSavingDelegate:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = LiveWorkoutConfiguration.currentTargetZones.getter();
  v23 = type metadata accessor for ZoneTracker();
  v9 = objc_allocWithZone(v23);
  v21 = OBJC_IVAR___NLWorkoutZoneTracker_alertDelegate;
  swift_unknownObjectWeakInit();
  v10 = v9 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate;
  *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_zoneTrackerDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR___NLWorkoutZoneTracker_currentDistance;
  *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_currentDistance) = 0;
  *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_currentDuration) = 0;
  v12 = OBJC_IVAR___NLWorkoutZoneTracker_lastPresentedAlertsByType;
  v13 = a1;
  v22 = a3;
  v25 = a4;
  swift_unknownObjectRetain();
  *&v12[v9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v14 = OBJC_IVAR___NLWorkoutZoneTracker_metadataSavingDelegate;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR___NLWorkoutZoneTracker_activityType;
  *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_activityType) = v13;
  v16 = v13;
  v17 = specialized static ZoneTracker.targetZoneDictionary(from:)(v8);
  if (v4)
  {

    swift_unknownObjectRelease();

    sub_20AEDF83C(v9 + v21);
    sub_20AEDF83C(v10);

    sub_20AEDF83C(v9 + v14);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v17;

    *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_targetZoneTemplates) = v18;
    *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_distanceUnit) = v22;
    *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_enforceDelayBetweenAlerts) = 1;
    *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_minTimeBetweenAlerts) = 0x402E000000000000;
    *(v9 + OBJC_IVAR___NLWorkoutZoneTracker_alertsHoldoffTime) = 0x404E000000000000;
    swift_unknownObjectWeakAssign();
    v24.receiver = v9;
    v24.super_class = v23;
    v19 = v22;
    v12 = objc_msgSendSuper2(&v24, sel_init);

    swift_unknownObjectRelease();
  }

  return v12;
}

id ZoneTrackerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ZoneTrackerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ZoneTrackerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ZoneTrackerFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ZoneTrackerFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

char *MSSuggestion.minify()()
{
  v0 = MSSuggestion.legacyIntent.getter();
  if (v0)
  {
    v1 = v0;
    v2 = INPlayMediaIntent.minify()();
    v3 = [v38 bundleID];
    if (!v3)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v3 = MEMORY[0x20F2E6C00](v4);
    }

    v5 = [v38 suggestionSource];
    v6 = [objc_allocWithZone(MEMORY[0x277D27FB8]) initWithIntent:v2 bundleID:v3 suggestionSource:v5];

    return v6;
  }

  v7 = MEMORY[0x277D27F90];
  v8 = *MEMORY[0x277D27F90];
  swift_beginAccess();
  v9 = *&v38[v8];
  if (v9)
  {
    v10 = v9;
    v11 = [v38 identifier];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v21 = MSPlayMediaAppIntent.minify(identifier:)(v13, v15);

    MSPlayMediaAppIntent.intentAction.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21MSMediaIntentProtocol_pMd, &_sSo21MSMediaIntentProtocol_pMR);
    swift_dynamicCast();
    v22 = [v38 bundleID];
    if (!v22)
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = MEMORY[0x20F2E6C00](v23);
    }

    v24 = [objc_allocWithZone(MEMORY[0x277D27FC0]) initWithIntent:v39 bundleID:v22];
    swift_unknownObjectRelease();

    v25 = [v38 bundleID];
    if (!v25)
    {
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = MEMORY[0x20F2E6C00](v26);
    }

    v27 = [v38 suggestionSource];
    v28 = objc_allocWithZone(MEMORY[0x277D27FB8]);
    v29 = v24;
    v6 = [v28 initWithUnifiedIntent:v29 bundleID:v25 suggestionSource:v27];

    v30 = [v38 identifier];
    if (v30)
    {
      v31 = v30;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
    }

    else
    {
      v32 = 0;
      v34 = 0;
    }

    v35 = MSPlayMediaAppIntent.minify(identifier:)(v32, v34);

    v36 = *v7;
    swift_beginAccess();
    v37 = *&v6[v36];
    *&v6[v36] = v35;

    return v6;
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.mediaPlayback);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_20AEA4000, v17, v18, "Unknown state: attempting to minify MSSuggestion without known intent, returning without changes", v19, 2u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  return v38;
}

INPlayMediaIntent *INPlayMediaIntent.minify()()
{
  v1 = v0;
  v2 = [v0 mediaItems];
  if (!v2)
  {
    isa = 0;
    goto LABEL_14;
  }

  v3 = v2;
  type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for INMediaItem, 0x277CD3DB8);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_13:

    isa = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  v25.value.super.isa = MEMORY[0x277D84F90];
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F2E7A20](v7, v4);
    }

    else
    {
      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    ++v7;
    INMediaItem.minify()();

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v5 != v7);

  isa = v25.value.super.isa;
LABEL_14:
  v11 = [v1 mediaContainer];
  if (v11)
  {
    v12 = v11;
    v13 = INMediaItem.minify()();
  }

  else
  {
    v13 = 0;
  }

  type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for INPlayMediaIntent, 0x277CD3EC0);
  v14 = INPlayMediaIntent.playShuffled.getter();
  v15 = [v1 playbackRepeatMode];
  v16.value = INPlayMediaIntent.resumePlayback.getter();
  v17 = [v1 playbackQueueLocation];
  v18.value = INPlayMediaIntent.playbackSpeed.getter();
  v20 = v19;
  v21 = [v1 mediaSearch];
  v28.is_nil = v21;
  v26.value._rawValue = isa;
  v26.is_nil = v13;
  v27.value.super.isa = v14;
  v27.is_nil = v15;
  v23 = INPlayMediaIntent.init(mediaItems:mediaContainer:playShuffled:playbackRepeatMode:resumePlayback:playbackQueueLocation:playbackSpeed:mediaSearch:)(v22, v26, v27, v16, v17, v18, (v20 & 1), v28, v25);
  v24 = [v1 launchId];
  [(INPlayMediaIntent *)v23 _setLaunchId:v24];

  return v23;
}

uint64_t MSPlayMediaAppIntent.minify(identifier:)(uint64_t a1, uint64_t a2)
{
  MSPlayMediaAppIntent.intentAction.getter();
  v2 = type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for LNAction, 0x277D23720);
  if (swift_dynamicCast())
  {
    v3 = LNAction.minify()();

    *(&v6 + 1) = v2;
    *&v5 = v3;
    outlined init with take of Any(&v5, &v7);
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
    MSPlayMediaAppIntent.intentAction.getter();
  }

  MSPlayMediaAppIntent.bundleID.getter();
  MSPlayMediaAppIntent.date.getter();
  MSPlayMediaAppIntent.suggestionSource.getter();
  objc_allocWithZone(type metadata accessor for MSPlayMediaAppIntent());

  return MSPlayMediaAppIntent.init(intentAction:bundleID:date:suggestionSource:identifier:editorialTags:title:)();
}

id INMediaItem.minify()()
{
  v1 = [v0 identifier];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = [v0 title];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v30 = [v0 type];
  v11 = [v0 artist];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = [v0 topics];
  if (v16)
  {
    v17 = v16;
    type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v0 namedEntities];
  if (v19)
  {
    v20 = v19;
    type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v0 privateMediaItemValueData];
  if (v5)
  {
    v23 = MEMORY[0x20F2E6C00](v3, v5);

    if (v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = 0;
    if (v10)
    {
LABEL_18:
      v24 = MEMORY[0x20F2E6C00](v8, v10);

      if (v15)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }
  }

  v24 = 0;
  if (v15)
  {
LABEL_19:
    v25 = MEMORY[0x20F2E6C00](v13, v15);

    if (v18)
    {
      goto LABEL_20;
    }

LABEL_25:
    v26.super.isa = 0;
    if (v21)
    {
      goto LABEL_21;
    }

LABEL_26:
    v27.super.isa = 0;
    goto LABEL_27;
  }

LABEL_24:
  v25 = 0;
  if (!v18)
  {
    goto LABEL_25;
  }

LABEL_20:
  type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v26.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  if (!v21)
  {
    goto LABEL_26;
  }

LABEL_21:
  type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_27:
  v28 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v23 title:v24 type:v30 artwork:0 artist:v25 topics:v26.super.isa namedEntities:v27.super.isa privateMediaItemValueData:v22];

  return v28;
}

id LNAction.minify()()
{
  v1 = [v0 parameters];
  type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for LNProperty, 0x277D238D8);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_48;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (v9 == 0x746E456F69647561 && v11 == 0xEB00000000797469)
      {

LABEL_17:

        v14 = [v6 value];

        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = [v14 value];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        type metadata accessor for INPlayMediaIntent(0, &lazy cache variable for type metadata for LNEntity, 0x277D237F0);
        if ((swift_dynamicCast() & 1) == 0)
        {

          goto LABEL_50;
        }

        v108 = v14;
        v16 = v114;
        v17 = &selRef_totalDiskCapacity;
        v2 = [v114 properties];
        v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v114 = MEMORY[0x277D84F90];
        if (v18 >> 62)
        {
          v19 = __CocoaSet.count.getter();
          v109 = v16;
          if (v19)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v109 = v16;
          if (v19)
          {
LABEL_21:
            v20 = 0;
            v111 = v18 & 0xFFFFFFFFFFFFFF8;
            v112 = v18 & 0xC000000000000001;
            v107 = v18;
            v21 = v18 + 32;
            while (1)
            {
              if (v112)
              {
                v22 = MEMORY[0x20F2E7A20](v20, v107);
              }

              else
              {
                if (v20 >= *(v111 + 16))
                {
                  goto LABEL_47;
                }

                v22 = *(v21 + 8 * v20);
              }

              v23 = v22;
              if (__OFADD__(v20++, 1))
              {
                goto LABEL_46;
              }

              if (one-time initialization token for EntityPropertyIdentifierAllowlist != -1)
              {
                swift_once();
              }

              v25 = EntityPropertyIdentifierAllowlist;
              v2 = [v23 identifier];
              v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v28 = v27;

              if (v25[2] && (Hasher.init(_seed:)(), String.hash(into:)(), v29 = Hasher._finalize()(), v2 = (v25 + 7), v30 = -1 << *(v25 + 32), v31 = v29 & ~v30, ((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v31) & 1) != 0))
              {
                v32 = ~v30;
                while (1)
                {
                  v33 = (v25[6] + 16 * v31);
                  v34 = *v33 == v26 && v33[1] == v28;
                  if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v31 = (v31 + 1) & v32;
                  if (((*(v2 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
                  {
                    goto LABEL_22;
                  }
                }

                v2 = &v114;
                specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
                specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
                specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                specialized ContiguousArray._endMutation()();
                if (v20 == v19)
                {
LABEL_43:
                  v35 = v114;
                  v16 = v109;
                  v17 = &selRef_totalDiskCapacity;
                  goto LABEL_59;
                }
              }

              else
              {
LABEL_22:

                if (v20 == v19)
                {
                  goto LABEL_43;
                }
              }
            }
          }
        }

        v35 = MEMORY[0x277D84F90];
LABEL_59:

        v114 = v35;
        v41 = [v16 v17[124]];
        v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v42 >> 62)
        {
LABEL_89:
          v43 = __CocoaSet.count.getter();
          if (v43)
          {
            goto LABEL_61;
          }
        }

        else
        {
          v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v43)
          {
LABEL_61:
            v44 = 0;
            while (1)
            {
              if ((v42 & 0xC000000000000001) != 0)
              {
                v45 = MEMORY[0x20F2E7A20](v44, v42);
              }

              else
              {
                if (v44 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_88;
                }

                v45 = *(v42 + 8 * v44 + 32);
              }

              v46 = v45;
              v47 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                __break(1u);
LABEL_88:
                __break(1u);
                goto LABEL_89;
              }

              v48 = [v45 identifier];
              v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v51 = v50;

              if (v49 == 2003789939 && v51 == 0xE400000000000000)
              {
                break;
              }

              v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v53)
              {
                goto LABEL_75;
              }

              ++v44;
              if (v47 == v43)
              {
                goto LABEL_90;
              }
            }

LABEL_75:

            v54 = [v46 value];
            v55 = v109;
            if (!v54)
            {

              goto LABEL_91;
            }

            v56 = v54;
            v57 = [v54 value];
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            if ((swift_dynamicCast() & 1) == 0)
            {

              goto LABEL_91;
            }

            v58 = [v113 isTransient];
            v59 = [v113 identifier];
            v60 = [v113 managedAccountIdentifier];
            if (v60)
            {
              v61 = v60;
              v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v64 = v63;

              v65.super.isa = Array._bridgeToObjectiveC()().super.isa;
              if (v64)
              {
                v66 = MEMORY[0x20F2E6C00](v62, v64);

                goto LABEL_84;
              }
            }

            else
            {
              v65.super.isa = Array._bridgeToObjectiveC()().super.isa;
            }

            v66 = 0;
LABEL_84:
            v67 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithTransient:v58 identifier:v59 properties:v65.super.isa managedAccountIdentifier:v66];

            v68 = v67;
            v69 = [v56 valueType];
            v70 = objc_allocWithZone(MEMORY[0x277D23958]);
            v71 = v68;
            v72 = [v70 initWithValue:v71 valueType:v69 displayRepresentation:0];

            v73 = objc_allocWithZone(MEMORY[0x277D238D8]);
            v74 = v72;
            v75 = MEMORY[0x20F2E6C00](2003789939, 0xE400000000000000);
            v76 = [v73 initWithIdentifier:v75 value:v74];

            v77 = v76;
            MEMORY[0x20F2E6F30]();
            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v55 = v109;
LABEL_91:
            v78 = [v55 isTransient];
            v79 = [v55 identifier];
            v80 = [v55 managedAccountIdentifier];
            if (v80)
            {
              v81 = v80;
              v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v84 = v83;
            }

            else
            {
              v82 = 0;
              v84 = 0;
            }

            v85.super.isa = Array._bridgeToObjectiveC()().super.isa;

            if (v84)
            {
              v86 = MEMORY[0x20F2E6C00](v82, v84);
            }

            else
            {
              v86 = 0;
            }

            v87 = [objc_allocWithZone(MEMORY[0x277D237F0]) initWithTransient:v78 identifier:v79 properties:v85.super.isa managedAccountIdentifier:v86];

            v88 = v87;
            v89 = v108;
            v90 = [v108 valueType];
            v91 = [v108 displayRepresentation];
            if (v91)
            {
              v92 = v91;
              v93 = [v91 title];
              v94 = [v92 subtitle];
              v95 = [objc_allocWithZone(MEMORY[0x277D237D8]) initWithTitle:v93 subtitle:v94 image:0];

              v89 = v108;
            }

            else
            {
              v95 = 0;
            }

            v96 = objc_allocWithZone(MEMORY[0x277D23958]);
            v97 = v88;
            v98 = [v96 initWithValue:v97 valueType:v90 displayRepresentation:v95];

            v99 = objc_allocWithZone(MEMORY[0x277D238D8]);
            v100 = v98;
            v101 = MEMORY[0x20F2E6C00](0x746E456F69647561, 0xEB00000000797469);
            v102 = [v99 initWithIdentifier:v101 value:v100];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v103 = swift_allocObject();
            *(v103 + 16) = xmmword_20B425990;
            *(v103 + 32) = v102;
            v104 = v102;
            isa = Array._bridgeToObjectiveC()().super.isa;

            v106 = [v110 actionWithParameters_];

            return v106;
          }
        }

LABEL_90:

        v55 = v109;
        goto LABEL_91;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_17;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    ;
  }

LABEL_49:

LABEL_50:
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static WOLog.mediaPlayback);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_20AEA4000, v37, v38, "Unknown state: attempting to minify LNAction but no audioEntity parameter was found, returning without changes", v39, 2u);
    MEMORY[0x20F2E9420](v39, -1, -1);
  }

  return v110;
}

uint64_t one-time initialization function for EntityPropertyIdentifierAllowlist()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for EntityPropertyIdentifierAllowlist);
  result = swift_arrayDestroy();
  EntityPropertyIdentifierAllowlist = v0;
  return result;
}

uint64_t type metadata accessor for INPlayMediaIntent(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t HeartRateZoneType.rawValue.getter()
{
  v1 = 0x6D6F74737563;
  if (*v0 != 1)
  {
    v1 = 6710895;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

WorkoutCore::HeartRateZoneType_optional __swiftcall HeartRateZoneType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateZoneType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t HeartRateZoneType.analyticsKey.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HeartRateZoneType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6D6F74737563;
  if (v2 != 1)
  {
    v4 = 6710895;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6974616D6F747561;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000063;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D6F74737563;
  if (*a2 != 1)
  {
    v8 = 6710895;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6974616D6F747561;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000063;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateZoneType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance HeartRateZoneType(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateZoneType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HeartRateZoneType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000063;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74737563;
  if (v2 != 1)
  {
    v5 = 6710895;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6974616D6F747561;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t lazy protocol witness table accessor for type [HeartRateZoneType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [HeartRateZoneType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [HeartRateZoneType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore17HeartRateZoneTypeOGMd, &_sSay11WorkoutCore17HeartRateZoneTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [HeartRateZoneType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateZoneType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateZoneType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t WorkoutConfiguration.deserializedCopy(validator:)(uint64_t a1)
{
  type metadata accessor for WorkoutConfiguration(0);
  v3 = [v1 serialize];
  static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(v3, 0, a1, v10);

  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      return v9;
    }
  }

  else
  {
    _sypSgWOhTm_4(v10, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.activityPicker);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20AEA4000, v6, v7, "Could not copy workout configuration via serialization", v8, 2u);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  return 0;
}

uint64_t WorkoutConfiguration.copy(uuid:location:swimmingLocation:isPartOfMultisport:preservingExternalProvider:)(uint64_t a1, void *a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v8 = v7;
  v84 = a7;
  v91 = a5;
  v92 = a6;
  v95 = a2;
  v96 = a4;
  v90 = a3;
  v88 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v98 = &v80 - v11;
  v12 = type metadata accessor for UUID();
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v89 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v80 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v80 - v25;
  type metadata accessor for WorkoutConfigurationValidator();
  swift_initStackObject();
  v27 = WorkoutConfigurationValidator.init()();
  v28 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v93 = *(v8 + v28);
  v29 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v94 = v26;
  _s10Foundation4DateVSgWOcTm_9(v8 + v29, v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v30 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
  swift_beginAccess();
  v97 = v23;
  v31 = v23;
  v32 = v27;
  _s10Foundation4DateVSgWOcTm_9(v8 + v30, v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v82 = v28;
  *(v8 + v28) = 0;
  v33 = type metadata accessor for Date();
  v34 = *(*(v33 - 8) + 56);
  v34(v19, 1, 1, v33);
  swift_beginAccess();
  v83 = v29;
  outlined assign with take of Date?(v19, v8 + v29);
  swift_endAccess();
  v34(v19, 1, 1, v33);
  swift_beginAccess();
  v85 = v19;
  outlined assign with take of Date?(v19, v8 + v30);
  swift_endAccess();
  v35 = WorkoutConfiguration.deserializedCopy(validator:)(v32);
  if (!v35)
  {
LABEL_15:

    _sypSgWOhTm_4(v97, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _sypSgWOhTm_4(v94, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  v36 = v35;
  v81 = v32;
  v37 = v98;
  _s10Foundation4DateVSgWOcTm_9(v88, v98, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v38 = v86;
  v39 = *(v86 + 48);
  v40 = v37;
  v41 = v87;
  v42 = v39(v40, 1, v87);
  v80 = v30;
  if (v42 == 1)
  {
    v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v44 = v89;
    (v38)[2](v89, v8 + v43, v41);
    v45 = v39(v98, 1, v41);
    v46 = v41;
    v48 = v95;
    v47 = v96;
    v49 = v91;
    if (v45 != 1)
    {
      _sypSgWOhTm_4(v98, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    v44 = v89;
    (v38)[4](v89, v98, v41);
    v46 = v41;
    v48 = v95;
    v47 = v96;
    v49 = v91;
  }

  v50 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (v38)[5](&v36[v50], v44, v46);
  swift_endAccess();
  v51 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v52 = *(v8 + v51);
  v53 = v90;
  v54 = v92;
  v55 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)(v48, v90 & 1, v47, v49 & 1, v92);
  v56 = v49;
  v57 = v55;

  v58 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v59 = *&v36[v58];
  *&v36[v58] = v57;

  v60 = WorkoutConfiguration.deserializedCopy(validator:)(v81);
  if (!v60)
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static WOLog.activityPicker);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_20AEA4000, v76, v77, "Failed to validate copied workout configuration via serialization", v78, 2u);
      MEMORY[0x20F2E9420](v78, -1, -1);
    }

    goto LABEL_15;
  }

  v61 = v60;
  v62 = *&v36[v58];
  v63 = FIUIWorkoutActivityType.copy(location:swimmingLocation:isPartOfMultisport:)(v95, v53 & 1, v96, v56 & 1, v54);

  v64 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v65 = *(v61 + v64);
  *(v61 + v64) = v63;

  v66 = v93;
  *(v8 + v82) = v93;

  v67 = v94;
  v68 = v85;
  _s10Foundation4DateVSgWOcTm_9(v94, v85, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v69 = v83;
  swift_beginAccess();
  outlined assign with take of Date?(v68, v8 + v69);
  swift_endAccess();
  _s10Foundation4DateVSgWOcTm_9(v97, v68, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v70 = v80;
  swift_beginAccess();
  outlined assign with take of Date?(v68, v8 + v70);
  swift_endAccess();
  if (v84)
  {
    v71 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
    swift_beginAccess();
    *(v61 + v71) = v66;

    v72 = v85;
    outlined init with take of Date?(v67, v85);
    v73 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
    swift_beginAccess();
    outlined assign with take of Date?(v72, v61 + v73);
    swift_endAccess();
    outlined init with take of Date?(v97, v72);
    v74 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    outlined assign with take of Date?(v72, v61 + v74);
    swift_endAccess();
  }

  else
  {

    _sypSgWOhTm_4(v97, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _sypSgWOhTm_4(v67, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return v61;
}

uint64_t _s10Foundation4DateVSgWOcTm_9(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *StandardActivityItemsDataSource.__allocating_init(standardActivityTypeProvider:wheelchairUseProvider:swimmingSupported:activityMoveMode:reducedActivityTypesProvider:occurrenceStore:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = type metadata accessor for StandardActivityItemsDataSource();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_compoundObservers;
  *&v12[v13] = [objc_opt_self() weakObjectsHashTable];
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = 0;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode] = a4;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider] = a1;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider] = a2;
  swift_unknownObjectRetain();
  v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_isWheelchairUser] = [swift_unknownObjectRetain() isWheelchairUser];
  v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_swimmingSupported] = a3;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_occurrenceStore] = a6;
  v33.receiver = v12;
  v33.super_class = v11;
  v14 = a6;
  v15 = objc_msgSendSuper2(&v33, sel_init);
  v16 = *&v15[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider];
  v17 = v15;
  [v16 addObserver_];
  v18 = objc_allocWithZone(type metadata accessor for MultiModalityWidgetDataProvider());
  v19 = specialized MultiModalityWidgetDataProvider.init(standardActivityItemsDataSource:)(v17, v18);
  v20 = *&v17[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider];
  *&v17[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = v19;

  v21 = objc_opt_self();
  v22 = [v21 defaultCenter];
  [v22 addObserver:v17 selector:sel_smartGoalStoreUpdatedOccurrenceDataWithNotification_ name:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0];

  v23 = [v21 defaultCenter];
  [v23 addObserver:v17 selector:sel_smartGoalStoreDidShowActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidShowActivityType" object:0];

  v24 = [v21 defaultCenter];
  [v24 addObserver:v17 selector:sel_smartGoalStoreDidHideActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidHideActivityType" object:0];

  v25 = CFNotificationCenterGetDarwinNotifyCenter();
  v26 = *MEMORY[0x277CBECE8];
  v27 = *MEMORY[0x277CCB790];
  v28 = kCFStringEncodingASCII.getter();
  v29 = CFStringCreateWithCString(v26, v27, v28);
  CFNotificationCenterAddObserver(v25, v17, @objc closure #1 in StandardActivityItemsDataSource.observeActivityMoveModeChanged(), v29, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v30 = CFNotificationCenterGetDarwinNotifyCenter();
  v31 = MEMORY[0x20F2E6C00](0xD00000000000002CLL, 0x800000020B45F550);
  CFNotificationCenterAddObserver(v30, v17, @objc closure #1 in StandardActivityItemsDataSource.observeActivityPickerListChanged(), v31, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v17;
}

char *StandardActivityItemsDataSource.__allocating_init(standardActivityTypeProvider:wheelchairUseProvider:swimmingSupported:activityMoveMode:occurrenceStore:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  v13 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_compoundObservers;
  *&v12[v13] = [objc_opt_self() weakObjectsHashTable];
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = 0;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode] = a4;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider] = a1;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider] = a2;
  swift_unknownObjectRetain();
  v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_isWheelchairUser] = [swift_unknownObjectRetain() isWheelchairUser];
  v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_swimmingSupported] = a3;
  *&v12[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_occurrenceStore] = a5;
  v33.receiver = v12;
  v33.super_class = v6;
  v14 = a5;
  v15 = objc_msgSendSuper2(&v33, sel_init);
  v16 = *&v15[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider];
  v17 = v15;
  [v16 addObserver_];
  v18 = objc_allocWithZone(type metadata accessor for MultiModalityWidgetDataProvider());
  v19 = specialized MultiModalityWidgetDataProvider.init(standardActivityItemsDataSource:)(v17, v18);
  v20 = *&v17[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider];
  *&v17[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = v19;

  v21 = objc_opt_self();
  v22 = [v21 defaultCenter];
  [v22 addObserver:v17 selector:sel_smartGoalStoreUpdatedOccurrenceDataWithNotification_ name:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0];

  v23 = [v21 defaultCenter];
  [v23 addObserver:v17 selector:sel_smartGoalStoreDidShowActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidShowActivityType" object:0];

  v24 = [v21 defaultCenter];
  [v24 addObserver:v17 selector:sel_smartGoalStoreDidHideActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidHideActivityType" object:0];

  v25 = CFNotificationCenterGetDarwinNotifyCenter();
  v26 = *MEMORY[0x277CBECE8];
  v27 = *MEMORY[0x277CCB790];
  v28 = kCFStringEncodingASCII.getter();
  v29 = CFStringCreateWithCString(v26, v27, v28);
  CFNotificationCenterAddObserver(v25, v17, @objc closure #1 in StandardActivityItemsDataSource.observeActivityMoveModeChanged(), v29, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v30 = CFNotificationCenterGetDarwinNotifyCenter();
  v31 = MEMORY[0x20F2E6C00](0xD00000000000002CLL, 0x800000020B45F550);
  CFNotificationCenterAddObserver(v30, v17, @objc closure #1 in StandardActivityItemsDataSource.observeActivityPickerListChanged(), v31, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v17;
}

char *StandardActivityItemsDataSource.init(standardActivityTypeProvider:wheelchairUseProvider:swimmingSupported:activityMoveMode:occurrenceStore:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  v11 = OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_compoundObservers;
  *&v5[v11] = [objc_opt_self() weakObjectsHashTable];
  *&v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = 0;
  *&v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode] = a4;
  *&v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_standardActivityTypeProvider] = a1;
  *&v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider] = a2;
  swift_unknownObjectRetain();
  v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_isWheelchairUser] = [swift_unknownObjectRetain() isWheelchairUser];
  v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_swimmingSupported] = a3;
  *&v5[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_occurrenceStore] = a5;
  v31.receiver = v5;
  v31.super_class = type metadata accessor for StandardActivityItemsDataSource();
  v12 = a5;
  v13 = objc_msgSendSuper2(&v31, sel_init);
  v14 = *&v13[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_wheelchairUseProvider];
  v15 = v13;
  [v14 addObserver_];
  v16 = objc_allocWithZone(type metadata accessor for MultiModalityWidgetDataProvider());
  v17 = specialized MultiModalityWidgetDataProvider.init(standardActivityItemsDataSource:)(v15, v16);
  v18 = *&v15[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider];
  *&v15[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_multiModalityWidgetDataProvider] = v17;

  v19 = objc_opt_self();
  v20 = [v19 defaultCenter];
  [v20 addObserver:v15 selector:sel_smartGoalStoreUpdatedOccurrenceDataWithNotification_ name:@"NLSmartGoalStoreDidUpdateOccurrenceData" object:0];

  v21 = [v19 defaultCenter];
  [v21 addObserver:v15 selector:sel_smartGoalStoreDidShowActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidShowActivityType" object:0];

  v22 = [v19 defaultCenter];
  [v22 addObserver:v15 selector:sel_smartGoalStoreDidHideActivityTypeWithNotification_ name:@"NLSmartGoalStoreDidHideActivityType" object:0];

  v23 = CFNotificationCenterGetDarwinNotifyCenter();
  v24 = *MEMORY[0x277CBECE8];
  v25 = *MEMORY[0x277CCB790];
  v26 = kCFStringEncodingASCII.getter();
  v27 = CFStringCreateWithCString(v24, v25, v26);
  CFNotificationCenterAddObserver(v23, v15, @objc closure #1 in StandardActivityItemsDataSource.observeActivityMoveModeChanged(), v27, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v28 = CFNotificationCenterGetDarwinNotifyCenter();
  v29 = MEMORY[0x20F2E6C00](0xD00000000000002CLL, 0x800000020B45F550);
  CFNotificationCenterAddObserver(v28, v15, @objc closure #1 in StandardActivityItemsDataSource.observeActivityPickerListChanged(), v29, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v15;
}

id StandardActivityItemsDataSource.__deallocating_deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v3.receiver = v0;
  v3.super_class = type metadata accessor for StandardActivityItemsDataSource();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void StandardActivityItemsDataSource.smartGoalStoreUpdatedOccurrenceData(notification:)(void *a1)
{
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.activityPicker);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = [v3 name];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v13);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Standard: smart goal store updating Standard occurrence data, notification: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_7(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  StandardActivityItemsDataSource.updateCompoundObservers()();
}

void StandardActivityItemsDataSource.smartGoalStoreDidShowActivityType(notification:)(void *a1, const char *a2, char *a3, ...)
{
  v6 = [a1 userInfo];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v8 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v41), (v10 & 1) == 0))
  {

    outlined destroy of AnyHashable(v41);
LABEL_13:
    v42 = 0u;
    v43 = 0u;
    goto LABEL_14;
  }

  outlined init with copy of Any(*(v8 + 56) + 32 * v9, &v42);
  outlined destroy of AnyHashable(v41);

  if (!*(&v43 + 1))
  {
LABEL_14:
    _sypSgWOhTm_5(&v42, &_sypSgMd, &_sypSgMR);
    goto LABEL_15;
  }

  type metadata accessor for FIUIWorkoutActivityType();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v11 = v41[0];
  if ([v41[0] isStandard])
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.activityPicker);
    v13 = a1;
    v14 = v11;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      format = swift_slowAlloc();
      v41[0] = format;
      *v17 = 136315394;
      v18 = [v13 name];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v41);

      *(v17 + 4) = v22;
      *(v17 + 12) = 2112;
      *(v17 + 14) = v14;
      *v38 = v11;
      v23 = v14;
      _os_log_impl(&dword_20AEA4000, v15, v16, a2, v17, 0x16u);
      _sypSgWOhTm_5(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm_7(format);
      MEMORY[0x20F2E9420](format, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    StandardActivityItemsDataSource.updateCompoundObservers()();
    return;
  }

LABEL_16:
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static WOLog.activityPicker);
  v25 = v11;
  v26 = a1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    formata = a3;
    v31 = swift_slowAlloc();
    v41[0] = v31;
    *v29 = 136315394;
    v32 = [v26 name];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v41);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2112;
    *(v29 + 14) = v25;
    *v30 = v11;
    v37 = v25;
    _os_log_impl(&dword_20AEA4000, v27, v28, formata, v29, 0x16u);
    _sypSgWOhTm_5(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v30, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm_7(v31);
    MEMORY[0x20F2E9420](v31, -1, -1);
    MEMORY[0x20F2E9420](v29, -1, -1);
  }

  else
  {
  }
}

void StandardActivityItemsDataSource.activityMoveModeDidUpdate()(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_activityMoveMode] = FIActivityMoveModeUserDefault();
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000091, 0x800000020B46AE50, &v14);
    *(v6 + 12) = 2080;
    v8 = NLHKActivityMoveModeString();
    if (v8)
    {
      v9 = v8;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v10 = Optional.description.getter();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v14);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Standard: [%s] Activity move mode did update. activityMoveMode: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  StandardActivityItemsDataSource.updateCompoundObservers()();
}

double @objc closure #1 in StandardActivityItemsDataSource.observeActivityMoveModeChanged()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a2)
  {
    type metadata accessor for StandardActivityItemsDataSource();
    swift_unknownObjectRetain();
    if (swift_dynamicCastClass())
    {
      a6();
    }

    swift_unknownObjectRelease();
  }

  return result;
}

void StandardActivityItemsDataSource.activityPickerDidUpdate()()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.default);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000091, 0x800000020B46AE50, &v5);
    _os_log_impl(&dword_20AEA4000, v1, v2, "Standard: [%s] Activity picker did update", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_7(v4);
    MEMORY[0x20F2E9420](v4, -1, -1);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  StandardActivityItemsDataSource.updateCompoundObservers()();
}

id StandardActivityItemsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id specialized MultiModalityWidgetDataProvider.init(standardActivityItemsDataSource:)(uint64_t a1, char *a2)
{
  v17[3] = type metadata accessor for StandardActivityItemsDataSource();
  v17[4] = &protocol witness table for StandardActivityItemsDataSource;
  v17[0] = a1;
  v4 = OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_userDefaults;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = MEMORY[0x20F2E6C00](0xD00000000000001ELL, 0x800000020B46AEF0);
  v7 = [v5 initWithSuiteName_];

  *&a2[v4] = v7;
  outlined init with copy of CompoundActivityItemsDataSourceSync(v17, &a2[OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_standardActivityItemsDataSource]);
  *&a2[OBJC_IVAR____TtC11WorkoutCore31MultiModalityWidgetDataProvider_savedModalities] = MEMORY[0x277D84F90];
  v16.receiver = a2;
  v16.super_class = type metadata accessor for MultiModalityWidgetDataProvider();
  v8 = objc_msgSendSuper2(&v16, sel_init);
  v9 = one-time initialization token for workoutWidget;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.workoutWidget);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20AEA4000, v12, v13, "[MultiModalityWidget] subscribing to activity picker updates", v14, 2u);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  [*(a1 + OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_compoundObservers) addObject_];
  __swift_destroy_boxed_opaque_existential_0Tm_7(v17);
  return v10;
}

void specialized StandardActivityItemsDataSource.wheelchairUseCharacteristicCache(_:wheelchairUsageDidChange:)(char a1)
{
  v2 = v1;
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.activityPicker);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&dword_20AEA4000, v5, v6, "wheelchairUseCharacteristicCache did change: %{BOOL}d", v7, 8u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_isWheelchairUser) != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtC11WorkoutCore31StandardActivityItemsDataSource_isWheelchairUser) = a1 & 1;

    StandardActivityItemsDataSource.updateCompoundObservers()();
  }
}

uint64_t outlined init with copy of CompoundActivityItemsDataSourceSync(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for WorkoutVoiceMomentAnalyticsEvent(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutVoiceMomentAnalyticsEvent;
  if (!type metadata singleton initialization cache for WorkoutVoiceMomentAnalyticsEvent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutVoiceMomentAnalyticsEvent(uint64_t a1)
{
  type metadata accessor for WorkoutState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WorkoutVoiceMomentType();
    if (v2 <= 0x3F)
    {
      type metadata accessor for InferenceResult?(319);
      if (v3 <= 0x3F)
      {
        _sSdSgMaTm_1(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          _sSdSgMaTm_1(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Error?(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for InferenceResult?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for InferenceResult?)
  {
    type metadata accessor for InferenceResult();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for InferenceResult?);
    }
  }
}

void _sSdSgMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void type metadata accessor for Error?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Error?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Error?);
    }
  }
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy11WorkoutCore0D25VoiceMomentAnalyticsEventV0H3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLOSo8NSObjectCG_SS_AMts5NeverOTg504_s11d8Core0A25fghi14V0E3Key33_8527klmnopqr6LLOSo8s36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5t19OIegnrzr_TR04_s11a8v44A25cdef19V05buildeF0SDySSSo8p25CGyFSS_AFtAC0yZ37_8527hijklmnO12LLO_AFtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v32 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v2 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v6 = *(v2 + 36);
    v25 = v2 + 72;
    v26 = v1;
    v27 = v6;
    v28 = v2 + 64;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v29 = v5;
      v9 = *(*(v2 + 56) + 8 * v4);
      v10 = WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey.rawValue.getter(*(*(v2 + 48) + v4));
      v30 = v11;
      v31 = v10;
      v12 = v2;
      v14 = *(v32 + 16);
      v13 = *(v32 + 24);
      v15 = v9;
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v32 + 16) = v14 + 1;
      v16 = (v32 + 24 * v14);
      v16[4] = v31;
      v16[5] = v30;
      v16[6] = v15;
      v7 = 1 << *(v12 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v3 = v28;
      v17 = *(v28 + 8 * v8);
      if ((v17 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v12;
      v18 = *(v12 + 36);
      v6 = v27;
      if (v27 != v18)
      {
        goto LABEL_26;
      }

      v19 = v17 & (-2 << (v4 & 0x3F));
      if (v19)
      {
        v7 = __clz(__rbit64(v19)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = (v25 + 8 * v8);
        while (v21 < (v7 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            outlined consume of [WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey : NSObject].Index._Variant(v4, v27, 0);
            v7 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        outlined consume of [WorkoutVoiceMomentAnalyticsEvent.AnalyticsKey : NSObject].Index._Variant(v4, v27, 0);
      }

LABEL_4:
      v5 = v29 + 1;
      v4 = v7;
      if (v29 + 1 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t WorkoutVoiceMomentAnalyticsEvent.buildAnalyticsEvent()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence23AnnounceUtteranceSourceOSgMd, &_s19FitnessIntelligence23AnnounceUtteranceSourceOSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v140 = &v139 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence23AnnounceUtteranceResultVSgMd, &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v141 = &v139 - v7;
  v8 = type metadata accessor for AnnounceUtteranceResult();
  v9 = *(v8 - 8);
  v143 = v8;
  v144 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v142 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence15InferenceResultVSgMd, &_s19FitnessIntelligence15InferenceResultVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v146 = &v139 - v14;
  v15 = type metadata accessor for InferenceResult();
  v147 = *(v15 - 8);
  v148 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v145 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for WorkoutVoiceMomentType();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v139 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore0C25VoiceMomentAnalyticsEventV0G3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLO_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v24 = MEMORY[0x20F2E6C00](*(v1 + 16), *(v1 + 24));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v150 = v23;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 10, isUniquelyReferenced_nonNull_native);
  v26 = v150;
  v151 = v150;
  v27 = type metadata accessor for WorkoutVoiceMomentAnalyticsEvent(0);
  v149 = v1;
  v28 = WorkoutState.activityType.getter();
  [v28 effectiveTypeIdentifier];

  v29 = _HKWorkoutActivityNameForActivityType();
  if (v29)
  {
    v30 = v29;
    v139 = v22;
    v31 = v18;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35._object = 0x800000020B456540;
    v35._countAndFlagsBits = 0xD000000000000015;
    if (String.hasPrefix(_:)(v35))
    {
      v36 = String.count.getter();
      v37 = specialized Collection.dropFirst(_:)(v36, v32, v34);
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v32 = MEMORY[0x20F2E6D00](v37, v39, v41, v43);
      v34 = v44;
    }

    v18 = v31;
    v22 = v139;
  }

  else
  {
    v34 = 0x800000020B456520;
    v32 = 0xD000000000000010;
  }

  v45 = MEMORY[0x20F2E6C00](v32, v34);

  v46 = swift_isUniquelyReferenced_nonNull_native();
  v150 = v26;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, 0, v46);
  v47 = v150;
  v48 = WorkoutState.activityType.getter();
  [v48 isIndoor];

  type metadata accessor for NSString();
  v49 = NSString.init(stringLiteral:)();
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v150 = v47;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, 2, v50);
  v151 = v150;
  v51 = v149;
  (*(v19 + 16))(v22, v149 + v27[7], v18);
  v52 = (*(v19 + 88))(v22, v18);
  if (v52 == *MEMORY[0x277D0A468])
  {
    v53 = 0;
  }

  else if (v52 == *MEMORY[0x277D0A470])
  {
    v53 = 3;
  }

  else if (v52 == *MEMORY[0x277D0A478])
  {
    v53 = 1;
  }

  else
  {
    if (v52 != *MEMORY[0x277D0A460])
    {
      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002BLL, 0x800000020B46AF50, "WorkoutCore/WorkoutVoiceMomentAnalyticsEvent.swift", 50, 2, 165, 0);
      __break(1u);
      return result;
    }

    v53 = 2;
  }

  v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v55 = v151;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v150 = v55;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v54, 3, v56);
  v57 = v150;
  v58 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v59 = swift_isUniquelyReferenced_nonNull_native();
  v150 = v57;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v58, 19, v59);
  v60 = v150;
  v151 = v150;
  v61 = v51 + v27[9];
  v62 = *v61;
  v63 = *(v61 + 8);
  if ((v63 & 1) == 0)
  {
    v64 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, 4, v65);
    v60 = v150;
    v151 = v150;
  }

  v66 = v51 + v27[10];
  if ((*(v66 + 8) & 1) == 0)
  {
    v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, 5, v68);
    v60 = v150;
    v151 = v150;
  }

  v69 = *(v51 + v27[11]);
  if (v69 != 2)
  {
    v70 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v70, 15, v71);
    v60 = v150;
    v151 = v150;
  }

  v72 = *(v51 + v27[12]);
  if (v72 != 2)
  {
    v73 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, 16, v74);
    v60 = v150;
    v151 = v150;
  }

  v75 = *(v51 + v27[13]);
  if (v75 != 2)
  {
    v76 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v76, 17, v77);
    v60 = v150;
    v151 = v150;
  }

  v79 = v146;
  v78 = v147;
  outlined init with copy of InferenceResult?(v51 + v27[8], v146);
  if ((*(v78 + 48))(v79, 1, v148) == 1)
  {
    v80 = &_s19FitnessIntelligence15InferenceResultVSgMd;
    v81 = &_s19FitnessIntelligence15InferenceResultVSgMR;
LABEL_34:
    outlined destroy of InferenceResult?(v79, v80, v81);
    goto LABEL_45;
  }

  v82 = v145;
  (*(v78 + 32))();
  v83 = InferenceResult.systemVersion.getter();
  if (v84)
  {
    v85 = MEMORY[0x20F2E6C00](v83);
  }

  else
  {
    v85 = 0;
  }

  v86 = v143;
  specialized Dictionary.subscript.setter(v85, 6);
  v87 = InferenceResult.modelVersion.getter();
  if (v88)
  {
    v89 = MEMORY[0x20F2E6C00](v87);
  }

  else
  {
    v89 = 0;
  }

  specialized Dictionary.subscript.setter(v89, 7);
  InferenceResult.inferenceDuration.getter();
  v91 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v92 = v151;
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v150 = v92;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v91, 8, v93);
  v60 = v150;
  v151 = v150;
  v79 = v141;
  v94 = v82;
  InferenceResult.announceUtteranceResult.getter();
  v95 = v144;
  if ((*(v144 + 48))(v79, 1, v86) == 1)
  {
    (*(v147 + 8))(v94, v148);
    v80 = &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMd;
    v81 = &_s19FitnessIntelligence23AnnounceUtteranceResultVSgMR;
    goto LABEL_34;
  }

  (*(v95 + 32))(v142, v79, v86);
  AnnounceUtteranceResult.announceDuration.getter();
  v97 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v98 = v151;
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v150 = v98;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v97, 11, v99);
  v151 = v150;
  v100 = v140;
  AnnounceUtteranceResult.announceSource.getter();
  v101 = type metadata accessor for AnnounceUtteranceSource();
  v102 = *(v101 - 8);
  if ((*(v102 + 48))(v100, 1, v101) == 1)
  {
    outlined destroy of InferenceResult?(v100, &_s19FitnessIntelligence23AnnounceUtteranceSourceOSgMd, &_s19FitnessIntelligence23AnnounceUtteranceSourceOSgMR);
    v103 = 0;
  }

  else
  {
    v104 = AnnounceUtteranceSource.rawValue.getter();
    v106 = v105;
    (*(v102 + 8))(v100, v101);
    v107 = MEMORY[0x20F2E6C00](v104, v106);

    v103 = v107;
  }

  specialized Dictionary.subscript.setter(v103, 12);
  v108 = v142;
  AnnounceUtteranceResult.synthesisDuration.getter();
  v110 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v111 = v151;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v150 = v111;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v110, 9, v112);
  v60 = v150;
  v151 = v150;
  if ((v63 & 1) == 0)
  {
    InferenceResult.inferenceDuration.getter();
    v114 = v113 + v62;
    AnnounceUtteranceResult.synthesisDuration.getter();
    v116 = v114 + v115;
    AnnounceUtteranceResult.announceDuration.getter();
    v118 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v119 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v118, 13, v119);
    v60 = v150;
    v151 = v150;
  }

  v120 = AnnounceUtteranceResult.announceResult.getter();
  if (v120 != 2)
  {
    v121 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v121, 1, v122);
    v60 = v150;
    v151 = v150;
  }

  v123 = AnnounceUtteranceResult.synthesizedAudioLength.getter();
  if ((v124 & 1) == 0)
  {
    v125 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v125, 14, v126);
    v60 = v150;
    v151 = v150;
  }

  v127 = v147;
  (*(v144 + 8))(v108, v86);
  (*(v127 + 8))(v145, v148);
LABEL_45:
  v128 = WorkoutVoiceMomentAnalyticsEvent.announcementFailure.getter();
  if (v128 <= 5u)
  {
    if (v128 > 2u)
    {
      v129 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      if (v128 == 3)
      {
        v130 = 3;
      }

      else if (v128 == 4)
      {
        v130 = 4;
      }

      else
      {
        v130 = 5;
      }
    }

    else
    {
      v129 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      if (v128)
      {
        if (v128 == 1)
        {
          v130 = 1;
        }

        else
        {
          v130 = 2;
        }
      }

      else
      {
        v130 = v128;
      }
    }

    goto LABEL_68;
  }

  if (v128 <= 8u)
  {
    v129 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
    if (v128 == 6)
    {
      v130 = 6;
    }

    else if (v128 == 7)
    {
      v130 = 7;
    }

    else
    {
      v130 = 8;
    }

    goto LABEL_68;
  }

  if (v128 == 9)
  {
    v130 = 9;
    goto LABEL_64;
  }

  if (v128 == 10)
  {
    v130 = 100;
LABEL_64:
    v129 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
LABEL_68:
    v131 = [objc_allocWithZone(MEMORY[0x277CCABB0]) v129[88]];
    v132 = v151;
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v150 = v132;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v131, 18, v133);
    v60 = v150;
  }

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy11WorkoutCore0D25VoiceMomentAnalyticsEventV0H3Key33_8527EA2E8BFC8B0F8968C39360BA77E2LLOSo8NSObjectCG_SS_AMts5NeverOTg504_s11d8Core0A25fghi14V0E3Key33_8527klmnopqr6LLOSo8s36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5t19OIegnrzr_TR04_s11a8v44A25cdef19V05buildeF0SDySSSo8p25CGyFSS_AFtAC0yZ37_8527hijklmnO12LLO_AFtXEfU_Tf3nnnpf_nTf1cn_n(v60);
  v135 = v134;

  if (*(v135 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v136 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v136 = MEMORY[0x277D84F98];
  }

  v150 = v136;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v137, 1, &v150);

  return v150;
}