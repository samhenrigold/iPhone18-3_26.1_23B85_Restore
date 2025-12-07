uint64_t LocationPositionPublisher.$routePoints.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMd, &_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LocationPositionPublisher.$routePoints.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMd, &_s7Combine9PublishedV9PublisherVySay10WorkoutKit10RoutePointVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePoints;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LocationPositionPublisher.$routePoints.modify;
}

uint64_t LocationPositionPublisher.routePosition.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);
}

uint64_t key path getter for LocationPositionPublisher.routePosition : LocationPositionPublisher@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  v4 = v7;
  v5 = v8;
  *a2 = v6;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
  return result;
}

uint64_t key path setter for LocationPositionPublisher.routePosition : LocationPositionPublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t LocationPositionPublisher.routePosition.setter(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LocationPositionPublisher.routePosition.modify(uint64_t *a1))()
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
  return LocationPositionPublisher.routePosition.modify;
}

void LocationPositionPublisher.locations.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t LocationPositionPublisher.$locations.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for LocationPositionPublisher.$locations : LocationPositionPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for LocationPositionPublisher.$routePosition : LocationPositionPublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t LocationPositionPublisher.$routePosition.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LocationPositionPublisher.$routePosition.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore12RacePositionO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePosition;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LocationPositionPublisher.$routePosition.modify;
}

void LocationPositionPublisher.$locations.modify(uint64_t a1, char a2)
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

uint64_t LocationPositionPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  LocationPositionPublisher.init()();
  return v0;
}

uint64_t LocationPositionPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  v20 = *(v1 - 8);
  v21 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v20 - v13;
  v15 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__locations;
  v16 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo10CLLocationCGMd, &_sSaySo10CLLocationCGMR);
  Published.init(initialValue:)();
  (*(v11 + 32))(v0 + v15, v14, v10);
  v17 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePoints;
  v22 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10WorkoutKit10RoutePointVGMd, &_sSay10WorkoutKit10RoutePointVGMR);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v17, v9, v5);
  v18 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePosition;
  v22 = 0;
  v23 = 0;
  v24 = 1;
  Published.init(initialValue:)();
  (*(v20 + 32))(v0 + v18, v4, v21);
  return v0;
}

uint64_t LocationPositionPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__locations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePoints;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePosition;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t LocationPositionPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__locations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySaySo10CLLocationCGGMd, &_s7Combine9PublishedVySaySo10CLLocationCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePoints;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMd, &_s7Combine9PublishedVySay10WorkoutKit10RoutePointVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11WorkoutCore25LocationPositionPublisher__routePosition;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMd, &_s7Combine9PublishedVy11WorkoutCore12RacePositionOGMR);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LocationPositionPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t LocationPositionPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  LocationPositionPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher, &protocol conformance descriptor for Apple_Workout_Core_LocationPositionPublisher);
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_LocationPositionPublisher(v3, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  return v4;
}

void *LocationPositionPublisher.protobuf.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v55 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RoutePoint();
  v61 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  UnknownStorage.init()();
  v18 = *(v17 + 28);
  v20 = *(v5 + 56);
  v19 = v5 + 56;
  v59 = a1;
  v53 = v18;
  v54 = v20;
  v20(a1 + v18, 1, 1, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v58 = v2;
  static Published.subscript.getter(&v67);

  v21 = v67;
  if (v67 >> 62)
  {
    v49 = v67;
    v50 = __CocoaSet.count.getter();
    v21 = v49;
    v22 = v50;
  }

  else
  {
    v22 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v13;
  v56 = v19;
  v57 = v4;
  if (v22)
  {
    v23 = v21;
    v67 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      __break(1u);
      return result;
    }

    v63 = v22;
    v52 = v16;
    v25 = 0;
    v26 = v67;
    v27 = v23;
    v62 = v23 & 0xC000000000000001;
    v28 = v23;
    do
    {
      if (v62)
      {
        v29 = MEMORY[0x20F2E7A20](v25, v27);
      }

      else
      {
        v29 = *(v27 + 8 * v25 + 32);
      }

      v31 = v29;
      *(&v51 - 2) = MEMORY[0x28223BE20](v29, v30);
      lazy protocol witness table accessor for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_CLLocation and conformance Apple_Workout_Core_CLLocation, type metadata accessor for Apple_Workout_Core_CLLocation, &protocol conformance descriptor for Apple_Workout_Core_CLLocation);
      static Message.with(_:)();

      v67 = v26;
      v33 = *(v26 + 16);
      v32 = *(v26 + 24);
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v26 = v67;
      }

      v25 = (v25 + 1);
      *(v26 + 16) = v33 + 1;
      outlined init with take of Apple_Workout_Core_CLLocation(v12, v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v33, type metadata accessor for Apple_Workout_Core_CLLocation);
      v27 = v28;
    }

    while (v63 != v25);

    v13 = v60;
    v16 = v52;
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
  }

  *v59 = v26;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v67);

  v34 = *(v67 + 16);
  if (v34)
  {
    v35 = *(v61 + 16);
    v36 = *(v61 + 80);
    v52 = v67;
    v37 = v67 + ((v36 + 32) & ~v36);
    v62 = *(v61 + 72);
    v63 = v35;
    v38 = (v61 + 8);
    v39 = MEMORY[0x277D84F90];
    v61 += 16;
    (v35)(v16, v37, v13);
    while (1)
    {
      v40 = RoutePoint.dataRepresentation.getter();
      v42 = v41;
      (*v38)(v16, v13);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v39 + 2) + 1, 1, v39);
      }

      v44 = *(v39 + 2);
      v43 = *(v39 + 3);
      if (v44 >= v43 >> 1)
      {
        v39 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v39);
      }

      *(v39 + 2) = v44 + 1;
      v45 = &v39[16 * v44];
      *(v45 + 4) = v40;
      *(v45 + 5) = v42;
      v13 = v60;
      v37 += v62;
      if (!--v34)
      {
        break;
      }

      v63(v16, v37, v60);
    }
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v46 = v59;
  v59[1] = v39;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v67);

  v64 = v67;
  v65 = v68;
  v66 = v69;
  v47 = v55;
  RacePosition.protobuf.getter(v55);
  v48 = v53;
  _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_0(v46 + v53, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  outlined init with take of Apple_Workout_Core_CLLocation(v47, v46 + v48, type metadata accessor for Apple_Workout_Core_RacePosition);
  return v54(v46 + v48, 0, 1, v57);
}

uint64_t closure #1 in closure #1 in LocationPositionPublisher.protobuf.getter(double *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 coordinate];
  *a1 = v9;
  [a2 coordinate];
  *(a1 + 1) = v10;
  [a2 altitude];
  *(a1 + 2) = v11;
  [a2 horizontalAccuracy];
  *(a1 + 3) = v12;
  [a2 verticalAccuracy];
  *(a1 + 4) = v13;
  v14 = [a2 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v16 = v15;
  result = (*(v5 + 8))(v8, v4);
  *(a1 + 5) = v16;
  return result;
}

