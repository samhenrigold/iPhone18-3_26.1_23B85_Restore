uint64_t WorkoutStep.$goal.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*WorkoutStep.$goal.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMd, &_s7Combine9PublishedV9PublisherVySo21NLSessionActivityGoalC_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__goal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStep.$goal.modify;
}

double WorkoutStep.targetZones.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t key path setter for WorkoutStep.targetZones : WorkoutStep(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  *(v3 + v4) = v2;

  swift_getKeyPath();
  swift_getKeyPath();
  v5 = static Published.subscript.modify();
  *v6 = !*v6;
  v5(v8, 0);
}

uint64_t (*WorkoutStep.forcePublisherUpdate.modify(uint64_t *a1))()
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
  return WorkoutStep.forcePublisherUpdate.modify;
}

void WorkoutStep.displayName.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

id WorkoutStep.activityType.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WorkoutStep.activityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *WorkoutStep.heartRateTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t (*WorkoutStep.heartRateTargetZone.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  return WorkoutStep.heartRateTargetZone.modify;
}

uint64_t WorkoutStep.forcePublisherUpdate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for WorkoutStep.forcePublisherUpdate : WorkoutStep@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for WorkoutStep.forcePublisherUpdate : WorkoutStep(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutStep.forcePublisherUpdate.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t WorkoutStep.$displayName.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for WorkoutStep.$displayName : WorkoutStep(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutStep.$forcePublisherUpdate : WorkoutStep(char *a1, uint64_t *a2)
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

uint64_t WorkoutStep.$forcePublisherUpdate.setter(uint64_t a1)
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

uint64_t (*WorkoutStep.$forcePublisherUpdate.modify(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutStep.$forcePublisherUpdate.modify;
}

void WorkoutStep.$displayName.modify(uint64_t a1, char a2)
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

void *WorkoutStep.powerZonesAlertTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t key path setter for WorkoutStep.heartRateTargetZone : WorkoutStep(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = static Published.subscript.modify();
  *v11 = !*v11;
  v10(v13, 0);
}

uint64_t (*WorkoutStep.powerZonesAlertTargetZone.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  return WorkoutStep.powerZonesAlertTargetZone.modify;
}

void WorkoutStep.targetZones.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = static Published.subscript.modify();
    *v5 = !*v5;
    v4(v3, 0);
  }

  free(v3);
}

uint64_t WorkoutStep.hash(into:)(uint64_t a1)
{
  WorkoutStep.equivalentHash(into:)(a1);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return dispatch thunk of Hashable.hash(into:)();
}

void WorkoutStep.equivalentHash(into:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v1 + 16));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v16);

  v4 = v16;
  NSObject.hash(into:)();

  v5 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v6 = *(v2 + v5);

  specialized Array<A>.hash(into:)(a1, v6);

  v7 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v8 = *(v2 + v7);
  NSObject.hash(into:)();

  v9 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (v10)
  {
    Hasher._combine(_:)(1u);
    v11 = v10;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v12 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (v13)
  {
    Hasher._combine(_:)(1u);
    v14 = v13;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v15);

  if (v15[1])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t WorkoutStep.init(_:goal:activityType:uuid:displayName:)(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v28 - v17;
  LOBYTE(a1) = *a1;
  v19 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v33 = 0;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  (*(v15 + 32))(v6 + v19, v18, v14);
  *(v6 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v20 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v33) = 0;
  Published.init(initialValue:)();
  (*(v10 + 32))(v6 + v20, v13, v9);
  *(v6 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v6 + 16) = a1;
  swift_beginAccess();
  v32 = a2;
  _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v21 = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v6 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v28;
  v22 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = v6 + v22;
  v26 = v29;
  (*(v24 + 16))(v25, v29, v23);
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v30;
  v34 = v31;

  static Published.subscript.setter();

  (*(v24 + 8))(v26, v23);
  return v6;
}

uint64_t WorkoutStep.encode(to:)(void *a1)
{
  v3 = v1;
  v73 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v51 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  LOBYTE(v72[0]) = *(v3 + 16);
  LOBYTE(v71[0]) = 0;
  lazy protocol witness table accessor for type StepType and conformance StepType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v72[0]) = 6;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v72);

    LOBYTE(v71[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    lazy protocol witness table accessor for type String? and conformance <A> A?();
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v11 = objc_opt_self();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v72);

    v12 = v72[0];
    v72[0] = 0;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v72];

    v14 = v72[0];
    if (v13)
    {
      v62 = v11;
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v72[0] = v15;
      v72[1] = v17;
      LOBYTE(v71[0]) = 2;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v63 = v17;
      v61 = v15;
      LOBYTE(v72[0]) = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
      v19 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
      swift_beginAccess();
      v20 = *(v3 + v19);
      v71[0] = 0;
      v21 = [v62 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:v71];
      v22 = v71[0];
      v23 = v63;
      if (v21)
      {
        v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        v52 = v24;
        v71[0] = v24;
        v71[1] = v26;
        v70 = 4;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v28 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
        swift_beginAccess();
        v29 = *(v3 + v28);
        v30 = v61;
        v31 = v63;
        if (v29 >> 62)
        {
          v32 = __CocoaSet.count.getter();
        }

        else
        {
          v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = v26;
        if (v32)
        {
          v56 = v29 & 0xC000000000000001;
          v55 = v29 & 0xFFFFFFFFFFFFFF8;
          v62 = MEMORY[0x277D84F90];
          v53 = v32;
          v33 = 0;
          v54 = v29;
          do
          {
            if (v56)
            {
              v34 = MEMORY[0x20F2E7A20](v33, v29);
            }

            else
            {
              if (v33 >= *(v55 + 16))
              {
                goto LABEL_28;
              }

              v34 = *(v29 + 8 * v33 + 32);
            }

            v60 = v33;
            v59 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              __break(1u);
LABEL_28:
              __break(1u);
            }

            v35 = *(v34 + 16);
            swift_beginAccess();
            v36 = *(v34 + 24);
            swift_beginAccess();
            v37 = *(v34 + 32);
            type metadata accessor for JSONEncoder();
            swift_allocObject();
            JSONEncoder.init()();
            LOBYTE(v67) = v35;
            v68 = v36;
            v69 = v37;
            lazy protocol witness table accessor for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder();
            v38 = dispatch thunk of JSONEncoder.encode<A>(_:)();
            v40 = v39;
            v58 = v38;

            v41 = v62;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
            }

            v42 = v41;
            v43 = *(v41 + 2);
            v62 = v42;
            v44 = *(v42 + 3);
            if (v43 >= v44 >> 1)
            {
              v62 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v43 + 1, 1, v62);
            }

            v45 = v62;
            *(v62 + 2) = v43 + 1;
            v46 = &v45[16 * v43];
            *(v46 + 4) = v58;
            *(v46 + 5) = v40;
            v33 = v60 + 1;
            v31 = v63;
            v30 = v61;
            v29 = v54;
          }

          while (v59 != v53);
        }

        else
        {
          v62 = MEMORY[0x277D84F90];
        }

        v67 = v62;
        LOBYTE(v66[0]) = 5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
        lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x277D83948]);
        KeyedEncodingContainer.encode<A>(_:forKey:)();

        v47 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
        swift_beginAccess();
        v66[0] = *(v3 + v47);
        LOBYTE(v65) = 7;
        v48 = v66[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore19HeartRateTargetZoneCSgMd, &_s11WorkoutCore19HeartRateTargetZoneCSgMR);
        lazy protocol witness table accessor for type HeartRateTargetZone? and conformance <A> A?();
        KeyedEncodingContainer.encode<A>(_:forKey:)();

        v49 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
        swift_beginAccess();
        v65 = *(v3 + v49);
        v64 = 8;
        v50 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore25PowerZonesAlertTargetZoneCSgMd, &_s11WorkoutCore25PowerZonesAlertTargetZoneCSgMR);
        lazy protocol witness table accessor for type PowerZonesAlertTargetZone? and conformance <A> A?();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        outlined consume of Data._Representation(v52, v57);
        outlined consume of Data._Representation(v30, v31);
      }

      else
      {
        v27 = v22;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        outlined consume of Data._Representation(v61, v23);
      }
    }

    else
    {
      v18 = v14;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t WorkoutStep.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  WorkoutStep.init(from:)(a1);
  return v2;
}

_BYTE *WorkoutStep.init(from:)(void *a1)
{
  v2 = v1;
  v88 = *v1;
  v4 = type metadata accessor for UUID();
  v84 = *(v4 - 8);
  v85 = v4;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v81 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v79 = &v76 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMR);
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v10);
  v93 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v76 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v76 - v20;
  v22 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v99 = 0;
  v100 = 0;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  v92 = v18;
  v23 = *(v18 + 32);
  v94 = v22;
  v95 = v17;
  v24 = v2 + v22;
  v25 = v2;
  v23(v24, v21, v17);
  v89 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  *(v2 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  v26 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  *(v25 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v27 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v99) = 0;
  Published.init(initialValue:)();
  v86 = v13;
  v87 = v12;
  (*(v13 + 32))(v25 + v27, v16, v12);
  v28 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  *(v25 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  v29 = a1[3];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  lazy protocol witness table accessor for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys();
  v30 = v90;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v30)
  {
    v31 = 0;
    v32 = 0;
    v33 = v95;
    v34 = v92;
  }

  else
  {
    v35 = v81;
    LOBYTE(v97) = 0;
    lazy protocol witness table accessor for type StepType and conformance StepType();
    v36 = v82;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v78 = v26;
    *(v25 + 16) = v99;
    LOBYTE(v99) = 1;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = v92;
    v42 = v37;
    v77 = v28;
    v90 = v25;
    v43 = v94;
    v45 = v44;
    swift_beginAccess();
    (*(v38 + 8))(v90 + v43, v95);
    v97 = v42;
    v98 = v45;
    v25 = v90;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v99) = 6;
    v46 = KeyedDecodingContainer.contains(_:)();
    if (v46)
    {
      LOBYTE(v99) = 6;
      _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
      v35 = v79;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
    }

    else
    {
      UUID.init()();
    }

    (*(v84 + 32))(v25 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v35, v85);
    LOBYTE(v97) = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v47 = v99;
    v48 = v100;
    _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
    v49 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    v80 = v47;
    v81 = v48;
    if (v49)
    {
      v50 = v49;
      swift_beginAccess();
      v97 = v50;
      v51 = v50;
      Published.init(initialValue:)();
      swift_endAccess();
      LOBYTE(v99) = 3;
      v52 = KeyedDecodingContainer.decode(_:forKey:)();
      v54 = v95;
      v34 = v92;
      if ((v52 & 1) == 0)
      {
        lazy protocol witness table accessor for type WorkoutStepError and conformance WorkoutStepError();
        swift_allocError();
        *v55 = 0xD000000000000031;
        v55[1] = 0x800000020B45A370;
        swift_willThrow();
        outlined consume of Data._Representation(v80, v81);

        (*(v83 + 8))(v93, v36);
        v31 = 1;
        v32 = 1;
        v33 = v54;
        goto LABEL_4;
      }

      LOBYTE(v97) = 4;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v56 = v99;
      v57 = v100;
      _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
      v79 = v56;
      v58 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v59 = v79;
      v76 = v57;
      v60 = v51;
      v61 = v36;
      if (v58)
      {
        *(v25 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v58;
        LOBYTE(v99) = 9;
        v62 = v58;
        if (KeyedDecodingContainer.contains(_:)())
        {
          v63 = specialized WorkoutStep.decodeTargetZonesVersion1(values:)(v93);
        }

        else
        {
          v63 = specialized WorkoutStep.decodeTargetZonesVersion2(values:)();
        }

        v65 = v63;
        v67 = v89;
        v66 = v90;
        swift_beginAccess();
        *&v66[v67] = v65;

        type metadata accessor for HeartRateTargetZone();
        LOBYTE(v97) = 7;
        _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type HeartRateTargetZone and conformance HeartRateTargetZone, type metadata accessor for HeartRateTargetZone, &protocol conformance descriptor for HeartRateTargetZone);
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v68 = v96;
        v69 = v90;
        v70 = v78;
        swift_beginAccess();
        v71 = *&v69[v70];
        *&v69[v70] = v68;

        LOBYTE(v96) = 8;
        if (KeyedDecodingContainer.contains(_:)())
        {
          type metadata accessor for PowerZonesAlertTargetZone();
          LOBYTE(v96) = 8;
          _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type PowerZonesAlertTargetZone and conformance PowerZonesAlertTargetZone, type metadata accessor for PowerZonesAlertTargetZone, &protocol conformance descriptor for PowerZonesAlertTargetZone);
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v83 + 8))(v93, v61);

          outlined consume of Data._Representation(v80, v81);
          outlined consume of Data._Representation(v59, v76);

          v72 = v101;
          v73 = v90;
          v74 = v77;
          swift_beginAccess();
          v75 = *&v73[v74];
          *&v73[v74] = v72;
        }

        else
        {
          (*(v83 + 8))(v93, v61);

          outlined consume of Data._Representation(v80, v81);
          outlined consume of Data._Representation(v59, v76);
        }

        __swift_destroy_boxed_opaque_existential_1(v91);
        return v90;
      }

      lazy protocol witness table accessor for type WorkoutStepError and conformance WorkoutStepError();
      swift_allocError();
      *v64 = 0xD00000000000001ELL;
      v64[1] = 0x800000020B45A3B0;
      swift_willThrow();
      outlined consume of Data._Representation(v80, v81);
      outlined consume of Data._Representation(v59, v76);

      (*(v83 + 8))(v93, v36);
      v31 = 1;
    }

    else
    {
      lazy protocol witness table accessor for type WorkoutStepError and conformance WorkoutStepError();
      swift_allocError();
      *v53 = 0xD00000000000001ELL;
      v53[1] = 0x800000020B45A350;
      swift_willThrow();
      outlined consume of Data._Representation(v80, v81);
      (*(v83 + 8))(v93, v36);
      v31 = 0;
    }

    v32 = 1;
    v33 = v95;
    v34 = v92;
  }

LABEL_4:
  (*(v34 + 8))(v25 + v94, v33);
  if (v31)
  {
    v39 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__goal;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
    (*(*(v40 - 8) + 8))(v25 + v39, v40);
  }

  if (v32)
  {
    (*(v84 + 8))(v25 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v85);
  }

  (*(v86 + 8))(v25 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate, v87);
  swift_deallocPartialClassInstance();
  __swift_destroy_boxed_opaque_existential_1(v91);
  return v25;
}

uint64_t WorkoutStep.hasActiveTargetZone.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_46;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v3 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        v5 = *(v2 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      v7 = *(v5 + 40);

      if (v7 == 1)
      {

        return 1;
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    v1 = v2 & 0xC000000000000001;
    do
    {
      if (v1)
      {
        v10 = MEMORY[0x20F2E7A20](v9, v2);
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v10 = *(v2 + 8 * v9 + 32);

        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      swift_beginAccess();
      v12 = *(v10 + 40);

      if (v12 == 1)
      {
        goto LABEL_40;
      }

      ++v9;
    }

    while (v11 != v8);
  }

  v13 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v14 = *(v0 + v13);
  if (v14)
  {
    v15 = *(v0 + v13);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v15 = static HeartRateTargetZone.defaultZone;
  }

  if (!*(v15 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) || *(v15 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v17 = v14;

    if ((v16 & 1) == 0)
    {
      return 1;
    }

    result = WorkoutStep.activePowerZonesAlertTargetZone.getter();
    if (!result)
    {
      return result;
    }

LABEL_41:

    return 1;
  }

  v19 = v14;

LABEL_40:

  result = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (result)
  {
    goto LABEL_41;
  }

  return result;
}

uint64_t WorkoutStep.activeTargetZoneLabel(formattingManager:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 >> 62)
  {
    goto LABEL_48;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x20F2E7A20](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          v6 = __CocoaSet.count.getter();
          goto LABEL_3;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_13;
        }
      }

      swift_beginAccess();
      if (*(v8 + 40))
      {

        v18 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
        swift_beginAccess();
        v19 = *(v2 + v18);
        v20 = TargetZone.PrimaryType.displayString(activityType:)(v19);
        v22 = v21;

        v23 = *(v2 + v18);
        v24 = TargetZone.displayString(formattingManager:activityType:)(a1, v23);
        v26 = v25;

        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v28 = [objc_opt_self() bundleForClass_];
        v29 = MEMORY[0x20F2E6C00](0xD000000000000027, 0x800000020B45A3D0);
        v30 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v31 = [v28 localizedStringForKey:v29 value:0 table:v30];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_20B4282E0;
        v33 = MEMORY[0x277D837D0];
        *(v32 + 56) = MEMORY[0x277D837D0];
        v34 = lazy protocol witness table accessor for type String and conformance String();
        *(v32 + 32) = v20;
        *(v32 + 40) = v22;
        *(v32 + 96) = v33;
        *(v32 + 104) = v34;
        *(v32 + 64) = v34;
        *(v32 + 72) = v24;
        *(v32 + 80) = v26;
        v35 = static String.localizedStringWithFormat(_:_:)();

        return v35;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {
    v11 = 0;
    v4 = v5 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v12 = MEMORY[0x20F2E7A20](v11, v5);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v12 = *(v5 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      swift_beginAccess();
      v14 = *(v12 + 40);

      if (v14 == 1)
      {
        goto LABEL_40;
      }

      ++v11;
    }

    while (v13 != v10);
  }

  v15 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (v16)
  {
    v17 = *(v2 + v15);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v17 = static HeartRateTargetZone.defaultZone;
  }

  if (v17[OBJC_IVAR___WOCoreHeartRateTargetZone_type] && v17[OBJC_IVAR___WOCoreHeartRateTargetZone_type] != 1)
  {
    v41 = v16;

LABEL_40:
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v37 = v16;

    if ((v36 & 1) == 0)
    {
      v38 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
      swift_beginAccess();
      v39 = *(v2 + v38);
      v40 = specialized HeartRateTargetZone.displayString(formattingManager:activityType:)(a1);
      goto LABEL_43;
    }
  }

  v42 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (!v42)
  {
    return 0;
  }

  v17 = v42;
  v43 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v39 = *(v2 + v43);
  v40 = PowerZonesAlertTargetZone.displayString(formattingManager:activityType:)(a1, v39);
LABEL_43:
  v35 = v40;

  return v35;
}

uint64_t WorkoutStep.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__goal;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return v0;
}

uint64_t WorkoutStep.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__goal;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21NLSessionActivityGoalCGMd, &_s7Combine9PublishedVySo21NLSessionActivityGoalCGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

