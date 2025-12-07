uint64_t outlined init with copy of Artwork?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of IndexingIterator<MusicItemCollection<Playlist>>(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type MusicItemCollection<Playlist> and conformance MusicItemCollection<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL WorkoutStatePublisher.workoutPaused.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = (&v7 - v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  v4 = type metadata accessor for Date();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  _s10Foundation4DateVSgWOhTm_6(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v5;
}

uint64_t WorkoutStatePublisher.activityType.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t WorkoutStatePublisher.workoutStartDate.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_3(a1, v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_6(a1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

void WorkoutStatePublisher.activityType.setter(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  v2 = a1;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v3 = v4;
  [v4 identifier];
}

double WorkoutStatePublisher.segmentIndex.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*WorkoutStatePublisher.workoutStarted.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.workoutStarted.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$workoutStarted : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$workoutStarted.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$workoutStarted.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStarted;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$workoutStarted.modify;
}

double WorkoutStatePublisher.workoutStartDate.getter@<D0>(void *a3@<X8>)
{
  return WorkoutStatePublisher.workoutStartDate.getter(a3);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a3);

  return result;
}

uint64_t (*WorkoutStatePublisher.workoutStartDate.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.workoutStartDate.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$workoutStartDate : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutStatePublisher.$workoutStartDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$workoutStartDate.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStartDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$workoutStartDate.modify;
}

uint64_t (*WorkoutStatePublisher.workoutActive.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.workoutActive.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$workoutActive : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$workoutActive.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$workoutActive.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutActive;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$workoutActive.modify;
}

BOOL WorkoutStatePublisher.workoutEnded.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = (&v7 - v2);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((&v8 + 1));

  if (BYTE1(v8) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  if (v8)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  v5 = type metadata accessor for Date();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) == 1;
  _s10Foundation4DateVSgWOhTm_6(v3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v6;
}

uint64_t WorkoutStatePublisher.pauseTimes.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void key path getter for WorkoutStatePublisher.pauseTimes : WorkoutStatePublisher(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for WorkoutStatePublisher.pauseTimes : WorkoutStatePublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double WorkoutStatePublisher.pauseTimes.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*WorkoutStatePublisher.pauseTimes.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.pauseTimes.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$pauseTimes : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMd, &_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutStatePublisher.$pauseTimes.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMd, &_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$pauseTimes.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMd, &_s7Combine9PublishedV9PublisherVySay10Foundation12DateIntervalVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pauseTimes;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$pauseTimes.modify;
}

double key path getter for WorkoutStatePublisher.lastUnbalancedPauseStart : WorkoutStatePublisher@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t key path setter for WorkoutStatePublisher.lastUnbalancedPauseStart : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v12 - v9;
  _s10Foundation4DateVSgWOcTm_3(a1, &v12 - v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_3(v10, v7, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  return _s10Foundation4DateVSgWOhTm_6(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t (*WorkoutStatePublisher.lastUnbalancedPauseStart.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.lastUnbalancedPauseStart.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$lastUnbalancedPauseStart : WorkoutStatePublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutStatePublisher.$lastUnbalancedPauseStart.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$lastUnbalancedPauseStart.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateVSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lastUnbalancedPauseStart;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$lastUnbalancedPauseStart.modify;
}

uint64_t (*WorkoutStatePublisher.gpsLock.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.gpsLock.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$gpsLock : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$gpsLock.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$gpsLock.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsLock;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$gpsLock.modify;
}

uint64_t (*WorkoutStatePublisher.checkingGPSLock.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.checkingGPSLock.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$checkingGPSLock : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$checkingGPSLock.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$checkingGPSLock.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__checkingGPSLock;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$checkingGPSLock.modify;
}

uint64_t (*WorkoutStatePublisher.gpsUnavailable.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.gpsUnavailable.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$gpsUnavailable : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$gpsUnavailable.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$gpsUnavailable.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsUnavailable;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$gpsUnavailable.modify;
}

void key path getter for WorkoutStatePublisher.showGymKitConnectionStatus : WorkoutStatePublisher(_BYTE *a4@<X8>)
{
  key path getter for WorkoutStatePublisher.showGymKitConnectionStatus : WorkoutStatePublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a4 = v5;
}

uint64_t (*WorkoutStatePublisher.showGymKitConnectionStatus.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.showGymKitConnectionStatus.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$showGymKitConnectionStatus : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$showGymKitConnectionStatus.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$showGymKitConnectionStatus.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__showGymKitConnectionStatus;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$showGymKitConnectionStatus.modify;
}

uint64_t (*WorkoutStatePublisher.isGymKit.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.isGymKit.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$isGymKit : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$isGymKit.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$isGymKit.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__isGymKit;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$isGymKit.modify;
}

uint64_t (*WorkoutStatePublisher.lowPowerModeAnimationSuspended.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.lowPowerModeAnimationSuspended.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$lowPowerModeAnimationSuspended : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$lowPowerModeAnimationSuspended.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$lowPowerModeAnimationSuspended.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lowPowerModeAnimationSuspended;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$lowPowerModeAnimationSuspended.modify;
}

void key path getter for WorkoutStatePublisher.activityType : WorkoutStatePublisher(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

void key path setter for WorkoutStatePublisher.activityType : WorkoutStatePublisher(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  WorkoutStatePublisher.activityType.setter(v1);
}

void (*WorkoutStatePublisher.activityType.modify(void *a1))(void **a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1 + 1);

  *a1 = a1[1];
  return WorkoutStatePublisher.activityType.modify;
}

void WorkoutStatePublisher.activityType.modify(void **a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  v5 = a1 + 1;
  v6 = v4;

  if (a2)
  {
    v7 = v6;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(a1 + 1);

    v8 = a1[1];
    [v8 identifier];

    v9 = *a1;
  }

  else
  {
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v5);

    v10 = *v5;
    [*v5 identifier];

    v9 = v10;
  }
}

uint64_t key path setter for WorkoutStatePublisher.$activityType : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutStatePublisher.$activityType.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$activityType.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMd, &_s7Combine9PublishedV9PublisherVySo23FIUIWorkoutActivityTypeCSg_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__activityType;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$activityType.modify;
}

uint64_t (*WorkoutStatePublisher.mirrorModeEnabled.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.mirrorModeEnabled.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$mirrorModeEnabled : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$mirrorModeEnabled.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$mirrorModeEnabled.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirrorModeEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$mirrorModeEnabled.modify;
}

uint64_t (*WorkoutStatePublisher.mirroringToCompanion.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.mirroringToCompanion.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$mirroringToCompanion : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$mirroringToCompanion.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$mirroringToCompanion.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirroringToCompanion;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$mirroringToCompanion.modify;
}

uint64_t (*WorkoutStatePublisher.multisportWorkoutInAutoMode.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.multisportWorkoutInAutoMode.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$multisportWorkoutInAutoMode : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$multisportWorkoutInAutoMode.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$multisportWorkoutInAutoMode.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__multisportWorkoutInAutoMode;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$multisportWorkoutInAutoMode.modify;
}

uint64_t WorkoutStatePublisher.segmentIndex.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t (*WorkoutStatePublisher.segmentIndex.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.segmentIndex.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$segmentIndex : WorkoutStatePublisher(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutStatePublisher.$segmentIndex.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$segmentIndex.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySi_GMd, &_s7Combine9PublishedV9PublisherVySi_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__segmentIndex;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$segmentIndex.modify;
}

uint64_t (*WorkoutStatePublisher.hasSpeedSensorEverBeenConnected.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.hasSpeedSensorEverBeenConnected.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$hasSpeedSensorEverBeenConnected : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$hasSpeedSensorEverBeenConnected.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$hasSpeedSensorEverBeenConnected.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasSpeedSensorEverBeenConnected;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$hasSpeedSensorEverBeenConnected.modify;
}

uint64_t (*WorkoutStatePublisher.hasCadenceSensorEverBeenConnected.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.hasCadenceSensorEverBeenConnected.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$hasCadenceSensorEverBeenConnected : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$hasCadenceSensorEverBeenConnected.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$hasCadenceSensorEverBeenConnected.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasCadenceSensorEverBeenConnected;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$hasCadenceSensorEverBeenConnected.modify;
}

uint64_t WorkoutStatePublisher.mirroringToCompanion.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

double key path setter for WorkoutStatePublisher.showGymKitConnectionStatus : WorkoutStatePublisher(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double WorkoutStatePublisher.mirroringToCompanion.setter(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*WorkoutStatePublisher.hasPowerSensorEverBeenConnected.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.hasPowerSensorEverBeenConnected.modify;
}

uint64_t key path setter for WorkoutStatePublisher.$hasPowerSensorEverBeenConnected : WorkoutStatePublisher(char *a1, uint64_t *a2)
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

uint64_t WorkoutStatePublisher.$hasPowerSensorEverBeenConnected.setter(uint64_t a1)
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

uint64_t (*WorkoutStatePublisher.$hasPowerSensorEverBeenConnected.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasPowerSensorEverBeenConnected;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$hasPowerSensorEverBeenConnected.modify;
}

uint64_t WorkoutStatePublisher.pausedReasons.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void key path getter for WorkoutStatePublisher.pausedReasons : WorkoutStatePublisher(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for WorkoutStatePublisher.pausedReasons : WorkoutStatePublisher(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

double WorkoutStatePublisher.pausedReasons.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*WorkoutStatePublisher.pausedReasons.modify(uint64_t *a1))()
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
  return WorkoutStatePublisher.pausedReasons.modify;
}

void WorkoutStatePublisher.workoutStarted.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t WorkoutStatePublisher.$workoutStarted.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WorkoutStatePublisher.$workoutStarted : WorkoutStatePublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutStatePublisher.$pausedReasons : WorkoutStatePublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMd, &_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutStatePublisher.$pausedReasons.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMd, &_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStatePublisher.$pausedReasons.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMd, &_s7Combine9PublishedV9PublisherVySo21NLWorkoutPausedReasonV_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pausedReasons;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStatePublisher.$pausedReasons.modify;
}

void WorkoutStatePublisher.$workoutStarted.modify(uint64_t a1, char a2)
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

uint64_t WorkoutStatePublisher.CodingKeys.rawValue.getter(char a1)
{
  result = 0x5374756F6B726F77;
  switch(a1)
  {
    case 1:
      return 0xD000000000000010;
    case 2:
      return 0x4174756F6B726F77;
    case 3:
      return 0x6D69546573756170;
    case 4:
      return 0xD000000000000018;
    case 5:
      return 0x6B636F4C737067;
    case 6:
      return 0x676E696B63656863;
    case 7:
      return 0x6176616E55737067;
    case 8:
      v4 = 10;
      return v4 | 0xD000000000000010;
    case 9:
      return 0x74694B6D79477369;
    case 10:
      return 0xD00000000000001ELL;
    case 11:
      return 0x7974697669746361;
    case 12:
      return 0xD000000000000011;
    case 13:
      return 0xD000000000000014;
    case 14:
      v4 = 11;
      return v4 | 0xD000000000000010;
    case 15:
      return 0x49746E656D676573;
    case 16:
      v3 = 0x536465657073;
      goto LABEL_18;
    case 17:
      return 0x5365636E65646163;
    case 18:
      v3 = 0x537265776F70;
LABEL_18:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 19:
      result = 0x6552646573756170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutStatePublisher.CodingKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = WorkoutStatePublisher.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == WorkoutStatePublisher.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutStatePublisher.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  WorkoutStatePublisher.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutStatePublisher.CodingKeys(uint64_t a1)
{
  WorkoutStatePublisher.CodingKeys.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutStatePublisher.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  WorkoutStatePublisher.CodingKeys.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutStatePublisher.CodingKeys@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutStatePublisher.CodingKeys.init(rawValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutStatePublisher.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = WorkoutStatePublisher.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutStatePublisher.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized WorkoutStatePublisher.CodingKeys.init(rawValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutStatePublisher.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutStatePublisher.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutStatePublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  WorkoutStatePublisher.init()();
  return v0;
}

uint64_t WorkoutStatePublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  v78 = *(v1 - 8);
  v79 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v77 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v74 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v71 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  v69 = *(v10 - 8);
  v70 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v68 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v14 = *(v13 - 8);
  v81 = v13;
  v82 = v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v59 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = MEMORY[0x28223BE20](v80, v18);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v59 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v59 - v28;
  v30 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStarted;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31 = *(v26 + 32);
  v63 = v25;
  v31(v0 + v30, v29, v25);
  v60 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStartDate;
  v66 = type metadata accessor for Date();
  v32 = *(v66 - 8);
  v65 = *(v32 + 56);
  v67 = v32 + 56;
  v65(v24, 1, 1, v66);
  v62 = v21;
  _s10Foundation4DateVSgWOcTm_3(v24, v21, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v61 = v17;
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_6(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v33 = *(v82 + 32);
  v82 += 32;
  v64 = v33;
  v33(v0 + v60, v17, v81);
  v34 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutActive;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v34, v29, v25);
  v35 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pauseTimes;
  v83 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalVGMd, &_sSay10Foundation12DateIntervalVGMR);
  v36 = v68;
  Published.init(initialValue:)();
  (*(v69 + 32))(v0 + v35, v36, v70);
  v37 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lastUnbalancedPauseStart;
  v65(v24, 1, 1, v66);
  _s10Foundation4DateVSgWOcTm_3(v24, v62, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v38 = v61;
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_6(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v64(v0 + v37, v38, v81);
  v39 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsLock;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v40 = v63;
  v31(v0 + v39, v29, v63);
  v41 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__checkingGPSLock;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v41, v29, v40);
  v42 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsUnavailable;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v42, v29, v40);
  v43 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__showGymKitConnectionStatus;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v43, v29, v40);
  v44 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__isGymKit;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v44, v29, v40);
  v45 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lowPowerModeAnimationSuspended;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v45, v29, v40);
  *(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher_observingBluetooth) = 0;
  v46 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__activityType;
  v83 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  v47 = v71;
  Published.init(initialValue:)();
  (*(v72 + 32))(v0 + v46, v47, v73);
  v48 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirrorModeEnabled;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v48, v29, v40);
  v49 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirroringToCompanion;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v49, v29, v40);
  v50 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__multisportWorkoutInAutoMode;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v50, v29, v40);
  v51 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__segmentIndex;
  v83 = 1;
  v52 = v74;
  Published.init(initialValue:)();
  (*(v75 + 32))(v0 + v51, v52, v76);
  v53 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasSpeedSensorEverBeenConnected;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v53, v29, v40);
  v54 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasCadenceSensorEverBeenConnected;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v54, v29, v40);
  v55 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasPowerSensorEverBeenConnected;
  LOBYTE(v83) = 0;
  Published.init(initialValue:)();
  v31(v0 + v55, v29, v40);
  v56 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pausedReasons;
  v83 = 0;
  type metadata accessor for NLWorkoutPausedReason(0);
  v57 = v77;
  Published.init(initialValue:)();
  (*(v78 + 32))(v0 + v56, v57, v79);
  return v0;
}