uint64_t Apple_Workout_Core_LocationPositionPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Workout_Core_RacePosition(0);
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v70 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit10RoutePointVSgMd, &_s10WorkoutKit10RoutePointVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v73 = &v67 - v14;
  v15 = type metadata accessor for RoutePoint();
  v76 = *(v15 - 8);
  v77 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v79 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = (&v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *v1;
  v29 = *(*v1 + 16);
  v30 = MEMORY[0x277D84F90];
  v74 = v1;
  v75 = a1;
  if (v29)
  {
    v84 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v31 = v19;
    v32 = v28 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v33 = *(v24 + 72);
    v34 = (v31 + 8);
    do
    {
      outlined init with copy of Apple_Workout_Core_CLLocation(v32, v27);
      v35 = *v27;
      v36 = v27[1];
      v37 = v27[2];
      v38 = v27[3];
      v39 = v27[4];
      Date.init(timeIntervalSinceReferenceDate:)();
      v40 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      isa = Date._bridgeToObjectiveC()().super.isa;
      [v40 initWithCoordinate:isa altitude:v35 horizontalAccuracy:v36 verticalAccuracy:v37 timestamp:{v38, v39}];

      (*v34)(v22, v18);
      outlined destroy of Apple_Workout_Core_LocationPositionPublisher(v27, type metadata accessor for Apple_Workout_Core_CLLocation);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v32 += v33;
      --v29;
    }

    while (v29);
    v30 = v84;
    v1 = v74;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v30;

  result = static Published.subscript.setter();
  v43 = v1[1];
  v80 = *(v43 + 16);
  v44 = v73;
  if (v80)
  {
    v45 = 0;
    v46 = v77;
    v47 = (v76 + 56);
    v78 = (v76 + 32);
    v48 = (v43 + 40);
    v49 = MEMORY[0x277D84F90];
    while (v45 < *(v43 + 16))
    {
      outlined copy of Data._Representation(*(v48 - 1), *v48);
      RoutePoint.init(from:)();
      (*v47)(v44, 0, 1, v46);
      v50 = *v78;
      (*v78)(v79, v44, v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
      }

      v52 = v49[2];
      v51 = v49[3];
      if (v52 >= v51 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v49);
      }

      v49[2] = v52 + 1;
      v53 = v49 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v52;
      v46 = v77;
      result = (v50)(v53, v79, v77);
      ++v45;
      v48 += 2;
      if (v80 == v45)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
LABEL_15:
    swift_getKeyPath();
    swift_getKeyPath();
    v84 = v49;

    static Published.subscript.setter();
    v54 = *(type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0) + 28);
    v55 = v74;
    v56 = v70;
    outlined init with copy of Apple_Workout_Core_RacePosition?(v74 + v54, v70);
    v57 = v72;
    v58 = *(v71 + 48);
    v59 = v58(v56, 1, v72);
    result = _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_0(v56, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
    if (v59 != 1)
    {
      v60 = v55 + v54;
      v61 = v68;
      outlined init with copy of Apple_Workout_Core_RacePosition?(v60, v68);
      if (v58(v61, 1, v57) == 1)
      {
        v62 = type metadata accessor for Apple_Workout_Core_RacePosition.OneOf_Type(0);
        v63 = v69;
        (*(*(v62 - 8) + 56))(v69, 1, 1, v62);
        UnknownStorage.init()();
        if (v58(v61, 1, v57) != 1)
        {
          _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_0(v61, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
        }
      }

      else
      {
        v63 = v69;
        outlined init with take of Apple_Workout_Core_CLLocation(v61, v69, type metadata accessor for Apple_Workout_Core_RacePosition);
      }

      Apple_Workout_Core_RacePosition.decoded.getter(&v84);
      outlined destroy of Apple_Workout_Core_LocationPositionPublisher(v63, type metadata accessor for Apple_Workout_Core_RacePosition);
      v64 = v84;
      v65 = v85;
      v66 = v86;
      swift_getKeyPath();
      swift_getKeyPath();
      v81 = v64;
      v82 = v65;
      v83 = v66;

      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t LocationPositionPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static LocationPositionPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance LocationPositionPublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  LocationPositionPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher, &protocol conformance descriptor for Apple_Workout_Core_LocationPositionPublisher);
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_LocationPositionPublisher(v3, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance LocationPositionPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static LocationPositionPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance LocationPositionPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static LocationPositionPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
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
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D25VoiceAvailabilityProviderC19UnavailabilityErrorOGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D10DeviceTypeOGMR);
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

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy11WorkoutCore17MetricPlatterTypeOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore17MetricPlatterTypeOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore16ZonesAccumulatorC5EntryOGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore16ZonesAccumulatorC5EntryOGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore26MeanDistributionByPositionC5debugyyF11DebugResultL_VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore21AnyActivityPickerItemVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore21AnyActivityPickerItemVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore14RaceChartPointVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMd, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore0D6DeviceVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DateVGMR, MEMORY[0x277CC9578]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy11WorkoutCore9ChronicleC5Entry33_4187E426563C81360BECB91D6C999F5FLLVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore9ChronicleC5Entry33_4187E426563C81360BECB91D6C999F5FLLVGMR, type metadata accessor for Chronicle.Entry);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_1(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_1(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
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

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized static LocationPositionPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for Apple_Workout_Core_LocationPositionPublisher(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocationPositionPublisher(0);
  v11 = swift_allocObject();
  LocationPositionPublisher.init()();
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LocationPositionPublisher and conformance Apple_Workout_Core_LocationPositionPublisher, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher, &protocol conformance descriptor for Apple_Workout_Core_LocationPositionPublisher);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_LocationPositionPublisher.decodeInto(publisher:)(v11);
    outlined destroy of Apple_Workout_Core_LocationPositionPublisher(v10, type metadata accessor for Apple_Workout_Core_LocationPositionPublisher);
  }

  return v11;
}

uint64_t type metadata accessor for LocationPositionPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocationPositionPublisher;
  if (!type metadata singleton initialization cache for LocationPositionPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LocationPositionPublisher(uint64_t a1)
{
  type metadata accessor for Published<[CLLocation]>(319, &lazy cache variable for type metadata for Published<[CLLocation]>, &_sSaySo10CLLocationCGMd, &_sSaySo10CLLocationCGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<[CLLocation]>(319, &lazy cache variable for type metadata for Published<[RoutePoint]>, &_sSay10WorkoutKit10RoutePointVGMd, &_sSay10WorkoutKit10RoutePointVGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<RacePosition>();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<[CLLocation]>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

void type metadata accessor for Published<RacePosition>()
{
  if (!lazy cache variable for type metadata for Published<RacePosition>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<RacePosition>);
    }
  }
}

uint64_t outlined init with copy of Apple_Workout_Core_CLLocation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_CLLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s11WorkoutCore06Apple_a1_B13_RacePositionVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_Core_RacePosition?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMd, &_s11WorkoutCore06Apple_a1_B13_RacePositionVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_LocationPositionPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t LowPowerModeMonitor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*LowPowerModeMonitor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return LowPowerModeMonitor.delegate.modify;
}

void LowPowerModeMonitor.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
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

uint64_t key path getter for LowPowerModeMonitor.lowPowerModeEnabled : LowPowerModeMonitor@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for LowPowerModeMonitor.lowPowerModeEnabled : LowPowerModeMonitor(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t LowPowerModeMonitor.lowPowerModeEnabled.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t LowPowerModeMonitor.lowPowerModeEnabled.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*LowPowerModeMonitor.lowPowerModeEnabled.modify(uint64_t *a1))()
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
  return LowPowerModeMonitor.lowPowerModeEnabled.modify;
}

void LowPowerModeMonitor.lowPowerModeEnabled.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for LowPowerModeMonitor.$lowPowerModeEnabled : LowPowerModeMonitor(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for LowPowerModeMonitor.$lowPowerModeEnabled : LowPowerModeMonitor(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t LowPowerModeMonitor.$lowPowerModeEnabled.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t LowPowerModeMonitor.$lowPowerModeEnabled.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*LowPowerModeMonitor.$lowPowerModeEnabled.modify(uint64_t *a1))(uint64_t a1, char a2)
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

  v10 = OBJC_IVAR____TtC11WorkoutCore19LowPowerModeMonitor__lowPowerModeEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return LowPowerModeMonitor.$lowPowerModeEnabled.modify;
}

void LowPowerModeMonitor.$lowPowerModeEnabled.modify(uint64_t a1, char a2)
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

uint64_t LowPowerModeMonitor.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LowPowerModeMonitor.init(delegate:)(a1, a2);
  return v4;
}

uint64_t LowPowerModeMonitor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  v4 = [objc_opt_self() processInfo];
  v5 = [v4 isLowPowerModeEnabled];

  swift_beginAccess();
  LOBYTE(v12) = v5;
  Published.init(initialValue:)();
  swift_endAccess();
  v6 = [objc_opt_self() defaultCenter];
  v7 = *MEMORY[0x277CCA5E8];
  v8 = swift_allocObject();
  swift_weakInit();
  v15 = partial apply for closure #1 in LowPowerModeMonitor.init(delegate:);
  v16 = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  ObjectType = &block_descriptor_9;
  v9 = _Block_copy(aBlock);

  v10 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  ObjectType = swift_getObjectType();
  swift_unknownObjectRelease();
  aBlock[0] = v10;
  swift_beginAccess();
  outlined assign with take of Any?(aBlock, v2 + 16);
  swift_endAccess();
  return v2;
}

uint64_t closure #1 in LowPowerModeMonitor.init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = partial apply for closure #1 in closure #1 in LowPowerModeMonitor.init(delegate:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_14_1;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #1 in closure #1 in LowPowerModeMonitor.init(delegate:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    LowPowerModeMonitor.lowPowerModeDidChange()();
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t LowPowerModeMonitor.deinit()
{
  swift_beginAccess();
  outlined init with copy of Any?(v0 + 16, &v5);
  if (v6)
  {
    outlined init with take of Any(&v5, &v7);
    v1 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_0(&v7, v8);
    [v1 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v7);
  }

  else
  {
    outlined destroy of Any?(&v5);
  }

  outlined destroy of Any?(v0 + 16);
  outlined destroy of weak LowPowerModeMonitorDelegate?(v0 + 48);
  v2 = OBJC_IVAR____TtC11WorkoutCore19LowPowerModeMonitor__lowPowerModeEnabled;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t LowPowerModeMonitor.__deallocating_deinit()
{
  swift_beginAccess();
  outlined init with copy of Any?(v0 + 16, &v5);
  if (v6)
  {
    outlined init with take of Any(&v5, &v7);
    v1 = [objc_opt_self() defaultCenter];
    __swift_project_boxed_opaque_existential_0(&v7, v8);
    [v1 removeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v7);
  }

  else
  {
    outlined destroy of Any?(&v5);
  }

  outlined destroy of Any?(v0 + 16);
  outlined destroy of weak LowPowerModeMonitorDelegate?(v0 + 48);
  v2 = OBJC_IVAR____TtC11WorkoutCore19LowPowerModeMonitor__lowPowerModeEnabled;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return swift_deallocClassInstance();
}

uint64_t LowPowerModeMonitor.lowPowerModeDidChange()()
{
  v1 = v0;
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isLowPowerModeEnabled];

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v16[0]) = v3;

  static Published.subscript.setter();
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.core);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16[0] = v8;
    *v7 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v15);

    if (v15)
    {
      v9 = 5457241;
    }

    else
    {
      v9 = 20302;
    }

    if (v15)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[LowPowerMode] lowPowerModeDidChange (lowPowerModeEnabled: %s)", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v15);

    (*(v13 + 8))(v15, ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance LowPowerModeMonitor@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for LowPowerModeMonitor(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LowPowerModeMonitor(uint64_t a1)
{
  result = type metadata singleton initialization cache for LowPowerModeMonitor;
  if (!type metadata singleton initialization cache for LowPowerModeMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for LowPowerModeMonitor(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void static PacerAlertsStore.save(pacerAlerts:activityType:)(uint64_t a1, void *a2)
{
  v52[4] = *MEMORY[0x277D85DE8];
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  v52[0] = a1;
  type metadata accessor for PacerAlerts();
  lazy protocol witness table accessor for type PacerAlerts and conformance PacerAlerts(&lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts, &protocol conformance descriptor for PacerAlerts);
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v19 = v18;

  v20 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  *&v51[0] = 0;
  v22 = [v20 propertyListWithData:isa options:0 format:0 error:v51];

  v23 = *&v51[0];
  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v24 = objc_opt_self();
    v25 = [v24 standardUserDefaults];
    v26 = MEMORY[0x20F2E6C00](0x656C417265636170, 0xEB00000000737472);
    v49 = v25;
    v27 = [v25 dictionaryForKey_];

    if (v27)
    {
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v30 = [a2 uniqueIdentifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    outlined init with copy of Any(v52, v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v51, v31, v33, isUniquelyReferenced_nonNull_native);

    v35 = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = MEMORY[0x20F2E6C00](0x656C417265636170, 0xEB00000000737472);
    [v49 setObject:v35 forKey:v36];

    v37 = MEMORY[0x20F2E6C00](0x656C417265636170, 0xEB00000000737472);
    [v24 fu:v37 backupStandardUserDefaultsKey:?];

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static WOLog.alerts);
    v39 = a2;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50 = v44;
      *&v51[0] = 0;
      *v42 = 138412546;
      *(v42 + 4) = v39;
      *v43 = v39;
      *(v42 + 12) = 2080;
      *(&v51[0] + 1) = 0xE000000000000000;
      v45 = v39;
      _StringGuts.grow(_:)(43);

      swift_beginAccess();
      if (*(a1 + 16))
      {
        v46 = 1702195828;
      }

      else
      {
        v46 = 0x65736C6166;
      }

      if (*(a1 + 16))
      {
        v47 = 0xE400000000000000;
      }

      else
      {
        v47 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v46, v47);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x800000020B458350, &v50);

      *(v42 + 14) = v48;
      _os_log_impl(&dword_20AEA4000, v40, v41, "Saved PacerAlerts to user defaults for activityType=%@ pacerAlerts=%s", v42, 0x16u);
      outlined destroy of NSObject?(v43);
      MEMORY[0x20F2E9420](v43, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x20F2E9420](v44, -1, -1);
      MEMORY[0x20F2E9420](v42, -1, -1);
    }

    outlined consume of Data._Representation(v17, v19);

    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v28 = v23;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v17, v19);
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.alerts);
    v5 = a2;
    v6 = v29;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v52[0] = v11;
      *v9 = 138412546;
      *(v9 + 4) = v5;
      *v10 = v5;
      *(v9 + 12) = 2080;
      *&v51[0] = v29;
      v12 = v5;
      v13 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v52);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_20AEA4000, v7, v8, "Failed to encode and save PacerAlerts for activityType=%@. error=%s", v9, 0x16u);
      outlined destroy of NSObject?(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t specialized static PacerAlertsStore.read(for:)(void *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = MEMORY[0x20F2E6C00](0x656C417265636170, 0xEB00000000737472);
  v4 = [v2 dictionaryForKey_];

  if (!v4)
  {
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.alerts);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_16;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20AEA4000, v21, v22, "PacerAlerts for all activity types not present in user defaults.", v23, 2u);
    v24 = v23;
    goto LABEL_15;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 uniqueIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_11;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_11:

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.alerts);
    v26 = a1;
    v21 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v21, v27))
    {
      goto LABEL_16;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v26;
    *v29 = v26;
    v30 = v26;
    _os_log_impl(&dword_20AEA4000, v21, v27, "PacerAlerts for activity type not present in user defaults. activityType=%@", v28, 0xCu);
    outlined destroy of NSObject?(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
    v24 = v28;
LABEL_15:
    MEMORY[0x20F2E9420](v24, -1, -1);
LABEL_16:

    type metadata accessor for PacerAlerts();
    result = swift_allocObject();
    *(result + 16) = 1;
    return result;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v10, v61);

  outlined init with take of Any(v61, &v62);
  v13 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(&v62, v63);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v61[0] = 0;
  v15 = [v13 dataWithPropertyList:v14 format:100 options:0 error:v61];
  swift_unknownObjectRelease();
  v16 = *&v61[0];
  if (v15)
  {
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    type metadata accessor for PacerAlerts();
    lazy protocol witness table accessor for type PacerAlerts and conformance PacerAlerts(&lazy protocol witness table cache variable for type PacerAlerts and conformance PacerAlerts, &protocol conformance descriptor for PacerAlerts);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    v59 = *&v61[0];
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static WOLog.alerts);

    v49 = a1;
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60 = v58;
      *&v61[0] = 0;
      *v52 = 136315394;
      *(&v61[0] + 1) = 0xE000000000000000;

      _StringGuts.grow(_:)(43);

      swift_beginAccess();
      if (*(v59 + 16))
      {
        v54 = 1702195828;
      }

      else
      {
        v54 = 0x65736C6166;
      }

      if (*(v59 + 16))
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v54, v55);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x800000020B458350, &v60);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v49;
      *v53 = v49;
      v57 = v49;
      _os_log_impl(&dword_20AEA4000, v50, v51, "Successfully read user pacerAlerts=%s for activityType=%@", v52, 0x16u);
      outlined destroy of NSObject?(v53);
      MEMORY[0x20F2E9420](v53, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x20F2E9420](v58, -1, -1);
      MEMORY[0x20F2E9420](v52, -1, -1);
    }

    outlined consume of Data._Representation(v17, v19);

    __swift_destroy_boxed_opaque_existential_0(&v62);
    return v59;
  }

  else
  {
    v32 = v16;
    v33 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static WOLog.alerts);
    v35 = a1;
    v36 = v33;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *&v61[0] = v41;
      *v39 = 138412546;
      *(v39 + 4) = v35;
      *v40 = v35;
      *(v39 + 12) = 2080;
      v42 = v35;
      v43 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, v61);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_20AEA4000, v37, v38, "Failed to decode PacerAlerts for activityType=%@. error=%s", v39, 0x16u);
      outlined destroy of NSObject?(v40);
      MEMORY[0x20F2E9420](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    else
    {
    }

    type metadata accessor for PacerAlerts();
    v47 = swift_allocObject();
    *(v47 + 16) = 1;
    __swift_destroy_boxed_opaque_existential_0(&v62);
    return v47;
  }
}

