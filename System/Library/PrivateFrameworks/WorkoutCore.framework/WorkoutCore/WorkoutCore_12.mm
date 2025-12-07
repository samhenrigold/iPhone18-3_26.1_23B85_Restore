void WOPersistence.set(occurrence:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v77 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v78 = v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v71 = v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v70 = v68 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v76 = v68 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = v68 - v18;
  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v20;
  v21 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v23 = [v1 keyedNumbers];
  _sSo17NSKeyedUnarchiverCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v84[0] = v24;
  v25 = v78;
  specialized Dictionary.subscript.setter(v22, v79, v75);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 setKeyedNumbers_];

  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;
  v29 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v30 = v77;
  v74 = *(v77 + 16);
  v75 = a1;
  v68[1] = v77 + 16;
  v74(v19, a1 + v29, v4);
  v31 = v30;
  v73 = *(v30 + 56);
  v73(v19, 0, 1, v4);
  v79 = v2;
  v32 = [v2 keyedDates];
  v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = v31;
  v35 = v76;
  v83[0] = v33;
  v72 = *(v34 + 48);
  if (v72(v19, 1, v4) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(v69, v28, v35);

    _s10Foundation4DateVSgWOhTm_0(v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    (*(v34 + 32))(v25, v19, v4);
    v36 = v83[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82[0] = v36;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, v69, v28, isUniquelyReferenced_nonNull_native);

    v83[0] = v82[0];
  }

  v38 = Dictionary._bridgeToObjectiveC()().super.isa;

  v39 = v79;
  [v79 setKeyedDates_];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  v43 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  v44 = v75;
  swift_beginAccess();
  v45 = v44 + v43;
  v46 = v70;
  v74(v70, v45, v4);
  v73(v46, 0, 1, v4);
  v47 = [v39 keyedDates];
  v48 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v82[0] = v48;
  if (v72(v46, 1, v4) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v46, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v49 = v76;
    specialized Dictionary._Variant.removeValue(forKey:)(v40, v42, v76);

    _s10Foundation4DateVSgWOhTm_0(v49, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v50 = v78;
    (*(v77 + 32))(v78, v46, v4);
    v51 = v82[0];
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v81 = v51;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v50, v40, v42, v52);

    v82[0] = v81;
  }

  v53 = v71;
  v54 = Dictionary._bridgeToObjectiveC()().super.isa;

  v55 = v79;
  [v79 setKeyedDates_];

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;
  v59 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  v60 = v75;
  swift_beginAccess();
  v74(v53, v60 + v59, v4);
  v73(v53, 0, 1, v4);
  v61 = [v55 keyedDates];
  v62 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = v62;
  if (v72(v53, 1, v4) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v63 = v76;
    specialized Dictionary._Variant.removeValue(forKey:)(v56, v58, v76);

    _s10Foundation4DateVSgWOhTm_0(v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v64 = v78;
    (*(v77 + 32))(v78, v53, v4);
    v65 = v81;
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v65;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, v56, v58, v66);

    v81 = v80;
  }

  v67 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v79 setKeyedDates_];
}

uint64_t WorkoutConfiguration.hasPoolSwim.getter()
{
  v1 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  if ([*&v0[v1] identifier] == 46)
  {
    v2 = [*&v0[v1] hasLocationTypePool];
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for MultiSportWorkoutConfiguration(0);
  v3 = swift_dynamicCastClass();
  LOBYTE(i) = (v3 != 0) | v2;
  if (v3 && (v2 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v0;
    static Published.subscript.getter(v16);

    v6 = v16[0];
    if (v16[0] >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v16[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v15 = v5;
      v7 = 0;
      v5 = (v6 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x20F2E7A20](v7, v6);
        }

        else
        {
          if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_24;
          }

          v8 = *(v6 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v11 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        if ([*&v9[v11] identifier] == 46)
        {
          v12 = *&v9[v11];
          v13 = [v12 hasLocationTypePool];

          if (v13)
          {
            LOBYTE(i) = 1;
LABEL_20:
            v5 = v15;
            goto LABEL_21;
          }
        }

        else
        {
        }

        ++v7;
        if (v10 == i)
        {
          LOBYTE(i) = 0;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_21:
  }

  return i & 1;
}

id WorkoutConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutConfiguration(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance WorkoutConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 456))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void protocol witness for Equivalent.equivalentHash(into:) in conformance WorkoutConfiguration(uint64_t a1)
{
  v2 = *v1;
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  MEMORY[0x20F2E7FF0](*(v2 + v3) + 1);
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v5 = *(v2 + v4);
  NSObject.hash(into:)();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance WorkoutConfiguration@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutConfiguration(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

id WOPersistence.occurrence.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v92 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v89 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v88 = &v81 - v8;
  v10 = MEMORY[0x28223BE20](v7, v9);
  v87 = &v81 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v81 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v90 = &v81 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v81 - v21;
  v24 = MEMORY[0x28223BE20](v20, v23);
  v91 = &v81 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v81 - v28;
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v81 - v31;
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;
  v36 = [v0 keyedNumbers];
  _sSo17NSKeyedUnarchiverCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v37 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v37 + 16))
  {
    goto LABEL_12;
  }

  v38 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v35);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
LABEL_13:

    return 0;
  }

  v41 = *(*(v37 + 56) + 8 * v38);

  v86 = [v41 integerValue];

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;
  v45 = [v1 keyedDates];
  v46 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v46 + 16))
  {
LABEL_12:

    goto LABEL_13;
  }

  v47 = specialized __RawDictionaryStorage.find<A>(_:)(v42, v44);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
    goto LABEL_13;
  }

  v50 = *(v46 + 56);
  v51 = v92;
  v82 = *(v92 + 72);
  v84 = *(v92 + 16);
  v85 = v92 + 16;
  v84(v29, v50 + v82 * v47, v2);

  v83 = *(v51 + 32);
  v83(v32, v29, v2);
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  v55 = [v1 keyedDates];
  v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v56 + 16))
  {

    goto LABEL_17;
  }

  v57 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v54);
  v59 = v58;

  if ((v59 & 1) == 0)
  {
LABEL_17:

    (*(v92 + 8))(v32, v2);
    return 0;
  }

  v84(v22, *(v56 + 56) + v57 * v82, v2);

  v60 = v91;
  v83(v91, v22, v2);
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v62;
  v64 = [v1 keyedDates];
  v65 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v65 + 16))
  {

    goto LABEL_19;
  }

  v66 = specialized __RawDictionaryStorage.find<A>(_:)(v61, v63);
  v68 = v67;

  if ((v68 & 1) == 0)
  {
LABEL_19:

    v80 = *(v92 + 8);
    v80(v60, v2);
    v80(v32, v2);
    return 0;
  }

  v84(v15, *(v65 + 56) + v66 * v82, v2);

  v69 = v90;
  result = (v83)(v90, v15, v2);
  v71 = v86;
  if (v86 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v86 <= 0x7FFFFFFF)
  {
    v72 = v87;
    v73 = v84;
    v84(v87, v32, v2);
    v74 = v88;
    v73(v88, v91, v2);
    v75 = v89;
    v73(v89, v69, v2);
    v76 = type metadata accessor for Occurrence(0);
    v77 = objc_allocWithZone(v76);
    *&v77[OBJC_IVAR____TtC11WorkoutCore10Occurrence_count] = v71;
    v73(&v77[OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate], v72, v2);
    v73(&v77[OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate], v74, v2);
    v73(&v77[OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate], v75, v2);
    v93.receiver = v77;
    v93.super_class = v76;
    v78 = objc_msgSendSuper2(&v93, sel_init);
    v79 = *(v92 + 8);
    v79(v75, v2);
    v79(v74, v2);
    v79(v72, v2);
    v79(v90, v2);
    v79(v91, v2);
    v79(v32, v2);
    return v78;
  }

  __break(1u);
  return result;
}

uint64_t WorkoutConfiguration.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t protocol witness for Identifiable.id.getter in conformance WorkoutConfiguration@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void static WorkoutConfiguration.deserialize(from:)(void *a1@<X0>, void *a2@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a2 = v3;
    a1 = v2;
  }

  static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(a1, 0, static WorkoutConfigurationValidator.shared, a2);
}

void static WorkoutConfiguration.deserialize(from:requiringOccurrence:validator:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v104 = a4;
  v97 = type metadata accessor for ImportError();
  v94 = *(v97 - 8);
  v8 = MEMORY[0x28223BE20](v97, v7);
  v102 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v95 = &v89 - v12;
  MEMORY[0x28223BE20](v11, v13);
  v96 = &v89 - v14;
  v15 = type metadata accessor for DecodingError();
  v98 = *(v15 - 8);
  v99 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v100 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v101 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v103 = JSONDecoder.init()();
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  v25 = [a1 keyedNumbers];
  _sSo17NSKeyedUnarchiverCMaTm_0(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v26 + 16))
  {

    goto LABEL_12;
  }

  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v24);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
LABEL_12:

    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static WOLog.core);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_20AEA4000, v43, v44, "Could not determine configuration type: no value.", v45, 2u);
      MEMORY[0x20F2E9420](v45, -1, -1);
    }

    goto LABEL_17;
  }

  v30 = *(*(v26 + 56) + 8 * v27);

  v31 = [v30 integerValue];
  v32 = v31 - 1;
  if ((v31 - 1) > 4)
  {
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static WOLog.core);
    v48 = v30;
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 138412290;
      *(v51 + 4) = v48;
      *v52 = v48;
      v53 = v48;
      _os_log_impl(&dword_20AEA4000, v49, v50, "Unknown configuration type %@", v51, 0xCu);
      _s10Foundation4DateVSgWOhTm_0(v52, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v52, -1, -1);
      MEMORY[0x20F2E9420](v51, -1, -1);

      goto LABEL_18;
    }

LABEL_17:

LABEL_18:
    v46 = v104;
    *v104 = 0u;
    *(v46 + 1) = 0u;
    return;
  }

  v33 = [a1 persistedProtoData];
  if (v33)
  {
    v34 = v33;
    v93 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if ((a2 & 1) == 0)
    {
LABEL_8:
      v38 = WOPersistence.occurrence.getter();
      if (!v38)
      {
        v38 = specialized Occurrence.__allocating_init(count:)(0);
      }

      v39 = v38;
      v40 = v93;
      v41 = specialized static WorkoutConfiguration.importFromData(_:with:validator:)(v93, v36, v38, a3);
      v54 = v40;
      v55 = v41;

      v56 = [a1 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      outlined consume of Data._Representation(v54, v36);

      v57 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
      swift_beginAccess();
      (*(v101 + 40))(v55 + v57, v21, v18);
      swift_endAccess();

      v58 = type metadata accessor for WorkoutConfiguration(0);
      v59 = v104;
      v104[3] = v58;

      *v59 = v55;
      return;
    }

    v37 = WOPersistence.occurrence.getter();
    if (v37)
    {

      goto LABEL_8;
    }

    v92 = v36;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static WOLog.core);
    v67 = a1;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v105 = v91;
      *v70 = 136315138;
      v71 = [v67 uuid];
      v90 = v69;
      v72 = v71;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      (*(v101 + 8))(v21, v18);
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, &v105);

      *(v70 + 4) = v76;
      _os_log_impl(&dword_20AEA4000, v68, v90, "Failed to generate occurrence from DB columns for uuid: %s", v70, 0xCu);
      v77 = v91;
      __swift_destroy_boxed_opaque_existential_1Tm_1(v91);
      MEMORY[0x20F2E9420](v77, -1, -1);
      MEMORY[0x20F2E9420](v70, -1, -1);
    }

    outlined consume of Data._Representation(v93, v92);
  }

  if (v32 <= 1u)
  {
    if (v32)
    {
      type metadata accessor for IntervalWorkoutConfiguration(0);
      v84 = [a1 persistedData];
      v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v85;

      v64 = &lazy protocol witness table cache variable for type IntervalWorkoutConfiguration and conformance WorkoutConfiguration;
      v65 = type metadata accessor for IntervalWorkoutConfiguration;
    }

    else
    {
      type metadata accessor for GoalWorkoutConfiguration(0);
      v80 = [a1 persistedData];
      v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v81;

      v64 = &lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration;
      v65 = type metadata accessor for GoalWorkoutConfiguration;
    }
  }

  else if (v32 == 2)
  {
    type metadata accessor for RaceWorkoutConfiguration(0);
    v60 = [a1 persistedData];
    v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v62;

    v64 = &lazy protocol witness table cache variable for type RaceWorkoutConfiguration and conformance WorkoutConfiguration;
    v65 = type metadata accessor for RaceWorkoutConfiguration;
  }

  else if (v32 == 3)
  {
    type metadata accessor for PacerWorkoutConfiguration(0);
    v78 = [a1 persistedData];
    v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v79;

    v64 = &lazy protocol witness table cache variable for type PacerWorkoutConfiguration and conformance WorkoutConfiguration;
    v65 = type metadata accessor for PacerWorkoutConfiguration;
  }

  else
  {
    type metadata accessor for MultiSportWorkoutConfiguration(0);
    v82 = [a1 persistedData];
    v61 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = v83;

    v64 = &lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration and conformance WorkoutConfiguration;
    v65 = type metadata accessor for MultiSportWorkoutConfiguration;
  }

  _s10Foundation4UUIDVACSHAAWlTm_1(v64, v65, &protocol conformance descriptor for WorkoutConfiguration);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v61, v63);
  v86 = v105;
  v87 = type metadata accessor for WorkoutConfiguration(0);
  v88 = v104;
  v104[3] = v87;

  *v88 = v86;
}

id WorkoutConfiguration.serialize()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UUID();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v6);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutPlan.SerializationFormat();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WorkoutPlan();
  v42 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v17 = JSONEncoder.init()();
  v50 = v0;
  type metadata accessor for WorkoutConfiguration(0);
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type WorkoutConfiguration and conformance WorkoutConfiguration, type metadata accessor for WorkoutConfiguration, &protocol conformance descriptor for WorkoutConfiguration);
  v41 = v17;
  v18 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v45 = v19;
  v46 = v18;
  v20 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  if (*(v0 + v20) || (v21 = OBJC_IVAR___WOCoreWorkoutConfiguration_type, swift_beginAccess(), *(v1 + v21) == 2))
  {
    v38 = 0;
    v40 = 0xF000000000000000;
  }

  else
  {
    WorkoutConfiguration.workoutPlanRepresentation()(v16);
    (*(v9 + 104))(v12, *MEMORY[0x277CE3FA0], v8);
    v22 = WorkoutPlan.dataRepresentation(as:)();
    v23 = v8;
    v24 = v9;
    v38 = v22;
    v40 = v39;
    (*(v24 + 8))(v12, v23);
    (*(v42 + 8))(v16, v13);
  }

  v25 = *(v1 + v20);
  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v42 = v5;
  (*(v5 + 16))(v47, v1 + v26, v49);
  outlined copy of Data._Representation(v46, v45);
  outlined copy of Data?(v38, v40);
  static Date.now.getter();
  v27.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v28.super.isa = Data._bridgeToObjectiveC()().super.isa;
  isa = 0;
  if (v40 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v38, v40);
  }

  if (v25)
  {
    v30 = 3;
  }

  else
  {
    v30 = 2;
  }

  v31 = objc_allocWithZone(MEMORY[0x277D7E7E8]);
  v32 = v48;
  v33 = Date._bridgeToObjectiveC()().super.isa;
  v34 = [v31 initWithVersion:1 type:v30 uuid:v27.super.isa persistedData:v28.super.isa persistedProtoData:isa objectState:0 objectModificationDate:v33 syncIdentity:0];

  v36 = v45;
  v35 = v46;
  outlined consume of Data._Representation(v46, v45);
  (*(v43 + 8))(v32, v44);
  (*(v42 + 8))(v47, v49);
  (*((*MEMORY[0x277D85000] & *v1) + 0x1D8))(v34);
  outlined consume of Data?(v38, v40);
  outlined consume of Data._Representation(v35, v36);

  return v34;
}