uint64_t WorkoutStatePublisher.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  WorkoutStatePublisher.init(from:)(a1);
  return v2;
}

uint64_t WorkoutStatePublisher.init(from:)(void *a1)
{
  v124 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D14StatePublisherC10CodingKeys33_41D53B2C36E487ECFF8F6B8E33B9BEB6LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D14StatePublisherC10CodingKeys33_41D53B2C36E487ECFF8F6B8E33B9BEB6LLOGMR);
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v2);
  v135 = &v109 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  v132 = *(v4 - 8);
  v133 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v131 = &v109 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v129 = *(v7 - 8);
  v130 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v128 = &v109 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  v126 = *(v10 - 8);
  v127 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v125 = &v109 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  v122 = *(v13 - 8);
  v123 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v121 = &v109 - v15;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  KeyPath = *(v137 - 8);
  MEMORY[0x28223BE20](v137, v16);
  v18 = &v109 - v17;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = MEMORY[0x28223BE20](v138, v19);
  v109 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v110 = &v109 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v109 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v109 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v136 = v32;
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v109 - v35;
  v37 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStarted;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v38 = *(v33 + 32);
  v38(v1 + v37, v36, v32);
  v116 = v38;
  v113 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStartDate;
  v119 = type metadata accessor for Date();
  v39 = *(v119 - 8);
  v118 = *(v39 + 56);
  v120 = v39 + 56;
  v118(v31, 1, 1, v119);
  v115 = v28;
  _s10Foundation4DateVSgWOcTm_3(v31, v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v114 = v18;
  Published.init(initialValue:)();
  _s10Foundation4DateVSgWOhTm_6(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v40 = *(KeyPath + 32);
  KeyPath += 32;
  v117 = v40;
  v40(v1 + v113, v18, v137);
  v41 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutActive;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v38(v1 + v41, v36, v136);
  v42 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pauseTimes;
  v140 = MEMORY[0x277D84F90];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalVGMd, &_sSay10Foundation12DateIntervalVGMR);
  v44 = v121;
  v113 = v43;
  Published.init(initialValue:)();
  (*(v122 + 32))(v1 + v42, v44, v123);
  v45 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lastUnbalancedPauseStart;
  v118(v31, 1, 1, v119);
  _s10Foundation4DateVSgWOcTm_3(v31, v115, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v46 = v114;
  Published.init(initialValue:)();
  v123 = v31;
  v47 = v31;
  v48 = v1;
  _s10Foundation4DateVSgWOhTm_6(v47, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v49 = v1 + v45;
  v50 = v124;
  v117(v49, v46, v137);
  v51 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsLock;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v52 = v136;
  v53 = v116;
  v116(v1 + v51, v36, v136);
  v54 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__checkingGPSLock;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v54, v36, v52);
  v55 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsUnavailable;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v55, v36, v52);
  v56 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__showGymKitConnectionStatus;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v56, v36, v52);
  v57 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__isGymKit;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v57, v36, v52);
  v58 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lowPowerModeAnimationSuspended;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v58, v36, v52);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher_observingBluetooth) = 0;
  v59 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__activityType;
  v140 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
  v60 = v125;
  Published.init(initialValue:)();
  (*(v126 + 32))(v1 + v59, v60, v127);
  v61 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirrorModeEnabled;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v61, v36, v52);
  v62 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirroringToCompanion;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v62, v36, v52);
  v63 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__multisportWorkoutInAutoMode;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v63, v36, v52);
  v64 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__segmentIndex;
  v140 = 1;
  v65 = v128;
  Published.init(initialValue:)();
  (*(v129 + 32))(v1 + v64, v65, v130);
  v66 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasSpeedSensorEverBeenConnected;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v66, v36, v52);
  v67 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasCadenceSensorEverBeenConnected;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v67, v36, v52);
  v68 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasPowerSensorEverBeenConnected;
  LOBYTE(v140) = 0;
  Published.init(initialValue:)();
  v53(v1 + v68, v36, v52);
  v69 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pausedReasons;
  v140 = 0;
  type metadata accessor for NLWorkoutPausedReason(0);
  v70 = v131;
  Published.init(initialValue:)();
  (*(v132 + 32))(v48 + v69, v70, v133);
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  lazy protocol witness table accessor for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys();
  v71 = v134;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v71)
  {
    v72 = v110;
    LOBYTE(v140) = 0;
    v73 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v140) = v73 & 1;

    static Published.subscript.setter();
    LOBYTE(v140) = 1;
    v74 = lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC95A0], MEMORY[0x277D84F58]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    KeyPath = v74;
    swift_getKeyPath();
    swift_getKeyPath();
    _s10Foundation4DateVSgWOcTm_3(v72, v123, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

    static Published.subscript.setter();
    _s10Foundation4DateVSgWOhTm_6(v72, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    LOBYTE(v140) = 2;
    v75 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v140) = v75 & 1;

    static Published.subscript.setter();
    LOBYTE(v142) = 3;
    lazy protocol witness table accessor for type [DateInterval] and conformance <A> [A](&lazy protocol witness table cache variable for type [DateInterval] and conformance <A> [A], &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88D0], MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v76 = v140;
    swift_getKeyPath();
    swift_getKeyPath();
    v142 = v76;

    static Published.subscript.setter();
    LOBYTE(v140) = 4;
    v77 = v109;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    _s10Foundation4DateVSgWOcTm_3(v77, v123, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

    static Published.subscript.setter();
    _s10Foundation4DateVSgWOhTm_6(v77, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    LOBYTE(v140) = 5;
    v79 = KeyedDecodingContainer.decode(_:forKey:)();
    v80 = v79;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v140) = v80 & 1;

    static Published.subscript.setter();
    LOBYTE(v140) = 6;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v140) = 6;
      v81 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v140) = v81 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v140) = 7;
    v82 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v140) = v82 & 1;

    static Published.subscript.setter();
    LOBYTE(v140) = 8;
    v83 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v140) = v83 & 1;

    static Published.subscript.setter();
    LOBYTE(v140) = 9;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v140) = 9;
      v84 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v140) = v84 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v140) = 10;
    v85 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v140) = v85 & 1;

    static Published.subscript.setter();
    LOBYTE(v140) = 11;
    if (KeyedDecodingContainer.contains(_:)())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      LOBYTE(v142) = 11;
      lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x277D84F58]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v86 = v141;
      if (v141 >> 60 != 15)
      {
        v87 = v140;
        type metadata accessor for FIUIWorkoutActivityType();
        outlined copy of Data._Representation(v87, v86);
        v88 = FIUIWorkoutActivityType.init(data:)(v87, v86);
        KeyPath = swift_getKeyPath();
        swift_getKeyPath();
        v140 = v88;

        v89 = v88;
        static Published.subscript.setter();
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v140);

        v90 = v140;
        [v140 identifier];

        outlined consume of Data?(v87, v86);
      }
    }

    LOBYTE(v140) = 12;
    v91 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v140) = v91 & 1;

    static Published.subscript.setter();
    LOBYTE(v140) = 13;
    v92 = KeyedDecodingContainer.decode(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v140) = v92 & 1;

    static Published.subscript.setter();
    LOBYTE(v140) = 14;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v140) = 14;
      v93 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v140) = v93 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v140) = 15;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v140) = 15;
      v94 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      v140 = v94;

      static Published.subscript.setter();
    }

    LOBYTE(v140) = 16;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v140) = 16;
      v95 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v140) = v95 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v140) = 17;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v140) = 17;
      v96 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v140) = v96 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v140) = 18;
    if (KeyedDecodingContainer.contains(_:)())
    {
      LOBYTE(v140) = 18;
      v97 = KeyedDecodingContainer.decode(_:forKey:)();
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v140) = v97 & 1;

      static Published.subscript.setter();
    }

    LOBYTE(v140) = 19;
    if ((KeyedDecodingContainer.contains(_:)() & 1) == 0)
    {
      goto LABEL_33;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
    LOBYTE(v142) = 19;
    lazy protocol witness table accessor for type [UInt] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt] and conformance <A> [A], MEMORY[0x277D83EB0], MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v98 = *(v140 + 16);
    if (v98)
    {
      if (v98 > 3)
      {
        v99 = v98 & 0x7FFFFFFFFFFFFFFCLL;
        v101 = (v140 + 48);
        v102 = 0uLL;
        v103 = v98 & 0x7FFFFFFFFFFFFFFCLL;
        v104 = 0uLL;
        do
        {
          v102 = vorrq_s8(v101[-1], v102);
          v104 = vorrq_s8(*v101, v104);
          v101 += 2;
          v103 -= 4;
        }

        while (v103);
        v105 = vorrq_s8(v104, v102);
        v100 = vorr_s8(*v105.i8, *&vextq_s8(v105, v105, 8uLL));
        if (v98 == v99)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v99 = 0;
        v100 = 0;
      }

      v106 = v98 - v99;
      v107 = (v140 + 8 * v99 + 32);
      do
      {
        v108 = *v107++;
        *&v100 |= v108;
        --v106;
      }

      while (v106);
    }

    else
    {
      v100 = 0;
    }

LABEL_32:

    swift_getKeyPath();
    swift_getKeyPath();
    v140 = v100;

    static Published.subscript.setter();
LABEL_33:
    (*(v111 + 8))(v135, v112);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return v48;
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  return v48;
}

uint64_t WorkoutStatePublisher.encode(to:)(void *a1)
{
  v2 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v27, v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5, v8);
  v10 = (&v25 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D14StatePublisherC10CodingKeys33_41D53B2C36E487ECFF8F6B8E33B9BEB6LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D14StatePublisherC10CodingKeys33_41D53B2C36E487ECFF8F6B8E33B9BEB6LLOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v25 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 0;
  v16 = v28;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v16)
  {
    return (*(v12 + 8))(v15, v11);
  }

  v25 = v7;
  v26 = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  v28 = v15;
  static Published.subscript.getter(v10);

  LOBYTE(v29) = 1;
  lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Date? and conformance <A> A?, &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580], MEMORY[0x277D84F40]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v18 = v11;
  _s10Foundation4DateVSgWOhTm_6(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  v33 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation12DateIntervalVGMd, &_sSay10Foundation12DateIntervalVGMR);
  lazy protocol witness table accessor for type [DateInterval] and conformance <A> [A](&lazy protocol witness table cache variable for type [DateInterval] and conformance <A> [A], &lazy protocol witness table cache variable for type DateInterval and conformance DateInterval, MEMORY[0x277CC88B0], MEMORY[0x277D83948]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  swift_getKeyPath();
  swift_getKeyPath();
  v19 = v25;
  static Published.subscript.getter(v25);

  LOBYTE(v29) = 4;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  _s10Foundation4DateVSgWOhTm_6(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 9;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = v2;
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 10;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  if (v29)
  {
    v20 = v29;
    specialized FIUIWorkoutActivityType.ActivityType.init(activityType:)(v20, &v31);

    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v29 = v31;
    v30[0] = v32[0];
    *(v30 + 9) = *(v32 + 9);
    lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType();
    v21 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v23 = v22;

    outlined destroy of FIUIWorkoutActivityType.ActivityType(&v31);
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  *&v29 = v21;
  *(&v29 + 1) = v23;
  v33 = 11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x277D84F40]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data?(v29, *(&v29 + 1));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 12;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 13;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 14;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 16;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 17;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  LOBYTE(v29) = 18;
  KeyedEncodingContainer.encode(_:forKey:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v29);

  *&v29 = NLWorkoutPausedReason.individualRawValues.getter(v29);
  v33 = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySuGMd, &_sSaySuGMR);
  lazy protocol witness table accessor for type [UInt] and conformance <A> [A](&lazy protocol witness table cache variable for type [UInt] and conformance <A> [A], MEMORY[0x277D83E90], MEMORY[0x277D83948]);
  v24 = v28;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v26 + 8))(v24, v18);
}

uint64_t NLWorkoutPausedReason.individualRawValues.getter(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v2 >= 0x40)
      {
        v4 = 0;
      }

      else
      {
        v4 = 1 << v2;
      }

      if ((v4 & v1) != 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 16) + 1, 1, v3);
          v3 = result;
        }

        v6 = *(v3 + 16);
        v5 = *(v3 + 24);
        if (v6 >= v5 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v3);
          v3 = result;
        }

        *(v3 + 16) = v6 + 1;
        *(v3 + 8 * v6 + 32) = v4;
        v1 &= ~v4;
      }

      if (v2 == -1)
      {
        break;
      }

      ++v2;
      if (!v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t WorkoutStatePublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStarted;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutStartDate;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVSgGMd, &_s7Combine9PublishedVy10Foundation4DateVSgGMR);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__workoutActive, v2);
  v7 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pauseTimes;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMd, &_s7Combine9PublishedVySay10Foundation12DateIntervalVGGMR);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v6(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lastUnbalancedPauseStart, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsLock, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__checkingGPSLock, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__gpsUnavailable, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__showGymKitConnectionStatus, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__isGymKit, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__lowPowerModeAnimationSuspended, v2);
  v9 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__activityType;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMd, &_s7Combine9PublishedVySo23FIUIWorkoutActivityTypeCSgGMR);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirrorModeEnabled, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__mirroringToCompanion, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__multisportWorkoutInAutoMode, v2);
  v11 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__segmentIndex;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasSpeedSensorEverBeenConnected, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasCadenceSensorEverBeenConnected, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__hasPowerSensorEverBeenConnected, v2);
  v13 = OBJC_IVAR____TtC11WorkoutCore21WorkoutStatePublisher__pausedReasons;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMd, &_s7Combine9PublishedVySo21NLWorkoutPausedReasonVGMR);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  return v0;
}