uint64_t getEnumTagSinglePayload for PacerAlertsStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PacerAlertsStore(_WORD *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type PacerAlerts and conformance PacerAlerts(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PacerAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t Apple_Workout_Core_GoalType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_GoalType(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_GoalType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_GoalType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_Goal.value.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKQuantity(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKQuantity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for Apple_Workout_Core_Goal.value : Apple_Workout_Core_Goal@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKQuantity(v7, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v7, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_Goal.value : Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_HKQuantity(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 24);
  outlined destroy of Apple_Workout_Core_HKQuantity?(a2 + v9, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_Goal.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 24);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v1 + v3, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_Goal.value.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKQuantity?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKQuantity(v8, v14);
  }

  return Apple_Workout_Core_Goal.value.modify;
}

uint64_t outlined init with copy of Apple_Workout_Core_HKQuantity(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_HKQuantity(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Workout_Core_Goal.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_HKQuantity?(v4, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_Goal.clearValue()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 24);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v0 + v1, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_Goal.requiredDistance.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + *(v7 + 28), v6);
  v8 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKQuantity(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v6, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_Goal.requiredDistance : Apple_Workout_Core_Goal@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a1 + *(v8 + 28), v7);
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_HKQuantity(v7, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v7, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_Goal.requiredDistance : Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_HKQuantity(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 28);
  outlined destroy of Apple_Workout_Core_HKQuantity?(a2 + v9, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_Goal.requiredDistance.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 28);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v1 + v3, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  outlined init with take of Apple_Workout_Core_HKQuantity(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_Goal.requiredDistance.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 28);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v14[2] = 0xE000000000000000;
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_HKQuantity?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_HKQuantity(v8, v14);
  }

  return Apple_Workout_Core_Goal.requiredDistance.modify;
}

void Apple_Workout_Core_Goal.value.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_HKQuantity((*a1)[5], v4);
    outlined destroy of Apple_Workout_Core_HKQuantity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    outlined init with take of Apple_Workout_Core_HKQuantity(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_HKQuantity(v5);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_HKQuantity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    outlined init with take of Apple_Workout_Core_HKQuantity(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_Goal.hasRequiredDistance.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v0 + *(v5 + 28), v4);
  v6 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_HKQuantity?(v4, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_Goal.clearRequiredDistance()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 28);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v0 + v1, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_Goal.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_Goal.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_Goal(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_Goal.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_Goal(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 28);

  return v7(v5, 1, 1, v4);
}

void Apple_Workout_Core_GoalPublisher.goal.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_GoalPublisher.goal.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_GoalPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_GoalPublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Workout_Core_Goal(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_GoalPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_GoalPublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_GoalPublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_Goal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          closure #3 in Apple_Workout_Core_Goal.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 2:
          closure #2 in Apple_Workout_Core_Goal.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
        case 1:
          lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_Goal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_Goal(0);
  type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #3 in Apple_Workout_Core_Goal.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_Goal(0);
  type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_Goal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_Goal.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in Apple_Workout_Core_Goal.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for Apple_Workout_Core_Goal(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType);
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_Goal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_HKQuantity(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_HKQuantity(v13);
}

uint64_t closure #2 in Apple_Workout_Core_Goal.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_Goal(0);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a1 + *(v14 + 28), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_HKQuantity?(v8, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_HKQuantity(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_HKQuantity and conformance Apple_Workout_Core_HKQuantity, type metadata accessor for Apple_Workout_Core_HKQuantity, &protocol conformance descriptor for Apple_Workout_Core_HKQuantity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_HKQuantity(v13);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_Goal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 28);

  return v8(v6, 1, 1, v5);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_Goal@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal, type metadata accessor for Apple_Workout_Core_Goal, &protocol conformance descriptor for Apple_Workout_Core_Goal);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_Goal(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal, type metadata accessor for Apple_Workout_Core_Goal, &protocol conformance descriptor for Apple_Workout_Core_Goal);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal, type metadata accessor for Apple_Workout_Core_Goal, &protocol conformance descriptor for Apple_Workout_Core_Goal);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_GoalType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t Apple_Workout_Core_GoalPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_GoalPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type Apple_Workout_Core_GoalType and conformance Apple_Workout_Core_GoalType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 12) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

Swift::Int Apple_Workout_Core_Goal.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_GoalPublisher@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_GoalPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_GoalPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_GoalPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher, type metadata accessor for Apple_Workout_Core_GoalPublisher, &protocol conformance descriptor for Apple_Workout_Core_GoalPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_GoalType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_GoalPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher, type metadata accessor for Apple_Workout_Core_GoalPublisher, &protocol conformance descriptor for Apple_Workout_Core_GoalPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_GoalPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher, type metadata accessor for Apple_Workout_Core_GoalPublisher, &protocol conformance descriptor for Apple_Workout_Core_GoalPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_Goal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_Goal.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v48 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = v45 - v26;
  v49 = a1;
  v28 = *a1;
  v29 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        if (v28 != 2)
        {
          goto LABEL_38;
        }
      }

      else if (v28 != 3)
      {
        goto LABEL_38;
      }
    }

    else if (v29)
    {
      if (v28 != 1)
      {
        goto LABEL_38;
      }
    }

    else if (v28)
    {
      goto LABEL_38;
    }
  }

  else if (v28 != v29)
  {
    goto LABEL_38;
  }

  v46 = v9;
  v47 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v30 = *(v47 + 24);
  v31 = *(v20 + 48);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v49 + v30, v27);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a2 + v30, &v27[v31]);
  v32 = *(v5 + 48);
  if (v32(v27, 1, v4) == 1)
  {
    if (v32(&v27[v31], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_HKQuantity?(v27, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  outlined init with copy of Apple_Workout_Core_HKQuantity?(v27, v19);
  if (v32(&v27[v31], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_HKQuantity(v19);
LABEL_19:
    v36 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
    v37 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
LABEL_36:
    v41 = v27;
    goto LABEL_37;
  }

  outlined init with take of Apple_Workout_Core_HKQuantity(&v27[v31], v12);
  if (*v19 != *v12 || (*(v19 + 1) == *(v12 + 1) ? (v38 = *(v19 + 2) == *(v12 + 2)) : (v38 = 0), !v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0))
  {
    outlined destroy of Apple_Workout_Core_HKQuantity(v12);
    outlined destroy of Apple_Workout_Core_HKQuantity(v19);
    v36 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd;
    v37 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR;
    goto LABEL_36;
  }

  v45[1] = *(v4 + 24);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v39 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_HKQuantity(v12);
  outlined destroy of Apple_Workout_Core_HKQuantity(v19);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v27, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  if ((v39 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  v33 = *(v47 + 28);
  v34 = *(v20 + 48);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v49 + v33, v24);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(a2 + v33, &v24[v34]);
  if (v32(v24, 1, v4) != 1)
  {
    v40 = v48;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v24, v48);
    if (v32(&v24[v34], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_HKQuantity(v40);
      goto LABEL_34;
    }

    v43 = v46;
    outlined init with take of Apple_Workout_Core_HKQuantity(&v24[v34], v46);
    if (*v40 != *v43 || (*(v40 + 8) != *(v43 + 8) || *(v40 + 16) != *(v43 + 16)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      outlined destroy of Apple_Workout_Core_HKQuantity(v43);
      outlined destroy of Apple_Workout_Core_HKQuantity(v40);
      v36 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd;
      v37 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR;
      v41 = v24;
      goto LABEL_37;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v44 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_HKQuantity(v43);
    outlined destroy of Apple_Workout_Core_HKQuantity(v40);
    outlined destroy of Apple_Workout_Core_HKQuantity?(v24, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
    if (v44)
    {
      goto LABEL_13;
    }

LABEL_38:
    v35 = 0;
    return v35 & 1;
  }

  if (v32(&v24[v34], 1, v4) != 1)
  {
LABEL_34:
    v36 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMd;
    v37 = &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSg_ADtMR;
    v41 = v24;
LABEL_37:
    outlined destroy of Apple_Workout_Core_HKQuantity?(v41, v36, v37);
    goto LABEL_38;
  }

  outlined destroy of Apple_Workout_Core_HKQuantity?(v24, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
LABEL_13:
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v35 & 1;
}

uint64_t specialized static Apple_Workout_Core_GoalPublisher.== infix(_:_:)(uint64_t *a1, uint64_t a2)
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

  if (*(a1 + 3) == *(a2 + 12))
  {
    type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_Goal and conformance Apple_Workout_Core_Goal(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_GoalType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_GoalType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_GoalType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B9_GoalTypeOGMd, &_sSay11WorkoutCore06Apple_a1_B9_GoalTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_GoalType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_GoalType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_GoalType(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_GoalType(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_GoalType(uint64_t result, int a2)
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

void type metadata completion function for Apple_Workout_Core_Goal(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_HKQuantity?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Apple_Workout_Core_HKQuantity?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Workout_Core_HKQuantity?)
  {
    type metadata accessor for Apple_Workout_Core_HKQuantity(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Workout_Core_HKQuantity?);
    }
  }
}

uint64_t type metadata completion function for Apple_Workout_Core_GoalPublisher(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_HKQuantity?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int HeartRateZone.Bound.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateZone.Bound()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateZone.Bound(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

void HeartRateZone.minimumSpan.getter()
{
  if (__OFADD__(*(v0 + 32), 1))
  {
    __break(1u);
  }
}

unsigned __int8 *HeartRateZone.configurableSpan(bound:)(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 32);
  v4 = v3 + v2;
  if (__OFADD__(v3, v2))
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v1 + 40);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = __OFSUB__(v7, v3);
  v8 = v7 - v3;
  if (v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v2 ^ 1;
  v6 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v6)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v11 = 230.0 - ((v10 - 1) * 4.0 + 10.0);
  if (v10 <= 0)
  {
    v11 = 230.0;
  }

  if (v4 * 4.0 + 50.0 > v11)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t Array<A>.replacing(index:with:)(uint64_t a1, uint64_t a2, unint64_t a3)
{

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (a3 & 0x8000000000000000) != 0 || (v7 = a3, (a3 & 0x4000000000000000) != 0))
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
  }

  if (a1 < 0)
  {
    goto LABEL_130;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = a2;

  if (a1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = a1;
      while (v9 <= a1)
      {
        v10 = v9 - 1;
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x20F2E7A20](v9 - 1, v7);
          v13 = MEMORY[0x20F2E7A20](v9, v7);
        }

        else
        {
          v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v11)
          {
            goto LABEL_90;
          }

          if (v9 >= v11)
          {
            goto LABEL_92;
          }

          v12 = v7 + 8 * v9;
          v3 = *(v12 + 24);
          v13 = *(v12 + 32);
        }

        v14 = *(v13 + 16);

        v15 = *(v3 + 32);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_91;
        }

        v16 = *(v3 + 40);
        if (v15 + 1 == v16)
        {
          v17 = -10.0;
        }

        else
        {
          v17 = -4.0;
        }

        v18 = v14 + v17;
        if (v18 >= *(v3 + 16))
        {
          v19 = *(v3 + 16);
        }

        else
        {
          v19 = v18;
        }

        type metadata accessor for HeartRateZone();
        result = swift_allocObject();
        v20 = floor(v19);
        v21 = floor(v14);
        if (v19 > v14 || v20 > v21)
        {
          goto LABEL_93;
        }

        v23 = result;
        *(result + 16) = v20;
        *(result + 24) = v21;
        *(result + 32) = v15;
        *(result + 40) = v16;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        }

        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_94;
        }

        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x18) = v23;

        --v9;
        if (!v10)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
    }

    else
    {
      v3 = a1;
      while (v3 <= a1)
      {
        v24 = v7 & 0xFFFFFFFFFFFFFF8;
        v25 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 - 1 >= v25)
        {
          goto LABEL_96;
        }

        v26 = v3;
        if (v3 >= v25)
        {
          goto LABEL_97;
        }

        v27 = v7 + 8 * v3;
        v28 = *(v27 + 24);
        v29 = *(v28 + 32);
        if (__OFADD__(v29, 1))
        {
          goto LABEL_98;
        }

        v30 = *(*(v27 + 32) + 16);
        v31 = *(v28 + 40);
        if (v29 + 1 == v31)
        {
          v32 = -10.0;
        }

        else
        {
          v32 = -4.0;
        }

        v33 = v30 + v32;
        if (v33 >= *(v28 + 16))
        {
          v34 = *(v28 + 16);
        }

        else
        {
          v34 = v33;
        }

        type metadata accessor for HeartRateZone();
        result = swift_allocObject();
        v35 = floor(v34);
        v36 = floor(v30);
        if (v34 > v30 || v35 > v36)
        {
          goto LABEL_99;
        }

        v38 = result;
        *(result + 16) = v35;
        *(result + 24) = v36;
        *(result + 32) = v29;
        *(result + 40) = v31;

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);

          v24 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }

        if (v3 - 1 >= *(v24 + 16))
        {
          goto LABEL_100;
        }

        *(v24 + 8 * v3 + 24) = v38;

        --v3;
        if (v26 == 1)
        {
          goto LABEL_56;
        }
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

LABEL_56:
  v3 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_137;
  }

  if (a3 >> 62)
  {
    goto LABEL_138;
  }

  result = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result < v3)
  {
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
  }

  else
  {
    while (v3 != result)
    {
      if (v3 >= result)
      {
        goto LABEL_140;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v39 = result - 1;
        while (1)
        {
          v40 = a1 + 1;
          if ((v7 & 0xC000000000000001) != 0)
          {
            v42 = MEMORY[0x20F2E7A20](a1 + 1, v7);
            result = a1;
            if (__OFSUB__(v40, 1))
            {
              goto LABEL_141;
            }

            v43 = MEMORY[0x20F2E7A20](a1, v7);
          }

          else
          {
            if ((v40 & 0x8000000000000000) != 0)
            {
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
              goto LABEL_131;
            }

            if (v40 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_124;
            }

            if (a1 == -1)
            {
              goto LABEL_126;
            }

            v41 = v7 + 8 * a1;
            v43 = *(v41 + 32);
            v42 = *(v41 + 40);
          }

          v44 = *(v43 + 24);

          v45 = *(v42 + 32);
          if (__OFADD__(v45, 1))
          {
            goto LABEL_125;
          }

          v46 = *(v42 + 40);
          if (v45 + 1 == v46)
          {
            v47 = 10.0;
          }

          else
          {
            v47 = 4.0;
          }

          v48 = v44 + v47;
          if (*(v42 + 24) > v48)
          {
            v49 = *(v42 + 24);
          }

          else
          {
            v49 = v48;
          }

          type metadata accessor for HeartRateZone();
          v50 = swift_allocObject();
          v51 = floor(v44);
          v52 = floor(v49);
          if (v44 > v49 || v51 > v52)
          {
            goto LABEL_127;
          }

          v54 = v50;
          *(v50 + 16) = v51;
          *(v50 + 24) = v52;
          *(v50 + 32) = v45;
          *(v50 + 40) = v46;
          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          }

          if (v3 < 0)
          {
            goto LABEL_128;
          }

          if (v40 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x28) = v54;

          if (v39 == ++a1)
          {
            return v7;
          }
        }
      }

LABEL_101:
      v55 = result - 1;
      while ((v3 & 0x8000000000000000) == 0)
      {
        v56 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((a1 + 1) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_133;
        }

        v57 = v7 + 8 * a1;
        v58 = *(v57 + 40);
        v59 = *(v58 + 32);
        if (__OFADD__(v59, 1))
        {
          goto LABEL_134;
        }

        v60 = *(*(v57 + 32) + 24);
        v61 = *(v58 + 40);
        if (v59 + 1 == v61)
        {
          v62 = 10.0;
        }

        else
        {
          v62 = 4.0;
        }

        v63 = v60 + v62;
        if (*(v58 + 24) > v63)
        {
          v64 = *(v58 + 24);
        }

        else
        {
          v64 = v63;
        }

        type metadata accessor for HeartRateZone();
        v65 = swift_allocObject();
        v66 = floor(v60);
        v67 = floor(v64);
        if (v60 > v64 || v66 > v67)
        {
          goto LABEL_135;
        }

        v69 = v65;
        *(v65 + 16) = v66;
        *(v65 + 24) = v67;
        *(v65 + 32) = v59;
        *(v65 + 40) = v61;

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);

          v56 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }

        if ((a1 + 1) >= *(v56 + 16))
        {
          goto LABEL_136;
        }

        *(v56 + 8 * a1 + 40) = v69;

        if (v55 == ++a1)
        {
          return v7;
        }
      }

LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      result = __CocoaSet.count.getter();
      if (result < v3)
      {
        goto LABEL_139;
      }
    }

    return v7;
  }

  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

unint64_t lazy protocol witness table accessor for type HeartRateZone.Bound and conformance HeartRateZone.Bound()
{
  result = lazy protocol witness table cache variable for type HeartRateZone.Bound and conformance HeartRateZone.Bound;
  if (!lazy protocol witness table cache variable for type HeartRateZone.Bound and conformance HeartRateZone.Bound)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZone.Bound and conformance HeartRateZone.Bound);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateZone.Bound(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateZone.Bound(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    __CocoaSet.count.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t static NLWorkoutDemoUtilities.workoutDemoSessionURL()@<X0>(uint64_t a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = MEMORY[0x20F2E6C00](v2, v4);

  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B458400);
    v10 = [v8 stringForKey_];

    if (v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(fileURLWithPath:)();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for URL();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, v11, 1, v12);
}

id static NLWorkoutDemoUtilities.workoutDemoSession()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v30 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v30 - v11;
  static NLWorkoutDemoUtilities.workoutDemoSessionURL()(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of URL?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v12, v3, v4);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.workoutVoice);
    (*(v5 + 16))(v9, v12, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v30[1] = v5;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      v31 = v30[0];
      *v17 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = *(v5 + 8);
      v21(v9, v4);
      v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v31);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_20AEA4000, v14, v15, "[DemoMode] Loading demo session config at url: %s", v17, 0xCu);
      v23 = v30[0];
      __swift_destroy_boxed_opaque_existential_0(v30[0]);
      MEMORY[0x20F2E9420](v23, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    else
    {

      v21 = *(v5 + 8);
      v21(v9, v4);
    }

    v24 = Data.init(contentsOf:options:)();
    v26 = v25;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type WorkoutDemoSession and conformance WorkoutDemoSession();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v24, v26);
    v28 = objc_allocWithZone(type metadata accessor for WorkoutDemoSessionBridge());
    v29 = WorkoutDemoSessionBridge.init(_:)(&v31);
    v21(v12, v4);
    return v29;
  }
}

uint64_t static NLWorkoutDemoUtilities.fitnessContextDemoConfigURL()@<X0>(uint64_t a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = MEMORY[0x20F2E6C00](v2, v4);

  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x20F2E6C00](0xD000000000000018, 0x800000020B458420);
    v10 = [v8 stringForKey_];

    if (v10)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      URL.init(fileURLWithPath:)();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v12 = type metadata accessor for URL();
  v13 = *(*(v12 - 8) + 56);

  return v13(a1, v11, 1, v12);
}

uint64_t static NLWorkoutDemoUtilities.fitnessContextDemoConfig()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v31 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v31 - v13;
  static NLWorkoutDemoUtilities.fitnessContextDemoConfigURL()(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of URL?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v28 = 1;
  }

  else
  {
    (*(v7 + 32))(v14, v5, v6);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    v16 = __swift_project_value_buffer(v15, static WOLog.workoutVoice);
    (*(v7 + 16))(v11, v14, v6);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v34 = a1;
      v20 = v19;
      v32 = swift_slowAlloc();
      v35 = v32;
      *v20 = 136315138;
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v33 = v16;
      v23 = v22;
      v24 = *(v7 + 8);
      v24(v11, v6);
      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v35);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_20AEA4000, v17, v18, "[DemoMode] Loading fitness context demo config at url: %s", v20, 0xCu);
      v26 = v32;
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x20F2E9420](v26, -1, -1);
      v27 = v20;
      a1 = v34;
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    else
    {

      v24 = *(v7 + 8);
      v24(v11, v6);
    }

    static FitnessContextDemoConfig.load(from:)();
    v24(v14, v6);
    v28 = 0;
  }

  v29 = type metadata accessor for FitnessContextDemoConfig();
  return (*(*(v29 - 8) + 56))(a1, v28, 1, v29);
}

unint64_t static NLWorkoutDemoUtilities.estimatedCalories(for:duration:distance:)(uint64_t a1, objc_class *a2, Swift::Double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithWorkoutActivityType_];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for healthStore != -1)
  {
    swift_once();
  }

  v5.value.super.isa = a2;
  v7 = FIUIWorkoutActivityType.estimatedCalories(healthStore:duration:distance:)(static WorkoutCoreInjector.healthStore, a3, v5);

  return v7;
}