uint64_t ConfigurationType.description.getter()
{
  v1 = *v0;
  v2 = 1818324839;
  v3 = 1701011826;
  v4 = 0x7265636170;
  if (v1 != 3)
  {
    v4 = 0x6F707369746C756DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C61767265746E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConfigurationType()
{
  v1 = *v0;
  v2 = 1818324839;
  v3 = 1701011826;
  v4 = 0x7265636170;
  if (v1 != 3)
  {
    v4 = 0x6F707369746C756DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C61767265746E69;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t WorkoutConfiguration.logString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MultiSportWorkoutConfiguration(0);
  v7 = swift_dynamicCastClass();
  v60 = v3;
  v59 = v6;
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v56 = v0;
    static Published.subscript.getter(&v65);

    v8 = v65;
    if (v65 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v57 = v2;
      v58 = v1;
      if (!i)
      {
        break;
      }

      v10 = 0;
      v2 = 0;
      v63 = v8 & 0xC000000000000001;
      v62 = v8 & 0xFFFFFFFFFFFFFF8;
      v1 = 0xE000000000000000;
      v61 = v8;
      while (1)
      {
        if (v63)
        {
          v11 = MEMORY[0x20F2E7A20](v10, v8);
        }

        else
        {
          if (v10 >= *(v62 + 16))
          {
            goto LABEL_35;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v14 = HIBYTE(v1) & 0xF;
        if ((v1 & 0x2000000000000000) == 0)
        {
          v14 = v2 & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          v15 = 8236;
        }

        else
        {
          v15 = 0;
        }

        if (v14)
        {
          v16 = 0xE200000000000000;
        }

        else
        {
          v16 = 0xE000000000000000;
        }

        v65 = v2;
        v66 = v1;

        MEMORY[0x20F2E6D80](v15, v16);

        v18 = v65;
        v17 = v66;
        v19 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
        swift_beginAccess();
        v20 = [*&v12[v19] localizedName];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v65 = v18;
        v66 = v17;

        v24 = v21;
        v8 = v61;
        MEMORY[0x20F2E6D80](v24, v23);

        v2 = v65;
        v1 = v66;
        ++v10;
        if (v13 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

    v2 = 0;
    v1 = 0xE000000000000000;
LABEL_23:

    v65 = 10272;
    v66 = 0xE200000000000000;
    MEMORY[0x20F2E6D80](v2, v1);

    MEMORY[0x20F2E6D80](41, 0xE100000000000000);

    v25 = v65;
    v26 = v66;
    v1 = v58;
    v2 = v57;
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(91);
  v67 = v65;
  v68 = v66;
  MEMORY[0x20F2E6D80](0xD000000000000015, 0x800000020B4586E0);
  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v28 = [*(v1 + v27) localizedName];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  MEMORY[0x20F2E6D80](v29, v31);

  MEMORY[0x20F2E6D80](8236, 0xE200000000000000);
  v32 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v33 = *(v1 + v32);
  if (v33 <= 1)
  {
    v34 = v60;
    if (*(v1 + v32))
    {
      v35 = 0xE800000000000000;
      v36 = 0x6C61767265746E69;
    }

    else
    {
      v35 = 0xE400000000000000;
      v36 = 1818324839;
    }
  }

  else
  {
    v34 = v60;
    if (v33 == 2)
    {
      v35 = 0xE400000000000000;
      v36 = 1701011826;
    }

    else if (v33 == 3)
    {
      v35 = 0xE500000000000000;
      v36 = 0x7265636170;
    }

    else
    {
      v35 = 0xEA00000000007472;
      v36 = 0x6F707369746C756DLL;
    }
  }

  MEMORY[0x20F2E6D80](v36, v35);

  MEMORY[0x20F2E6D80](v25, v26);

  MEMORY[0x20F2E6D80](0x203A64697575202CLL, 0xE800000000000000);
  v37 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
  swift_beginAccess();
  v38 = v1 + v37;
  v39 = v59;
  (*(v34 + 16))(v59, v38, v2);
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v40 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v40);

  (*(v34 + 8))(v39, v2);
  MEMORY[0x20F2E6D80](0x6E7265746C61202CLL, 0xEF203A6576697461);
  v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v64[0] = *(v1 + v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGSgMd, &_sSay10Foundation4UUIDVGSgMR);
  v42 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v42);

  MEMORY[0x20F2E6D80](0x72727563636F202CLL, 0xEE00203A65636E65);
  v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
  swift_beginAccess();
  v44 = *(v1 + v43);
  v45 = [v44 description];
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;

  MEMORY[0x20F2E6D80](v46, v48);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B458700);
  v49 = *(v1 + v27);
  v50 = [v49 description];
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  MEMORY[0x20F2E6D80](v51, v53);

  MEMORY[0x20F2E6D80](41, 0xE100000000000000);
  return v67;
}

uint64_t WorkoutConfiguration.displayName(formattingManager:)(void *a1)
{
  v2 = v1;
  type metadata accessor for GoalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    static Published.subscript.getter(&v14);

    v5 = v14;
    v6 = [v14 goalTypeIdentifier];

    _HKWorkoutGoalType.displayName(formattingManager:)(a1, v6);
    v8 = v7;

    return v8;
  }

  else
  {
    type metadata accessor for IntervalWorkoutConfiguration(0);
    if (swift_dynamicCastClass())
    {

      return specialized static IntervalWorkoutConfiguration.displayName.getter();
    }

    else
    {
      type metadata accessor for RaceWorkoutConfiguration(0);
      if (swift_dynamicCastClass())
      {

        return specialized static RaceWorkoutConfiguration.displayName.getter();
      }

      else
      {
        type metadata accessor for PacerWorkoutConfiguration(0);
        if (swift_dynamicCastClass())
        {

          return specialized static PacerWorkoutConfiguration.displayName.getter();
        }

        else
        {
          type metadata accessor for MultiSportWorkoutConfiguration(0);
          if (swift_dynamicCastClass())
          {

            return specialized static MultiSportWorkoutConfiguration.displayName.getter();
          }

          else
          {
            _StringGuts.grow(_:)(47);

            v10 = [v2 description];
            v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v13 = v12;

            MEMORY[0x20F2E6D80](v11, v13);

            result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002DLL, 0x800000020B458720, "WorkoutCore/WorkoutConfiguration.swift", 38, 2, 434, 0);
            __break(1u);
          }
        }
      }
    }
  }

  return result;
}

unint64_t static WorkoutConfiguration.alternativeConfigurations(in:)(unint64_t a1)
{
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  specialized Sequence.forEach(_:)(a1, &v3);
  return v3;
}

uint64_t closure #1 in static WorkoutConfiguration.alternativeConfigurations(in:)(char **a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v50 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v52 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v42 - v10;
  v12 = *a1;
  v13 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v49 = v12;
  result = *&v12[v13];
  if (result)
  {
    v48 = *(result + 16);
    if (v48)
    {
      v42 = v2;
      v47 = result + ((*(v50 + 80) + 32) & ~*(v50 + 80));
      v51 = v50 + 16;
      v45 = (v50 + 8);

      v16 = 0;
      v43 = v15;
      v44 = a2;
      v46 = v11;
      while (v16 < *(v15 + 16))
      {
        v20 = *(v50 + 72);
        v21 = *(v50 + 16);
        v21(v11, v47 + v20 * v16, v5);
        v22 = v52;
        v23 = v11;
        v24 = v5;
        v21(v52, v23, v5);
        v25 = v49;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = *a2;
        v27 = v53;
        *a2 = 0x8000000000000000;
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v22);
        v30 = v27[2];
        v31 = (v28 & 1) == 0;
        v32 = v30 + v31;
        if (__OFADD__(v30, v31))
        {
          goto LABEL_19;
        }

        v33 = v28;
        if (v27[3] >= v32)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v32, isUniquelyReferenced_nonNull_native);
          v34 = specialized __RawDictionaryStorage.find<A>(_:)(v52);
          if ((v33 & 1) != (v35 & 1))
          {
            goto LABEL_21;
          }

          v29 = v34;
        }

        v5 = v24;
        v36 = v53;
        if (v33)
        {
          v17 = v53[7];
          v18 = *(v17 + 8 * v29);
          *(v17 + 8 * v29) = v25;

          v19 = *v45;
          (*v45)(v52, v24);
          v11 = v46;
          v19(v46, v5);
        }

        else
        {
          v53[(v29 >> 6) + 8] |= 1 << v29;
          v37 = v52;
          v21((v36[6] + v29 * v20), v52, v5);
          *(v36[7] + 8 * v29) = v25;
          v38 = *v45;
          (*v45)(v37, v5);
          v11 = v46;
          v38(v46, v5);
          v39 = v36[2];
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_20;
          }

          v36[2] = v41;
        }

        ++v16;
        a2 = v44;
        *v44 = v36;

        v15 = v43;
        if (v48 == v16)
        {
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t key path getter for MultiSportWorkoutConfiguration.subConfigs : MultiSportWorkoutConfiguration@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for MultiSportWorkoutConfiguration.subConfigs : MultiSportWorkoutConfiguration(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t specialized WorkoutConfiguration.isEquivalent(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v76 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v13 = MEMORY[0x28223BE20](v77, v12);
  v74 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v70 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v73 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v75 = &v70 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = &v70 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v70 - v30;
  v80[3] = a3;
  v80[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v80);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  outlined init with copy of CodingKey(v80, v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  type metadata accessor for WorkoutConfiguration(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v72 = v9;
  v33 = v78;
  v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  LODWORD(v34) = v33[v34];
  v35 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  if (v34 != *(a2 + v35))
  {
    goto LABEL_11;
  }

  v71 = v8;
  _sSo17NSKeyedUnarchiverCMaTm_0(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v36 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v37 = *&v33[v36];
  v38 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v39 = *(a2 + v38);
  v40 = v37;
  v41 = v39;
  v42 = static NSObject.== infix(_:_:)();

  if ((v42 & 1) == 0)
  {
    goto LABEL_11;
  }

  v43 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v44 = *&v33[v43];
  v45 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v46 = *(a2 + v45);
  if (v44)
  {
    if (!v46)
    {
      goto LABEL_11;
    }

    swift_beginAccess();
    v47 = *(v44 + 32);
    v48 = *(v44 + 40);
    swift_beginAccess();
    if ((v47 != *(v46 + 32) || v48 != *(v46 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v46)
  {
    goto LABEL_11;
  }

  v51 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  outlined init with copy of Date?(&v33[v51], v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v52 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v53 = *(v77 + 48);
  outlined init with copy of Date?(v31, v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of Date?(a2 + v52, &v17[v53], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v54 = v71;
  v55 = *(v72 + 48);
  if (v55(v17, 1, v71) == 1)
  {
    _s10Foundation4DateVSgWOhTm_0(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v55(&v17[v53], 1, v54) == 1)
    {
      v70 = v55;
      _s10Foundation4DateVSgWOhTm_0(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_21;
    }

LABEL_26:
    _s10Foundation4DateVSgWOhTm_0(v17, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_12;
  }

  outlined init with copy of Date?(v17, v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v55(&v17[v53], 1, v54) == 1)
  {

    _s10Foundation4DateVSgWOhTm_0(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v72 + 8))(v28, v54);
    goto LABEL_26;
  }

  v70 = v55;
  (*(v72 + 32))(v76, &v17[v53], v54);
  _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v56 = dispatch thunk of static Equatable.== infix(_:_:)();
  v57 = *(v72 + 8);
  v57(v76, v71);
  _s10Foundation4DateVSgWOhTm_0(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v57(v28, v71);
  v54 = v71;
  _s10Foundation4DateVSgWOhTm_0(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v56)
  {
LABEL_21:
    v58 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    v59 = v75;
    outlined init with copy of Date?(&v33[v58], v75, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v60 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    v61 = *(v77 + 48);
    v17 = v74;
    outlined init with copy of Date?(v59, v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v62 = a2 + v60;
    v63 = v61;
    outlined init with copy of Date?(v62, &v17[v61], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v64 = v70;
    if (v70(v17, 1, v54) == 1)
    {

      _s10Foundation4DateVSgWOhTm_0(v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v64(&v17[v63], 1, v54) == 1)
      {
        _s10Foundation4DateVSgWOhTm_0(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v49 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v65 = v73;
      outlined init with copy of Date?(v17, v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v64(&v17[v63], 1, v54) != 1)
      {
        v66 = v63;
        v67 = v72;
        v68 = v76;
        (*(v72 + 32))(v76, &v17[v66], v54);
        _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();

        v69 = *(v67 + 8);
        v69(v68, v54);
        _s10Foundation4DateVSgWOhTm_0(v75, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v69(v65, v54);
        _s10Foundation4DateVSgWOhTm_0(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_13;
      }

      _s10Foundation4DateVSgWOhTm_0(v75, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      (*(v72 + 8))(v65, v54);
    }

    goto LABEL_26;
  }

LABEL_11:

LABEL_12:
  v49 = 0;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1Tm_1(v80);
  return v49 & 1;
}

uint64_t lazy protocol witness table accessor for type [UUID] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
    _s10Foundation4UUIDVACSHAAWlTm_1(a2, MEMORY[0x277CC95F0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined init with take of CodingKey(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t specialized WorkoutConfiguration.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutConfiguration.CodingKeys.init(rawValue:), v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed FIUIFormattingManager) -> (@owned String)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type [ConfigurationType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ConfigurationType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ConfigurationType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore17ConfigurationTypeOGMd, &_sSay11WorkoutCore17ConfigurationTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ConfigurationType] and conformance [A]);
  }

  return result;
}

id keypath_get_17Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t keypath_get_23Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_beginAccess();
  return outlined init with copy of Date?(v8 + v9, a5, a3, a4);
}

uint64_t getEnumTagSinglePayload for ConfigurationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutConfiguration.WorkoutConfigurationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WorkoutConfiguration.WorkoutConfigurationError(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for WorkoutConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WorkoutConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined init with copy of CodingKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t HKUnit.measurementSystem.getter()
{
  v1 = [objc_opt_self() meterUnit];
  v2 = [v0 _isCompatibleWithUnit_];

  if (!v2)
  {
    return 0;
  }

  if ([v0 _isMetricDistance])
  {
    return 1;
  }

  return 2;
}

uint64_t CyclingPowerZone.__allocating_init(displaySpan:percentageSpan:configuration:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  result = swift_allocObject();
  *(result + 48) = a5;
  *(result + 56) = a6;
  v13 = floor(a3);
  v14 = floor(a4);
  if (v13 > v14)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v13;
    *(result + 24) = v14;
    *(result + 32) = a1;
    *(result + 40) = a2;
  }

  return result;
}

uint64_t CyclingPowerZone.init(displaySpan:percentageSpan:configuration:)(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  v7 = floor(a3);
  v8 = floor(a4);
  if (v7 > v8)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v7;
    *(v6 + 24) = v8;
    *(v6 + 32) = result;
    *(v6 + 40) = a2;
    return v6;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CyclingPowerZone.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CyclingPowerZone.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CyclingPowerZone.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance CyclingPowerZone.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CyclingPowerZone.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance CyclingPowerZone.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CyclingPowerZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CyclingPowerZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void *CyclingPowerZone.init(from:)(void *a1)
{
  v3 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore16CyclingPowerZoneC10CodingKeys33_1162F34560E9A6BB6158CE3F0889A830LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore16CyclingPowerZoneC10CodingKeys33_1162F34560E9A6BB6158CE3F0889A830LLOGMR);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v6);
  v8 = &v15[-1] - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdGMd, &_sSnySdGMR);
    lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, MEMORY[0x277D83A30], MEMORY[0x277D83D38]);
    v11 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v3 + 48) = v16[0];
    outlined init with copy of Decoder(a1, v16);
    outlined init with copy of Decoder(v16, v15);
    Zone.init(from:)(v15);
    v9 = v13;
    __swift_destroy_boxed_opaque_existential_1(v16);
    (*(v10 + 8))(v8, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t CyclingPowerZone.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore16CyclingPowerZoneC10CodingKeys33_1162F34560E9A6BB6158CE3F0889A830LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore16CyclingPowerZoneC10CodingKeys33_1162F34560E9A6BB6158CE3F0889A830LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - v7;
  result = Zone.encode(to:)(a1);
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    lazy protocol witness table accessor for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v10 = *(v1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdGMd, &_sSnySdGMR);
    lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>, MEMORY[0x277D83A08], MEMORY[0x277D83D08]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void *static CyclingPowerZone.emptyZone(for:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  result[6] = 0;
  result[7] = 0;
  result[4] = a1;
  result[5] = a2;
  return result;
}

double static CyclingPowerZone.canonical()()
{
  v0 = swift_allocObject();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  result = 0.0;
  *(v0 + 16) = xmmword_20B42C700;
  *(v0 + 32) = xmmword_20B42C710;
  return result;
}

double protocol witness for static Canonical.canonical() in conformance CyclingPowerZone@<D0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  *(v2 + 56) = 0;
  result = 0.0;
  *(v2 + 16) = xmmword_20B42C700;
  *(v2 + 32) = xmmword_20B42C710;
  *a1 = v2;
  return result;
}

id CyclingPowerZone.lowerBound.getter()
{
  if (!*(v0 + 32))
  {
    return 0;
  }

  v1 = [objc_opt_self() wattUnit];
  v2 = [objc_opt_self() quantityWithUnit:v1 doubleValue:*(v0 + 16) + 1.0];

  return v2;
}

void CyclingPowerZone.upperBound.getter()
{
  v1 = *(v0 + 40);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else if (*(v0 + 32) != v3)
  {
    v4 = [objc_opt_self() wattUnit];
    [objc_opt_self() quantityWithUnit:v4 doubleValue:*(v0 + 24)];
  }
}

unint64_t lazy protocol witness table accessor for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CyclingPowerZone.CodingKeys and conformance CyclingPowerZone.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySdGMd, &_sSnySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySdGMd, &_sSnySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CyclingPowerZone.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CyclingPowerZone.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t Array.dictionaryWithKeys<A>(with:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v65 = a1;
  v66 = a2;
  v10 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v58 = &v46 - v12;
  v57 = type metadata accessor for Optional();
  v13 = *(v57 - 8);
  v15 = MEMORY[0x28223BE20](v57, v14);
  v17 = &v46 - v16;
  v18 = *(a5 - 8);
  v20 = MEMORY[0x28223BE20](v15, v19);
  v56 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v55 = &v46 - v24;
  v25 = *(a4 - 8);
  v26 = *(v25 + 64);
  v28 = MEMORY[0x28223BE20](v23, v27);
  v67 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v46 - v30;
  v59 = a6;
  v32 = Dictionary.init()();
  v70 = v32;
  if (MEMORY[0x20F2E7000](a3, a4))
  {
    v47 = v26;
    v64 = a5;
    v33 = v13;
    v34 = 0;
    v68 = (v25 + 16);
    v61 = (v18 + 48);
    v62 = (v25 + 32);
    v51 = (v18 + 16);
    v52 = (v18 + 32);
    v50 = (v25 + 56);
    v49 = (v18 + 8);
    v60 = (v25 + 8);
    v48 = (v33 + 8);
    v35 = v67;
    v53 = v25;
    v54 = a3;
    v63 = v31;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v38 = *(v25 + 16);
        v38(v31, (a3 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v34), a4);
        v39 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v47 != 8)
        {
          __break(1u);
          return result;
        }

        v69 = result;
        v38 = *v68;
        (*v68)(v31, &v69, a4);
        swift_unknownObjectRelease();
        v39 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_12:
          __break(1u);
          return v70;
        }
      }

      (*v62)(v35, v31, a4);
      v65(v35);
      v40 = v64;
      if ((*v61)(v17, 1, v64) == 1)
      {
        (*v60)(v35, a4);
        (*v48)(v17, v57);
      }

      else
      {
        v41 = v55;
        (*v52)(v55, v17, v40);
        (*v51)(v56, v41, v40);
        v42 = v17;
        v43 = v58;
        v38(v58, v67, a4);
        (*v50)(v43, 0, 1, a4);
        type metadata accessor for Dictionary();
        v17 = v42;
        v25 = v53;
        a3 = v54;
        Dictionary.subscript.setter();
        v44 = v41;
        v35 = v67;
        (*v49)(v44, v40);
        (*v60)(v35, a4);
      }

      v36 = MEMORY[0x20F2E7000](a3, a4);
      ++v34;
      v31 = v63;
      if (v39 == v36)
      {
        return v70;
      }
    }
  }

  return v32;
}

uint64_t specialized Array.isEquivalent(to:)(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_24;
  }

  v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3 == *(a1 + 16))
  {
    if (!v3)
    {
      return 1;
    }

    v4 = 0;
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
    v15 = v2 & 0xC000000000000001;
    v5 = a1 + 32;
    v13 = v2;
    while (v3 != v4)
    {
      if (v15)
      {
        v6 = MEMORY[0x20F2E7A20](v4, v2);
      }

      else
      {
        if (v4 >= *(v14 + 16))
        {
          goto LABEL_23;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v19 = type metadata accessor for WorkoutBlock(0);
      v20 = &protocol witness table for WorkoutBlock;
      v18[0] = v6;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      outlined init with copy of Decoder(v5, v17);
      outlined init with copy of Decoder(v17, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
      if (!swift_dynamicCast())
      {
        goto LABEL_18;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v16);

      v7 = v16[0];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v16);

      if (v7 != v16[0])
      {

LABEL_18:
        __swift_destroy_boxed_opaque_existential_1(v17);
LABEL_19:
        __swift_destroy_boxed_opaque_existential_1(v18);
        return 0;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v16);

      v8 = v16[0];
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(v16);

      v9 = specialized _arrayForceCast<A, B>(_:)(v16[0]);

      v10 = specialized Array.isEquivalent(to:)(v9, v8);

      __swift_destroy_boxed_opaque_existential_1(v17);
      if ((v10 & 1) == 0)
      {
        goto LABEL_19;
      }

      ++v4;
      a1 = __swift_destroy_boxed_opaque_existential_1(v18);
      v5 += 40;
      v2 = v13;
      if (v3 == v4)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v12 = a1;
    v3 = __CocoaSet.count.getter();
    a1 = v12;
  }

  return 0;
}

{
  return specialized Array.isEquivalent(to:)(a1, a2, type metadata accessor for WorkoutConfiguration);
}

uint64_t specialized Array.isEquivalent(to:)(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_17:
    v13 = a1;
    v3 = __CocoaSet.count.getter();
    a1 = v13;
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 == *(a1 + 16))
  {
    if (v3)
    {
      v4 = (a1 + 32);
      v5 = 4;
      while (1)
      {
        a1 = v5 - 4;
        if ((a2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x20F2E7A20](a1, a2);
        }

        else
        {
          if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v6 = *(a2 + 8 * v5);
        }

        v15 = type metadata accessor for WorkoutStep(0);
        v16 = &protocol witness table for WorkoutStep;
        v14[0] = v6;
        v7 = *__swift_project_boxed_opaque_existential_1(v14, v15);
        v8 = v4[3];
        v9 = v4[4];
        v10 = __swift_project_boxed_opaque_existential_1(v4, v8);
        v11 = specialized WorkoutStep.isEquivalent(to:)(v10, v7, v8, v9);
        __swift_destroy_boxed_opaque_existential_1(v14);
        if (v11)
        {
          ++v5;
          v4 += 5;
          if (--v3)
          {
            continue;
          }
        }

        return v11 & 1;
      }
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t specialized Array.isEquivalent(to:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  if (a2 >> 62)
  {
LABEL_17:
    v14 = a1;
    v5 = __CocoaSet.count.getter();
    a1 = v14;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 == *(a1 + 16))
  {
    if (v5)
    {
      v6 = 0;
      v7 = a1 + 32;
      v8 = MEMORY[0x277D85000];
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x20F2E7A20](v6, a2);
        }

        else
        {
          if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v9 = *(a2 + 8 * v6 + 32);
        }

        v10 = v9;
        v16 = a3(0);
        v17 = &protocol witness table for WorkoutConfiguration;
        v15[0] = v10;
        v11 = *v8 & **__swift_project_boxed_opaque_existential_1(v15, v16);
        v12 = (*(v11 + 464))(v7);
        a1 = __swift_destroy_boxed_opaque_existential_1(v15);
        if (v12)
        {
          v7 += 40;
          ++v6;
          if (--v5)
          {
            continue;
          }
        }

        return v12 & 1;
      }
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t MultiSportWorkoutConfiguration.containsPoolSwim.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v0 = v10[0];
  if (v10[0] >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v10[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v2 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x20F2E7A20](v2, v0);
      }

      else
      {
        if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v3 = *(v0 + 8 * v2 + 32);
      }

      v4 = v3;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      if ([*&v4[v6] identifier] == 46)
      {
        v7 = *&v4[v6];
        v8 = [v7 hasLocationTypePool];

        if (v8)
        {
          i = 1;
          goto LABEL_15;
        }
      }

      else
      {
      }

      ++v2;
      if (v5 == i)
      {
        i = 0;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return i;
}

uint64_t MultiSportWorkoutConfiguration.subConfigs.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MultiSportWorkoutConfiguration.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C746974;
  }

  else
  {
    v3 = 0x69666E6F43627573;
  }

  if (v2)
  {
    v4 = 0xEA00000000007367;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C746974;
  }

  else
  {
    v5 = 0x69666E6F43627573;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEA00000000007367;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MultiSportWorkoutConfiguration.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MultiSportWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MultiSportWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MultiSportWorkoutConfiguration.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MultiSportWorkoutConfiguration.CodingKeys.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance MultiSportWorkoutConfiguration.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x69666E6F43627573;
  if (*v1)
  {
    v2 = 0x656C746974;
  }

  v3 = 0xEA00000000007367;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MultiSportWorkoutConfiguration.CodingKeys()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 0x69666E6F43627573;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MultiSportWorkoutConfiguration.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MultiSportWorkoutConfiguration.CodingKeys.init(rawValue:), v3);

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

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MultiSportWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MultiSportWorkoutConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiSportWorkoutConfiguration.subConfigs.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return static Published.subscript.setter();
}

uint64_t (*MultiSportWorkoutConfiguration.subConfigs.modify(uint64_t *a1))()
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
  return MultiSportWorkoutConfiguration.subConfigs.modify;
}

uint64_t key path setter for MultiSportWorkoutConfiguration.$subConfigs : MultiSportWorkoutConfiguration(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore04GoalD13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore04GoalD13ConfigurationCG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore04GoalC13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore04GoalC13ConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MultiSportWorkoutConfiguration.$subConfigs.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore04GoalD13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore04GoalD13ConfigurationCG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore04GoalC13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore04GoalC13ConfigurationCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultiSportWorkoutConfiguration.$subConfigs.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore04GoalD13ConfigurationCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore04GoalD13ConfigurationCG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration__subConfigs;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore04GoalC13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore04GoalC13ConfigurationCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultiSportWorkoutConfiguration.$subConfigs.modify;
}

uint64_t MultiSportWorkoutConfiguration.title.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t key path getter for MultiSportWorkoutConfiguration.title : MultiSportWorkoutConfiguration@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t key path setter for MultiSportWorkoutConfiguration.title : MultiSportWorkoutConfiguration(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t MultiSportWorkoutConfiguration.title.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*MultiSportWorkoutConfiguration.title.modify(uint64_t *a1))()
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
  return MultiSportWorkoutConfiguration.title.modify;
}

void MultiSportWorkoutConfiguration.subConfigs.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t MultiSportWorkoutConfiguration.$subConfigs.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for MultiSportWorkoutConfiguration.$subConfigs : MultiSportWorkoutConfiguration(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MultiSportWorkoutConfiguration.$title : MultiSportWorkoutConfiguration(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MultiSportWorkoutConfiguration.$title.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MultiSportWorkoutConfiguration.$title.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySS_GMd, &_s7Combine9PublishedV9PublisherVySS_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration__title;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MultiSportWorkoutConfiguration.$title.modify;
}

void MultiSportWorkoutConfiguration.$subConfigs.modify(uint64_t a1, char a2)
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

uint64_t MultiSportWorkoutConfiguration.displayName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v1 = v10[0];
  v0 = v10[1];

  v2 = HIBYTE(v0) & 0xF;
  if ((v0 & 0x2000000000000000) == 0)
  {
    v2 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v10);

    return v10[0];
  }

  else
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = [objc_opt_self() bundleForClass_];
    v6 = MEMORY[0x20F2E6C00](0xD000000000000025, 0x800000020B458850);
    v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v9;
  }
}

uint64_t MultiSportWorkoutConfiguration.overrideDeviceCapability.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration_overrideDeviceCapability;
  swift_beginAccess();
  return *(v0 + v1);
}

void MultiSportWorkoutConfiguration.overrideDeviceCapability.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration_overrideDeviceCapability;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MultiSportWorkoutConfiguration.isValidConfiguration.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v13);

  if (v13[0] >> 62)
  {
    goto LABEL_21;
  }

  v0 = *((v13[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v0 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v13);

    v2 = v13[0];
    v3 = v13[0] & 0xFFFFFFFFFFFFFF8;
    if (v13[0] >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v13[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    while (v4 != v5)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x20F2E7A20](v5, v2);
      }

      else
      {
        if (v5 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        v0 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v8 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      v9 = *&v7[v8];
      v10 = [v9 isPartOfMultiSport];

      ++v5;
      if ((v10 & 1) == 0)
      {
        v1 = 0;
LABEL_17:

        return v1 & 1;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v12);

    v1 = specialized MultiSportWorkoutConfiguration.configOrderingIsValid(_:)(v12);
    goto LABEL_17;
  }

  v1 = 0;
  return v1 & 1;
}

Swift::Void __swiftcall MultiSportWorkoutConfiguration.setLapLength(_:)(Swift::Double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v10);

  v2 = v10[0];
  if (!(v10[0] >> 62))
  {
    v3 = *((v10[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x20F2E7A20](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      v7 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
      swift_beginAccess();
      if ([*&v6[v7] identifier] == 46 && (objc_msgSend(*&v6[v7], sel_hasLocationTypePool) & 1) != 0)
      {
        v8 = [*&v6[v7] activityTypeByAddingLapLength_];
        v9 = *&v6[v7];
        *&v6[v7] = v8;

        v6 = v9;
      }
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t MultiSportWorkoutConfiguration.canReorder(fromOffsets:toOffset:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd, &_sSay11WorkoutCore04GoalA13ConfigurationCGMR);
  lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance [A]();
  MutableCollection.move(fromOffsets:toOffset:)();
  v2 = specialized MultiSportWorkoutConfiguration.configOrderingIsValid(_:)(v4);

  return v2 & 1;
}

Swift::Int MultiSportWorkoutConfiguration.hash.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  Hasher.init()();
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v6, sel_hash);
  MEMORY[0x20F2E7FF0](v3);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  specialized Array<A>.hash(into:)();

  return Hasher.finalize()();
}

uint64_t MultiSportWorkoutConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore010MultiSportD13ConfigurationC10CodingKeys33_D4C60C24A0DCD28B29FE6E5DEDF60483LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore010MultiSportD13ConfigurationC10CodingKeys33_D4C60C24A0DCD28B29FE6E5DEDF60483LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd, &_sSay11WorkoutCore04GoalA13ConfigurationCGMR);
  lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance <A> [A](&lazy protocol witness table cache variable for type [GoalWorkoutConfiguration] and conformance <A> [A], &lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, &protocol conformance descriptor for WorkoutConfiguration, MEMORY[0x277D83948]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v9);

    LOBYTE(v9) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();

    WorkoutConfiguration.encode(to:)(a1);
  }

  return (*(v4 + 8))(v7, v3);
}

char *MultiSportWorkoutConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore010MultiSportD13ConfigurationC10CodingKeys33_D4C60C24A0DCD28B29FE6E5DEDF60483LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore010MultiSportD13ConfigurationC10CodingKeys33_D4C60C24A0DCD28B29FE6E5DEDF60483LLOGMR);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - v12;
  v14 = OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration__title;
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  Published.init(initialValue:)();
  v15 = *(v10 + 32);
  v26 = v14;
  v15(&v3[v14], v13, v9);
  v3[OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration_overrideDeviceCapability] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v10 + 8))(&v3[v26], v9);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd, &_sSay11WorkoutCore04GoalA13ConfigurationCGMR);
    LOBYTE(v27[0]) = 0;
    lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance <A> [A](&lazy protocol witness table cache variable for type [GoalWorkoutConfiguration] and conformance <A> [A], &lazy protocol witness table cache variable for type GoalWorkoutConfiguration and conformance WorkoutConfiguration, &protocol conformance descriptor for WorkoutConfiguration, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = v28;
    swift_beginAccess();
    v30 = v17;
    v18 = v24;
    Published.init(initialValue:)();
    swift_endAccess();
    LOBYTE(v27[0]) = 1;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    v21 = v26;
    swift_beginAccess();
    (*(v10 + 8))(&v3[v21], v9);
    v28 = v22;
    v29 = v20;
    Published.init(initialValue:)();
    swift_endAccess();
    outlined init with copy of Decoder(a1, v27);
    v3 = WorkoutConfiguration.init(from:)(v27);
    (*(v23 + 8))(v8, v18);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t MultiSportWorkoutConfiguration.isEquivalent(to:)(uint64_t a1)
{
  swift_getObjectType();
  outlined init with copy of Decoder(a1, &v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  v3 = v12;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  v4 = specialized _arrayForceCast<A, B>(_:)(v12);

  v5 = specialized Array.isEquivalent(to:)(v4, v3, type metadata accessor for GoalWorkoutConfiguration);

  if ((v5 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    v9 = 0;
    return v9 & 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  v7 = v12;
  v6 = v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v12);

  if (v7 != v12 || v6 != v13)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

LABEL_7:
  v9 = specialized WorkoutConfiguration.isEquivalent(to:)(v11, v1, type metadata accessor for MultiSportWorkoutConfiguration);

  return v9 & 1;
}

id static MultiSportWorkoutConfiguration.defaultEmpty()()
{
  v0 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v4 = specialized Occurrence.__allocating_init(count:)(0);
  return specialized MultiSportWorkoutConfiguration.__allocating_init(_:uuid:occurrence:)(MEMORY[0x277D84F90], v3, v4);
}

uint64_t MultiSportWorkoutConfiguration.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration__subConfigs;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore04GoalC13ConfigurationCGGMd, &_s7Combine9PublishedVySay11WorkoutCore04GoalC13ConfigurationCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration__title;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

id MultiSportWorkoutConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MultiSportWorkoutConfiguration.all()()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v125 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v116 - v7;
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v116 - v10;
  if (one-time initialization token for msOpenSwim != -1)
  {
    swift_once();
  }

  v132 = static FIUIWorkoutActivityType.msOpenSwim;
  v12 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v126 = specialized Occurrence.__allocating_init(count:)(0);
  v13 = v11;
  v139 = v11;
  v14 = v1 + 2;
  v15 = v1[2];
  v15(v8, v13, v0);
  v137 = type metadata accessor for GoalWorkoutConfiguration(0);
  v16 = objc_allocWithZone(v137);
  v140 = v8;
  swift_beginAccess();
  v152 = v12;
  v17 = type metadata accessor for NLSessionActivityGoal(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v124 = v12;
  v136 = v17;
  Published.init(initialValue:)();
  swift_endAccess();
  v15(v125, v140, v0);
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v18 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v22 = v20 + 56;
  v21(&v16[v18], 1, 1, v19);
  v134 = v21;
  v135 = v19;
  v133 = v22;
  v21(&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v19);
  v23 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v24 = type metadata accessor for WorkoutPlan.Route();
  v25 = *(v24 - 8);
  v130 = *(v25 + 56);
  v131 = v24;
  v129 = v25 + 56;
  v130(&v16[v23], 1, 1);
  v127 = v1[7];
  v128 = v1 + 7;
  v127(&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v27 = v125;
  v138 = v15;
  v15(&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v125, v0);
  v28 = v132;
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v132;
  v16[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v16[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v126;
  swift_beginAccess();
  *&v16[v26] = 0;
  v16[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v29 = type metadata accessor for WorkoutConfiguration(0);
  v153.receiver = v16;
  v153.super_class = v29;
  v126 = v29;
  v30 = v28;
  v32 = v139;
  v31 = v140;
  v122 = objc_msgSendSuper2(&v153, sel_init);

  v33 = v1[1];
  v33(v27, v0);
  v33(v31, v0);
  v132 = (v1 + 1);
  v33(v32, v0);
  if (one-time initialization token for msOutdoorCycle != -1)
  {
    swift_once();
  }

  v123 = static FIUIWorkoutActivityType.msOutdoorCycle;
  v34 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v121 = specialized Occurrence.__allocating_init(count:)(0);
  v35 = v31;
  v36 = v138;
  v138(v35, v32, v0);
  v37 = objc_allocWithZone(v137);
  swift_beginAccess();
  v150 = v34;
  v120 = v34;
  Published.init(initialValue:)();
  swift_endAccess();
  v36(v27, v140, v0);
  *&v37[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v38 = v134;
  v39 = v135;
  v124 = v14;
  v134(&v37[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v135);
  v38(&v37[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v39);
  (v130)(&v37[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v131);
  v127(&v37[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v37[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v36(&v37[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v27, v0);
  v41 = v123;
  *&v37[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v123;
  v37[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v37[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v121;
  swift_beginAccess();
  *&v37[v40] = 0;
  v37[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v151.receiver = v37;
  v151.super_class = v126;
  v42 = v41;
  v44 = v139;
  v43 = v140;
  v121 = objc_msgSendSuper2(&v151, sel_init);

  v33(v27, v0);
  v33(v43, v0);
  v33(v44, v0);
  if (one-time initialization token for msOutdoorRun != -1)
  {
    swift_once();
  }

  v45 = static FIUIWorkoutActivityType.msOutdoorRun;
  v46 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v120 = specialized Occurrence.__allocating_init(count:)(0);
  v47 = v43;
  v48 = v138;
  v138(v47, v44, v0);
  v49 = objc_allocWithZone(v137);
  swift_beginAccess();
  v148 = v46;
  v123 = v46;
  Published.init(initialValue:)();
  swift_endAccess();
  v50 = v125;
  v48(v125, v140, v0);
  *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v51 = v134;
  v52 = v135;
  v134(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v135);
  v51(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v52);
  (v130)(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v131);
  v127(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v53 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v48(&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v50, v0);
  *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v45;
  v49[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v49[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v120;
  swift_beginAccess();
  *&v49[v53] = 0;
  v49[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v149.receiver = v49;
  v149.super_class = v126;
  v54 = v45;
  v56 = v139;
  v55 = v140;
  v120 = objc_msgSendSuper2(&v149, sel_init);

  v33(v50, v0);
  v33(v55, v0);
  v33(v56, v0);
  if (one-time initialization token for msPoolSwim != -1)
  {
    swift_once();
  }

  v57 = static FIUIWorkoutActivityType.msPoolSwim;
  v58 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v119 = specialized Occurrence.__allocating_init(count:)(0);
  v59 = v55;
  v60 = v138;
  v138(v59, v56, v0);
  v61 = objc_allocWithZone(v137);
  swift_beginAccess();
  v146 = v58;
  v123 = v58;
  Published.init(initialValue:)();
  swift_endAccess();
  v62 = v125;
  v60(v125, v140, v0);
  *&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v63 = v134;
  v64 = v135;
  v134(&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v135);
  v63(&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v64);
  (v130)(&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v131);
  v127(&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v65 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v60(&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v62, v0);
  *&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v57;
  v61[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v61[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v119;
  swift_beginAccess();
  *&v61[v65] = 0;
  v61[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v147.receiver = v61;
  v147.super_class = v126;
  v66 = v57;
  v68 = v139;
  v67 = v140;
  v119 = objc_msgSendSuper2(&v147, sel_init);

  v33(v62, v0);
  v33(v67, v0);
  v33(v68, v0);
  v123 = v33;
  if (one-time initialization token for msIndoorCycle != -1)
  {
    swift_once();
  }

  v118 = static FIUIWorkoutActivityType.msIndoorCycle;
  v69 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v116 = specialized Occurrence.__allocating_init(count:)(0);
  v70 = v138;
  v138(v67, v68, v0);
  v71 = v67;
  v72 = objc_allocWithZone(v137);
  swift_beginAccess();
  v144 = v69;
  v117 = v69;
  Published.init(initialValue:)();
  swift_endAccess();
  v73 = v125;
  v70(v125, v67, v0);
  *&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v75 = v134;
  v74 = v135;
  v134(&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v135);
  v75(&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v74);
  (v130)(&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v131);
  v127(&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v76 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v70(&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v73, v0);
  v77 = v118;
  *&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v118;
  v72[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v72[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v116;
  swift_beginAccess();
  *&v72[v76] = 0;
  v72[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v145.receiver = v72;
  v145.super_class = v126;
  v78 = v77;
  v79 = v71;
  v80 = v139;
  v118 = objc_msgSendSuper2(&v145, sel_init);

  v81 = v123;
  v123(v73, v0);
  v81(v79, v0);
  v81(v80, v0);
  v82 = v73;
  if (one-time initialization token for msIndoorRun != -1)
  {
    swift_once();
  }

  v117 = static FIUIWorkoutActivityType.msIndoorRun;
  v83 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v116 = specialized Occurrence.__allocating_init(count:)(0);
  v84 = v138;
  v138(v79, v80, v0);
  v85 = objc_allocWithZone(v137);
  swift_beginAccess();
  v141 = v83;
  v137 = v83;
  Published.init(initialValue:)();
  swift_endAccess();
  v84(v82, v79, v0);
  *&v85[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v87 = v134;
  v86 = v135;
  v134(&v85[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v135);
  v87(&v85[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v86);
  (v130)(&v85[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v131);
  v127(&v85[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v88 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v85[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v84(&v85[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v82, v0);
  v89 = v116;
  v90 = v117;
  *&v85[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v117;
  v85[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v85[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v89;
  swift_beginAccess();
  *&v85[v88] = 0;
  v85[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v143.receiver = v85;
  v143.super_class = v126;
  v91 = v90;
  v92 = objc_msgSendSuper2(&v143, sel_init);

  v93 = v123;
  v123(v82, v0);
  v93(v140, v0);
  v93(v80, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_20B423960;
  v96 = v121;
  v95 = v122;
  v98 = v118;
  v97 = v119;
  *(v94 + 32) = v122;
  *(v94 + 40) = v97;
  *(v94 + 48) = v96;
  *(v94 + 56) = v98;
  v99 = v120;
  *(v94 + 64) = v120;
  *(v94 + 72) = v92;
  v140 = v95;
  v138 = v97;
  v100 = v96;
  v101 = v98;
  v102 = v99;
  v103 = v92;
  UUID.init()();
  v104 = specialized Occurrence.__allocating_init(count:)(0);
  v105 = specialized MultiSportWorkoutConfiguration.__allocating_init(_:uuid:occurrence:)(v94, v80, v104);
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v107 = [objc_opt_self() bundleForClass_];
  v108 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B458880);
  v109 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v110 = [v107 localizedStringForKey:v108 value:0 table:v109];

  v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v113 = v112;

  swift_getKeyPath();
  swift_getKeyPath();
  v141 = v111;
  v142 = v113;
  v114 = v105;
  static Published.subscript.setter();

  return v114;
}

id protocol witness for static Canonical.canonical() in conformance MultiSportWorkoutConfiguration@<X0>(uint64_t *a1@<X8>)
{
  result = specialized static MultiSportWorkoutConfiguration.canonical()();
  *a1 = result;
  return result;
}

id MultiSportWorkoutConfiguration.copyWith(subConfigs:uuid:occurrence:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v56 = a3;
  ObjectType = swift_getObjectType();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v7 = *(v57 - 1);
  MEMORY[0x28223BE20](v57, v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v51 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v59 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v51 - v22;
  v60 = v21;
  if (a1)
  {
    v53 = a1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v65);
    v15 = v60;

    v53 = v65[0];
  }

  outlined init with copy of UUID?(a2, v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v24 = *(v16 + 48);
  v25 = v24(v14, 1, v15);
  v58 = v16;
  if (v25 == 1)
  {
    v26 = OBJC_IVAR___WOCoreWorkoutConfiguration_uuid;
    swift_beginAccess();
    v27 = *(v16 + 16);
    v28 = v60;
    v27(v23, v3 + v26, v60);
    v29 = v24(v14, 1, v28);

    if (v29 != 1)
    {
      _s10Foundation4UUIDVSgWOhTm_1(v14, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    (*(v16 + 32))(v23, v14, v15);
  }

  v30 = v56;
  if (v56)
  {
    v54 = v56;
  }

  else
  {
    v31 = OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence;
    swift_beginAccess();
    v54 = *(v4 + v31);
  }

  v32 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  swift_beginAccess();
  v52 = *(v4 + v32);
  v33 = objc_allocWithZone(ObjectType);
  v34 = OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration__title;
  v63 = 0;
  v64 = 0xE000000000000000;

  v35 = v30;
  Published.init(initialValue:)();
  (*(v7 + 32))(&v33[v34], v10, v57);
  v33[OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration_overrideDeviceCapability] = 0;
  swift_beginAccess();
  v62 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd, &_sSay11WorkoutCore04GoalA13ConfigurationCGMR);
  Published.init(initialValue:)();
  swift_endAccess();
  v57 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:82 isIndoor:0];
  v36 = v58;
  v37 = v59;
  v38 = *(v58 + 16);
  v51 = v23;
  v39 = v23;
  v40 = v60;
  v38(v59, v39, v60);
  *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v41 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v42 = type metadata accessor for Date();
  v43 = *(*(v42 - 8) + 56);
  v43(&v33[v41], 1, 1, v42);
  v43(&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v42);
  v44 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v45 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v45 - 8) + 56))(&v33[v44], 1, 1, v45);
  (*(v36 + 56))(&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v40);
  v46 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v38(&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v37, v40);
  *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v57;
  v33[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 4;
  *&v33[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v54;
  swift_beginAccess();
  *&v33[v46] = v52;
  v33[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v47 = type metadata accessor for WorkoutConfiguration(0);
  v61.receiver = v33;
  v61.super_class = v47;
  v48 = objc_msgSendSuper2(&v61, sel_init);
  v49 = *(v36 + 8);
  v49(v37, v40);
  v49(v51, v40);
  return v48;
}

uint64_t specialized WorkoutConfiguration.isEquivalent(to:)(void *a1, uint64_t a2)
{
  return specialized WorkoutConfiguration.isEquivalent(to:)(a1, a2, type metadata accessor for IntervalWorkoutConfiguration);
}

{
  return specialized WorkoutConfiguration.isEquivalent(to:)(a1, a2, type metadata accessor for PacerWorkoutConfiguration);
}

{
  return specialized WorkoutConfiguration.isEquivalent(to:)(a1, a2, type metadata accessor for RaceWorkoutConfiguration);
}

{
  return specialized WorkoutConfiguration.isEquivalent(to:)(a1, a2, type metadata accessor for GoalWorkoutConfiguration);
}

uint64_t specialized WorkoutConfiguration.isEquivalent(to:)(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
  v11 = MEMORY[0x28223BE20](v76, v10);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v73 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v74 = &v69 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v69 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v69 - v29;
  v79[3] = a3(0);
  v79[4] = &protocol witness table for WorkoutConfiguration;
  v79[0] = a1;
  outlined init with copy of Decoder(v79, v78);
  v31 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
  type metadata accessor for WorkoutConfiguration(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v72 = v13;
  v32 = v77;
  v33 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  LODWORD(v33) = v32[v33];
  v34 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  if (v33 != *(a2 + v34))
  {
    goto LABEL_11;
  }

  v70 = v6;
  v71 = v7;
  type metadata accessor for NLSessionActivityGoal(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v35 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v36 = *&v32[v35];
  v37 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  v38 = *(a2 + v37);
  v39 = v36;
  v40 = v38;
  v41 = static NSObject.== infix(_:_:)();

  if ((v41 & 1) == 0)
  {
    goto LABEL_11;
  }

  v42 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v43 = *&v32[v42];
  v44 = OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider;
  swift_beginAccess();
  v45 = *(a2 + v44);
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_11;
    }

    swift_beginAccess();
    v46 = *(v43 + 32);
    v47 = *(v43 + 40);
    swift_beginAccess();
    if ((v46 != *(v45 + 32) || v47 != *(v45 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v45)
  {
    goto LABEL_11;
  }

  v50 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  outlined init with copy of UUID?(&v32[v50], v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v51 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  swift_beginAccess();
  v52 = *(v76 + 48);
  outlined init with copy of UUID?(v30, v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of UUID?(a2 + v51, &v16[v52], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v53 = v70;
  v54 = *(v71 + 48);
  if (v54(v16, 1, v70) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_1(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (v54(&v16[v52], 1, v53) == 1)
    {
      v69 = v54;
      _s10Foundation4UUIDVSgWOhTm_1(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      goto LABEL_21;
    }

LABEL_26:
    _s10Foundation4UUIDVSgWOhTm_1(v16, &_s10Foundation4DateVSg_ADtMd, &_s10Foundation4DateVSg_ADtMR);
    goto LABEL_12;
  }

  outlined init with copy of UUID?(v16, v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v54(&v16[v52], 1, v53) == 1)
  {

    _s10Foundation4UUIDVSgWOhTm_1(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v71 + 8))(v27, v53);
    goto LABEL_26;
  }

  v69 = v54;
  (*(v71 + 32))(v75, &v16[v52], v53);
  lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v56 = *(v71 + 8);
  v56(v75, v70);
  _s10Foundation4UUIDVSgWOhTm_1(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v56(v27, v70);
  v53 = v70;
  _s10Foundation4UUIDVSgWOhTm_1(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v55)
  {
LABEL_21:
    v57 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    v58 = v74;
    outlined init with copy of UUID?(&v32[v57], v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v59 = OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate;
    swift_beginAccess();
    v60 = *(v76 + 48);
    v16 = v72;
    outlined init with copy of UUID?(v58, v72, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v61 = a2 + v59;
    v62 = v60;
    outlined init with copy of UUID?(v61, &v16[v60], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v63 = v69;
    if (v69(v16, 1, v53) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_1(v58, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

      if (v63(&v16[v62], 1, v53) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_1(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v48 = 1;
        goto LABEL_13;
      }
    }

    else
    {
      v64 = v73;
      outlined init with copy of UUID?(v16, v73, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v63(&v16[v62], 1, v53) != 1)
      {
        v65 = v62;
        v66 = v71;
        v67 = v75;
        (*(v71 + 32))(v75, &v16[v65], v53);
        lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v48 = dispatch thunk of static Equatable.== infix(_:_:)();

        v68 = *(v66 + 8);
        v68(v67, v53);
        _s10Foundation4UUIDVSgWOhTm_1(v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        v68(v64, v53);
        _s10Foundation4UUIDVSgWOhTm_1(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        goto LABEL_13;
      }

      _s10Foundation4UUIDVSgWOhTm_1(v74, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

      (*(v71 + 8))(v64, v53);
    }

    goto LABEL_26;
  }

LABEL_11:

LABEL_12:
  v48 = 0;
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v79);
  return v48 & 1;
}

id specialized MultiSportWorkoutConfiguration.__allocating_init(_:uuid:occurrence:)(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v34 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v32 - v16;
  v33 = *(v10 + 16);
  v35 = &v32 - v16;
  v33(&v32 - v16, a2, v9);
  v18 = objc_allocWithZone(type metadata accessor for MultiSportWorkoutConfiguration(0));
  v19 = OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration__title;
  v40 = 0;
  v41 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v5 + 32))(&v18[v19], v8, v4);
  v18[OBJC_IVAR____TtC11WorkoutCore30MultiSportWorkoutConfiguration_overrideDeviceCapability] = 0;
  swift_beginAccess();
  v39 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd, &_sSay11WorkoutCore04GoalA13ConfigurationCGMR);
  Published.init(initialValue:)();
  swift_endAccess();
  v34 = [objc_allocWithZone(MEMORY[0x277D0A810]) initWithActivityTypeIdentifier:82 isIndoor:0];
  v20 = v17;
  v21 = v33;
  v33(v14, v20, v9);
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v23 = type metadata accessor for Date();
  v24 = *(*(v23 - 8) + 56);
  v24(&v18[v22], 1, 1, v23);
  v24(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v23);
  v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v26 = type metadata accessor for WorkoutPlan.Route();
  (*(*(v26 - 8) + 56))(&v18[v25], 1, 1, v26);
  (*(v10 + 56))(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v9);
  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v21(&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v14, v9);
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v34;
  v18[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 4;
  *&v18[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v37;
  swift_beginAccess();
  *&v18[v27] = 0;
  v18[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v28 = type metadata accessor for WorkoutConfiguration(0);
  v38.receiver = v18;
  v38.super_class = v28;
  v29 = objc_msgSendSuper2(&v38, sel_init);
  v30 = *(v10 + 8);
  v30(v36, v9);
  v30(v14, v9);
  v30(v35, v9);
  return v29;
}

uint64_t specialized static MultiSportWorkoutConfiguration.displayName.getter()
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = MEMORY[0x20F2E6C00](0xD000000000000020, 0x800000020B458910);
  v3 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v5;
}

uint64_t specialized MultiSportWorkoutConfiguration.configOrderingIsValid(_:)(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_23:
    v2 = __CocoaSet.count.getter();
    if (v2 < 2)
    {
      return 0;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < 2)
    {
      return 0;
    }
  }

  v3 = 0;
  v4 = v2 - 1;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v23 = v1;
  v7 = (v1 + 40);
  v1 = &selRef_adjustedStatisticsForStatistics_;
  do
  {
    if (v4 == v3)
    {
      return 1;
    }

    if (v5)
    {
      v13 = MEMORY[0x20F2E7A20](v3, v23);
    }

    else
    {
      if (v3 >= *(v6 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v13 = *(v7 - 1);
    }

    v14 = v13;
    v15 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v16 = *&v14[v15];

    v17 = [v16 identifier];
    if (v5)
    {
      v8 = MEMORY[0x20F2E7A20](v3 + 1, v23);
    }

    else
    {
      if (v3 + 1 >= *(v6 + 16))
      {
        goto LABEL_22;
      }

      v8 = *v7;
    }

    v9 = v8;
    v10 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
    swift_beginAccess();
    v11 = *&v9[v10];

    v12 = [v11 identifier];
    ++v7;
    ++v3;
  }

  while (v17 != v12);
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.multisport);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134218496;
    *(v22 + 4) = v17;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v3 - 1;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v3;
    _os_log_impl(&dword_20AEA4000, v20, v21, "Duplicate type %lu at %ld and %ld", v22, 0x20u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [GoalWorkoutConfiguration] and conformance [A];
  if (!lazy protocol witness table cache variable for type [GoalWorkoutConfiguration] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd, &_sSay11WorkoutCore04GoalA13ConfigurationCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [GoalWorkoutConfiguration] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultiSportWorkoutConfiguration.CodingKeys and conformance MultiSportWorkoutConfiguration.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [GoalWorkoutConfiguration] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd, &_sSay11WorkoutCore04GoalA13ConfigurationCGMR);
    lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(a2, type metadata accessor for GoalWorkoutConfiguration, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id specialized static MultiSportWorkoutConfiguration.canonical()()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v94 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v73 - v7;
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v73 - v10;
  if (one-time initialization token for msOpenSwim != -1)
  {
    swift_once();
  }

  v82 = static FIUIWorkoutActivityType.msOpenSwim;
  v12 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v81 = specialized Occurrence.__allocating_init(count:)(0);
  v13 = v1[2];
  v13(v8, v11, v0);
  v92 = type metadata accessor for GoalWorkoutConfiguration(0);
  v14 = objc_allocWithZone(v92);
  v77 = v8;
  swift_beginAccess();
  v100 = v12;
  v15 = type metadata accessor for NLSessionActivityGoal(0, &lazy cache variable for type metadata for NLSessionActivityGoal, 0x277D0A838);
  v80 = v12;
  v91 = v15;
  Published.init(initialValue:)();
  swift_endAccess();
  v16 = v94;
  v13(v94, v8, v0);
  *&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v17 = OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate;
  v18 = type metadata accessor for Date();
  v19 = *(v18 - 8);
  v20 = *(v19 + 56);
  v74 = v11;
  v21 = v19 + 56;
  v20(&v14[v17], 1, 1, v18);
  v90 = v18;
  v89 = v20;
  v88 = v21;
  v20(&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v18);
  v22 = OBJC_IVAR___WOCoreWorkoutConfiguration_route;
  v23 = type metadata accessor for WorkoutPlan.Route();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v87 = v23;
  v86 = v25;
  v85 = v24 + 56;
  (v25)(&v14[v22], 1, 1);
  v26 = v1[7];
  v84 = v1 + 7;
  v83 = v26;
  v26(&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v27 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v93 = v13;
  v13(&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v16, v0);
  v28 = v82;
  *&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v82;
  v14[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v14[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v81;
  swift_beginAccess();
  *&v14[v27] = 0;
  v29 = v74;
  v14[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v30 = type metadata accessor for WorkoutConfiguration(0);
  v101.receiver = v14;
  v101.super_class = v30;
  v81 = v30;
  v31 = v28;
  v79 = objc_msgSendSuper2(&v101, sel_init);

  v32 = v1[1];
  v80 = v1 + 1;
  v33 = v77;
  v32(v16, v0);
  v32(v33, v0);
  v82 = v32;
  v32(v29, v0);
  if (one-time initialization token for msOutdoorCycle != -1)
  {
    swift_once();
  }

  v78 = static FIUIWorkoutActivityType.msOutdoorCycle;
  v34 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v75 = specialized Occurrence.__allocating_init(count:)(0);
  v35 = v93;
  v93(v33, v29, v0);
  v36 = objc_allocWithZone(v92);
  swift_beginAccess();
  v98 = v34;
  v76 = v34;
  Published.init(initialValue:)();
  swift_endAccess();
  v37 = v94;
  v35(v94, v33, v0);
  *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v38 = v90;
  v39 = v89;
  v89(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v90);
  v39(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v38);
  v86(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v87);
  v83(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v40 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v35(&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v37, v0);
  v41 = v78;
  *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v78;
  v36[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v36[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v75;
  swift_beginAccess();
  *&v36[v40] = 0;
  v36[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v99.receiver = v36;
  v99.super_class = v81;
  v42 = v41;
  v78 = objc_msgSendSuper2(&v99, sel_init);

  v43 = v82;
  v82(v37, v0);
  v43(v33, v0);
  v43(v29, v0);
  if (one-time initialization token for msOutdoorRun != -1)
  {
    swift_once();
  }

  v76 = static FIUIWorkoutActivityType.msOutdoorRun;
  v44 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:0 value:0];
  UUID.init()();
  v75 = specialized Occurrence.__allocating_init(count:)(0);
  v45 = v93;
  v93(v33, v29, v0);
  v46 = objc_allocWithZone(v92);
  swift_beginAccess();
  v95 = v44;
  v92 = v44;
  Published.init(initialValue:)();
  swift_endAccess();
  v47 = v94;
  v45(v94, v33, v0);
  *&v46[OBJC_IVAR___WOCoreWorkoutConfiguration_externalProvider] = 0;
  v48 = v90;
  v49 = v89;
  v89(&v46[OBJC_IVAR___WOCoreWorkoutConfiguration_scheduledDate], 1, 1, v90);
  v49(&v46[OBJC_IVAR___WOCoreWorkoutConfiguration_lastCompletedDate], 1, 1, v48);
  v86(&v46[OBJC_IVAR___WOCoreWorkoutConfiguration_route], 1, 1, v87);
  v83(&v46[OBJC_IVAR___WOCoreWorkoutConfiguration_originalConfigurationReferenceUUID], 1, 1, v0);
  v50 = OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs;
  *&v46[OBJC_IVAR___WOCoreWorkoutConfiguration_alternativeUUIDs] = 0;
  v45(&v46[OBJC_IVAR___WOCoreWorkoutConfiguration_uuid], v47, v0);
  v51 = v76;
  *&v46[OBJC_IVAR___WOCoreWorkoutConfiguration_activityType] = v76;
  v46[OBJC_IVAR___WOCoreWorkoutConfiguration_type] = 0;
  *&v46[OBJC_IVAR___WOCoreWorkoutConfiguration_occurrence] = v75;
  swift_beginAccess();
  *&v46[v50] = 0;
  v46[OBJC_IVAR___WOCoreWorkoutConfiguration_usedProtobuf] = 0;
  v97.receiver = v46;
  v97.super_class = v81;
  v52 = v51;
  v53 = objc_msgSendSuper2(&v97, sel_init);

  v54 = v82;
  v82(v47, v0);
  v54(v33, v0);
  v54(v29, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_20B42C8E0;
  v56 = v79;
  v57 = v78;
  *(v55 + 32) = v79;
  *(v55 + 40) = v57;
  *(v55 + 48) = v53;
  v58 = v56;
  v59 = v57;
  v60 = v53;
  UUID.init()();
  v61 = specialized Occurrence.__allocating_init(count:)(0);
  v62 = specialized MultiSportWorkoutConfiguration.__allocating_init(_:uuid:occurrence:)(v55, v29, v61);
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v64 = [objc_opt_self() bundleForClass_];
  v65 = MEMORY[0x20F2E6C00](0xD00000000000001CLL, 0x800000020B458880);
  v66 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v67 = [v64 localizedStringForKey:v65 value:0 table:v66];

  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v70 = v69;

  swift_getKeyPath();
  swift_getKeyPath();
  v95 = v68;
  v96 = v70;
  v71 = v62;
  static Published.subscript.setter();

  return v71;
}

uint64_t type metadata accessor for MultiSportWorkoutConfiguration(uint64_t a1)
{
  result = type metadata singleton initialization cache for MultiSportWorkoutConfiguration;
  if (!type metadata singleton initialization cache for MultiSportWorkoutConfiguration)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for MultiSportWorkoutConfiguration(uint64_t a1)
{
  type metadata accessor for Published<[GoalWorkoutConfiguration]>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<String>();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[GoalWorkoutConfiguration]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[GoalWorkoutConfiguration]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore04GoalA13ConfigurationCGMd, &_sSay11WorkoutCore04GoalA13ConfigurationCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[GoalWorkoutConfiguration]>);
    }
  }
}

uint64_t getEnumTagSinglePayload for MultiSportWorkoutConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MultiSportWorkoutConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for NLSessionActivityGoal(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_1(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type GoalWorkoutConfiguration and conformance WorkoutConfiguration(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SessionActivityDeviceObserver.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SessionActivityDeviceObserver.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR___WOSessionActivityDeviceObserver_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SessionActivityDeviceObserver.delegate.modify;
}

void SessionActivityDeviceObserver.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
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

id SessionActivityDeviceObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SessionActivityDeviceObserver.init()()
{
  if (MEMORY[0x277D84F90] >> 62 && __CocoaSet.count.getter())
  {
    v1 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *&v0[OBJC_IVAR___WOSessionActivityDeviceObserver_cancellables] = v1;
  v2 = OBJC_IVAR___WOSessionActivityDeviceObserver_workoutDevicesProvider;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static WorkoutDevicesProvider.shared;
  *&v0[v2] = static WorkoutDevicesProvider.shared;
  swift_unknownObjectWeakInit();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SessionActivityDeviceObserver();
  v4 = v3;
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall SessionActivityDeviceObserver.startObserving()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GSo17OS_dispatch_queueCGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - v12;
  v14 = OBJC_IVAR___WOSessionActivityDeviceObserver_cancellables;
  swift_beginAccess();
  v15 = *(v0 + v14);
  if ((v15 & 0xC000000000000001) != 0)
  {

    v16 = __CocoaSet.count.getter();

    if (v16)
    {
      return;
    }
  }

  else if (*(v15 + 16))
  {
    return;
  }

  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v23 = v10;
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.devices);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v18, v19, "SessionActivityDeviceObserver start observing", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  type metadata accessor for OS_dispatch_queue();
  v21 = static OS_dispatch_queue.main.getter();
  v25 = v21;
  v22 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR, MEMORY[0x277CBCEC8]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x277D85228]);
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v4);

  (*(v24 + 8))(v8, v5);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<[WorkoutDevice]>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GSo17OS_dispatch_queueCGMR, MEMORY[0x277CBCD60]);
  Publisher<>.sink(receiveValue:)();

  (*(v23 + 8))(v13, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

void closure #1 in SessionActivityDeviceObserver.startObserving()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.devices);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x20F2E6F70](v2, &type metadata for WorkoutDevice);
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "SessionActivityDeviceObserver observed device change devices=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      [v13 devicesChanged];

      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
    v12 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20AEA4000, v12, v14, "self nil when observing device change to evaluate in-session behavior", v15, 2u);
      MEMORY[0x20F2E9420](v15, -1, -1);
    }
  }
}

Swift::Void __swiftcall SessionActivityDeviceObserver.stopObserving()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOSessionActivityDeviceObserver_cancellables;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = __CocoaSet.count.getter();

    if (!v4)
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if (one-time initialization token for devices == -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    swift_once();
LABEL_6:
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.devices);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_20AEA4000, v6, v7, "SessionActivityDeviceObserver stop observing", v8, 2u);
      MEMORY[0x20F2E9420](v8, -1, -1);
    }

    v23 = v2;
    v9 = *(v1 + v2);
    if ((v9 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      type metadata accessor for AnyCancellable();
      lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
      Set.Iterator.init(_cocoa:)();
      v11 = v25;
      v10 = v26;
      v12 = v27;
      v2 = v28;
      v13 = v29;
    }

    else
    {
      v14 = -1 << *(v9 + 32);
      v10 = v9 + 56;
      v12 = ~v14;
      v15 = -v14;
      v16 = v15 < 64 ? ~(-1 << v15) : -1;
      v13 = v16 & *(v9 + 56);
      swift_bridgeObjectRetain_n();
      v2 = 0;
      v11 = v9;
    }

    v17 = (v12 + 64) >> 6;
    if (v11 < 0)
    {
      break;
    }

LABEL_15:
    v18 = v2;
    v19 = v13;
    v20 = v2;
    if (v13)
    {
LABEL_19:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v11 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));

      if (v22)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_25;
      }

      v19 = *(v10 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for AnyCancellable();
    swift_dynamicCast();
    v20 = v2;
    v21 = v13;
    if (!v24)
    {
      break;
    }

LABEL_23:
    AnyCancellable.cancel()();

    v2 = v20;
    v13 = v21;
    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  outlined consume of Set<AnyCancellable>.Iterator._Variant(v11);

  *(v1 + v23) = MEMORY[0x277D84FA0];
}

uint64_t SessionActivityDeviceObserver.canResumeWorkout(activityType:)(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v21);

  v2 = v21;
  v3 = *(v21 + 2);
  if (v3)
  {
    v21 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v21;
    v5 = *(v21 + 2);
    v6 = 64;
    do
    {
      v7 = v2[v6];
      v21 = v4;
      v8 = *(v4 + 3);
      if (v5 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v5 + 1, 1);
        v4 = v21;
      }

      *(v4 + 2) = v5 + 1;
      v4[v5 + 32] = v7;
      v6 += 80;
      ++v5;
      --v3;
    }

    while (v3);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_28:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v10 = *(v4 + 2);
  v9 = *(v4 + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
  }

  v12 = 0;
  *(v4 + 2) = v11;
  v4[v10 + 32] = 3;
  while (1)
  {
    if (v12 >= *(v4 + 2))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v4[v12 + 32] != 3)
    {
      break;
    }

    v13 = [a1 effectiveTypeIdentifier];
    v14 = (v13 - 13) > 0x3A || ((1 << (v13 - 13)) & 0x600008001000801) == 0;
    if (!v14 && ([a1 isIndoor] & 1) == 0)
    {
      break;
    }

    if (v11 == ++v12)
    {
      v15 = 0;
      goto LABEL_22;
    }
  }

  v15 = 1;
LABEL_22:

  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.devices);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v15;
    _os_log_impl(&dword_20AEA4000, v17, v18, "SessionActivityDeviceObserver canResumeWorkout=%{BOOL}d", v19, 8u);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  return v15;
}

id SessionActivityDeviceObserver.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SessionActivityDeviceObserver();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t outlined destroy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void one-time initialization function for valueStore()
{
  v0 = one-time initialization token for healthStore;
  v1 = *MEMORY[0x277CCE4C8];
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = static HeartRateConfiguration.healthStore;
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = v2;
  v5 = [v3 initWithCategory:0 domainName:v1 healthStore:v4];

  static HeartRateConfiguration.valueStore = v5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if (one-time initialization token for nanoSyncControl != -1)
  {
    swift_once();
  }

  v6 = static WorkoutCoreInjector.nanoSyncControl;

  qword_27C75FF10 = v6;
}

void one-time initialization function for defaultRestingHeartRate()
{
  v0 = [objc_opt_self() _countPerMinuteUnit];
  v1 = [objc_opt_self() quantityWithUnit:v0 doubleValue:72.0];

  static HeartRateConfiguration.defaultRestingHeartRate = v1;
}

WorkoutCore::HeartRateConfiguration::ConfigurationType_optional __swiftcall HeartRateConfiguration.ConfigurationType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateConfiguration.ConfigurationType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateConfiguration.ConfigurationType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance HeartRateConfiguration.ConfigurationType@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void *HeartRateConfiguration.maximumHeartRate.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void *HeartRateConfiguration.restingHeartRate.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void static HeartRateConfiguration.deleteConfiguration(healthStore:)()
{
  v26 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B423A90;
  v1 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = 0xD00000000000001ELL;
  *(v0 + 40) = 0x800000020B4589F0;
  print(_:separator:terminator:)();

  if (one-time initialization token for valueStore != -1)
  {
    swift_once();
  }

  v3 = static HeartRateConfiguration.valueStore;
  v2 = qword_27C75FF10;
  v4 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B42CCC0);
  aBlock = 0;
  v5 = [v3 setNumber:0 forKey:v4 error:&aBlock];

  v6 = aBlock;
  if (v5 & 1) != 0 && (v24 = closure #1 in FastSyncHKKeyValueDomain.forceSync(), v25 = 0, aBlock = MEMORY[0x277D85DD0], v21 = 1107296256, v22 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> (), v23 = &block_descriptor_11, v7 = _Block_copy(&aBlock), v8 = v6, [v2 forceNanoSyncWithOptions:0 completion:v7], _Block_release(v7), v9 = swift_allocObject(), *(v9 + 16) = xmmword_20B423A90, *(v9 + 56) = v1, *(v9 + 32) = 0xD00000000000001ELL, *(v9 + 40) = 0x800000020B458A10, print(_:separator:terminator:)(), , v10 = MEMORY[0x20F2E6C00](0xD000000000000010, 0x800000020B458A30), aBlock = 0, LOBYTE(v7) = objc_msgSend(v3, sel_setData_forKey_error_, 0, v10, &aBlock), v10, v6 = aBlock, (v7))
  {
    v24 = closure #1 in FastSyncHKKeyValueDomain.forceSync();
    v25 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    v23 = &block_descriptor_3;
    v11 = _Block_copy(&aBlock);
    v12 = v6;
    [v2 forceNanoSyncWithOptions:0 completion:v11];
    _Block_release(v11);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_20B423A90;
    *(v13 + 56) = v1;
    *(v13 + 32) = 0xD00000000000001CLL;
    *(v13 + 40) = 0x800000020B458A50;
    print(_:separator:terminator:)();

    v14 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B458A70);
    aBlock = 0;
    v15 = [v3 setData:0 forKey:v14 error:&aBlock];

    v16 = aBlock;
    if (v15)
    {
      v24 = closure #1 in FastSyncHKKeyValueDomain.forceSync();
      v25 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      v23 = &block_descriptor_6;
      v17 = _Block_copy(&aBlock);
      v18 = v16;
      [v2 forceNanoSyncWithOptions:0 completion:v17];
      _Block_release(v17);
      return;
    }

    v19 = aBlock;
  }

  else
  {
    v19 = v6;
  }

  _convertNSErrorToError(_:)();

  swift_willThrow();
}

uint64_t HeartRateConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type HeartRateConfiguration.ConfigurationType and conformance HeartRateConfiguration.ConfigurationType()
{
  result = lazy protocol witness table cache variable for type HeartRateConfiguration.ConfigurationType and conformance HeartRateConfiguration.ConfigurationType;
  if (!lazy protocol witness table cache variable for type HeartRateConfiguration.ConfigurationType and conformance HeartRateConfiguration.ConfigurationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateConfiguration.ConfigurationType and conformance HeartRateConfiguration.ConfigurationType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeartRateConfiguration.ConfigurationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeartRateConfiguration.ConfigurationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t DataLinkHost.commandDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DataLinkHost.commandDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return DataLinkHost.commandDelegate.modify;
}

void DataLinkHost.commandDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
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

uint64_t DataLinkHost.mirroredHostDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DataLinkHost.mirroredHostDelegate.modify(uint64_t *a1))()
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return DataLinkHost.mirroredHostDelegate.modify;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DataLinkHost.MirrorLinkState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkHost.MirrorLinkState(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

void DataLinkHost.logStatus(_:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.dataLink);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315906;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v14);
    *(v9 + 12) = 1024;
    *(v9 + 14) = *(v3 + 88);
    *(v9 + 18) = 1024;
    *(v9 + 20) = *(v3 + 89);

    *(v9 + 24) = 2080;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v14);

    *(v9 + 26) = v13;
    _os_log_impl(&dword_20AEA4000, v7, v8, "%s activityAllowed: %{BOOL}d mirroringBlocked: %{BOOL}d linkState: %s", v9, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t DataLinkHost.__allocating_init(publisher:session:coalescingPeriod:)(void *a1, void *a2, double a3)
{
  swift_allocObject();
  v6 = specialized DataLinkHost.init(publisher:session:coalescingPeriod:)(a1, a2, a3);

  return v6;
}

uint64_t DataLinkHost.init(publisher:session:coalescingPeriod:)(void *a1, void *a2, double a3)
{
  v5 = specialized DataLinkHost.init(publisher:session:coalescingPeriod:)(a1, a2, a3);

  return v5;
}

void closure #1 in DataLinkHost.init(publisher:session:coalescingPeriod:)(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in closure #1 in DataLinkHost.init(publisher:session:coalescingPeriod:);
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_202;
    v7 = _Block_copy(aBlock);

    v8 = [v5 scheduledTimerWithTimeInterval:1 repeats:v7 block:a2];
    _Block_release(v7);
    v9 = *(v4 + 128);
    *(v4 + 128) = v8;
  }
}

id closure #1 in closure #1 in DataLinkHost.init(publisher:session:coalescingPeriod:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return [a1 invalidate];
  }

  DataLinkHost.updateRemote(workoutNotification:)(0);
}

void closure #1 in DataLinkHost.startMirroring()(_BYTE *a1)
{
  a1[89] = 0;
  DataLinkHost.logStatus(_:)(0x72694D7472617473, 0xEE00676E69726F72);
  if (a1[88] == 1 && (a1[89] & 1) == 0 && !a1[90])
  {
    a1[90] = 1;
    DataLinkHost.logStatus(_:)(0xD000000000000012, 0x800000020B458CE0);
    v2 = swift_allocObject();
    swift_weakInit();

    DataLinkHealthKitHostConnection.activateLink(started:activated:)(closure #1 in DataLinkHost.activateLink()partial apply, v2, closure #2 in DataLinkHost.activateLink());
  }
}

uint64_t DataLinkHost.startMirroring()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v14 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = a2;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v15);
  _Block_release(v15);

  (*(v6 + 8))(v9, v5);
  return (*(v10 + 8))(v13, v18);
}

void closure #1 in DataLinkHost.endMirroring()(_BYTE *a1)
{
  a1[89] = 1;
  DataLinkHost.logStatus(_:)(0x6F7272694D646E65, 0xEC000000676E6972);
  if ((a1[88] != 1 || a1[89] == 1) && a1[90] == 2)
  {
    DataLinkHost.deactivateLink()();
  }
}

Swift::Void __swiftcall DataLinkHost.allowTransmission(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in DataLinkHost.allowTransmission(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_9;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

_BYTE *closure #1 in DataLinkHost.allowTransmission(_:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    result[88] = a2 & 1;
    DataLinkHost.logStatus(_:)(0xD000000000000011, 0x800000020B458D70);
    if (v4[88] == 1 && (v4[89] & 1) == 0)
    {
      if (!v4[90])
      {
        v4[90] = 1;
        DataLinkHost.logStatus(_:)(0xD000000000000012, 0x800000020B458CE0);
        v5 = swift_allocObject();
        swift_weakInit();

        DataLinkHealthKitHostConnection.activateLink(started:activated:)(closure #1 in DataLinkHost.activateLink()partial apply, v5, closure #2 in DataLinkHost.activateLink());
      }
    }

    else if (v4[90] == 2)
    {
      DataLinkHost.deactivateLink()();
    }
  }

  return result;
}

id *DataLinkHost.deinit()
{
  v1 = v0;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.dataLink);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_20AEA4000, v3, v4, "DataLinkHost going away", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = v1[6];
  DataLinkHealthKitHostConnection.unregisterCommandHandler()();

  _s11WorkoutCore28DataLinkMirroredHostDelegate_pSgXwWOh_0((v1 + 2));
  _s11WorkoutCore28DataLinkMirroredHostDelegate_pSgXwWOh_0((v1 + 4));

  return v1;
}

uint64_t DataLinkHost.__deallocating_deinit()
{
  DataLinkHost.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in DataLinkHost.activateLink()(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in DataLinkHost.activateLink();
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_177;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v7, v16);
  _Block_release(v16);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t closure #1 in closure #1 in DataLinkHost.activateLink()(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkHost._mainThreadLinkActivationHandler(_:)(a2);
  }

  return result;
}

void closure #2 in DataLinkHost.activateLink()()
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.dataLink);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v1, "activateLink activated", v2, 2u);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }
}

void DataLinkHost._mainThreadLinkActivationHandler(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (a1)
    {
      v10 = a1;
      DataLinkHost._mainThreadHandleLinkActivationError(_:)(a1);
    }

    else
    {
      *(v2 + 90) = 2;
      DataLinkHost.logStatus(_:)(0xD000000000000014, 0x800000020B458D00);
      swift_getKeyPath();
      swift_getKeyPath();
      v12[15] = 1;

      static Published.subscript.setter();
      v11 = swift_allocObject();
      swift_weakInit();

      DataLinkHealthKitHostConnection.setupCommandHandler(closure:)(partial apply for closure #1 in DataLinkHost._mainThreadLinkActivationHandler(_:), v11);

      DataLinkHost.updateRemote(workoutNotification:)(0);
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL closure #1 in DataLinkHost._mainThreadLinkActivationHandler(_:)(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v8 = v2;
    v3 = DataLinkHost.handleDataLinkCommand(_:)(&v8);
  }

  else
  {
    type metadata accessor for DataLinkError(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
    swift_allocError();
    v5 = v4;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
    (*(*(v6 - 8) + 56))(v5, 3, 5, v6);
    return 0;
  }

  return v3;
}

uint64_t DataLinkHost._mainThreadHandleLinkActivationError(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for dataLink == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.dataLink);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_20AEA4000, v12, v13, "Failed to activate connection: %{public}@", v14, 0xCu);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  *(v2 + 90) = 0;
  DataLinkHost.logStatus(_:)(0xD000000000000012, 0x800000020B458CC0);
  v18 = *(v2 + 96);
  if (v18 >= 5)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_20AEA4000, v22, v23, "Giving up on activation after 5 tries.", v24, 2u);
      MEMORY[0x20F2E9420](v24, -1, -1);
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter(&v28);

    if (v28 == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v27[14] = 0;

      return static Published.subscript.setter();
    }
  }

  else
  {
    *(v2 + 96) = v18 + 1;

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = *(v2 + 96);

      _os_log_impl(&dword_20AEA4000, v19, v20, "Retrying with reconnectionCount %{public}lu", v21, 0xCu);
      MEMORY[0x20F2E9420](v21, -1, -1);
    }

    else
    {
    }

    *(v2 + 90) = 1;
    DataLinkHost.logStatus(_:)(0xD000000000000012, 0x800000020B458CE0);
    v26 = swift_allocObject();
    swift_weakInit();

    DataLinkHealthKitHostConnection.activateLink(started:activated:)(partial apply for closure #1 in DataLinkHost.activateLink(), v26, closure #2 in DataLinkHost.activateLink());
  }

  return result;
}

void DataLinkHost.deactivateLink()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(aBlock[0]) = 0;

  static Published.subscript.setter();
  *(v0 + 90) = 0;
  swift_beginAccess();
  *(v0 + 136) = MEMORY[0x277D84FA0];

  DataLinkHost.logStatus(_:)(0x6576697463616564, 0xEC0000006B6E694CLL);
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC11WorkoutCore31DataLinkHealthKitHostConnection_session);
  aBlock[4] = closure #1 in DataLinkHealthKitHostConnection.deactivateLink();
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_169;
  v2 = _Block_copy(aBlock);
  [v1 stopMirroringToCompanionDeviceWithCompletion_];
  _Block_release(v2);
}

BOOL DataLinkHost.handleDataLinkCommand(_:)(char *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(v1 + 24);
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v16 = static OS_dispatch_queue.main.getter();
    v28 = v8;
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = Strong;
    *(v18 + 32) = v15;
    aBlock[4] = partial apply for closure #1 in DataLinkHost.handleDataLinkCommand(_:);
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_160;
    v19 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v12, v7, v19);
    _Block_release(v19);
    swift_unknownObjectRelease();

    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v28);
  }

  else
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.dataLink);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, v21, v22, "No command delegate set up", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    type metadata accessor for DataLinkError(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
    swift_allocError();
    v25 = v24;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
    (*(*(v26 - 8) + 56))(v25, 1, 5, v26);
  }

  return Strong != 0;
}

void closure #1 in DataLinkHost.handleDataLinkCommand(_:)(unsigned __int8 a1, uint64_t a2, void (**a3)(void, void))
{
  ObjectType = swift_getObjectType();
  if (a1 <= 3u)
  {
    if (a1 > 1u)
    {
      if (a1 == 2)
      {
        a3[3](ObjectType, a3);
      }

      else
      {
        a3[4](ObjectType, a3);
      }
    }

    else if (a1)
    {
      a3[1](ObjectType, a3);
    }

    else
    {
      a3[2](ObjectType, a3);
    }
  }

  else if (a1 <= 5u)
  {
    if (a1 == 4)
    {
      a3[5](ObjectType, a3);
    }

    else
    {
      a3[6](ObjectType, a3);
    }
  }

  else if (a1 == 6)
  {
    a3[7](ObjectType, a3);
  }

  else if (a1 == 7)
  {
    a3[8](ObjectType, a3);
  }

  else
  {
    a3[9](ObjectType, a3);
  }
}

void DataLinkHost.sendUpdatedData(workoutNotification:closure:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    swift_beginAccess();
    v14 = *(v4 + 144);
    *(v4 + 144) = MEMORY[0x277D84FA0];
    DataLinkHealthKitHostConnection.sendWorkoutData(_:dirtyPublishers:closure:)(*(v4 + 56), v14, a2, a3);

    if (a1)
    {
      v17 = a1;
      DataLinkHealthKitHostConnection.sendNotification(_:)();
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
    swift_once();
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.dataLink);
    v16 = a3;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = a3;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_20AEA4000, v17, v18, "Unable to encode and send: %{public}@", v19, 0xCu);
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);

LABEL_5:
      return;
    }
  }
}

uint64_t DataLinkHost.sendNotification(_:)(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in DataLinkHost.sendNotification(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_16;
  v15 = _Block_copy(aBlock);
  v16 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #1 in DataLinkHost.sendNotification(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkHost.updateRemote(workoutNotification:)(a2);
  }

  return result;
}

uint64_t DataLinkHost.setupKeyedListeners(_:)(void *a1)
{
  v2 = v1;
  result = specialized MetricsPublisher.observableSubs.getter();
  v5 = 0;
  v7 = result + 64;
  v6 = *(result + 64);
  v29 = result;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  if ((v9 & v6) != 0)
  {
    do
    {
LABEL_10:
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v14 = (*(v29 + 48) + 16 * (v13 | (v5 << 6)));
        v15 = v14[1];
        v30 = *v14;
        type metadata accessor for MetricsPublisher(0);

        v16 = a1;
        swift_getAtAnyKeyPath();

        if (v33[3])
        {
          break;
        }

        result = outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v33, &_sypSgMd, &_sypSgMR);
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine16ObservableObject_pMd, &_s7Combine16ObservableObject_pMR);
      if (swift_dynamicCast())
      {
        ObjectType = swift_getObjectType();
        v28 = DataLinkHost.createSink<A>(_:key:)(v31, v30, v15, ObjectType, v32);
        if (one-time initialization token for dataLink != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static WOLog.dataLink);

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v27 = v2;
          v21 = swift_slowAlloc();
          v26 = a1;
          v22 = swift_slowAlloc();
          v33[0] = v22;
          *v21 = 136446210;
          *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v15, v33);
          _os_log_impl(&dword_20AEA4000, v19, v20, "Created sink with label %{public}s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          v23 = v22;
          a1 = v26;
          MEMORY[0x20F2E9420](v23, -1, -1);
          v24 = v21;
          v2 = v27;
          MEMORY[0x20F2E9420](v24, -1, -1);
        }

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v2 + 120);
        *(v2 + 120) = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, v30, v15, isUniquelyReferenced_nonNull_native);

        *(v2 + 120) = v31;
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    while (v10);
  }

LABEL_6:
  while (1)
  {
    v12 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
    }

    v10 = *(v7 + 8 * v12);
    ++v5;
    if (v10)
    {
      v5 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized DataLinkHost.createSink<A>(_:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v16[3] = type metadata accessor for MetricsPublisher(0);
  v16[0] = a1;
  outlined init with copy of Any(v16, v15);
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore22TimeSensitivePublisher_pMd, &_s11WorkoutCore22TimeSensitivePublisher_pMR);
  v7 = swift_dynamicCast();
  if ((v7 & 1) == 0)
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
  }

  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v13, &_s11WorkoutCore22TimeSensitivePublisher_pSgMd, &_s11WorkoutCore22TimeSensitivePublisher_pSgMR);
  __swift_destroy_boxed_opaque_existential_0(v16);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type MetricsPublisher and conformance MetricsPublisher, type metadata accessor for MetricsPublisher, &protocol conformance descriptor for MetricsPublisher);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = closure #1 in DataLinkHost.createSink<A>(_:key:)partial apply;
  *(v10 + 24) = v9;
  type metadata accessor for ObservableObjectPublisher();

  v11 = Publisher<>.sink(receiveValue:)();

  return v11;
}

uint64_t DataLinkHost.createSink<A>(_:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v13 = &v21 - v12;
  v26[3] = a4;
  v26[0] = a1;
  outlined init with copy of Any(v26, v25);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore22TimeSensitivePublisher_pMd, &_s11WorkoutCore22TimeSensitivePublisher_pMR);
  v14 = swift_dynamicCast();
  if ((v14 & 1) == 0)
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
  }

  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v23, &_s11WorkoutCore22TimeSensitivePublisher_pSgMd, &_s11WorkoutCore22TimeSensitivePublisher_pSgMR);
  __swift_destroy_boxed_opaque_existential_0(v26);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v17 = v22;
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = a3;
  *(v16 + 40) = v14;
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = a5;
  v18[4] = partial apply for closure #1 in DataLinkHost.createSink<A>(_:key:);
  v18[5] = v16;
  swift_getAssociatedConformanceWitness();

  v19 = Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v13, AssociatedTypeWitness);

  return v19;
}

uint64_t closure #1 in DataLinkHost.createSink<A>(_:key:)(uint64_t a1, uint64_t a2, Swift::Int a3, Swift::Int a4, int a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      DataLinkHost.markDirty(key:timeSensitive:)(a3, a4, a5 & 1);
    }
  }

  else
  {
    v28 = a3;
    v30 = v9;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v29 = a5;
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.dataLink);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20AEA4000, v20, v21, "Published variables should only ever be updated on the main thread.", v22, 2u);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v23 = static OS_dispatch_queue.main.getter();
    v24 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v25 = swift_allocObject();
    v26 = v28;
    *(v25 + 16) = v24;
    *(v25 + 24) = v26;
    *(v25 + 32) = a4;
    *(v25 + 40) = v29 & 1;
    aBlock[4] = partial apply for closure #1 in closure #1 in DataLinkHost.createSink<A>(_:key:);
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_124;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v17, v12, v27);
    _Block_release(v27);

    (*(v30 + 8))(v12, v8);
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

uint64_t closure #1 in closure #1 in DataLinkHost.createSink<A>(_:key:)(uint64_t a1, Swift::Int a2, Swift::Int a3, char a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkHost.markDirty(key:timeSensitive:)(a2, a3, a4 & 1);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> ()(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  a2(v10);
  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t DataLinkHost.markDirty(key:timeSensitive:)(Swift::Int a1, Swift::Int a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v16 = static OS_dispatch_queue.main.getter();
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v17 = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  swift_beginAccess();

  specialized Set._Variant.insert(_:)(&v35, a1, a2);
  swift_endAccess();

  if ((a3 & 1) == 0)
  {
    return result;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static WOLog.dataLink);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_20AEA4000, v20, v21, "Queueing time sensitive update", v22, 2u);
    MEMORY[0x20F2E9420](v22, -1, -1);
  }

  v23 = static OS_dispatch_queue.main.getter();
  v24 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = partial apply for closure #1 in DataLinkHost.markDirty(key:timeSensitive:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_110;
  v25 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v26 = v30;
  v27 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v26, v25);
  _Block_release(v25);

  (*(v32 + 8))(v26, v27);
  return (*(v29 + 8))(v11, v31);
}

uint64_t closure #1 in DataLinkHost.markDirty(key:timeSensitive:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkHost.updateRemote(workoutNotification:)(0);
  }

  return result;
}

void DataLinkHost.updateRemote(workoutNotification:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (*(v2 + 90) != 2)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  if (!*(*(v2 + 144) + 16))
  {
    return;
  }

  swift_beginAccess();
  if (!*(*(v2 + 136) + 16))
  {
LABEL_4:
    v10 = *(v2 + 104);
    v4 = v10 + 1;
    if (v10 != -1)
    {
      *(v2 + 104) = v4;
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(&v27, v4);
      swift_endAccess();
      if (one-time initialization token for dataLink == -1)
      {
LABEL_6:
        v11 = type metadata accessor for Logger();
        __swift_project_value_buffer(v11, static WOLog.dataLink);
        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134349056;
          *(v14 + 4) = v4;
          _os_log_impl(&dword_20AEA4000, v12, v13, "Sending data sequence %{public}lu", v14, 0xCu);
          MEMORY[0x20F2E9420](v14, -1, -1);
        }

        v15 = swift_allocObject();
        swift_weakInit();
        v16 = swift_allocObject();
        v16[2] = v4;
        v16[3] = v15;

        DataLinkHost.sendUpdatedData(workoutNotification:closure:)(a1, partial apply for closure #1 in DataLinkHost.updateRemote(workoutNotification:), v16);

        return;
      }

LABEL_20:
      swift_once();
      goto LABEL_6;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = Set.description.getter();
  v19 = v18;

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static WOLog.dataLink);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26[0] = v24;
    *v23 = 136446210;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v26);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_20AEA4000, v21, v22, "Delaying send to next timer as we're still waiting on %{public}s. Fitness may be in the background.", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x20F2E9420](v24, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in DataLinkHost.updateRemote(workoutNotification:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.dataLink);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_20AEA4000, v4, v5, "Finished sequence %lu", v6, 0xCu);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(a1);
    swift_endAccess();
  }

  return result;
}

void DataLinkHost.workoutSession(_:didChangeTo:from:date:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v7 workoutSession:a1 didChangeToState:a2 fromState:a3 date:isa];
}

void DataLinkHost.workoutSession(_:didFailWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  v5 = _convertErrorToNSError(_:)();
  [v4 workoutSession:a1 didFailWithError:v5];
}

void DataLinkHost.workoutSession(_:didReceiveDataFromRemoteDevice:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_20B423A90;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  outlined copy of Data._Representation(a2, a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 workoutSession:a1 didReceiveDataFromRemoteWorkoutSession:isa];
}

Swift::Void __swiftcall DataLinkHost.workoutSession(_:didReceiveDataFromRemoteWorkoutSession:)(HKWorkoutSession _, Swift::OpaquePointer didReceiveDataFromRemoteWorkoutSession)
{
  v4 = *(v2 + 48);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v4 workoutSession:_.super.isa didReceiveDataFromRemoteWorkoutSession:isa];
}

void DataLinkHost.workoutSession(_:didDisconnectFromRemoteDeviceWithError:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 48);
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [v4 workoutSession:a1 didDisconnectFromRemoteDeviceWithError:?];
}

uint64_t DataLinkHost.sendMirroredHostCommand(_:acknowledged:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v6 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for UUID();
  v33 = *(v17 - 8);
  v34 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v20 = *a1;
  v31 = *(v3 + 48);
  v32 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v21 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v16, 1, 1, v21);
  swift_retain_n();
  swift_retain_n();
  UnknownStorage.init()();
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v16, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  *v16 = v20;
  v16[8] = 1;
  swift_storeEnumTagMultiPayload();
  v22(v16, 0, 1, v21);
  v23 = swift_allocObject();
  v29 = v20;
  *(v23 + 16) = v20;
  v24 = v35;
  *(v23 + 24) = v3;
  *(v23 + 32) = v24;
  *(v23 + 40) = a3;
  v25 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v26 = *(*(v25 - 8) + 56);
  v26(v9, 1, 1, v25);
  swift_retain_n();
  swift_retain_n();
  UnknownStorage.init()();
  v27 = v30;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v16, v30, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v27, v9, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v26(v9, 0, 1, v25);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v9, partial apply for closure #1 in DataLinkHost.sendMirroredHostCommand(_:acknowledged:), v23);
  outlined destroy of Apple_Workout_Core_DataLinkMessage(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  (*(v33 + 8))(v32, v34);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v16, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in DataLinkHost.sendMirroredHostCommand(_:acknowledged:)(char a1, void *a2, char a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.dataLink);
  v10 = a2;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v13 = 136315906;
    v27 = a5;
    if (a3)
    {
      if (a3 == 1)
      {
        v16 = 0xD000000000000020;
      }

      else
      {
        v16 = 0x75716552676E6970;
      }

      if (a3 == 1)
      {
        v17 = 0x800000020B458D20;
      }

      else
      {
        v17 = 0xEB00000000747365;
      }
    }

    else
    {
      v16 = 0xD000000000000019;
      v17 = 0x800000020B458D50;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1 & 1;
    *(v13 + 18) = 2112;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v13 + 20) = v20;
    *v14 = v21;
    *(v13 + 28) = 2080;
    swift_beginAccess();
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v22 = Dictionary.Keys.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v28);

    *(v13 + 30) = v25;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[mirrored] sendMirroredHostCommand acknowledged (%s) (success: %{BOOL}d, error: %@) all expected %s", v13, 0x26u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);

    a5 = v27;
  }

  else
  {
  }

  return a5(a1 & 1, a2);
}

uint64_t DataLinkHost.sendMirroredHostAlertStackRequest(_:acknowledged:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v43 = a2;
  v37 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0) - 8;
  MEMORY[0x28223BE20](v37, v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v39 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v34 - v17;
  v42 = type metadata accessor for UUID();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v19);
  v21 = a1[1];
  v46 = *a1;
  v47 = v21;
  v48 = a1[2];
  v49 = *(a1 + 6);
  v35 = v3;
  v38 = *(v3 + 48);
  v40 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v22 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v18, 1, 1, v22);
  outlined init with copy of MirroredHostAlertStackRequest(&v46, v45);

  UnknownStorage.init()();
  v44 = &v46;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostAlertStackRequest and conformance Apple_Workout_Core_MirroredHostAlertStackRequest, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v18, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v11, v18, type metadata accessor for Apple_Workout_Core_MirroredHostAlertStackRequest);
  swift_storeEnumTagMultiPayload();
  v24 = v22;
  v25 = a3;
  v26 = v36;
  v23(v18, 0, 1, v24);
  v27 = v35;
  v28 = swift_allocObject();
  v29 = v47;
  *(v28 + 16) = v46;
  *(v28 + 32) = v29;
  *(v28 + 48) = v48;
  *(v28 + 64) = v49;
  *(v28 + 72) = v27;
  *(v28 + 80) = v43;
  *(v28 + 88) = v25;
  v30 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v31 = *(*(v30 - 8) + 56);
  v31(v26, 1, 1, v30);
  outlined init with copy of MirroredHostAlertStackRequest(&v46, v45);

  UnknownStorage.init()();
  v32 = v39;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v18, v39, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v26, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v32, v26, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v31(v26, 0, 1, v30);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v26, partial apply for closure #1 in DataLinkHost.sendMirroredHostAlertStackRequest(_:acknowledged:), v28);
  outlined destroy of Apple_Workout_Core_DataLinkMessage(v26, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  outlined destroy of MirroredHostAlertStackRequest(&v46);
  (*(v41 + 8))(v40, v42);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v18, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in DataLinkHost.sendMirroredHostAlertStackRequest(_:acknowledged:)(char a1, void *a2, __int128 *a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.dataLink);
  outlined init with copy of MirroredHostAlertStackRequest(a3, v33);
  v10 = a2;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined destroy of MirroredHostAlertStackRequest(a3);

  if (os_log_type_enabled(v11, v12))
  {
    v29 = v12;
    v30 = a5;
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v32 = v28;
    *v13 = 136315906;
    v14 = a3[1];
    v33[0] = *a3;
    v33[1] = v14;
    v33[2] = a3[2];
    v34 = *(a3 + 6);
    outlined init with copy of MirroredHostAlertStackRequest(a3, v31);
    v15 = MirroredHostAlertStackRequest.description.getter();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v32);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1 & 1;
    *(v13 + 18) = 2112;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v13 + 20) = v20;
    *v27 = v21;
    *(v13 + 28) = 2080;
    swift_beginAccess();
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v22 = Dictionary.Keys.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v32);

    *(v13 + 30) = v25;
    _os_log_impl(&dword_20AEA4000, v11, v29, "[mirrored] sendMirroredHostAlertStackRequest acknowledged (%s) (success: %{BOOL}d, error: %@) all expected %s", v13, 0x26u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v27, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v28, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);

    a5 = v30;
  }

  else
  {
  }

  return a5(a1 & 1, a2);
}

uint64_t DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:)(unsigned __int8 *a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v53 = a3;
  v63 = a2;
  v58 = (type metadata accessor for Apple_Workout_Core_DataLinkMessage(0) - 8);
  MEMORY[0x28223BE20](v58, v5);
  v55 = &v49[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  started = type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration(0);
  MEMORY[0x28223BE20](started, v7);
  v52 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v56 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v49[-v14];
  v16 = type metadata accessor for UUID();
  v60 = *(v16 - 8);
  v61 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = *a1;
  v20 = a1[1];
  v21 = *(a1 + 1);
  v62 = v3;
  v57 = *(v3 + 48);
  v59 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  UUID.init()();
  v22 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v15, 1, 1, v22);
  v24 = v21;
  v51 = v24;

  v25 = v53;

  UnknownStorage.init()();
  v64 = v19;
  v65 = v20;
  v66 = v24;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostStartConfiguration and conformance Apple_Workout_Core_MirroredHostStartConfiguration, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostStartConfiguration);
  v26 = v52;
  static Message.with(_:)();
  started = 0;
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v15, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v26, v15, type metadata accessor for Apple_Workout_Core_MirroredHostStartConfiguration);
  swift_storeEnumTagMultiPayload();
  v23(v15, 0, 1, v22);
  v27 = swift_allocObject();
  LODWORD(v52) = v19;
  *(v27 + 16) = v19;
  v28 = v55;
  v50 = v20;
  *(v27 + 17) = v20;
  v29 = v51;
  v31 = v62;
  v30 = v63;
  *(v27 + 24) = v51;
  *(v27 + 32) = v31;
  *(v27 + 40) = v30;
  *(v27 + 48) = v25;
  v32 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v33 = *(*(v32 - 8) + 56);
  v33(v28, 1, 1, v32);
  v34 = v29;

  UnknownStorage.init()();
  v58 = v15;
  v35 = v56;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v15, v56, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v28, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v35, v28, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v33(v28, 0, 1, v32);
  v36 = v31;
  v37 = started;
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v28, partial apply for closure #1 in DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:), v27);
  if (v37)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static WOLog.dataLink);
    v39 = v37;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v37;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_20AEA4000, v40, v41, "[mirrored] Error sending MirroredHostMessage: %@", v42, 0xCu);
      outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v43, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      v36 = v62;
      MEMORY[0x20F2E9420](v43, -1, -1);
      MEMORY[0x20F2E9420](v42, -1, -1);
    }

    v46 = v37;
    if (v50)
    {
      v47 = 256;
    }

    else
    {
      v47 = 0;
    }

    closure #1 in DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:)(0, v37, v47 | v52, v34, v36, v63);
  }

  outlined destroy of Apple_Workout_Core_DataLinkMessage(v28, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  (*(v60 + 8))(v59, v61);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v58, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in DataLinkHost.sendMirroredHostStartConfiguration(_:acknowledged:)(char a1, void *a2, __int16 a3, void *a4, uint64_t a5, uint64_t (*a6)(void, void))
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.dataLink);
  v10 = a4;
  v11 = a2;

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v30 = a6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v14 = 136315906;
    v17 = v10;
    started = MirroredHostStartConfiguration.description.getter();
    v20 = v19;

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(started, v20, &v32);

    *(v14 + 4) = v21;
    *(v14 + 12) = 1024;
    *(v14 + 14) = a1 & 1;
    *(v14 + 18) = 2112;
    if (a2)
    {
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    *(v14 + 20) = v23;
    *v15 = v24;
    *(v14 + 28) = 2080;
    swift_beginAccess();
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v25 = Dictionary.Keys.description.getter();
    v27 = v26;

    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v32);

    *(v14 + 30) = v28;
    _os_log_impl(&dword_20AEA4000, v12, v13, "[mirrored] sendMirroredHostStartConfiguration acknowledged (%s) (success: %{BOOL}d, error: %@) all expected %s", v14, 0x26u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v15, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);

    a6 = v30;
  }

  else
  {
  }

  return a6(a1 & 1, a2);
}