uint64_t WorkoutStatePublisher.__deallocating_deinit()
{
  WorkoutStatePublisher.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutStatePublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance WorkoutStatePublisher@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = WorkoutStatePublisher.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void WorkoutStatePublisher.protobuf.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v154 = v149 - v6;
  v7 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v152 = *(v7 - 8);
  v153 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v151 = v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_DateInterval(0);
  v166 = *(v10 - 8);
  v167 = v10;
  v12 = MEMORY[0x28223BE20](v10, v11);
  v173 = v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v172 = (v149 - v15);
  v165 = type metadata accessor for DateInterval();
  v168 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v16);
  v164 = v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v157 = (v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20, v22);
  v24 = (v149 - v23);
  v169 = type metadata accessor for Date();
  v158 = *(v169 - 8);
  v26 = MEMORY[0x28223BE20](v169, v25);
  v150 = v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v163 = v149 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v33 = v149 - v32;
  UnknownStorage.init()();
  v34 = *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v34) = static Apple_Workout_Core_WorkoutStatePublisher._StorageClass.defaultInstance;
  swift_getKeyPath();
  swift_getKeyPath();
  v174 = v34;

  static Published.subscript.getter(v192);

  v35 = v174;

  v36 = v192[0];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(a1 + v35);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v38 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v38);
    *(a1 + v35) = v38;
  }

  v39 = v169;
  v40 = v158;
  swift_beginAccess();
  *(v38 + 16) = v36;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v24);

  v41 = *(v40 + 48);
  v42 = v41(v24, 1, v39);
  v155 = v41;
  v156 = v40 + 48;
  if (v42 == 1)
  {
    _s10Foundation4DateVSgWOhTm_6(v24, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v40 + 32))(v33, v24, v39);
    Date.timeIntervalSinceReferenceDate.getter();
    v44 = v43;
    v45 = v174;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v40 + 8))(v33, v39);
      v46 = *(a1 + v45);
    }

    else
    {
      type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      swift_allocObject();

      v46 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v47);
      (*(v40 + 8))(v33, v39);

      *(a1 + v174) = v46;
    }

    swift_beginAccess();
    *(v46 + 24) = v44;
    *(v46 + 32) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v191);

  v48 = v191[0];
  v49 = v174;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *(a1 + v49);
  if ((v50 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v51 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v51);
    *(a1 + v49) = v51;
  }

  swift_beginAccess();
  *(v51 + 33) = v48;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v190);

  v52 = *(v190[0] + 16);
  v175 = a1;
  if (v52)
  {
    v149[0] = v190[0];
    v149[1] = v2;
    v53 = *(v168 + 16);
    v54 = v190[0] + ((*(v168 + 80) + 32) & ~*(v168 + 80));
    v161 = *(v168 + 72);
    v162 = v53;
    v168 += 16;
    v159 = (v168 - 8);
    v160 = (v40 + 8);
    v55 = v164;
    v56 = v172;
    do
    {
      v170 = v54;
      v171 = v52;
      v57 = v165;
      v162(v55);
      UnknownStorage.init()();
      v58 = v163;
      DateInterval.start.getter();
      Date.timeIntervalSinceReferenceDate.getter();
      v60 = v59;
      v61 = *v160;
      v62 = v169;
      (*v160)(v58, v169);
      *v56 = v60;
      DateInterval.end.getter();
      (*v159)(v55, v57);
      Date.timeIntervalSinceReferenceDate.getter();
      v64 = v63;
      v61(v58, v62);
      v56[1] = v64;
      outlined init with copy of Apple_Workout_Core_DateInterval(v56, v173);
      swift_beginAccess();
      v65 = *(v51 + 40);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65[2] + 1, 1, v65);
      }

      v67 = v65[2];
      v66 = v65[3];
      a1 = v175;
      if (v67 >= v66 >> 1)
      {
        v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v65);
      }

      v65[2] = v67 + 1;
      outlined init with take of Apple_Workout_Core_DateInterval(v173, v65 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v67, type metadata accessor for Apple_Workout_Core_DateInterval);
      v68 = v174;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v172, type metadata accessor for Apple_Workout_Core_DateInterval);
        v51 = *(a1 + v68);
      }

      else
      {
        type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
        swift_allocObject();

        v70 = v68;
        v51 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v69);
        _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v172, type metadata accessor for Apple_Workout_Core_DateInterval);
        a1 = v175;

        *(a1 + v70) = v51;
      }

      swift_beginAccess();
      *(v51 + 40) = v65;

      v54 = v170 + v161;
      v52 = v171 - 1;
    }

    while (v171 != 1);

    v40 = v158;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v71 = v157;
  static Published.subscript.getter(v157);

  v72 = v169;
  v73 = v155(v71, 1, v169);
  v74 = v174;
  if (v73 == 1)
  {
    _s10Foundation4DateVSgWOhTm_6(v71, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v75 = v150;
    (*(v40 + 32))(v150, v71, v72);
    Date.timeIntervalSinceReferenceDate.getter();
    v77 = v76;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v40 + 8))(v75, v72);
      v78 = *(a1 + v74);
    }

    else
    {
      v79 = v75;
      type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      swift_allocObject();

      v78 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v80);
      (*(v40 + 8))(v79, v72);

      *(a1 + v74) = v78;
    }

    swift_beginAccess();
    *(v78 + 48) = v77;
    *(v78 + 56) = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v189);

  v81 = v189[0];
  v82 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *(a1 + v74);
  if ((v82 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v83 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v83);
    *(a1 + v74) = v83;
  }

  swift_beginAccess();
  *(v83 + 57) = v81;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v188);

  v84 = v188[0];
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *(a1 + v74);
  if ((v85 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v86 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v86);
    *(a1 + v74) = v86;
  }

  v87 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
  swift_beginAccess();
  *(v86 + v87) = v84;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v187);

  v88 = v187[0];
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *(a1 + v74);
  if ((v89 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v90 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v90);
    *(a1 + v74) = v90;
  }

  swift_beginAccess();
  *(v90 + 58) = v88;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v186);

  v91 = v186[0];
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *(a1 + v74);
  if ((v92 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v93 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v93);
    *(a1 + v74) = v93;
  }

  swift_beginAccess();
  *(v93 + 59) = v91;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v185);

  v94 = v185[0];
  v95 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *(a1 + v74);
  if ((v95 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v96 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v96);
    *(a1 + v74) = v96;
  }

  v97 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
  swift_beginAccess();
  *(v96 + v97) = v94;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v184);

  v98 = v184[0];
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *(a1 + v74);
  if ((v99 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v100 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v100);
    *(a1 + v74) = v100;
  }

  swift_beginAccess();
  *(v100 + 60) = v98;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v183);

  v101 = v183[0];
  if (v183[0])
  {
    v102 = v151;
    FIUIWorkoutActivityType.protobuf.getter(v151);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v103 = *(a1 + v74);
    }

    else
    {
      type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
      swift_allocObject();

      v103 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v104);
      v74 = v174;

      *(a1 + v74) = v103;
    }

    v105 = v154;
    outlined init with take of Apple_Workout_Core_DateInterval(v102, v154, type metadata accessor for Apple_Workout_Core_Activity);
    (*(v152 + 56))(v105, 0, 1, v153);
    v106 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
    swift_beginAccess();
    outlined assign with take of Apple_Workout_Core_Activity?(v105, v103 + v106);
    swift_endAccess();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v183);

  v107 = v183[0];
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *(a1 + v74);
  if ((v108 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v109 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v109);
    *(a1 + v74) = v109;
  }

  v110 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
  swift_beginAccess();
  *(v109 + v110) = v107;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v182);

  v111 = v182[0];
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *(a1 + v74);
  if ((v112 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v113 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v113);
    *(a1 + v74) = v113;
  }

  v114 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
  swift_beginAccess();
  *(v113 + v114) = v111;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v181);

  v115 = v181[0];
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *(a1 + v74);
  if ((v116 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v117 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v117);
    *(a1 + v74) = v117;
  }

  v118 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
  swift_beginAccess();
  *(v117 + v118) = v115;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v180);

  v119 = v180[0];
  if ((v180[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_75;
  }

  if (HIDWORD(v180[0]))
  {
LABEL_75:
    __break(1u);
    return;
  }

  v120 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *(a1 + v74);
  if ((v120 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v121 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v121);
    *(a1 + v74) = v121;
  }

  v122 = v121 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex;
  swift_beginAccess();
  *v122 = v119;
  *(v122 + 4) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v179);

  v123 = v179[0];
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *(a1 + v74);
  if ((v124 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v125 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v125);
    *(a1 + v74) = v125;
  }

  v126 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
  swift_beginAccess();
  *(v125 + v126) = v123;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v178);

  v127 = v178[0];
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *(a1 + v74);
  if ((v128 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v129 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v129);
    *(a1 + v74) = v129;
  }

  v130 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
  swift_beginAccess();
  *(v129 + v130) = v127;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v177);

  v131 = v177[0];
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *(a1 + v74);
  if ((v132 & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
    swift_allocObject();
    v133 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v133);
    *(a1 + v74) = v133;
  }

  v134 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
  swift_beginAccess();
  *(v133 + v134) = v131;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v176);

  v135 = NLWorkoutPausedReason.protobufValues.getter(v176[0]);
  v136 = *(v135 + 2);
  if (v136)
  {
    v137 = v135 + 40;
    do
    {
      v139 = *(v137 - 1);
      v140 = *v137;
      v141 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
      swift_beginAccess();
      v142 = *(v133 + v141);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v142 + 2) + 1, 1, v142);
      }

      v144 = *(v142 + 2);
      v143 = *(v142 + 3);
      if (v144 >= v143 >> 1)
      {
        v142 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v143 > 1), v144 + 1, 1, v142);
      }

      *(v142 + 2) = v144 + 1;
      v145 = &v142[16 * v144];
      *(v145 + 4) = v139;
      v145[40] = v140;
      v147 = v174;
      v146 = v175;
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v133 = *(v146 + v147);
      if ((v148 & 1) == 0)
      {
        type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher._StorageClass(0);
        swift_allocObject();
        v133 = Apple_Workout_Core_WorkoutStatePublisher._StorageClass.init(copying:)(v133);
        *(v146 + v147) = v133;
      }

      v138 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
      swift_beginAccess();
      *(v133 + v138) = v142;

      v137 += 16;
      --v136;
    }

    while (v136);
  }
}

char *NLWorkoutPausedReason.protobufValues.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0;
  v5[40] = 1;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 1;
    v8[40] = 1;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 2;
    v11[40] = 1;
  }

  return v2;
}

uint64_t WorkoutStatePublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutStatePublisher.protobuf.getter(v3);
  _s10Foundation4DateVACSeAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStatePublisher);
  v4 = Message.serializedData(partial:)();
  _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v3, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  return v4;
}