id static NLWorkoutDemoUtilities.demoActivityRingProgressProvider()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence0A17ContextDemoConfigVSgMd, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v19 - v2;
  v4 = type metadata accessor for FitnessContextDemoConfig();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v19 - v11;
  static NLWorkoutDemoUtilities.fitnessContextDemoConfig()(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of URL?(v3, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMd, &_s19FitnessIntelligence0A17ContextDemoConfigVSgMR);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v12, v3, v4);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.workoutVoice);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_20AEA4000, v15, v16, "[DemoMode] Using demo activity ring progress provider", v17, 2u);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    (*(v5 + 16))(v9, v12, v4);
    v18 = specialized NLActivityDemoRingProgressProvider.__allocating_init(config:)(v9);
    (*(v5 + 8))(v12, v4);
    return v18;
  }
}

id NLWorkoutDemoUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NLWorkoutDemoUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLWorkoutDemoUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NLWorkoutDemoUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for NLWorkoutDemoUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static NLWorkoutDemoUtilities.shoulOverrideVoiceAvailabilityState()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v23 - v2;
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale.LanguageCode();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![objc_opt_self() isRunningInStoreDemoMode])
  {
    return 0;
  }

  static Locale.current.getter();
  Locale.language.getter();
  (*(v10 + 8))(v13, v9);
  Locale.Language.languageCode.getter();
  (*(v5 + 8))(v8, v4);
  if ((*(v15 + 48))(v3, 1, v14) != 1)
  {
    v20 = (*(v15 + 32))(v18, v3, v14);
    if (MEMORY[0x20F2E4850](v20) == 28261 && v21 == 0xE200000000000000)
    {

      (*(v15 + 8))(v18, v14);
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      (*(v15 + 8))(v18, v14);
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  outlined destroy of URL?(v3, &_s10Foundation6LocaleV12LanguageCodeVSgMd, &_s10Foundation6LocaleV12LanguageCodeVSgMR);
  return 0;
}

unint64_t lazy protocol witness table accessor for type WorkoutDemoSession and conformance WorkoutDemoSession()
{
  result = lazy protocol witness table cache variable for type WorkoutDemoSession and conformance WorkoutDemoSession;
  if (!lazy protocol witness table cache variable for type WorkoutDemoSession and conformance WorkoutDemoSession)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDemoSession and conformance WorkoutDemoSession);
  }

  return result;
}

uint64_t specialized static NLWorkoutDemoUtilities.defaultWorkoutVoiceAssets(selecting:)(uint64_t a1)
{
  v80 = a1;
  v79 = type metadata accessor for AudioSynthesisVoiceAsset.DownloadStatus();
  v85 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v1);
  v78 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSg_ADtMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSg_ADtMR);
  MEMORY[0x28223BE20](v77, v3);
  v5 = &v60 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v76 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v82 = &v60 - v11;
  v12 = type metadata accessor for AudioSynthesisVoice();
  v13 = *(v12 - 8);
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v12, v15);
  v62 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v87 = &v60 - v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_19FitnessIntelligence19AudioSynthesisVoiceV7elementtMd, &_sSi6offset_19FitnessIntelligence19AudioSynthesisVoiceV7elementtMR);
  v21 = MEMORY[0x28223BE20](v74, v20);
  v86 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v73 = &v60 - v24;
  v72 = type metadata accessor for AudioSynthesisVoiceAsset();
  v25 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v26);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19FitnessIntelligence19AudioSynthesisVoiceVGMd, &_ss23_ContiguousArrayStorageCy19FitnessIntelligence19AudioSynthesisVoiceVGMR);
  v29 = *(v13 + 72);
  v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v61 = swift_allocObject();
  v31 = v61 + v30;
  AudioSynthesisVoice.init(name:language:)();
  v69 = v29;
  AudioSynthesisVoice.init(name:language:)();
  AudioSynthesisVoice.init(name:language:)();
  v88 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v32 = 0;
  v33 = v88;
  v34 = *(v14 + 16);
  v14 += 16;
  v68 = v34;
  v81 = (v14 + 16);
  v67 = (v14 + 40);
  v35 = (v14 + 32);
  v75 = v14;
  v63 = (v14 - 8);
  v66 = *MEMORY[0x277D0A530];
  v65 = (v85 + 104);
  v71 = v25;
  v64 = v25 + 32;
  v60 = v31;
  v36 = v31;
  v70 = v28;
  do
  {
    v85 = v33;
    v37 = v74;
    v38 = *(v74 + 48);
    v39 = v32;
    v40 = v35;
    v41 = v73;
    v83 = v36;
    v42 = v68;
    (v68)(&v73[v38]);
    v43 = v86;
    v84 = v39;
    *v86 = v39;
    v44 = *(v37 + 48);
    v45 = *v81;
    v46 = &v41[v38];
    v35 = v40;
    (*v81)(&v43[v44], v46, v12);
    v42(v87, &v43[v44], v12);
    v47 = &v43[v44];
    v48 = v82;
    v42(v82, v47, v12);
    (*v67)(v48, 0, 1, v12);
    v49 = *(v77 + 48);
    outlined init with copy of AudioSynthesisVoice?(v80, v5);
    outlined init with copy of AudioSynthesisVoice?(v48, &v5[v49]);
    v50 = *v40;
    if ((*v40)(v5, 1, v12) == 1)
    {
      outlined destroy of URL?(v48, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
      v51 = v50(&v5[v49], 1, v12);
      v52 = v70;
      v53 = v84;
      if (v51 == 1)
      {
        outlined destroy of URL?(v5, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    outlined init with copy of AudioSynthesisVoice?(v5, v76);
    if (v50(&v5[v49], 1, v12) == 1)
    {
      outlined destroy of URL?(v82, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
      (*v63)(v76, v12);
      v52 = v70;
      v53 = v84;
LABEL_7:
      outlined destroy of URL?(v5, &_s19FitnessIntelligence19AudioSynthesisVoiceVSg_ADtMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSg_ADtMR);
      goto LABEL_9;
    }

    v54 = v62;
    v45(v62, &v5[v49], v12);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type AudioSynthesisVoice and conformance AudioSynthesisVoice, MEMORY[0x277D0A278], MEMORY[0x277D0A288]);
    v55 = v76;
    dispatch thunk of static Equatable.== infix(_:_:)();
    v56 = *v63;
    (*v63)(v54, v12);
    outlined destroy of URL?(v82, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
    v56(v55, v12);
    outlined destroy of URL?(v5, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
    v52 = v70;
    v53 = v84;
LABEL_9:
    (*v65)(v78, v66, v79);
    AudioSynthesisVoiceAsset.init(voice:userSelected:downloadStatus:)();
    outlined destroy of URL?(v86, &_sSi6offset_19FitnessIntelligence19AudioSynthesisVoiceV7elementtMd, &_sSi6offset_19FitnessIntelligence19AudioSynthesisVoiceV7elementtMR);
    v33 = v85;
    v88 = v85;
    v58 = *(v85 + 16);
    v57 = *(v85 + 24);
    if (v58 >= v57 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
      v33 = v88;
    }

    v32 = v53 + 1;
    *(v33 + 16) = v58 + 1;
    (*(v71 + 32))(v33 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v58, v52, v72);
    v36 = v83 + v69;
  }

  while (v32 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v33;
}

uint64_t outlined init with copy of AudioSynthesisVoice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence19AudioSynthesisVoiceVSgMd, &_s19FitnessIntelligence19AudioSynthesisVoiceVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id NLSessionActivityGoal.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v45 - v11);
  *a1 = 0;
  *(a1 + 8) = 1;
  v13 = type metadata accessor for Apple_Workout_Core_Goal(0);
  UnknownStorage.init()();
  v14 = *(v13 + 24);
  v15 = *(v5 + 56);
  v15(a1 + v14, 1, 1, v4);
  v47 = *(v13 + 28);
  v48 = v15;
  v15(a1 + v47, 1, 1, v4);
  v16 = [v2 goalTypeIdentifier];
  v17 = 0;
  if (v16 <= 3)
  {
    v17 = qword_20B42BCC0[v16];
  }

  *a1 = v17;
  *(a1 + 8) = 1;
  v18 = [v2 value];
  v19 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
  if (v18)
  {
    v20 = v18;
    UnknownStorage.init()();
    v21 = [v20 _unit];
    v22 = [v21 unitString];
    v46 = v14;
    v23 = v2;
    v24 = v22;

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v9;
    v28 = v27;

    v2 = v23;
    v12[1] = v25;
    v12[2] = v28;
    v9 = v26;
    v19 = 0x1FB6FE000;
    v29 = [v20 _unit];
    [v20 doubleValueForUnit_];
    v31 = v30;

    *v12 = v31;
    outlined init with copy of Apple_Workout_Core_HKQuantity(v12, v9);
    v32 = v46;
    outlined destroy of Apple_Workout_Core_HKQuantity?(a1 + v46);
    outlined init with take of Apple_Workout_Core_HKQuantity(v9, a1 + v32);
    v48(a1 + v32, 0, 1, v4);
    outlined destroy of Apple_Workout_Core_HKQuantity(v12);
  }

  v33 = v19;
  result = [v2 requiredDistance];
  if (result)
  {
    v35 = result;
    UnknownStorage.init()();
    v36 = [v35 _unit];
    v37 = [v36 (v33 + 2936)];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v12[1] = v38;
    v12[2] = v40;
    v41 = [v35 &selRef_isWorkoutPickerFitnessJrModeEnabled + 7];
    [v35 doubleValueForUnit_];
    v43 = v42;

    *v12 = v43;
    outlined init with copy of Apple_Workout_Core_HKQuantity(v12, v9);
    v44 = v47;
    outlined destroy of Apple_Workout_Core_HKQuantity?(a1 + v47);
    outlined init with take of Apple_Workout_Core_HKQuantity(v9, a1 + v44);
    v48(a1 + v44, 0, 1, v4);
    return outlined destroy of Apple_Workout_Core_HKQuantity(v12);
  }

  return result;
}

id Apple_Workout_Core_Goal.decoded.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v81 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5, v7);
  v78 = (&v72 - v9);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v73 = (&v72 - v12);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v72 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v79 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v74 = &v72 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v72 - v25;
  v28 = MEMORY[0x28223BE20](v24, v27);
  v72 = &v72 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v72 - v32;
  MEMORY[0x28223BE20](v31, v34);
  v36 = &v72 - v35;
  v37 = *(v0 + 8);
  v84 = *v0;
  v85 = v37;
  v83 = Apple_Workout_Core_GoalType.decoded.getter();
  v82 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v38 = *(v82 + 24);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v38, v36);
  v41 = *(v3 + 48);
  v39 = v3 + 48;
  v40 = v41;
  v42 = v41(v36, 1, v2);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v36);
  v43 = 0;
  if (v42 != 1)
  {
    v80 = v1;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v38, v33);
    v44 = v40(v33, 1, v2);
    v76 = v2;
    v77 = v40;
    v75 = v39;
    if (v44 == 1)
    {
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0xE000000000000000;
      UnknownStorage.init()();
      v45 = v40(v33, 1, v2);
      v46 = v73;
      if (v45 != 1)
      {
        outlined destroy of Apple_Workout_Core_HKQuantity?(v33);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_HKQuantity(v33, v15);
      v46 = v73;
    }

    v47 = v15[1];
    v48 = v15[2];

    outlined destroy of Apple_Workout_Core_HKQuantity(v15);
    v49 = MEMORY[0x20F2E6C00](v47, v48);

    v50 = [objc_opt_self() unitFromString_];

    v51 = v72;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v80 + v38, v72);
    v53 = v76;
    v52 = v77;
    if (v77(v51, 1, v76) == 1)
    {
      *v46 = 0.0;
      v46[1] = 0.0;
      v46[2] = -2.68156159e154;
      UnknownStorage.init()();
      if (v52(v51, 1, v53) != 1)
      {
        outlined destroy of Apple_Workout_Core_HKQuantity?(v51);
      }
    }

    else
    {
      outlined init with take of Apple_Workout_Core_HKQuantity(v51, v46);
    }

    v54 = *v46;
    outlined destroy of Apple_Workout_Core_HKQuantity(v46);
    v55 = [objc_opt_self() quantityWithUnit:v50 doubleValue:v54];

    v43 = v55;
    v1 = v80;
    v2 = v76;
    v40 = v77;
  }

  v56 = *(v82 + 28);
  outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v56, v26);
  v57 = v40(v26, 1, v2);
  outlined destroy of Apple_Workout_Core_HKQuantity?(v26);
  if (v57 == 1)
  {
    v58 = 0;
  }

  else
  {
    v59 = v74;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v56, v74);
    if (v40(v59, 1, v2) == 1)
    {
      v60 = v78;
      *v78 = 0;
      v60[1] = 0;
      v60[2] = 0xE000000000000000;
      UnknownStorage.init()();
      if (v40(v59, 1, v2) != 1)
      {
        outlined destroy of Apple_Workout_Core_HKQuantity?(v59);
      }
    }

    else
    {
      v60 = v78;
      outlined init with take of Apple_Workout_Core_HKQuantity(v59, v78);
    }

    v61 = v60[1];
    v62 = v60[2];

    outlined destroy of Apple_Workout_Core_HKQuantity(v60);
    v63 = MEMORY[0x20F2E6C00](v61, v62);

    v64 = [objc_opt_self() unitFromString_];

    v65 = v79;
    outlined init with copy of Apple_Workout_Core_HKQuantity?(v1 + v56, v79);
    if (v40(v65, 1, v2) == 1)
    {
      v66 = v81;
      *v81 = 0.0;
      v66[1] = 0.0;
      v66[2] = -2.68156159e154;
      UnknownStorage.init()();
      if (v40(v65, 1, v2) != 1)
      {
        outlined destroy of Apple_Workout_Core_HKQuantity?(v65);
      }
    }

    else
    {
      v66 = v81;
      outlined init with take of Apple_Workout_Core_HKQuantity(v65, v81);
    }

    v67 = *v66;
    outlined destroy of Apple_Workout_Core_HKQuantity(v66);
    v68 = [objc_opt_self() quantityWithUnit:v64 doubleValue:v67];

    v58 = v68;
  }

  v69 = objc_allocWithZone(MEMORY[0x277D0A838]);
  v70 = [v69 initWithGoalTypeIdentifier:v83 value:v43 requiredDistance:v58];

  return v70;
}

uint64_t Apple_Workout_Core_GoalType.decoded.getter()
{
  v1 = *v0;
  if (v0[1])
  {
    return qword_20B42BCC0[v1];
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.core);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v1;
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  return 0;
}

uint64_t outlined destroy of Apple_Workout_Core_HKQuantity?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMd, &_s11WorkoutCore06Apple_a1_B11_HKQuantityVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static VoiceFeedbackUtilities.fallback(for:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for languageFallbacks != -1)
  {
    swift_once();
  }

  v4 = static VoiceFeedbackUtilities.languageFallbacks;
  if (*(static VoiceFeedbackUtilities.languageFallbacks + 2))
  {
    v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v6)
    {
      a1 = *(v4[7] + 16 * v5);
    }
  }

  return a1;
}

uint64_t one-time initialization function for languageFallbacks()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for languageFallbacks);
  result = outlined destroy of (String, String)(&unk_2822419A0);
  static VoiceFeedbackUtilities.languageFallbacks = v0;
  return result;
}