uint64_t DataLinkHost.sendMirroredHostMachTimestampRequest(_:acknowledged:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v36 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0) - 8;
  MEMORY[0x28223BE20](v36, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v34 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v33 - v18;
  v20 = type metadata accessor for UUID();
  v38 = *(v20 - 8);
  v39 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = *a1;
  v33 = v3;
  v35 = *(v3 + 48);
  v37 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v24 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v19, 1, 1, v24);

  UnknownStorage.init()();
  v41 = v23;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMachTimestampRequest and conformance Apple_Workout_Core_MirroredHostMachTimestampRequest, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v19, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v12, v19, type metadata accessor for Apple_Workout_Core_MirroredHostMachTimestampRequest);
  swift_storeEnumTagMultiPayload();
  v25(v19, 0, 1, v24);
  v26 = v33;
  v27 = swift_allocObject();
  v27[2] = v23;
  v28 = v40;
  v27[3] = v26;
  v27[4] = v28;
  v27[5] = a3;
  v29 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v30 = *(*(v29 - 8) + 56);
  v30(v8, 1, 1, v29);

  UnknownStorage.init()();
  v31 = v34;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v19, v34, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v31, v8, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v30(v8, 0, 1, v29);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v8, partial apply for closure #1 in DataLinkHost.sendMirroredHostMachTimestampRequest(_:acknowledged:), v27);
  outlined destroy of Apple_Workout_Core_DataLinkMessage(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  (*(v38 + 8))(v37, v39);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v19, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in DataLinkHost.sendMirroredHostMachTimestampRequest(_:acknowledged:)(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void), double a5)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.dataLink);
  v9 = a2;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v26 = a4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v12 = 136315906;
    lazy protocol witness table accessor for type MirroredHostMachTimestampRequest and conformance MirroredHostMachTimestampRequest();
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v27);

    *(v12 + 4) = v17;
    *(v12 + 12) = 1024;
    *(v12 + 14) = a1 & 1;
    *(v12 + 18) = 2112;
    if (a2)
    {
      v18 = a2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      v20 = v19;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *(v12 + 20) = v19;
    *v13 = v20;
    *(v12 + 28) = 2080;
    swift_beginAccess();
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v21 = Dictionary.Keys.description.getter();
    v23 = v22;

    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v27);

    *(v12 + 30) = v24;
    _os_log_impl(&dword_20AEA4000, v10, v11, "[mirrored] sendMirroredHostMachTimestampRequest acknowledged (%s) (success: %{BOOL}d, error: %@) all expected %s", v12, 0x26u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v12, -1, -1);

    a4 = v26;
  }

  else
  {
  }

  return a4(a1 & 1, a2);
}