void Apple_Workout_Core_WorkoutStatePublisher.decodeInto(publisher:)(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v94 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v89 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v88 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v86 - v11;
  v13 = type metadata accessor for Date();
  v97 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v104 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v103 = &v86 - v18;
  v102 = type metadata accessor for DateInterval();
  v106 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v19);
  v105 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Apple_Workout_Core_DateInterval(0);
  v99 = *(v21 - 8);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v101 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v96 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v86 - v29;
  v31 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0) + 20));
  swift_beginAccess();
  v32 = *(v31 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v122[0]) = v32;

  static Published.subscript.setter();
  swift_beginAccess();
  v33 = *(v31 + 32);
  v95 = v3;
  v93 = v12;
  if (v33)
  {
    v34 = 1;
  }

  else
  {
    Date.init(timeIntervalSinceReferenceDate:)();
    v34 = 0;
  }

  v35 = *(v97 + 56);
  v92 = v13;
  v97 += 56;
  v90 = v35;
  v35(v30, v34, 1, v13);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_3(v30, v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  v91 = v30;
  _s10Foundation4DateVSgWOhTm_6(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();
  v36 = *(v31 + 33);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v122[0]) = v36;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v122[0] = MEMORY[0x277D84F90];

  static Published.subscript.setter();
  swift_beginAccess();
  v37 = *(v31 + 40);
  v38 = *(v37 + 16);
  if (v38)
  {
    v86 = *(v31 + 40);
    v87 = v31;
    v39 = v37 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
    v40 = *(v99 + 72);
    v98 = v106 + 32;
    v99 = v40;

    v100 = a1;
    do
    {
      v41 = v101;
      outlined init with copy of Apple_Workout_Core_DateInterval(v39, v101);
      Date.init(timeIntervalSinceReferenceDate:)();
      _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v41, type metadata accessor for Apple_Workout_Core_DateInterval);
      Date.init(timeIntervalSinceReferenceDate:)();
      DateInterval.init(start:end:)();
      swift_getKeyPath();
      swift_getKeyPath();
      v42 = static Published.subscript.modify();
      v44 = v43;
      v45 = *v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v44 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v45[2] + 1, 1, v45);
        *v44 = v45;
      }

      v48 = v45[2];
      v47 = v45[3];
      if (v48 >= v47 >> 1)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v45);
        *v44 = v45;
      }

      v45[2] = v48 + 1;
      (*(v106 + 32))(v45 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v48, v105, v102);
      v42(v122, 0);

      v39 += v99;
      --v38;
    }

    while (v38);

    v31 = v87;
  }

  swift_beginAccess();
  if (*(v31 + 56))
  {
    v49 = 1;
    v51 = v91;
    v50 = v92;
  }

  else
  {
    v51 = v91;
    Date.init(timeIntervalSinceReferenceDate:)();
    v49 = 0;
    v50 = v92;
  }

  v90(v51, v49, 1, v50);
  swift_getKeyPath();
  swift_getKeyPath();
  _s10Foundation4DateVSgWOcTm_3(v51, v96, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  static Published.subscript.setter();
  _s10Foundation4DateVSgWOhTm_6(v51, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();
  v52 = *(v31 + 57);
  swift_getKeyPath();
  swift_getKeyPath();
  v121 = v52;

  static Published.subscript.setter();
  v53 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__checkingGpsLock;
  swift_beginAccess();
  v54 = *(v31 + v53);
  if (v54 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v120 = v54 & 1;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  v55 = *(v31 + 58);
  swift_getKeyPath();
  swift_getKeyPath();
  v119 = v55;

  static Published.subscript.setter();
  swift_beginAccess();
  v56 = *(v31 + 59);
  swift_getKeyPath();
  swift_getKeyPath();
  v118 = v56;

  static Published.subscript.setter();
  v57 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__isGymKit;
  swift_beginAccess();
  v58 = *(v31 + v57);
  if (v58 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v117 = v58 & 1;

    static Published.subscript.setter();
  }

  swift_beginAccess();
  v59 = *(v31 + 60);
  swift_getKeyPath();
  swift_getKeyPath();
  v116 = v59;

  static Published.subscript.setter();
  v60 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__activityType;
  swift_beginAccess();
  v61 = v93;
  _s10Foundation4DateVSgWOcTm_3(v31 + v60, v93, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v62 = v95;
  v106 = *(v94 + 48);
  v63 = (v106)(v61, 1, v95);
  _s10Foundation4DateVSgWOhTm_6(v61, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if (v63 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v115[0] = 0;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v115);

    v64 = v115[0];
    [v115[0] identifier];
  }

  else
  {
    v65 = v88;
    _s10Foundation4DateVSgWOcTm_3(v31 + v60, v88, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    v66 = v106;
    if ((v106)(v65, 1, v62) == 1)
    {
      v67 = v89;
      *(v89 + 8) = 0;
      *v67 = 0;
      v67[2] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      UnknownStorage.init()();
      if (v66(v65, 1, v62) != 1)
      {
        _s10Foundation4DateVSgWOhTm_6(v65, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      }
    }

    else
    {
      v67 = v89;
      outlined init with take of Apple_Workout_Core_DateInterval(v65, v89, type metadata accessor for Apple_Workout_Core_Activity);
    }

    v68 = Apple_Workout_Core_Activity.decoded.getter();
    _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v67, type metadata accessor for Apple_Workout_Core_Activity);
    swift_getKeyPath();
    swift_getKeyPath();
    v115[0] = v68;

    v64 = v68;
    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v115);

    v69 = v115[0];
    [v115[0] identifier];
  }

  v70 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirrorModeEnabled;
  swift_beginAccess();
  v71 = *(v31 + v70);
  swift_getKeyPath();
  swift_getKeyPath();
  v114 = v71;

  static Published.subscript.setter();
  v72 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__mirroringToCompanion;
  swift_beginAccess();
  v73 = *(v31 + v72);
  swift_getKeyPath();
  swift_getKeyPath();
  v113 = v73;

  static Published.subscript.setter();
  v74 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__multisportWorkoutInAutoMode;
  swift_beginAccess();
  v75 = *(v31 + v74);
  if (v75 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v112 = v75 & 1;

    static Published.subscript.setter();
  }

  v76 = (v31 + OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__segmentIndex);
  swift_beginAccess();
  if ((v76[1] & 1) == 0)
  {
    v77 = *v76;
    swift_getKeyPath();
    swift_getKeyPath();
    v111 = v77;

    static Published.subscript.setter();
  }

  v78 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__speedSensor;
  swift_beginAccess();
  v79 = *(v31 + v78);
  if (v79 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v110 = v79 & 1;

    static Published.subscript.setter();
  }

  v80 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__cadenceSensor;
  swift_beginAccess();
  v81 = *(v31 + v80);
  if (v81 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v109 = v81 & 1;

    static Published.subscript.setter();
  }

  v82 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__powerSensor;
  swift_beginAccess();
  v83 = *(v31 + v82);
  if (v83 != 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v108 = v83 & 1;

    static Published.subscript.setter();
  }

  v84 = OBJC_IVAR____TtCV11WorkoutCore40Apple_Workout_Core_WorkoutStatePublisherP33_155C789B29B85C4B9B116E76685C478113_StorageClass__pausedReasons;
  swift_beginAccess();
  v85 = specialized static NLWorkoutPausedReason.from(protobufValues:)(*(v31 + v84));
  swift_getKeyPath();
  swift_getKeyPath();
  v107 = v85;

  static Published.subscript.setter();
}

uint64_t WorkoutStatePublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized WorkoutStatePublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance WorkoutStatePublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WorkoutStatePublisher.protobuf.getter(v3);
  _s10Foundation4DateVACSeAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStatePublisher);
  v4 = Message.serializedData(partial:)();
  _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v3, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance WorkoutStatePublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static WorkoutStatePublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance WorkoutStatePublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized WorkoutStatePublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NLWorkoutPausedReason()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NLWorkoutPausedReason(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStatePublisher.CodingKeys and conformance WorkoutStatePublisher.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Data? and conformance <A> A?(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Date? and conformance <A> A?(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    _s10Foundation4DateVACSeAAWlTm_1(a2, MEMORY[0x277CC9578], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [DateInterval] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation12DateIntervalVGMd, &_sSay10Foundation12DateIntervalVGMR);
    _s10Foundation4DateVACSeAAWlTm_1(a2, MEMORY[0x277CC88A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [UInt] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySuGMd, &_sSaySuGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DateInterval(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Apple_Workout_Core_Activity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t specialized WorkoutStatePublisher.CodingKeys.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t specialized static NLWorkoutPausedReason.from(protobufValues:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 40);
  do
  {
    if (*v4 == 1)
    {
      v5 = *(v4 - 1);
      v6 = result | 2;
      if (v5 != 1)
      {
        v6 = result | 4;
      }

      if (v5)
      {
        result = v6;
      }

      else
      {
        result |= 1uLL;
      }
    }

    v4 += 16;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t specialized static WorkoutStatePublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WorkoutStatePublisher(0);
  v11 = swift_allocObject();
  WorkoutStatePublisher.init()();
  v15 = a1;
  v16 = a2;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s10Foundation4DateVACSeAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStatePublisher);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v2)
  {
  }

  else
  {
    Apple_Workout_Core_WorkoutStatePublisher.decodeInto(publisher:)(v11);
    _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v10, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  return v11;
}

uint64_t specialized WorkoutStatePublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  v17 = a2;
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  _s10Foundation4DateVACSeAAWlTm_1(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutStatePublisher and conformance Apple_Workout_Core_WorkoutStatePublisher, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher, &protocol conformance descriptor for Apple_Workout_Core_WorkoutStatePublisher);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    type metadata accessor for WorkoutStatePublisher(0);
    v3 = swift_allocObject();
    WorkoutStatePublisher.init()();

    Apple_Workout_Core_WorkoutStatePublisher.decodeInto(publisher:)(v12);

    _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(v11, type metadata accessor for Apple_Workout_Core_WorkoutStatePublisher);
  }

  return v3;
}

uint64_t type metadata accessor for WorkoutStatePublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutStatePublisher;
  if (!type metadata singleton initialization cache for WorkoutStatePublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WorkoutStatePublisher(uint64_t a1)
{
  type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Bool>, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Date?>(319, &lazy cache variable for type metadata for Published<Date?>, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Date?>(319, &lazy cache variable for type metadata for Published<[DateInterval]>, &_sSay10Foundation12DateIntervalVGMd, &_sSay10Foundation12DateIntervalVGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Date?>(319, &lazy cache variable for type metadata for Published<FIUIWorkoutActivityType?>, &_sSo23FIUIWorkoutActivityTypeCSgMd, &_sSo23FIUIWorkoutActivityTypeCSgMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<Bool>(319, &lazy cache variable for type metadata for Published<Int>, MEMORY[0x277D83B88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Published<NLWorkoutPausedReason>(319);
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

void type metadata accessor for Published<Date?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

void type metadata accessor for Published<NLWorkoutPausedReason>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<NLWorkoutPausedReason>)
  {
    type metadata accessor for NLWorkoutPausedReason(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<NLWorkoutPausedReason>);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutStatePublisher.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutStatePublisher.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s10Foundation4DateVSgWOcTm_3(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_6(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B13_DateIntervalVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

WorkoutCore::IntervalWorkoutKeyPath __swiftcall IntervalWorkoutKeyPath.init(block:blockCount:step:)(Swift::Int block, Swift::Int blockCount, Swift::Int step)
{
  *v3 = block;
  v3[1] = blockCount;
  v3[2] = step;
  result.step = step;
  result.blockCount = blockCount;
  result.block = block;
  return result;
}

double static IntervalWorkoutKeyPath.InitialState.getter@<D0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for InitialState != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27C729E28;
  result = *&static IntervalWorkoutKeyPath.InitialState;
  *a1 = static IntervalWorkoutKeyPath.InitialState;
  *(a1 + 16) = v1;
  return result;
}

WorkoutCore::IntervalWorkoutKeyPath_optional __swiftcall IntervalWorkoutKeyPath.init(serializedString:)(Swift::String serializedString)
{
  object = serializedString._object;
  countAndFlagsBits = serializedString._countAndFlagsBits;
  v4 = v1;
  v49 = serializedString;
  v5 = lazy protocol witness table accessor for type String and conformance String();
  v6 = MEMORY[0x20F2E7810](46, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v5);
  v7 = v6;
  if (v6[2] == 3)
  {
    v8 = v6[4];
    v9 = v6[5];
    if ((v9 ^ v8) >> 14)
    {
      v11 = v6[6];
      v10 = v6[7];
      v12 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v6[4], v6[5], v11, v10, 10);
      if ((v13 & 0x100) != 0)
      {

        v48 = specialized _parseInteger<A, B>(ascii:radix:)(v8, v9, v11, v10, 10);
        v22 = v21;

        if (v22)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v48 = v12;
        if (v13)
        {
          goto LABEL_17;
        }
      }

      if (v7[2] < 2uLL)
      {
        __break(1u);
        goto LABEL_33;
      }

      v23 = v7[8];
      v24 = v7[9];
      if ((v24 ^ v23) >> 14)
      {
        v26 = v7[10];
        v25 = v7[11];
        v27 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v7[8], v7[9], v26, v25, 10);
        if ((v28 & 0x100) != 0)
        {

          v29 = specialized _parseInteger<A, B>(ascii:radix:)(v23, v24, v26, v25, 10);
          v31 = v30;

          if ((v31 & 1) == 0)
          {
LABEL_25:
            if (v7[2] >= 3uLL)
            {
              v38 = v7[12];
              v39 = v7[13];
              v40 = v7[14];
              v41 = v7[15];

              if (!((v39 ^ v38) >> 14))
              {
                goto LABEL_17;
              }

              v42 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v38, v39, v40, v41, 10);
              if ((v43 & 0x100) != 0)
              {
                v44 = specialized _parseInteger<A, B>(ascii:radix:)(v38, v39, v40, v41, 10);
                v47 = v46;

                if ((v47 & 1) == 0)
                {
LABEL_31:

                  *v4 = v48;
                  *(v4 + 8) = v29;
                  *(v4 + 16) = v44;
                  *(v4 + 24) = 0;
                  goto LABEL_35;
                }
              }

              else
              {
                v44 = v42;
                v45 = v43;

                if ((v45 & 1) == 0)
                {
                  goto LABEL_31;
                }
              }

LABEL_18:
              if (one-time initialization token for core != -1)
              {
                swift_once();
              }

              v32 = type metadata accessor for Logger();
              __swift_project_value_buffer(v32, static WOLog.core);

              v15 = Logger.logObject.getter();
              v16 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v15, v16))
              {
                v17 = swift_slowAlloc();
                v18 = swift_slowAlloc();
                v49._countAndFlagsBits = v18;
                *v17 = 136315138;
                v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v49._countAndFlagsBits);

                *(v17 + 4) = v33;
                v20 = "One of the terms in '%s' does not convert to Int";
                goto LABEL_22;
              }

LABEL_23:

              goto LABEL_24;
            }

LABEL_33:
            __break(1u);
          }
        }

        else if ((v28 & 1) == 0)
        {
          v29 = v27;
          goto LABEL_25;
        }
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static WOLog.core);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v15, v16))
  {
    goto LABEL_23;
  }

  v17 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  v49._countAndFlagsBits = v18;
  *v17 = 136315138;
  v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v49._countAndFlagsBits);

  *(v17 + 4) = v19;
  v20 = "String did not have three components: %s";
LABEL_22:
  _os_log_impl(&dword_20AEA4000, v15, v16, v20, v17, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v18);
  MEMORY[0x20F2E9420](v18, -1, -1);
  MEMORY[0x20F2E9420](v17, -1, -1);
LABEL_24:

  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
LABEL_35:
  result.value.step = v36;
  result.value.blockCount = v35;
  result.value.block = v34;
  result.is_nil = v37;
  return result;
}

uint64_t IntervalWorkoutKeyPath.serializedString.getter()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](46, 0xE100000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](46, 0xE100000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v1);

  return v3;
}

unint64_t IntervalWorkoutKeyPath.description.getter()
{
  _StringGuts.grow(_:)(37);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](0x203A7265746920, 0xE700000000000000);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](0x203A7065747320, 0xE700000000000000);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD000000000000010;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x20F2E6DC0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  lazy protocol witness table accessor for type Substring and conformance Substring();

  result = String.init<A>(_:)();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = static String._copying(_:)(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntervalWorkoutKeyPath(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalWorkoutKeyPath(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

WorkoutCore::RunningTrackProximity_optional __swiftcall RunningTrackProximity.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t RunningTrackProximity.description.getter()
{
  v1 = 0x6172742061206E4FLL;
  v2 = 0x742061207261654ELL;
  if (*v0 != 2)
  {
    v2 = 0x61206E6F20746F4ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

unint64_t lazy protocol witness table accessor for type RunningTrackProximity and conformance RunningTrackProximity()
{
  result = lazy protocol witness table cache variable for type RunningTrackProximity and conformance RunningTrackProximity;
  if (!lazy protocol witness table cache variable for type RunningTrackProximity and conformance RunningTrackProximity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RunningTrackProximity and conformance RunningTrackProximity);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RunningTrackProximity()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RunningTrackProximity(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance RunningTrackProximity()
{
  v1 = 0x6172742061206E4FLL;
  v2 = 0x742061207261654ELL;
  if (*v0 != 2)
  {
    v2 = 0x61206E6F20746F4ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t getEnumTagSinglePayload for RunningTrackProximity(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RunningTrackProximity(uint64_t result, unsigned int a2, unsigned int a3)
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

void Apple_Workout_Core_RunningTrackProximity.decoded.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if ((v1[1] & 1) == 0)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.core);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a1 = v3;
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.ts.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(v1 + *(v7 + 24), v6, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v8 = type metadata accessor for Google_Protobuf_Timestamp();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  Google_Protobuf_Timestamp.init()();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v6, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for Google_Protobuf_Timestamp();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.ts.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 24);
  outlined destroy of Google_Protobuf_Timestamp?(v1 + v3, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v4 = type metadata accessor for Google_Protobuf_Timestamp();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.message.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 20);
  outlined destroy of Google_Protobuf_Timestamp?(v1 + v3, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  outlined init with take of Apple_Workout_Core_DataLinkMessage(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t outlined init with take of Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.entries.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.message.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(v1 + *(v7 + 20), v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_DataLinkMessage(v6, a1);
  }

  v10 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessageEntry.message : Apple_Workout_Core_DataLinkMessageEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(a1 + *(v8 + 20), v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_DataLinkMessage(v7, a2);
  }

  v11 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_DataLinkMessageEntry.message : Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_DataLinkMessage(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 20);
  outlined destroy of Google_Protobuf_Timestamp?(a2 + v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  outlined init with take of Apple_Workout_Core_DataLinkMessage(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t outlined init with copy of Google_Protobuf_Timestamp?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void (*Apple_Workout_Core_DataLinkMessageEntry.message.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of Google_Protobuf_Timestamp?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    v17 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Google_Protobuf_Timestamp?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_DataLinkMessage(v8, v14);
  }

  return Apple_Workout_Core_DataLinkMessageEntry.message.modify;
}

void Apple_Workout_Core_DataLinkMessageEntry.message.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_DataLinkMessage((*a1)[5], v4);
    outlined destroy of Google_Protobuf_Timestamp?(v9 + v3, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    outlined init with take of Apple_Workout_Core_DataLinkMessage(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_DataLinkMessage(v5);
  }

  else
  {
    outlined destroy of Google_Protobuf_Timestamp?(v9 + v3, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    outlined init with take of Apple_Workout_Core_DataLinkMessage(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined init with copy of Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_DataLinkMessage(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Workout_Core_DataLinkMessageEntry.hasMessage.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(v0 + *(v5 + 20), v4, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Google_Protobuf_Timestamp?(v4, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_DataLinkMessageEntry.clearMessage()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 20);
  outlined destroy of Google_Protobuf_Timestamp?(v0 + v1, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessageEntry.ts : Apple_Workout_Core_DataLinkMessageEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(a1 + *(v8 + 24), v7, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v9 = type metadata accessor for Google_Protobuf_Timestamp();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  Google_Protobuf_Timestamp.init()();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v7, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_DataLinkMessageEntry.ts : Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Google_Protobuf_Timestamp();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 24);
  outlined destroy of Google_Protobuf_Timestamp?(a2 + v9, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  (*(v5 + 32))(a2 + v9, v8, v4);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_DataLinkMessageEntry.ts.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Google_Protobuf_Timestamp();
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
  v15 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Google_Protobuf_Timestamp?(v1 + v15, v8, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    Google_Protobuf_Timestamp.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Google_Protobuf_Timestamp?(v8, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return Apple_Workout_Core_DataLinkMessageEntry.ts.modify;
}

void Apple_Workout_Core_DataLinkMessageEntry.ts.modify(uint64_t **a1, char a2)
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
    (*(v7 + 16))((*a1)[4], v5, v6);
    outlined destroy of Google_Protobuf_Timestamp?(v9 + v3, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    outlined destroy of Google_Protobuf_Timestamp?(v9 + v3, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_DataLinkMessageEntry.hasTs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(v0 + *(v5 + 24), v4, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v6 = type metadata accessor for Google_Protobuf_Timestamp();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Google_Protobuf_Timestamp?(v4, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_DataLinkMessageEntry.clearTs()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0) + 24);
  outlined destroy of Google_Protobuf_Timestamp?(v0 + v1, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v2 = type metadata accessor for Google_Protobuf_Timestamp();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
        lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessageEntry);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_DataLinkMessageBatch.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0), lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessageEntry), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Apple_Workout_Core_DataLinkMessageBatch.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C21_DataLinkMessageEntryV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_DataLinkMessageBatch@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch, type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessageBatch);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch, type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessageBatch);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch, type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessageBatch);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C21_DataLinkMessageEntryV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t static Apple_Workout_Core_DataLinkMessageBatch._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t Apple_Workout_Core_DataLinkMessageEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in Apple_Workout_Core_DataLinkMessageEntry.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_Core_DataLinkMessageEntry.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_DataLinkMessageEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessage);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_Core_DataLinkMessageEntry.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  type metadata accessor for Google_Protobuf_Timestamp();
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Google_Protobuf_Timestamp and conformance Google_Protobuf_Timestamp, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_DataLinkMessageEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_DataLinkMessageEntry.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #2 in Apple_Workout_Core_DataLinkMessageEntry.traverse<A>(visitor:)(v3, a1, a2, a3);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_DataLinkMessageEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(a1 + *(v14 + 20), v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  }

  outlined init with take of Apple_Workout_Core_DataLinkMessage(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessage);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v13);
}

uint64_t closure #2 in Apple_Workout_Core_DataLinkMessageEntry.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Google_Protobuf_Timestamp();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  outlined init with copy of Google_Protobuf_Timestamp?(a1 + *(v14 + 24), v8, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Google_Protobuf_Timestamp?(v8, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  }

  (*(v10 + 32))(v13, v8, v9);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Google_Protobuf_Timestamp and conformance Google_Protobuf_Timestamp, MEMORY[0x277D21570], MEMORY[0x277D21568]);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return (*(v10 + 8))(v13, v9);
}

Swift::Int Apple_Workout_Core_DataLinkMessageBatch.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_DataLinkMessageEntry@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Google_Protobuf_Timestamp();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_DataLinkMessageEntry@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessageEntry);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_DataLinkMessageBatch@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessageEntry);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessageEntry);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_DataLinkMessageEntry.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v54 = a1;
  v2 = type metadata accessor for Google_Protobuf_Timestamp();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v48 = &v47 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMR);
  MEMORY[0x28223BE20](v49, v8);
  v50 = &v47 - v9;
  v10 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMR);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v47 - v22;
  v24 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  v25 = *(v24 + 20);
  v26 = *(v20 + 56);
  outlined init with copy of Google_Protobuf_Timestamp?(v54 + v25, v23, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v27 = v53 + v25;
  v28 = v53;
  outlined init with copy of Google_Protobuf_Timestamp?(v27, &v23[v26], &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  v29 = *(v11 + 48);
  if (v29(v23, 1, v10) != 1)
  {
    outlined init with copy of Google_Protobuf_Timestamp?(v23, v18, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
    if (v29(&v23[v26], 1, v10) != 1)
    {
      outlined init with take of Apple_Workout_Core_DataLinkMessage(&v23[v26], v14);
      v33 = static Apple_Workout_Core_DataLinkMessage.== infix(_:_:)(v18, v14);
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v14);
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v18);
      outlined destroy of Google_Protobuf_Timestamp?(v23, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
      if ((v33 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage(v18);
LABEL_6:
    v30 = &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMd;
    v31 = &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSg_ADtMR;
    v32 = v23;
LABEL_14:
    outlined destroy of Google_Protobuf_Timestamp?(v32, v30, v31);
    goto LABEL_15;
  }

  if (v29(&v23[v26], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Google_Protobuf_Timestamp?(v23, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
LABEL_8:
  v34 = *(v24 + 24);
  v35 = v50;
  v36 = *(v49 + 48);
  outlined init with copy of Google_Protobuf_Timestamp?(v54 + v34, v50, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  outlined init with copy of Google_Protobuf_Timestamp?(v28 + v34, v35 + v36, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  v38 = v51;
  v37 = v52;
  v39 = *(v51 + 48);
  if (v39(v35, 1, v52) == 1)
  {
    if (v39(v35 + v36, 1, v37) == 1)
    {
      outlined destroy of Google_Protobuf_Timestamp?(v35, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
LABEL_18:
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v41 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v41 & 1;
    }

    goto LABEL_13;
  }

  v40 = v48;
  outlined init with copy of Google_Protobuf_Timestamp?(v35, v48, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  if (v39(v35 + v36, 1, v37) == 1)
  {
    (*(v38 + 8))(v40, v37);
LABEL_13:
    v30 = &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMd;
    v31 = &_s21InternalSwiftProtobuf07Google_C10_TimestampVSg_ADtMR;
    v32 = v35;
    goto LABEL_14;
  }

  v43 = v35 + v36;
  v44 = v47;
  (*(v38 + 32))(v47, v43, v37);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageEntry and conformance Apple_Workout_Core_DataLinkMessageEntry(&lazy protocol witness table cache variable for type Google_Protobuf_Timestamp and conformance Google_Protobuf_Timestamp, MEMORY[0x277D21570], MEMORY[0x277D21578]);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v46 = *(v38 + 8);
  v46(v44, v37);
  v46(v40, v37);
  outlined destroy of Google_Protobuf_Timestamp?(v35, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  if (v45)
  {
    goto LABEL_18;
  }

LABEL_15:
  v41 = 0;
  return v41 & 1;
}

void type metadata completion function for Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1)
{
  type metadata accessor for [Apple_Workout_Core_DataLinkMessageEntry](319, &lazy cache variable for type metadata for [Apple_Workout_Core_DataLinkMessageEntry], type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_DataLinkMessageEntry(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Apple_Workout_Core_DataLinkMessageEntry](319, &lazy cache variable for type metadata for Apple_Workout_Core_DataLinkMessage?, type metadata accessor for Apple_Workout_Core_DataLinkMessage, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Apple_Workout_Core_DataLinkMessageEntry](319, &lazy cache variable for type metadata for Google_Protobuf_Timestamp?, MEMORY[0x277D21570], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_DataLinkMessageEntry](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of Google_Protobuf_Timestamp?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id MirroredHostSummaryUpdate.hkWorkout.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

WorkoutCore::MirroredHostSummaryUpdate __swiftcall MirroredHostSummaryUpdate.init(hkWorkout:)(HKWorkout hkWorkout)
{
  v1->super.super.super.isa = hkWorkout.super.super.super.isa;
  result.hkWorkout.value = hkWorkout;
  return result;
}

uint64_t MirroredHostSummaryUpdate.init(protobuf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v43 - v9;
  v11 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v43 - v18;
  v20 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
  v21 = a1;
  outlined init with copy of Apple_Workout_Core_MirroredBlob?(a1 + v20, v10);
  v22 = *(v12 + 48);
  if (v22(v10, 1, v11) == 1)
  {
    *v19 = 0;
    v19[8] = 1;
    *(v19 + 1) = xmmword_20B42FB30;
    UnknownStorage.init()();
    if (v22(v10, 1, v11) != 1)
    {
      _s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgWOhTm_0(v10, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredBlob(v10, v19);
  }

  v23 = *v19;
  v24 = v19[8];
  _s11WorkoutCore06Apple_a1_B13_MirroredBlobVWOhTm_0(v19, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v44 = v23;
  v45 = v24;
  MirroredBlobContentType.init(protobuf:)(&v44, &v46);
  v25 = v46;
  if (!v46)
  {
    v27 = v43[0];
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.dataLink);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_21;
    }

    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = "[mirrored] cannot deserialize hkWorkout from protobuf (not supported)";
    v33 = v30;
    v34 = v29;
    v35 = v31;
    v36 = 2;
    goto LABEL_18;
  }

  if (v46 != 1)
  {
    v27 = v43[0];
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static WOLog.dataLink);
    v29 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v29, v38))
    {
      goto LABEL_21;
    }

    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = v25;
    v32 = "[mirrored] cannot deserialize hkWorkout from unknown default: %ld";
    v33 = v38;
    v34 = v29;
    v35 = v31;
    v36 = 12;
LABEL_18:
    _os_log_impl(&dword_20AEA4000, v34, v33, v32, v35, v36);
    MEMORY[0x20F2E9420](v31, -1, -1);
LABEL_21:

    result = _s11WorkoutCore06Apple_a1_B13_MirroredBlobVWOhTm_0(v21, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
    v41 = 0;
    goto LABEL_22;
  }

  outlined init with copy of Apple_Workout_Core_MirroredBlob?(v21 + v20, v7);
  if (v22(v7, 1, v11) == 1)
  {
    *v16 = 0;
    v16[8] = 1;
    *(v16 + 1) = xmmword_20B42FB30;
    UnknownStorage.init()();
    v26 = v22(v7, 1, v11);
    v27 = v43[0];
    if (v26 != 1)
    {
      _s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_MirroredBlob(v7, v16);
    v27 = v43[0];
  }

  _sSo17NSKeyedUnarchiverCMaTm_2(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  _sSo17NSKeyedUnarchiverCMaTm_2(0, &lazy cache variable for type metadata for HKWorkout, 0x277CCDBE8);
  v39 = *(v16 + 2);
  v40 = *(v16 + 3);
  outlined copy of Data._Representation(v39, v40);
  _s11WorkoutCore06Apple_a1_B13_MirroredBlobVWOhTm_0(v16, type metadata accessor for Apple_Workout_Core_MirroredBlob);
  v41 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  _s11WorkoutCore06Apple_a1_B13_MirroredBlobVWOhTm_0(v21, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  result = outlined consume of Data._Representation(v39, v40);
LABEL_22:
  *v27 = v41;
  return result;
}

uint64_t MirroredHostSummaryUpdate.protobuf.getter()
{
  type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  return static Message.with(_:)();
}

void closure #1 in MirroredHostSummaryUpdate.protobuf.getter(uint64_t a1, void *a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Apple_Workout_Core_MirroredBlob(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v9 = objc_opt_self();
    v34[0] = 0;
    v10 = a2;
    v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:v34];
    v12 = v34[0];
    if (v11)
    {
      v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v33[1] = v33;
      MEMORY[0x28223BE20](v16, v17);
      LOBYTE(v33[-4]) = 1;
      v33[-3] = v13;
      v33[-2] = v15;
      outlined copy of Data._Representation(v13, v15);
      lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredBlob and conformance Apple_Workout_Core_MirroredBlob, type metadata accessor for Apple_Workout_Core_MirroredBlob, &protocol conformance descriptor for Apple_Workout_Core_MirroredBlob);
      static Message.with(_:)();
      outlined consume of Data._Representation(v13, v15);

      outlined consume of Data._Representation(v13, v15);
      v18 = *(type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0) + 20);
      _s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgWOhTm_0(a1 + v18, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMd, &_s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgMR);
      outlined init with take of Apple_Workout_Core_MirroredBlob(v8, a1 + v18);
      (*(v5 + 56))(a1 + v18, 0, 1, v4);
    }

    else
    {
      v23 = v12;
      v24 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static WOLog.dataLink);
      v26 = v24;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138412290;
        v31 = v24;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v32;
        *v30 = v32;
        _os_log_impl(&dword_20AEA4000, v27, v28, "[mirrored] cannot serialize hkWorkout using NSKeyedArchiver to protobuf, error: %@", v29, 0xCu);
        _s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgWOhTm_0(v30, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v30, -1, -1);
        MEMORY[0x20F2E9420](v29, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.dataLink);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20AEA4000, v20, v21, "[mirrored] skip serialize hkWorkout to protobuf, hkWorkout is nil", v22, 2u);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }
  }
}

uint64_t MirroredHostSummaryUpdate.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9HKWorkoutCSgMd, &_sSo9HKWorkoutCSgMR);
  v0 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v0);

  return 0x756F6B726F576B68;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredHostSummaryUpdate()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo9HKWorkoutCSgMd, &_sSo9HKWorkoutCSgMR);
  v0 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v0);

  return 0x756F6B726F576B68;
}

uint64_t protocol witness for MirroredMessageProtocol.protobuf.getter in conformance MirroredHostSummaryUpdate()
{
  type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  return static Message.with(_:)();
}

uint64_t static MirroredHostSummaryUpdate.== infix(_:_:)(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      _sSo17NSKeyedUnarchiverCMaTm_2(0, &lazy cache variable for type metadata for HKWorkout, 0x277CCDBE8);
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void MirroredHostSummaryUpdate.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int MirroredHostSummaryUpdate.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostSummaryUpdate()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v2 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MirroredHostSummaryUpdate(uint64_t a1)
{
  v2 = *v1;
  if (*v1)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostSummaryUpdate(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    v3 = v2;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MirroredHostSummaryUpdate(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1)
  {
    if (v3)
    {
      _sSo17NSKeyedUnarchiverCMaTm_2(0, &lazy cache variable for type metadata for HKWorkout, 0x277CCDBE8);
      v4 = v3;
      v5 = v2;
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t _s11WorkoutCore06Apple_a1_B13_MirroredBlobVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s11WorkoutCore06Apple_a1_B13_MirroredBlobVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t instantiation function for generic protocol witness table for MirroredHostSummaryUpdate(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate()
{
  result = lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate;
  if (!lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate;
  if (!lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate;
  if (!lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostSummaryUpdate and conformance MirroredHostSummaryUpdate);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostSummaryUpdate(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MirroredHostSummaryUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MetricPlatterProvider.metricPlatters(liveWorkoutConfiguration:workoutSettingsManager:)(uint64_t a1, void *a2)
{
  v4 = specialized static MetricPlatterProvider.featuredPlatters(workoutConfiguration:workoutSettingsManager:)(*(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration));
  v5 = static MetricPlatterProvider.nonFeaturedPlatters(liveWorkoutConfiguration:workoutSettingsManager:)(a1, a2);
  result = specialized Array.append<A>(contentsOf:)(v5);
  v7 = 0;
  v8 = v4;
  v9 = *(v4 + 2);
  v10 = MEMORY[0x277D84F90];
LABEL_2:
  v11 = 16 * v7;
  while (1)
  {
    if (v9 == v7)
    {

      return v10;
    }

    if (v7 >= *(v8 + 2))
    {
      break;
    }

    ++v7;
    v12 = v11 + 16;
    v13 = v8[v11 + 33];
    v11 += 16;
    if (v13)
    {
      v14 = v8[v12 + 16];
      v15 = *&v8[v12 + 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
      }

      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 33) = 1;
      *(v18 + 40) = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

char *static MetricPlatterProvider.nonFeaturedPlatters(liveWorkoutConfiguration:workoutSettingsManager:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v100 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v100 - v10;
  v12 = LiveWorkoutConfiguration.currentActivityType.getter();
  v117 = *(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_activityMoveMode);
  v119 = a1;
  outlined init with copy of CatalogWorkout?(a1 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_catalogWorkout, v11, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
  v13 = type metadata accessor for CatalogWorkout();
  v14 = *(v13 - 8);
  v15 = v12;
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    outlined destroy of CatalogWorkout?(v11, &_s11SeymourCore14CatalogWorkoutVSgMd, &_s11SeymourCore14CatalogWorkoutVSgMR);
    v16 = 0;
  }

  else
  {
    v17 = CatalogWorkout.mediaType.getter();
    v19 = v18;
    v20 = a2;
    v22 = v21;
    (*(v14 + 8))(v11, v13);
    v23 = v22 & 1;
    a2 = v20;
    v123 = v17;
    v124 = v19;
    v125 = v23;
    v120 = xmmword_20B438AF0;
    v121 = 1;
    lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
    lazy protocol witness table accessor for type CatalogMediaType and conformance CatalogMediaType();
    v16 = static PortableEnum<>.== infix(_:_:)();
    outlined consume of PortableEnum<CatalogMediaType>(v123, v124, v125);
  }

  v24 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_fitnessMachineSessionUUID;
  v25 = v119;
  swift_beginAccess();
  outlined init with copy of CatalogWorkout?(v25 + v24, v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = type metadata accessor for UUID();
  v27 = (*(*(v26 - 8) + 48))(v7, 1, v26);
  outlined destroy of CatalogWorkout?(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
  v28 = swift_allocObject();
  v29 = v28;
  *(v28 + 16) = xmmword_20B423A90;
  if (v16)
  {
    *(v28 + 32) = 264;
    *(v28 + 40) = 0;

    return v29;
  }

  v118 = xmmword_20B423A90;
  v116 = v27;
  FIUIWorkoutSettingsManager.userConfiguredSupportedMetricsButDuration.getter();
  *(v29 + 32) = 256;
  *(v29 + 40) = v30;
  v31 = v15;
  if (*(v25 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform) != 1)
  {
    v36 = specialized static MetricPlatterProvider.customizeMetrics(inMetricPlatters:basedOn:and:)(v29, v25, a2);

    return v36;
  }

  inited = swift_initStackObject();
  inited[1] = v118;
  static MetricPlatterProvider.standardSecondPlatter(workoutSettingsManager:activityType:)(a2, v15, (inited + 2));
  v33 = [v15 supportsSegments];
  v111 = a2;
  if (v33)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = v118;
    v35 = [v31 effectiveTypeIdentifier];
    *(v34 + 32) = 6;
    *(v34 + 40) = 0;
    *(v34 + 33) = v35 == 37;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v37 = v117;
  if ([v31 supportsDistanceSplits])
  {
    v115 = swift_allocObject();
    *(v115 + 16) = v118;
    v38 = [v31 effectiveTypeIdentifier];
    if ((v38 - 13) <= 0x3A && ((1 << (v38 - 13)) & 0x400800001400001) != 0)
    {
      v39 = [v31 isIndoor];
      v40 = v115;
      *(v115 + 32) = 9;
      *(v40 + 40) = 0;
      *(v40 + 33) = v39 ^ 1;
    }

    else
    {
      v99 = v115;
      *(v115 + 32) = 9;
      *(v99 + 40) = 0;
    }
  }

  else
  {
    v115 = MEMORY[0x277D84F90];
  }

  v41 = swift_initStackObject();
  *(v41 + 16) = v118;
  *(v41 + 32) = 263;
  v108 = v41 + 32;
  v114 = v41;
  *(v41 + 40) = 0;
  v42 = objc_opt_self();
  v43 = [v31 identifier];
  v44 = [v31 isIndoor];
  v110 = v42;
  if ([v42 fiui:v43 isHeartRateSupportedForActivityType:v44 isIndoor:?])
  {
    v45 = swift_allocObject();
    *(v45 + 16) = v118;
    v46 = [v31 effectiveTypeIdentifier];
    *(v45 + 32) = 10;
    *(v45 + 40) = 0;
    v113 = v45;
    *(v45 + 33) = ((v46 - 13) < 0x3B) & (0x404C00081400009uLL >> (v46 - 13));
  }

  else
  {
    v113 = MEMORY[0x277D84F90];
  }

  v47 = [v31 effectiveTypeIdentifier];
  if (v47 == 13 || v47 == 37 && ([v31 isIndoor] & 1) == 0 && objc_msgSend(objc_opt_self(), sel_isRunningFormAvailable))
  {
    v48 = swift_allocObject();
    *(v48 + 16) = v118;
    if ([v31 effectiveTypeIdentifier] == 13)
    {
      v49 = [objc_opt_self() hasHadPairedCyclingPowerSensors];
      *(v48 + 32) = 12;
      *(v48 + 40) = 0;
      *(v48 + 33) = v49;
    }

    else
    {
      *(v48 + 32) = 12;
      *(v48 + 40) = 0;
    }
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
  }

  if ([v31 effectiveTypeIdentifier] == 13)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = v118;
    v51 = [v31 effectiveTypeIdentifier];
    v112 = v50;
    if (v51 == 13)
    {
      v52 = [objc_opt_self() hasHadPairedCyclingPowerSensors];
      *(v50 + 32) = 13;
      *(v50 + 40) = 0;
      *(v50 + 33) = v52;
    }

    else
    {
      *(v50 + 32) = 13;
      *(v50 + 40) = 0;
    }
  }

  else
  {
    v112 = MEMORY[0x277D84F90];
  }

  if ([v31 effectiveTypeIdentifier] == 13 && objc_msgSend(v110, sel_fiui_activitySupportsMetricType_activityType_activityMoveMode_, 1, v31, 1))
  {
    v53 = swift_allocObject();
    *(v53 + 16) = v118;
    *(v53 + 32) = 271;
    *(v53 + 40) = 0;
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v54 = [v31 effectiveTypeIdentifier];
  if (v54 == 70 || v54 == 52)
  {
    goto LABEL_40;
  }

  v55 = [v31 effectiveTypeIdentifier];
  v56 = MEMORY[0x277D84F90];
  v57 = v55 - 13;
  if ((v55 - 13) <= 0x3A)
  {
    if (((1 << v57) & 0x400000001000001) == 0)
    {
      if (((1 << v57) & 0x800000000800) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_43;
    }

LABEL_40:
    if ([v31 &selRef_dataProvider_didChangeActivityTypeTo_ + 7])
    {
      v56 = MEMORY[0x277D84F90];
      goto LABEL_50;
    }

LABEL_43:
    v58 = swift_allocObject();
    *(v58 + 16) = v118;
    v59 = [v31 effectiveTypeIdentifier] - 13;
    if (v59 <= 0x3A)
    {
      if (((1 << v59) & 0x400000001000001) != 0)
      {
        v60 = [v31 &selRef_dataProvider_didChangeActivityTypeTo_ + 7] ^ 1;
LABEL_49:
        v56 = v58;
        *(v58 + 32) = 14;
        *(v58 + 40) = 0;
        *(v58 + 33) = v60;
        goto LABEL_50;
      }

      if (((1 << v59) & 0x800000000800) != 0)
      {
        v60 = 1;
        goto LABEL_49;
      }
    }

    v60 = 0;
    goto LABEL_49;
  }

LABEL_50:
  v122 = v29;
  v61 = v56;

  v110 = inited;
  specialized Array.append<A>(contentsOf:)(v62);

  specialized Array.append<A>(contentsOf:)(v63);

  v109 = v34;
  specialized Array.append<A>(contentsOf:)(v64);

  specialized Array.append<A>(contentsOf:)(v65);

  v105 = v61;
  specialized Array.append<A>(contentsOf:)(v66);

  v107 = v48;
  specialized Array.append<A>(contentsOf:)(v67);

  specialized Array.append<A>(contentsOf:)(v68);

  specialized Array.append<A>(contentsOf:)(v69);

  specialized Array.append<A>(contentsOf:)(v70);
  v71 = v122;
  v72 = specialized static MetricPlatterStore.read(for:)(v31);
  v102 = specialized static MetricPlatterProvider.addMissingSupportedPlatters(userConfiguredMetricPlatters:supportedMetricPlatters:)(v72, v71);
  v73 = specialized static MetricPlatterProvider.filterSupportedMetricPlatters(allMetricPlatters:supportedMetricPlatters:)(v102, v71);
  v74 = v73;
  v104 = v71;
  v103 = v72;
  if (v116 != 1)
  {
    v75 = specialized static MetricPlatterProvider.addGymKitMetrics(platters:workoutSettingsManager:)(v73, v111);

    v74 = v75;
  }

  v106 = v53;
  *&v118 = v29;
  v76 = *(v74 + 16);
  if (!v76)
  {
    v79 = MEMORY[0x277D84F90];
    goto LABEL_72;
  }

  v77 = 0;
  v78 = v74 + 32;
  v100 = v76 - 1;
  v79 = MEMORY[0x277D84F90];
  v101 = v74 + 32;
  do
  {
    v80 = (v78 + 16 * v77);
    v81 = v77;
    while (1)
    {
      if (v81 >= *(v74 + 16))
      {
        __break(1u);
        goto LABEL_80;
      }

      v82 = *v80;
      v83 = v80[1];
      v84 = *(v80 + 1);
      if (v37 != 2)
      {
        if (v37 != 1)
        {
          goto LABEL_81;
        }

LABEL_63:

        goto LABEL_65;
      }

      if (v82 == 12)
      {
        break;
      }

      if (v82 != 13)
      {
        goto LABEL_63;
      }

LABEL_56:
      ++v81;
      v80 += 16;
      if (v76 == v81)
      {
        goto LABEL_72;
      }
    }

    if ([v31 effectiveTypeIdentifier] != 13)
    {

      goto LABEL_56;
    }

    LOBYTE(v82) = 12;
LABEL_65:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v120 = v79;
    v86 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 16) + 1, 1);
      v79 = v120;
    }

    v88 = *(v79 + 16);
    v87 = *(v79 + 24);
    if (v88 >= v87 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v87 > 1), v88 + 1, 1);
      v79 = v120;
    }

    *(v79 + 16) = v88 + 1;
    v89 = v79 + 16 * v88;
    *(v89 + 32) = v82;
    v77 = v81 + 1;
    *(v89 + 33) = v83;
    *(v89 + 40) = v84;
    v31 = v86;
    v37 = v117;
    v78 = v101;
  }

  while (v100 != v81);
LABEL_72:
  v90 = v111;
  v91 = specialized static MetricPlatterProvider.customizeMetrics(inMetricPlatters:basedOn:and:)(v79, v119, v111);
  v92 = [v90 defaultMetricsProvider];
  if (v92)
  {
    v93 = v92;
    v94 = v116 != 1;

    swift_setDeallocating();
    swift_arrayDestroy();

    swift_setDeallocating();
    swift_arrayDestroy();
    v95 = [v93 supportedMetricsWithIsMachineWorkout:v94 activityType:v31];

    if (v95)
    {
      type metadata accessor for NSNumber();
      v96 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v96 = MEMORY[0x277D84F90];
    }

    specialized static MetricPlatterProvider.filterUnsupportedMetrics(from:supportedMetrics:)(v91, v96);
    v29 = v97;

    return v29;
  }

  else
  {
LABEL_80:
    __break(1u);
LABEL_81:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000059, 0x800000020B45CE50, "WorkoutCore/MetricPlatterSupport.swift", 38, 2, 157, 0);
    __break(1u);
  }

  return result;
}

void static MetricPlatterProvider.standardSecondPlatter(workoutSettingsManager:activityType:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [a1 defaultMetricsProvider];
  if (!v5)
  {
    __break(1u);
    goto LABEL_28;
  }

  v6 = v5;
  v7 = [v5 defaultSecondPlatterMetrics];

  if (!v7)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v21 = a2;
  v22 = a3;
  type metadata accessor for NSNumber();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F2E7A20](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = [v12 unsignedIntegerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
      }

      v17 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v17 >= v16 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v11);
      }

      *(v11 + 2) = v17 + 1;
      *&v11[8 * v17 + 32] = v15;
      ++v10;
      if (v14 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_21:

  if ([v21 effectiveTypeIdentifier] == 13)
  {
    v18 = objc_opt_self();
    v19 = v22;
    if ([v18 hasHadPairedCyclingPowerSensors])
    {
      v20 = 1;
    }

    else
    {
      v20 = [v18 hasHadPairedCyclingCadenceSensors];
    }
  }

  else
  {
    v20 = 0;
    v19 = v22;
  }

  *v19 = 1;
  *(v19 + 8) = v11;
  *(v19 + 1) = v20;
}

void static MetricPlatterProvider.filterEmptyMetricPlatters(from:liveWorkoutConfiguration:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v4 = 0;
  v47 = a1 + 32;
  v44 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration;
  v45 = *(a1 + 16);
  v42 = MEMORY[0x277D84F90];
  v43 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform;
  while (1)
  {
    if (v4 >= v2)
    {
      goto LABEL_59;
    }

    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v7 = (v47 + 16 * v4);
    v8 = *(v7 + 1);
    ++v4;
    v9 = *v7;
    if (v9 == 1)
    {
      if (!v8)
      {
        goto LABEL_6;
      }

      v46 = v7[1];
      v48 = v6;
      v49 = v6;
      v56 = *(v8 + 16);
      if (v56)
      {
        v10 = *(a2 + v44);
        v55 = *(a2 + v43);
        v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
        v12 = one-time initialization token for core;

        if (v12 != -1)
        {
          swift_once();
        }

        v53 = v8 + 32;
        v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        v54 = v11;
        swift_beginAccess();
        v57 = v10;
        v50 = v13;
        swift_beginAccess();
        v14 = 0;
        v51 = MEMORY[0x277D84F90];
        v52 = v8;
        while (1)
        {
          if (v14 >= *(v8 + 16))
          {
            __break(1u);
LABEL_59:
            __break(1u);
            goto LABEL_60;
          }

          v15 = *(v53 + 8 * v14);
          v16 = type metadata accessor for Logger();
          __swift_project_value_buffer(v16, static WOLog.core);
          v17 = Logger.logObject.getter();
          v18 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v17, v18))
          {
            v19 = swift_slowAlloc();
            *v19 = 0;
            _os_log_impl(&dword_20AEA4000, v17, v18, "[UltraMode] Not supported for hardware, returning false", v19, 2u);
            MEMORY[0x20F2E9420](v19, -1, -1);
          }

          v20 = 0x3FC1FFFFFuLL >> v15;
          if (v15 > 0x24)
          {
            LOBYTE(v20) = 1;
          }

          v21 = *(v57 + v54) == 1 ? v20 : 1;
          if ((v55 & 1) == 0)
          {
            break;
          }

          v22 = v21;
LABEL_41:
          if (v22)
          {
            v33 = v51;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59 = v51;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1);
              v33 = v59;
            }

            v36 = *(v33 + 16);
            v35 = *(v33 + 24);
            v8 = v52;
            if (v36 >= v35 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
              v33 = v59;
            }

            *(v33 + 16) = v36 + 1;
            v51 = v33;
            *(v33 + 8 * v36 + 32) = v15;
            goto LABEL_16;
          }

LABEL_15:
          v8 = v52;
LABEL_16:
          if (v56 == ++v14)
          {
            goto LABEL_4;
          }
        }

        if (v15 - 37 < 4 || v15 == 5)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v58);

          v22 = v58[0];
          if (v15 <= 0x30)
          {
LABEL_30:
            if (((1 << v15) & 0x1061800C44112) != 0)
            {
              v23 = *(v57 + v50);
              if ([v23 isIndoor])
              {
                v24 = a2;
                [v23 effectiveTypeIdentifier];
                v25 = _HKWorkoutDistanceTypeForActivityType();
                if (!v25)
                {
                  goto LABEL_61;
                }

                v26 = v25;
                v27 = [v25 identifier];
                v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v30 = v29;

                if (v28 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v30 == v31)
                {

                  a2 = v24;
LABEL_37:
                  swift_getKeyPath();
                  swift_getKeyPath();
                  static Published.subscript.getter(v58);

                  if ((v21 & v58[0] & 1) == 0)
                  {
                    goto LABEL_15;
                  }

                  goto LABEL_41;
                }

                v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

                a2 = v24;
                if (v32)
                {
                  goto LABEL_37;
                }
              }
            }
          }
        }

        else
        {
          v22 = 1;
          if (v15 <= 0x30)
          {
            goto LABEL_30;
          }
        }

        if ((v21 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_41;
      }

      v51 = MEMORY[0x277D84F90];
LABEL_4:
      v5 = *(v51 + 16);

      if (v5)
      {
        LOBYTE(v9) = 1;
        v2 = v45;
        goto LABEL_51;
      }

      v2 = v45;
      v6 = v48;
      v4 = v49;
LABEL_6:
      if (v6 == v2)
      {
        return;
      }
    }

    else
    {
      v46 = v7[1];
      v48 = v6;
      v49 = v6;

LABEL_51:
      v37 = v42;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v60 = v42;
      if ((v38 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 16) + 1, 1);
        v37 = v60;
      }

      v4 = v49;
      v40 = *(v37 + 16);
      v39 = *(v37 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v4 = v49;
        v37 = v60;
      }

      *(v37 + 16) = v40 + 1;
      v42 = v37;
      v41 = v37 + 16 * v40;
      *(v41 + 32) = v9;
      *(v41 + 33) = v46;
      *(v41 + 40) = v8;
      if (v48 == v2)
      {
        return;
      }
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

void key path getter for LiveWorkoutConfiguration.devicesSupportHeartRate : LiveWorkoutConfiguration(_BYTE *a4@<X8>)
{
  key path getter for LiveWorkoutConfiguration.devicesSupportHeartRate : LiveWorkoutConfiguration(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a4 = v5;
}

double key path setter for LiveWorkoutConfiguration.devicesSupportHeartRate : LiveWorkoutConfiguration(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  static Published.subscript.setter();
  return result;
}

char *specialized static MetricPlatterProvider.featuredPlatters(workoutConfiguration:workoutSettingsManager:)(uint64_t a1)
{
  v2 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = MEMORY[0x277D84F90];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v6 = *(v4 + 2);
      v13 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v13 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v6 + 1, 1, v4);
      }

      v8 = 5;
    }

    else if (v3 == 3)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v6 = *(v4 + 2);
      v5 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v5 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
      }

      v8 = 4;
    }

    else
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
      v6 = *(v4 + 2);
      v14 = *(v4 + 3);
      v7 = v6 + 1;
      if (v6 >= v14 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v6 + 1, 1, v4);
      }

      v8 = 11;
    }

LABEL_19:
    *(v4 + 2) = v7;
    v15 = &v4[16 * v6];
    v15[32] = v8;
    v15[33] = 1;
    *(v15 + 5) = 0;
    return v4;
  }

  if (*(a1 + v2))
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v4 + 2);
    v9 = *(v4 + 3);
    v11 = v9 >> 1;
    v6 = v10 + 1;
    if (v9 >> 1 <= v10)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
      v9 = *(v4 + 3);
      v11 = v9 >> 1;
    }

    *(v4 + 2) = v6;
    v12 = &v4[16 * v10];
    *(v12 + 16) = 258;
    *(v12 + 5) = 0;
    v7 = v10 + 2;
    if (v11 < v7)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v7, 1, v4);
    }

    v8 = 3;
    goto LABEL_19;
  }

  return v4;
}

uint64_t outlined init with copy of CatalogWorkout?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of CatalogWorkout?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized static MetricPlatterProvider.addMissingSupportedPlatters(userConfiguredMetricPlatters:supportedMetricPlatters:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v26;
    v6 = (a1 + 32);
    v7 = *(v26 + 16);
    do
    {
      v9 = *v6;
      v6 += 16;
      v8 = v9;
      v10 = *(v26 + 24);
      if (v7 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
      }

      *(v26 + 16) = v7 + 1;
      *(v26 + v7++ + 32) = v8;
      --v4;
    }

    while (v4);
  }

  v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore17MetricPlatterTypeO_SayAFGTt0g5Tf4g_n(v5);

  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a2 + 32;
    v16 = MEMORY[0x277D84F90];
    v25 = v15;
    do
    {
      v17 = v15 + 16 * v14;
      v18 = v14;
      while (1)
      {
        if (v18 >= v13)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v14 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_23;
        }

        v19 = *(v17 + 8);
        v20 = *(v17 + 1);
        v21 = *v17;

        if ((specialized Set.contains(_:)(v21, v11) & 1) == 0)
        {
          break;
        }

        ++v18;
        v17 += 16;
        if (v14 == v13)
        {
          goto LABEL_21;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 33) = v20;
      *(v24 + 40) = v19;
      v15 = v25;
    }

    while (v14 != v13);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_21:

  specialized Array.append<A>(contentsOf:)(v16);
  return a1;
}

uint64_t specialized static MetricPlatterProvider.filterSupportedMetricPlatters(allMetricPlatters:supportedMetricPlatters:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v25 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v25;
    v6 = (a2 + 32);
    v7 = *(v25 + 16);
    do
    {
      v9 = *v6;
      v6 += 16;
      v8 = v9;
      v10 = *(v25 + 24);
      if (v7 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v7 + 1, 1);
      }

      *(v25 + 16) = v7 + 1;
      *(v25 + v7++ + 32) = v8;
      --v3;
    }

    while (v3);
  }

  v11 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore17MetricPlatterTypeO_SayAFGTt0g5Tf4g_n(v4);

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = a1 + 32;
    v16 = MEMORY[0x277D84F90];
    do
    {
      v17 = v15 + 16 * v14;
      v18 = v14;
      while (1)
      {
        if (v18 >= v13)
        {
          __break(1u);
LABEL_23:
          __break(1u);
          return result;
        }

        v14 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_23;
        }

        v19 = *(v17 + 8);
        v20 = *(v17 + 1);
        v21 = *v17;

        if (specialized Set.contains(_:)(v21, v11))
        {
          break;
        }

        ++v18;
        v17 += 16;
        if (v14 == v13)
        {
          goto LABEL_21;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
        v16 = result;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v16);
        v16 = result;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 33) = v20;
      *(v24 + 40) = v19;
    }

    while (v14 != v13);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_21:

  return v16;
}

uint64_t specialized static MetricPlatterProvider.addGymKitMetrics(platters:workoutSettingsManager:)(uint64_t a1, void *a2)
{
  v2 = a1;
  v18 = a1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a1 + 32;

    v6 = 0;
    while (2)
    {
      switch(*v5)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
          v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v7)
          {
            goto LABEL_9;
          }

          ++v6;
          v5 += 16;
          if (v3 == v6)
          {
            return v2;
          }

          continue;
        default:

LABEL_9:
          v8 = *(v5 + 1);
          v9 = *(v5 + 8);
          v14[0] = *v5;
          v14[1] = v8;
          v15 = v9;

          static MetricPlatter.addGymKitMetrics(to:workoutSettingsManager:)(a2, v14, v16);

          v10 = v16[0];
          v11 = v16[1];
          v12 = v17;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMd, &_ss23_ContiguousArrayStorageCy11WorkoutCore13MetricPlatterVGMR);
          result = swift_initStackObject();
          *(result + 16) = xmmword_20B423A90;
          *(result + 32) = v10;
          *(result + 33) = v11;
          *(result + 40) = v12;
          if (!__OFADD__(v6, 1))
          {
            specialized Array.replaceSubrange<A>(_:with:)(v6, v6 + 1, result);
            swift_setDeallocating();
            swift_arrayDestroy();
            return v18;
          }

          __break(1u);
          break;
      }

      break;
    }
  }

  else
  {

    return v2;
  }

  return result;
}

char *specialized static MetricPlatterProvider.customizeMetrics(inMetricPlatters:basedOn:and:)(char *a1, uint64_t a2, void *a3)
{

  v5 = LiveWorkoutConfiguration.currentActivityType.getter();
  v6 = [v5 effectiveTypeIdentifier];

  if (v6 == 13)
  {
    v127 = [objc_opt_self() hasHadPairedCyclingCadenceSensors];
    v7 = *(a1 + 2);
    if (!v7)
    {
      return a1;
    }
  }

  else
  {
    v127 = 0;
    v7 = *(a1 + 2);
    if (!v7)
    {
      return a1;
    }
  }

  v8 = 0;
  v137 = a1 + 32;
  v9 = 5;
  if (v127)
  {
    v9 = 15;
  }

  v125 = v9;
  v128 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration;
  v126 = OBJC_IVAR___WOCoreLiveWorkoutConfiguration_hostPlatform;
  v140 = a2;
  v129 = v7;
  while (1)
  {
    v10 = &v137[16 * v8];
    v11 = *(v10 + 1);
    v12 = *v10;
    v143 = v11;
    if (v12 > 9)
    {
      switch(v12)
      {
        case 10:

          v20 = specialized static HeartRateZonesPlatterMetricsProvider.metrics(workoutSettingsManager:foriOS:)(a3);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
          }

          if (v8 >= *(a1 + 2))
          {
            goto LABEL_196;
          }

          break;
        case 12:
          v57 = *(a2 + v128);
          type metadata accessor for MultiSportWorkoutConfiguration(0);
          if (swift_dynamicCastClass())
          {
            swift_getKeyPath();
            swift_getKeyPath();

            v58 = v57;
            static Published.subscript.getter(&v146);

            v59 = v146;
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter(&v146);

            if (v146 >> 62)
            {
              v60 = __CocoaSet.count.getter();
            }

            else
            {
              v60 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v59 >= v60)
            {
              result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000048, 0x800000020B45CEE0, "WorkoutCore/LiveWorkoutConfiguration.swift", 42, 2, 73, 0);
              goto LABEL_208;
            }

            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter(&v146);

            v61 = v146;
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter(&v146);

            if ((v146 & 0xC000000000000001) != 0)
            {
              v62 = MEMORY[0x20F2E7A20](v61, v146);
            }

            else
            {
              if ((v61 & 0x8000000000000000) != 0)
              {
                goto LABEL_199;
              }

              if (v61 >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_200;
              }

              v62 = *(v146 + 8 * v61 + 32);
            }

            v63 = v62;

            v64 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
            swift_beginAccess();
            v65 = *&v63[v64];

            a2 = v140;
          }

          else
          {
            v70 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
            swift_beginAccess();
            v71 = *&v57[v70];

            v65 = v71;
          }

          v72 = [v65 effectiveTypeIdentifier];

          if (v72 == 13)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMd, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMR);
            v20 = swift_allocObject();
            *(v20 + 1) = xmmword_20B423A20;
            *(v20 + 4) = 11;
            *(v20 + 5) = v125;
            *(v20 + 6) = 49;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
            }

            if (v8 >= *(a1 + 2))
            {
              goto LABEL_202;
            }
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
            }

            v20 = &outlined read-only object #0 of static MetricPlatterProvider.customizeMetrics(inMetricPlatters:basedOn:and:);
            if (v8 >= *(a1 + 2))
            {
              goto LABEL_201;
            }
          }

          break;
        case 13:

          v20 = specialized static PowerZonesPlatterMetricsProvider.metrics(workoutSettingsManager:shouldShowCadenceMetrics:)(a3, v127);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = specialized _ArrayBuffer._consumeAndCreateNew()(a1);
          }

          if (v8 >= *(a1 + 2))
          {
            goto LABEL_195;
          }

          break;
        default:
          goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v12 >= 2)
    {
      break;
    }

    v132 = v8;
    v135 = a1;
    if (v11)
    {
      v21 = *(v11 + 16);
      if (v21)
      {
        v22 = *(a2 + v128);
        v142 = *(a2 + v126);
        v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
        v24 = one-time initialization token for core;

        if (v24 != -1)
        {
          swift_once();
        }

        v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v139 = v25;
        swift_beginAccess();
        v26 = 0;
        v27 = MEMORY[0x277D84F90];
        v28 = v143;
        v144 = v22;
        v141 = v23;
        while (1)
        {
          if (v26 >= *(v28 + 16))
          {
            __break(1u);
            goto LABEL_191;
          }

          v29 = *(v28 + 8 * v26 + 32);
          v30 = type metadata accessor for Logger();
          __swift_project_value_buffer(v30, static WOLog.core);
          v31 = Logger.logObject.getter();
          v32 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            *v33 = 0;
            _os_log_impl(&dword_20AEA4000, v31, v32, "[UltraMode] Not supported for hardware, returning false", v33, 2u);
            MEMORY[0x20F2E9420](v33, -1, -1);
          }

          v34 = 0x3FC1FFFFFuLL >> v29;
          if (v29 > 0x24)
          {
            LOBYTE(v34) = 1;
          }

          v35 = *(v22 + v23) == 1 ? v34 : 1;
          if ((v142 & 1) == 0)
          {
            break;
          }

          v36 = v35;
LABEL_55:
          if (v36)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v146 = v27;
            v23 = v141;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27[2] + 1, 1);
              v27 = v146;
            }

            v49 = v27[2];
            v48 = v27[3];
            v22 = v144;
            if (v49 >= v48 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v48 > 1), v49 + 1, 1);
              v27 = v146;
            }

            v27[2] = v49 + 1;
            v27[v49 + 4] = v29;
            goto LABEL_30;
          }