Swift::Int WorkoutStep.hashValue.getter()
{
  Hasher.init(_seed:)();
  WorkoutStep.equivalentHash(into:)(v1);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

_BYTE *protocol witness for Decodable.init(from:) in conformance WorkoutStep@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = WorkoutStep.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutStep()
{
  Hasher.init(_seed:)();
  WorkoutStep.equivalentHash(into:)(v1);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutStep(uint64_t a1)
{
  WorkoutStep.equivalentHash(into:)(a1);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutStep(uint64_t a1)
{
  Hasher.init(_seed:)();
  WorkoutStep.equivalentHash(into:)(v2);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Equivalent.isEquivalent(to:) in conformance WorkoutStep(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return specialized WorkoutStep.isEquivalent(to:)(v5, v2, v3, v4);
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutStep@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutStep(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return specialized WorkoutStep.isEquivalent(to:)(v3, v2);
}

id WorkoutStep.description.getter()
{
  v1 = v0;
  swift_beginAccess();
  v2 = 1802661751;
  v3 = 0xE600000000000000;
  v4 = 0x70556D726177;
  if (*(v0 + 16) != 2)
  {
    v4 = 0x6E776F446C6F6F63;
    v3 = 0xE800000000000000;
  }

  if (*(v0 + 16))
  {
    v2 = 1953719666;
  }

  if (*(v0 + 16) <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*(v0 + 16) <= 1u)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = v3;
  }

  v38 = 0x3D65707974;
  v39 = 0xE500000000000000;
  MEMORY[0x20F2E6D80](v5, v6);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v38);

  v7 = v38;
  v8 = [v38 description];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v38 = 0x3D65707974;
  v39 = 0xE500000000000000;

  MEMORY[0x20F2E6D80](v9, v11);

  v40 = v38;
  v41 = v39;
  v12 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v13 = *(v1 + v12);
  if (v13 >> 62)
  {
    goto LABEL_58;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x20F2E7A20](v15, v13);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          v14 = __CocoaSet.count.getter();
          goto LABEL_13;
        }

        v16 = *(v13 + 8 * v15 + 32);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_23;
        }
      }

      swift_beginAccess();
      if (*(v16 + 40))
      {

        v26 = TargetZone.description.getter();
        MEMORY[0x20F2E6D80](v26);

        MEMORY[0x20F2E6D80](0x3D7472656C61202CLL, 0xE800000000000000);

        goto LABEL_54;
      }

      ++v15;
    }

    while (v17 != v14);
  }

  v13 = *(v1 + v12);
  if (v13 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    v19 = 0;
    v12 = v13 & 0xC000000000000001;
    do
    {
      if (v12)
      {
        v20 = MEMORY[0x20F2E7A20](v19, v13);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v19 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v20 = *(v13 + 8 * v19 + 32);

        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_36:
          __break(1u);
          break;
        }
      }

      swift_beginAccess();
      v22 = *(v20 + 40);

      if (v22 == 1)
      {
        goto LABEL_50;
      }

      ++v19;
    }

    while (v21 != v18);
  }

  v23 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v24 = *(v1 + v23);
  if (v24)
  {
    v25 = *(v1 + v23);
  }

  else
  {
    if (one-time initialization token for defaultZone != -1)
    {
      swift_once();
    }

    v25 = static HeartRateTargetZone.defaultZone;
  }

  if (v25[OBJC_IVAR___WOCoreHeartRateTargetZone_type] && v25[OBJC_IVAR___WOCoreHeartRateTargetZone_type] != 1)
  {
    v30 = v24;

LABEL_50:
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v28 = v24;

    if ((v27 & 1) == 0)
    {
      v29 = [v25 description];
      goto LABEL_53;
    }
  }

  v31 = WorkoutStep.activePowerZonesAlertTargetZone.getter();
  if (!v31)
  {
    goto LABEL_55;
  }

  v25 = v31;
  v29 = [v31 description];
LABEL_53:
  v32 = v29;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  MEMORY[0x20F2E6D80](v33, v35);

  MEMORY[0x20F2E6D80](0x3D7472656C61202CLL, 0xE800000000000000);

LABEL_54:

LABEL_55:
  v36 = UUID.uuidString.getter();
  MEMORY[0x20F2E6D80](v36);

  MEMORY[0x20F2E6D80](0x3D64697575202CLL, 0xE700000000000000);

  return v40;
}

uint64_t WorkoutStep.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutStep@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t static WorkoutStep.canonical()()
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v1);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - v7;
  v24 = type metadata accessor for UUID();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:37 isIndoor:0];
  _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v13 = static NLSessionActivityGoal.canonical()();
  UUID.init()();
  v22 = v0;
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v27 = 0;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  (*(v5 + 32))(v14 + v15, v8, v4);
  *(v14 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v14 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v16 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v27) = 0;
  Published.init(initialValue:)();
  (*(v23 + 32))(v14 + v16, v3, v25);
  *(v14 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v14 + 16) = 0;
  swift_beginAccess();
  v26 = v13;
  v17 = v13;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v14 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v21;
  v18 = v24;
  (*(v9 + 16))(v14 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v12, v24);
  swift_getKeyPath();
  swift_getKeyPath();
  v27 = 0;
  v28 = 0;

  static Published.subscript.setter();

  (*(v9 + 8))(v12, v18);
  return swift_dynamicCastClassUnconditional();
}

uint64_t protocol witness for static Canonical.canonical() in conformance WorkoutStep@<X0>(uint64_t *a1@<X8>)
{
  result = static WorkoutStep.canonical()();
  *a1 = result;
  return result;
}

uint64_t specialized WorkoutStep.isEquivalent(to:)(uint64_t a1, uint64_t *a2)
{
  v44[3] = *a2;
  v44[4] = &protocol witness table for WorkoutStep;
  v44[0] = a1;
  outlined init with copy of Equivalent(v44, v43);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  v3 = v42;
  swift_beginAccess();
  v4 = *(v42 + 16);
  swift_beginAccess();
  if (v4 != *(a2 + 16))
  {
    goto LABEL_20;
  }

  _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v41);

  v5 = v41[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v41);

  v6 = v41[0];
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_20;
  }

  v8 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v9 = *(v3 + v8);
  v10 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v11 = *(a2 + v10);

  v12 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore10TargetZoneC_Tt1g5(v9, v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v14 = *(v3 + v13);
  v15 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v16 = *(a2 + v15);
  v17 = v14;
  v18 = v16;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

  v20 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v21 = *(v3 + v20);
  v22 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v23 = *(a2 + v22);
  if (v21)
  {
    if (!v23)
    {
      goto LABEL_20;
    }

    type metadata accessor for HeartRateTargetZone();
    v24 = v23;
    v25 = v21;
    v26 = static NSObject.== infix(_:_:)();

    if ((v26 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v23)
  {
    goto LABEL_20;
  }

  v27 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v28 = *(v3 + v27);
  v29 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v30 = *(a2 + v29);
  if (!v28)
  {
    if (!v30)
    {
      goto LABEL_14;
    }

LABEL_20:

LABEL_21:
    v37 = 0;
    goto LABEL_22;
  }

  if (!v30)
  {
    goto LABEL_20;
  }

  type metadata accessor for PowerZonesAlertTargetZone();
  v31 = v30;
  v32 = v28;
  v33 = static NSObject.== infix(_:_:)();

  if ((v33 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v39);

  v35 = v39;
  v34 = v40;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v39);

  v36 = v40;
  if (!v34)
  {

    if (!v36)
    {
      v37 = 1;
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  if (!v40)
  {

LABEL_26:

    goto LABEL_21;
  }

  if (v35 == v39 && v34 == v40)
  {

    v37 = 1;
  }

  else
  {
    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v37 & 1;
}

uint64_t specialized WorkoutStep.isEquivalent(to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v49[3] = a3;
  v49[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of Equivalent(v49, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_21;
  }

  v8 = v47;
  swift_beginAccess();
  v9 = *(v47 + 16);
  swift_beginAccess();
  if (v9 != *(a2 + 16))
  {
    goto LABEL_20;
  }

  _sSo21NLSessionActivityGoalCMaTm_1(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v46);

  v10 = v46[0];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v46);

  v11 = v46[0];
  v12 = static NSObject.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v14 = *(v8 + v13);
  v15 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones;
  swift_beginAccess();
  v16 = *(a2 + v15);

  v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore10TargetZoneC_Tt1g5(v14, v16);

  if ((v17 & 1) == 0)
  {
    goto LABEL_20;
  }

  v18 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v19 = *(v8 + v18);
  v20 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType;
  swift_beginAccess();
  v21 = *(a2 + v20);
  v22 = v19;
  v23 = v21;
  v24 = static NSObject.== infix(_:_:)();

  if ((v24 & 1) == 0)
  {
    goto LABEL_20;
  }

  v25 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v26 = *(v8 + v25);
  v27 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone;
  swift_beginAccess();
  v28 = *(a2 + v27);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_20;
    }

    type metadata accessor for HeartRateTargetZone();
    v29 = v28;
    v30 = v26;
    v31 = static NSObject.== infix(_:_:)();

    if ((v31 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v28)
  {
    goto LABEL_20;
  }

  v32 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v33 = *(v8 + v32);
  v34 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone;
  swift_beginAccess();
  v35 = *(a2 + v34);
  if (!v33)
  {
    if (!v35)
    {
      goto LABEL_14;
    }

LABEL_20:

LABEL_21:
    v42 = 0;
    goto LABEL_22;
  }

  if (!v35)
  {
    goto LABEL_20;
  }

  type metadata accessor for PowerZonesAlertTargetZone();
  v36 = v35;
  v37 = v33;
  v38 = static NSObject.== infix(_:_:)();

  if ((v38 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v44);

  v40 = v44;
  v39 = v45;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v44);

  v41 = v45;
  if (!v39)
  {

    if (!v41)
    {
      v42 = 1;
      goto LABEL_22;
    }

    goto LABEL_26;
  }

  if (!v45)
  {

LABEL_26:

    goto LABEL_21;
  }

  if (v40 == v44 && v39 == v45)
  {

    v42 = 1;
  }

  else
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(v49);
  return v42 & 1;
}

unint64_t lazy protocol witness table accessor for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStep.CodingKeys and conformance WorkoutStep.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StepType and conformance StepType()
{
  result = lazy protocol witness table cache variable for type StepType and conformance StepType;
  if (!lazy protocol witness table cache variable for type StepType and conformance StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepType and conformance StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StepType and conformance StepType;
  if (!lazy protocol witness table cache variable for type StepType and conformance StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepType and conformance StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StepType and conformance StepType;
  if (!lazy protocol witness table cache variable for type StepType and conformance StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepType and conformance StepType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StepType and conformance StepType;
  if (!lazy protocol witness table cache variable for type StepType and conformance StepType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StepType and conformance StepType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder()
{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder;
  if (!lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeartRateTargetZone? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type HeartRateTargetZone? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type HeartRateTargetZone? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore19HeartRateTargetZoneCSgMd, &_s11WorkoutCore19HeartRateTargetZoneCSgMR);
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type HeartRateTargetZone and conformance HeartRateTargetZone, type metadata accessor for HeartRateTargetZone, &protocol conformance descriptor for HeartRateTargetZone);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateTargetZone? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertTargetZone? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertTargetZone? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertTargetZone? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11WorkoutCore25PowerZonesAlertTargetZoneCSgMd, &_s11WorkoutCore25PowerZonesAlertTargetZoneCSgMR);
    _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type PowerZonesAlertTargetZone and conformance PowerZonesAlertTargetZone, type metadata accessor for PowerZonesAlertTargetZone, &protocol conformance descriptor for PowerZonesAlertTargetZone);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertTargetZone? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutStepError and conformance WorkoutStepError()
{
  result = lazy protocol witness table cache variable for type WorkoutStepError and conformance WorkoutStepError;
  if (!lazy protocol witness table cache variable for type WorkoutStepError and conformance WorkoutStepError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutStepError and conformance WorkoutStepError);
  }

  return result;
}

unint64_t specialized WorkoutStep.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutStep.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized WorkoutStep.decodeTargetZonesVersion1(values:)(unint64_t a1)
{
  v17 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd, &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMR);
  lazy protocol witness table accessor for type [TargetZone.ZoneType] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    lazy protocol witness table accessor for type [Double] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v4 = *(v16 + 16);
    if (v4)
    {
      v5 = (v16 + 32);
      v6 = (v16 + 32);
      v7 = (v16 + 32);
      type metadata accessor for TargetZone();
      do
      {
        v9 = *v5++;
        v8 = v9;
        v10 = *v6;
        v11 = *v7;
        v12 = swift_allocObject();
        *(v12 + 16) = v9;
        *(v12 + 24) = v10;
        *(v12 + 32) = v11;
        if (v9 > 3 && v8 > 6)
        {

          v14 = 0;
        }

        else
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v14 = v11 > 0.0;
          if (v10 > 0.0)
          {
            v14 = 1;
          }

          if (v13)
          {
            v14 = 0;
          }
        }

        *(v12 + 40) = v14;

        MEMORY[0x20F2E6F30](v15);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        ++v7;
        ++v6;
        --v4;
      }

      while (v4);
      a1 = v17;
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
    }
  }

  return a1;
}

void *specialized WorkoutStep.decodeTargetZonesVersion2(values:)()
{
  v16 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D4StepC10CodingKeys33_6737BB91B09B042F2A7EB5B5DBE3F4DFLLOGMR);
  lazy protocol witness table accessor for type [Data] and conformance <A> [A](&lazy protocol witness table cache variable for type [Data] and conformance <A> [A], lazy protocol witness table accessor for type Data and conformance Data, MEMORY[0x277D83978]);
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v0)
  {
    return v1;
  }

  v3 = v13;
  v12 = *(v13 + 16);
  if (!v12)
  {
    v1 = MEMORY[0x277D84F90];
LABEL_16:

    return v1;
  }

  v4 = 0;
  v5 = (v13 + 40);
  while (v4 < *(v3 + 16))
  {
    v6 = *(v5 - 1);
    v7 = *v5;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    outlined copy of Data._Representation(v6, v7);
    outlined copy of Data._Representation(v6, v7);
    JSONDecoder.init()();
    lazy protocol witness table accessor for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    type metadata accessor for TargetZone();
    v8 = swift_allocObject();
    *(v8 + 16) = v13;
    *(v8 + 24) = v14;
    *(v8 + 32) = v15;
    if (v13 > 6u)
    {

      outlined consume of Data._Representation(v6, v7);

      v10 = 0;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined consume of Data._Representation(v6, v7);

      v10 = 0;
      if ((v9 & 1) == 0)
      {
        v10 = v14 > 0.0 || v15 > 0.0;
      }
    }

    *(v8 + 40) = v10;

    MEMORY[0x20F2E6F30](v11);
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    ++v4;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    outlined consume of Data._Representation(v6, v7);

    v1 = v16;
    v5 += 2;
    v3 = v13;
    if (v12 == v4)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [StepType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [StepType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [StepType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore8StepTypeOGMd, &_sSay11WorkoutCore8StepTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [StepType] and conformance [A]);
  }

  return result;
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

id keypath_get_21Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t getEnumTagSinglePayload for StepType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StepType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WorkoutStepError(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutStepError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for WorkoutStep(uint64_t a1)
{
  type metadata accessor for Published<String?>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<NLSessionActivityGoal>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Bool>();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Published<String?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<String?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<String?>);
    }
  }
}

uint64_t getEnumTagSinglePayload for WorkoutStep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutStep.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [TargetZone.ZoneType] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [TargetZone.ZoneType] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [TargetZone.ZoneType] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore10TargetZoneC0D4TypeOGMd, &_sSay11WorkoutCore10TargetZoneC0D4TypeOGMR);
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [TargetZone.ZoneType] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType()
{
  result = lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType;
  if (!lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType;
  if (!lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType;
  if (!lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType;
  if (!lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetZone.ZoneType and conformance TargetZone.ZoneType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Double] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [Double] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [Double] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Double] and conformance <A> [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Data] and conformance <A> [A](unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSo21NLSessionActivityGoalCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t WorkoutDeviceType.productModel.getter()
{
  if (*v0 == 2)
  {
    return 0xD000000000000010;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000061, 0x800000020B45A4F0, "WorkoutCore/WorkoutDeviceType+ProductModel.swift", 48, 2, 21, 0);
  __break(1u);
  return result;
}

uint64_t one-time initialization function for sharedInstance()
{
  type metadata accessor for MediaSuggestionsModel();
  swift_allocObject();
  result = MediaSuggestionsModel.().init()();
  static MediaSuggestionsModel.sharedInstance = result;
  return result;
}

{
  type metadata accessor for MusicLibraryPlaylistsModel(0);
  v0 = swift_allocObject();
  Published.init(initialValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A15MediaSuggestionVGMd, &_sSay11WorkoutCore0A15MediaSuggestionVGMR);
  result = Published.init(initialValue:)();
  *(v0 + OBJC_IVAR____TtC11WorkoutCore26MusicLibraryPlaylistsModel_loadCallCount) = 0;
  static MusicLibraryPlaylistsModel.sharedInstance = v0;
  return result;
}

uint64_t static MediaSuggestionsModel.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for mediaSuggestionAllowedClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B432BD0;
  *(v0 + 32) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSArray, 0x277CBEA60);
  *(v0 + 40) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  *(v0 + 48) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
  *(v0 + 56) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  *(v0 + 64) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSDate, 0x277CBEAA8);
  *(v0 + 72) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
  *(v0 + 80) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSData, 0x277CBEA90);
  *(v0 + 88) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSUUID, 0x277CCAD78);
  *(v0 + 96) = type metadata accessor for MSSuggestion();
  *(v0 + 104) = type metadata accessor for MSUnifiedMediaIntent();
  *(v0 + 112) = type metadata accessor for MSIntentWrapper();
  *(v0 + 120) = type metadata accessor for MSPlayMediaAppIntent();
  *(v0 + 128) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for INPlayMediaIntent, 0x277CD3EC0);
  *(v0 + 136) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for INMediaItem, 0x277CD3DB8);
  *(v0 + 144) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for INImage, 0x277CD3D10);
  *(v0 + 152) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for INFile, 0x277CD3C08);
  *(v0 + 160) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for LNAction, 0x277D23720);
  *(v0 + 168) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for LNEntity, 0x277D237F0);
  *(v0 + 176) = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for LNProperty, 0x277D238D8);
  result = _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for LNValue, 0x277D23958);
  *(v0 + 184) = result;
  static MediaSuggestionsModel.mediaSuggestionAllowedClasses = v0;
  return result;
}

uint64_t MediaSuggestionsModel.().init()()
{
  v1 = v0;
  type metadata accessor for MediaSuggesterService();
  swift_allocObject();
  *(v0 + 16) = MediaSuggesterService.init()();
  *(v0 + 24) = 4;

  MediaSuggesterService.hello()();

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "MediaSuggesterService hello() completed", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  return v1;
}

uint64_t MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 96) = a5;
  *(v6 + 104) = v5;
  *(v6 + 80) = a3;
  *(v6 + 88) = a4;
  *(v6 + 248) = a2;
  *(v6 + 72) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 112) = v7;
  *(v6 + 120) = *(v7 - 8);
  *(v6 + 128) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();
  *(v6 + 160) = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:), 0, 0);
}

void MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:)(uint64_t a1)
{
  v75 = v1;
  v3 = *(v1 + 120);
  v2 = *(v1 + 128);
  v4 = *(v1 + 112);
  Date.init()();
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  (*(v3 + 8))(v2, v4);
  v8 = specialized Collection.prefix(_:)(8, v5, v7);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v72 = v8;
  *(v1 + 168) = v8;
  *(v1 + 176) = v10;
  *(v1 + 184) = v12;
  *(v1 + 192) = v14;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v15 = *(v1 + 88);
  v16 = type metadata accessor for Logger();
  *(v1 + 200) = __swift_project_value_buffer(v16, static WOLog.mediaPlayback);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  v70 = v12;
  v71 = v14;
  v69 = v10;
  if (os_log_type_enabled(v17, v18))
  {
    v66 = *(v1 + 88);
    v67 = *(v1 + 96);
    v64 = *(v1 + 248);
    v65 = *(v1 + 80);
    v63 = *(v1 + 72);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v73 = v20;
    *v19 = 136315906;

    v21 = MEMORY[0x20F2E6D00](v8, v10, v12, v14);
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v73);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    v25 = v63;
    if (v64)
    {
      v25 = 0;
    }

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    if (v66)
    {
      v26 = v65;
    }

    else
    {
      v26 = 7104878;
    }

    if (v66)
    {
      v27 = v15;
    }

    else
    {
      v27 = 0xE300000000000000;
    }

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v73);

    *(v19 + 24) = v28;
    *(v19 + 32) = 2048;
    *(v19 + 34) = v67;
    _os_log_impl(&dword_20AEA4000, v17, v18, "[%s] MediaSuggestions request started - workoutType: %lu, filteredBundleID: %s, maxSuggestions: %ld", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v20, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  v29 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B45A580);
  CanShowSiriSuggestions = SGAppCanShowSiriSuggestions(v29);

  if (CanShowSiriSuggestions)
  {
    if (*(v1 + 248))
    {
      v31 = 84;
    }

    else
    {
      v31 = HKWorkoutActivityType.underlyingActivityType()(*(v1 + 72));
    }

    v40 = *(v1 + 96);
    if (v40 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v40 <= 0x7FFFFFFF)
    {
      v41 = *(v1 + 88);
      v42 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B45A580);
      type metadata accessor for MSSuggestion();
      v43.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v68 = v41;
      if (v41)
      {
        v44 = *(v1 + 80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_20B423A90;
        *(v45 + 32) = v44;
        *(v45 + 40) = v15;
      }

      v46 = v71;
      v47 = *(v1 + 96);
      v48 = objc_opt_self();

      isa = Array._bridgeToObjectiveC()().super.isa;

      v50 = [v48 workoutSuggesterOptionsWithMaxSuggestions:v47 bundleId:v42 workoutType:v31 seedSuggestions:v43.super.isa allowedBundleIdentifiers:isa];
      *(v1 + 208) = v50;

      if ([objc_opt_self() isRunningInStoreDemoMode] & 1) != 0 || (specialized MediaSuggestionsModel.shouldSaveMediaSuggestionsToFile()())
      {
        v51 = v70;
        if (v68)
        {
          *(v1 + 16) = *(v1 + 80);
          *(v1 + 24) = v15;
          *(v1 + 32) = 46;
          *(v1 + 40) = 0xE100000000000000;
          *(v1 + 48) = 95;
          *(v1 + 56) = 0xE100000000000000;
          lazy protocol witness table accessor for type String and conformance String();
          v52 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v54 = v53;
        }

        else
        {
          v57 = *(v1 + 96);
          v73 = 0;
          v74 = 0xE000000000000000;
          _StringGuts.grow(_:)(20);

          v73 = 0xD000000000000012;
          v74 = 0x800000020B45A5A0;
          *(v1 + 64) = v57;
          v46 = v71;
          v58 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x20F2E6D80](v58);

          v52 = v73;
          v54 = v74;
        }
      }

      else
      {
        v52 = 0;
        v54 = 0;
        v51 = v70;
      }

      *(v1 + 216) = v54;
      v59 = MEMORY[0x20F2E6D00](v72, v69, v51, v46);
      v61 = v60;
      *(v1 + 224) = v60;
      v62 = swift_task_alloc();
      *(v1 + 232) = v62;
      *v62 = v1;
      v62[1] = MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:);

      MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(v50, v52, v54, v59, v61);
      return;
    }

    __break(1u);
    return;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v73 = v35;
    *v34 = 136315138;
    v36 = MEMORY[0x20F2E6D00](v72, v69, v70, v14);
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v73);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_20AEA4000, v32, v33, "[%s] Suggestions > Show in App toggle is disabled", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x20F2E9420](v35, -1, -1);
    MEMORY[0x20F2E9420](v34, -1, -1);
  }

  else
  {
  }

  (*(*(v1 + 144) + 8))(*(v1 + 160), *(v1 + 136));

  v55 = *(v1 + 8);
  v56 = MEMORY[0x277D84F90];

  v55(v56);
}

uint64_t MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:)(uint64_t a1)
{
  *(*v1 + 240) = a1;

  return MEMORY[0x2822009F8](MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:), 0, 0);
}

{
  v40 = v1;
  v2 = v1[19];
  v3 = v1[17];
  v4 = v1[18];
  Date.init()();
  Date.timeIntervalSince(_:)();
  v6 = v5;
  v7 = *(v4 + 8);
  v7(v2, v3);
  swift_bridgeObjectRetain_n();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v1[30];
  v12 = v1[26];
  v13 = v1[24];
  if (v10)
  {
    v38 = v7;
    v14 = v1[22];
    v15 = v1[23];
    v16 = v1[21];
    v36 = v1[17];
    v37 = v1[20];
    v35 = v1[26];
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v17 = 136315650;
    v18 = MEMORY[0x20F2E6D00](v16, v14, v15, v13);
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v39);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D839F8];
    *(v22 + 16) = xmmword_20B423A90;
    v24 = MEMORY[0x277D83A80];
    *(v22 + 56) = v23;
    *(v22 + 64) = v24;
    *(v22 + 32) = v6;
    v25 = String.init(format:_:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v39);

    *(v17 + 14) = v27;
    *(v17 + 22) = 2048;
    v28 = *(v11 + 16);

    *(v17 + 24) = v28;

    _os_log_impl(&dword_20AEA4000, v8, v9, "[%s] MediaSuggestions request completed - duration: %ss, returned %ld suggestions", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v34, -1, -1);
    MEMORY[0x20F2E9420](v17, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v29 = v1[20];
    v30 = v1[17];
    swift_bridgeObjectRelease_n();

    v7(v29, v30);
  }

  v31 = v1[30];

  v32 = v1[1];

  return v32(v31);
}

uint64_t HKWorkoutActivityType.underlyingActivityType()(uint64_t a1)
{
  v1 = a1 - 1;
  result = 1;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 2;
      break;
    case 2:
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 6;
      break;
    case 6:
      result = 7;
      break;
    case 7:
      result = 8;
      break;
    case 8:
      result = 9;
      break;
    case 9:
      result = 10;
      break;
    case 10:
      result = 11;
      break;
    case 11:
      result = 12;
      break;
    case 12:
      result = 13;
      break;
    case 13:
      result = 14;
      break;
    case 14:
      result = 15;
      break;
    case 15:
      result = 16;
      break;
    case 16:
      result = 17;
      break;
    case 17:
      result = 18;
      break;
    case 18:
      result = 19;
      break;
    case 19:
      result = 20;
      break;
    case 20:
      result = 21;
      break;
    case 21:
      result = 22;
      break;
    case 22:
      result = 23;
      break;
    case 23:
      result = 24;
      break;
    case 24:
      result = 25;
      break;
    case 25:
      result = 26;
      break;
    case 26:
      result = 27;
      break;
    case 27:
      result = 28;
      break;
    case 28:
      result = 29;
      break;
    case 29:
      result = 30;
      break;
    case 30:
      result = 31;
      break;
    case 31:
      result = 32;
      break;
    case 32:
      result = 33;
      break;
    case 33:
      result = 34;
      break;
    case 34:
      result = 35;
      break;
    case 35:
      result = 36;
      break;
    case 36:
      result = 37;
      break;
    case 37:
      result = 38;
      break;
    case 38:
      result = 39;
      break;
    case 39:
      result = 40;
      break;
    case 40:
      result = 41;
      break;
    case 41:
      result = 42;
      break;
    case 42:
      result = 43;
      break;
    case 43:
      result = 44;
      break;
    case 44:
      result = 45;
      break;
    case 45:
      result = 46;
      break;
    case 46:
      result = 47;
      break;
    case 47:
      result = 48;
      break;
    case 48:
      result = 49;
      break;
    case 49:
      result = 50;
      break;
    case 50:
      result = 51;
      break;
    case 51:
      result = 52;
      break;
    case 52:
      result = 53;
      break;
    case 53:
      result = 54;
      break;
    case 54:
      result = 55;
      break;
    case 55:
      result = 56;
      break;
    case 56:
      result = 57;
      break;
    case 57:
      result = 58;
      break;
    case 58:
      result = 59;
      break;
    case 59:
      result = 60;
      break;
    case 60:
      result = 61;
      break;
    case 61:
      result = 62;
      break;
    case 62:
      result = 63;
      break;
    case 63:
      result = 64;
      break;
    case 64:
      result = 65;
      break;
    case 65:
      result = 66;
      break;
    case 66:
      result = 67;
      break;
    case 67:
      result = 68;
      break;
    case 68:
      result = 69;
      break;
    case 69:
      result = 70;
      break;
    case 70:
      result = 71;
      break;
    case 71:
      result = 72;
      break;
    case 72:
      result = 73;
      break;
    case 73:
      result = 74;
      break;
    case 74:
      result = 75;
      break;
    case 75:
      result = 76;
      break;
    case 76:
      result = 77;
      break;
    case 77:
      result = 78;
      break;
    case 78:
      result = 79;
      break;
    case 79:
      result = 80;
      break;
    case 81:
      result = 81;
      break;
    case 82:
      result = 82;
      break;
    case 83:
      result = 83;
      break;
    default:
      result = 84;
      break;
  }

  return result;
}

uint64_t MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for Date();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:), 0, 0);
}

uint64_t MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)()
{
  v36 = v0;
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = type metadata accessor for Logger();
  *(v0 + 104) = __swift_project_value_buffer(v2, static WOLog.mediaPlayback);
  v3 = v1;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = *(v0 + 16);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v35 = v10;
    *v9 = 136315650;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v35);
    *(v9 + 12) = 2080;
    *(v0 + 216) = [v8 workoutType];
    type metadata accessor for MSWorkoutActivityType(0);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v35);

    *(v9 + 14) = v13;
    *(v9 + 22) = 2080;
    v14 = [v8 allowedBundleIdentifiers];
    v15 = MEMORY[0x277D837D0];
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = MEMORY[0x20F2E6F70](v16, v15);
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v35);

    *(v9 + 24) = v20;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[%s] Starting MediaSuggester request for workout type %s, bundleID(s): %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v21 = [objc_opt_self() isRunningInStoreDemoMode];
  Date.init()();
  if (v21)
  {
    v22 = *(v0 + 32);
    if (v22)
    {
      v23 = swift_task_alloc();
      *(v0 + 112) = v23;
      *v23 = v0;
      v23[1] = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
      v24 = *(v0 + 24);

      return MediaSuggestionsModel.loadDemoSuggestions(cacheKey:)(v24, v22);
    }

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v31 = *(v0 + 40);
      v30 = *(v0 + 48);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v35 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v30, &v35);
      _os_log_impl(&dword_20AEA4000, v28, v29, "[%s] [DemoMode] No cached suggestions found, using live data", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x20F2E9420](v33, -1, -1);
      MEMORY[0x20F2E9420](v32, -1, -1);
    }

    v26 = swift_task_alloc();
    *(v0 + 128) = v26;
    *v26 = v0;
    v27 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  else
  {
    v26 = swift_task_alloc();
    *(v0 + 152) = v26;
    *v26 = v0;
    v27 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  v26[1] = v27;
  v34 = *(v0 + 16);

  return MEMORY[0x28217DF00](v34);
}

{
  v43 = v0;
  v1 = v0[15];
  if (v1)
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[15];
      v6 = v0[5];
      v5 = v0[6];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v42 = v8;
      *v7 = 136315394;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v42);
      *(v7 + 12) = 2048;
      if (v4 >> 62)
      {
        v9 = __CocoaSet.count.getter();
      }

      else
      {
        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v7 + 14) = v9;

      _os_log_impl(&dword_20AEA4000, v2, v3, "[%s] [DemoMode] Loaded %ld cached suggestions", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x20F2E9420](v8, -1, -1);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    else
    {
    }

    v0[22] = v1;
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];
    Date.init()();
    Date.timeIntervalSince(_:)();
    v22 = v21;
    v23 = *(v19 + 8);
    v0[23] = v23;
    v0[24] = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v18, v20);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = v0[5];
      v26 = v0[6];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136315650;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v26, &v42);
      *(v28 + 12) = 2048;
      if (v1 >> 62)
      {
        v30 = __CocoaSet.count.getter();
      }

      else
      {
        v30 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v28 + 14) = v30;

      *(v28 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v31 = swift_allocObject();
      v32 = MEMORY[0x277D839F8];
      *(v31 + 16) = xmmword_20B423A90;
      v33 = MEMORY[0x277D83A80];
      *(v31 + 56) = v32;
      *(v31 + 64) = v33;
      *(v31 + 32) = v22;
      v34 = String.init(format:_:)();
      v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v35, &v42);

      *(v28 + 24) = v36;
      _os_log_impl(&dword_20AEA4000, v24, v25, "[%s] MediaSuggester service returned %ld raw suggestions in %ss", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v29, -1, -1);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }

    else
    {
    }

    v37 = swift_task_alloc();
    v0[25] = v37;
    *v37 = v0;
    v37[1] = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
    v38 = v0[6];
    v39 = v0[5];
    v40 = v0[2];

    return MediaSuggestionsModel.update(_:with:requestId:)(v1, v40, v39, v38);
  }

  else
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[5];
      v12 = v0[6];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v42 = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v42);
      _os_log_impl(&dword_20AEA4000, v10, v11, "[%s] [DemoMode] No cached suggestions found, using live data", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    v16 = swift_task_alloc();
    v0[16] = v16;
    *v16 = v0;
    v16[1] = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
    v17 = v0[2];

    return MEMORY[0x28217DF00](v17);
  }
}

{
  (*(v0 + 184))(*(v0 + 96), *(v0 + 72));
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

{
  v12 = v0;
  v1 = v0[17];
  (*(v0[10] + 8))(v0[12], v0[9]);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v11);
    _os_log_impl(&dword_20AEA4000, v2, v3, "[%s] MediaSuggester error: \\(error)", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v8 = v0[1];
  v9 = MEMORY[0x277D84F90];

  return v8(v9);
}

{
  v12 = v0;
  v1 = v0[21];
  (*(v0[10] + 8))(v0[12], v0[9]);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v11);
    _os_log_impl(&dword_20AEA4000, v2, v3, "[%s] MediaSuggester error: \\(error)", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v8 = v0[1];
  v9 = MEMORY[0x277D84F90];

  return v8(v9);
}

uint64_t MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v28 = v1;
  v2 = v1[18];
  v1[22] = v2;
  v4 = v1[10];
  v3 = v1[11];
  v5 = v1[9];
  Date.init()();
  Date.timeIntervalSince(_:)();
  v7 = v6;
  v8 = *(v4 + 8);
  v1[23] = v8;
  v1[24] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v12 = v1[5];
    v11 = v1[6];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315650;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v27);
    *(v13 + 12) = 2048;
    if (v2 >> 62)
    {
      v15 = __CocoaSet.count.getter();
    }

    else
    {
      v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 14) = v15;

    *(v13 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D839F8];
    *(v16 + 16) = xmmword_20B423A90;
    v18 = MEMORY[0x277D83A80];
    *(v16 + 56) = v17;
    *(v16 + 64) = v18;
    *(v16 + 32) = v7;
    v19 = String.init(format:_:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v27);

    *(v13 + 24) = v21;
    _os_log_impl(&dword_20AEA4000, v9, v10, "[%s] MediaSuggester service returned %ld raw suggestions in %ss", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  else
  {
  }

  v22 = swift_task_alloc();
  v1[25] = v22;
  *v22 = v1;
  v22[1] = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  v23 = v1[6];
  v24 = v1[5];
  v25 = v1[2];

  return MediaSuggestionsModel.update(_:with:requestId:)(v2, v25, v24, v23);
}

{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  else
  {
    v4 = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  v35 = v1;
  v2 = v1[4];
  if (v2)
  {
    v3 = v1[20];
    v4 = v1[8];
    v5 = v1[3];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    v8[5] = v5;
    v8[6] = v2;
    v8[7] = v3;

    _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:), v8);

    _sSo8NSObjectCSgWOhTm_2(v4, &_sScPSgMd, &_sScPSgMR);
  }

  v9 = v1[20];
  v1[22] = v9;
  v11 = v1[10];
  v10 = v1[11];
  v12 = v1[9];
  Date.init()();
  Date.timeIntervalSince(_:)();
  v14 = v13;
  v15 = *(v11 + 8);
  v1[23] = v15;
  v1[24] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v10, v12);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = v1[5];
    v18 = v1[6];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = v21;
    *v20 = 136315650;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, &v34);
    *(v20 + 12) = 2048;
    if (v9 >> 62)
    {
      v22 = __CocoaSet.count.getter();
    }

    else
    {
      v22 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 14) = v22;

    *(v20 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D839F8];
    *(v23 + 16) = xmmword_20B423A90;
    v25 = MEMORY[0x277D83A80];
    *(v23 + 56) = v24;
    *(v23 + 64) = v25;
    *(v23 + 32) = v14;
    v26 = String.init(format:_:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, &v34);

    *(v20 + 24) = v28;
    _os_log_impl(&dword_20AEA4000, v16, v17, "[%s] MediaSuggester service returned %ld raw suggestions in %ss", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v21, -1, -1);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  else
  {
  }

  v29 = swift_task_alloc();
  v1[25] = v29;
  *v29 = v1;
  v29[1] = MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);
  v30 = v1[6];
  v31 = v1[5];
  v32 = v1[2];

  return MediaSuggestionsModel.update(_:with:requestId:)(v9, v32, v31, v30);
}

{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:), 0, 0);
}

uint64_t closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7[9] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v7[10] = v8;
  v7[11] = *(v8 - 8);
  v7[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:), 0, 0);
}

uint64_t closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[10];
    v2 = v0[11];
    v3 = v0[9];
    MediaSuggestionsModel.demoCacheFileURL(cacheKey:)(v0[6], v0[7], v3);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      v4 = v0[9];

      _sSo8NSObjectCSgWOhTm_2(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v6 = v0[11];
      v5 = v0[12];
      v7 = v0[10];
      v8 = v0[8];
      (*(v6 + 32))(v5, v0[9], v7);
      specialized MediaSuggestionsModel.saveMSSuggestions(_:to:)(v8, v5);

      (*(v6 + 8))(v5, v7);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t MediaSuggestionsModel.update(_:with:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[41] = a4;
  v5[42] = v4;
  v5[39] = a2;
  v5[40] = a3;
  v5[38] = a1;
  return MEMORY[0x2822009F8](MediaSuggestionsModel.update(_:with:requestId:), 0, 0);
}

uint64_t MediaSuggestionsModel.update(_:with:requestId:)()
{
  v123 = v0;
  v1 = v0[38];
  v122 = MEMORY[0x277D84F90];
  v118 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v119 = v1;
    v3 = MEMORY[0x277D84F90];
    if (i)
    {
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = v1 & 0xFFFFFFFFFFFFFF8;
      p_class_meths = &v0[38]->class_meths;
      v0 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      while (1)
      {
        if (v5)
        {
          v8 = MEMORY[0x20F2E7A20](v4, *(v121 + 304));
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_53;
          }

          v8 = *(p_class_meths + 8 * v4);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v11 = [v8 identifier];
        if (v11 && (v11, (v12 = [v9 title]) != 0))
        {

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v1 = &v122;
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v4;
        if (v10 == i)
        {
          v0 = v121;
          v3 = v122;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_16:
    v0[43] = v3;
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v13 = v0[39];
    v14 = type metadata accessor for Logger();
    v0[44] = __swift_project_value_buffer(v14, static WOLog.mediaPlayback);
    swift_bridgeObjectRetain_n();

    v15 = v13;
    v1 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v120 = v3;
    if (os_log_type_enabled(v1, v16))
    {
      v18 = v0[40];
      v17 = v0[41];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v122 = v20;
      *v19 = 136315906;
      *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v17, &v122);
      *(v19 + 12) = 2048;
      v21 = v119;
      if (v120 < 0 || (v120 & 0x4000000000000000) != 0)
      {
        v22 = __CocoaSet.count.getter();
      }

      else
      {
        v22 = *(v120 + 16);
      }

      v0 = v121;
      v23 = *(v121 + 312);
      *(v19 + 14) = v22;

      *(v19 + 22) = 2080;
      v24 = [v23 allowedBundleIdentifiers];
      v25 = MEMORY[0x277D837D0];
      v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = MEMORY[0x20F2E6F70](v26, v25);
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v122);

      *(v19 + 24) = v30;
      *(v19 + 32) = 2048;
      v31 = v118 ? __CocoaSet.count.getter() : *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);

      *(v19 + 34) = v31;

      _os_log_impl(&dword_20AEA4000, v1, v16, "[%s] User has %ld suggestions for bundleID(s): %s (filtered from %ld raw suggestions)", v19, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);

      v3 = v120;
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v21 = v119;
    }

    v122 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = 0;
    v32 = v21 & 0xC000000000000001;
    v33 = v21 & 0xFFFFFFFFFFFFFF8;
    v34 = &v0[38]->class_meths;
    v0 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
    while (1)
    {
      if (v32)
      {
        v35 = MEMORY[0x20F2E7A20](v16, *(v121 + 304));
      }

      else
      {
        if (v16 >= *(v33 + 16))
        {
          goto LABEL_55;
        }

        v35 = *(v34 + 8 * v16);
      }

      v36 = v35;
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v37 = [v35 identifier];
      if (v37 && (v37, (v38 = [v36 title]) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v122;
        specialized ContiguousArray._endMutation()();
      }

      ++v16;
      if (v21 == i)
      {
        v0 = v121;
        v39 = v122;
        v3 = v120;
        goto LABEL_41;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

  v39 = MEMORY[0x277D84F90];
LABEL_41:
  v40 = v39 < 0 || (v39 & 0x4000000000000000) != 0;
  if (v40)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_46;
    }

    goto LABEL_58;
  }

  if (!*(v39 + 16))
  {
LABEL_58:

    goto LABEL_59;
  }

LABEL_46:

  v41 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v16))
  {
    v43 = v0[40];
    v42 = v0[41];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v122 = v45;
    *v44 = 136315394;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v122);
    *(v44 + 12) = 2048;
    if (v40)
    {
      v46 = __CocoaSet.count.getter();
    }

    else
    {
      v46 = *(v39 + 16);
    }

    *(v44 + 14) = v46;

    _os_log_impl(&dword_20AEA4000, v41, v16, "[%s] Filtered out %ld suggestions with missing identifier/title", v44, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x20F2E9420](v45, -1, -1);
    MEMORY[0x20F2E9420](v44, -1, -1);

    v3 = v120;
    v0 = v121;
  }

  else
  {
  }

LABEL_59:
  v47 = [(__objc2_prot *)v0[39] allowedBundleIdentifiers];
  v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = *(v48 + 16) == 0;

  v50 = v3 < 0 || (v3 & 0x4000000000000000) != 0;
  v51 = 2 * v49;
  if (v50)
  {
    if (__CocoaSet.count.getter() >= v51)
    {
      v52 = __CocoaSet.count.getter();
      goto LABEL_71;
    }

LABEL_64:
    v53 = v0[39];

    v54 = v53;
    v49 = Logger.logObject.getter();
    LOBYTE(v21) = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v21))
    {
      v56 = v0[40];
      v55 = v0[41];
      v57 = v0[39];
      v39 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v122 = v16;
      *v39 = 136315906;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, &v122);
      *(v39 + 12) = 2080;
      v58 = [(__objc2_prot *)v57 allowedBundleIdentifiers];
      v59 = MEMORY[0x277D837D0];
      v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = MEMORY[0x20F2E6F70](v60, v59);
      v63 = v62;

      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &v122);

      *(v39 + 14) = v64;
      *(v39 + 22) = 2048;
      *(v39 + 24) = v51;
      *(v39 + 32) = 2048;
      if (v50)
      {
        goto LABEL_114;
      }

      v65 = *(v120 + 16);