double static VoiceFeedbackUtilities.languageFallbacks.getter()
{
  if (one-time initialization token for languageFallbacks != -1)
  {
    swift_once();
  }

  return result;
}

id VoiceFeedbackUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VoiceFeedbackUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VoiceFeedbackUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VoiceFeedbackUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for VoiceFeedbackUtilities();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static VoiceFeedbackUtilities.appVoiceLanguageId.getter()
{
  v0 = specialized static Locale.appLanguageId.getter();
  v2 = specialized Collection.prefix(_:)(2, v0, v1);
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = MEMORY[0x20F2E6D00](v2, v4, v6, v8);
  v11 = v10;

  if (one-time initialization token for languageFallbacks != -1)
  {
    swift_once();
  }

  v12 = static VoiceFeedbackUtilities.languageFallbacks;
  if (*(static VoiceFeedbackUtilities.languageFallbacks + 2))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v11);
    if (v14)
    {
      v15 = v13;

      v16 = (v12[7] + 16 * v15);
      v9 = *v16;
      v11 = v16[1];
    }
  }

  v17 = static Locale.appendRegionCode(to:)(v9, v11);

  return v17;
}

uint64_t outlined destroy of (String, String)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path getter for WorkoutNotificationCenter.notification : WorkoutNotificationCenter@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for WorkoutNotificationCenter.notification : WorkoutNotificationCenter(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t WorkoutNotificationCenter.notification.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for WorkoutNotificationCenter.$notification : WorkoutNotificationCenter(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutNotificationCenter.$notification : WorkoutNotificationCenter(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore0D12NotificationCSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore0D12NotificationCSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutNotificationCenter.$notification.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WorkoutNotificationCenter.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A12NotificationCSgMd, &_s11WorkoutCore0A12NotificationCSgMR);
  Published.init(initialValue:)();
  *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_pendingNotifications) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationTTL) = 0x403E000000000000;
  return v0;
}

uint64_t WorkoutNotificationCenter.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter__notification;
  v8[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore0A12NotificationCSgMd, &_s11WorkoutCore0A12NotificationCSgMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_pendingNotifications) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer) = 0;
  *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationTTL) = 0x403E000000000000;
  return v0;
}

void WorkoutNotificationCenter.add(_:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v39[-v11];
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for OS_dispatch_queue();
  *v17 = static OS_dispatch_queue.main.getter();
  (*(v14 + 104))(v17, *MEMORY[0x277D85200], v13);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  static Date.now.getter();
  v19 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_createdAt;
  swift_beginAccess();
  (*(v5 + 16))(v9, &a1[v19], v4);
  Date.timeIntervalSince(_:)();
  v21 = v20;
  v22 = *(v5 + 8);
  v22(v9, v4);
  v22(v12, v4);
  if (v21 < 30.0)
  {
    if (one-time initialization token for dataLink == -1)
    {
LABEL_4:
      v23 = type metadata accessor for Logger();
      __swift_project_value_buffer(v23, static WOLog.dataLink);
      v24 = a1;
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&dword_20AEA4000, v25, v26, "Enqueue workout notification: %@", v27, 0xCu);
        outlined destroy of NSObject?(v28);
        MEMORY[0x20F2E9420](v28, -1, -1);
        MEMORY[0x20F2E9420](v27, -1, -1);
      }

      v30 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_pendingNotifications;
      swift_beginAccess();
      v31 = v24;
      MEMORY[0x20F2E6F30]();
      if (*((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v30) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static WOLog.dataLink);
  v33 = a1;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v37 = v33;
    v38 = v33;
    _os_log_impl(&dword_20AEA4000, v34, v35, "Dropping workout notification (TTL expired): %@", v36, 0xCu);
    outlined destroy of NSObject?(v37);
    MEMORY[0x20F2E9420](v37, -1, -1);
    MEMORY[0x20F2E9420](v36, -1, -1);
  }

LABEL_14:
  WorkoutNotificationCenter.processQueue()();
}

Swift::Void __swiftcall WorkoutNotificationCenter.dismissNotification()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8[1] = 0;

    static Published.subscript.setter();
    [*(v1 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer) invalidate];
    WorkoutNotificationCenter.processQueue()();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall WorkoutNotificationCenter.resetNotificationDismissalTimer()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(aBlock);

  v1 = aBlock[0];
  if (aBlock[0])
  {
    v2 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer;
    v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer);
    if (v3)
    {
      [v3 invalidate];
      v4 = objc_opt_self();
      v5 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
      swift_beginAccess();
      v6 = *&v1[v5];
      v7 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = partial apply for closure #1 in WorkoutNotificationCenter.resetNotificationDismissalTimer();
      aBlock[5] = v7;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
      aBlock[3] = &block_descriptor_10;
      v8 = _Block_copy(aBlock);

      v9 = [v4 scheduledTimerWithTimeInterval:0 repeats:v8 block:v6];

      _Block_release(v8);
      v1 = *(v0 + v2);
      *(v0 + v2) = v9;
    }
  }
}

void WorkoutNotificationCenter.processQueue()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(aBlock);

  v8 = aBlock[0];
  if (!aBlock[0])
  {
    v9 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_pendingNotifications;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (!(v10 >> 62))
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      goto LABEL_5;
    }

LABEL_13:
    if (!__CocoaSet.count.getter())
    {
      return;
    }

LABEL_5:
    swift_beginAccess();
    specialized RangeReplaceableCollection.removeFirst()();
    v12 = v11;
    swift_endAccess();
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static WOLog.dataLink);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_20AEA4000, v15, v16, "Display workout notification: %@", v17, 0xCu);
      outlined destroy of NSObject?(v18);
      MEMORY[0x20F2E9420](v18, -1, -1);
      MEMORY[0x20F2E9420](v17, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v14;
    v20 = v14;

    static Published.subscript.setter();
    v21 = objc_opt_self();
    v22 = OBJC_IVAR____TtC11WorkoutCore19WorkoutNotification_displayDuration;
    swift_beginAccess();
    v23 = *&v20[v22];
    v24 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in WorkoutNotificationCenter.processQueue();
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_19_0;
    v25 = _Block_copy(aBlock);

    v26 = [v21 scheduledTimerWithTimeInterval:0 repeats:v25 block:v23];

    _Block_release(v25);
    v8 = *(v1 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer);
    *(v1 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer) = v26;
  }
}

void specialized RangeReplaceableCollection.removeFirst()()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (__CocoaSet.count.getter())
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x20F2E7A20](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = __CocoaSet.count.getter();
LABEL_13:
      if (v3)
      {
        specialized Array.replaceSubrange<A>(_:with:)(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t closure #1 in WorkoutNotificationCenter.resetNotificationDismissalTimer()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    type metadata accessor for OS_dispatch_queue();
    *v6 = static OS_dispatch_queue.main.getter();
    (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
    v9 = _dispatchPreconditionTest(_:)();
    result = (*(v3 + 8))(v6, v2);
    if (v9)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v10 = 0;

      static Published.subscript.setter();
      [*(v8 + OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter_notificationDismissalTimer) invalidate];
      WorkoutNotificationCenter.processQueue()();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t WorkoutNotificationCenter.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter__notification;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t WorkoutNotificationCenter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore25WorkoutNotificationCenter__notification;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMd, &_s7Combine9PublishedVy11WorkoutCore0C12NotificationCSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutNotificationCenter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutNotificationCenter(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for WorkoutNotificationCenter(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutNotificationCenter;
  if (!type metadata singleton initialization cache for WorkoutNotificationCenter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutNotificationCenter(uint64_t a1)
{
  type metadata accessor for Published<WorkoutNotification?>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<WorkoutNotification?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<WorkoutNotification?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore0A12NotificationCSgMd, &_s11WorkoutCore0A12NotificationCSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<WorkoutNotification?>);
    }
  }
}

id NLActivityDemoRingProgressProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLActivityDemoRingProgressProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized NLActivityDemoRingProgressProvider.__allocating_init(config:)(uint64_t a1)
{
  v2 = type metadata accessor for FitnessContextDemoConfig.RingProgress();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCCFB0]) init];
  v49 = v7;
  v8 = objc_opt_self();
  v9 = [v8 largeCalorieUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.moveValue.getter();
  v11 = v10;
  v12 = *(v3 + 8);
  v48 = v2;
  v12(v6, v2);
  v13 = objc_opt_self();
  v14 = [v13 quantityWithUnit:v9 doubleValue:v11];

  [v7 setActiveEnergyBurned_];
  v15 = [v8 largeCalorieUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.moveGoal.getter();
  v17 = v16;
  v12(v6, v2);
  v47[0] = v12;
  v47[1] = v3 + 8;
  v18 = [v13 quantityWithUnit:v15 doubleValue:v17];

  v19 = v49;
  [v49 setActiveEnergyBurnedGoal_];

  v20 = [v8 countUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.standValue.getter();
  v22 = v21;
  v23 = v48;
  v12(v6, v48);
  v24 = [v13 quantityWithUnit:v20 doubleValue:v22];

  [v19 setAppleStandHours_];
  v25 = v8;
  v26 = [v8 countUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.standGoal.getter();
  v28 = v27;
  v29 = v47[0];
  (v47[0])(v6, v23);
  v30 = [v13 quantityWithUnit:v26 doubleValue:v28];

  [v19 setAppleStandHoursGoal_];
  v31 = v25;
  v32 = [v25 minuteUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.exerciseValue.getter();
  v34 = v33;
  v29(v6, v23);
  v35 = v29;
  v36 = [v13 quantityWithUnit:v32 doubleValue:v34];

  v37 = v49;
  [v49 setAppleExerciseTime_];

  v38 = [v31 minuteUnit];
  FitnessContextDemoConfig.todayRingProgress.getter();
  FitnessContextDemoConfig.RingProgress.exerciseGoal.getter();
  v40 = v39;
  v35(v6, v23);
  v41 = [v13 quantityWithUnit:v38 doubleValue:v40];

  [v37 setAppleExerciseTimeGoal_];
  v42 = type metadata accessor for NLActivityDemoRingProgressProvider();
  v43 = objc_allocWithZone(v42);
  *&v43[OBJC_IVAR____TtC11WorkoutCore34NLActivityDemoRingProgressProvider_activitySummary] = v37;
  v50.receiver = v43;
  v50.super_class = v42;
  v44 = objc_msgSendSuper2(&v50, sel_init);
  v45 = type metadata accessor for FitnessContextDemoConfig();
  (*(*(v45 - 8) + 8))(a1, v45);
  return v44;
}

uint64_t PowerMetricsPublisher.livePowerZones.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t PowerMetricsPublisher.currentPower.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path getter for PowerMetricsPublisher.currentPower : PowerMetricsPublisher@<X0>(uint64_t a4@<X8>)
{
  return key path getter for PowerMetricsPublisher.currentPower : PowerMetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  v6 = v8;
  *a4 = v7;
  *(a4 + 8) = v6;
  return result;
}

uint64_t (*PowerMetricsPublisher.currentPower.modify(uint64_t *a1))()
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
  return PowerMetricsPublisher.currentPower.modify;
}

uint64_t (*PowerMetricsPublisher.$currentPower.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__currentPower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerMetricsPublisher.$currentPower.modify;
}

uint64_t (*PowerMetricsPublisher.averagePower.modify(uint64_t *a1))()
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
  return PowerMetricsPublisher.averagePower.modify;
}

uint64_t (*PowerMetricsPublisher.$averagePower.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__averagePower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerMetricsPublisher.$averagePower.modify;
}

uint64_t key path setter for PowerMetricsPublisher.currentPower : PowerMetricsPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PowerMetricsPublisher.currentPower.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*PowerMetricsPublisher.thirtySecondAveragePower.modify(uint64_t *a1))()
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
  return PowerMetricsPublisher.thirtySecondAveragePower.modify;
}

uint64_t key path setter for PowerMetricsPublisher.$currentPower : PowerMetricsPublisher(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t PowerMetricsPublisher.$currentPower.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*PowerMetricsPublisher.$thirtySecondAveragePower.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySdSg_GMd, &_s7Combine9PublishedV9PublisherVySdSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__thirtySecondAveragePower;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerMetricsPublisher.$thirtySecondAveragePower.modify;
}

uint64_t key path getter for PowerMetricsPublisher.powerMeanDistributionByTime : PowerMetricsPublisher@<X0>(void *a4@<X8>)
{
  return key path getter for PowerMetricsPublisher.powerMeanDistributionByTime : PowerMetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  *a4 = v6;
  return result;
}

uint64_t (*PowerMetricsPublisher.powerMeanDistributionByTime.modify(uint64_t *a1))()
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
  return PowerMetricsPublisher.powerMeanDistributionByTime.modify;
}

uint64_t key path setter for PowerMetricsPublisher.$powerMeanDistributionByTime : PowerMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSdG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSdG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSdGGMd, &_s7Combine9PublishedVySDySiSdGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PowerMetricsPublisher.$powerMeanDistributionByTime.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSdG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSdG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSdGGMd, &_s7Combine9PublishedVySDySiSdGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PowerMetricsPublisher.$powerMeanDistributionByTime.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDySiSdG_GMd, &_s7Combine9PublishedV9PublisherVySDySiSdG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__powerMeanDistributionByTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSdGGMd, &_s7Combine9PublishedVySDySiSdGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerMetricsPublisher.$powerMeanDistributionByTime.modify;
}

uint64_t PowerMetricsPublisher.powerMeanDistributionByTime.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t key path setter for PowerMetricsPublisher.powerMeanDistributionByTime : PowerMetricsPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PowerMetricsPublisher.powerMeanDistributionByTime.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*PowerMetricsPublisher.powerChartData.modify(uint64_t *a1))()
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
  return PowerMetricsPublisher.powerChartData.modify;
}

uint64_t key path setter for PowerMetricsPublisher.$powerChartData : PowerMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PowerMetricsPublisher.$powerChartData.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PowerMetricsPublisher.$powerChartData.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__powerChartData;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerMetricsPublisher.$powerChartData.modify;
}

uint64_t key path getter for PowerMetricsPublisher.livePowerZones : PowerMetricsPublisher@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for PowerMetricsPublisher.livePowerZones : PowerMetricsPublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t PowerMetricsPublisher.livePowerZones.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*PowerMetricsPublisher.livePowerZones.modify(uint64_t *a1))()
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
  return PowerMetricsPublisher.livePowerZones.modify;
}

void PowerMetricsPublisher.currentPower.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t PowerMetricsPublisher.$currentPower.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for PowerMetricsPublisher.$currentPower : PowerMetricsPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for PowerMetricsPublisher.$livePowerZones : PowerMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F9PowerZoneCGSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F9PowerZoneCGSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PowerMetricsPublisher.$livePowerZones.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F9PowerZoneCGSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F9PowerZoneCGSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*PowerMetricsPublisher.$livePowerZones.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F9PowerZoneCGSg_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore9LiveZonesCyAF0F9PowerZoneCGSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__livePowerZones;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PowerMetricsPublisher.$livePowerZones.modify;
}

void PowerMetricsPublisher.$currentPower.modify(uint64_t a1, char a2)
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

uint64_t PowerMetricsPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  PowerMetricsPublisher.init()();
  return v0;
}