uint64_t DataLinkHost.sendMirroredHostCountdownStart(_:acknowledged:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = a2;
  v41 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0) - 8;
  MEMORY[0x28223BE20](v41, v6);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v39 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for UUID();
  v43 = *(v19 - 8);
  v44 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = *a1;
  v23 = a1[1];
  v37 = v3;
  v40 = *(v3 + 48);
  v42 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v24 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v18, 1, 1, v24);

  UnknownStorage.init()();
  v46 = v22;
  v47 = v23;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostCountdownStart and conformance Apple_Workout_Core_MirroredHostCountdownStart, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostCountdownStart);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v18, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v11, v18, type metadata accessor for Apple_Workout_Core_MirroredHostCountdownStart);
  swift_storeEnumTagMultiPayload();
  v26 = v24;
  v27 = a3;
  v28 = v38;
  v25(v18, 0, 1, v26);
  v29 = v37;
  v30 = swift_allocObject();
  v30[2] = v22;
  v30[3] = v23;
  v31 = v45;
  v30[4] = v29;
  v30[5] = v31;
  v30[6] = v27;
  v32 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v33 = *(*(v32 - 8) + 56);
  v33(v28, 1, 1, v32);

  UnknownStorage.init()();
  v34 = v39;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v18, v39, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v28, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v34, v28, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  swift_storeEnumTagMultiPayload();
  v33(v28, 0, 1, v32);
  DataLinkHealthKitHostConnection.sendDataLinkMessage(_:closure:)(v28, partial apply for closure #1 in DataLinkHost.sendMirroredHostCountdownStart(_:acknowledged:), v30);
  outlined destroy of Apple_Workout_Core_DataLinkMessage(v28, type metadata accessor for Apple_Workout_Core_DataLinkMessage);

  (*(v43 + 8))(v42, v44);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v18, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

uint64_t closure #1 in DataLinkHost.sendMirroredHostCountdownStart(_:acknowledged:)(char a1, void *a2, uint64_t a3, uint64_t (*a4)(void, void), double a5, double a6)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.dataLink);
  v10 = a2;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v27 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v13 = 136315906;
    lazy protocol witness table accessor for type MirroredHostCountdownStart and conformance MirroredHostCountdownStart();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1 & 1;
    *(v13 + 18) = 2112;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v13 + 20) = v20;
    *v14 = v21;
    *(v13 + 28) = 2080;
    swift_beginAccess();
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v22 = Dictionary.Keys.description.getter();
    v24 = v23;

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v28);

    *(v13 + 30) = v25;
    _os_log_impl(&dword_20AEA4000, v11, v12, "[mirrored] sendMirroredHostCountdownStart acknowledged (%s) (success: %{BOOL}d, error: %@) all expected %s", v13, 0x26u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v15, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);

    a4 = v27;
  }

  else
  {
  }

  return a4(a1 & 1, a2);
}