LABEL_29:
          v22 = v144;
          v23 = v141;
LABEL_30:
          ++v26;
          v28 = v143;
          if (v21 == v26)
          {

            goto LABEL_82;
          }
        }

        if (v29 - 37 < 4 || v29 == 5)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(&v145);

          v36 = v145;
          if (v29 <= 0x30)
          {
LABEL_44:
            if (((1 << v29) & 0x1061800C44112) != 0)
            {
              v37 = *(v144 + v139);
              if ([v37 isIndoor])
              {
                v138 = v27;
                v38 = v21;
                [v37 effectiveTypeIdentifier];
                v39 = _HKWorkoutDistanceTypeForActivityType();
                if (!v39)
                {
                  goto LABEL_203;
                }

                v40 = v39;
                v41 = [v39 identifier];
                v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v44 = v43;

                if (v42 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v44 == v45)
                {

                  v21 = v38;
                  v27 = v138;
LABEL_51:
                  swift_getKeyPath();
                  swift_getKeyPath();
                  a2 = v140;
                  static Published.subscript.getter(&v145);

                  if ((v35 & v145 & 1) == 0)
                  {
                    goto LABEL_29;
                  }

                  goto LABEL_55;
                }

                v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v21 = v38;
                v27 = v138;
                if (v46)
                {
                  goto LABEL_51;
                }
              }

              a2 = v140;
            }
          }
        }

        else
        {
          v36 = 1;
          if (v29 <= 0x30)
          {
            goto LABEL_44;
          }
        }

        if ((v35 & 1) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_55;
      }

      v27 = MEMORY[0x277D84F90];