LABEL_67:

      *(v39 + 34) = v65;

      _os_log_impl(&dword_20AEA4000, v49, v21, "[%s] User doesn't have enough suggestions for bundleID(s): %s, minimumRequiredResults: %ld, actual: %ld", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v16, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);

      v0 = v121;
      goto LABEL_80;
    }

LABEL_79:

LABEL_80:
    v79 = v0[1];
    v80 = MEMORY[0x277D84F90];

    return (v79)(v80);
  }

  v52 = *(v3 + 16);
  if (v52 < v51)
  {
    goto LABEL_64;
  }

LABEL_71:
  v0[45] = v52;
  if (!v52)
  {

    v49 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v49, v74))
    {
      v76 = v0[40];
      v75 = v0[41];
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v122 = v78;
      *v77 = 136315650;
      *(v77 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v75, &v122);
      *(v77 + 12) = 2048;
      *(v77 + 14) = 0;
      *(v77 + 22) = 2048;
      *(v77 + 24) = 0;
      _os_log_impl(&dword_20AEA4000, v49, v74, "[%s] Artwork loading completed - success: %ld, failures: %ld", v77, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x20F2E9420](v78, -1, -1);
      MEMORY[0x20F2E9420](v77, -1, -1);
    }

    goto LABEL_79;
  }

  *(v0 + 47) = 0u;
  *(v0 + 49) = 0u;
  v0[46] = MEMORY[0x277D84F90];
  v66 = v0[43];
  if ((v66 & 0xC000000000000001) == 0)
  {
    if (*(v66 + 16))
    {
      v67 = *(v66 + 32);
      goto LABEL_75;
    }

    __break(1u);
LABEL_114:
    v65 = __CocoaSet.count.getter();
    goto LABEL_67;
  }

  v67 = MEMORY[0x20F2E7A20](0);
LABEL_75:
  v68 = v67;
  v0[51] = v67;
  v0[52] = 1;
  v69 = [(__objc2_prot *)v67 identifier];
  if (v69)
  {
    v70 = v69;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0xE000000000000000;
  }

  v0[53] = v71;
  v0[54] = v73;
  v82 = [(__objc2_meth_list *)v68 bundleID];
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  v0[55] = v83;
  v0[56] = v85;
  v86 = [(__objc2_meth_list *)v68 title];
  if (v86)
  {
    v87 = v86;
    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;
  }

  else
  {
    v88 = 0;
    v90 = 0xE000000000000000;
  }

  v0[57] = v88;
  v0[58] = v90;
  v91 = [(__objc2_meth_list *)v68 artist];
  if (v91)
  {
    v92 = v91;
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;
  }

  else
  {
    v93 = 0;
    v95 = 0;
  }

  v96 = v0[42];
  v97 = v0[43];
  v98 = v0[39];
  v99 = swift_allocObject();
  v0[59] = v99;
  v99->prots = v96;
  v99->inst_meths = v68;
  v99->class_meths = v97;
  v99->opt_inst_meths = v98;
  if (v95)
  {
    if (v83 == 0xD000000000000012 && 0x800000020B45A5C0 == v85)
    {
      v100 = v68;

      v101 = v98;
      v102 = v100;

      goto LABEL_105;
    }

    v110 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v111 = v68;

    v112 = v98;
    v113 = v111;

    if (v110)
    {
LABEL_105:

      goto LABEL_106;
    }
  }

  else if (v83 == 0x6C7070612E6D6F63 && v85 == 0xEF636973754D2E65 || (v103 = _stringCompareWithSmolCheck(_:_:expecting:)(), v98 = v0[39], (v103 & 1) != 0))
  {
    v104 = v68;

    v105 = v98;
    v106 = v104;

    if ([(__objc2_meth_list *)v106 suggestionSource]!= 1)
    {
      goto LABEL_106;
    }

    v107 = [(__objc2_meth_list *)v106 editorialTags];
    v108 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = *(v108 + 16);

    if (v109)
    {
      v93 = 0x754D20656C707041;
    }

    else
    {
      v93 = 0;
    }

    if (v109)
    {
      v95 = 0xEB00000000636973;
    }

    else
    {
      v95 = 0;
    }
  }

  else
  {
    v115 = v68;

    v116 = v98;
    v117 = v115;

LABEL_106:
    v93 = 0;
    v95 = 0;
  }

  v0[60] = v93;
  v0[61] = v95;
  v114 = swift_task_alloc();
  v0[62] = v114;
  v114->isa = v0;
  v114->name = MediaSuggestionsModel.update(_:with:requestId:);

  return MSSuggestion.unifiedArtworkImage()();
}

uint64_t MediaSuggestionsModel.update(_:with:requestId:)(uint64_t a1)
{
  *(*v1 + 504) = a1;

  return MEMORY[0x2822009F8](MediaSuggestionsModel.update(_:with:requestId:), 0, 0);
}

void MediaSuggestionsModel.update(_:with:requestId:)()
{
  v92 = v0;
  v1 = *(v0 + 504);
  if (v1)
  {
    v2 = *(v0 + 376);
    v3 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_51:
      v38 = MEMORY[0x20F2E7A20](v3);
      goto LABEL_19;
    }

    v4 = *(v0 + 400);
    v5 = *(v0 + 384);
    v6 = v2 + 1;
  }

  else
  {
    v7 = *(v0 + 384);
    v4 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
LABEL_54:
      __break(1u);
      return;
    }

    v3 = *(v0 + 392);
    v6 = *(v0 + 376);
    v5 = v7 + 1;
  }

  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  v10 = *(v0 + 456);
  v11 = *(v0 + 440);
  v12 = *(v0 + 432);
  v13 = *(v0 + 408);
  *(v0 + 16) = *(v0 + 424);
  *(v0 + 24) = v12;
  *(v0 + 32) = v1;
  *(v0 + 40) = v11;
  *(v0 + 56) = v10;
  *(v0 + 64) = v9;
  *(v0 + 72) = *(v0 + 480);
  *(v0 + 88) = v13;
  *(v0 + 96) = partial apply for closure #3 in MediaSuggestionsModel.update(_:with:requestId:);
  *(v0 + 104) = v8;
  outlined init with copy of WorkoutMediaSuggestion(v0 + 16, v0 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v0 + 368);
  v83 = v3;
  v84 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  v81 = v6;
  v82 = v5;
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
  }

  v19 = *(v0 + 504);
  v90 = *(v0 + 472);
  v21 = *(v0 + 448);
  v20 = *(v0 + 456);
  v22 = *(v0 + 440);
  v23 = *(v0 + 408);
  v88 = *(v0 + 464);
  v89 = *(v0 + 416);
  v87 = *(v0 + 360);
  v24 = &v15[96 * v17];
  v85 = *(v0 + 480);
  v86 = *(v0 + 424);
  v25 = v15;

  *(v25 + 2) = v18;
  v26 = *(v0 + 32);
  *(v24 + 2) = *(v0 + 16);
  *(v24 + 3) = v26;
  v27 = *(v0 + 48);
  v28 = *(v0 + 64);
  v29 = *(v0 + 96);
  *(v24 + 6) = *(v0 + 80);
  *(v24 + 7) = v29;
  *(v24 + 4) = v27;
  *(v24 + 5) = v28;
  *(v0 + 208) = v86;
  *(v0 + 224) = v19;
  *(v0 + 232) = v22;
  *(v0 + 240) = v21;
  *(v0 + 248) = v20;
  *(v0 + 256) = v88;
  *(v0 + 264) = v85;
  *(v0 + 280) = v23;
  *(v0 + 288) = partial apply for closure #3 in MediaSuggestionsModel.update(_:with:requestId:);
  *(v0 + 296) = v90;
  outlined destroy of WorkoutMediaSuggestion(v0 + 208);
  if (v89 == v87)
  {

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = *(v0 + 320);
      v32 = *(v0 + 328);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v91 = v35;
      *v34 = 136315650;
      *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, &v91);
      *(v34 + 12) = 2048;
      *(v34 + 14) = v83;
      *(v34 + 22) = 2048;
      *(v34 + 24) = v84;
      _os_log_impl(&dword_20AEA4000, v30, v31, "[%s] Artwork loading completed - success: %ld, failures: %ld", v34, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x20F2E9420](v35, -1, -1);
      MEMORY[0x20F2E9420](v34, -1, -1);
    }

    v36 = *(v0 + 8);

    v36(v25);
    return;
  }

  v3 = *(v0 + 416);
  *(v0 + 392) = v83;
  *(v0 + 400) = v84;
  *(v0 + 376) = v81;
  *(v0 + 384) = v82;
  *(v0 + 368) = v25;
  v37 = *(v0 + 344);
  if ((v37 & 0xC000000000000001) != 0)
  {
    goto LABEL_51;
  }

  if (v3 >= *(v37 + 16))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v38 = *(v37 + 8 * v3 + 32);
LABEL_19:
  v39 = v38;
  *(v0 + 408) = v38;
  *(v0 + 416) = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_53;
  }

  v40 = [v38 identifier];
  if (v40)
  {
    v41 = v40;
    v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xE000000000000000;
  }

  *(v0 + 424) = v42;
  *(v0 + 432) = v44;
  v45 = [v39 bundleID];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  *(v0 + 440) = v46;
  *(v0 + 448) = v48;
  v49 = [v39 title];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xE000000000000000;
  }

  *(v0 + 456) = v51;
  *(v0 + 464) = v53;
  v54 = [v39 artist];
  if (v54)
  {
    v55 = v54;
    v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v59 = *(v0 + 336);
  v60 = *(v0 + 344);
  v61 = *(v0 + 312);
  v62 = swift_allocObject();
  *(v0 + 472) = v62;
  v62[2] = v59;
  v62[3] = v39;
  v62[4] = v60;
  v62[5] = v61;
  if (!v58)
  {
    if (v46 == 0x6C7070612E6D6F63 && v48 == 0xEF636973754D2E65 || (v66 = _stringCompareWithSmolCheck(_:_:expecting:)(), v61 = *(v0 + 312), (v66 & 1) != 0))
    {
      v67 = v39;

      v68 = v61;
      v69 = v67;

      if ([v69 suggestionSource] == 1)
      {
        v70 = [v69 editorialTags];
        v71 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

        v72 = *(v71 + 16);

        if (v72)
        {
          v56 = 0x754D20656C707041;
        }

        else
        {
          v56 = 0;
        }

        if (v72)
        {
          v58 = 0xEB00000000636973;
        }

        else
        {
          v58 = 0;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v78 = v39;

      v79 = v61;
      v80 = v78;
    }

    goto LABEL_45;
  }

  if (v46 == 0xD000000000000012 && 0x800000020B45A5C0 == v48)
  {
    v63 = v39;

    v64 = v61;
    v65 = v63;

LABEL_44:

LABEL_45:
    v56 = 0;
    v58 = 0;
    goto LABEL_46;
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v74 = v39;

  v75 = v61;
  v76 = v74;

  if (v73)
  {
    goto LABEL_44;
  }

LABEL_46:
  *(v0 + 480) = v56;
  *(v0 + 488) = v58;
  v77 = swift_task_alloc();
  *(v0 + 496) = v77;
  *v77 = v0;
  v77[1] = MediaSuggestionsModel.update(_:with:requestId:);

  MSSuggestion.unifiedArtworkImage()();
}

void WorkoutMediaSuggestion.init(id:artwork:bundleID:title:detail:msSuggestion:sendFeedback:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v20 = a12;
  v19 = a13;
  v21 = a10;
  if (a10)
  {
    if (a4 == 0xD000000000000012 && 0x800000020B45A5C0 == a5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

LABEL_15:
      v29 = 0;
      v21 = 0;
      goto LABEL_16;
    }

    v29 = a8;
  }

  else
  {
    if ((a4 != 0x6C7070612E6D6F63 || a5 != 0xEF636973754D2E65) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_15;
    }

    v22 = a11;
    if ([v22 suggestionSource] != 1)
    {

      goto LABEL_15;
    }

    v23 = a6;
    v24 = a7;
    v25 = [v22 editorialTags];

    v26 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = *(v26 + 16);

    v28 = v27 == 0;
    a7 = v24;
    a6 = v23;
    v19 = a13;
    v20 = a12;
    v29 = 0x754D20656C707041;
    if (v28)
    {
      v29 = 0;
      v21 = 0;
    }

    else
    {
      v21 = 0xEB00000000636973;
    }
  }

LABEL_16:
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = v29;
  a9[8] = v21;
  a9[9] = a11;
  a9[10] = v20;
  a9[11] = v19;
}

uint64_t MediaSuggestionsModel.availablebundleIDsForMediaSuggestions()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](MediaSuggestionsModel.availablebundleIDsForMediaSuggestions(), 0, 0);
}

{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = MediaSuggestionsModel.availablebundleIDsForMediaSuggestions();

  return MEMORY[0x28217DEF8]();
}

{
  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.mediaPlayback);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20AEA4000, v2, v3, "No bundleIDs available for media suggestions", v4, 2u);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v5 = *(v0 + 32);

  v6 = *(v0 + 8);
  v7 = MEMORY[0x277D84F90];

  return v6(v7);
}

uint64_t MediaSuggestionsModel.availablebundleIDsForMediaSuggestions()(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](MediaSuggestionsModel.availablebundleIDsForMediaSuggestions(), 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t MediaSuggestionsModel.loadDemoSuggestions(cacheKey:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](MediaSuggestionsModel.loadDemoSuggestions(cacheKey:), 0, 0);
}

uint64_t MediaSuggestionsModel.loadDemoSuggestions(cacheKey:)()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  MediaSuggestionsModel.demoCacheFileURL(cacheKey:)(v0[3], v0[4], v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    _sSo8NSObjectCSgWOhTm_2(v0[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    v6 = v0[10];
    v7 = v0[6];
    (*(v0[9] + 32))(v6, v0[7], v0[8]);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = swift_task_alloc();
    v0[12] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12MSSuggestionCGSgMd, &_sSaySo12MSSuggestionCGSgMR);
    *v9 = v0;
    v9[1] = MediaSuggestionsModel.loadDemoSuggestions(cacheKey:);

    return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD000000000000018, 0x800000020B45A690, partial apply for closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:), v8, v10);
  }
}

{

  return MEMORY[0x2822009F8](MediaSuggestionsModel.loadDemoSuggestions(cacheKey:), 0, 0);
}

{
  v1 = v0[2];
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t MediaSuggestionsModel.demoCacheFileURL(cacheKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a1;
  v59 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for URL();
  v56 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v51 - v15;
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  v19 = [v18 URLsForDirectory:9 inDomains:1];

  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v20 + 16))
  {
    v53 = a2;
    v54 = a3;
    v21 = *(v56 + 16);
    v21(v16, v20 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v5);

    URL.appendingPathComponent(_:)();
    v22 = [v17 defaultManager];
    URL._bridgeToObjectiveC()(v23);
    v25 = v24;
    v57 = 0;
    v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:&v57];

    if (v26)
    {
      v27 = v57;
    }

    else
    {
      v34 = v57;
      v35 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static WOLog.mediaPlayback);
      v21(v9, v13, v5);
      v37 = v35;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v57 = v52;
        *v40 = 136315394;
        v41 = URL.path.getter();
        v43 = v42;
        (*(v56 + 8))(v9, v5);
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v43, &v57);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2112;
        v45 = v35;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v46;
        v47 = v51;
        *v51 = v46;
        _os_log_impl(&dword_20AEA4000, v38, v39, "[DemoMode] Failed to create cache directory at %s: %@", v40, 0x16u);
        _sSo8NSObjectCSgWOhTm_2(v47, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v47, -1, -1);
        v48 = v52;
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x20F2E9420](v48, -1, -1);
        MEMORY[0x20F2E9420](v40, -1, -1);
      }

      else
      {

        (*(v56 + 8))(v9, v5);
      }
    }

    v49 = v54;
    v57 = 0;
    v58 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v57 = 0xD000000000000017;
    v58 = 0x800000020B45A670;
    MEMORY[0x20F2E6D80](v55, v53);
    MEMORY[0x20F2E6D80](0x7473696C702ELL, 0xE600000000000000);
    URL.appendingPathComponent(_:)();

    v50 = *(v56 + 8);
    v50(v13, v5);
    v50(v16, v5);
    return (*(v56 + 56))(v49, 0, 1, v5);
  }

  else
  {

    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static WOLog.mediaPlayback);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_20AEA4000, v29, v30, "[DemoMode] Documents directory unavailable - caching disabled", v31, 2u);
      MEMORY[0x20F2E9420](v31, -1, -1);
    }

    v32 = *(v56 + 56);

    return v32(a3, 1, 1, v5);
  }
}