uint64_t DataLinkHost.sendMirroredHostSummaryUpdate(_:acknowledged:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v27 = a2;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v25 = *(v13 - 8);
  v26 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v24 = *(v3 + 48);
  UUID.init()();
  v18 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v12, 1, 1, v18);
  v20 = v23;

  UnknownStorage.init()();
  v28 = v17;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostSummaryUpdate and conformance Apple_Workout_Core_MirroredHostSummaryUpdate, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  static Message.with(_:)();
  outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v12, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostSummaryUpdate);
  swift_storeEnumTagMultiPayload();
  v19(v12, 0, 1, v18);
  specialized DataLinkHealthKitHostConnection.sendMirroredHostMessage(_:closure:)(v12, v24, v27, v20);

  (*(v25 + 8))(v16, v26);
  return outlined destroy of Apple_Workout_Core_DataLinkMessage(v12, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
}

void DataLinkHost.addHostExpectation(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataLinkMirroredHostExpectation(0);
  v72 = *(v4 - 8);
  v5 = *(v72 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v73 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v67 - v10;
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = (&v67 - v14);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v67 - v17;
  v19 = *a1;
  v20 = a1[1];
  swift_beginAccess();
  v21 = specialized Dictionary._Variant.removeValue(forKey:)(v19, v20);
  swift_endAccess();
  p_cache = &OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider.cache;
  if (v21)
  {
    [v21 invalidate];
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static WOLog.dataLink);
    outlined init with copy of Apple_Workout_Core_MirroredHostMessage(a1, v18, type metadata accessor for DataLinkMirroredHostExpectation);
    outlined init with copy of Apple_Workout_Core_MirroredHostMessage(a1, v15, type metadata accessor for DataLinkMirroredHostExpectation);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v69 = v25;
      v27 = v26;
      v70 = swift_slowAlloc();
      v74 = v70;
      *v27 = 136315394;
      v68 = v24;
      v28 = DataLinkMirroredHostExpectation.description.getter();
      v30 = v29;
      v71 = v11;
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v18, type metadata accessor for DataLinkMirroredHostExpectation);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v74);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      aBlock = *v15;
      lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v11 = v71;
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v15, type metadata accessor for DataLinkMirroredHostExpectation);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v74);
      p_cache = (&OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider + 16);

      *(v27 + 14) = v35;
      v36 = v68;
      _os_log_impl(&dword_20AEA4000, v68, v69, "[mirrored] addHostExpectation (%s) is replacing existing expected (%s)", v27, 0x16u);
      v37 = v70;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v37, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    else
    {

      outlined destroy of Apple_Workout_Core_DataLinkMessage(v15, type metadata accessor for DataLinkMirroredHostExpectation);
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v18, type metadata accessor for DataLinkMirroredHostExpectation);
    }
  }

  v38 = objc_opt_self();
  v39 = *(a1 + 2);
  v40 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(a1, v11, type metadata accessor for DataLinkMirroredHostExpectation);
  v41 = v11;
  v42 = (*(v72 + 80) + 24) & ~*(v72 + 80);
  v43 = p_cache;
  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  outlined init with take of Apple_Workout_Core_MirroredHostMessage(v41, v44 + v42, type metadata accessor for DataLinkMirroredHostExpectation);
  v78 = partial apply for closure #1 in DataLinkHost.addHostExpectation(_:);
  v79 = v44;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v76 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v77 = &block_descriptor_38;
  v45 = _Block_copy(&aBlock);

  v46 = [v38 scheduledTimerWithTimeInterval:0 repeats:v45 block:v39];
  _Block_release(v45);
  LOBYTE(aBlock) = 0;
  DataLinkHost.extendHostWorkoutSessionStartedTimer(by:timeoutAction:)(v39, &aBlock);
  v47 = *a1;
  v48 = a1[1];
  swift_beginAccess();
  v49 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *(v2 + 72);
  *(v2 + 72) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, v47, v48, isUniquelyReferenced_nonNull_native);
  *(v2 + 72) = v74;
  swift_endAccess();
  if (v43[310] != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static WOLog.dataLink);
  v52 = v73;
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(a1, v73, type metadata accessor for DataLinkMirroredHostExpectation);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    *&aBlock = v57;
    *v55 = 136315650;
    v58 = DataLinkMirroredHostExpectation.description.getter();
    v60 = v59;
    outlined destroy of Apple_Workout_Core_DataLinkMessage(v52, type metadata accessor for DataLinkMirroredHostExpectation);
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &aBlock);

    *(v55 + 4) = v61;
    *(v55 + 12) = 2080;
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v62 = Dictionary.Keys.description.getter();
    v64 = v63;

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &aBlock);

    *(v55 + 14) = v65;
    *(v55 + 22) = 2112;
    v66 = [objc_opt_self() currentThread];
    *(v55 + 24) = v66;
    *v56 = v66;
    _os_log_impl(&dword_20AEA4000, v53, v54, "[mirrored] addHostExpectation (%s) added, all expected %s, thread: %@", v55, 0x20u);
    outlined destroy of Apple_Workout_Core_MirroredHostMessage.OneOf_Message?(v56, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v56, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v57, -1, -1);
    MEMORY[0x20F2E9420](v55, -1, -1);
  }

  else
  {

    outlined destroy of Apple_Workout_Core_DataLinkMessage(v52, type metadata accessor for DataLinkMirroredHostExpectation);
  }
}