uint64_t PowerMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMR);
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v32 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v29 = &v27 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSdGGMd, &_s7Combine9PublishedVySDySiSdGGMR);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v27 - v14;
  *(v0 + 16) = 0;
  v16 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__currentPower;
  v35 = 0;
  v36 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  Published.init(initialValue:)();
  v17 = *(v12 + 32);
  v17(v0 + v16, v15, v11);
  v18 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__averagePower;
  v35 = 0;
  v36 = 1;
  Published.init(initialValue:)();
  v17(v0 + v18, v15, v11);
  v19 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__thirtySecondAveragePower;
  v35 = 0;
  v36 = 1;
  Published.init(initialValue:)();
  v17(v0 + v19, v15, v11);
  v20 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__powerMeanDistributionByTime;
  v21 = MEMORY[0x277D84F90];
  v35 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySiSdGMd, &_sSDySiSdGMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v20, v10, v28);
  v22 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__powerChartData;
  v35 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  v23 = v29;
  Published.init(initialValue:)();
  (*(v30 + 32))(v0 + v22, v23, v31);
  v24 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__livePowerZones;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGSgMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGSgMR);
  v25 = v32;
  Published.init(initialValue:)();
  (*(v33 + 32))(v0 + v24, v25, v34);
  return v0;
}

uint64_t PowerMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__currentPower;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__averagePower, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__thirtySecondAveragePower, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__powerMeanDistributionByTime;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSdGGMd, &_s7Combine9PublishedVySDySiSdGGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__powerChartData;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__livePowerZones;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t PowerMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__currentPower;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdSgGMd, &_s7Combine9PublishedVySdSgGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__averagePower, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__thirtySecondAveragePower, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__powerMeanDistributionByTime;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDySiSdGGMd, &_s7Combine9PublishedVySDySiSdGGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__powerChartData;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC11WorkoutCore21PowerMetricsPublisher__livePowerZones;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMd, &_s7Combine9PublishedVy11WorkoutCore9LiveZonesCyAD0E9PowerZoneCGSgGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance PowerMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t PowerMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PowerMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  return v4;
}

uint64_t PowerMetricsPublisher.protobuf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v83 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Date();
  v87 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v8);
  v91 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  v89 = *(v10 - 8);
  v90 = v10;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v95 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v96 = (&v80 - v16);
  MEMORY[0x28223BE20](v15, v17);
  v94 = &v80 - v18;
  v19 = MEMORY[0x277D84F90];
  *(a1 + 8) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a1 + 16) = v19;
  v20 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  UnknownStorage.init()();
  v21 = a1 + v20[8];
  *v21 = 0;
  *(v21 + 8) = 1;
  v22 = a1 + v20[9];
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = a1 + v20[10];
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = *(v5 + 56);
  v81 = v20[11];
  v85 = v4;
  v84 = v5 + 56;
  v82 = v24;
  v24(a1 + v81, 1, 1, v4);
  swift_beginAccess();
  v25 = *(v2 + 16);
  v93 = a1;
  *a1 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v98);

  if ((v99 & 1) == 0)
  {
    *v21 = v98;
    *(v21 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v98);

  if ((v99 & 1) == 0)
  {
    *v22 = v98;
    *(v22 + 8) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v98);

  if ((v99 & 1) == 0)
  {
    *v23 = v98;
    *(v23 + 8) = 0;
  }

  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v86 = v2;
  static Published.subscript.getter(&v98);

  v27 = 0;
  v28 = v98;
  v29 = v98 + 64;
  v30 = 1 << *(v98 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v98 + 64);
  v33 = (v30 + 63) >> 6;
  while (1)
  {
    if (!v32)
    {
      while (1)
      {
        v34 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        if (v34 >= v33)
        {
          break;
        }

        v32 = *(v29 + 8 * v34);
        ++v27;
        if (v32)
        {
          goto LABEL_17;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v98);

      KeyPath = v98;
      if (v98 >> 62)
      {
        goto LABEL_60;
      }

      v52 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        goto LABEL_61;
      }

LABEL_30:
      if (v52 >= 1)
      {
        v53 = 0;
        v54 = KeyPath & 0xC000000000000001;
        v88 = (v87 + 2);
        ++v87;
        v55 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v54)
          {
            v56 = MEMORY[0x20F2E7A20](v53, KeyPath);
          }

          else
          {
            v56 = *(KeyPath + 8 * v53 + 32);
          }

          v57 = v56;
          v58 = OBJC_IVAR___WOWorkoutChartDataElement_value;
          swift_beginAccess();
          if ((~*&v57[v58] & 0x7FF0000000000000) != 0)
          {
            v59 = KeyPath;
            v60 = v52;
            v61 = v90;
            v62 = v96;
            UnknownStorage.init()();
            v63 = v62 + *(v61 + 28);
            *v63 = 0;
            v63[8] = 1;
            v64 = v62 + *(v61 + 32);
            *v64 = 0;
            v64[8] = 1;
            v65 = OBJC_IVAR___WOWorkoutChartDataElement_date;
            swift_beginAccess();
            v66 = &v57[v65];
            KeyPath = v91;
            v67 = v92;
            (*v88)(v91, v66, v92);
            Date.timeIntervalSinceReferenceDate.getter();
            v69 = v68;
            v70 = v68;
            (*v87)(KeyPath, v67);
            if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_50;
            }

            if (v69 <= -2147483650.0)
            {
              goto LABEL_51;
            }

            if (v69 >= 2147483650.0)
            {
              goto LABEL_52;
            }

            *v96 = v69;
            v71 = *&v57[v58];
            if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_53;
            }

            if (v71 <= -2147483650.0)
            {
              goto LABEL_54;
            }

            if (v71 >= 2147483650.0)
            {
              goto LABEL_55;
            }

            v72 = v96;
            v96[1] = v71;
            v73 = v94;
            outlined init with take of Apple_Workout_Core_LiveZones(v72, v94, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
            outlined init with copy of Apple_Workout_Core_WorkoutChartDataElement(v73, v95, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55[2] + 1, 1, v55);
            }

            v52 = v60;
            v75 = v55[2];
            v74 = v55[3];
            if (v75 >= v74 >> 1)
            {
              v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v55);
            }

            outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v94, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
            v55[2] = v75 + 1;
            outlined init with take of Apple_Workout_Core_LiveZones(v95, v55 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v75, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
            *(v93 + 16) = v55;
            KeyPath = v59;
          }

          else
          {
          }

          if (v52 == ++v53)
          {
            goto LABEL_61;
          }
        }
      }

      __break(1u);
LABEL_65:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v34 = v27;
LABEL_17:
    v35 = (v34 << 9) | (8 * __clz(__rbit64(v32)));
    v36 = *(*(v28 + 48) + v35);
    if (v36 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v36 > 0x7FFFFFFF)
    {
      goto LABEL_57;
    }

    v37 = *(*(v28 + 56) + v35);
    v38 = v93;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    KeyPath = *(v38 + 8);
    v98 = KeyPath;
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36);
    v42 = *(KeyPath + 16);
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
      goto LABEL_58;
    }

    v46 = v41;
    if (*(KeyPath + 24) >= v45)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        KeyPath = &v98;
        v51 = v40;
        specialized _NativeDictionary.copy()();
        v40 = v51;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
      KeyPath = v98;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v36);
      if ((v46 & 1) != (v47 & 1))
      {
        goto LABEL_65;
      }
    }

    v32 &= v32 - 1;
    v48 = v98;
    if (v46)
    {
      *(*(v98 + 56) + 8 * v40) = v37;
    }

    else
    {
      *(v98 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      *(v48[6] + 4 * v40) = v36;
      *(v48[7] + 8 * v40) = v37;
      v49 = v48[2];
      v44 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v44)
      {
        goto LABEL_59;
      }

      v48[2] = v50;
    }

    *(v93 + 8) = v48;
    v27 = v34;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  v52 = __CocoaSet.count.getter();
  if (v52)
  {
    goto LABEL_30;
  }

LABEL_61:

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v97);

  if (v97)
  {
    v77 = v83;
    specialized LiveZones.protobuf.getter(v83);

    v78 = v93;
    v79 = v81;
    outlined destroy of Apple_Workout_Core_LiveZones?(v93 + v81, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    outlined init with take of Apple_Workout_Core_LiveZones(v77, v78 + v79, type metadata accessor for Apple_Workout_Core_LiveZones);
    return v82(v78 + v79, 0, 1, v85);
  }

  return result;
}