uint64_t closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v38 = a2;
  v39 = a1;
  v43 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v3);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v40 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo12MSSuggestionCGSgs5NeverOGMd, &_sScCySaySo12MSSuggestionCGSgs5NeverOGMR);
  v8 = *(v35 - 8);
  v36 = *(v8 + 64);
  MEMORY[0x28223BE20](v35, v9);
  v34 = &v33 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v15 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  (*(v17 + 104))(v20, *MEMORY[0x277D851B8], v16);
  v37 = static OS_dispatch_queue.global(qos:)();
  (*(v17 + 8))(v20, v16);
  (*(v12 + 16))(v15, v38, v11);
  v21 = v34;
  v22 = v35;
  (*(v8 + 16))(v34, v39, v35);
  v23 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v24 = (v13 + *(v8 + 80) + v23) & ~*(v8 + 80);
  v25 = (v36 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  (*(v12 + 32))(v26 + v23, v15, v11);
  (*(v8 + 32))(v26 + v24, v21, v22);
  *(v26 + v25) = v41;
  aBlock[4] = partial apply for closure #1 in closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:);
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_19;
  v27 = _Block_copy(aBlock);
  v28 = v40;
  static DispatchQoS.unspecified.getter();
  v47 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v30 = v42;
  v29 = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v31 = v37;
  MEMORY[0x20F2E7580](0, v28, v30, v27);
  _Block_release(v27);

  (*(v46 + 8))(v30, v29);
  (*(v44 + 8))(v28, v45);
}

uint64_t closure #1 in closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Data.init(contentsOf:options:)();
  v9 = v8;
  _sSo17OS_dispatch_queueCMaTm_6(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  if (one-time initialization token for mediaSuggestionAllowedClasses != -1)
  {
    swift_once();
  }

  static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();
  if (v32[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo12MSSuggestionCGMd, &_sSaySo12MSSuggestionCGMR);
    if (swift_dynamicCast())
    {
      v10 = v31;
      if (one-time initialization token for mediaPlayback != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static WOLog.mediaPlayback);
      (*(v3 + 16))(v6, a1, v2);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v29 = v13;
        v14 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v32[0] = v28;
        *v14 = 134218242;
        v30 = v12;
        if (v10 >> 62)
        {
          v15 = __CocoaSet.count.getter();
        }

        else
        {
          v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v14 + 4) = v15;

        *(v14 + 12) = 2080;
        v16 = URL.lastPathComponent.getter();
        v18 = v17;
        (*(v3 + 8))(v6, v2);
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v32);

        *(v14 + 14) = v19;
        v20 = v30;
        _os_log_impl(&dword_20AEA4000, v30, v29, "[DemoMode] Loaded %ld cached suggestions from %s", v14, 0x16u);
        v21 = v28;
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x20F2E9420](v21, -1, -1);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }

      else
      {

        (*(v3 + 8))(v6, v2);
      }

      v32[0] = v10;
      goto LABEL_19;
    }
  }

  else
  {
    _sSo8NSObjectCSgWOhTm_2(v32, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for mediaPlayback != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static WOLog.mediaPlayback);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_20AEA4000, v23, v24, "[DemoMode] Failed to unarchive cached suggestions - regenerate cache files", v25, 2u);
    MEMORY[0x20F2E9420](v25, -1, -1);
  }

  v32[0] = 0;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo12MSSuggestionCGSgs5NeverOGMd, &_sScCySaySo12MSSuggestionCGSgs5NeverOGMR);
  CheckedContinuation.resume(returning:)();
  return outlined consume of Data._Representation(v7, v9);
}

uint64_t MediaSuggestionsModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MediaSuggestionsModel@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MediaSuggestionsModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t WorkoutMediaSuggestion.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkoutMediaSuggestion.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *WorkoutMediaSuggestion.artwork.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t WorkoutMediaSuggestion.bundleID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t WorkoutMediaSuggestion.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t WorkoutMediaSuggestion.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t WorkoutMediaSuggestion.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t WorkoutMediaSuggestion.detail.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t WorkoutMediaSuggestion.detail.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t key path setter for WorkoutMediaSuggestion.sendFeedback : WorkoutMediaSuggestion(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 80) = _sytIegr_Ieg_TRTA_1;
  *(a2 + 88) = v5;
  return result;
}

uint64_t WorkoutMediaSuggestion.sendFeedback.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t WorkoutMediaSuggestion.sendFeedback.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

double protocol witness for Identifiable.id.getter in conformance WorkoutMediaSuggestion@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t SGAppCanShowSiriSuggestions(void *a1)
{
  v1 = a1;
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:v1];

  return v3 ^ 1u;
}

uint64_t specialized MediaSuggestionsModel.shouldSaveMediaSuggestionsToFile()()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = MEMORY[0x20F2E6C00](v0, v2);

  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    v13 = 0u;
    v14 = 0u;
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v6 = v5;
  v7 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B45A6B0);
  v8 = [v6 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {

    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (!*(&v12 + 1))
  {
    goto LABEL_8;
  }

  v9 = 1;
LABEL_9:
  _sSo8NSObjectCSgWOhTm_2(&v13, &_sypSgMd, &_sypSgMR);
  return v9;
}

uint64_t dispatch thunk of MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 112) + **(*v5 + 112));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = dispatch thunk of MediaSuggestionsModel.suggestions(for:filteredBundleID:maximumSuggestions:);

  return v14(a1, a2 & 1, a3, a4, a5);
}

uint64_t dispatch thunk of MediaSuggestionsModel.availablebundleIDsForMediaSuggestions()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of MediaSuggestionsModel.availablebundleIDsForMediaSuggestions();

  return v4();
}

uint64_t dispatch thunk of MediaSuggestionsModel.availablebundleIDsForMediaSuggestions()(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutMediaSuggestion(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutMediaSuggestion(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo12MSSuggestionCGSgs5NeverOGMd, &_sScCySaySo12MSSuggestionCGSgs5NeverOGMR);

  return closure #1 in closure #1 in MediaSuggestionsModel.loadMSSuggestions(from:)(v0 + v2);
}

void specialized MediaSuggestionsModel.saveMSSuggestions(_:to:)(unint64_t a1, uint64_t a2)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v46 - v11;
  v13 = objc_opt_self();
  type metadata accessor for MSSuggestion();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v47[0] = 0;
  v15 = [v13 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v47];

  v16 = v47[0];
  if (v15)
  {
    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    Data.write(to:options:)();
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static WOLog.mediaPlayback);
    (*(v5 + 16))(v12, a2, v4);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v46[0] = v4;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47[0] = v40;
      *v39 = 134218242;
      if (a1 >> 62)
      {
        v41 = __CocoaSet.count.getter();
      }

      else
      {
        v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v39 + 4) = v41;

      *(v39 + 12) = 2080;
      v42 = URL.lastPathComponent.getter();
      v44 = v43;
      (*(v5 + 8))(v12, v46[0]);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, v47);

      *(v39 + 14) = v45;
      _os_log_impl(&dword_20AEA4000, v37, v38, "[DemoMode] Cached %ld suggestions to %s", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x20F2E9420](v40, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
      outlined consume of Data._Representation(v17, v19);
    }

    else
    {
      outlined consume of Data._Representation(v17, v19);

      (*(v5 + 8))(v12, v4);
    }
  }

  else
  {
    v20 = v16;
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for mediaPlayback != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.mediaPlayback);
    (*(v5 + 16))(v9, a2, v4);
    v23 = v21;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47[0] = v28;
      *v26 = 136315394;
      v29 = URL.path.getter();
      v30 = v4;
      v32 = v31;
      (*(v5 + 8))(v9, v30);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v32, v47);

      *(v26 + 4) = v33;
      *(v26 + 12) = 2112;
      v34 = v21;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v35;
      *v27 = v35;
      _os_log_impl(&dword_20AEA4000, v24, v25, "[DemoMode] Failed to save MSSuggestions to %s: %@", v26, 0x16u);
      _sSo8NSObjectCSgWOhTm_2(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x20F2E9420](v28, -1, -1);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }
}

void specialized MediaSuggestionsModel.sendFeedback(for:in:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 bundleID];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = objc_allocWithZone(MEMORY[0x277D27FA0]);
  v10 = MEMORY[0x20F2E6C00](v6, v8);

  v11 = [v9 initWithType:1 suggestion:a1 suggestionBundleID:v10];

  v12 = objc_opt_self();
  v13 = v11;
  [v12 timeIntervalSinceReferenceDate];
  v15 = v14;
  v16 = objc_allocWithZone(MEMORY[0x277D27F98]);
  type metadata accessor for MSSuggestion();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B45A580);
  v19 = [v16 initWithAction:v13 requestInterval:a3 options:isa suggestions:4 numberOfVisibleSuggestions:v18 sessionIdentifier:v15];

  [v19 donate];
}

uint64_t partial apply for closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:);

  return closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t partial apply for closure #1 in MediaSuggestionsModel.fetchSuggestions(options:cacheKey:requestId:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t RaceFilter.id.getter()
{
  if (*v0)
  {
    return 1953718604;
  }

  else
  {
    return 0x6C616E6F73726550;
  }
}

WorkoutCore::RaceFilter_optional __swiftcall RaceFilter.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RaceFilter.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RaceFilter@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RaceFilter.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type [RaceFilter] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [RaceFilter] and conformance [A];
  if (!lazy protocol witness table cache variable for type [RaceFilter] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore10RaceFilterOGMd, &_sSay11WorkoutCore10RaceFilterOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [RaceFilter] and conformance [A]);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RaceFilter(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1953718604;
  }

  else
  {
    v3 = 0x6C616E6F73726550;
  }

  if (v2)
  {
    v4 = 0xED00007473654220;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1953718604;
  }

  else
  {
    v5 = 0x6C616E6F73726550;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xED00007473654220;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t lazy protocol witness table accessor for type RaceFilter and conformance RaceFilter()
{
  result = lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter;
  if (!lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter;
  if (!lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceFilter and conformance RaceFilter);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceFilter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RaceFilter(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceFilter(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t getEnumTagSinglePayload for RaceFilter(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RaceFilter(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized VoiceFeedbackAlerting.toDictionary()()
{
  type metadata accessor for AboveTargetZoneModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type AboveTargetZoneModel and conformance AboveTargetZoneModel, MEMORY[0x277D7D888], MEMORY[0x277D7D890]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for BelowTargetZoneModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type BelowTargetZoneModel and conformance BelowTargetZoneModel, MEMORY[0x277D7D898], MEMORY[0x277D7D8A0]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for EnteredTargetZoneModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type EnteredTargetZoneModel and conformance EnteredTargetZoneModel, MEMORY[0x277D7D8B8], MEMORY[0x277D7D8C0]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for LapCompletionModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type LapCompletionModel and conformance LapCompletionModel, MEMORY[0x277D7D868], MEMORY[0x277D7D870]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for DistanceSplitModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type DistanceSplitModel and conformance DistanceSplitModel, MEMORY[0x277D7D858], MEMORY[0x277D7D860]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for SegmentModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type SegmentModel and conformance SegmentModel, MEMORY[0x277D7D838], MEMORY[0x277D7D840]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for HalfwayGoalCompletionModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type HalfwayGoalCompletionModel and conformance HalfwayGoalCompletionModel, MEMORY[0x277D7D908], MEMORY[0x277D7D910]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for GoalCompletionModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type GoalCompletionModel and conformance GoalCompletionModel, MEMORY[0x277D7D878], MEMORY[0x277D7D880]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for UpcomingIntervalModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type UpcomingIntervalModel and conformance UpcomingIntervalModel, MEMORY[0x277D7D8A8], MEMORY[0x277D7D8B0]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for BasicVoiceFeedbackAlerts();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type BasicVoiceFeedbackAlerts and conformance BasicVoiceFeedbackAlerts, MEMORY[0x277D7D8E8], MEMORY[0x277D7D8F0]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for PacerGoalCompletionModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type PacerGoalCompletionModel and conformance PacerGoalCompletionModel, MEMORY[0x277D7D8F8], MEMORY[0x277D7D900]);
  return Encodable.asDictionary()();
}

{
  type metadata accessor for TimeSplitModel();
  lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(&lazy protocol witness table cache variable for type TimeSplitModel and conformance TimeSplitModel, MEMORY[0x277D7D848], MEMORY[0x277D7D850]);
  return Encodable.asDictionary()();
}

uint64_t WorkoutAlertZone.spokenUserData(with:)(void *a1)
{
  v3 = type metadata accessor for EnteredTargetZoneModel();
  v61 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BelowTargetZoneModel();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for AboveTargetZoneModel();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v9);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VoiceFeedbackTargetZone();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v52 - v18;
  v20 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v21 = [*&v1[v20] primaryType];
  if (v21 > 2)
  {
    if (v21 != 3)
    {
      goto LABEL_25;
    }

    v22 = a1;
    v30 = [objc_opt_self() wattUnit];
  }

  else
  {
    if (v21 == 1)
    {
      v52 = v3;
      v53 = v11;
      v22 = a1;
      v21 = [a1 unitManager];
      if (v21)
      {
        v23 = v21;
        v24 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
        swift_beginAccess();
        v62 = [v23 userDistanceHKUnitForDistanceType_];

        v25 = [objc_opt_self() meterUnit];
        v26 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
        swift_beginAccess();
        v27 = [objc_opt_self() quantityWithUnit:v25 doubleValue:*&v1[v26]];

        v28 = MEMORY[0x20F2E8410](*&v1[v24]);
        v29 = *&v1[v24];
        if (v28 == 4)
        {
          [v22 speedPerHourWithDistance:v27 overDuration:4 paceFormat:*&v1[v24] distanceType:1.0];
LABEL_13:

          v11 = v53;
          v3 = v52;
          goto LABEL_14;
        }

        v31 = v28;
        v21 = [v22 unitManager];
        if (v21)
        {
          v32 = v21;
          [v21 paceWithDistance:v27 overDuration:v31 paceFormat:v29 distanceType:1.0];

          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_23:
      if (!v21)
      {
        v48 = "t zone primary type to speak";
        v51 = 35;
        v49 = 0xD000000000000034;
LABEL_26:
        v50 = v48 | 0x8000000000000000;
        goto LABEL_28;
      }

LABEL_25:
      v48 = "rkoutAlertZone+Spoken.swift";
      v51 = 37;
      v49 = 0xD00000000000003CLL;
      goto LABEL_26;
    }

    if (v21 != 2)
    {
      goto LABEL_23;
    }

    v22 = a1;
    v30 = [objc_opt_self() _countPerMinuteUnit];
  }

  v62 = v30;
  swift_beginAccess();
LABEL_14:
  v33 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  swift_beginAccess();
  v34 = *&v1[v33];

  static VoiceFeedbackTargetZone.make(targetZone:distanceType:formattingManager:)(v35, v34, v22, v19);

  v36 = [v1 type];
  if (v36 == 10)
  {
    v41 = v62;
    v42 = [v62 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 16))(v16, v19, v11);
    v43 = v60;
    EnteredTargetZoneModel.init(magnitude:unit:targetZone:)();
    v40 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v61 + 8))(v43, v3);
    goto LABEL_20;
  }

  if (v36 == 9)
  {
    v37 = v62;
    v38 = [v62 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 16))(v16, v19, v11);
    v39 = v57;
    BelowTargetZoneModel.init(magnitude:unit:targetZone:)();
    v40 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v58 + 8))(v39, v59);
LABEL_20:
    (*(v12 + 8))(v19, v11);
    return v40;
  }

  if (v36 == 8)
  {
    v44 = v62;
    v45 = [v62 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v12 + 16))(v16, v19, v11);
    v46 = v54;
    AboveTargetZoneModel.init(magnitude:unit:targetZone:)();
    v40 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v55 + 8))(v46, v56);
    goto LABEL_20;
  }

  v51 = 60;
  v50 = 0x800000020B45A7C0;
  v49 = 0xD00000000000002FLL;
LABEL_28:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v49, v50, "WorkoutCore/NLWorkoutAlertZone+Spoken.swift", 43, 2, v51, 0);
  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type TimeSplitModel and conformance TimeSplitModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized WorkoutAlertHeartRateZone.spokenUserData(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for EnteredTargetZoneModel();
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v48 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BelowTargetZoneModel();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AboveTargetZoneModel();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v8);
  v42 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMd, &_s20WorkoutAnnouncements23VoiceFeedbackPaceFormatOSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v52 = &v42 - v12;
  v51 = type metadata accessor for VoiceFeedbackMetricType();
  v13 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v14);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for VoiceFeedbackTargetZone();
  v54 = *(v17 - 8);
  v55 = v17;
  v19 = MEMORY[0x28223BE20](v17, v18);
  v53 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v42 - v22;
  v24 = [objc_opt_self() _countPerMinuteUnit];
  v25 = OBJC_IVAR___WOWorkoutAlertHeartRateZone_heartRateTargetZone;
  swift_beginAccess();
  v26 = *&v0[v25];
  HeartRateTargetZone.applicableRange.getter();
  v28 = v27;

  if (v28)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000037, 0x800000020B45A970, "WorkoutCore/WorkoutAlertHeartRateZone+Spoken.swift", 50, 2, 19, 0);
  }

  else
  {
    v29 = [v24 unitString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v13 + 104))(v16, *MEMORY[0x277D7D8D0], v51);
    v30 = type metadata accessor for VoiceFeedbackPaceFormat();
    (*(*(v30 - 8) + 56))(v52, 1, 1, v30);
    swift_beginAccess();
    VoiceFeedbackTargetZone.init(minMagnitude:maxMagnitude:unit:metricType:paceFormat:zoneIndex:)();
    v31 = [v1 type];
    if (v31 == 10)
    {
      swift_beginAccess();
      v37 = [v24 unitString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = v54;
      v34 = v55;
      (*(v54 + 16))(v53, v23, v55);
      v38 = v48;
      EnteredTargetZoneModel.init(magnitude:unit:targetZone:)();
      v36 = specialized VoiceFeedbackAlerting.toDictionary()();

      (*(v49 + 8))(v38, v50);
      goto LABEL_8;
    }

    if (v31 == 9)
    {
      swift_beginAccess();
      v32 = [v24 unitString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = v54;
      v34 = v55;
      (*(v54 + 16))(v53, v23, v55);
      v35 = v45;
      BelowTargetZoneModel.init(magnitude:unit:targetZone:)();
      v36 = specialized VoiceFeedbackAlerting.toDictionary()();

      (*(v46 + 8))(v35, v47);
LABEL_8:
      (*(v33 + 8))(v23, v34);
      return v36;
    }

    if (v31 == 8)
    {
      swift_beginAccess();
      v39 = [v24 unitString];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v33 = v54;
      v34 = v55;
      (*(v54 + 16))(v53, v23, v55);
      v40 = v42;
      AboveTargetZoneModel.init(magnitude:unit:targetZone:)();
      v36 = specialized VoiceFeedbackAlerting.toDictionary()();

      (*(v43 + 8))(v40, v44);
      goto LABEL_8;
    }

    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, 0x800000020B45A7C0, "WorkoutCore/WorkoutAlertHeartRateZone+Spoken.swift", 50, 2, 46, 0);
  }

  __break(1u);
  return result;
}

uint64_t WorkoutAlertLapChange.spokenUserData(with:)(void *a1)
{
  v27 = type metadata accessor for VoiceFeedbackPaceFormat();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for LapCompletionModel();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = FIUIDistanceTypeForActivityType();
  v11 = FIUIPaceFormatForWorkoutActivityType();
  v12 = [a1 unitManager];
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 userDistanceHKUnitForDistanceType_];

  v15 = [objc_opt_self() meterUnit];
  v16 = OBJC_IVAR___WorkoutAlertLapChange_lapDistance;
  swift_beginAccess();
  v17 = [objc_opt_self() quantityWithUnit:v15 doubleValue:*(v1 + v16)];

  v18 = OBJC_IVAR___WorkoutAlertLapChange_lapDuration;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v11 != 4)
  {
    v20 = [a1 unitManager];
    if (v20)
    {
      v21 = v20;
      [v20 paceWithDistance:v17 overDuration:v11 paceFormat:v10 distanceType:v19];

      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [a1 speedPerHourWithDistance:v17 overDuration:4 paceFormat:v10 distanceType:*(v1 + v18)];
LABEL_6:

  swift_beginAccess();
  v22 = [v14 unitString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 == 4)
      {
        v23 = MEMORY[0x277D7D8E0];
LABEL_12:
        (*(v3 + 104))(v6, *v23, v27);
        LapCompletionModel.init(index:paceMagnitude:unit:paceFormat:)();
        v24 = specialized VoiceFeedbackAlerting.toDictionary()();

        (*(v26 + 8))(v9, v28);
        return v24;
      }

      goto LABEL_17;
    }

LABEL_11:
    v23 = MEMORY[0x277D7D8D8];
    goto LABEL_12;
  }

  if (v11 == 1)
  {
    goto LABEL_11;
  }