uint64_t closure #1 in DataLinkHost.addHostExpectation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v91 = a3;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v87 = &v78[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DataLinkMirroredHostExpectation(0);
  v88 = *(v12 - 8);
  v13 = *(v88 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v89 = &v78[-v18];
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v78[-v21];
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v78[-v24];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    v82 = v9;
    v86 = v7;
    v83 = v8;
    v90 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v84 = v4;
    v85 = v3;
    swift_beginAccess();
    v28 = *(v27 + 72);
    v29 = 1 << *(v28 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v28 + 64);
    v32 = (v29 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v33 = 0;
    v34 = &selRef_adjustedStatisticsForStatistics_;
    if (v31)
    {
      while (1)
      {
        v35 = v33;
LABEL_10:
        v36 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        [*(*(v28 + 56) + ((v35 << 9) | (8 * v36))) invalidate];
        if (!v31)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v35 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v35 >= v32)
      {
        break;
      }

      v31 = *(v28 + 64 + 8 * v35);
      ++v33;
      if (v31)
      {
        v33 = v35;
        goto LABEL_10;
      }
    }

    *(v27 + 72) = MEMORY[0x277D84F98];

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v34 = Strong;
      v33 = *(v27 + 40);
      v31 = v91;
      if (one-time initialization token for dataLink == -1)
      {
LABEL_14:
        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static WOLog.dataLink);
        outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v31, v22, type metadata accessor for DataLinkMirroredHostExpectation);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v81 = v34;
          v42 = v41;
          v80 = swift_slowAlloc();
          aBlock[0] = v80;
          *v42 = 136315394;
          v79 = v40;
          v43 = DataLinkMirroredHostExpectation.description.getter();
          v44 = v31;
          v45 = v33;
          v47 = v46;
          outlined destroy of Apple_Workout_Core_DataLinkMessage(v22, type metadata accessor for DataLinkMirroredHostExpectation);
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v47, aBlock);
          v33 = v45;
          v31 = v44;

          *(v42 + 4) = v48;
          *(v42 + 12) = 2080;
          _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
          lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
          v49 = Dictionary.Keys.description.getter();
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, aBlock);

          *(v42 + 14) = v51;
          _os_log_impl(&dword_20AEA4000, v39, v79, "[mirrored] call failedHostExpectation (%s) due timeout, cleaned up all expected %s", v42, 0x16u);
          v52 = v80;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v52, -1, -1);
          v53 = v42;
          v34 = v81;
          MEMORY[0x20F2E9420](v53, -1, -1);
        }

        else
        {

          outlined destroy of Apple_Workout_Core_DataLinkMessage(v22, type metadata accessor for DataLinkMirroredHostExpectation);
        }

        v64 = v86;
        v66 = v88;
        v65 = v89;
        outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v31, v89, type metadata accessor for DataLinkMirroredHostExpectation);
        outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v65, v90, type metadata accessor for DataLinkMirroredHostExpectation);
        v67 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = v34;
        *(v68 + 24) = v33;
        outlined init with take of Apple_Workout_Core_MirroredHostMessage(v65, v68 + v67, type metadata accessor for DataLinkMirroredHostExpectation);
        v69 = objc_opt_self();
        swift_unknownObjectRetain();
        if ([v69 isMainThread])
        {
          ObjectType = swift_getObjectType();
          v71 = v90;
          (*(v33 + 40))(v90, ObjectType, v33);

          swift_unknownObjectRelease();
          v72 = v71;
        }

        else
        {
          _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v91 = static OS_dispatch_queue.main.getter();
          v73 = swift_allocObject();
          *(v73 + 16) = partial apply for closure #2 in closure #1 in DataLinkHost.addHostExpectation(_:);
          *(v73 + 24) = v68;
          aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_0;
          aBlock[5] = v73;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_187;
          v74 = _Block_copy(aBlock);

          v75 = v87;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
          v76 = v85;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v77 = v91;
          MEMORY[0x20F2E7580](0, v75, v64, v74);
          _Block_release(v74);

          swift_unknownObjectRelease();

          (*(v84 + 8))(v64, v76);
          (*(v82 + 8))(v75, v83);
          v72 = v90;
        }

        return outlined destroy of Apple_Workout_Core_DataLinkMessage(v72, type metadata accessor for DataLinkMirroredHostExpectation);
      }