LABEL_82:
      swift_beginAccess();
      if (static MetricSlotProvider.standardMetricsAllowed < 0)
      {
        goto LABEL_194;
      }

      v67 = v27[2];
      if (v67 >= static MetricSlotProvider.standardMetricsAllowed)
      {
        v67 = static MetricSlotProvider.standardMetricsAllowed;
      }

      if (static MetricSlotProvider.standardMetricsAllowed)
      {
        v66 = v67;
      }

      else
      {
        v66 = 0;
      }
    }

    else
    {
      v66 = 0;
      v27 = MEMORY[0x277D84F90];
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v68 = swift_dynamicCastClass();
    if (!v68)
    {
      swift_unknownObjectRelease();
      v68 = MEMORY[0x277D84F90];
    }

    v69 = *(v68 + 16);
    swift_unknownObjectRelease();

    if (v69 == v66)
    {
      v20 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v20)
      {
        goto LABEL_94;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      if (v66)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMd, &_ss23_ContiguousArrayStorageCySo19HKWorkoutMetricTypeVGMR);
        v20 = swift_allocObject();
        v122 = _swift_stdlib_malloc_size_3(v20);
        v123 = v122 - 32;
        if (v122 < 32)
        {
          v123 = v122 - 25;
        }

        *(v20 + 2) = v66;
        *(v20 + 3) = 2 * (v123 >> 3);
        memcpy(v20 + 32, v27 + 4, 8 * v66);
        goto LABEL_93;
      }
    }

    v20 = MEMORY[0x277D84F90];