LABEL_15:
  if (v11 != 2)
  {
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000044, 0x800000020B45A9F0, "WorkoutCore/FIUIPaceFormat+VoiceFeedbackPaceFormat.swift", 56, 2, 23, 0);
    goto LABEL_18;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000040, 0x800000020B45AA40, "WorkoutCore/FIUIPaceFormat+VoiceFeedbackPaceFormat.swift", 56, 2, 21, 0);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t WorkoutAlertSegment.spokenUserData(with:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SegmentModel();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for VoiceFeedbackPaceFormat();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DistanceSplitModel();
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v2 type] != 6)
  {
    [*&v2[OBJC_IVAR___WOSegmentAlert_segmentMarker] segmentIndex];
    SegmentModel.init(index:)();
    v26 = specialized VoiceFeedbackAlerting.toDictionary()();
    (*(v5 + 8))(v8, v4);
    return v26;
  }

  v33 = v9;
  v34 = v14;
  v18 = FIUIPaceFormatForWorkoutActivityType();
  v19 = FIUIDistanceTypeForActivityType();
  v20 = [a1 unitManager];
  if (!v20)
  {
    __break(1u);
    goto LABEL_20;
  }

  v21 = v20;
  v35 = [v20 userDistanceHKUnitForDistanceType_];

  v22 = *&v2[OBJC_IVAR___WOSegmentAlert_segmentMarker];
  v23 = [v22 distance];
  if (!v23)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v24 = v23;
  [v22 duration];
  if (v18 != 4)
  {
    v27 = v25;
    v28 = [a1 unitManager];
    if (v28)
    {
      v29 = v28;
      [v28 paceWithDistance:v24 overDuration:v18 paceFormat:v19 distanceType:v27];

      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [a1 speedPerHourWithDistance:v24 overDuration:4 paceFormat:v19 distanceType:?];
LABEL_9:

  [v22 segmentIndex];
  if ((v2[OBJC_IVAR___WOSegmentAlert_shouldHideTime] & 1) == 0)
  {
    [v22 duration];
  }

  v30 = [v35 unitString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 > 2)
  {
    if (v18 != 3)
    {
      if (v18 == 4)
      {
        v31 = MEMORY[0x277D7D8E0];
LABEL_17:
        (*(v10 + 104))(v13, *v31, v33);
        DistanceSplitModel.init(index:paceMagnitude:duration:unit:paceFormat:)();
        v26 = specialized VoiceFeedbackAlerting.toDictionary()();

        (*(v36 + 8))(v17, v34);
        return v26;
      }

      goto LABEL_24;
    }

LABEL_16:
    v31 = MEMORY[0x277D7D8D8];
    goto LABEL_17;
  }

  if (v18 == 1)
  {
    goto LABEL_16;
  }

LABEL_22:
  if (v18 != 2)
  {
LABEL_24:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000044, 0x800000020B45A9F0, "WorkoutCore/FIUIPaceFormat+VoiceFeedbackPaceFormat.swift", 56, 2, 23, 0);
    goto LABEL_25;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000040, 0x800000020B45AA40, "WorkoutCore/FIUIPaceFormat+VoiceFeedbackPaceFormat.swift", 56, 2, 21, 0);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t NLWorkoutAlertGoalProgress.spokenDescription(with:)(uint64_t a1)
{
  countAndFlagsBits = NLWorkoutAlertGoalProgress.spokenGoalProgressString()()._countAndFlagsBits;
  v4 = [v1 goalCompletionStringWithUnitStyle:3 decimalTrimmingMode:2 formattingManager:a1 textCase:2];
  v5 = [v4 spokenString];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v6, v8);

  v9 = String.firstLetterCapitalized()();

  MEMORY[0x20F2E6D80](32, 0xE100000000000000);
  MEMORY[0x20F2E6D80](0x5C313D736F655C1BLL, 0xE800000000000000);
  MEMORY[0x20F2E6D80](32, 0xE100000000000000);
  MEMORY[0x20F2E6D80](v9._countAndFlagsBits, v9._object);

  return countAndFlagsBits;
}

Swift::String __swiftcall NLWorkoutAlertGoalProgress.spokenGoalProgressString()()
{
  v1 = 0xD00000000000001CLL;
  v2 = [v0 type];
  if (v2 == 7)
  {
    v3 = "GOAL_PROGRESS_COMPLETION_SPOKEN";
  }

  else
  {
    if (v2 != 13)
    {
      v9 = 0;
      v11 = 0xE000000000000000;
      goto LABEL_7;
    }

    v3 = " type in goal progress alert";
    v1 = 0xD00000000000001FLL;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x20F2E6C00](v1, v3 | 0x8000000000000000);
  v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

LABEL_7:
  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t NLWorkoutAlertGoalProgress.spokenUserData(with:)(void *a1)
{
  v3 = type metadata accessor for GoalCompletionModel();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HalfwayGoalCompletionModel();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 goal];
  v14 = [v13 goalTypeIdentifier];

  v15 = [a1 unitManager];
  if (v15)
  {
    v16 = v15;
    v17 = [v1 distanceType];
    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v18 = [v16 userActiveEnergyBurnedUnit];
        goto LABEL_9;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v18 = [v16 userDistanceHKUnitForDistanceType_];
LABEL_9:
          v19 = v18;

          NLWorkoutAlertGoalProgress.currentValueInUserUnit(formattingManager:)(a1);
          v20 = [v1 type];
          if (v20 == 13)
          {
            v21 = [v19 unitString];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            GoalCompletionModel.init(magnitude:unit:)();
            v22 = specialized VoiceFeedbackAlerting.toDictionary()();

            (*(v4 + 8))(v7, v3);
            return v22;
          }

          if (v20 == 7)
          {
            v23 = [v19 unitString];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            HalfwayGoalCompletionModel.init(magnitude:unit:)();
            v22 = specialized VoiceFeedbackAlerting.toDictionary()();

            (*(v9 + 8))(v12, v8);
            return v22;
          }

          goto LABEL_15;
        case 2:
          v18 = [objc_opt_self() secondUnit];
          goto LABEL_9;
        case 0:
          v27 = 26;
          v25 = 0x800000020B45AB10;
          v26 = 0xD000000000000018;
LABEL_19:
          result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v26, v25, "WorkoutCore/_HKWorkoutGoalType+UserUnit.swift", 45, 2, v27, 0);
          goto LABEL_20;
      }
    }

    v27 = 28;
    v26 = 0xD000000000000041;
    v25 = 0x800000020B45AAC0;
    goto LABEL_19;
  }

  __break(1u);
LABEL_15:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002CLL, 0x800000020B45AB70, "WorkoutCore/NLWorkoutAlertGoalProgress+Spoken.swift", 51, 2, 50, 0);
LABEL_20:
  __break(1u);
  return result;
}

void NLWorkoutAlertGoalProgress.currentValueInUserUnit(formattingManager:)(void *a1)
{
  v3 = [v1 goal];
  v4 = [v3 goalTypeIdentifier];

  v5 = specialized static NLSessionActivityGoal.canonicalUnit(for:)(v4);
  [v1 currentValue];
  v7 = [objc_opt_self() quantityWithUnit:v5 doubleValue:v6];

  v8 = [v1 goal];
  v9 = [v8 goalTypeIdentifier];

  v10 = [a1 unitManager];
  if (v10)
  {
    v11 = v10;
    v12 = [v1 distanceType];
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        v13 = [v11 userActiveEnergyBurnedUnit];
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    if (v9 == 1)
    {
      v13 = [v11 userDistanceHKUnitForDistanceType_];
LABEL_9:
      v14 = v13;

      [v7 doubleValueForUnit_];
      return;
    }

    if (v9 == 2)
    {
      v13 = [objc_opt_self() secondUnit];
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  if (v9)
  {
LABEL_13:
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000041, 0x800000020B45AAC0, "WorkoutCore/_HKWorkoutGoalType+UserUnit.swift", 45, 2, 28, 0);
    goto LABEL_14;
  }

  _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000018, 0x800000020B45AB10, "WorkoutCore/_HKWorkoutGoalType+UserUnit.swift", 45, 2, 26, 0);
LABEL_14:
  __break(1u);
}

uint64_t WorkoutAlertInterval.spokenUserData(with:)(char *a1)
{
  v3 = type metadata accessor for BasicVoiceFeedbackAlerts();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 type];
  if (v8 == 17)
  {
    static BasicVoiceFeedbackAlerts.intervalEnded.getter();
    v9 = specialized VoiceFeedbackAlerting.toDictionary()();
    (*(v4 + 8))(v7, v3);
    return v9;
  }

  else if (v8 == 16)
  {

    return WorkoutAlertInterval.upcomingSpokenUserData(formattingManager:)(a1);
  }

  else
  {
    v12 = 0;
    v13 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    MEMORY[0x20F2E6D80](0xD000000000000013, 0x800000020B45AC10);
    v11[1] = [v1 type];
    type metadata accessor for NLWorkoutAlertType(0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B45AC30);
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, v12, v13, "WorkoutCore/WorkoutAlertInterval+Spoken.swift", 45, 2, 21, 0);
    __break(1u);
  }

  return result;
}

uint64_t WorkoutAlertInterval.upcomingSpokenUserData(formattingManager:)(char *a1)
{
  v3 = type metadata accessor for UpcomingIntervalModel();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for VoiceFeedbackWorkoutStep();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v34 - v22;
  v24 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 8);
  v25 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 16);
  v26 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 24);
  v27 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 32);
  v28 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep + 40);
  v36 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_completedStep);
  v37 = v24;
  v38 = v25;
  v39 = v26;
  v40 = v27;
  v41 = v28;
  outlined copy of CompletedWorkoutStep?(v36, v24, v25, v26);
  v29 = a1;
  static VoiceFeedbackWorkoutStep.make(completedStep:formattingManager:)(&v36, a1, v23);
  outlined consume of CompletedWorkoutStep?(v36, v37, v38, v39);
  v30 = *(v1 + OBJC_IVAR____TtC11WorkoutCore20WorkoutAlertInterval_nextStep);
  if (v30)
  {
    swift_beginAccess();

    v31 = FIUIDistanceTypeForActivityType();
    static VoiceFeedbackWorkoutStep.make(workoutStep:distanceType:formattingManager:)(v30, v31, v29, v15);
    outlined init with copy of VoiceFeedbackWorkoutStep?(v23, v20);
    (*(v8 + 16))(v12, v15, v7);
    UpcomingIntervalModel.init(completedStep:nextStep:)();
    v32 = specialized VoiceFeedbackAlerting.toDictionary()();

    (*(v34 + 8))(v6, v35);
    (*(v8 + 8))(v15, v7);
    outlined destroy of VoiceFeedbackWorkoutStep?(v23);
    return v32;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000030, 0x800000020B45AC50, "WorkoutCore/WorkoutAlertInterval+Spoken.swift", 45, 2, 30, 0);
    __break(1u);
  }

  return result;
}

double outlined copy of CompletedWorkoutStep?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }

  return result;
}

void outlined consume of CompletedWorkoutStep?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
  }
}

uint64_t outlined init with copy of VoiceFeedbackWorkoutStep?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of VoiceFeedbackWorkoutStep?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMd, &_s20WorkoutAnnouncements013VoiceFeedbackA4StepVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized NLWorkoutAlertRingCompletion.spokenUserData(with:)()
{
  v1 = v0;
  v2 = type metadata accessor for BasicVoiceFeedbackAlerts();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 completedRing];
  if (!v7)
  {
    static BasicVoiceFeedbackAlerts.moveRingCompleted.getter();
LABEL_5:
    v8 = specialized VoiceFeedbackAlerting.toDictionary()();
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  if (v7 == 1)
  {
    static BasicVoiceFeedbackAlerts.exerciseRingCompleted.getter();
    goto LABEL_5;
  }

  if (v7 == 2)
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002DLL, 0x800000020B45AD10, "WorkoutCore/NLWorkoutAlertRingCompletion+Spoken.swift", 53, 2, 21, 0);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000035, 0x800000020B45ACD0, "WorkoutCore/NLWorkoutAlertRingCompletion+Spoken.swift", 53, 2, 23, 0);
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for Atomic(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Atomic.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t Atomic.__deallocating_deinit()
{
  Atomic.deinit();

  return swift_deallocClassInstance();
}

uint64_t RaceWorkoutConfiguration.raceFilter.getter@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);
}

unint64_t RaceWorkoutConfiguration.CodingKeys.rawValue.getter(char a1)
{
  result = 0x7469546574756F72;
  switch(a1)
  {
    case 1:
      result = 0x5572657473756C63;
      break;
    case 2:
      result = 0x746C694665636172;
      break;
    case 3:
      result = 0x6B726F577473616CLL;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6B726F577473616CLL;
      break;
    case 7:
      result = 0x6B726F5774736562;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x6B726F5774736562;
      break;
    case 11:
      result = 0xD000000000000020;
      break;
    case 12:
      result = 0xD000000000000021;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x5372657473756C63;
      break;
    case 15:
      result = 0x636E6176656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RaceWorkoutConfiguration.CodingKeys(char *a1, char *a2)
{
  v2 = *a2;
  v3 = RaceWorkoutConfiguration.CodingKeys.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RaceWorkoutConfiguration.CodingKeys.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceWorkoutConfiguration.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RaceWorkoutConfiguration.CodingKeys.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance RaceWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  RaceWorkoutConfiguration.CodingKeys.rawValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  RaceWorkoutConfiguration.CodingKeys.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RaceWorkoutConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RaceWorkoutConfiguration.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RaceWorkoutConfiguration.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = RaceWorkoutConfiguration.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance RaceWorkoutConfiguration.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized RaceWorkoutConfiguration.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaceWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RaceWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RaceWorkoutConfiguration.routeTitle.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t RaceWorkoutConfiguration.routeTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

double RaceWorkoutConfiguration.lastWorkoutDistance.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

void RaceWorkoutConfiguration.lastWorkoutDistance.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double RaceWorkoutConfiguration.lastWorkoutDuration.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void RaceWorkoutConfiguration.lastWorkoutDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double RaceWorkoutConfiguration.bestWorkoutDistance.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  return *(v0 + v1);
}

void RaceWorkoutConfiguration.bestWorkoutDistance.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double RaceWorkoutConfiguration.bestWorkoutDuration.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

void RaceWorkoutConfiguration.bestWorkoutDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t RaceWorkoutConfiguration.clusterUUID.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = (a2)(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t RaceWorkoutConfiguration.clusterUUID.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void, __n128))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = (a3)(0);
  (*(*(v7 - 8) + 40))(v3 + v6, a1, v7);
  return swift_endAccess();
}

uint64_t RaceWorkoutConfiguration.routeSnapshotData.getter()
{
  v1 = v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData;
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t RaceWorkoutConfiguration.routeSnapshotData.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of Data._Representation(v6, v7);
}

uint64_t RaceWorkoutConfiguration.clusterSize.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
  swift_beginAccess();
  return *(v0 + v1);
}

void RaceWorkoutConfiguration.clusterSize.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double RaceWorkoutConfiguration.relevanceValue.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  swift_beginAccess();
  return *(v0 + v1);
}

void RaceWorkoutConfiguration.relevanceValue.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id RaceWorkoutConfiguration.lastWorkoutStartingPoint.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
  v4.latitude = *(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
  v2 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
  v4.longitude = *(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
  if (CLLocationCoordinate2DIsValid(v4))
  {
    return [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v0 + v1) longitude:*(v0 + v2)];
  }

  else
  {
    return 0;
  }
}

void RaceWorkoutConfiguration.lastWorkoutStartingPoint.setter(void *a1)
{
  if (a1)
  {
    [a1 coordinate];
    *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude) = v3;
    [a1 coordinate];
    v5 = v4;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude) = 0x412E848000000000;
    v5 = 0x412E848000000000;
  }

  *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude) = v5;
}

void (*RaceWorkoutConfiguration.lastWorkoutStartingPoint.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
  v7.latitude = *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
  a1[3] = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
  v7.longitude = *(v1 + v4);
  if (CLLocationCoordinate2DIsValid(v7))
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v1 + v3) longitude:*(v1 + v4)];
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return RaceWorkoutConfiguration.lastWorkoutStartingPoint.modify;
}

void RaceWorkoutConfiguration.lastWorkoutStartingPoint.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a1;
  if (a2)
  {
    if (v5)
    {
      v14 = v5;
      [v14 coordinate];
      *(v3 + v4) = v6;
      [v14 coordinate];
      v8 = v7;

      v9 = v14;
    }

    else
    {
      v9 = 0;
      *(v3 + v4) = 0x412E848000000000;
      v8 = 0x412E848000000000;
    }

    *(v3 + *(a1 + 24)) = v8;
  }

  else
  {
    if (v5)
    {
      v10 = v5;
      [v10 coordinate];
      *(v3 + v4) = v11;
      [v10 coordinate];
      v13 = v12;
    }

    else
    {
      *(v3 + v4) = 0x412E848000000000;
      v13 = 0x412E848000000000;
    }

    *(v3 + *(a1 + 24)) = v13;
  }
}

double RaceWorkoutConfiguration.referenceRouteLength.getter(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  if (v8 == 1)
  {
    v5 = *a1;
  }

  else
  {
    v5 = *a2;
  }

  v6 = v2 + v5;
  swift_beginAccess();
  return *v6;
}

uint64_t RaceWorkoutConfiguration.referenceWorkoutUUID.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  if (v7 == 1)
  {
    v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  }

  else
  {
    v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  }

  v4 = v1 + v3;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a1, v4, v5);
}

double RaceWorkoutConfiguration.referenceRouteAveragePace.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  if (v7 == 1)
  {
    v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    swift_beginAccess();
    v2 = *(v0 + v1);
    v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  }

  else
  {
    v4 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
    swift_beginAccess();
    v2 = *(v0 + v4);
    v3 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  }

  v5 = (v0 + v3);
  swift_beginAccess();
  return v2 / *v5;
}

uint64_t RaceWorkoutConfiguration.raceFilter.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*RaceWorkoutConfiguration.raceFilter.modify(uint64_t *a1))()
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
  return RaceWorkoutConfiguration.raceFilter.modify;
}

void RaceWorkoutConfiguration.raceFilter.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t RaceWorkoutConfiguration.$raceFilter.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for RaceWorkoutConfiguration.$raceFilter : RaceWorkoutConfiguration(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for RaceWorkoutConfiguration.$raceFilter : RaceWorkoutConfiguration(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t RaceWorkoutConfiguration.$raceFilter.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*RaceWorkoutConfiguration.$raceFilter.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMd, &_s7Combine9PublishedV9PublisherVy11WorkoutCore10RaceFilterO_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration__raceFilter;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return RaceWorkoutConfiguration.$raceFilter.modify;
}

void RaceWorkoutConfiguration.$raceFilter.modify(uint64_t a1, char a2)
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

Swift::Int RaceWorkoutConfiguration.hash.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Hasher.init()();
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v16, sel_hash);
  MEMORY[0x20F2E7FF0](v8);
  swift_beginAccess();

  String.hash(into:)();

  v9 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
  swift_beginAccess();
  v10 = *(v4 + 16);
  v10(v7, &v1[v9], v3);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  v11 = *(v4 + 8);
  v11(v7, v3);
  v12 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  swift_beginAccess();
  v10(v7, &v1[v12], v3);
  dispatch thunk of Hashable.hash(into:)();
  v11(v7, v3);
  v13 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  swift_beginAccess();
  v10(v7, &v1[v13], v3);
  dispatch thunk of Hashable.hash(into:)();
  v11(v7, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v15[7]);

  String.hash(into:)();

  return Hasher.finalize()();
}