LABEL_28:
      swift_once();
      goto LABEL_14;
    }

    v54 = v91;
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static WOLog.dataLink);
    outlined init with copy of Apple_Workout_Core_MirroredHostMessage(v54, v25, type metadata accessor for DataLinkMirroredHostExpectation);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136315138;
      v60 = DataLinkMirroredHostExpectation.description.getter();
      v62 = v61;
      outlined destroy of Apple_Workout_Core_DataLinkMessage(v25, type metadata accessor for DataLinkMirroredHostExpectation);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, aBlock);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_20AEA4000, v56, v57, "[mirrored] cannot call failedHostExpectation (%s), mirroredClientDelegate is not set", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x20F2E9420](v59, -1, -1);
      MEMORY[0x20F2E9420](v58, -1, -1);
    }

    v72 = v25;
    return outlined destroy of Apple_Workout_Core_DataLinkMessage(v72, type metadata accessor for DataLinkMirroredHostExpectation);
  }

  return result;
}

Swift::Void __swiftcall DataLinkHost.extendHostWorkoutSessionStartedTimer(by:timeoutAction:)(Swift::Double by, WorkoutCore::MirroredHostWorkoutSessionStartedTimeoutAction timeoutAction)
{
  v3 = v2;
  v5 = *timeoutAction;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v6 = by + 10.0;
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WOLog.dataLink);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = by;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v6;
    _os_log_impl(&dword_20AEA4000, v8, v9, "[mirrored] extendHostWorkoutSessionStartedTimer: extend timeout by %f seconds, create new timer for %f seconds", v10, 0x16u);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  [*(v3 + 80) invalidate];
  v11 = *(v3 + 80);
  *(v3 + 80) = 0;

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v5;
  v18[4] = partial apply for closure #1 in DataLinkHost.extendHostWorkoutSessionStartedTimer(by:timeoutAction:);
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v18[3] = &block_descriptor_45;
  v15 = _Block_copy(v18);

  v16 = [v12 scheduledTimerWithTimeInterval:0 repeats:v15 block:v6];
  _Block_release(v15);
  v17 = *(v3 + 80);
  *(v3 + 80) = v16;
}