LABEL_93:
    swift_unknownObjectRelease();
LABEL_94:
    a1 = v135;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v135);
    }

    v7 = v129;
    v8 = v132;
    if (v132 >= *(a1 + 2))
    {
      goto LABEL_193;
    }

LABEL_8:
    *&a1[16 * v8 + 40] = v20;

LABEL_9:
    if (++v8 == v7)
    {
      return a1;
    }
  }

  if (v12 == 6)
  {

    v50 = [a3 supportedMetrics];
    if (!v50)
    {
      goto LABEL_204;
    }

    v51 = v50;
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v52 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v133 = v8;
    v136 = a1;
    if ((v52 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v52 = v147;
      v53 = v148;
      v54 = v149;
      v55 = v150;
      v56 = v151;
    }

    else
    {
      v95 = -1 << *(v52 + 32);
      v53 = v52 + 56;
      v54 = ~v95;
      v96 = -v95;
      if (v96 < 64)
      {
        v97 = ~(-1 << v96);
      }

      else
      {
        v97 = -1;
      }

      v56 = v97 & *(v52 + 56);

      v55 = 0;
    }

    v98 = (v54 + 64) >> 6;
    v99 = MEMORY[0x277D84F90];
    if ((v52 & 0x8000000000000000) == 0)
    {
      goto LABEL_150;
    }

LABEL_147:
    v100 = __CocoaSet.Iterator.next()();
    if (v100)
    {
      v145 = v100;
      swift_dynamicCast();
      v101 = v146;
      v102 = v55;
      v103 = v56;
      if (v146)
      {
        while (1)
        {
          v106 = [v101 unsignedIntegerValue];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v99 + 2) + 1, 1, v99);
          }

          v108 = *(v99 + 2);
          v107 = *(v99 + 3);
          if (v108 >= v107 >> 1)
          {
            v99 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v107 > 1), v108 + 1, 1, v99);
          }

          *(v99 + 2) = v108 + 1;
          *&v99[8 * v108 + 32] = v106;
          v55 = v102;
          v56 = v103;
          if (v52 < 0)
          {
            goto LABEL_147;
          }