id RaceWorkoutConfiguration.__allocating_init(activityType:routeTitle:clusterUUID:raceFilter:lastWorkoutUUID:lastWorkoutDistance:lastWorkoutDuration:lastWorkoutDate:bestWorkoutUUID:bestWorkoutDistance:bestWorkoutDuration:bestWorkoutDate:routeSnapshotData:clusterSize:lastWorkoutStartingPoint:relevanceValue:uuid:occurrence:)(uint64_t a1, _BYTE *a2, objc_class *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, uint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  v99 = a8;
  v100 = a7;
  v101 = a6;
  v92 = a3;
  v89 = a2;
  v87 = a1;
  v88 = a20;
  v97 = a19;
  v102 = a18;
  v104 = a15;
  v96 = a14;
  v103 = a16;
  v86 = a17;
  v84 = type metadata accessor for Date();
  v27 = *(v84 - 8);
  v29 = MEMORY[0x28223BE20](v84, v28);
  v105 = &v82[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v82[-v32];
  v98 = &v82[-v32];
  v34 = type metadata accessor for UUID();
  v36 = MEMORY[0x28223BE20](v34, v35);
  v91 = &v82[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x28223BE20](v36, v38);
  v41 = &v82[-v40];
  v43 = MEMORY[0x28223BE20](v39, v42);
  v45 = &v82[-v44];
  v47 = MEMORY[0x28223BE20](v43, v46);
  v49 = &v82[-v48];
  MEMORY[0x28223BE20](v47, v50);
  v52 = &v82[-v51];
  v83 = *a5;
  v85 = v53;
  v54 = *(v53 + 16);
  v94 = a4;
  v54(&v82[-v51], a4, v34);
  v54(v49, v101, v34);
  v93 = v27;
  v55 = *(v27 + 16);
  v56 = v33;
  v57 = v84;
  v55(v56, v100, v84);
  v54(v45, v99, v34);
  v55(v105, v96, v57);
  v95 = v41;
  v54(v41, v97, v34);
  v58 = objc_allocWithZone(v90);
  v59 = &v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  v60 = v92;
  *v59 = v89;
  v59[1] = v60;
  v89 = v52;
  v54(&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v52, v34);
  swift_beginAccess();
  v107 = v83;
  Published.init(initialValue:)();
  swift_endAccess();
  v92 = v49;
  v61 = v49;
  v62 = v57;
  v54(&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v61, v34);
  *&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = a9;
  *&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = a10;
  v63 = v102;
  v55(&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v98, v57);
  v90 = v45;
  v54(&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v45, v34);
  *&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = a11;
  *&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = a12;
  v55(&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v105, v57);
  v64 = &v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v65 = v103;
  *v64 = v104;
  v64[1] = v65;
  *&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = v86;
  if (v63)
  {
    outlined copy of Data._Representation(v104, v103);
    v66 = v63;
    [v66 coordinate];
    *&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = v67;
    [v66 coordinate];
    v69 = v68;
    v102 = v66;

    *&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = v69;
  }

  else
  {
    *&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
    *&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
    outlined copy of Data._Representation(v104, v103);
  }

  *&v58[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = a13;
  v70 = v91;
  v54(v91, v95, v34);
  *&v58[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v71 = v93;
  v72 = *(v93 + 56);
  v72(&v58[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v57);
  v72(&v58[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v57);
  v73 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v74 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v74 - 8) + 56))(&v58[v73], 1, 1, v74);
  v75 = v85;
  (*(v85 + 56))(&v58[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v34);
  v76 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v58[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v54(&v58[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v70, v34);
  *&v58[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v87;
  v58[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v58[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v88;
  swift_beginAccess();
  *&v58[v76] = 0;
  v58[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v77 = type metadata accessor for WorkoutConfiguration(0);
  v106.receiver = v58;
  v106.super_class = v77;
  v78 = objc_msgSendSuper2(&v106, sel_init);

  outlined consume of Data._Representation(v104, v103);
  v79 = *(v75 + 8);
  v79(v97, v34);
  v80 = *(v71 + 8);
  v80(v96, v62);
  v79(v99, v34);
  v80(v100, v62);
  v79(v101, v34);
  v79(v94, v34);
  v79(v70, v34);
  v79(v95, v34);
  v80(v105, v62);
  v79(v90, v34);
  v80(v98, v62);
  v79(v92, v34);
  v79(v89, v34);
  return v78;
}

uint64_t RaceWorkoutConfiguration.encode(to:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v68 = *(v2 - 8);
  v69 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v65 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v67 = v56 - v7;
  v70 = type metadata accessor for UUID();
  v72 = *(v70 - 8);
  v9 = MEMORY[0x28223BE20](v70, v8);
  v66 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v56 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v71 = v56 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore04RaceD13ConfigurationC10CodingKeys33_B8B1499B283BD297B519DBC10C415212LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore04RaceD13ConfigurationC10CodingKeys33_B8B1499B283BD297B519DBC10C415212LLOGMR);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v56 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys();
  v22 = v17;
  v23 = v74;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v87 = 0;

  v24 = v73;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v24)
  {
    (*(v18 + 8))(v21, v22);
  }

  else
  {
    v63 = a1;
    v64 = v14;
    v73 = v18;

    v26 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
    swift_beginAccess();
    v27 = v23;
    v29 = v72 + 16;
    v28 = *(v72 + 16);
    v30 = v70;
    v28(v71, v27 + v26, v70);
    LOBYTE(v86[0]) = 1;
    v31 = _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v59 = v29;
    v60 = v31;
    v61 = v28;
    v32 = v72 + 8;
    v33 = *(v72 + 8);
    v33(v71, v30);
    swift_getKeyPath();
    swift_getKeyPath();
    v62 = v22;
    v34 = v74;
    static Published.subscript.getter(v86);

    v85 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v71 = v33;
    v72 = v32;

    v35 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
    swift_beginAccess();
    v36 = v64;
    v37 = v70;
    v61(v64, v34 + v35, v70);
    v85 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (v71)(v36, v37);
    swift_beginAccess();
    v84 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    swift_beginAccess();
    v83 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v58 = 0;
    v38 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
    swift_beginAccess();
    v64 = v21;
    v40 = v67;
    v39 = v68;
    v41 = v68 + 16;
    v42 = v69;
    v57 = *(v68 + 2);
    v57(v67, v34 + v38, v69);
    v82 = 6;
    v43 = _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    v44 = v64;
    v45 = v58;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v45)
    {
      (*(v39 + 1))(v40, v42);
      return (*(v73 + 8))(v44, v62);
    }

    else
    {
      v58 = v43;
      v56[1] = v41;
      v46 = *(v39 + 1);
      v46(v40, v42);
      v47 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
      v48 = v74;
      swift_beginAccess();
      v49 = v48 + v47;
      v50 = v66;
      v51 = v70;
      v61(v66, v49, v70);
      v81 = 7;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v68 = v46;
      (v71)(v50, v51);
      swift_beginAccess();
      v80 = 8;
      KeyedEncodingContainer.encode(_:forKey:)();
      swift_beginAccess();
      v79 = 9;
      KeyedEncodingContainer.encode(_:forKey:)();
      v79 = 11;
      KeyedEncodingContainer.encode(_:forKey:)();
      v79 = 12;
      KeyedEncodingContainer.encode(_:forKey:)();
      v52 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate;
      v53 = v74;
      swift_beginAccess();
      v57(v65, v53 + v52, v69);
      v78 = 10;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v68(v65, v69);
      v54 = (v74 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData);
      swift_beginAccess();
      v55 = v54[1];
      v76 = *v54;
      v77 = v55;
      v75 = 13;
      outlined copy of Data._Representation(v76, v55);
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      outlined consume of Data._Representation(v76, v77);
      swift_beginAccess();
      v75 = 14;
      KeyedEncodingContainer.encode(_:forKey:)();
      swift_beginAccess();
      v88 = 15;
      KeyedEncodingContainer.encode(_:forKey:)();
      WorkoutConfiguration.encode(to:)(v63);
      return (*(v73 + 8))(v64, v62);
    }
  }
}

void *RaceWorkoutConfiguration.init(from:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for Date();
  v64 = *(v2 - 8);
  v65 = v2;
  v4 = MEMORY[0x28223BE20](v2, v3);
  v62 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v63 = v57 - v7;
  v8 = type metadata accessor for UUID();
  v66 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = v57 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = v57 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore04RaceD13ConfigurationC10CodingKeys33_B8B1499B283BD297B519DBC10C415212LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore04RaceD13ConfigurationC10CodingKeys33_B8B1499B283BD297B519DBC10C415212LLOGMR);
  v67 = *(v20 - 8);
  v68 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = v57 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v71 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  lazy protocol witness table accessor for type RaceWorkoutConfiguration.CodingKeys and conformance RaceWorkoutConfiguration.CodingKeys();
  v69 = v23;
  v26 = v70;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v71);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v16;
    v61 = v12;
    v70 = v8;
    LOBYTE(v74[0]) = 0;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v73;
    v31 = (v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
    *v31 = v28;
    v31[1] = v32;
    LOBYTE(v74[0]) = 1;
    v33 = _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v34 = v70;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v59 = v33;
    v35 = v19;
    v36 = v30;
    v38 = v66 + 32;
    v37 = *(v66 + 32);
    v37(v36 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID, v35, v34);
    LOBYTE(v74[0]) = 2;
    v60 = 0;
    v39 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v40;
    v58 = v37;
    v57[1] = v38;
    v42._countAndFlagsBits = v39;
    v42._object = v41;
    v43 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RaceWorkoutConfiguration.init(from:), v42);

    v44 = v73;
    swift_beginAccess();
    v75 = v43 != 0;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v74[0]) = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v58(v44 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID, v27, v34);
    LOBYTE(v74[0]) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v44 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance) = v45;
    LOBYTE(v74[0]) = 5;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v44 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration) = v46;
    LOBYTE(v74[0]) = 6;
    v47 = _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v48 = v65;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v57[0] = v47;
    v49 = *(v64 + 32);
    v49(v44 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate, v63, v48);
    LOBYTE(v74[0]) = 7;
    v50 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v58(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID, v50, v34);
    LOBYTE(v74[0]) = 8;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance) = v51;
    LOBYTE(v74[0]) = 9;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration) = v52;
    LOBYTE(v74[0]) = 11;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude) = v53;
    LOBYTE(v74[0]) = 12;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude) = v54;
    LOBYTE(v74[0]) = 10;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v49(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate, v62, v65);
    v75 = 13;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData) = v74[0];
    LOBYTE(v74[0]) = 14;
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v74[0]) = 15;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v73 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue) = v55;
    v56 = v71;
    _ss7Decoder_pWOcTm_1(v71, v74);
    v24 = WorkoutConfiguration.init(from:)(v74);
    (*(v67 + 8))(v69, v68);
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  return v24;
}

void RaceWorkoutConfiguration.updateWorkoutInfo(from:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  swift_beginAccess();
  v35 = *(v4 + 16);
  v35(v7, a1 + v8, v3);
  v9 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  swift_beginAccess();
  v10 = *(v4 + 40);
  v10(v1 + v9, v7, v3);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  v12 = *(a1 + v11);
  v13 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  *(v1 + v13) = v12;
  v14 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  v15 = *(a1 + v14);
  v16 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  *(v1 + v16) = v15;
  v17 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  swift_beginAccess();
  v35(v7, a1 + v17, v3);
  v18 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  swift_beginAccess();
  v10(v1 + v18, v7, v3);
  swift_endAccess();
  v19 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  v20 = *(a1 + v19);
  v21 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  *(v1 + v21) = v20;
  v22 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  v23 = *(a1 + v22);
  v24 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  *(v1 + v24) = v23;
  v25 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
  v36.latitude = *(a1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
  v26 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
  v36.longitude = *(a1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
  if (CLLocationCoordinate2DIsValid(v36) && (v27 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(a1 + v25) longitude:*(a1 + v26)]) != 0)
  {
    v28 = v27;
    [v27 coordinate];
    *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude) = v29;
    [v28 coordinate];
    v31 = v30;
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude) = 0x412E848000000000;
    v31 = 0x412E848000000000;
  }

  *(v1 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude) = v31;
  v32 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  swift_beginAccess();
  v33 = *(a1 + v32);
  v34 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  swift_beginAccess();
  *(v1 + v34) = v33;
}