void DataLinkHost.receivedMirroredClientClearExpected(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  isa = v2[-1].isa;
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v7 = a1[1];
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(isa + 13))(v6, *MEMORY[0x277D85200], v2);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(isa + 1))(v6, v2);
  if ((a1 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v2 = specialized Dictionary._Variant.removeValue(forKey:)(v8, v7);
  swift_endAccess();
  if (v2)
  {
    if (one-time initialization token for dataLink == -1)
    {
LABEL_4:
      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static WOLog.dataLink);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v32 = v13;
        v33 = v8;
        *v12 = 136315394;
        v34 = v7;
        lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v32);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
        lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

        v17 = Dictionary.Keys.description.getter();
        v19 = v18;

        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v32);

        *(v12 + 14) = v20;
        _os_log_impl(&dword_20AEA4000, v10, v11, "[mirrored] receivedMirroredClientClearExpected fulfilled host expectation for (%s), all expected %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v13, -1, -1);
        MEMORY[0x20F2E9420](v12, -1, -1);
      }

      [v2 invalidate];
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.dataLink);

  v2 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    v33 = v8;
    *v23 = 136315394;
    v34 = v7;
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v32);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v28 = Dictionary.Keys.description.getter();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v32);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_20AEA4000, v2, v22, "[mirrored] receivedMirroredClientClearExpected no client expectation for (%s), all expected %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v24, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

LABEL_11:
}

void DataLinkHost.removeHostExpectation(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  isa = v2[-1].isa;
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v7 = a1[1];
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v6 = static OS_dispatch_queue.main.getter();
  (*(isa + 13))(v6, *MEMORY[0x277D85200], v2);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(isa + 1))(v6, v2);
  if ((a1 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  swift_beginAccess();
  v2 = specialized Dictionary._Variant.removeValue(forKey:)(v8, v7);
  swift_endAccess();
  if (v2)
  {
    if (one-time initialization token for dataLink == -1)
    {
LABEL_4:
      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static WOLog.dataLink);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v32 = v13;
        v33 = v8;
        *v12 = 136315394;
        v34 = v7;
        lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v32);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
        lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

        v17 = Dictionary.Keys.description.getter();
        v19 = v18;

        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v32);

        *(v12 + 14) = v20;
        _os_log_impl(&dword_20AEA4000, v10, v11, "[mirrored] removeHostExpectation (%s), all expected %s", v12, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F2E9420](v13, -1, -1);
        MEMORY[0x20F2E9420](v12, -1, -1);
      }

      [v2 invalidate];
      goto LABEL_11;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static WOLog.dataLink);

  v2 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32 = v24;
    v33 = v8;
    *v23 = 136315394;
    v34 = v7;
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v32);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

    v28 = Dictionary.Keys.description.getter();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v32);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_20AEA4000, v2, v22, "[mirrored] removeHostExpectation no client expectation for (%s), all expected %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v24, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

LABEL_11:
}

Swift::Void __swiftcall DataLinkHost.startHostWorkoutSessionStartedTimer(timeoutAction:)(WorkoutCore::MirroredHostWorkoutSessionStartedTimeoutAction timeoutAction)
{
  v2 = v1;
  v3 = *timeoutAction;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.dataLink);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = 0x4044000000000000;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[mirrored] startHostWorkoutSessionStartedTimer: create new timer for %f seconds", v7, 0xCu);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  [*(v2 + 80) invalidate];
  v8 = *(v2 + 80);
  *(v2 + 80) = 0;

  v9 = objc_opt_self();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v3;
  v15[4] = partial apply for closure #1 in DataLinkHost.startHostWorkoutSessionStartedTimer(timeoutAction:);
  v15[5] = v11;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v15[3] = &block_descriptor_52;
  v12 = _Block_copy(v15);

  v13 = [v9 scheduledTimerWithTimeInterval:0 repeats:v12 block:40.0];
  _Block_release(v12);
  v14 = *(v2 + 80);
  *(v2 + 80) = v13;
}

uint64_t closure #1 in DataLinkHost.startHostWorkoutSessionStartedTimer(timeoutAction:)(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = *(v5 + 40);

    if (Strong)
    {
      ObjectType = swift_getObjectType();
      v9 = a3 & 1;
      (*(v7 + 48))(&v9, ObjectType, v7);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

Swift::Void __swiftcall DataLinkHost.stopHostWorkoutSessionStartedTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 80);
  p_cache = &OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider.cache;
  v9 = &selRef_adjustedStatisticsForStatistics_;
  if (!v7)
  {
    goto LABEL_9;
  }

  v10 = one-time initialization token for dataLink;
  v11 = v7;
  if (v10 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static WOLog.dataLink);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v41 = v3;
      v16 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43[0] = v40;
      *v16 = 136315138;
      v17 = [v13 fireDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      if (one-time initialization token for logDateFormatter != -1)
      {
        swift_once();
      }

      v18 = static WOLog.logDateFormatter;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v3 = [v18 stringFromDate_];

      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v41[1](v6, v2);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v43);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_20AEA4000, v14, v15, "[mirrored] stopHostWorkoutSessionStartedTimer: stop timer with fireDate: %s", v16, 0xCu);
      v24 = v40;
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x20F2E9420](v24, -1, -1);
      MEMORY[0x20F2E9420](v16, -1, -1);

      v9 = &selRef_adjustedStatisticsForStatistics_;
      p_cache = (&OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider + 16);
    }

    else
    {
    }

    v25 = *(v1 + 80);
    [v25 v9[442]];

    v26 = *(v1 + 80);
    *(v1 + 80) = 0;

LABEL_9:
    swift_beginAccess();
    if (!*(*(v1 + 72) + 16))
    {
      break;
    }

    if (p_cache[310] != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    __swift_project_value_buffer(v27, static WOLog.dataLink);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42 = v31;
      *v30 = 136315138;
      _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
      lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();

      v32 = Dictionary.Keys.description.getter();
      p_cache = v33;

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, p_cache, &v42);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_20AEA4000, v28, v29, "[mirrored] stopHostWorkoutSessionStartedTimer: remove all hostExpectations %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }

    v11 = *(v1 + 72);
    v35 = 1 << *(v11 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v6 = v36 & *(v11 + 8);
    v2 = (v35 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v37 = 0;
    while (v6)
    {
      v38 = v37;
LABEL_22:
      v39 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      [*(*(v11 + 7) + ((v38 << 9) | (8 * v39))) v9[442]];
    }

    while (1)
    {
      v38 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v38 >= v2)
      {

        *(v1 + 72) = MEMORY[0x277D84F98];

        return;
      }

      v6 = *(v11 + v38 + 8);
      ++v37;
      if (v6)
      {
        v37 = v38;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }
}

uint64_t protocol witness for DataLinkMirroredHostProtocol.mirroredHostDelegate.setter in conformance DataLinkHost(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  *(v4 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*protocol witness for DataLinkMirroredHostProtocol.mirroredHostDelegate.modify in conformance DataLinkHost(uint64_t *a1))()
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
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return protocol witness for DataLinkMirroredHostProtocol.mirroredHostDelegate.modify in conformance DataLinkHost;
}

void DataLinkHost.mirroredHostDelegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
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

void DataLinkHost.receivedMirroredClientCommand(_:closure:)(unsigned __int8 *a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v21[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v4 + 40);
      v21[0] = v13;
      v21[1] = 0;
      DataLinkHost.receivedMirroredClientClearExpected(_:)(v21);
      ObjectType = swift_getObjectType();
      LOBYTE(v21[0]) = v13;
      (*(v14 + 8))(v21, a2, a3, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for DataLinkError(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
      v16 = swift_allocError();
      v18 = v17;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
      (*(*(v19 - 8) + 56))(v18, 5, 5, v19);
      a2(0, v16);
    }
  }

  else
  {
    __break(1u);
  }
}

void DataLinkHost.receivedMirroredClientMachTimestampResponse(_:closure:)(ValueMetadata **a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = a1[1];
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v4 + 40);
      v16 = lazy protocol witness table accessor for type MirroredClientMachTimestampResponse and conformance MirroredClientMachTimestampResponse();
      v23 = &type metadata for MirroredClientMachTimestampResponse;
      v24 = v16 | 0x8000000000000000;
      DataLinkHost.receivedMirroredClientClearExpected(_:)(&v23);
      ObjectType = swift_getObjectType();
      v23 = v13;
      v24 = v14;
      (*(v15 + 16))(&v23, a2, a3, ObjectType, v15);
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for DataLinkError(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
      v18 = swift_allocError();
      v20 = v19;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
      (*(*(v21 - 8) + 56))(v20, 5, 5, v21);
      a2(0, v18);
    }
  }

  else
  {
    __break(1u);
  }
}

void DataLinkHost.receivedMirroredClientPrecisionStart(_:closure:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v23[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v4 + 40);
      v15 = type metadata accessor for MirroredClientPrecisionStart(0);
      v16 = _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type MirroredClientPrecisionStart and conformance MirroredClientPrecisionStart, type metadata accessor for MirroredClientPrecisionStart, &protocol conformance descriptor for MirroredClientPrecisionStart);
      v23[0] = v15;
      v23[1] = v16 | 0x8000000000000000;
      DataLinkHost.receivedMirroredClientClearExpected(_:)(v23);
      ObjectType = swift_getObjectType();
      (*(v14 + 24))(a1, a2, a3, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for DataLinkError(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
      v18 = swift_allocError();
      v20 = v19;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
      (*(*(v21 - 8) + 56))(v20, 5, 5, v21);
      a2(0, v18);
    }
  }

  else
  {
    __break(1u);
  }
}

void DataLinkHost.receivedMirroredClientAlertStackResponse(_:closure:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  v23 = a3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v11 = static OS_dispatch_queue.main.getter();
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (a1)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v4 + 40);
      v17 = lazy protocol witness table accessor for type MirroredClientAlertStackResponse and conformance MirroredClientAlertStackResponse();
      v24 = &type metadata for MirroredClientAlertStackResponse;
      v25 = v17 | 0x8000000000000000;
      DataLinkHost.receivedMirroredClientClearExpected(_:)(&v24);
      ObjectType = swift_getObjectType();
      v24 = v12;
      v25 = v13;
      v26 = v14;
      v27 = v15;
      (*(v16 + 32))(&v24, a2, v23, ObjectType, v16);
      swift_unknownObjectRelease();
    }

    else
    {
      type metadata accessor for DataLinkError(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DataLinkError and conformance DataLinkError, type metadata accessor for DataLinkError, &protocol conformance descriptor for DataLinkError);
      v19 = swift_allocError();
      v21 = v20;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMd, &_s11WorkoutCore27MirroredHostMessageProtocol_pXmT04hostE4Type_AA08DataLinkC17ClientExpectationV06clientL0tMR);
      (*(*(v22 - 8) + 56))(v21, 5, 5, v22);
      a2(0, v19);
    }
  }

  else
  {
    __break(1u);
  }
}

void DataLinkHost.failedHostExpectation(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataLinkMirroredHostExpectation(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v13 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v14 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 40))(a1, ObjectType, v14);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static WOLog.dataLink);
  outlined init with copy of Apple_Workout_Core_MirroredHostMessage(a1, v7, type metadata accessor for DataLinkMirroredHostExpectation);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v25 = v20;
    *v19 = 136315138;
    v21 = DataLinkMirroredHostExpectation.description.getter();
    v23 = v22;
    outlined destroy of Apple_Workout_Core_DataLinkMessage(v7, type metadata accessor for DataLinkMirroredHostExpectation);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v25);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20AEA4000, v17, v18, "[mirrored] cannot call failedHostExpectation (%s), mirroredClientDelegate is not set", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x20F2E9420](v20, -1, -1);
    MEMORY[0x20F2E9420](v19, -1, -1);
  }

  else
  {

    outlined destroy of Apple_Workout_Core_DataLinkMessage(v7, type metadata accessor for DataLinkMirroredHostExpectation);
  }
}

Swift::Void __swiftcall DataLinkHost.failedHostWorkoutSessionStartedTimeout(_:)(WorkoutCore::MirroredHostWorkoutSessionStartedTimeoutAction a1)
{
  v2 = v1;
  v3 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v3;
  _sSo17OS_dispatch_queueCMaTm_5(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(v3) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v3 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    HIBYTE(v16) = v9;
    (*(v10 + 48))(&v16 + 7, ObjectType, v10);
    swift_unknownObjectRelease();
    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.dataLink);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, v13, v14, "[mirrored] cannot call failedHostWorkoutSessionStartedTimeout, mirroredClientDelegate is not set", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }
}

unint64_t specialized MetricsPublisher.observableSubs.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_s10AnyKeyPathCtGMd, &_ss23_ContiguousArrayStorageCySS_s10AnyKeyPathCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B426280;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x800000020B4541B0;
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x800000020B4541D0;
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x800000020B4541F0;
  *(inited + 96) = swift_getKeyPath();
  strcpy((inited + 104), "goalPublisher");
  *(inited + 118) = -4864;
  *(inited + 120) = swift_getKeyPath();
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x800000020B454220;
  *(inited + 144) = swift_getKeyPath();
  *(inited + 152) = 0xD000000000000019;
  *(inited + 160) = 0x800000020B454240;
  *(inited + 168) = swift_getKeyPath();
  *(inited + 176) = 0xD000000000000014;
  *(inited + 184) = 0x800000020B454260;
  *(inited + 192) = swift_getKeyPath();
  *(inited + 200) = 0xD00000000000001ALL;
  *(inited + 208) = 0x800000020B4542A0;
  *(inited + 216) = swift_getKeyPath();
  *(inited + 224) = 0xD000000000000010;
  *(inited + 232) = 0x800000020B4542C0;
  *(inited + 240) = swift_getKeyPath();
  *(inited + 248) = 0xD000000000000015;
  *(inited + 256) = 0x800000020B4542E0;
  *(inited + 264) = swift_getKeyPath();
  *(inited + 272) = 0xD000000000000020;
  *(inited + 280) = 0x800000020B454300;
  *(inited + 288) = swift_getKeyPath();
  *(inited + 296) = 0xD000000000000018;
  *(inited + 304) = 0x800000020B454330;
  *(inited + 312) = swift_getKeyPath();
  *(inited + 320) = 0xD00000000000001ALL;
  *(inited + 328) = 0x800000020B454350;
  *(inited + 336) = swift_getKeyPath();
  *(inited + 344) = 0xD00000000000001CLL;
  *(inited + 352) = 0x800000020B454370;
  *(inited + 360) = swift_getKeyPath();
  *(inited + 368) = 0xD000000000000015;
  *(inited + 376) = 0x800000020B4543A0;
  *(inited + 384) = swift_getKeyPath();
  *(inited + 392) = 0xD00000000000001ALL;
  *(inited + 400) = 0x800000020B4543C0;
  *(inited + 408) = swift_getKeyPath();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s10AnyKeyPathCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_s10AnyKeyPathCtMd, &_sSS_s10AnyKeyPathCtMR);
  swift_arrayDestroy();
  return v1;
}