LABEL_150:
          v104 = v55;
          v105 = v56;
          v102 = v55;
          if (!v56)
          {
            break;
          }

LABEL_154:
          v103 = (v105 - 1) & v105;
          v101 = *(*(v52 + 48) + ((v102 << 9) | (8 * __clz(__rbit64(v105)))));
          if (!v101)
          {
            goto LABEL_161;
          }
        }

        while (1)
        {
          v102 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            goto LABEL_192;
          }

          if (v102 >= v98)
          {
            break;
          }

          v105 = *(v53 + 8 * v102);
          ++v104;
          if (v105)
          {
            goto LABEL_154;
          }
        }
      }
    }

LABEL_161:
    outlined consume of Set<NSNumber>.Iterator._Variant(v52);

    v109 = specialized Sequence<>.contains(_:)(1, v99);
    v110 = &qword_282243038;
    if (!v109)
    {
      v110 = &qword_282243078;
    }

    v111 = *v110;
    if (*v110)
    {
      if (v109)
      {
        v112 = &outlined read-only object #0 of one-time initialization function for metricsWithDistance;
      }

      else
      {
        v112 = &outlined read-only object #0 of one-time initialization function for metricsWithoutDistance;
      }

      v113 = v112 + 32;

      v114 = 0;
      v20 = MEMORY[0x277D84F90];
      do
      {
        v117 = *&v113[8 * v114];
        v118 = *(v99 + 2);
        v119 = 32;
        while (v118)
        {
          v120 = *&v99[v119];
          v119 += 8;
          --v118;
          if (v120 == v117)
          {
            v121 = swift_isUniquelyReferenced_nonNull_native();
            v146 = v20;
            if ((v121 & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1);
              v20 = v146;
            }

            v116 = *(v20 + 2);
            v115 = *(v20 + 3);
            if (v116 >= v115 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v116 + 1, 1);
              v20 = v146;
            }

            *(v20 + 2) = v116 + 1;
            *&v20[8 * v116 + 32] = v117;
            break;
          }
        }

        ++v114;
      }

      while (v114 != v111);
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }

    a1 = v136;
    a2 = v140;
    v7 = v129;
    v8 = v133;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v136);
    }

    if (v133 >= *(a1 + 2))
    {
      goto LABEL_197;
    }

    goto LABEL_8;
  }

  if (v12 != 9)
  {
    goto LABEL_9;
  }

  v13 = [a3 supportedMetrics];
  if (!v13)
  {
    goto LABEL_205;
  }

  v14 = v13;
  type metadata accessor for NSNumber();
  lazy protocol witness table accessor for type NSNumber and conformance NSObject();
  v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v131 = v8;
  v134 = a1;
  if ((v15 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v15 = v152;
    v16 = v153;
    v17 = v154;
    v18 = v155;
    v19 = v156;
  }

  else
  {
    v73 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v73;
    v74 = -v73;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    else
    {
      v75 = -1;
    }

    v19 = v75 & *(v15 + 56);

    v18 = 0;
  }

  v76 = (v17 + 64) >> 6;
  v77 = MEMORY[0x277D84F90];
  if ((v15 & 0x8000000000000000) == 0)
  {
    goto LABEL_116;
  }

LABEL_113:
  v78 = __CocoaSet.Iterator.next()();
  if (!v78 || (v145 = v78, swift_dynamicCast(), v79 = v146, v80 = v18, v81 = v19, !v146))
  {
LABEL_127:
    outlined consume of Set<NSNumber>.Iterator._Variant(v15);

    if (!specialized Sequence<>.contains(_:)(1, v77))
    {
      goto LABEL_206;
    }

    v87 = 0;
    v20 = MEMORY[0x277D84F90];
    a2 = v140;
    do
    {
      v90 = outlined read-only object #0 of one-time initialization function for metricsWithDistance[v87 + 4];
      v91 = *(v77 + 2);
      v92 = 32;
      while (v91)
      {
        v93 = *&v77[v92];
        v92 += 8;
        --v91;
        if (v93 == v90)
        {
          v94 = swift_isUniquelyReferenced_nonNull_native();
          v146 = v20;
          if ((v94 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1);
            v20 = v146;
          }

          v89 = *(v20 + 2);
          v88 = *(v20 + 3);
          if (v89 >= v88 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1);
            v20 = v146;
          }

          *(v20 + 2) = v89 + 1;
          *&v20[8 * v89 + 32] = v90;
          break;
        }
      }

      ++v87;
    }

    while (v87 != 4);

    a1 = v134;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v134);
    }

    v7 = v129;
    v8 = v131;

    if (v131 >= *(a1 + 2))
    {
      goto LABEL_198;
    }

    goto LABEL_8;
  }

  while (1)
  {
    v84 = [v79 unsignedIntegerValue];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 2) + 1, 1, v77);
    }

    v86 = *(v77 + 2);
    v85 = *(v77 + 3);
    if (v86 >= v85 >> 1)
    {
      v77 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v77);
    }

    *(v77 + 2) = v86 + 1;
    *&v77[8 * v86 + 32] = v84;
    v18 = v80;
    v19 = v81;
    if (v15 < 0)
    {
      goto LABEL_113;
    }

LABEL_116:
    v82 = v18;
    v83 = v19;
    v80 = v18;
    if (!v19)
    {
      break;
    }

LABEL_120:
    v81 = (v83 - 1) & v83;
    v79 = *(*(v15 + 48) + ((v80 << 9) | (8 * __clz(__rbit64(v83)))));
    if (!v79)
    {
      goto LABEL_127;
    }
  }

  while (1)
  {
    v80 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      break;
    }

    if (v80 >= v76)
    {
      goto LABEL_127;
    }

    v83 = *(v16 + 8 * v80);
    ++v82;
    if (v83)
    {
      goto LABEL_120;
    }
  }

LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000004BLL, 0x800000020B45CF60, "WorkoutCore/SplitMetricsPlatter.swift", 37, 2, 19, 0);
LABEL_208:
  __break(1u);
  return result;
}