uint64_t RaceWorkoutConfiguration.isEquivalent(to:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v111 = type metadata accessor for Date();
  v113 = *(v111 - 8);
  v5 = MEMORY[0x28223BE20](v111, v4);
  v110 = v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v112 = v105 - v8;
  v9 = type metadata accessor for UUID();
  v116 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v115 = v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v105 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v16 = swift_allocObject();
  v114 = xmmword_20B423A90;
  *(v16 + 16) = xmmword_20B423A90;
  v120 = 0;
  v121 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  MEMORY[0x20F2E6D80](0xD000000000000031, 0x800000020B45AD40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  _print_unlocked<A, B>(_:_:)();
  v17 = v120;
  v18 = v121;
  v19 = MEMORY[0x277D837D0];
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  print(_:separator:terminator:)();

  _ss7Decoder_pWOcTm_1(a1, &v120);
  if (!swift_dynamicCast())
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v114;
    *(v40 + 56) = v19;
    *(v40 + 32) = 0xD000000000000031;
    *(v40 + 40) = 0x800000020B45AD80;
    print(_:separator:terminator:)();

LABEL_40:
    v103 = 0;
    return v103 & 1;
  }

  v20 = v119;
  v21 = &v119[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  swift_beginAccess();
  v22 = *v21;
  v23 = *(v21 + 1);
  v24 = (v2 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
  swift_beginAccess();
  if ((v22 != *v24 || v23 != v24[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_36:

    goto LABEL_40;
  }

  v25 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
  swift_beginAccess();
  v26 = v116;
  v27 = v116 + 16;
  v28 = *(v116 + 16);
  v28(v15, &v20[v25], v9);
  v29 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
  swift_beginAccess();
  v30 = v115;
  v109 = v27;
  v28(v115, (v2 + v29), v9);
  LOBYTE(v29) = static UUID.== infix(_:_:)();
  v31 = v20;
  v33 = *(v26 + 8);
  v32 = v26 + 8;
  v33(v30, v9);
  *&v114 = v33;
  v33(v15, v9);
  if ((v29 & 1) == 0)
  {
    goto LABEL_37;
  }

  v108 = v28;
  v116 = v32;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v118);

  v34 = LOBYTE(v118[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  v107 = v2;
  static Published.subscript.getter(v117);

  if (v34)
  {
    v35 = 1953718604;
  }

  else
  {
    v35 = 0x6C616E6F73726550;
  }

  if (v34)
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xED00007473654220;
  }

  if (LOBYTE(v117[0]))
  {
    v37 = 1953718604;
  }

  else
  {
    v37 = 0x6C616E6F73726550;
  }

  if (LOBYTE(v117[0]))
  {
    v38 = 0xE400000000000000;
  }

  else
  {
    v38 = 0xED00007473654220;
  }

  if (v35 != v37 || v36 != v38)
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v39 = v108;
    if (v41)
    {
      goto LABEL_23;
    }

LABEL_37:

    goto LABEL_40;
  }

  v39 = v108;
LABEL_23:
  v42 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  swift_beginAccess();
  v39(v15, &v20[v42], v9);
  v43 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
  v44 = v107;
  swift_beginAccess();
  v45 = v115;
  v39(v115, (v44 + v43), v9);
  LOBYTE(v43) = static UUID.== infix(_:_:)();
  v46 = v114;
  (v114)(v45, v9);
  v46(v15, v9);
  if ((v43 & 1) == 0)
  {
    goto LABEL_37;
  }

  v47 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  v48 = *&v31[v47];
  v49 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  swift_beginAccess();
  v50 = v31;
  if (v48 != *(v44 + v49))
  {
    goto LABEL_37;
  }

  v51 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  v52 = *&v31[v51];
  v53 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
  swift_beginAccess();
  if (v52 != *(v44 + v53))
  {
    goto LABEL_37;
  }

  v54 = v44;
  v55 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
  swift_beginAccess();
  v56 = v113;
  v58 = v113 + 16;
  v57 = *(v113 + 16);
  v106 = v50;
  v59 = &v50[v55];
  v60 = v111;
  v57(v112, v59, v111);
  v61 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
  swift_beginAccess();
  v62 = v110;
  v105[0] = v57;
  v105[1] = v58;
  v57(v110, (v54 + v61), v60);
  v63 = v112;
  LOBYTE(v61) = static Date.== infix(_:_:)();
  v64 = *(v56 + 8);
  v64(v62, v60);
  v113 = v56 + 8;
  v64(v63, v60);
  if ((v61 & 1) == 0)
  {

    goto LABEL_40;
  }

  v65 = v64;
  v66 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  v67 = v106;
  swift_beginAccess();
  v68 = &v67[v66];
  v69 = v108;
  v108(v15, v68, v9);
  v70 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
  v71 = v107;
  swift_beginAccess();
  v72 = v115;
  v69(v115, v71 + v70, v9);
  LOBYTE(v70) = static UUID.== infix(_:_:)();
  v73 = v72;
  v74 = v67;
  v75 = v114;
  (v114)(v73, v9);
  v75(v15, v9);
  if ((v70 & 1) == 0)
  {

    goto LABEL_40;
  }

  v76 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  v77 = *&v74[v76];
  v78 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  swift_beginAccess();
  v20 = v74;
  if (v77 != *(v71 + v78))
  {
    goto LABEL_36;
  }

  v79 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  v80 = *&v74[v79];
  v81 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
  swift_beginAccess();
  if (v80 != *(v71 + v81))
  {
    goto LABEL_36;
  }

  v82 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate;
  swift_beginAccess();
  v83 = &v74[v82];
  v85 = v111;
  v84 = v112;
  v86 = v105[0];
  (v105[0])(v112, v83, v111);
  v87 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate;
  swift_beginAccess();
  v88 = v71 + v87;
  v89 = v110;
  v86(v110, v88, v85);
  LOBYTE(v82) = static Date.== infix(_:_:)();
  v65(v89, v85);
  v65(v84, v85);
  if ((v82 & 1) == 0)
  {
    goto LABEL_36;
  }

  v90 = &v20[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  swift_beginAccess();
  v92 = *v90;
  v91 = v90[1];
  v93 = (v71 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData);
  swift_beginAccess();
  v95 = *v93;
  v94 = v93[1];
  outlined copy of Data._Representation(v92, v91);
  outlined copy of Data._Representation(v95, v94);
  v96 = specialized static Data.== infix(_:_:)(v92, v91, v95, v94);
  outlined consume of Data._Representation(v95, v94);
  outlined consume of Data._Representation(v92, v91);
  if (!v96)
  {
    goto LABEL_36;
  }

  v97 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
  swift_beginAccess();
  v98 = *&v20[v97];
  v99 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
  swift_beginAccess();
  if (v98 != *(v71 + v99))
  {
    goto LABEL_36;
  }

  v100 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  swift_beginAccess();
  v101 = *&v20[v100];
  v102 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
  swift_beginAccess();
  if (v101 != *(v71 + v102))
  {
    goto LABEL_36;
  }

  v103 = specialized WorkoutConfiguration.isEquivalent(to:)(v20, v71);

  return v103 & 1;
}

uint64_t RaceWorkoutConfiguration.__ivar_destroyer()
{

  v1 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID, v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID, v2);
  v6(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate, v5);
  outlined consume of Data._Representation(*(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData), *(v0 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData + 8));
  v7 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration__raceFilter;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMd, &_s7Combine9PublishedVy11WorkoutCore10RaceFilterOGMR);
  v9 = *(*(v8 - 8) + 8);

  return v9(v0 + v7, v8);
}

id RaceWorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static RaceWorkoutConfiguration.canonicalCycling()()
{
  v112 = type metadata accessor for UUID();
  v118 = *(v112 - 8);
  v1 = MEMORY[0x28223BE20](v112, v0);
  v117 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v123 = &v107 - v5;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v129 = &v107 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v132 = &v107 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v125 = &v107 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v124 = &v107 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v131 = &v107 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v130 = &v107 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v126 = &v107 - v25;
  v110 = type metadata accessor for Date();
  v119 = *(v110 - 8);
  v27 = MEMORY[0x28223BE20](v110, v26);
  v127 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v128 = &v107 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v120 = &v107 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v107 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v121 = &v107 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v44 = &v107 - v43;
  v116 = type metadata accessor for DateComponents();
  v111 = *(v116 - 1);
  MEMORY[0x28223BE20](v116, v45);
  v47 = &v107 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Calendar();
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v50);
  v52 = &v107 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v55 = MEMORY[0x28223BE20](v53 - 8, v54);
  v57 = &v107 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v58);
  v60 = &v107 - v59;
  v114 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:13 isIndoor:0];
  v61 = [objc_opt_self() mainBundle];
  v62 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B45ADC0);
  v122 = [objc_opt_self() imageNamed:v62 inBundle:v61 withConfiguration:0];

  static Calendar.current.getter();
  (*(v49 + 56))(v44, 1, 1, v48);
  v63 = type metadata accessor for TimeZone();
  (*(*(v63 - 8) + 56))(v121, 1, 1, v63);
  v64 = v110;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  static Date.now.getter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v65 = v119;
  v67 = v119 + 8;
  v66 = *(v119 + 8);
  v133 = v37;
  v121 = v66;
  (v66)(v37, v64);
  v68 = v47;
  v69 = v65;
  (v111)[1](v68, v116);
  (*(v49 + 8))(v52, v48);
  UUID.init()();
  UUID.init()();
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1600.0, 1610.0);
  v71 = v70;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(170.0, 180.0);
  v73 = v72;
  v116 = v60;
  _s10Foundation4DateVSgWOcTm_0(v60, v57, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v74 = *(v65 + 48);
  if (v74(v57, 1, v64) == 1)
  {
    v75 = v120;
    static Date.now.getter();
    if (v74(v57, 1, v64) != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v57, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v75 = v120;
    (*(v69 + 32))(v120, v57, v64);
  }

  UUID.init()();
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1600.0, 1610.0);
  v77 = v76;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(170.0, 180.0);
  v79 = v78;
  v80 = v133;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  (v121)(v80, v64);
  v113 = v67;
  if (v122 && (v81 = UIImagePNGRepresentation(v122)) != 0)
  {
    v82 = v69;
    v83 = v75;
    v84 = v81;
    v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v85;
  }

  else
  {
    v82 = v69;
    v83 = v75;
    v109 = 0;
    v108 = 0xC000000000000000;
  }

  v86 = v124;
  UUID.init()();
  v111 = specialized Occurrence.__allocating_init(count:)(0);
  v87 = v118;
  v88 = *(v118 + 16);
  v89 = v125;
  v90 = v112;
  v88(v125, v126, v112);
  v88(v132, v130, v90);
  v91 = *(v82 + 16);
  v91(v133, v83, v64);
  v88(v129, v131, v90);
  v91(v127, v128, v64);
  v88(v123, v86, v90);
  v92 = objc_allocWithZone(v115);
  v93 = &v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  strcpy(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle], "San Francisco");
  *(v93 + 7) = -4864;
  v88(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v89, v90);
  swift_beginAccess();
  v135 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v88(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v132, v90);
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v71;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v73;
  v91(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v133, v64);
  v88(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v129, v90);
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v77;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v79;
  v91(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v127, v64);
  v94 = &v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v95 = v108;
  *v94 = v109;
  v94[1] = v95;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = 4;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = 0x3FE8F5C28F5C28F6;
  v96 = v117;
  v97 = v123;
  v88(v117, v123, v90);
  *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v98 = *(v119 + 56);
  v98(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v64);
  v98(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v64);
  v99 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v100 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v100 - 8) + 56))(&v92[v99], 1, 1, v100);
  (*(v87 + 56))(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v90);
  v101 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v88(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v96, v90);
  *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v114;
  v92[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v111;
  swift_beginAccess();
  *&v92[v101] = 0;
  v92[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v102 = type metadata accessor for WorkoutConfiguration(0);
  v134.receiver = v92;
  v134.super_class = v102;
  v103 = objc_msgSendSuper2(&v134, sel_init);

  v104 = *(v87 + 8);
  v104(v96, v90);
  v104(v97, v90);
  v105 = v121;
  (v121)(v127, v64);
  v104(v129, v90);
  (v105)(v133, v64);
  v104(v132, v90);
  v104(v125, v90);
  v104(v124, v90);
  (v105)(v128, v64);
  v104(v131, v90);
  (v105)(v120, v64);
  v104(v130, v90);
  v104(v126, v90);
  _s10Foundation4DateVSgWOhTm_1(v116, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v103;
}

id static RaceWorkoutConfiguration.canonicalWheelchair()()
{
  v112 = type metadata accessor for UUID();
  v119 = *(v112 - 8);
  v1 = MEMORY[0x28223BE20](v112, v0);
  v118 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v122 = &v107 - v5;
  v7 = MEMORY[0x28223BE20](v4, v6);
  v130 = &v107 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v132 = &v107 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v124 = &v107 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v123 = &v107 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v131 = &v107 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v127 = &v107 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v126 = &v107 - v25;
  v111 = type metadata accessor for Date();
  v125 = *(v111 - 8);
  v27 = MEMORY[0x28223BE20](v111, v26);
  v128 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v129 = &v107 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v120 = &v107 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v107 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  MEMORY[0x28223BE20](v38 - 8, v39);
  v41 = &v107 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  MEMORY[0x28223BE20](v42 - 8, v43);
  v45 = &v107 - v44;
  v117 = type metadata accessor for DateComponents();
  v113 = *(v117 - 1);
  MEMORY[0x28223BE20](v117, v46);
  v48 = &v107 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Calendar();
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v107 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v56 = MEMORY[0x28223BE20](v54 - 8, v55);
  v58 = &v107 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56, v59);
  v61 = &v107 - v60;
  v114 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:71 isIndoor:0];
  static Calendar.current.getter();
  (*(v50 + 56))(v45, 1, 1, v49);
  v62 = type metadata accessor for TimeZone();
  (*(*(v62 - 8) + 56))(v41, 1, 1, v62);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  static Date.now.getter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v64 = v125 + 1;
  v63 = v125[1];
  v133 = v37;
  v65 = v37;
  v66 = v125;
  v67 = v111;
  v121 = v63;
  v63(v65, v111);
  (v113[1].super.isa)(v48, v117);
  (*(v50 + 8))(v53, v49);
  v68 = [objc_opt_self() mainBundle];
  v69 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B45ADC0);
  v70 = [objc_opt_self() imageNamed:v69 inBundle:v68 withConfiguration:0];

  UUID.init()();
  UUID.init()();
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1600.0, 1610.0);
  v72 = v71;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(240.0, 260.0);
  v74 = v73;
  v117 = v61;
  _s10Foundation4DateVSgWOcTm_0(v61, v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v75 = v66[6];
  if (v75(v58, 1, v67) == 1)
  {
    v76 = v120;
    static Date.now.getter();
    if (v75(v58, 1, v67) != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v76 = v120;
    (v66[4])(v120, v58, v67);
  }

  UUID.init()();
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(1600.0, 1610.0);
  v78 = v77;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(240.0, 260.0);
  v80 = v79;
  v81 = v133;
  static Date.now.getter();
  Date.addingTimeInterval(_:)();
  v121(v81, v67);
  v115 = v64;
  v113 = v70;
  if (v70 && (v82 = UIImagePNGRepresentation(v70)) != 0)
  {
    v83 = v67;
    v84 = v82;
    v109 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v85;
  }

  else
  {
    v83 = v67;
    v109 = 0;
    v108 = 0xC000000000000000;
  }

  v86 = v123;
  UUID.init()();
  v110 = specialized Occurrence.__allocating_init(count:)(0);
  v87 = v119;
  v88 = *(v119 + 16);
  v89 = v124;
  v90 = v112;
  v88(v124, v126, v112);
  v88(v132, v127, v90);
  v91 = v125[2];
  v91(v133, v76, v83);
  v88(v130, v131, v90);
  v91(v128, v129, v83);
  v88(v122, v86, v90);
  v92 = objc_allocWithZone(v116);
  v93 = &v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  strcpy(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle], "Laguna Beach");
  v93[13] = 0;
  *(v93 + 7) = -5120;
  v88(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v89, v90);
  swift_beginAccess();
  v135 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v88(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v132, v90);
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v72;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v74;
  v91(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v133, v83);
  v88(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v130, v90);
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v78;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v80;
  v91(&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v128, v83);
  v94 = &v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v95 = v108;
  *v94 = v109;
  v94[1] = v95;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = 4;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
  *&v92[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = 0x3FE999999999999ALL;
  v96 = v118;
  v97 = v122;
  v88(v118, v122, v90);
  *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v98 = v125[7];
  v98(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v83);
  v98(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v83);
  v99 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v100 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v100 - 8) + 56))(&v92[v99], 1, 1, v100);
  (*(v87 + 56))(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v90);
  v101 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v88(&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v96, v90);
  *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v114;
  v92[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v92[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v110;
  swift_beginAccess();
  *&v92[v101] = 0;
  v92[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v102 = type metadata accessor for WorkoutConfiguration(0);
  v134.receiver = v92;
  v134.super_class = v102;
  v103 = objc_msgSendSuper2(&v134, sel_init);

  v104 = *(v87 + 8);
  v104(v96, v90);
  v104(v97, v90);
  v105 = v121;
  v121(v128, v83);
  v104(v130, v90);
  v105(v133, v83);
  v104(v132, v90);
  v104(v124, v90);
  v104(v123, v90);
  v105(v129, v83);
  v104(v131, v90);
  v105(v120, v83);
  v104(v127, v90);
  v104(v126, v90);
  _s10Foundation4DateVSgWOhTm_1(v117, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v103;
}

id protocol witness for static Canonical.canonical() in conformance RaceWorkoutConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static RaceWorkoutConfiguration.canonical()();
  *a1 = result;
  return result;
}

id RaceWorkoutConfiguration.copyWith(activityType:routeTitle:clusterUUID:raceFilter:lastWorkoutUUID:lastWorkoutDistance:lastWorkoutDuration:lastWorkoutDate:bestWorkoutUUID:bestWorkoutDistance:bestWorkoutDuration:bestWorkoutDate:routeSnapshotData:clusterSize:lastWorkoutStartingPoint:relevanceValue:uuid:occurrence:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, char a14, char *a15, char a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, char a21, void *a22, char *a23, char a24, uint64_t a25, void *a26)
{
  LODWORD(v173) = a8;
  v171 = a6;
  v186 = a4;
  v184 = a3;
  ObjectType = swift_getObjectType();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v33 = MEMORY[0x28223BE20](v31 - 8, v32);
  v181 = &v168 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v182 = &v168 - v36;
  v37 = type metadata accessor for Date();
  v193 = *(v37 - 8);
  v194 = v37;
  v39 = MEMORY[0x28223BE20](v37, v38);
  v191 = &v168 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v192 = &v168 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v45 = MEMORY[0x28223BE20](v43 - 8, v44);
  v176 = &v168 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v50 = &v168 - v49;
  v52 = MEMORY[0x28223BE20](v48, v51);
  v54 = &v168 - v53;
  MEMORY[0x28223BE20](v52, v55);
  v57 = &v168 - v56;
  v58 = type metadata accessor for UUID();
  v59 = *(v58 - 8);
  v195 = v58;
  v196 = v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v180 = &v168 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v61, v63);
  v187 = &v168 - v65;
  v67 = MEMORY[0x28223BE20](v64, v66);
  v188 = &v168 - v68;
  v70 = MEMORY[0x28223BE20](v67, v69);
  v190 = &v168 - v71;
  MEMORY[0x28223BE20](v70, v72);
  v189 = &v168 - v73;
  v74 = *a5;
  v175 = a1;
  if (a1)
  {
    v179 = a1;
  }

  else
  {
    v75 = v74;
    v76 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v77 = *(v26 + v76);
    v74 = v75;
    v179 = v77;
  }

  v78 = v196;
  v183 = a7;
  v172 = v50;
  if (v184)
  {
    v177 = a2;
    v174 = v184;
  }

  else
  {
    v79 = (v26 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle);
    swift_beginAccess();
    v80 = v79[1];
    v177 = *v79;
    v78 = v196;
    v174 = v80;
  }

  _s10Foundation4DateVSgWOcTm_0(v186, v57, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v81 = *(v78 + 48);
  v82 = v195;
  v83 = v81(v57, 1, v195);
  v185 = v81;
  v186 = v78 + 48;
  if (v83 == 1)
  {
    v84 = v74;
    v85 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID;
    swift_beginAccess();
    v86 = v26 + v85;
    v74 = v84;
    (*(v78 + 16))(v189, v86, v82);
    v87 = v81(v57, 1, v82);

    v88 = v175;
    v78 = v196;
    if (v87 != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v57, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v78 + 32))(v189, v57, v82);

    v89 = v175;
  }

  v90 = v193;
  if (v74 == 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v199);

    v74 = v199;
  }

  else
  {
    LOBYTE(v199) = v74 & 1;
  }

  v91 = v195;
  _s10Foundation4DateVSgWOcTm_0(v171, v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v92 = v185;
  v93 = v185(v54, 1, v91);
  LODWORD(v175) = v74;
  if (v93 == 1)
  {
    v94 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID;
    swift_beginAccess();
    (*(v78 + 16))(v190, v26 + v94, v91);
    v95 = v92;
    if (v92(v54, 1, v91) != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v78 + 32))(qword_27C75F000, v190, v54, v91);
    v95 = v92;
  }

  if (v173)
  {
    v97 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
    swift_beginAccess();
    v183 = *(v26 + v97);
  }

  if (a10)
  {
    v98 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration;
    swift_beginAccess();
    a9 = *(v26 + v98);
  }

  v173 = a9;
  v99 = v182;
  _s10Foundation4DateVSgWOcTm_0(a11, v182, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v100 = v90[6];
  v101 = v194;
  if (v100(v99, 1, v194) == 1)
  {
    v102 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate;
    swift_beginAccess();
    v103 = v26 + v102;
    v104 = v182;
    (v90[2])(v192, v103, v101);
    v105 = v100(v104, 1, v101);
    v106 = v195;
    if (v105 != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v104, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (v90[4])(v192, v99, v101);
    v106 = v195;
  }

  v182 = a13;
  v107 = v172;
  _s10Foundation4DateVSgWOcTm_0(a12, v172, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v95(v107, 1, v106) == 1)
  {
    v108 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID;
    swift_beginAccess();
    (*(v196 + 16))(v188, v26 + v108, v106);
    v109 = v95(v107, 1, v106);
    v110 = v194;
    if (v109 != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v107, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v196 + 32))(v188, v107, v106);
    v110 = v194;
  }

  if (a14)
  {
    v112 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
    swift_beginAccess();
    v182 = *(v26 + v112);
  }

  if (a16)
  {
    v113 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration;
    swift_beginAccess();
    a15 = *(v26 + v113);
  }

  v114 = v181;
  _s10Foundation4DateVSgWOcTm_0(a17, v181, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v100(v114, 1, v110) == 1)
  {
    v115 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate;
    swift_beginAccess();
    (v193[2])(v191, v26 + v115, v110);
    if (v100(v114, 1, v110) != 1)
    {
      _s10Foundation4DateVSgWOhTm_1(v114, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    (v193[4])(v191, v114, v110);
  }

  v172 = a15;
  v117 = a18;
  v118 = a19;
  if (a19 >> 60 == 15)
  {
    v119 = (v26 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData);
    swift_beginAccess();
    v117 = *v119;
    v118 = v119[1];
    outlined copy of Data._Representation(v117, v118);
  }

  if (a21)
  {
    v120 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize;
    swift_beginAccess();
    a20 = *(v26 + v120);
  }

  v171 = a20;
  v184 = v118;
  v181 = a23;
  if (a22)
  {
    outlined copy of Data?(a18, a19);
    v170 = a22;
  }

  else
  {
    v121 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude;
    v122 = *(v26 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude);
    v123 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude;
    v124 = *(v26 + OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude);
    outlined copy of Data?(a18, a19);
    v200.latitude = v122;
    v200.longitude = v124;
    if (CLLocationCoordinate2DIsValid(v200))
    {
      v170 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*(v26 + v121) longitude:*(v26 + v123)];
    }

    else
    {
      v170 = 0;
    }
  }

  if (a24)
  {
    v125 = OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue;
    swift_beginAccess();
    v181 = *(v26 + v125);
  }

  v126 = v176;
  _s10Foundation4DateVSgWOcTm_0(a25, v176, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v127 = v195;
  v128 = v185;
  if (v185(v126, 1, v195) == 1)
  {
    v129 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    (*(v196 + 16))(v187, v26 + v129, v127);
    v130 = v128(v126, 1, v127);
    v131 = a22;
    v132 = v130 == 1;
    v133 = v193;
    if (!v132)
    {
      _s10Foundation4DateVSgWOhTm_1(v126, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v196 + 32))(v187, v126, v127);
    v134 = a22;
    v133 = v193;
  }

  v135 = v177;
  if (a26)
  {
    v193 = a26;
  }

  else
  {
    v136 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v193 = *(v26 + v136);
  }

  v137 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v138 = *(v26 + v137);
  v139 = objc_allocWithZone(ObjectType);
  v140 = &v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeTitle];
  v141 = v174;
  *v140 = v135;
  v140[1] = v141;
  v142 = *(v196 + 16);
  v142(&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterUUID], v189, v127);
  v143 = v127;
  swift_beginAccess();
  v198 = v175 & 1;
  v186 = v138;

  v144 = a26;
  Published.init(initialValue:)();
  swift_endAccess();
  v142(&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutUUID], v190, v127);
  *&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance] = v183;
  *&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDuration] = v173;
  v145 = v133[2];
  v146 = v194;
  v145(&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDate], v192, v194);
  v142(&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutUUID], v188, v143);
  *&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance] = v182;
  *&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDuration] = v172;
  v145(&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDate], v191, v146);
  v147 = &v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_routeSnapshotData];
  v148 = v184;
  *v147 = v117;
  v147[1] = v148;
  v149 = v170;
  *&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_clusterSize] = v171;
  v169 = v117;
  if (v149)
  {
    outlined copy of Data._Representation(v117, v148);
    v150 = v149;
    [v150 coordinate];
    *&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = v151;
    [v150 coordinate];
    v153 = v152;
    v185 = v150;

    *&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = v153;
  }

  else
  {
    *&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLatitude] = 0x412E848000000000;
    *&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutStartingPointLongitude] = 0x412E848000000000;
    outlined copy of Data._Representation(v117, v148);
    v185 = 0;
  }

  v154 = v180;
  *&v139[OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_relevanceValue] = v181;
  v155 = v195;
  v142(v154, v187, v195);
  *&v139[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v156 = v133[7];
  v157 = v133;
  v158 = v194;
  v156(&v139[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v194);
  v156(&v139[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v158);
  v159 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v160 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v160 - 8) + 56))(&v139[v159], 1, 1, v160);
  v161 = v196;
  (*(v196 + 56))(&v139[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v155);
  v162 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v139[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v142(&v139[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v154, v155);
  *&v139[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v179;
  v139[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 2;
  *&v139[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v193;
  swift_beginAccess();
  *&v139[v162] = v186;
  v139[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v163 = type metadata accessor for WorkoutConfiguration(0);
  v197.receiver = v139;
  v197.super_class = v163;
  v164 = objc_msgSendSuper2(&v197, sel_init);

  outlined consume of Data._Representation(v169, v184);
  v165 = *(v161 + 8);
  v165(v154, v155);
  v165(v187, v155);
  v166 = v157[1];
  v166(v191, v158);
  v165(v188, v155);
  v166(v192, v158);
  v165(v190, v155);
  v165(v189, v155);
  return v164;
}