void specialized LiveZones.protobuf.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v37 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v29 - v9;
  v38 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 8) = 0;
  v14 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  UnknownStorage.init()();
  v15 = a1 + *(v14 + 28);
  *v15 = 0;
  *(v15 + 4) = 1;
  swift_beginAccess();
  v16 = *(v1 + 16);
  if (v16 >> 62)
  {
    goto LABEL_22;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v17)
  {
    while (v17 >= 1)
    {
      v30 = v15;
      v31 = v1;
      v32 = a1;
      v35 = v16 & 0xC000000000000001;
      v39 = (v4 + 7);

      v18 = 0;
      v4 = MEMORY[0x277D84F90];
      v33 = v17;
      v34 = v16;
      while (1)
      {
        if (v35)
        {
          v1 = MEMORY[0x20F2E7A20](v18, v16);
        }

        else
        {
          v1 = *(v16 + 8 * v18 + 32);
        }

        a1 = v38;
        UnknownStorage.init()();
        v15 = *(a1 + 24);
        v19 = *v39;
        (*v39)(&v13[v15], 1, 1, v3);
        swift_beginAccess();
        *v13 = *(v1 + 48);
        UnknownStorage.init()();
        *v10 = *(v1 + 16);
        v20 = *(v1 + 32);
        if (v20 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v20 > 0x7FFFFFFF)
        {
          goto LABEL_19;
        }

        *(v10 + 4) = v20;
        v21 = *(v1 + 40);
        if (v21 < 0xFFFFFFFF80000000)
        {
          goto LABEL_20;
        }

        if (v21 > 0x7FFFFFFF)
        {
          goto LABEL_21;
        }

        *(v10 + 5) = v21;
        v22 = v3;
        v23 = v37;
        outlined init with take of Apple_Workout_Core_LiveZones(v10, v37, type metadata accessor for Apple_Workout_Core_Zone);
        outlined destroy of Apple_Workout_Core_LiveZones?(&v13[v15], &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        v24 = v23;
        v3 = v22;
        outlined init with take of Apple_Workout_Core_LiveZones(v24, &v13[v15], type metadata accessor for Apple_Workout_Core_Zone);
        v19(&v13[v15], 0, 1, v22);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
        }

        v25 = v33;
        v27 = v4[2];
        v26 = v4[3];
        if (v27 >= v26 >> 1)
        {
          v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v4);
        }

        ++v18;

        v4[2] = v27 + 1;
        outlined init with take of Apple_Workout_Core_LiveZones(v13, v4 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v27, type metadata accessor for Apple_Workout_Core_LiveZone);
        v16 = v34;
        if (v25 == v18)
        {

          v1 = v31;
          a1 = v32;
          v15 = v30;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v17 = __CocoaSet.count.getter();
      if (!v17)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_23:
  v4 = MEMORY[0x277D84F90];
LABEL_24:
  *a1 = v4;
  swift_beginAccess();
  if (*(v1 + 32))
  {
LABEL_28:
    swift_beginAccess();
    *(a1 + 8) = *(v1 + 33);
    return;
  }

  v28 = *(v1 + 24);
  if (v28 < 0xFFFFFFFF80000000)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v28 <= 0x7FFFFFFF)
  {
    *v15 = v28;
    *(v15 + 4) = 0;
    goto LABEL_28;
  }

LABEL_31:
  __break(1u);
}

uint64_t Apple_Workout_Core_PowerMetricsPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v88 = (&v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v89 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v92 = &v88 - v12;
  v104 = type metadata accessor for Date();
  v91 = *(v104 - 8);
  v14 = MEMORY[0x28223BE20](v104, v13);
  v103 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v102 = &v88 - v17;
  v101 = type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement(0);
  v90 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v18);
  v105 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  swift_beginAccess();
  *(a1 + 16) = v20;
  v95 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  v21 = &v1[v95[8]];
  v22 = *v21;
  v23 = v21[8];
  swift_getKeyPath();
  swift_getKeyPath();
  v109 = v22;
  v110 = (v23 & 1) != 0;

  static Published.subscript.setter();
  v24 = &v1[v95[9]];
  v25 = *v24;
  LOBYTE(v22) = v24[8];
  swift_getKeyPath();
  swift_getKeyPath();
  v109 = v25;
  v110 = (v22 & 1) != 0;

  static Published.subscript.setter();
  v26 = &v1[v95[10]];
  v27 = *v26;
  LOBYTE(v22) = v26[8];
  swift_getKeyPath();
  swift_getKeyPath();
  v94 = v3;
  v93 = v4;
  v109 = v27;
  v110 = (v22 & 1) != 0;

  static Published.subscript.setter();
  v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  swift_getKeyPath();
  swift_getKeyPath();
  v109 = v28;

  static Published.subscript.setter();
  v29 = *(v1 + 1);
  v32 = *(v29 + 64);
  v31 = v29 + 64;
  v30 = v32;
  v33 = 1 << *(*(v1 + 1) + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v30;
  v36 = (v33 + 63) >> 6;
  v97 = *(v1 + 1);

  v37 = 0;
  v106 = a1;
  v96 = v1;
  while (v35)
  {
LABEL_11:
    v39 = __clz(__rbit64(v35)) | (v37 << 6);
    v40 = *(*(v97 + 48) + 4 * v39);
    v41 = *(*(v97 + 56) + 8 * v39);
    KeyPath = swift_getKeyPath();
    v99 = swift_getKeyPath();
    v100 = KeyPath;
    v98 = static Published.subscript.modify();
    v44 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = *v44;
    v46 = v108;
    *v44 = 0x8000000000000000;
    v48 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
    v49 = v46[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v52 = v47;
    if (v46[3] >= v51)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, isUniquelyReferenced_nonNull_native);
      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_40;
      }

      v48 = v53;
    }

    v1 = v96;
    v55 = v108;
    if (v52)
    {
      *(v108[7] + 8 * v48) = v41;
    }

    else
    {
      v108[(v48 >> 6) + 8] |= 1 << v48;
      *(v55[6] + 8 * v48) = v40;
      *(v55[7] + 8 * v48) = v41;
      v56 = v55[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_39;
      }

      v55[2] = v58;
    }

    v35 &= v35 - 1;
    *v44 = v55;

    (v98)(&v109, 0);
  }

  while (1)
  {
    v38 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v38 >= v36)
    {
      break;
    }

    v35 = *(v31 + 8 * v38);
    ++v37;
    if (v35)
    {
      v37 = v38;
      goto LABEL_11;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v109 = MEMORY[0x277D84F90];

  static Published.subscript.setter();
  v59 = *(v1 + 2);
  v60 = *(v59 + 16);
  v61 = v105;
  if (v60)
  {
    v62 = v59 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v100 = *(v90 + 72);
    v98 = (v91 + 8);
    v99 = (v91 + 16);
    do
    {
      outlined init with copy of Apple_Workout_Core_WorkoutChartDataElement(v62, v61, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
      v63 = v101;
      if (*(v61 + *(v101 + 28) + 8))
      {
        v64 = v102;
        Date.init(timeIntervalSinceReferenceDate:)();
        v65 = *(v61 + 4);
      }

      else
      {
        v64 = v102;
        Date.init(timeIntervalSinceReferenceDate:)();
        v66 = v61 + *(v63 + 32);
        v65 = 0.0;
        if ((*(v66 + 8) & 1) == 0)
        {
          v65 = *v66;
        }
      }

      v67 = *v99;
      v68 = v103;
      v69 = v104;
      (*v99)(v103, v64, v104);
      v70 = type metadata accessor for WorkoutChartDataElement(0);
      v71 = objc_allocWithZone(v70);
      v67(&v71[OBJC_IVAR___WOWorkoutChartDataElement_date], v68, v69);
      *&v71[OBJC_IVAR___WOWorkoutChartDataElement_value] = v65;
      v107.receiver = v71;
      v107.super_class = v70;
      objc_msgSendSuper2(&v107, sel_init);
      v72 = *v98;
      (*v98)(v68, v69);
      v72(v64, v69);
      swift_getKeyPath();
      swift_getKeyPath();
      v73 = static Published.subscript.modify();
      v75 = v74;
      MEMORY[0x20F2E6F30]();
      if (*((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v97 = *((*v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v73(&v109, 0);

      v61 = v105;
      outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v105, type metadata accessor for Apple_Workout_Core_WorkoutChartDataElement);
      v62 += v100;
      --v60;
    }

    while (v60);
  }

  v76 = v95[11];
  v77 = v96;
  v78 = v92;
  outlined init with copy of Apple_Workout_Core_LiveZones?(&v96[v76], v92, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v79 = *(v93 + 48);
  v80 = v94;
  v81 = v79(v78, 1, v94);
  outlined destroy of Apple_Workout_Core_LiveZones?(v78, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  if (v81 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v109 = 0;
  }

  else
  {
    v82 = v89;
    outlined init with copy of Apple_Workout_Core_LiveZones?(&v77[v76], v89, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    if (v79(v82, 1, v80) == 1)
    {
      v83 = v88;
      *v88 = MEMORY[0x277D84F90];
      *(v83 + 8) = 0;
      UnknownStorage.init()();
      v84 = v83 + *(v80 + 28);
      *v84 = 0;
      v84[4] = 1;
      if (v79(v82, 1, v80) != 1)
      {
        outlined destroy of Apple_Workout_Core_LiveZones?(v82, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
      }
    }

    else
    {
      v83 = v88;
      outlined init with take of Apple_Workout_Core_LiveZones(v82, v88, type metadata accessor for Apple_Workout_Core_LiveZones);
    }

    Apple_Workout_Core_LiveZones.decodedPowerZones.getter();
    v86 = v85;
    outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v83, type metadata accessor for Apple_Workout_Core_LiveZones);
    swift_getKeyPath();
    swift_getKeyPath();
    v109 = v86;
  }

  return static Published.subscript.setter();
}

uint64_t PowerMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static PowerMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance PowerMetricsPublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  PowerMetricsPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v3, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance PowerMetricsPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static PowerMetricsPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance PowerMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static PowerMetricsPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void Apple_Workout_Core_LiveZones.decodedPowerZones.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v65 - v8;
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v65 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v70 = (&v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v20, v22);
  v72 = &v65 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = (&v65 - v27);
  MEMORY[0x28223BE20](v26, v29);
  v73 = (&v65 - v30);
  v71 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  MEMORY[0x28223BE20](v71, v31);
  v76 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x277D84F90];
  v77 = MEMORY[0x277D84F90];
  v35 = *v0;
  v36 = *(*v0 + 16);
  if (v36)
  {
    v68 = v9;
    v69 = v28;
    v74 = v16;
    v37 = v35 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v38 = *(v32 + 72);
    v65 = v0;
    v66 = v38;
    v39 = (v18 + 48);
    v67 = v13;
    v40 = v73;
    v41 = v76;
    while (1)
    {
      v75 = v36;
      outlined init with copy of Apple_Workout_Core_WorkoutChartDataElement(v37, v41, type metadata accessor for Apple_Workout_Core_LiveZone);
      v42 = *(v71 + 24);
      v43 = v41 + v42;
      v44 = v74;
      outlined init with copy of Apple_Workout_Core_LiveZones?(v43, v74, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      v45 = *v39;
      if ((*v39)(v44, 1, v17) == 1)
      {
        *v40 = 0.0;
        v40[1] = 0.0;
        v40[2] = 0.0;
        UnknownStorage.init()();
        if (v45(v44, 1, v17) != 1)
        {
          outlined destroy of Apple_Workout_Core_LiveZones?(v74, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        }
      }

      else
      {
        outlined init with take of Apple_Workout_Core_LiveZones(v44, v40, type metadata accessor for Apple_Workout_Core_Zone);
      }

      v46 = *v40;
      outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v40, type metadata accessor for Apple_Workout_Core_Zone);
      outlined init with copy of Apple_Workout_Core_LiveZones?(&v76[v42], v13, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      v47 = v45(v13, 1, v17);
      v48 = v72;
      if (v47 == 1)
      {
        v49 = v69;
        *v69 = 0.0;
        v49[1] = 0.0;
        v49[2] = 0.0;
        UnknownStorage.init()();
        if (v45(v13, 1, v17) != 1)
        {
          outlined destroy of Apple_Workout_Core_LiveZones?(v13, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        }
      }

      else
      {
        v49 = v69;
        outlined init with take of Apple_Workout_Core_LiveZones(v13, v69, type metadata accessor for Apple_Workout_Core_Zone);
      }

      v50 = v49[1];
      outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v49, type metadata accessor for Apple_Workout_Core_Zone);
      if (v46 > v50)
      {
        break;
      }

      outlined init with copy of Apple_Workout_Core_LiveZones?(&v76[v42], v9, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      if (v45(v9, 1, v17) == 1)
      {
        *v48 = 0;
        v48[1] = 0;
        v48[2] = 0;
        UnknownStorage.init()();
        v51 = v45(v9, 1, v17);
        v40 = v73;
        if (v51 != 1)
        {
          outlined destroy of Apple_Workout_Core_LiveZones?(v9, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        }
      }

      else
      {
        outlined init with take of Apple_Workout_Core_LiveZones(v9, v48, type metadata accessor for Apple_Workout_Core_Zone);
        v40 = v73;
      }

      v52 = *(v48 + 4);
      outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v48, type metadata accessor for Apple_Workout_Core_Zone);
      v41 = v76;
      outlined init with copy of Apple_Workout_Core_LiveZones?(&v76[v42], v5, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      if (v45(v5, 1, v17) == 1)
      {
        v53 = v70;
        *v70 = 0;
        v53[1] = 0;
        v53[2] = 0;
        UnknownStorage.init()();
        if (v45(v5, 1, v17) != 1)
        {
          outlined destroy of Apple_Workout_Core_LiveZones?(v5, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        }
      }

      else
      {
        v53 = v70;
        outlined init with take of Apple_Workout_Core_LiveZones(v5, v70, type metadata accessor for Apple_Workout_Core_Zone);
      }

      v54 = v5;
      v55 = *(v53 + 5);
      outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v53, type metadata accessor for Apple_Workout_Core_Zone);
      type metadata accessor for LivePowerZone();
      v56 = swift_allocObject();
      *(v56 + 48) = 0;
      swift_beginAccess();
      *(v56 + 48) = 0;
      v57 = floor(v46);
      v58 = floor(v50);
      if (v57 > v58)
      {
        goto LABEL_30;
      }

      *(v56 + 16) = v57;
      *(v56 + 24) = v58;
      *(v56 + 32) = v52;
      *(v56 + 40) = v55;
      *(v56 + 48) = *v41;

      MEMORY[0x20F2E6F30](v59);
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v41, type metadata accessor for Apple_Workout_Core_LiveZone);
      v13 = v67;
      v37 += v66;
      v36 = v75 - 1;
      v5 = v54;
      v9 = v68;
      if (v75 == 1)
      {
        v34 = v77;
        v0 = v65;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_25:
    v60 = &v0[*(type metadata accessor for Apple_Workout_Core_LiveZones(0) + 28)];
    v61 = *(v60 + 4);
    if (v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = *v60;
    }

    v63 = v0[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGMR);
    v64 = swift_allocObject();
    *(v64 + 24) = 0;
    *(v64 + 32) = 1;
    *(v64 + 16) = v34;
    swift_beginAccess();
    *(v64 + 24) = v62;
    *(v64 + 32) = v61;
    *(v64 + 33) = v63;
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher);
  }

  return result;
}

uint64_t specialized static PowerMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PowerMetricsPublisher(0);
  v11 = swift_allocObject();
  PowerMetricsPublisher.init()();
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_PowerMetricsPublisher and conformance Apple_Workout_Core_PowerMetricsPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_PowerMetricsPublisher.decodeInto(publisher:)(v11);
    outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(v10, type metadata accessor for Apple_Workout_Core_PowerMetricsPublisher);
  }

  return v11;
}

uint64_t type metadata accessor for PowerMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for PowerMetricsPublisher;
  if (!type metadata singleton initialization cache for PowerMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PowerMetricsPublisher(uint64_t a1)
{
  type metadata accessor for Published<Double?>(319, &lazy cache variable for type metadata for Published<Double?>, &_sSdSgMd, &_sSdSgMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Double?>(319, &lazy cache variable for type metadata for Published<[Int : Double]>, &_sSDySiSdGMd, &_sSDySiSdGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Double?>(319, &lazy cache variable for type metadata for Published<[WorkoutChartDataElement]>, &_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Double?>(319, &lazy cache variable for type metadata for Published<LiveZones<LivePowerZone>?>, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGSgMd, &_s11WorkoutCore9LiveZonesCyAA0C9PowerZoneCGSgMR);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Published<Double?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

uint64_t outlined init with copy of Apple_Workout_Core_WorkoutChartDataElement(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_LiveZones?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_LiveZones?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of Apple_Workout_Core_PowerMetricsPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

WorkoutCore::ConfigurationType_optional __swiftcall ConfigurationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x40302010005uLL >> (8 * rawValue);
  if (rawValue >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t WorkoutConfiguration.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6574756F72;
    v6 = 0xD000000000000022;
    if (a1 != 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656C756465686373;
    if (a1 != 5)
    {
      v7 = 0xD000000000000011;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1684632949;
    v2 = 0x7974697669746361;
    v3 = 0x6E6572727563636FLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ConfigurationType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ConfigurationType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2 + 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutConfiguration.WorkoutConfigurationError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutConfiguration.WorkoutConfigurationError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutConfiguration.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = WorkoutConfiguration.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == WorkoutConfiguration.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutConfiguration.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutConfiguration.CodingKeys(uint64_t a1)
{
  WorkoutConfiguration.CodingKeys.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  WorkoutConfiguration.CodingKeys.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutConfiguration.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutConfiguration.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = WorkoutConfiguration.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutConfiguration.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutConfiguration.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t key path getter for WorkoutConfiguration.uuid : WorkoutConfiguration@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for WorkoutConfiguration.uuid : WorkoutConfiguration(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t WorkoutConfiguration.uuid.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void WorkoutConfiguration.type.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void WorkoutConfiguration.type.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

id WorkoutConfiguration.activityType.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WorkoutConfiguration.activityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for WorkoutConfiguration.activityType : WorkoutConfiguration(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id WorkoutConfiguration.occurrence.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WorkoutConfiguration.occurrence.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for WorkoutConfiguration.externalProvider : WorkoutConfiguration(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t key path setter for WorkoutConfiguration.scheduledDate : WorkoutConfiguration(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v19 - v14;
  outlined init with copy of Date?(a1, &v19 - v14, a5, a6);
  v16 = *a2;
  v17 = *a7;
  swift_beginAccess();
  outlined assign with take of Date?(v15, v16 + v17, a5, a6);
  return swift_endAccess();
}

uint64_t WorkoutConfiguration.scheduledDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v4 + v8, a4, a2, a3);
}

uint64_t WorkoutConfiguration.scheduledDate.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t WorkoutConfiguration.usedProtobuf.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutConfiguration.usedProtobuf.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t key path setter for WorkoutConfiguration.alternativeUUIDs : WorkoutConfiguration(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double WorkoutConfiguration.alternativeUUIDs.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t WorkoutConfiguration.externalProvider.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

Swift::Int WorkoutConfiguration.hash.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Hasher.init()();
  v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v1 + v7) + 1);
  v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v9 = *(v1 + v8);
  NSObject.hash(into:)();

  v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v3 + 16))(v6, v1 + v10, v2);
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  (*(v3 + 8))(v6, v2);
  return Hasher.finalize()();
}

void WorkoutConfiguration.equivalentHash(into:)(uint64_t a1)
{
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v1 + v2) + 1);
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  NSObject.hash(into:)();
}

uint64_t WorkoutConfiguration.encode(to:)(void *a1)
{
  v145 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v119 = &v109 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v124 = &v109 - v7;
  v125 = type metadata accessor for WorkoutPlan.Route();
  v122 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v8);
  v120 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v123 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v126 = &v109 - v15;
  v129 = type metadata accessor for Date();
  v127 = *(v129 - 8);
  v17 = MEMORY[0x28223BE20](v129, v16);
  v128 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v121 = &v109 - v20;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v118 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v109 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D13ConfigurationC10CodingKeys33_17B1D89C705F7CDCFC145BEAEC76E608LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D13ConfigurationC10CodingKeys33_17B1D89C705F7CDCFC145BEAEC76E608LLOGMR);
  v131 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v109 - v31;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys();
  v33 = v29;
  v34 = v132;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v35 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  (*(v22 + 16))(v28, v34 + v35, v21);
  v144 = 0;
  v36 = _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  v37 = v130;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v37)
  {
    (*(v22 + 8))(v28, v21);
    return (*(v131 + 8))(v32, v33);
  }

  v117 = v36;
  v130 = *(v22 + 8);
  v130(v28, v21);
  v38 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  v39 = v132;
  swift_beginAccess();
  v143 = *(v39 + v38);
  LOBYTE(v142[0]) = 1;
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v114 = 0;
  v115 = v32;
  v113 = v22 + 8;
  v116 = v29;
  v41 = objc_opt_self();
  v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  v43 = v132;
  swift_beginAccess();
  v44 = *(v43 + v42);
  v142[0] = 0;
  v45 = [v41 archivedDataWithRootObject:v44 requiringSecureCoding:1 error:v142];
  v46 = v142[0];
  if (!v45)
  {
    v53 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v131 + 8))(v115, v116);
  }

  v112 = v22;
  v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  v142[0] = v47;
  v142[1] = v49;
  LOBYTE(v141[0]) = 2;
  v50 = lazy protocol witness table accessor for type Data and conformance Data();
  v32 = v115;
  v51 = v116;
  v52 = v114;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v52)
  {
    (*(v131 + 8))(v32, v51);
    return outlined consume of Data._Representation(v47, v49);
  }

  v109 = v50;
  v110 = v47;
  v111 = v49;
  v54 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  v55 = v132;
  swift_beginAccess();
  v141[0] = *(v55 + v54);
  v56 = v141[0];
  LOBYTE(v140) = 3;
  type metadata accessor for Occurrence(0);
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Occurrence and conformance Occurrence, type metadata accessor for Occurrence, &protocol conformance descriptor for Occurrence);
  v57 = v56;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v114 = 0;

  v58 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  v59 = v132;
  swift_beginAccess();
  if (*(v59 + v58))
  {
    v140 = *(v59 + v58);
    v139 = 4;
    type metadata accessor for ExternalProvider(0);
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type ExternalProvider and conformance ExternalProvider, type metadata accessor for ExternalProvider, &protocol conformance descriptor for ExternalProvider);

    v60 = v116;
    v61 = v114;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v62 = v128;
    if (v61)
    {
      (*(v131 + 8))(v32, v60);
      outlined consume of Data._Representation(v110, v111);
    }

    v114 = 0;
  }

  else
  {
    v62 = v128;
  }

  v63 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v64 = v132;
  swift_beginAccess();
  v65 = v126;
  outlined init with copy of Date?(v64 + v63, v126, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v66 = v127;
  v67 = *(v127 + 48);
  v68 = v129;
  if (v67(v65, 1, v129) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v65, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v126 = v21;
  }

  else
  {
    v69 = v65;
    v70 = v121;
    (*(v66 + 32))(v121, v69, v68);
    v139 = 5;
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    v71 = v116;
    v72 = v114;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v72)
    {
      outlined consume of Data._Representation(v110, v111);
      (*(v66 + 8))(v70, v129);
      return (*(v131 + 8))(v32, v71);
    }

    v114 = 0;
    (*(v66 + 8))(v70, v129);
    v126 = v21;
    v62 = v128;
  }

  v73 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
  v74 = v132;
  swift_beginAccess();
  v75 = v74 + v73;
  v76 = v123;
  outlined init with copy of Date?(v75, v123, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v77 = v129;
  if (v67(v76, 1, v129) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v76, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v78 = v124;
    v79 = v125;
  }

  else
  {
    v80 = v76;
    v81 = v127;
    (*(v127 + 32))(v62, v80, v77);
    v138 = 6;
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    v82 = v116;
    v83 = v114;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v78 = v124;
    v79 = v125;
    if (v83)
    {
      outlined consume of Data._Representation(v110, v111);
      (*(v81 + 8))(v62, v129);
      return (*(v131 + 8))(v32, v82);
    }

    v114 = 0;
    (*(v81 + 8))(v62, v129);
  }

  v84 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v85 = v132;
  swift_beginAccess();
  outlined init with copy of Date?(v85 + v84, v78, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v86 = v122;
  if ((*(v122 + 48))(v78, 1, v79) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v78, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    v87 = v126;
  }

  else
  {
    v96 = v78;
    v97 = v120;
    (*(v86 + 32))(v120, v96, v79);
    v98 = v114;
    v99 = WorkoutPlan.Route.dataRepresentation.getter();
    if (v98)
    {
      outlined consume of Data._Representation(v110, v111);
      (*(v86 + 8))(v97, v79);
      return (*(v131 + 8))(v32, v116);
    }

    v102 = v99;
    v136 = v99;
    v137 = v100;
    v103 = v100;
    v135 = 7;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v114 = 0;
    (*(v122 + 8))(v120, v125);
    outlined consume of Data._Representation(v102, v103);
    v87 = v21;
  }

  v88 = OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID;
  v89 = v132;
  swift_beginAccess();
  v90 = v89 + v88;
  v91 = v119;
  outlined init with copy of Date?(v90, v119, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v92 = v112;
  v93 = (*(v112 + 48))(v91, 1, v87);
  v94 = v118;
  if (v93 == 1)
  {
    v95 = v32;
    _s10Foundation4DateVSgWOhTm_0(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v92 + 32))(v118, v91, v87);
    v135 = 8;
    v33 = v116;
    v101 = v114;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v101)
    {
      outlined consume of Data._Representation(v110, v111);
      v130(v94, v87);
      return (*(v131 + 8))(v32, v33);
    }

    v114 = 0;
    v95 = v32;
    v130(v94, v87);
  }

  v105 = v131;
  v104 = v132;
  v106 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v107 = v110;
  if (*(v104 + v106))
  {
    v134 = *(v104 + v106);
    v133 = 9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
    lazy protocol witness table accessor for type [UUID] and conformance <A> [A](&lazy protocol witness table cache variable for type [UUID] and conformance <A> [A], &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F8], MEMORY[0x277D83948]);
    v108 = v116;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v105 + 8))(v95, v108);
    outlined consume of Data._Representation(v107, v111);
  }

  else
  {
    (*(v105 + 8))(v95, v116);
    return outlined consume of Data._Representation(v107, v111);
  }
}

unint64_t lazy protocol witness table accessor for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType()
{
  result = lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType;
  if (!lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType;
  if (!lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType;
  if (!lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType;
  if (!lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType;
  if (!lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfigurationType and conformance ConfigurationType);
  }

  return result;
}

void *WorkoutConfiguration.init(from:)(void *a1)
{
  v2 = v1;
  v95 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v79 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v78 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v77 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v80 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v81 = &v68 - v17;
  v96 = type metadata accessor for UUID();
  v94 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v18);
  v83 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D13ConfigurationC10CodingKeys33_17B1D89C705F7CDCFC145BEAEC76E608LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D13ConfigurationC10CodingKeys33_17B1D89C705F7CDCFC145BEAEC76E608LLOGMR);
  v84 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v20);
  v22 = &v68 - v21;
  v92 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  *&v1[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v24 = type metadata accessor for Date();
  v25 = *(*(v24 - 8) + 56);
  v91 = v23;
  v25(&v2[v23], 1, 1, v24);
  v90 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
  v25(&v2[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v24);
  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v27 = type metadata accessor for WorkoutPlan.Route();
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v30 = v28 + 56;
  v89 = v26;
  v29(&v2[v26], 1, 1, v27);
  v31 = *(v94 + 56);
  v88 = OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID;
  v31(&v2[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v96);
  v87 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  v93 = v2;
  *&v2[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v32 = v95;
  __swift_project_boxed_opaque_existential_1Tm(v95, v95[3]);
  lazy protocol witness table accessor for type WorkoutConfiguration.CodingKeys and conformance WorkoutConfiguration.CodingKeys();
  v85 = v22;
  v33 = v86;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_1Tm_1(v32);
    v39 = v90;
    v38 = v91;
    v40 = v93;
LABEL_4:

    _s10Foundation4DateVSgWOhTm_0(v40 + v38, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVSgWOhTm_0(v40 + v39, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVSgWOhTm_0(v40 + v89, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
    _s10Foundation4DateVSgWOhTm_0(v40 + v88, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    type metadata accessor for WorkoutConfiguration(0);
    swift_deallocPartialClassInstance();
    return v40;
  }

  v86 = v24;
  v74 = v30;
  v75 = v29;
  v76 = v27;
  LOBYTE(v100) = 0;
  v34 = _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v35 = v83;
  v36 = v96;
  v37 = v82;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v42 = v36;
  v43 = *(v94 + 32);
  v73 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  v40 = v93;
  v43(v93 + OBJC_IVAR___WOCoreWorkoutConfiguration_uuid, v35, v42);
  LOBYTE(v98) = 1;
  lazy protocol witness table accessor for type ConfigurationType and conformance ConfigurationType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v39 = v90;
  v38 = v91;
  *(v40 + OBJC_IVAR___WOCoreWorkoutConfiguration_type) = v100;
  LOBYTE(v98) = 2;
  v44 = lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v84;
  v83 = v44;
  v72 = v34;
  v46 = v100;
  v47 = v101;
  _sSo17NSKeyedUnarchiverCMaTm_0(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  _sSo17NSKeyedUnarchiverCMaTm_0(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
  v48 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  v71 = v46;
  v70 = v47;
  if (!v48)
  {
    lazy protocol witness table accessor for type WorkoutConfiguration.WorkoutConfigurationError and conformance WorkoutConfiguration.WorkoutConfigurationError();
    swift_allocError();
    swift_willThrow();
    outlined consume of Data._Representation(v71, v70);
    (*(v45 + 8))(v85, v37);
    v49 = v94;
    __swift_destroy_boxed_opaque_existential_1Tm_1(v95);
    (*(v49 + 8))(v40 + v73, v96);
    goto LABEL_4;
  }

  *(v40 + OBJC_IVAR___WOCoreWorkoutConfiguration_activityType) = v48;
  LOBYTE(v100) = 3;
  v69 = v48;
  if (KeyedDecodingContainer.contains(_:)())
  {
    type metadata accessor for Occurrence(0);
    LOBYTE(v98) = 3;
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Occurrence and conformance Occurrence, type metadata accessor for Occurrence, &protocol conformance descriptor for Occurrence);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v93;
    *(v93 + OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence) = v100;
  }

  else
  {
    *(v40 + OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence) = specialized Occurrence.__allocating_init(count:)(0);
  }

  type metadata accessor for ExternalProvider(0);
  LOBYTE(v100) = 4;
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type ExternalProvider and conformance ExternalProvider, type metadata accessor for ExternalProvider, &protocol conformance descriptor for ExternalProvider);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v50 = v98;
  v51 = v92;
  swift_beginAccess();
  *(v40 + v51) = v50;

  LOBYTE(v98) = 5;
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v52 = v81;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  swift_beginAccess();
  outlined assign with take of Date?(v52, v40 + v38, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  LOBYTE(v98) = 6;
  v53 = v80;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  swift_beginAccess();
  outlined assign with take of Date?(v53, v40 + v39, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  LOBYTE(v102) = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v99 >> 60 == 15)
  {
    v54 = v77;
    v75(v77, 1, 1, v76);
    v55 = v89;
    v56 = v93;
    swift_beginAccess();
    v57 = v56 + v55;
    v58 = v54;
  }

  else
  {
    WorkoutPlan.Route.init(from:)();
    v59 = v78;
    v75(v78, 0, 1, v76);
    v60 = v89;
    v61 = v93;
    swift_beginAccess();
    v57 = v61 + v60;
    v58 = v59;
  }

  outlined assign with take of Date?(v58, v57, &_s10WorkoutKit0A4PlanV5RouteVSgMd, _s10WorkoutKit0A4PlanV5RouteVSgMR);
  swift_endAccess();
  LOBYTE(v98) = 8;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v62 = v88;
  v63 = v93;
  swift_beginAccess();
  outlined assign with take of Date?(v79, v63 + v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
  LOBYTE(v98) = 9;
  lazy protocol witness table accessor for type [UUID] and conformance <A> [A](&lazy protocol witness table cache variable for type [UUID] and conformance <A> [A], &lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9618], MEMORY[0x277D83978]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v84 + 8))(v85, v37);
  outlined consume of Data._Representation(v71, v70);

  v64 = v102;
  v65 = v87;
  v66 = v93;
  swift_beginAccess();
  *&v66[v65] = v64;

  v66[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v67 = type metadata accessor for WorkoutConfiguration(0);
  v97.receiver = v66;
  v97.super_class = v67;
  v40 = objc_msgSendSuper2(&v97, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm_1(v95);
  return v40;
}

unint64_t lazy protocol witness table accessor for type WorkoutConfiguration.WorkoutConfigurationError and conformance WorkoutConfiguration.WorkoutConfigurationError()
{
  result = lazy protocol witness table cache variable for type WorkoutConfiguration.WorkoutConfigurationError and conformance WorkoutConfiguration.WorkoutConfigurationError;
  if (!lazy protocol witness table cache variable for type WorkoutConfiguration.WorkoutConfigurationError and conformance WorkoutConfiguration.WorkoutConfigurationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfiguration.WorkoutConfigurationError and conformance WorkoutConfiguration.WorkoutConfigurationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutConfiguration.WorkoutConfigurationError and conformance WorkoutConfiguration.WorkoutConfigurationError;
  if (!lazy protocol witness table cache variable for type WorkoutConfiguration.WorkoutConfigurationError and conformance WorkoutConfiguration.WorkoutConfigurationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutConfiguration.WorkoutConfigurationError and conformance WorkoutConfiguration.WorkoutConfigurationError);
  }

  return result;
}

uint64_t WorkoutConfiguration.isEqual(_:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v23[-1] - v10;
  outlined init with copy of Date?(a1, v23, &_sypSgMd, &_sypSgMR);
  if (!v24)
  {
    _s10Foundation4DateVSgWOhTm_0(v23, &_sypSgMd, &_sypSgMR);
    goto LABEL_7;
  }

  v12 = type metadata accessor for WorkoutConfiguration(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v20 = 0;
    return v20 & 1;
  }

  v13 = v26;
  v14 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v15 = *(v4 + 16);
  v15(v11, &v13[v14], v3);
  v16 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v15(v8, &v1[v16], v3);
  LOBYTE(v15) = static UUID.== infix(_:_:)();
  v17 = *(v4 + 8);
  v17(v8, v3);
  v17(v11, v3);
  if ((v15 & 1) == 0)
  {

    goto LABEL_7;
  }

  v24 = v12;
  v25 = &protocol witness table for WorkoutConfiguration;
  v23[0] = v13;
  v18 = *((*MEMORY[0x277D85000] & *v1) + 0x1D0);
  v19 = v13;
  v20 = v18(v23);

  __swift_destroy_boxed_opaque_existential_1Tm_1(v23);
  return v20 & 1;
}

uint64_t WorkoutConfiguration.isEquivalent(to:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, v2);

  return specialized WorkoutConfiguration.isEquivalent(to:)(v4, v1, v2, v3);
}

void WorkoutConfiguration.populateMetadata(_:)(void *a1)
{
  v2 = v1;
  v70 = type metadata accessor for Date();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v4);
  v68 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v67 = &v63 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v65 = &v63 - v14;
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v18 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v19 = [a1 keyedNumbers];
  _sSo17NSKeyedUnarchiverCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v76[0] = v20;
  specialized Dictionary.subscript.setter(v18, v71, v16);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [a1 setKeyedNumbers_];

  v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v23 = *(v2 + v22);
  v71 = a1;
  WOPersistence.set(occurrence:)(v23);

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v28 = *(v2 + v27);
  if (v28)
  {
    swift_beginAccess();
    v29 = *(v28 + 32);
    v30 = *(v28 + 40);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v31 = v71;
  v32 = [v71 keyedStrings];
  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v75[0] = v33;
  specialized Dictionary.subscript.setter(v29, v30, v24, v26);
  v34 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v31 setKeyedStrings_];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  v38 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v39 = v65;
  outlined init with copy of Date?(v2 + v38, v65, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v40 = [v31 keyedDates];
  v41 = v70;
  v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v74[0] = v42;
  v43 = v69;
  v64 = *(v69 + 48);
  if (v64(v39, 1, v41) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v39, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v44 = v67;
    specialized Dictionary._Variant.removeValue(forKey:)(v35, v37, v67);

    _s10Foundation4DateVSgWOhTm_0(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v45 = v68;
    (*(v43 + 32))(v68, v39, v41);
    v46 = v74[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v46;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v35, v37, isUniquelyReferenced_nonNull_native);

    v74[0] = v73;
  }

  v48 = Dictionary._bridgeToObjectiveC()().super.isa;

  v49 = v71;
  [v71 setKeyedDates_];

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
  swift_beginAccess();
  v54 = v2 + v53;
  v55 = v66;
  outlined init with copy of Date?(v54, v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v56 = [v49 keyedDates];
  v57 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v73 = v57;
  if (v64(v55, 1, v41) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v55, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v58 = v67;
    specialized Dictionary._Variant.removeValue(forKey:)(v50, v52, v67);

    _s10Foundation4DateVSgWOhTm_0(v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v59 = v68;
    (*(v69 + 32))(v68, v55, v41);
    v60 = v73;
    v61 = swift_isUniquelyReferenced_nonNull_native();
    v72 = v60;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v59, v50, v52, v61);

    v73 = v72;
  }

  v62 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v71 setKeyedDates_];
}