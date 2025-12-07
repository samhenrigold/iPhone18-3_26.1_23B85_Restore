char *MultiSportWorkoutTracker.dropLastValues()()
{
  v1 = v0;
  v2 = LiveWorkoutConfiguration.currentActivityType.getter();
  v3 = [v2 identifier];

  v4 = LiveWorkoutConfiguration.currentActivityType.getter();
  v5 = [v4 identifier];

  v6 = OBJC_IVAR___WOMultiSportWorkoutTracker_previousMultisportDistancesByActivity;
  swift_beginAccess();
  if (*(*(v1 + v6) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v5), (v7 & 1) != 0))
  {
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = specialized Sequence.dropLast(_:)(1, v8);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + v6);
  *(v1 + v6) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v3, isUniquelyReferenced_nonNull_native);
  *(v1 + v6) = v12;
  swift_endAccess();
  specialized RangeReplaceableCollection<>.popLast()();
  return specialized RangeReplaceableCollection<>.popLast()();
}

uint64_t specialized Sequence.dropLast(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    goto LABEL_30;
  }

  v2 = a2;
  v3 = result;
  if (!result)
  {
    return v2;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_26:

    return v8;
  }

  v5 = 0;
  v6 = (a2 + 32);
  v7 = v4 - 1;
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = *v6;
    v11 = *(v9 + 16);
    if (v11 < v3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 + 1, 1);
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      *(v9 + 16) = v13 + 1;
      *(v9 + 8 * v13 + 32) = v10;
      if (!v7)
      {
        goto LABEL_26;
      }

      goto LABEL_6;
    }

    if (v5 >= v11)
    {
      break;
    }

    v14 = *(v9 + 8 * v5 + 32);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
    }

    v16 = *(v8 + 16);
    v15 = *(v8 + 24);
    if (v16 >= v15 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
    }

    *(v8 + 16) = v16 + 1;
    *(v8 + 8 * v16 + 32) = v14;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v9);
      v9 = result;
    }

    if (v5 >= *(v9 + 16))
    {
      goto LABEL_29;
    }

    *(v9 + 8 * v5++ + 32) = v10;
    if (v5 < v3)
    {
      if (!v7)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (!v7)
      {
        goto LABEL_26;
      }

      v5 = 0;
    }

LABEL_6:
    --v7;
    ++v6;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

char *specialized RangeReplaceableCollection<>.popLast()()
{
  v1 = *v0;
  if (!*(*v0 + 2))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 2);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *&v1[8 * v4 + 32];
      *(v1 + 2) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v3 = *(result + 2);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

id MultiSportWorkoutTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MultiSportWorkoutTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiSportWorkoutTracker(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void key path getter for MultisportTransitions.shouldTrackTransitions : MultisportTransitions(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

double key path setter for MultisportTransitions.shouldTrackTransitions : MultisportTransitions(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  static Published.subscript.setter();
  return result;
}

void specialized WeakCollection.wrappedValue.setter(unint64_t a1, uint64_t *a2, uint64_t *a3)
{

  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_12:

    v11 = MEMORY[0x277D84F90];
LABEL_13:
    *v3 = v11;
    return;
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_12;
  }

LABEL_3:
  v12 = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = 0;
      do
      {
        v9 = v8 + 1;
        MEMORY[0x20F2E7A20]();
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v8 = v9;
      }

      while (v7 != v9);
    }

    else
    {
      v10 = 32;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_unknownObjectWeakAssign();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v10 += 8;
        --v7;
      }

      while (v7);
    }

    v11 = v12;
    goto LABEL_13;
  }

  __break(1u);
}

double specialized MultiSportWorkoutTracker.workout(_:didBeginNewActivity:)(Class isa)
{
  v46 = type metadata accessor for Date();
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for multisport != -1)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.multisport);
    v7 = isa;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_20AEA4000, v8, v9, "Tracker has noticed that a new activity began: %@", v10, 0xCu);
      _s10Foundation4DateVSgWOhTm_7(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    v13 = [(objc_class *)v7 workoutConfiguration];
    v14 = [v13 activityType];

    v15 = OBJC_IVAR___WOMultiSportWorkoutTracker_multiSportTransitionState;
    v45 = v7;
    v43 = v2;
    if (v14 == 83)
    {
      break;
    }

    v23 = v44;
    swift_beginAccess();
    *(v23 + v15) = 0;
    v24 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
    swift_beginAccess();
    v25 = *(v23 + v24);
    v47 = MEMORY[0x277D84F90];
    if (v25 >> 62)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = v25 & 0xC000000000000001;

    isa = 0;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v26 == isa)
      {
        goto LABEL_44;
      }

      if (!v2)
      {
        break;
      }

      MEMORY[0x20F2E7A20](isa, v25);
      v27 = (isa + 1);
      if (__OFADD__(isa, 1))
      {
        goto LABEL_56;
      }

LABEL_26:
      Strong = swift_unknownObjectWeakLoadStrong();

      isa = (isa + 1);
      if (Strong)
      {
        MEMORY[0x20F2E6F30](v29);
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v19 = v47;
        isa = v27;
      }
    }

    if (isa >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_58;
    }

    v27 = (isa + 1);
    if (!__OFADD__(isa, 1))
    {
      goto LABEL_26;
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
    __break(1u);
LABEL_61:
    swift_once();
  }

  v16 = v44;
  swift_beginAccess();
  *(v16 + v15) = 2;
  v17 = OBJC_IVAR___WOMultiSportWorkoutTracker__progressObservers;
  swift_beginAccess();
  v2 = *(v16 + v17);
  v47 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  isa = 0;
  v19 = MEMORY[0x277D84F90];
  while (v18 != isa)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](isa, v2);
      v20 = (isa + 1);
      if (__OFADD__(isa, 1))
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      if (isa >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v20 = (isa + 1);
      if (__OFADD__(isa, 1))
      {
        goto LABEL_55;
      }
    }

    v21 = swift_unknownObjectWeakLoadStrong();

    isa = (isa + 1);
    if (v21)
    {
      MEMORY[0x20F2E6F30](v22);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 = v47;
      isa = v20;
    }
  }

  if (v19 >> 62)
  {
    v2 = __CocoaSet.count.getter();
    if (!v2)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v2 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_67;
    }
  }

  v30 = 0;
  v31 = (v43 + 8);
  while (2)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x20F2E7A20](v30, v19);
      v33 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      goto LABEL_39;
    }

    if (v30 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_59;
    }

    v32 = *(v19 + 8 * v30 + 32);
    swift_unknownObjectRetain();
    v33 = v30 + 1;
    if (!__OFADD__(v30, 1))
    {
LABEL_39:
      v34 = [(objc_class *)v45 startDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v31)(v5, v46);
      [v32 didEnterManualTransitionWithDate_];
      swift_unknownObjectRelease();

      ++v30;
      if (v33 == v2)
      {
        goto LABEL_67;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_44:

  if (v19 >> 62)
  {
    v35 = __CocoaSet.count.getter();
    if (v35)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v35 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
LABEL_46:
      v36 = 0;
      v2 = v19 & 0xFFFFFFFFFFFFFF8;
      v37 = (v43 + 8);
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x20F2E7A20](v36, v19);
          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v36 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_60;
          }

          v38 = *(v19 + 8 * v36 + 32);
          swift_unknownObjectRetain();
          v39 = v36 + 1;
          if (__OFADD__(v36, 1))
          {
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }
        }

        v40 = [(objc_class *)v45 startDate];
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        isa = Date._bridgeToObjectiveC()().super.isa;
        (*v37)(v5, v46);
        [v38 didEnterNewLeg:v44 date:isa];
        swift_unknownObjectRelease();

        ++v36;
      }

      while (v39 != v35);
    }
  }

LABEL_67:

  return result;
}

uint64_t specialized MultiSportWorkoutTracker.metadataKeysToDelete.getter()
{
  v20 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 6, 0);
  v0 = 0;
  result = v20;
  v2 = ", alertMessage: ";
  v3 = "ansitionUUIDString";
  v4 = "taAutoTransitionLastTime";
  do
  {
    v5 = outlined read-only object #0 of MultiSportWorkoutTracker.metadataKeysToDelete.getter[v0 + 32];
    v6 = 0xD000000000000031;
    v7 = 0xD00000000000002CLL;
    if (v5 == 4)
    {
      v8 = v4;
    }

    else
    {
      v7 = 0xD000000000000028;
      v8 = "taAutoTransitionLastDistance";
    }

    if (v5 == 3)
    {
      v7 = 0xD000000000000028;
      v8 = v3;
    }

    v9 = 0xD00000000000002FLL;
    if (v5 == 1)
    {
      v10 = "his point in the configs";
    }

    else
    {
      v9 = 0xD000000000000032;
      v10 = "ansitionStartDate";
    }

    if (outlined read-only object #0 of MultiSportWorkoutTracker.metadataKeysToDelete.getter[v0 + 32])
    {
      v6 = v9;
      v11 = v10;
    }

    else
    {
      v11 = v2;
    }

    if (outlined read-only object #0 of MultiSportWorkoutTracker.metadataKeysToDelete.getter[v0 + 32] <= 2u)
    {
      v12 = v6;
    }

    else
    {
      v12 = v7;
    }

    if (outlined read-only object #0 of MultiSportWorkoutTracker.metadataKeysToDelete.getter[v0 + 32] <= 2u)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    v21 = result;
    v15 = *(result + 16);
    v14 = *(result + 24);
    if (v15 >= v14 >> 1)
    {
      v18 = v3;
      v19 = v2;
      v17 = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v4 = v17;
      v3 = v18;
      v2 = v19;
      result = v21;
    }

    ++v0;
    *(result + 16) = v15 + 1;
    v16 = result + 16 * v15;
    *(v16 + 32) = v12;
    *(v16 + 40) = v13 | 0x8000000000000000;
  }

  while (v0 != 6);
  return result;
}

uint64_t type metadata accessor for MultiSportWorkoutTracker(uint64_t a1)
{
  result = type metadata singleton initialization cache for MultiSportWorkoutTracker;
  if (!type metadata singleton initialization cache for MultiSportWorkoutTracker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v9 = result;
    result = __CocoaSet.count.getter();
    v10 = result - v9;
    if (__OFSUB__(result, v9))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v11 = __CocoaSet.count.getter();
    result = __CocoaSet.count.getter();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v10 <= v11)
    {
      v12 = v10 & ~(v10 >> 63);
    }

    else
    {
      v12 = v11;
    }

    if (v11 < 0 || v10 < 1)
    {
      v6 = v10 & ~(v10 >> 63);
    }

    else
    {
      v6 = v12;
    }

    result = __CocoaSet.count.getter();
    if (result >= v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = (v5 - result) & ~((v5 - result) >> 63);
  if (v5 < v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0 && v6)
  {
    _sSo17OS_dispatch_queueCMaTm_12(0, &lazy cache variable for type metadata for HKWorkoutActivity, 0x277CCDBF0);

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v7);
      v7 = v8;
    }

    while (v6 != v8);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

uint64_t _s10Foundation4DateVSgWOdTm_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOcTm_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOhTm_7(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t keypath_get_21Tm_0@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

void type metadata completion function for MultiSportWorkoutTracker(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void VerticalOscillationAccumulator.currentVerticalOscillation.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLVerticalOscillationAccumulator_currentVerticalOscillation;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t VerticalOscillationAccumulator.currentVerticalOscillation.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void VerticalOscillationAccumulator.averageVerticalOscillation.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLVerticalOscillationAccumulator_averageVerticalOscillation;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void key path setter for VerticalOscillationAccumulator.invalidationTimer : VerticalOscillationAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *VerticalOscillationAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void VerticalOscillationAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall VerticalOscillationAccumulator.update(statistics:)(HKStatistics statistics)
{
  v2 = v1;
  v4 = [(objc_class *)statistics.super.isa mostRecentQuantity];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() meterUnit];
    [v5 doubleValueForUnit_];
    v8 = v7;

    v9 = &v2[OBJC_IVAR___NLVerticalOscillationAccumulator_currentVerticalOscillation];
    swift_beginAccess();
    *v9 = v8;
    v9[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.app);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37 = v15;
      *v14 = 136315138;
      v16 = v9[8];
      v39[1] = *v9;
      v40 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v17 = Optional.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v37);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Current VerticalOscillation quantity received: %s meters", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }
  }

  v20 = [(objc_class *)statistics.super.isa averageQuantity];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() meterUnit];
    [v21 doubleValueForUnit_];
    v24 = v23;

    v25 = &v2[OBJC_IVAR___NLVerticalOscillationAccumulator_averageVerticalOscillation];
    swift_beginAccess();
    *v25 = v24;
    v25[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static WOLog.app);
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136315138;
      v32 = v25[8];
      v37 = *v25;
      v38 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v33 = Optional.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v39);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Average VerticalOscillation quantity received: %s meters", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in VerticalOscillationAccumulator.update(statistics:), v36);

  [v2 update];
}

void closure #1 in VerticalOscillationAccumulator.update(statistics:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR___NLVerticalOscillationAccumulator_currentVerticalOscillation;
    v4 = Strong;
    swift_beginAccess();
    *v3 = 0;
    *(v3 + 8) = 1;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 update];
  }
}

id VerticalOscillationAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id VerticalOscillationAccumulator.init(builder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___NLVerticalOscillationAccumulator_currentVerticalOscillation];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR___NLVerticalOscillationAccumulator_averageVerticalOscillation];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for VerticalOscillationAccumulator();
  v5 = objc_msgSendSuper2(&v7, sel_initWithBuilder_, a1);

  return v5;
}

id VerticalOscillationAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VerticalOscillationAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for VerticalOscillationProvider.currentVerticalOscillation.getter in conformance VerticalOscillationAccumulator(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3 + *a3;
  swift_beginAccess();
  return *v4;
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance VerticalOscillationAccumulator()
{
  v1 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance VerticalOscillationAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLVerticalOscillationAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void keypath_getTm_1(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v5;
}

void keypath_setTm_2(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
}

id static PacerDistanceGoalProgressAccumulatorFactory.make(builder:configuration:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___WOCoreLiveWorkoutConfiguration_configuration);
  type metadata accessor for PacerWorkoutConfiguration(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = objc_allocWithZone(type metadata accessor for PacerDistanceGoalProgressAccumulator());
    v7 = v3;
    v8 = a1;
    v9 = specialized PacerDistanceGoalProgressAccumulator.init(builder:workoutConfiguration:)(v8, v5);

    return v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000005ELL, 0x800000020B45ECA0, "WorkoutCore/PacerDistanceGoalProgressAccumulatorFactory.swift", 61, 2, 20, 0);
    __break(1u);
  }

  return result;
}

id PacerDistanceGoalProgressAccumulatorFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PacerDistanceGoalProgressAccumulatorFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulatorFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PacerDistanceGoalProgressAccumulatorFactory.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PacerDistanceGoalProgressAccumulatorFactory();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void StrideLengthAccumulator.currentStrideLength.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLStrideLengthAccumulator_currentStrideLength;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t StrideLengthAccumulator.currentStrideLength.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void StrideLengthAccumulator.averageStrideLength.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___NLStrideLengthAccumulator_averageStrideLength;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void key path setter for StrideLengthAccumulator.invalidationTimer : StrideLengthAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *StrideLengthAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void StrideLengthAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall StrideLengthAccumulator.update(statistics:)(HKStatistics statistics)
{
  v2 = v1;
  v4 = [(objc_class *)statistics.super.isa mostRecentQuantity];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() meterUnit];
    [v5 doubleValueForUnit_];
    v8 = v7;

    v9 = &v2[OBJC_IVAR___NLStrideLengthAccumulator_currentStrideLength];
    swift_beginAccess();
    *v9 = v8;
    v9[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static WOLog.app);
    v11 = v2;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37 = v15;
      *v14 = 136315138;
      v16 = v9[8];
      v39[1] = *v9;
      v40 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v17 = Optional.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v37);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_20AEA4000, v12, v13, "Current StrideLength quantity received: %s meters", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x20F2E9420](v15, -1, -1);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }
  }

  v20 = [(objc_class *)statistics.super.isa averageQuantity];
  if (v20)
  {
    v21 = v20;
    v22 = [objc_opt_self() meterUnit];
    [v21 doubleValueForUnit_];
    v24 = v23;

    v25 = &v2[OBJC_IVAR___NLStrideLengthAccumulator_averageStrideLength];
    swift_beginAccess();
    *v25 = v24;
    v25[8] = 0;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static WOLog.app);
    v27 = v2;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 136315138;
      v32 = v25[8];
      v37 = *v25;
      v38 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
      v33 = Optional.description.getter();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v39);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Average StrideLength quantity received: %s meters", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x20F2E9420](v31, -1, -1);
      MEMORY[0x20F2E9420](v30, -1, -1);
    }
  }

  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in StrideLengthAccumulator.update(statistics:), v36);

  [v2 update];
}

void closure #1 in StrideLengthAccumulator.update(statistics:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR___NLStrideLengthAccumulator_currentStrideLength;
    v4 = Strong;
    swift_beginAccess();
    *v3 = 0;
    *(v3 + 8) = 1;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 update];
  }
}

id StrideLengthAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id StrideLengthAccumulator.init(builder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___NLStrideLengthAccumulator_currentStrideLength];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR___NLStrideLengthAccumulator_averageStrideLength];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for StrideLengthAccumulator();
  v5 = objc_msgSendSuper2(&v7, sel_initWithBuilder_, a1);

  return v5;
}

id StrideLengthAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StrideLengthAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for StrideLengthProvider.currentStrideLength.getter in conformance StrideLengthAccumulator(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *v3 + *a3;
  swift_beginAccess();
  return *v4;
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance StrideLengthAccumulator()
{
  v1 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance StrideLengthAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLStrideLengthAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void keypath_getTm_2(void *a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v5;
}

void keypath_setTm_3(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
}

id static PrecisionStartChecker.fakePrecisionStart()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45ED90);
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t specialized static PrecisionStartChecker.usePrecisionStart(startSource:domainAccessor:)(unint64_t a1, id a2)
{
  if (one-time initialization token for precisionStart != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  if (static DeviceFeatures.precisionStart != 1 || ([a2 isPrecisionStartEnabled] & 1) == 0)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45ED90);
    v5 = [v3 BOOLForKey_];

    if (!v5)
    {
      LOBYTE(v6) = 0;
      return v6 & 1;
    }
  }

  if (a1 < 0x19)
  {
    v6 = 0x18DC05Eu >> a1;
    return v6 & 1;
  }

  _StringGuts.grow(_:)(56);
  MEMORY[0x20F2E6D80](0xD000000000000036, 0x800000020B45EE10);
  type metadata accessor for NLWorkoutStartSource(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "WorkoutCore/PrecisionStartChecker.swift", 39, 2, 29, 0);
  __break(1u);
  return result;
}

BOOL static DataLinkMirroredHostExpected.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v6 = v4 < 0 && v2 == v3;
  v7 = (v3 ^ v2) == 0;
  if (v4 < 0)
  {
    v7 = 0;
  }

  if (a1[1] >= 0)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

double DataLinkMirroredHostExpected.hash(into:)(uint64_t a1)
{
  if ((*(v1 + 8) & 0x8000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredClientMessageProtocol_pXpMd, &_s11WorkoutCore29MirroredClientMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();

  return result;
}

uint64_t DataLinkMirroredHostExpected.description.getter()
{
  if ((v0[1] & 0x8000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredClientMessageProtocol_pXpMd, &_s11WorkoutCore29MirroredClientMessageProtocol_pXpMR);
    return String.init<A>(describing:)();
  }

  else if (*v0)
  {
    if (*v0 == 1)
    {
      return 0xD000000000000023;
    }

    else
    {
      return 0x70736552676E6970;
    }
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

double protocol witness for Hashable.hash(into:) in conformance DataLinkMirroredHostExpected(uint64_t a1)
{
  if ((*(v1 + 8) & 0x8000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredClientMessageProtocol_pXpMd, &_s11WorkoutCore29MirroredClientMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkMirroredHostExpected(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 < 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredClientMessageProtocol_pXpMd, &_s11WorkoutCore29MirroredClientMessageProtocol_pXpMR);
    String.init<A>(describing:)();
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DataLinkMirroredHostExpected(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v6 = v4 < 0 && v2 == v3;
  v7 = (v3 ^ v2) == 0;
  if (v4 < 0)
  {
    v7 = 0;
  }

  if (a1[1] >= 0)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DataLinkMirroredHostExpected()
{
  if ((v0[1] & 0x8000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore29MirroredClientMessageProtocol_pXpMd, &_s11WorkoutCore29MirroredClientMessageProtocol_pXpMR);
    return String.init<A>(describing:)();
  }

  else if (*v0)
  {
    if (*v0 == 1)
    {
      return 0xD000000000000023;
    }

    else
    {
      return 0x70736552676E6970;
    }
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

__n128 DataLinkMirroredHostExpectation.expected.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t DataLinkMirroredHostExpectation.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DataLinkMirroredHostExpectation(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DataLinkMirroredHostExpectation.init(expected:timeout:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *a1;
  v6 = a1[1];
  type metadata accessor for DataLinkMirroredHostExpectation(0);
  result = static Date.now.getter();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = a3;
  return result;
}

uint64_t DataLinkMirroredHostExpectation.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  (*(v3 + 8))(v6, v2);
  type metadata accessor for DataLinkMirroredHostExpectation(0);
  Date.timeIntervalSinceReferenceDate.getter();
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  MEMORY[0x20F2E6D80](0x6465746365707865, 0xEA0000000000203ALL);
  v15 = *v1;
  lazy protocol witness table accessor for type DataLinkMirroredHostExpected and conformance DataLinkMirroredHostExpected();
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v7);

  MEMORY[0x20F2E6D80](0x756F656D6974202CLL, 0xEB00000000203A74);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x657461657263202CLL, 0xEB00000000203A64);
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v8 = static WOLog.logDateFormatter;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = [v8 stringFromDate_];

  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  MEMORY[0x20F2E6D80](v11, v13);

  MEMORY[0x20F2E6D80](0xD000000000000011, 0x800000020B45EEA0);
  Double.write<A>(to:)();
  return v16;
}

Swift::Int MirroredHostWorkoutSessionStartedTimeoutAction.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredHostWorkoutSessionStartedTimeoutAction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredHostWorkoutSessionStartedTimeoutAction(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t type metadata accessor for DataLinkMirroredHostExpectation(uint64_t a1)
{
  result = type metadata singleton initialization cache for DataLinkMirroredHostExpectation;
  if (!type metadata singleton initialization cache for DataLinkMirroredHostExpectation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MirroredHostWorkoutSessionStartedTimeoutAction and conformance MirroredHostWorkoutSessionStartedTimeoutAction()
{
  result = lazy protocol witness table cache variable for type MirroredHostWorkoutSessionStartedTimeoutAction and conformance MirroredHostWorkoutSessionStartedTimeoutAction;
  if (!lazy protocol witness table cache variable for type MirroredHostWorkoutSessionStartedTimeoutAction and conformance MirroredHostWorkoutSessionStartedTimeoutAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredHostWorkoutSessionStartedTimeoutAction and conformance MirroredHostWorkoutSessionStartedTimeoutAction);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataLinkMirroredHostExpected(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFF && *(a1 + 16))
  {
    return (*a1 + 4095);
  }

  v3 = (((*(a1 + 8) >> 52) >> 11) | (2 * ((*(a1 + 8) >> 52) & 0x700 | (32 * (*(a1 + 8) & 7)) | (*a1 >> 59) & 0x1E | (*a1 >> 2) & 1))) ^ 0xFFF;
  if (v3 >= 0xFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for DataLinkMirroredHostExpected(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFE)
  {
    *result = a2 - 4095;
    *(result + 8) = 0;
    if (a3 >= 0xFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x7FF | ((-a2 & 0xFFF) << 11);
      *result = ((v3 << 59) | (4 * v3)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 5) | (v3 << 52)) & 0xF000000000000007;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for DataLinkMirroredHostExpected(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *result &= 0xFFFFFFFFFFFFFFBuLL;
  result[1] = v2;
  return result;
}

uint64_t type metadata completion function for DataLinkMirroredHostExpectation(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredHostWorkoutSessionStartedTimeoutAction(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredHostWorkoutSessionStartedTimeoutAction(uint64_t result, unsigned int a2, unsigned int a3)
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

Swift::Void __swiftcall LocationRequest.start()()
{
  v1 = v0[2];
  v2 = *(v0 + 5);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = objc_allocWithZone(type metadata accessor for GCDTimer());
  swift_retain_n();
  v5 = GCDTimer.init(timeInterval:queue:completion:)(v2, partial apply for closure #1 in LocationRequest.start(), v3, v1);
  if (*&v5[OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.resume()();
    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 8);
  *(v0 + 8) = v5;
}

double closure #1 in LocationRequest.start()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15[1] = *(Strong + 40);
    aBlock[4] = partial apply for closure #1 in closure #1 in LocationRequest.start();
    aBlock[5] = Strong;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_33;
    v14 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v15[2] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v11, v6, v14);
    _Block_release(v14);
    (*(v3 + 8))(v6, v2);
    (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t closure #1 in closure #1 in LocationRequest.start()(void *a1)
{
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.location);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1[2];
    _os_log_impl(&dword_20AEA4000, v3, v4, "Failed to retrieve a location within the specified timeout: %f", v5, 0xCu);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = a1[9];
  if (v6)
  {
    v7 = a1[10];

    v6(0);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(v6, v7);
    v8 = a1[9];
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[10];
  a1[9] = 0;
  a1[10] = 0;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(v8, v9);
  v10 = a1[8];
  a1[8] = 0;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    LocationManager.requestDidTimeout(request:)(a1);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall LocationRequest.received(_:)(CLLocation_optional a1)
{
  v3 = v1;
  isa = a1.value.super.isa;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + 5);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  if (isa)
  {
    [(objc_class *)isa horizontalAccuracy];
    v2 = v12;
  }

  else
  {
    v2 = 1.79769313e308;
  }

  if (one-time initialization token for location != -1)
  {
    goto LABEL_18;
  }

LABEL_6:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.location);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = v2;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v3[4];
    _os_log_impl(&dword_20AEA4000, v14, v15, "Received location with accuracy: %f threshold: %f", v16, 0x16u);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  v17 = v3[4];
  if (v2 <= v17)
  {
    v18 = *(v3 + 9);
    if (v18)
    {
      v19 = *(v3 + 10);

      v18(isa);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(v18, v19);
      v20 = *(v3 + 9);
    }

    else
    {
      v20 = 0;
    }

    v21 = *(v3 + 10);
    v3[9] = 0.0;
    v3[10] = 0.0;
    outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(v20, v21);
    v22 = *(v3 + 8);
    if (v22)
    {
      v23 = OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source;
      if (*&v22[OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source])
      {
        swift_getObjectType();
        v24 = v22;
        swift_unknownObjectRetain();
        OS_dispatch_source.cancel()();
        swift_unknownObjectRelease();
        *&v22[v23] = 0;

        swift_unknownObjectRelease();
        v22 = *(v3 + 8);
      }
    }

    v3[8] = 0.0;
  }

  return v2 <= v17;
}

uint64_t LocationRequest.deinit()
{
  outlined destroy of weak LocationRequestDelegate?(v0 + 48);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(*(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t LocationRequest.__deallocating_deinit()
{
  outlined destroy of weak LocationRequestDelegate?(v0 + 48);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

double outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LocationManager.State()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocationManager.State(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LocationManager.State@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized LocationManager.State.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for LocationManager(0)) init];
  static LocationManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for WorkoutDevicesProvider(0)) init];
  static WorkoutDevicesProvider.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for UserDevicesBehaviors()) init];
  static UserDevicesBehaviors.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for TaskFinalizer()) init];
  static TaskFinalizer.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for Chronicle()) init];
  static Chronicle.shared = result;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B440990;
  type metadata accessor for WorkoutIntervalSignpost();
  v1 = swift_allocObject();
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 56) = 0;
  *(v1 + 16) = "StartWorkoutSessionUntilStateRunning";
  *(v1 + 24) = 36;
  *(v1 + 32) = 2;
  *(v1 + 40) = xmmword_20B4322F0;
  *(inited + 32) = v1;
  v2 = swift_allocObject();
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 56) = 0;
  *(v2 + 16) = "BuilderRequestedCollectingUntilDidBeginCollecting";
  *(v2 + 24) = 49;
  *(v2 + 32) = 2;
  *(v2 + 40) = xmmword_20B443F80;
  *(inited + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 56) = 0;
  *(v3 + 16) = "EndingWorkoutSessionUntilEnded";
  *(v3 + 24) = 30;
  *(v3 + 32) = 2;
  *(v3 + 40) = xmmword_20B443F90;
  *(inited + 48) = v3;
  v4 = swift_allocObject();
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 56) = 0;
  *(v4 + 16) = "StartWorkoutSessionUntilFirstHKHeartRateSample";
  *(v4 + 24) = 46;
  *(v4 + 32) = 2;
  *(v4 + 40) = xmmword_20B440A60;
  *(inited + 56) = v4;
  v5 = swift_allocObject();
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 56) = 0;
  *(v5 + 16) = "StartWorkoutSessionUntilMediaHandleIntentCompleted";
  *(v5 + 24) = 50;
  *(v5 + 32) = 2;
  *(v5 + 40) = xmmword_20B443FA0;
  *(inited + 64) = v5;
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 56) = 0;
  *(v6 + 16) = "StateRunningUntilMediaHandleIntentCompleted";
  *(v6 + 24) = 43;
  *(v6 + 32) = 2;
  *(v6 + 40) = xmmword_20B443FB0;
  *(inited + 72) = v6;
  v7 = swift_allocObject();
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = 0;
  *(v7 + 16) = "MediaHandleCalledUntilCompleted";
  *(v7 + 24) = 31;
  *(v7 + 32) = 2;
  *(v7 + 40) = xmmword_20B443FC0;
  *(inited + 80) = v7;
  v8 = swift_allocObject();
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  *(v8 + 56) = 0;
  *(v8 + 16) = "MirroredStartWorkoutSessionUntilStartCountdown";
  *(v8 + 24) = 46;
  *(v8 + 32) = 2;
  *(v8 + 40) = xmmword_20B443FD0;
  *(inited + 88) = v8;
  v9 = objc_allocWithZone(type metadata accessor for WorkoutSignposter(0));
  result = WorkoutSignposter.init(intervalSignposts:)(inited);
  static WorkoutSignposter.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for TrackRunningCoordinator(0)) init];
  static TrackRunningCoordinator.shared = result;
  return result;
}

id static LocationManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static LocationManager.shared;

  return v1;
}

void *LocationManager.lastLocation.getter()
{
  v1 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void key path setter for LocationManager.lastLocation : LocationManager(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t LocationManager.lastLocationReceivedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
  swift_beginAccess();
  return outlined init with copy of Date?(v1 + v3, a1);
}

uint64_t key path setter for LocationManager.lastLocationReceivedDate : LocationManager(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of Date?(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
  swift_beginAccess();
  outlined assign with take of Date?(v7, v8 + v9);
  return swift_endAccess();
}

void LocationManager.currentState.getter()
{
  v8 = 0;
  v1 = *&v0[OBJC_IVAR___WOCoreLocationManager_queue];
  v2 = swift_allocObject();
  *(v2 + 16) = &v8;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in LocationManager.currentState.getter;
  *(v3 + 24) = v2;
  aBlock[4] = _sIg_Ieg_TRTA_1;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_34;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
  }
}

char *LocationManager.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v37 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v8, v9);
  v10 = type metadata accessor for DispatchQoS();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v0[OBJC_IVAR___WOCoreLocationManager_lastLocation] = 0;
  v14 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 56))(&v0[v14], 1, 1, v15);
  *&v0[OBJC_IVAR___WOCoreLocationManager_locationManager] = 0;
  v16 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR___WOCoreLocationManager__observers] = MEMORY[0x277D84F90];
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.location);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v18, v19, "[Location Manager] Initializing LocationManager", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  *&v1[OBJC_IVAR___WOCoreLocationManager_state] = 0;
  *&v1[OBJC_IVAR___WOCoreLocationManager_locationRequests] = v16;
  _sSo10CLLocationCMaTm_1(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = v16;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v33 + 104))(v32, *MEMORY[0x277D85260], v34);
  *&v1[OBJC_IVAR___WOCoreLocationManager_queue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v21 = type metadata accessor for LocationManager(0);
  v42.receiver = v1;
  v42.super_class = v21;
  v22 = objc_msgSendSuper2(&v42, sel_init);
  v23 = *&v22[OBJC_IVAR___WOCoreLocationManager_queue];
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  aBlock[4] = partial apply for closure #1 in LocationManager.().init();
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_55_0;
  v25 = _Block_copy(aBlock);
  v26 = v22;
  v27 = v23;
  static DispatchQoS.unspecified.getter();
  v40 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v28 = v37;
  v29 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v28, v25);
  _Block_release(v25);

  (*(v38 + 8))(v28, v29);
  (*(v35 + 8))(v13, v36);

  return v26;
}

void closure #1 in LocationManager.().init()(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = *(a1 + OBJC_IVAR___WOCoreLocationManager_queue);
    v8 = MEMORY[0x20F2E6C00](v4, v6);
  }

  else
  {
    v7 = *(a1 + OBJC_IVAR___WOCoreLocationManager_queue);
    v8 = 0;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277CBFC10]) initWithEffectiveBundleIdentifier:v8 delegate:a1 onQueue:v7];

  v10 = OBJC_IVAR___WOCoreLocationManager_locationManager;
  v11 = *(a1 + OBJC_IVAR___WOCoreLocationManager_locationManager);
  *(a1 + OBJC_IVAR___WOCoreLocationManager_locationManager) = v9;
  v12 = v9;

  if (v12)
  {
    [v12 setAllowsBackgroundLocationUpdates_];
  }

  v13 = *(a1 + v10);
  if (v13)
  {
    v17 = v13;
    [v17 setTrackRunInfoEnabled:1];
    [v17 setActivityType:3];
    LocationManager.configureLocationUpdates()();
  }

  else
  {
    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.location);
    v17 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v15, "[Location Manager] Failed to construct a location manager", v16, 2u);
      MEMORY[0x20F2E9420](v16, -1, -1);
    }
  }
}

void closure #1 in LocationManager.add(observer:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for location != -1)
  {
LABEL_23:
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static WOLog.location);
  swift_unknownObjectRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
    v8 = String.init<A>(describing:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "[Location Manager] Adding observer: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x20F2E9420](v7, -1, -1);
    MEMORY[0x20F2E9420](v6, -1, -1);
  }

  v11 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v12 = *(a2 + v11);
  v19 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  a2 = MEMORY[0x277D84F90];
  while (v13 != v14)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v14, v12);
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v14;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v17);
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      a2 = v19;
      v14 = v15;
    }
  }

  v18 = swift_unknownObjectRetain();
  MEMORY[0x20F2E6F30](v18);
  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized WeakCollection.wrappedValue.setter(a2);
  swift_endAccess();
  LocationManager.configureLocationAccuracy()();
  LocationManager.configureLocationUpdates()();
}

void closure #1 in LocationManager.remove(observer:)(unint64_t a1, unint64_t a2)
{
  if (one-time initialization token for location != -1)
  {
LABEL_24:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.location);
  swift_unknownObjectRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = a1;
    v23[0] = v8;
    *v7 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v23);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[Location Manager] Removing observer: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v12 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v13 = *(a2 + v12);
  v22 = MEMORY[0x277D84F90];
  if (v13 >> 62)
  {
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a2 = v13 & 0xC000000000000001;
  v15 = a1;
  swift_unknownObjectRetain();
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (v14 != v16)
  {
    if (a2)
    {
      MEMORY[0x20F2E7A20](v16, v13);
      a1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      a1 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v16;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v19);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v17 = v22;
      v16 = a1;
    }
  }

  v22 = v17;
  swift_unknownObjectRetain();
  v20 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v22, v15);
  swift_unknownObjectRelease();
  if (v22 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 < v20)
  {
    __break(1u);
  }

  else
  {
    specialized Array.replaceSubrange<A>(_:with:)(v20, v21);
    specialized WeakCollection.wrappedValue.setter(v22);
    swift_endAccess();
    swift_unknownObjectRelease();
    LocationManager.configureLocationAccuracy()();
    LocationManager.configureLocationUpdates()();
  }
}

void @objc LocationManager.add(observer:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3, v7);
  swift_unknownObjectRelease();
}

void LocationManager.requestSingleLocationUpdate(timeout:requestedAccuracy:acceptableAccuracy:completion:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v16 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v17);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *&v5[OBJC_IVAR___WOCoreLocationManager_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = v5;
  *(v20 + 24) = a1;
  *(v20 + 32) = a2;
  *(v20 + 40) = a3;
  *(v20 + 48) = a4;
  *(v20 + 56) = a5;
  aBlock[4] = partial apply for closure #1 in LocationManager.requestSingleLocationUpdate(timeout:requestedAccuracy:acceptableAccuracy:completion:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_9_3;
  v21 = _Block_copy(aBlock);
  v22 = v5;

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v19, v15, v21);
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v24);
}

void closure #1 in LocationManager.requestSingleLocationUpdate(timeout:requestedAccuracy:acceptableAccuracy:completion:)(uint64_t a1, void (*a2)(void), uint64_t a3, double a4, double a5, double a6)
{
  v8 = *(a1 + OBJC_IVAR___WOCoreLocationManager_locationManager);
  if (v8)
  {
    v24 = v8;
    if ([v24 authorizationStatus] == 4 || objc_msgSend(v24, sel_authorizationStatus) == 3)
    {
      if (one-time initialization token for location != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static WOLog.location);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = a4;
        _os_log_impl(&dword_20AEA4000, v14, v15, "[Location Manager] Requesting location with timeout: %f", v16, 0xCu);
        MEMORY[0x20F2E9420](v16, -1, -1);
      }

      v17 = *(a1 + OBJC_IVAR___WOCoreLocationManager_queue);
      type metadata accessor for LocationRequest();
      v18 = swift_allocObject();
      *(v18 + 56) = 0;
      swift_unknownObjectWeakInit();
      *(v18 + 72) = 0;
      *(v18 + 80) = 0;
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;
      *(v18 + 32) = a6;
      *(v18 + 40) = v17;
      *(v18 + 56) = &protocol witness table for LocationManager;
      *(v18 + 64) = 0;
      swift_unknownObjectWeakAssign();
      v19 = *(v18 + 72);
      v20 = *(v18 + 80);
      *(v18 + 72) = a2;
      *(v18 + 80) = a3;
      v21 = v17;
      outlined consume of (@escaping @callee_guaranteed (@guaranteed CLLocation?) -> ())?(v19, v20);
      v22 = OBJC_IVAR___WOCoreLocationManager_locationRequests;
      swift_beginAccess();

      MEMORY[0x20F2E6F30](v23);
      if (*((*(a1 + v22) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v22) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      LocationManager.configureLocationAccuracy()();
      [v24 requestLocation];
      LocationRequest.start()();
    }

    else
    {
      a2(0);
    }
  }

  else
  {
    (a2)(0, a4, a5, a6);
  }
}

double LocationManager.isAuthorizedAsync(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR___WOCoreLocationManager_queue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = partial apply for closure #1 in LocationManager.isAuthorizedAsync(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_15_3;
  v15 = _Block_copy(aBlock);
  v16 = v2;

  static DispatchQoS.unspecified.getter();
  v20 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v13, v9, v15);
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);

  return result;
}

void closure #1 in LocationManager.isAuthorizedAsync(_:)(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = *(a1 + OBJC_IVAR___WOCoreLocationManager_locationManager);
  if (!v3)
  {
    a2(0);
    return;
  }

  v6 = v3;
  v4 = [v6 authorizationStatus];
  if (v4 >= 3)
  {
    if (v4 - 3 >= 2)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000052, 0x800000020B45F120, "WorkoutCore/LocationManager.swift", 33, 2, 170, 0);
      __break(1u);
      return;
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  a2(v5);
}

Swift::Bool __swiftcall LocationManager.cacheLastKnownLocation(_:)(CLLocation a1)
{
  isa = a1.super.isa;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v29[-v5];
  [(objc_class *)isa horizontalAccuracy];
  v8 = v7;
  if (v7 > 1000.0)
  {
    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.location);
    v23 = isa;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      [(objc_class *)v23 horizontalAccuracy];
      *(v26 + 4) = v27;
      _os_log_impl(&dword_20AEA4000, v24, v25, "[Location Manager] Rejected cached location update due to inaccuracy: %fm", v26, 0xCu);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }
  }

  else
  {
    v9 = OBJC_IVAR___WOCoreLocationManager_lastLocation;
    swift_beginAccess();
    v10 = *(v1 + v9);
    *(v1 + v9) = isa;
    v11 = isa;

    v12 = [(objc_class *)v11 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = type metadata accessor for Date();
    (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
    v14 = OBJC_IVAR___WOCoreLocationManager_lastLocationReceivedDate;
    swift_beginAccess();
    outlined assign with take of Date?(v6, v1 + v14);
    swift_endAccess();
    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static WOLog.location);
    v16 = v11;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = isa;
      v21 = v16;
      _os_log_impl(&dword_20AEA4000, v17, v18, "[Location Manager] Updated cached location: %@", v19, 0xCu);
      _sSo8NSObjectCSgWOhTm_4(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v20, -1, -1);
      MEMORY[0x20F2E9420](v19, -1, -1);
    }
  }

  return v8 <= 1000.0;
}

void LocationManager.configureLocationUpdates()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR___WOCoreLocationManager_queue];
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = (v3 + 8);
  v11(v6, v2);
  if ((v9 & 1) == 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    v13 = __CocoaSet.count.getter();
    goto LABEL_5;
  }

  v10 = *&v0[OBJC_IVAR___WOCoreLocationManager_locationManager];
  if (!v10)
  {
    return;
  }

  v12 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v100 = v12;
  v9 = *&v0[v12];
  v109 = MEMORY[0x277D84F90];
  v105 = v0;
  v1 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_60;
  }

  v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v101 = v10;

  v10 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v13 != v10)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v10, v9);
      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v10 >= *(v1 + 16))
      {
        goto LABEL_55;
      }

      v15 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v10;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v17);
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = v109;
      v10 = v15;
    }
  }

  if (v14 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v105;

  LODWORD(v19) = [v101 authorizationStatus];
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v107 = __swift_project_value_buffer(v20, static WOLog.location);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v19;
    _os_log_impl(&dword_20AEA4000, v21, v22, "[Location Manager] configuring state with authorizationStatus: %d", v23, 8u);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

  if (v18)
  {
    v9 = *(v100 + v10);
    v109 = MEMORY[0x277D84F90];
    LODWORD(v99) = v19;
    if (v9 >> 62)
    {
      v24 = __CocoaSet.count.getter();
    }

    else
    {
      v24 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = v9 & 0xC000000000000001;

    v25 = 0;
    v104 = MEMORY[0x277D84F90];
    while (v24 != v25)
    {
      if (v1)
      {
        LODWORD(v19) = MEMORY[0x20F2E7A20](v25, v9);
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v25 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }

        v19 = *(v9 + 8 * v25 + 32);

        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_56;
        }
      }

      v10 = swift_unknownObjectWeakLoadStrong();

      ++v25;
      if (v10)
      {
        MEMORY[0x20F2E6F30](v27);
        if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v104 = v109;
        v25 = v26;
      }
    }

    v98 = v18;

    v9 = v104;
    if (v104 >> 62)
    {
      v29 = __CocoaSet.count.getter();
      if (v29)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v29 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
LABEL_40:
        v18 = 0;
        v10 = (v9 & 0xC000000000000001);
        v30 = v9 & 0xFFFFFFFFFFFFFF8;
        *&v28 = 136315394;
        v102 = v28;
        v103 = v9 & 0xC000000000000001;
        do
        {
          if (v10)
          {
            v31 = MEMORY[0x20F2E7A20](v18, v9);
            v1 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
              goto LABEL_49;
            }
          }

          else
          {
            if (v18 >= *(v30 + 16))
            {
              goto LABEL_58;
            }

            v31 = *(v9 + 8 * v18 + 32);
            swift_unknownObjectRetain();
            v1 = v18 + 1;
            if (__OFADD__(v18, 1))
            {
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }
          }

          swift_unknownObjectRetain();
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.default.getter();
          swift_unknownObjectRelease();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v106 = swift_slowAlloc();
            v108 = v31;
            v109 = v106;
            *v34 = v102;
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
            v35 = String.init<A>(describing:)();
            LODWORD(v19) = v36;
            v37 = v30;
            v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v109);

            *(v34 + 4) = v38;
            v30 = v37;
            *(v34 + 12) = 2048;
            [v31 locationManagerRequestedAccuracy];
            *(v34 + 14) = v39;
            _os_log_impl(&dword_20AEA4000, v32, v33, "[Location Manager] Observer: %s, requestedAccuracy: %f", v34, 0x16u);
            v40 = v106;
            __swift_destroy_boxed_opaque_existential_0(v106);
            v41 = v40;
            v10 = v103;
            MEMORY[0x20F2E9420](v41, -1, -1);
            v42 = v34;
            v9 = v104;
            MEMORY[0x20F2E9420](v42, -1, -1);
          }

          swift_unknownObjectRelease();

          ++v18;
        }

        while (v1 != v29);
      }
    }

    v10 = v105;
    v18 = v98;
    LODWORD(v19) = v99;
    if (v99)
    {
      goto LABEL_65;
    }

LABEL_53:
    LocationManager.set(state:)(1);
    goto LABEL_133;
  }

LABEL_50:
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_20AEA4000, v43, v44, "[Location Manager] no current observers", v45, 2u);
    MEMORY[0x20F2E9420](v45, -1, -1);
  }

  if (!v19)
  {
    goto LABEL_53;
  }

LABEL_65:
  v46 = OBJC_IVAR___WOCoreLocationManager_state;
  v47 = *&v10[OBJC_IVAR___WOCoreLocationManager_state];
  if (v18 && v19 > 2)
  {
    if (v47 == 2)
    {
      goto LABEL_133;
    }

    *&v10[OBJC_IVAR___WOCoreLocationManager_state] = 2;
    LocationManager.startUpdatingLocation()();
    v48 = *&v10[v46];
    v49 = *(v100 + v10);
    v109 = MEMORY[0x277D84F90];
    v50 = v49 & 0xFFFFFFFFFFFFFF8;
    if (v49 >> 62)
    {
      v51 = __CocoaSet.count.getter();
    }

    else
    {
      v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v52 = 0;
    v103 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v51 == v52)
      {
        goto LABEL_109;
      }

      if ((v49 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v52, v49);
        v53 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          goto LABEL_122;
        }
      }

      else
      {
        if (v52 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_124;
        }

        v53 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
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
          v56 = __CocoaSet.count.getter();
          goto LABEL_85;
        }
      }

      v54 = swift_unknownObjectWeakLoadStrong();

      ++v52;
      if (v54)
      {
        MEMORY[0x20F2E6F30](v55);
        if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v103 = v109;
        v52 = v53;
      }
    }
  }

  if (v47 == 3)
  {
    goto LABEL_133;
  }

  *&v10[OBJC_IVAR___WOCoreLocationManager_state] = 3;
  LocationManager.stopUpdatingLocation()();
  v48 = *&v10[v46];
  v49 = *(v100 + v10);
  v109 = MEMORY[0x277D84F90];
  v50 = v49 & 0xFFFFFFFFFFFFFF8;
  if (v49 >> 62)
  {
    goto LABEL_127;
  }

  v56 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_85:

  v57 = 0;
  v103 = MEMORY[0x277D84F90];
  while (v56 != v57)
  {
    if ((v49 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v57, v49);
      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }
    }

    else
    {
      if (v57 >= *(v50 + 16))
      {
        goto LABEL_123;
      }

      v58 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        goto LABEL_121;
      }
    }

    v59 = swift_unknownObjectWeakLoadStrong();

    ++v57;
    if (v59)
    {
      MEMORY[0x20F2E6F30](v60);
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v103 = v109;
      v57 = v58;
    }
  }

  v49 = v103;
  if (v103 >> 62)
  {
    v62 = __CocoaSet.count.getter();
    if (!v62)
    {
      goto LABEL_132;
    }
  }

  else
  {
    v62 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v62)
    {
      goto LABEL_132;
    }
  }

  v63 = 0;
  v50 = v49 & 0xC000000000000001;
  v64 = v49 & 0xFFFFFFFFFFFFFF8;
  *&v61 = 136315138;
  v99 = v61;
  v65 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
  *&v102 = v48;
  v100 = v62;
  while (1)
  {
    if (v50)
    {
      v66 = MEMORY[0x20F2E7A20](v63, v49);
      v67 = (v63 + 1);
      if (__OFADD__(v63, 1))
      {
        break;
      }

      goto LABEL_104;
    }

    if (v63 >= *(v64 + 16))
    {
      goto LABEL_125;
    }

    v66 = *(v49 + 8 * v63 + 32);
    swift_unknownObjectRetain();
    v67 = (v63 + 1);
    if (__OFADD__(v63, 1))
    {
      break;
    }

LABEL_104:
    v106 = v67;
    swift_unknownObjectRetain();
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v108 = v66;
      v109 = v104;
      *v70 = v99;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
      v71 = String.init<A>(describing:)();
      v73 = v65;
      v74 = v64;
      v75 = v50;
      v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, &v109);
      v49 = v103;

      *(v70 + 4) = v76;
      v50 = v75;
      v64 = v74;
      v65 = v73;
      _os_log_impl(&dword_20AEA4000, v68, v69, "[Location Manager] Notifying %s about new location manager state", v70, 0xCu);
      v77 = v104;
      __swift_destroy_boxed_opaque_existential_0(v104);
      v62 = v100;
      MEMORY[0x20F2E9420](v77, -1, -1);
      v78 = v70;
      v48 = v102;
      MEMORY[0x20F2E9420](v78, -1, -1);
    }

    [v66 v65[304]];
    swift_unknownObjectRelease();
    ++v63;
    if (v106 == v62)
    {
      goto LABEL_132;
    }
  }

  __break(1u);
LABEL_109:

  v49 = v103;
  if (v103 >> 62)
  {
    v80 = __CocoaSet.count.getter();
    if (v80)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v80 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v80)
    {
LABEL_111:
      v81 = 0;
      v50 = v49 & 0xC000000000000001;
      v82 = v49 & 0xFFFFFFFFFFFFFF8;
      *&v79 = 136315138;
      v99 = v79;
      v83 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      *&v102 = v48;
      v100 = v80;
      do
      {
        if (v50)
        {
          v84 = MEMORY[0x20F2E7A20](v81, v49);
          v85 = (v81 + 1);
          if (__OFADD__(v81, 1))
          {
            goto LABEL_120;
          }
        }

        else
        {
          if (v81 >= *(v82 + 16))
          {
            goto LABEL_126;
          }

          v84 = *(v49 + 8 * v81 + 32);
          swift_unknownObjectRetain();
          v85 = (v81 + 1);
          if (__OFADD__(v81, 1))
          {
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }
        }

        v106 = v85;
        swift_unknownObjectRetain();
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          v108 = v84;
          v109 = v104;
          *v88 = v99;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
          v89 = String.init<A>(describing:)();
          v91 = v83;
          v92 = v82;
          v93 = v50;
          v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v109);
          v49 = v103;

          *(v88 + 4) = v94;
          v50 = v93;
          v82 = v92;
          v83 = v91;
          _os_log_impl(&dword_20AEA4000, v86, v87, "[Location Manager] Notifying %s about new location manager state", v88, 0xCu);
          v95 = v104;
          __swift_destroy_boxed_opaque_existential_0(v104);
          v80 = v100;
          MEMORY[0x20F2E9420](v95, -1, -1);
          v96 = v88;
          v48 = v102;
          MEMORY[0x20F2E9420](v96, -1, -1);
        }

        [v84 v83[304]];
        swift_unknownObjectRelease();
        ++v81;
      }

      while (v106 != v80);
    }
  }

LABEL_132:

LABEL_133:
}

void LocationManager.set(state:)(uint64_t a1)
{
  v2 = OBJC_IVAR___WOCoreLocationManager_state;
  if (*(v1 + OBJC_IVAR___WOCoreLocationManager_state) == a1)
  {
    return;
  }

  v3 = v1;
  *(v1 + OBJC_IVAR___WOCoreLocationManager_state) = a1;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      LocationManager.stopUpdatingLocation()();
      goto LABEL_13;
    }

    goto LABEL_51;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      LocationManager.startUpdatingLocation()();
      goto LABEL_13;
    }

    if (!a1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000029, 0x800000020B45F0C0, "WorkoutCore/LocationManager.swift", 33, 2, 221, 0);
      __break(1u);
    }

LABEL_51:
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.location);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_20AEA4000, v5, v6, "[Location Manager] Requesting location authorization", v7, 2u);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  [*(v3 + OBJC_IVAR___WOCoreLocationManager_locationManager) requestWhenInUseAuthorization];
LABEL_13:
  v36 = *(v3 + v2);
  v8 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v9 = *(v3 + v8);
  v37 = MEMORY[0x277D84F90];
  v34 = v3;
  v10 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
LABEL_45:
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v35 = MEMORY[0x277D84F90];
  while (v11 != v12)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v12, v9);
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_42;
      }

      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v12;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v15);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v35 = v37;
      v12 = v13;
    }
  }

  v10 = v34;
  v16 = v35;
  if (v35 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v9 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_29:
      v17 = 0;
      v18 = v35 & 0xC000000000000001;
      v19 = v35 & 0xFFFFFFFFFFFFFF8;
      v33 = v9;
      do
      {
        if (v18)
        {
          v20 = MEMORY[0x20F2E7A20](v17, v16);
          v21 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v17 >= *(v19 + 16))
          {
            goto LABEL_44;
          }

          v20 = *(v16 + 8 * v17 + 32);
          swift_unknownObjectRetain();
          v21 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_43;
          }
        }

        if (one-time initialization token for location != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static WOLog.location);
        swift_unknownObjectRetain();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = v18;
          v27 = swift_slowAlloc();
          v37 = v27;
          *v25 = 136315138;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
          v28 = String.init<A>(describing:)();
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, &v37);
          v16 = v35;

          *(v25 + 4) = v30;
          _os_log_impl(&dword_20AEA4000, v23, v24, "[Location Manager] Notifying %s about new location manager state", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v27);
          v31 = v27;
          v18 = v26;
          v9 = v33;
          v10 = v34;
          MEMORY[0x20F2E9420](v31, -1, -1);
          v32 = v25;
          v19 = v35 & 0xFFFFFFFFFFFFFF8;
          MEMORY[0x20F2E9420](v32, -1, -1);
        }

        [v20 locationManagerStateDidChangeWithState:v36 locationManager:v10];
        swift_unknownObjectRelease();
        ++v17;
      }

      while (v21 != v9);
    }
  }
}

id LocationManager.startUpdatingLocation()(const char *a1, const char **a2)
{
  v5 = v2;
  if (one-time initialization token for location != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static WOLog.location);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20AEA4000, v7, v8, a1, v9, 2u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v10 = *(v5 + OBJC_IVAR___WOCoreLocationManager_locationManager);
  v11 = *a2;

  return [v10 v11];
}

void LocationManager.configureLocationAccuracy()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR___WOCoreLocationManager_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_43;
  }

  v9 = MEMORY[0x277CE4270];
  v10 = OBJC_IVAR___WOCoreLocationManager_locationRequests;
  swift_beginAccess();
  v2 = *(v1 + v10);
  if (v2 >> 62)
  {
LABEL_44:
    v11 = __CocoaSet.count.getter();
    v12 = *v9;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_4;
  }

  v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v12 = *v9;
  if (!v11)
  {
LABEL_13:
    v17 = OBJC_IVAR___WOCoreLocationManager__observers;
    swift_beginAccess();
    v18 = *(v1 + v17);
    v34 = MEMORY[0x277D84F90];
    if (v18 >> 62)
    {
      v9 = __CocoaSet.count.getter();
    }

    else
    {
      v9 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    v2 = MEMORY[0x277D84F90];
    while (v9 != v19)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v19, v18);
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        if (v19 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_40;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();

      ++v19;
      if (Strong)
      {
        MEMORY[0x20F2E6F30](v22);
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v2 = v34;
        v19 = v20;
      }
    }

    if (v2 >> 62)
    {
      v23 = __CocoaSet.count.getter();
      if (v23)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_29:
        v9 = 0;
        v24 = v12;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x20F2E7A20](v9, v2);
            v26 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v9 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v25 = *(v2 + 8 * v9 + 32);
            swift_unknownObjectRetain();
            v26 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }
          }

          [v25 locationManagerRequestedAccuracy];
          v28 = v27;
          swift_unknownObjectRelease();
          if (v28 < v12)
          {
            v24 = v28;
            v12 = v28;
          }

          ++v9;
          if (v26 == v23)
          {
            goto LABEL_49;
          }
        }
      }
    }

    v24 = v12;
LABEL_49:

    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static WOLog.location);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v24;
      _os_log_impl(&dword_20AEA4000, v30, v31, "[Location Manager] Setting location accuracy to %f", v32, 0xCu);
      MEMORY[0x20F2E9420](v32, -1, -1);
    }

    [*(v1 + OBJC_IVAR___WOCoreLocationManager_locationManager) setDesiredAccuracy_];
    return;
  }

LABEL_4:
  if (v11 >= 1)
  {

    v13 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x20F2E7A20](v13++, v2);
        v15 = *(v14 + 24);
        swift_unknownObjectRelease();
        if (v15 < v12)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v16 = *(v2 + 32 + 8 * v13++);
        v15 = *(v16 + 24);
        if (v15 < v12)
        {
LABEL_11:
          v12 = v15;
        }
      }

      if (v13 == v11)
      {

        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

void LocationManager.cleanupIfNecessary()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v15 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_26:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v5;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v9);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = v15;
      v5 = v7;
    }
  }

  if (v6 >> 62)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v10)
  {
    if (one-time initialization token for location != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.location);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20AEA4000, v12, v13, "[Location Manager] No remaining observers. Cleaning up...", v14, 2u);
      MEMORY[0x20F2E9420](v14, -1, -1);
    }

    LocationManager.configureLocationUpdates()();
  }
}

void LocationManager.completeLocationRequests(location:)(objc_class *a1)
{
  v10 = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR___WOCoreLocationManager_locationRequests;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_16:
    v7 = MEMORY[0x277D84F90];
LABEL_17:
    *(v1 + v3) = v7;

    return;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F2E7A20](v6, v4);
      }

      else
      {
      }

      v8.value.super.isa = a1;
      if (LocationRequest.received(_:)(v8))
      {
      }

      else
      {

        MEMORY[0x20F2E6F30](v9);
        if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v7 = v10;
      }

      ++v6;
    }

    while (v5 != v6);

    goto LABEL_17;
  }

  __break(1u);
}

Swift::Void __swiftcall LocationManager.locationManagerDidChangeAuthorization(_:)(CLLocationManager a1)
{
  v2 = v1;
  isa = a1.super.isa;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___WOCoreLocationManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v46 = [(objc_class *)isa authorizationStatus];
  if (one-time initialization token for location != -1)
  {
LABEL_35:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v45 = __swift_project_value_buffer(v11, static WOLog.location);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v46;
    _os_log_impl(&dword_20AEA4000, v12, v13, "[Location Manager] New authorization status: %d", v14, 8u);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  LocationManager.configureLocationUpdates()();
  v15 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v49 = MEMORY[0x277D84F90];
  v42 = v2;
  if (v16 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v43 = MEMORY[0x277D84F90];
  while (v2 != v17)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v17, v16);
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      if (v17 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_31;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v17;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v20);
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v43 = v49;
      v17 = v18;
    }
  }

  v22 = v42;
  v23 = v43;
  if (v43 >> 62)
  {
    v24 = __CocoaSet.count.getter();
    if (v24)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_21:
      v2 = 0;
      v25 = v23 & 0xC000000000000001;
      v26 = v23 & 0xFFFFFFFFFFFFFF8;
      *&v21 = 136315138;
      v41 = v21;
      v27 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      do
      {
        if (v25)
        {
          v28 = MEMORY[0x20F2E7A20](v2, v23);
          v29 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_30;
          }
        }

        else
        {
          if (v2 >= *(v26 + 16))
          {
            goto LABEL_33;
          }

          v28 = *(v23 + 8 * v2 + 32);
          swift_unknownObjectRetain();
          v29 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        v47 = v29;
        swift_unknownObjectRetain();
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v48 = v28;
          v49 = v44;
          *v32 = v41;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
          v33 = String.init<A>(describing:)();
          v35 = v26;
          v36 = v24;
          v37 = v25;
          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v49);

          *(v32 + 4) = v38;
          v25 = v37;
          v24 = v36;
          v26 = v35;
          _os_log_impl(&dword_20AEA4000, v30, v31, "[Location Manager] Notifying %s about new authorization status", v32, 0xCu);
          v39 = v44;
          __swift_destroy_boxed_opaque_existential_0(v44);
          v23 = v43;
          MEMORY[0x20F2E9420](v39, -1, -1);
          v40 = v32;
          v27 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
          v22 = v42;
          MEMORY[0x20F2E9420](v40, -1, -1);
        }

        [v28 v27[299]];
        swift_unknownObjectRelease();
        ++v2;
      }

      while (v47 != v24);
    }
  }
}

void LocationManager.requestDidTimeout(request:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___WOCoreLocationManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for location == -1)
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
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static WOLog.location);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_20AEA4000, v12, v13, "[Location Manager] Location request timeout", v14, 2u);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  v15 = OBJC_IVAR___WOCoreLocationManager_locationRequests;
  swift_beginAccess();

  v16 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v2 + v15), a1);

  v17 = *(v2 + v15);
  if (v17 >> 62)
  {
    v18 = __CocoaSet.count.getter();
    if (v18 >= v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= v16)
    {
LABEL_7:
      specialized Array.replaceSubrange<A>(_:with:)(v16, v18);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

id LocationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocationManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double specialized LocationManager.add(observer:)(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&a2[OBJC_IVAR___WOCoreLocationManager_queue];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = _s11WorkoutCore15LocationManagerC3add8observeryAA0cD8Observer_p_tFyyYbcfU_TA_0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_71_1;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v15 = a2;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_3(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_3(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);

  return result;
}

void specialized LocationManager.remove(observer:)(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR___WOCoreLocationManager_queue];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = _s11WorkoutCore15LocationManagerC6remove8observeryAA0cD8Observer_p_tFyyXEfU_TA_1;
  *(v6 + 24) = v5;
  v16[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v16[5] = v6;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed () -> ();
  v16[3] = &block_descriptor_65;
  v7 = _Block_copy(v16);
  swift_unknownObjectRetain();
  v8 = a2;

  v9 = v4;
  v10 = v7;
  v11 = v9;
  label = dispatch_queue_get_label(v11);
  v13 = dispatch_queue_get_label(0);

  if (label == v13)
  {
    v14 = objc_autoreleasePoolPush();
    v10[2](v10);
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    dispatch_sync(v11, v10);
  }

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v16 = MEMORY[0x20F2E7A20](v11, v7);
    swift_unknownObjectRelease();
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x20F2E7A20](v10, v7);
        v14 = MEMORY[0x20F2E7A20](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v13)
    {
      goto LABEL_40;
    }

    v14 = *(v7 + 32 + 8 * v11);
    if (v14 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v13)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v15 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v15) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;

        if ((v7 & 0x8000000000000000) != 0 || v15)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return __CocoaSet.count.getter();
}

{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == __CocoaSet.count.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x20F2E7A20](v11, v7);
      goto LABEL_17;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v13 = *(v7 + 8 * v11 + 32);
    swift_unknownObjectRetain();
LABEL_17:
    swift_unknownObjectRelease();
    if (v13 != a2)
    {
      if (v10 != v11)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x20F2E7A20](v10, v7);
          v14 = MEMORY[0x20F2E7A20](v11, v7);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_46;
          }

          v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10 >= v15)
          {
            goto LABEL_47;
          }

          if (v11 >= v15)
          {
            goto LABEL_48;
          }

          v3 = *(v7 + 32 + 8 * v10);
          v14 = *(v7 + 32 + 8 * v11);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v16 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v16) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v14;
        swift_unknownObjectRelease();
        if ((v7 & 0x8000000000000000) != 0 || v16)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_39:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        *(v4 + 8 * v11 + 32) = v3;
        swift_unknownObjectRelease();
        *a1 = v7;
      }

      v12 = __OFADD__(v10++, 1);
      if (v12)
      {
        goto LABEL_44;
      }
    }

    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return __CocoaSet.count.getter();
}

unint64_t specialized LocationManager.State.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t objectdestroy_5Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void specialized LocationManager.locationManager(_:didUpdateLocations:)(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR___WOCoreLocationManager_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    goto LABEL_44;
  }

  if (one-time initialization token for location != -1)
  {
LABEL_45:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = __swift_project_value_buffer(v11, static WOLog.location);

  v54 = v12;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = a1 >> 62;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    if (v15)
    {
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 4) = v17;

    _os_log_impl(&dword_20AEA4000, v13, v14, "[Location Manager] Did update %ld locations points", v16, 0xCu);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  else
  {
  }

  if (v15)
  {
    v18 = __CocoaSet.count.getter();
    if (!v18)
    {
      return;
    }
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return;
    }
  }

  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_49;
  }

  v50 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_49:
    v21 = MEMORY[0x20F2E7A20](v20, a1);
    goto LABEL_15;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_51;
  }

  if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_53;
  }

  v21 = *(a1 + 8 * v20 + 32);
LABEL_15:
  v47 = v21;
  LocationManager.cacheLastKnownLocation(_:)(*&v21);
  v23 = OBJC_IVAR___WOCoreLocationManager__observers;
  swift_beginAccess();
  a1 = *(v2 + v23);
  v56 = MEMORY[0x277D84F90];
  v15 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_51:
    v24 = __CocoaSet.count.getter();
    goto LABEL_17;
  }

  v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:

  v25 = 0;
  v51 = MEMORY[0x277D84F90];
  while (v24 != v25)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v25, a1);
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      if (v25 >= *(v15 + 16))
      {
        goto LABEL_42;
      }

      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_41;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v25;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v28);
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v51 = v56;
      v25 = v26;
    }
  }

  a1 = v51;
  if (!(v51 >> 62))
  {
    v30 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_31:
      v31 = 0;
      v52 = a1 & 0xFFFFFFFFFFFFFF8;
      v53 = a1 & 0xC000000000000001;
      *&v29 = 136315138;
      v48 = v29;
      v49 = v30;
      while (1)
      {
        if (v53)
        {
          v33 = MEMORY[0x20F2E7A20](v31, a1);
          v34 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v31 >= *(v52 + 16))
          {
            goto LABEL_43;
          }

          v33 = *(a1 + 8 * v31 + 32);
          swift_unknownObjectRetain();
          v34 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        swift_unknownObjectRetain();
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = v2;
          v39 = swift_slowAlloc();
          v55 = v33;
          v56 = v39;
          *v37 = v48;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
          v40 = String.init<A>(describing:)();
          v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v56);

          *(v37 + 4) = v42;
          a1 = v51;
          _os_log_impl(&dword_20AEA4000, v35, v36, "[Location Manager] Notifying %s about location update.", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          v43 = v39;
          v2 = v38;
          v30 = v49;
          MEMORY[0x20F2E9420](v43, -1, -1);
          MEMORY[0x20F2E9420](v37, -1, -1);
        }

        _sSo10CLLocationCMaTm_1(0, &lazy cache variable for type metadata for CLLocation, 0x277CE41F8);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v33 locationDidUpdateWithLocations:isa locationManager:v2];
        swift_unknownObjectRelease();

        ++v31;
        if (v34 == v30)
        {
          goto LABEL_54;
        }
      }
    }

    goto LABEL_54;
  }

LABEL_53:
  v30 = __CocoaSet.count.getter();
  if (v30)
  {
    goto LABEL_31;
  }

LABEL_54:

  v44 = v47;
  v45 = v47;
  LocationManager.completeLocationRequests(location:)(v44);

  LocationManager.cleanupIfNecessary()();
}

void specialized LocationManager.locationManager(_:didFailWithError:)(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = v1;
  v8 = *(v1 + OBJC_IVAR___WOCoreLocationManager_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (one-time initialization token for location != -1)
  {
LABEL_36:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static WOLog.location);
  v12 = a1;
  v58 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v62 = a1;
    v63[0] = v16;
    *v15 = 136315138;
    v17 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v63);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v13, v14, "[Location Manager] Failed updating location, error: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  v59 = _convertErrorToNSError(_:)();
  v21 = OBJC_IVAR___WOCoreLocationManager__observers;
  v22 = v60;
  swift_beginAccess();
  v23 = *(v22 + v21);
  v62 = MEMORY[0x277D84F90];
  if (v23 >> 62)
  {
    v24 = __CocoaSet.count.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a1 = (v23 & 0xC000000000000001);

  v25 = 0;
  v54 = MEMORY[0x277D84F90];
  while (v24 != v25)
  {
    if (a1)
    {
      MEMORY[0x20F2E7A20](v25, v23);
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_32;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    ++v25;
    if (Strong)
    {
      MEMORY[0x20F2E6F30](v28);
      if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v54 = v62;
      v25 = v26;
    }
  }

  v30 = v54;
  if (v54 >> 62)
  {
    v31 = __CocoaSet.count.getter();
    if (v31)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v31 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
LABEL_21:
      v32 = 0;
      a1 = (v30 & 0xC000000000000001);
      v33 = v30 & 0xFFFFFFFFFFFFFF8;
      *&v29 = 136315138;
      v53 = v29;
      v34 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
      do
      {
        if (a1)
        {
          v35 = MEMORY[0x20F2E7A20](v32, v30);
          v36 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v32 >= *(v33 + 16))
          {
            goto LABEL_34;
          }

          v35 = *(v30 + 8 * v32 + 32);
          swift_unknownObjectRetain();
          v36 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }
        }

        swift_unknownObjectRetain();
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v57 = v36;
          v40 = v39;
          v56 = swift_slowAlloc();
          v61 = v35;
          v62 = v56;
          *v40 = v53;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore23LocationManagerObserver_pMd, &_s11WorkoutCore23LocationManagerObserver_pMR);
          v41 = String.init<A>(describing:)();
          v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v62);
          v55 = v37;
          v44 = v38;
          v45 = v34;
          v46 = v33;
          v47 = v31;
          v48 = a1;
          v49 = v43;
          v30 = v54;

          *(v40 + 4) = v49;
          a1 = v48;
          v31 = v47;
          v33 = v46;
          v34 = v45;
          v50 = v55;
          _os_log_impl(&dword_20AEA4000, v55, v44, "[Location Manager] Notifying %s about location error", v40, 0xCu);
          v51 = v56;
          __swift_destroy_boxed_opaque_existential_0(v56);
          MEMORY[0x20F2E9420](v51, -1, -1);
          v52 = v40;
          v36 = v57;
          MEMORY[0x20F2E9420](v52, -1, -1);
        }

        else
        {
        }

        [v35 v34[310]];
        swift_unknownObjectRelease();
        ++v32;
      }

      while (v36 != v31);
    }
  }

  LocationManager.completeLocationRequests(location:)(0);
}

uint64_t type metadata accessor for LocationManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for LocationManager;
  if (!type metadata singleton initialization cache for LocationManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LocationManager.State and conformance LocationManager.State()
{
  result = lazy protocol witness table cache variable for type LocationManager.State and conformance LocationManager.State;
  if (!lazy protocol witness table cache variable for type LocationManager.State and conformance LocationManager.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationManager.State and conformance LocationManager.State);
  }

  return result;
}

void type metadata completion function for LocationManager(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t _sSo10CLLocationCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id specialized static FitnessTrackingSettingsNavigator.openSettings()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = v46 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = v46 - v19;
  (*(v1 + 56))(v46 - v19, 1, 1, v0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v48 = static WorkoutDevicesProvider.shared;
  v21 = static WorkoutDevicesProvider.shared;
  WorkoutReadinessChecker.shouldUseWatchFitnessTracking()();
  URL.init(string:)();
  outlined destroy of URL?(v20);
  outlined init with take of URL?(v17, v20);
  outlined init with copy of URL?(v20, v13);
  if ((*(v1 + 48))(v13, 1, v0) == 1)
  {
    outlined destroy of URL?(v13);
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.activityPicker);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_20AEA4000, v23, v24, "Failed to create URL for fitness tracking deeplink", v25, 2u);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    return outlined destroy of URL?(v20);
  }

  (*(v1 + 32))(v8, v13, v0);
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static WOLog.activityPicker);
  (*(v1 + 16))(v5, v8, v0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  v29 = os_log_type_enabled(v27, v28);
  v46[1] = v1;
  v47 = v21;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v48 = v31;
    *v30 = 136315138;
    v32 = URL.absoluteString.getter();
    v46[0] = v8;
    v34 = v33;
    v35 = *(v1 + 8);
    v35(v5, v0);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v48);
    v8 = v46[0];

    *(v30 + 4) = v36;
    _os_log_impl(&dword_20AEA4000, v27, v28, "Opening deeplink to fitness tracking. url=%s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x20F2E9420](v31, -1, -1);
    v37 = v30;
    v38 = v35;
    MEMORY[0x20F2E9420](v37, -1, -1);
  }

  else
  {

    v38 = *(v1 + 8);
    v38(v5, v0);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v41 = result;
    URL._bridgeToObjectiveC()(v40);
    v43 = v42;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v44 = v8;
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v41 openSensitiveURL:v43 withOptions:isa];

    v38(v44, v0);
    return outlined destroy of URL?(v20);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static TargetAlerts.defaultTargetAlerts(for:)(void *a1)
{
  v4 = 1;
  if ([a1 isIndoor])
  {
    if ([a1 effectiveTypeIdentifier] == 37)
    {
      v2 = type metadata accessor for WorkoutKitFeatures();
      v6[3] = v2;
      v6[4] = lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v6);
      (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FC8], v2);
      LOBYTE(v2) = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_1(v6);
      if (v2)
      {
        v4 = 0;
      }
    }
  }

  type metadata accessor for TargetAlerts();
  result = swift_allocObject();
  *(result + 16) = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TargetAlerts.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TargetAlerts.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance TargetAlerts.CodingKeys(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance TargetAlerts.CodingKeys, *a1);

  *a2 = v3 != 0;
}

void protocol witness for CodingKey.init(stringValue:) in conformance TargetAlerts.CodingKeys(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance TargetAlerts.CodingKeys, v3);

  *a2 = v5 != 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TargetAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TargetAlerts.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TargetAlerts.__allocating_init(intervalTargetAlertsEnabled:)(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TargetAlerts.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  TargetAlerts.init(from:)(a1);
  return v2;
}

uint64_t TargetAlerts.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore12TargetAlertsC10CodingKeys33_C2F5E9A35A1EAA6CE48B8FAF02929C8ALLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore12TargetAlertsC10CodingKeys33_C2F5E9A35A1EAA6CE48B8FAF02929C8ALLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for TargetAlerts();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    *(v1 + 16) = v10 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t TargetAlerts.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore12TargetAlertsC10CodingKeys33_C2F5E9A35A1EAA6CE48B8FAF02929C8ALLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore12TargetAlertsC10CodingKeys33_C2F5E9A35A1EAA6CE48B8FAF02929C8ALLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TargetAlerts@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for TargetAlerts();
  v5 = swift_allocObject();
  result = TargetAlerts.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t TargetAlerts.description.getter()
{
  _StringGuts.grow(_:)(47);

  swift_beginAccess();
  if (*(v0 + 16))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + 16))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x20F2E6D80](v1, v2);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 0xD00000000000002CLL;
}

unint64_t lazy protocol witness table accessor for type WorkoutKitFeatures and conformance WorkoutKitFeatures()
{
  result = lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures;
  if (!lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures)
  {
    type metadata accessor for WorkoutKitFeatures();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys;
  if (!lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TargetAlerts.CodingKeys and conformance TargetAlerts.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TargetAlerts.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TargetAlerts.CodingKeys(_WORD *result, int a2, int a3)
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

double EnergyMetricsPublisher.activeEnergy.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

uint64_t (*EnergyMetricsPublisher.activeEnergy.modify(uint64_t *a1))()
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
  return EnergyMetricsPublisher.activeEnergy.modify;
}

uint64_t (*EnergyMetricsPublisher.totalEnergy.modify(uint64_t *a1))()
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
  return EnergyMetricsPublisher.totalEnergy.modify;
}

void EnergyMetricsPublisher.activeEnergy.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

void EnergyMetricsPublisher.activeEnergy.setter(uint64_t a1, uint64_t a2, double a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

double key path getter for EnergyMetricsPublisher.activeEnergy : EnergyMetricsPublisher@<D0>(double *a4@<X8>)
{
  return key path getter for EnergyMetricsPublisher.activeEnergy : EnergyMetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v6);

  result = v6;
  *a4 = v6;
  return result;
}

uint64_t (*EnergyMetricsPublisher.$activeEnergy.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EnergyMetricsPublisher.$activeEnergy.modify;
}

void key path setter for EnergyMetricsPublisher.activeEnergy : EnergyMetricsPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
}

uint64_t EnergyMetricsPublisher.$activeEnergy.getter(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for EnergyMetricsPublisher.$activeEnergy : EnergyMetricsPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for EnergyMetricsPublisher.$activeEnergy : EnergyMetricsPublisher(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v17 - v13;
  v15 = *(v7 + 16);
  v15(&v17 - v13, a1, v6);
  v15(v11, v14, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v7 + 8))(v14, v6);
}

uint64_t EnergyMetricsPublisher.$activeEnergy.setter(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  (*(v4 + 16))(&v8 - v6, a1, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*EnergyMetricsPublisher.$totalEnergy.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySd_GMd, &_s7Combine9PublishedV9PublisherVySd_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return EnergyMetricsPublisher.$totalEnergy.modify;
}

void EnergyMetricsPublisher.$activeEnergy.modify(uint64_t a1, char a2)
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

uint64_t EnergyMetricsPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  return v0;
}

uint64_t EnergyMetricsPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  v11 = 0;
  Published.init(initialValue:)();
  v7 = *(v2 + 32);
  v7(v0 + v6, v5, v1);
  v8 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy;
  v11 = 0;
  Published.init(initialValue:)();
  v7(v0 + v8, v5, v1);
  return v0;
}

uint64_t EnergyMetricsPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy, v2);
  return v0;
}

uint64_t EnergyMetricsPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance EnergyMetricsPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

double EnergyMetricsPublisher.protobuf.getter@<D0>(double *a1@<X8>)
{
  type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a1 = v3;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  result = v3;
  a1[1] = v3;
  return result;
}

uint64_t EnergyMetricsPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  *v3 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v7);

  v3[1] = v7;
  lazy protocol witness table accessor for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_EnergyMetricsPublisher(v3);
  return v4;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher)
  {
    type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_EnergyMetricsPublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnergyMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized EnergyMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance EnergyMetricsPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static EnergyMetricsPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance EnergyMetricsPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized EnergyMetricsPublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static EnergyMetricsPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v24 = a2;
  v23 = a1;
  v2 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v22 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - v12;
  type metadata accessor for EnergyMetricsPublisher(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
  *&v26 = 0;
  Published.init(initialValue:)();
  v16 = *(v10 + 32);
  v16(v14 + v15, v13, v9);
  v17 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy;
  *&v26 = 0;
  Published.init(initialValue:)();
  v16(v14 + v17, v13, v9);
  v29 = v23;
  v30 = v24;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  outlined copy of Data._Representation(v23, v24);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher();
  v18 = v25;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v18)
  {
  }

  else
  {
    v19 = *v8;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v26 = v19;

    static Published.subscript.setter();
    v20 = v8[1];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v26 = v20;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_EnergyMetricsPublisher(v8);
  }

  return v14;
}

uint64_t specialized EnergyMetricsPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySdGMd, &_s7Combine9PublishedVySdGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v23 - v8;
  v10 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for Apple_Workout_Core_EnergyMetricsPublisher(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = a1;
  v26 = a2;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_EnergyMetricsPublisher and conformance Apple_Workout_Core_EnergyMetricsPublisher();
  v16 = v12;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    type metadata accessor for EnergyMetricsPublisher(0);
    v16 = swift_allocObject();
    v17 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__activeEnergy;
    *&v23[0] = 0;
    Published.init(initialValue:)();
    v18 = *(v6 + 32);
    v18(v16 + v17, v9, v5);
    v19 = OBJC_IVAR____TtC11WorkoutCore22EnergyMetricsPublisher__totalEnergy;
    *&v23[0] = 0;
    Published.init(initialValue:)();
    v18(v16 + v19, v9, v5);
    v20 = *v15;
    swift_getKeyPath();
    swift_getKeyPath();
    *&v23[0] = v20;
    swift_retain_n();
    static Published.subscript.setter();
    v21 = v15[1];
    swift_getKeyPath();
    swift_getKeyPath();
    *&v23[0] = v21;
    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_EnergyMetricsPublisher(v15);
  }

  return v16;
}

uint64_t type metadata accessor for EnergyMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for EnergyMetricsPublisher;
  if (!type metadata singleton initialization cache for EnergyMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for EnergyMetricsPublisher(uint64_t a1)
{
  type metadata accessor for Published<Double>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Double>()
{
  if (!lazy cache variable for type metadata for Published<Double>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Double>);
    }
  }
}

double PlatterPublisher.metricPlatters.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t PlatterPublisher.metricPlatters.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t (*PlatterPublisher.metricPlatters.modify(uint64_t *a1))()
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
  return PlatterPublisher.metricPlatters.modify;
}

void PlatterPublisher.metricPlatters.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t PlatterPublisher.$metricPlatters.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for PlatterPublisher.$metricPlatters : PlatterPublisher(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for PlatterPublisher.$metricPlatters : PlatterPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t PlatterPublisher.$metricPlatters.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PlatterPublisher.$metricPlatters.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore13MetricPlatterVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return PlatterPublisher.$metricPlatters.modify;
}

void PlatterPublisher.$metricPlatters.modify(uint64_t a1, char a2)
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

uint64_t PlatterPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  Published.init(initialValue:)();
  return v0;
}

uint64_t PlatterPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v8 - v4;
  v6 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  v8[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v6, v5, v1);
  return v0;
}

uint64_t PlatterPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PlatterPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance PlatterPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t PlatterPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  PlatterPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_PlatterPublisher(v3, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  return v4;
}

void PlatterPublisher.protobuf.getter(void *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  v30 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v29 - v8;
  v10 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v35);

  v11 = v35;
  v34 = *(v35 + 16);
  if (v34)
  {
    v29[0] = a1;
    v29[1] = v2;
    v12 = v10;
    v13 = 0;
    v32 = v9;
    v33 = v35 + 32;
    v14 = v30;
    v31 = v35;
    while (v13 < *(v11 + 16))
    {
      v15 = (v33 + 16 * v13);
      v16 = v15[1];
      v17 = *(v15 + 1);
      v18 = *v15;
      *v6 = 0;
      v6[8] = 1;
      *(v6 + 2) = MEMORY[0x277D84F90];

      UnknownStorage.init()();
      *v6 = qword_20B43A460[v18];
      v6[8] = 1;
      v6[9] = v16;
      if (v17)
      {
        v19 = *(v17 + 16);
        if (v19)
        {
          v20 = (v17 + 32);
          v21 = MEMORY[0x277D84F90];
          while (1)
          {
            v23 = *v20++;
            v22 = v23;
            if (HIDWORD(v23))
            {
              break;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
            }

            v25 = *(v21 + 2);
            v24 = *(v21 + 3);
            if (v25 >= v24 >> 1)
            {
              v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
            }

            *(v21 + 2) = v25 + 1;
            *&v21[4 * v25 + 32] = v22;
            if (!--v19)
            {
              *(v6 + 2) = v21;
              v14 = v30;
              goto LABEL_14;
            }
          }

          __break(1u);
          break;
        }
      }

LABEL_14:
      v26 = v32;
      outlined init with take of Apple_Workout_Core_MetricPlatter(v6, v32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      }

      v11 = v31;
      v28 = v12[2];
      v27 = v12[3];
      if (v28 >= v27 >> 1)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v12);
      }

      ++v13;
      v12[2] = v28 + 1;
      outlined init with take of Apple_Workout_Core_MetricPlatter(v26, v12 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v28);
      if (v13 == v34)
      {

        *v29[0] = v12;
        return;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher)
  {
    type metadata accessor for Apple_Workout_Core_PlatterPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher);
  }

  return result;
}

uint64_t outlined init with take of Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Apple_Workout_Core_PlatterPublisher.decodeInto(publisher:)(uint64_t a1)
{
  v3 = type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v41[0] = MEMORY[0x277D84F90];

  v39 = a1;
  result = static Published.subscript.setter();
  v10 = *v1;
  v38 = *(*v1 + 16);
  if (v38)
  {
    v11 = 0;
    v36 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v35 = *(v4 + 72);
    *&v9 = 134217984;
    v34 = v9;
    v37 = v7;
    do
    {
      outlined init with copy of Apple_Workout_Core_MetricPlatter(v36 + v35 * v11, v7);
      v12 = *(v7 + 2);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = (v12 + 32);
        v15 = MEMORY[0x277D84F90];
        do
        {
          v17 = *v14++;
          v16 = v17;
          if (v15)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
            }

            v19 = *(v15 + 2);
            v18 = *(v15 + 3);
            if (v19 >= v18 >> 1)
            {
              v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v15);
            }

            *(v15 + 2) = v19 + 1;
            *&v15[8 * v19 + 32] = v16;
          }

          --v13;
        }

        while (v13);
      }

      else
      {
        v15 = 0;
      }

      v20 = *v7;
      if (v7[8])
      {
        v40 = byte_20B43A4E0[v20];
      }

      else
      {
        if (one-time initialization token for core != -1)
        {
          swift_once();
        }

        v21 = type metadata accessor for Logger();
        __swift_project_value_buffer(v21, static WOLog.core);
        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = v34;
          *(v24 + 4) = v20;
          MEMORY[0x20F2E9420](v24, -1, -1);
        }

        v40 = 0;
      }

      v25 = v7[9];
      outlined destroy of Apple_Workout_Core_PlatterPublisher(v7, type metadata accessor for Apple_Workout_Core_MetricPlatter);
      swift_getKeyPath();
      swift_getKeyPath();
      v26 = static Published.subscript.modify();
      v28 = v27;
      v29 = *v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        *v28 = v29;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v29);
        *v28 = v29;
      }

      *(v29 + 2) = v32 + 1;
      v33 = &v29[16 * v32];
      v33[32] = v40;
      ++v11;
      v33[33] = v25;
      *(v33 + 5) = v15;
      v26(v41, 0);

      v7 = v37;
    }

    while (v11 != v38);
  }

  return result;
}

uint64_t PlatterPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized static PlatterPublisher.decodeProto(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for ProDatable.wireData() in conformance PlatterPublisher()
{
  v0 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  PlatterPublisher.protobuf.getter(v3);
  lazy protocol witness table accessor for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher();
  v4 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_PlatterPublisher(v3, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance PlatterPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static PlatterPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance PlatterPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized static PlatterPublisher.decodeProto(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static PlatterPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMd, &_s7Combine9PublishedVySay11WorkoutCore13MetricPlatterVGGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - v12;
  type metadata accessor for PlatterPublisher(0);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC11WorkoutCore16PlatterPublisher__metricPlatters;
  *&v20 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
  Published.init(initialValue:)();
  (*(v10 + 32))(v14 + v15, v13, v9);
  v23 = a1;
  v24 = v19;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  outlined copy of Data._Representation(a1, v19);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher();
  v16 = v25;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v16)
  {
  }

  else
  {
    Apple_Workout_Core_PlatterPublisher.decodeInto(publisher:)(v14);
    outlined destroy of Apple_Workout_Core_PlatterPublisher(v8, type metadata accessor for Apple_Workout_Core_PlatterPublisher);
  }

  return v14;
}

uint64_t type metadata accessor for PlatterPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for PlatterPublisher;
  if (!type metadata singleton initialization cache for PlatterPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PlatterPublisher(uint64_t a1)
{
  type metadata accessor for Published<[MetricPlatter]>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<[MetricPlatter]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[MetricPlatter]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore13MetricPlatterVGMd, &_sSay11WorkoutCore13MetricPlatterVGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[MetricPlatter]>);
    }
  }
}

uint64_t outlined init with copy of Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_PlatterPublisher(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static WorkoutDemoSession.load(from:)()
{
  result = Data.init(contentsOf:options:)();
  if (!v2)
  {
    v5 = result;
    v6 = v4;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type WorkoutDemoSession and conformance WorkoutDemoSession();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data._Representation(v5, v6);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutDemoSession.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutDemoSession.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

void protocol witness for CodingKey.init(stringValue:) in conformance WorkoutDemoSession.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x800000020B45F370 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutDemoSession.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutDemoSession.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutDemoSession.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D11DemoSessionV10CodingKeys33_822FB1DBE0CE31476EE8DEE74B19A2CELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D11DemoSessionV10CodingKeys33_822FB1DBE0CE31476EE8DEE74B19A2CELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
  _sSaySdGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [Double] and conformance <A> [A], MEMORY[0x277D83A08], MEMORY[0x277D83948]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys);
  }

  return result;
}

uint64_t WorkoutDemoSession.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D11DemoSessionV10CodingKeys33_822FB1DBE0CE31476EE8DEE74B19A2CELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D11DemoSessionV10CodingKeys33_822FB1DBE0CE31476EE8DEE74B19A2CELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutDemoSession.CodingKeys and conformance WorkoutDemoSession.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    _sSaySdGSayxGSEsSERzlWlTm_0(&lazy protocol witness table cache variable for type [Double] and conformance <A> [A], MEMORY[0x277D83A30], MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _sSaySdGSayxGSEsSERzlWlTm_0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double WorkoutDemoSessionBridge.bridgedValue.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR___NLWorkoutDemoSession_bridgedValue);

  return result;
}

id WorkoutDemoSessionBridge.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR___NLWorkoutDemoSession_bridgedValue] = *a1;
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v8 = MEMORY[0x277D84F90];

    specialized ContiguousArray.reserveCapacity(_:)();
    v5 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 8;
      --v3;
    }

    while (v3);

    v4 = v8;
  }

  *&v1[OBJC_IVAR___NLWorkoutDemoSession_mileDistanceAdvanceSteps] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for WorkoutDemoSessionBridge();
  return objc_msgSendSuper2(&v7, sel_init);
}

id WorkoutDemoSessionBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutDemoSessionBridge.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutDemoSessionBridge();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double protocol witness for Bridge.bridgedValue.getter in conformance WorkoutDemoSessionBridge@<D0>(void *a1@<X8>)
{
  *a1 = *(*v1 + OBJC_IVAR___NLWorkoutDemoSession_bridgedValue);

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutDemoSession(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for WorkoutDemoSession(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutDemoSession.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WorkoutDemoSession.CodingKeys(_WORD *result, int a2, int a3)
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

void Apple_Workout_Core_ZoneType.decoded.getter(_BYTE *a1@<X8>)
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

    LOBYTE(v3) = 7;
  }

  *a1 = v3;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo9HRCDeviceCG_11WorkoutCore0E6DeviceVs5NeverOTg504_s11e108Core0A15DevicesProviderC35setupBluetoothLEDevicesSubscription33_258C3F5670C29358A8CFAE69F4D622CBLLyyFyShySo9d11CGcfU_AA0A6G8VAGXEfU_Tf1cn_n(uint64_t a1)
{
  v5 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  if (v6)
  {
    v46 = MEMORY[0x277D84F90];
    v7 = &v46;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
    v34 = v46;
    if (v33)
    {
      v8 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v8 = _HashTable.startBucket.getter();
      v9 = *(v5 + 36);
    }

    v43 = v8;
    v44 = v9;
    v45 = v33 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v32 = v5 + 56;
      v31 = v5 + 64;
      while (!__OFADD__(v10++, 1))
      {
        v4 = v43;
        isUniquelyReferenced_nonNull_native = v44;
        v3 = v45;
        v12 = v5;
        specialized Set.subscript.getter(v43, v44, v45, v5);
        v7 = v13;
        v41 = v13;
        closure #1 in closure #1 in WorkoutDevicesProvider.setupBluetoothLEDevicesSubscription()(&v41, v42);
        if (v1)
        {
          goto LABEL_46;
        }

        v39 = v42[3];
        v40 = v42[4];
        v37 = v42[1];
        v38 = v42[2];
        v36 = v42[0];
        v14 = v34;
        v46 = v34;
        v16 = *(v34 + 16);
        v15 = *(v34 + 24);
        if (v16 >= v15 >> 1)
        {
          v7 = &v46;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
          v14 = v46;
        }

        *(v14 + 16) = v16 + 1;
        v17 = (v14 + 80 * v16);
        v17[2] = v36;
        v18 = v37;
        v19 = v38;
        v20 = v40;
        v17[5] = v39;
        v17[6] = v20;
        v17[3] = v18;
        v17[4] = v19;
        v34 = v14;
        if (v33)
        {
          if (!v3)
          {
            goto LABEL_47;
          }

          v5 = v12;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          }

          else
          {
            isUniquelyReferenced_nonNull_native = 1;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSh5IndexVySo9HRCDeviceC_GMd, &_sSh5IndexVySo9HRCDeviceC_GMR);
          v7 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          (v7)(v35, 0);
          v24 = v10 >= v6;
          if (v10 == v6)
          {
LABEL_38:
            outlined consume of Set<HRCDevice>.Index._Variant(v43, v44, v45);
            return;
          }
        }

        else
        {
          if (v3)
          {
            goto LABEL_48;
          }

          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_42;
          }

          v5 = v12;
          v7 = (1 << *(v12 + 32));
          if (v4 >= v7)
          {
            goto LABEL_42;
          }

          v21 = v4 >> 6;
          v22 = *(v32 + 8 * (v4 >> 6));
          if (((v22 >> v4) & 1) == 0)
          {
            goto LABEL_43;
          }

          if (*(v12 + 36) != isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_44;
          }

          v23 = v22 & (-2 << (v4 & 0x3F));
          if (v23)
          {
            v7 = (__clz(__rbit64(v23)) | v4 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v25 = v21 << 6;
            v26 = v21 + 1;
            v27 = (v31 + 8 * v21);
            while (v26 < (v7 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                outlined consume of Set<HRCDevice>.Index._Variant(v4, isUniquelyReferenced_nonNull_native, 0);
                v7 = (__clz(__rbit64(v28)) + v25);
                goto LABEL_33;
              }
            }

            outlined consume of Set<HRCDevice>.Index._Variant(v4, isUniquelyReferenced_nonNull_native, 0);
LABEL_33:
            v5 = v12;
          }

          v30 = *(v5 + 36);
          v43 = v7;
          v44 = v30;
          v45 = 0;
          v24 = v10 >= v6;
          if (v10 == v6)
          {
            goto LABEL_38;
          }
        }

        if (v24)
        {
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    __break(1u);
LABEL_46:

    outlined consume of Set<HRCDevice>.Index._Variant(v4, isUniquelyReferenced_nonNull_native, v3);

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
  }
}

id static WorkoutDevicesProvider.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static WorkoutDevicesProvider.shared;

  return v1;
}

void WorkoutDevicesProvider.devices.didset()
{
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static WOLog.devices);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v22);

    v6 = v22;
    v7 = *(v22 + 16);
    if (v7)
    {
      v19 = v5;
      v20 = v3;
      v22 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
      v8 = v22;
      v9 = (v6 + 56);
      do
      {
        v11 = *(v9 - 1);
        v10 = *v9;
        v22 = v8;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);

        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v8 = v22;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v11;
        *(v14 + 40) = v10;
        v9 += 10;
        --v7;
      }

      while (v7);

      v3 = v20;
      v5 = v19;
    }

    else
    {

      v8 = MEMORY[0x277D84F90];
    }

    v15 = MEMORY[0x20F2E6F70](v8, MEMORY[0x277D837D0]);
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v23);

    *(v4 + 4) = v18;
    _os_log_impl(&dword_20AEA4000, oslog, v3, "WorkoutDevicesProvider: devices changed to %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v5);
    MEMORY[0x20F2E9420](v5, -1, -1);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t WorkoutDevicesProvider.devices.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

void WorkoutDevicesProvider.devices.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.setter();
  WorkoutDevicesProvider.devices.didset();
}

void (*WorkoutDevicesProvider.devices.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1 + 1);

  *a1 = a1[1];
  return WorkoutDevicesProvider.devices.modify;
}

void WorkoutDevicesProvider.devices.modify(uint64_t *a1, char a2)
{
  v4 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  a1[1] = v4;
  a1[2];
  if (a2)
  {

    static Published.subscript.setter();
    WorkoutDevicesProvider.devices.didset();
  }

  else
  {
    static Published.subscript.setter();
    WorkoutDevicesProvider.devices.didset();
  }
}

uint64_t key path getter for WorkoutDevicesProvider.$devices : WorkoutDevicesProvider(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for WorkoutDevicesProvider.$devices : WorkoutDevicesProvider(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t WorkoutDevicesProvider.$devices.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t WorkoutDevicesProvider.$devices.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*WorkoutDevicesProvider.$devices.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider__devices;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return WorkoutDevicesProvider.$devices.modify;
}

void WorkoutDevicesProvider.$devices.modify(uint64_t a1, char a2)
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

double key path setter for WorkoutDevicesProvider.tester : WorkoutDevicesProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_tester;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

BOOL WorkoutDevicesProvider.pairedWatchNearby.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = WorkoutDeviceWatchScanner.pairedWatchNearby.getter();

  return v3;
}

id WorkoutDevicesProvider.pairedWatchUnlockedAndOnWrist.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner);
  if (!v1)
  {
    return 0;
  }

  result = *(v1 + OBJC_IVAR____TtC11WorkoutCore25WorkoutDeviceWatchScanner_watchController);
  if (result)
  {
    return [result isUnlockedAndOnWrist];
  }

  return result;
}

BOOL WorkoutDevicesProvider.isWorkoutAppInstalled.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner);
  if (!v1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter(&v4);

  return v4 != 2;
}

id WorkoutDevicesProvider.().init()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v35 - v9;
  v11 = &v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_state];
  v11[2] = 0;
  *v11 = 2;
  v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isAppInForeground] = 0;
  v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isStandaloneWorkoutRunning] = 0;
  v12 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider__devices;
  v13 = MEMORY[0x277D84F90];
  v37._countAndFlagsBits = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVGMd, &_sSay11WorkoutCore0A6DeviceVGMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v0[v12], v10, v6);
  v14 = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesLifecycleCancellables] = MEMORY[0x277D84FA0];
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesScanningCancellables] = v14;
  v15 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchCancellables;
  if (v13 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      v33 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v33 = MEMORY[0x277D84FA0];
    }

    *&v0[v15] = v33;
    if (__CocoaSet.count.getter())
    {
      v34 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v34 = MEMORY[0x277D84FA0];
    }

    *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsCancellables] = v34;
    if (__CocoaSet.count.getter())
    {
      v14 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    else
    {
      v14 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchCancellables] = v14;
    *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsCancellables] = v14;
  }

  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_bluetoothLEDevicesCancellables] = v14;
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsScanner] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_bluetoothLEDevicesScanner] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_tester] = 0;
  v16 = type metadata accessor for WorkoutDevicesProvider(0);
  v42.receiver = v0;
  v42.super_class = v16;
  v17 = objc_msgSendSuper2(&v42, sel_init);
  WorkoutDevicesProvider.observeDevicesSubscribers()();
  if ([objc_opt_self() isAppleInternalInstall])
  {
    type metadata accessor for WorkoutDevicesProviderTester();
    swift_allocObject();
    v18 = v17;
    v19 = specialized WorkoutDevicesProviderTester.init(devicesProvider:)(v18);

    v20 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_tester;
    swift_beginAccess();
    *&v18[v20] = v19;
  }

  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v23 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B45F5B0);
    v24 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
    v25 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    UUID.init()();
    v29 = UUID.uuidString.getter();
    v31 = v30;
    (*(v2 + 8))(v5, v1);
    v37._countAndFlagsBits = v29;
    v37._object = v31;
    v38._countAndFlagsBits = v26;
    v38._object = v28;
    LOBYTE(v39) = 0;
    *(&v39 + 1) = 0xD000000000000015;
    *&v40 = 0x800000020B45C750;
    BYTE8(v40) = 1;
    v41 = xmmword_20B43A700;
    *&v36.type = v39;
    *&v36.systemImage._object = v40;
    v36.productModel = xmmword_20B43A700;
    v36.name = v38;
    v36.id = v37;
    WorkoutDevicesProvider.addDevice(_:)(&v36);
    outlined destroy of WorkoutDevice(&v37);
  }

  return v17;
}

id WorkoutDevicesProvider.__allocating_init(forTesting:)()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double WorkoutDevicesProvider.observeDevicesSubscribers()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v31 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GAM8previous_AM7currenttGMd, &_s7Combine10PublishersO4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GAM8previous_AM7currenttGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GAO8previous_AO7currenttGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GAO8previous_AO7currenttGSo17OS_dispatch_queueCGMR);
  v15 = *(v14 - 8);
  v32 = v14;
  v33 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GAQ8previous_AQ7currenttGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GAQ8previous_AQ7currenttGSo17OS_dispatch_queueCGGMR);
  v20 = *(v19 - 8);
  v34 = v19;
  v35 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v31 = &v31 - v22;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  v36 = MEMORY[0x277D84F90];
  v37 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVG8previous_AD7currenttMd, &_sSay11WorkoutCore0A6DeviceVG8previous_AD7currenttMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR, MEMORY[0x277CBCEC8]);
  Publisher.scan<A>(_:_:)();
  (*(v5 + 8))(v8, v4);
  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v23 = static OS_dispatch_queue.main.getter();
  v36 = v23;
  v24 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.Scan<Published<[WorkoutDevice]>.Publisher, (previous: [WorkoutDevice], current: [WorkoutDevice])> and conformance Publishers.Scan<A, B>, &_s7Combine10PublishersO4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GAM8previous_AM7currenttGMd, &_s7Combine10PublishersO4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GAM8previous_AM7currenttGMR, MEMORY[0x277CBCC28]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.receive<A>(on:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v3);

  (*(v10 + 8))(v13, v9);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.Scan<Published<[WorkoutDevice]>.Publisher, (previous: [WorkoutDevice], current: [WorkoutDevice])>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GAO8previous_AO7currenttGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GAO8previous_AO7currenttGSo17OS_dispatch_queueCGMR, MEMORY[0x277CBCD60]);

  v25 = v32;
  v26 = v31;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  (*(v33 + 8))(v18, v25);

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = partial apply for closure #5 in WorkoutDevicesProvider.observeDevicesSubscribers();
  *(v28 + 24) = v27;
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.ReceiveOn<Publishers.Scan<Published<[WorkoutDevice]>.Publisher, (previous: [WorkoutDevice], current: [WorkoutDevice])>, OS_dispatch_queue>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GAQ8previous_AQ7currenttGSo17OS_dispatch_queueCGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC9ReceiveOnVy_AC4ScanVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GAQ8previous_AQ7currenttGSo17OS_dispatch_queueCGGMR, MEMORY[0x277CBCB60]);
  v29 = v34;
  Publisher<>.sink(receiveValue:)();

  (*(v35 + 8))(v26, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

double closure #1 in WorkoutDevicesProvider.observeDevicesSubscribers()@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *(a1 + 8);
  a3[1] = v3;

  return result;
}

void closure #2 in WorkoutDevicesProvider.observeDevicesSubscribers()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions;
  v6 = *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions) = v8;
  if (one-time initialization token for devices != -1)
  {
LABEL_10:
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static WOLog.devices);
  outlined init with copy of Subscription(a1, v22);
  v10 = v4;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 136315394;
    outlined init with copy of Subscription(v22, &v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pMd, &_s7Combine12Subscription_pMR);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0Tm_4(v22);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v21);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2048;
    v19 = *&v4[v5];

    *(v13 + 14) = v19;
    _os_log_impl(&dword_20AEA4000, v11, v12, "Received new devices subscription=%s. devicesSubscriptions=%ld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm_4(v14);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm_4(v22);
  }

  WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:devicesSubscriptions:)(v10[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isAppInForeground], v10[OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isStandaloneWorkoutRunning], *&v4[v5]);
}

void closure #3 in WorkoutDevicesProvider.observeDevicesSubscribers()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions;
  v5 = *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions) = v7;
  if (one-time initialization token for devices != -1)
  {
LABEL_10:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static WOLog.devices);
  v9 = v3;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *&v3[v4];

    _os_log_impl(&dword_20AEA4000, v10, v11, "Devices subscription completed. devicesSubscriptions=%ld", v12, 0xCu);
    MEMORY[0x20F2E9420](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:devicesSubscriptions:)(*(&v9->isa + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isAppInForeground), *(&v9->isa + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isStandaloneWorkoutRunning), *&v3[v4]);
}

void closure #4 in WorkoutDevicesProvider.observeDevicesSubscribers()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = Strong;
  v3 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions;
  v4 = *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(Strong + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_devicesSubscriptions) = v6;
  if (one-time initialization token for devices != -1)
  {
LABEL_10:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WOLog.devices);
  v8 = v2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *&v2[v3];

    _os_log_impl(&dword_20AEA4000, v9, v10, "Devices subscription cancelled. devicesSubscriptions=%ld", v11, 0xCu);
    MEMORY[0x20F2E9420](v11, -1, -1);
  }

  else
  {

    v9 = v8;
  }

  WorkoutDevicesProvider.evaluateScanningBasedOn(isAppInForeground:isStandaloneWorkoutRunning:devicesSubscriptions:)(*(&v8->isa + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isAppInForeground), *(&v8->isa + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_isStandaloneWorkoutRunning), *&v2[v3]);
}

void closure #5 in WorkoutDevicesProvider.observeDevicesSubscribers()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    specialized WorkoutDevicesProvider.handleDeviceListChange(previousDevices:updatedDevices:)(a1, a2);
  }
}

Swift::Void __swiftcall WorkoutDevicesProvider.configureScanningFor(watch:smartRoutingHeadphones:heartRateMonitor:)(Swift::Bool watch, Swift::Bool smartRoutingHeadphones, Swift::Bool heartRateMonitor)
{
  if ([objc_opt_self() isRunningInStoreDemoMode])
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.devices);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Running in store demo mode, not configuring device scanning";
      v11 = v8;
      v12 = oslog;
      v13 = v9;
      v14 = 2;
LABEL_20:
      _os_log_impl(&dword_20AEA4000, v12, v11, v10, v13, v14);
      MEMORY[0x20F2E9420](v9, -1, -1);
      goto LABEL_21;
    }

    goto LABEL_21;
  }

  if (watch)
  {
    WorkoutDevicesProvider.setupWatchSubscription()();
    if (!smartRoutingHeadphones)
    {
      goto LABEL_8;
    }

LABEL_11:
    WorkoutDevicesProvider.setupAirPodsSubscription()();
    if (!heartRateMonitor)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  WorkoutDevicesProvider.cancelWatchSubscription()();
  if (smartRoutingHeadphones)
  {
    goto LABEL_11;
  }

LABEL_8:
  WorkoutDevicesProvider.cancelAirPodsSubscription()();
  if (!heartRateMonitor)
  {
LABEL_9:
    WorkoutDevicesProvider.cancelBluetoothLEDevicesSubscription()();
    v15 = 0;
    goto LABEL_13;
  }

LABEL_12:
  WorkoutDevicesProvider.setupBluetoothLEDevicesSubscription()();
  v15 = 0x10000;
LABEL_13:
  if (smartRoutingHeadphones)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  v17 = v3 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_state;
  *(v17 + 2) = BYTE2(v15);
  *v17 = v16 & 0xFFFE | watch | v15;
  if (one-time initialization token for devices != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static WOLog.devices);
  oslog = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v19))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109632;
    *(v9 + 4) = watch;
    *(v9 + 8) = 1024;
    *(v9 + 10) = smartRoutingHeadphones;
    *(v9 + 14) = 1024;
    *(v9 + 16) = heartRateMonitor;
    v10 = "Configured scanning for workout devices. watch=%{BOOL}d smartRoutingHeadphones=%{BOOL}d heartRateMonitor=%{BOOL}d";
    v11 = v19;
    v12 = oslog;
    v13 = v9;
    v14 = 20;
    goto LABEL_20;
  }

LABEL_21:
}

Swift::Void __swiftcall WorkoutDevicesProvider.stopScanning()()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_state;
  if (*(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_state) == 2)
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.devices);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "stopScanning called while already stopped.";
LABEL_10:
      _os_log_impl(&dword_20AEA4000, oslog, v3, v5, v4, 2u);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }
  }

  else
  {
    WorkoutDevicesProvider.cancelWatchSubscription()();
    WorkoutDevicesProvider.cancelAirPodsSubscription()();
    WorkoutDevicesProvider.cancelBluetoothLEDevicesSubscription()();
    v6 = v0 + v1;
    *(v6 + 2) = 0;
    *v6 = 2;
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.devices);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Stopped scanning for workout devices";
      goto LABEL_10;
    }
  }
}

uint64_t WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t a1, double a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:), 0, 0);
}

uint64_t WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v1;
  v4[3] = v2;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A6DeviceVGMd, &_sSay11WorkoutCore0A6DeviceVGMR);
  *v5 = v0;
  v5[1] = WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:);

  return MEMORY[0x2822007B8](v0 + 2, 0, 0, 0xD00000000000002FLL, 0x800000020B45F390, partial apply for closure #1 in WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:), v4, v6);
}

{

  return MEMORY[0x2822009F8](WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v57 = a3;
  v72 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMd, &_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMR);
  v69 = *(v71 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v71, v6);
  v68 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v66 = &v53 - v10;
  v61 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v11 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GGMd, &_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GGMR);
  v56 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v53 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GGSo17OS_dispatch_queueCGMR);
  v25 = *(v24 - 8);
  v59 = v24;
  v60 = v25;
  MEMORY[0x28223BE20](v24, v26);
  v54 = &v53 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GGSo17OS_dispatch_queueCGAUGMd, &_s7Combine10PublishersO7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GGSo17OS_dispatch_queueCGAUGMR);
  v29 = *(v28 - 8);
  v62 = v28;
  v63 = v29;
  MEMORY[0x28223BE20](v28, v30);
  v55 = &v53 - v31;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO10FirstWhereVy_AC7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GGSo17OS_dispatch_queueCGAWGGMd, &_s7Combine10PublishersO10FirstWhereVy_AC7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GGSo17OS_dispatch_queueCGAWGGMR);
  v67 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v32);
  v58 = &v53 - v33;
  v64 = a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C6DeviceVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Published<[WorkoutDevice]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D6DeviceVG_GMR, MEMORY[0x277CBCEC8]);
  Publisher.dropFirst(_:)();
  (*(v16 + 8))(v19, v15);
  static OS_dispatch_queue.SchedulerTimeType.Stride.milliseconds(_:)();
  _sSo17OS_dispatch_queueCMaTm_13(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v34 = static OS_dispatch_queue.main.getter();
  v73 = v34;
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.Drop<Published<[WorkoutDevice]>.Publisher> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GGMd, &_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0F6DeviceVG_GGMR, MEMORY[0x277CBCC18]);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  Publisher.throttle<A>(for:scheduler:latest:)();

  v35 = *(v11 + 8);
  v36 = v61;
  v35(v14, v61);
  v37 = (*(v56 + 8))(v23, v20);
  MEMORY[0x20F2E7530](v37, a4);
  v38 = static OS_dispatch_queue.main.getter();
  v73 = v38;
  v39 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v40 = v66;
  (*(*(v39 - 8) + 56))(v66, 1, 1, v39);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.Throttle<Publishers.Drop<Published<[WorkoutDevice]>.Publisher>, OS_dispatch_queue> and conformance Publishers.Throttle<A, B>, &_s7Combine10PublishersO8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0G6DeviceVG_GGSo17OS_dispatch_queueCGMR, MEMORY[0x277CBCD20]);
  v41 = v55;
  v42 = v40;
  v43 = v59;
  v44 = v54;
  Publisher.timeout<A>(_:scheduler:options:customError:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v42);

  v35(v14, v36);
  (*(v60 + 8))(v44, v43);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.Timeout<Publishers.Throttle<Publishers.Drop<Published<[WorkoutDevice]>.Publisher>, OS_dispatch_queue>, OS_dispatch_queue> and conformance Publishers.Timeout<A, B>, &_s7Combine10PublishersO7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GGSo17OS_dispatch_queueCGAUGMd, &_s7Combine10PublishersO7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0H6DeviceVG_GGSo17OS_dispatch_queueCGAUGMR, MEMORY[0x277CBCCE8]);
  v45 = v58;
  v46 = v62;
  Publisher.first(where:)();
  (*(v63 + 8))(v41, v46);
  v48 = v68;
  v47 = v69;
  v49 = v71;
  (*(v69 + 16))(v68, v72, v71);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v50, v48, v49);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Publishers.FirstWhere<Publishers.Timeout<Publishers.Throttle<Publishers.Drop<Published<[WorkoutDevice]>.Publisher>, OS_dispatch_queue>, OS_dispatch_queue>> and conformance Publishers.FirstWhere<A>, &_s7Combine10PublishersO10FirstWhereVy_AC7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GGSo17OS_dispatch_queueCGAWGGMd, &_s7Combine10PublishersO10FirstWhereVy_AC7TimeoutVy_AC8ThrottleVy_AC4DropVy_AA9PublishedV9PublisherVySay11WorkoutCore0J6DeviceVG_GGSo17OS_dispatch_queueCGAWGGMR, MEMORY[0x277CBCB18]);
  v52 = v65;
  Publisher<>.sink(receiveValue:)();

  (*(v67 + 8))(v45, v52);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

uint64_t closure #2 in closure #1 in WorkoutDevicesProvider.scanForDevices(timeout:throttleInMilliseconds:)(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMd, &_sScCySay11WorkoutCore0A6DeviceVGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

double WorkoutDevicesProvider.setupWatchSubscription()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo21RPCompanionLinkDeviceCSg_GMd, &_s7Combine9PublishedV9PublisherVySo21RPCompanionLinkDeviceCSg_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v18 - v4;
  if (specialized static DataLinkBackwardCompatibilityUtility.activePairedWatch(supports:)())
  {
    v7 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner;
    if (*(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchScanner))
    {
      return result;
    }

    v8 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_watchCancellables;
    swift_beginAccess();
    v9 = *(v0 + v8);
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = __CocoaSet.count.getter();

      if (v10)
      {
        return result;
      }
    }

    else if (*(v9 + 16))
    {
      return result;
    }

    v15 = [objc_allocWithZone(type metadata accessor for WorkoutDeviceWatchScanner(0)) init];
    v16 = *(v0 + v7);
    *(v0 + v7) = v15;
    v17 = v15;

    if (v17)
    {
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo21RPCompanionLinkDeviceCSgGMd, &_s7Combine9PublishedVySo21RPCompanionLinkDeviceCSgGMR);
      Published.projectedValue.getter();
      swift_endAccess();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Published<RPCompanionLinkDevice?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo21RPCompanionLinkDeviceCSg_GMd, &_s7Combine9PublishedV9PublisherVySo21RPCompanionLinkDeviceCSg_GMR, MEMORY[0x277CBCEC8]);
      Publisher<>.sink(receiveValue:)();

      (*(v2 + 8))(v5, v1);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  else
  {
    if (one-time initialization token for devices != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static WOLog.devices);
    v19 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_20AEA4000, v19, v12, "Not scanning for watch because the current paired watch does not support NapiliAligned build.", v13, 2u);
      MEMORY[0x20F2E9420](v13, -1, -1);
    }

    v14 = v19;
  }

  return result;
}

void closure #1 in WorkoutDevicesProvider.setupWatchSubscription()(void **a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v47.name._object = &type metadata for WorkoutFeatures;
    *&v47.type = lazy protocol witness table accessor for type WorkoutFeatures and conformance WorkoutFeatures();
    LOBYTE(v47.id._countAndFlagsBits) = 13;
    v11 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0Tm_4(&v47);
    if ((v11 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
    {
      if (v8)
      {
        v20 = v8;
        v21 = [v20 identifier];
        if (v21)
        {
          v22 = v21;
          v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
        }

        else
        {
          UUID.init()();
          v45 = UUID.uuidString.getter();
          v24 = v29;
          (*(v4 + 8))(v7, v3);
        }

        v30 = [v20 name];
        if (v30)
        {
          v31 = v30;
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;
        }

        else
        {
          type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v36 = [objc_opt_self() bundleForClass_];
          v37 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B45F5B0);
          v38 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
          v31 = [v36 localizedStringForKey:v37 value:0 table:v38];

          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v39;
        }

        v40 = [v20 model];
        if (v40)
        {
          v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0;
        }

        v47.id._countAndFlagsBits = v45;
        v47.id._object = v24;
        v47.name._countAndFlagsBits = v32;
        v47.name._object = v34;
        v47.type = WorkoutCore_WorkoutDeviceType_watch;
        v47.systemImage._countAndFlagsBits = 0xD000000000000015;
        v47.systemImage._object = 0x800000020B45C750;
        v47.isTestDevice = 0;
        v47.productModel.value._countAndFlagsBits = v41;
        v47.productModel.value._object = v43;
        v46 = v47;
        WorkoutDevicesProvider.addDevice(_:)(&v46);

        outlined destroy of WorkoutDevice(&v47);
      }

      else
      {
        if (one-time initialization token for devices != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        __swift_project_value_buffer(v25, static WOLog.devices);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_20AEA4000, v26, v27, "Watch device not available, the watch device scanner shows no available devices.", v28, 2u);
          MEMORY[0x20F2E9420](v28, -1, -1);
        }

        LOBYTE(v47.id._countAndFlagsBits) = 0;
        WorkoutDevicesProvider.removeDevices(deviceType:shouldRemoveTestDevices:)(&v47, 0);
      }
    }

    else
    {
      if (one-time initialization token for devices != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static WOLog.devices);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v47.id._countAndFlagsBits = v16;
        *v15 = 136315138;
        v17 = StaticString.description.getter();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v47.id._countAndFlagsBits);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_20AEA4000, v13, v14, "Watch device found but not added, %s feature is not enabled.", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm_4(v16);
        MEMORY[0x20F2E9420](v16, -1, -1);
        MEMORY[0x20F2E9420](v15, -1, -1);
      }
    }
  }
}

double WorkoutDevicesProvider.setupAirPodsSubscription()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo20AudioAccessoryDeviceCSg_GMd, &_s7Combine9PublishedV9PublisherVySo20AudioAccessoryDeviceCSg_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo20AudioAccessoryDeviceCSgGMd, &_s7Combine9PublishedVySo20AudioAccessoryDeviceCSgGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v11 = v18 - v10;
  v12 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsScanner;
  if (!*(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsScanner))
  {
    v13 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsCancellables;
    swift_beginAccess();
    v18[1] = v13;
    v14 = *(v0 + v13);
    if ((v14 & 0xC000000000000001) != 0)
    {

      v15 = __CocoaSet.count.getter();

      if (v15)
      {
        return result;
      }

      goto LABEL_4;
    }

    if (!*(v14 + 16))
    {
LABEL_4:
      type metadata accessor for WorkoutDeviceAirPodsScanner(0);
      v16 = swift_allocObject();
      v17 = OBJC_IVAR____TtC11WorkoutCore27WorkoutDeviceAirPodsScanner__activeHRMDevice;
      v18[2] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20AudioAccessoryDeviceCSgMd, &_sSo20AudioAccessoryDeviceCSgMR);
      Published.init(initialValue:)();
      (*(v7 + 32))(v16 + v17, v11, v6);
      *(v16 + OBJC_IVAR____TtC11WorkoutCore27WorkoutDeviceAirPodsScanner_audioAccessoryToken) = -1;
      *(v16 + 16) = [objc_allocWithZone(MEMORY[0x277CEF820]) init];
      WorkoutDeviceAirPodsScanner.setupAndActivateAudioStateMonitor()();
      WorkoutDeviceAirPodsScanner.registerForDaemonRestartNotification()();
      *(v0 + v12) = v16;

      swift_beginAccess();
      Published.projectedValue.getter();
      swift_endAccess();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Published<AudioAccessoryDevice?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo20AudioAccessoryDeviceCSg_GMd, &_s7Combine9PublishedV9PublisherVySo20AudioAccessoryDeviceCSg_GMR, MEMORY[0x277CBCEC8]);
      Publisher<>.sink(receiveValue:)();

      (*(v2 + 8))(v5, v1);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  return result;
}

void WorkoutDevicesProvider.cancelAirPodsSubscription()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsCancellables;
  swift_beginAccess();
  v18 = v2;
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyCancellable();
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_4(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    Set.Iterator.init(_cocoa:)();
    v5 = v20;
    v4 = v21;
    v6 = v22;
    v7 = v23;
    v8 = v24;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v3;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      outlined consume of Set<String>.Iterator._Variant(v5);

      *(v1 + v18) = MEMORY[0x277D84FA0];

      *(v1 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_airPodsScanner) = 0;

      return;
    }

    while (1)
    {
      AnyCancellable.cancel()();

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyCancellable();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

double WorkoutDevicesProvider.setupBluetoothLEDevicesSubscription()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShySo9HRCDeviceCG_GMd, &_s7Combine9PublishedV9PublisherVyShySo9HRCDeviceCG_GMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v6 = &v14[-v5];
  v7 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_bluetoothLEDevicesScanner;
  if (!*(v0 + OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_bluetoothLEDevicesScanner))
  {
    v8 = OBJC_IVAR____TtC11WorkoutCore22WorkoutDevicesProvider_bluetoothLEDevicesCancellables;
    swift_beginAccess();
    v9 = *(v0 + v8);
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = __CocoaSet.count.getter();

      if (v10)
      {
        return result;
      }
    }

    else if (*(v9 + 16))
    {
      return result;
    }

    v11 = [objc_allocWithZone(type metadata accessor for WorkoutDeviceBluetoothLEDeviceScanner(0)) init];
    v12 = *(v0 + v7);
    *(v0 + v7) = v11;
    v13 = v11;

    if (v13)
    {
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShySo9HRCDeviceCGGMd, &_s7Combine9PublishedVyShySo9HRCDeviceCGGMR);
      Published.projectedValue.getter();
      swift_endAccess();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_4(&lazy protocol witness table cache variable for type Published<Set<HRCDevice>>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVyShySo9HRCDeviceCG_GMd, &_s7Combine9PublishedV9PublisherVyShySo9HRCDeviceCG_GMR, MEMORY[0x277CBCEC8]);
      Publisher<>.sink(receiveValue:)();

      (*(v2 + 8))(v6, v1);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  return result;
}

void closure #1 in WorkoutDevicesProvider.setupBluetoothLEDevicesSubscription()(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo9HRCDeviceCG_11WorkoutCore0E6DeviceVs5NeverOTg504_s11e108Core0A15DevicesProviderC35setupBluetoothLEDevicesSubscription33_258C3F5670C29358A8CFAE69F4D622CBLLyyFyShySo9d11CGcfU_AA0A6G8VAGXEfU_Tf1cn_n(v2);
    v6 = v5;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v53);

    v7 = 0;
    v8 = *&v53[0];
    v9 = *(*&v53[0] + 16);
    v10 = MEMORY[0x277D84F90];
LABEL_3:
    v11 = 80 * v7;
    while (v9 != v7)
    {
      if (v7 >= *(v8 + 16))
      {
LABEL_39:
        __break(1u);
        return;
      }

      ++v7;
      v12 = v11 + 80;
      v13 = v8 + v11;
      v14 = *(v8 + v11 + 64);
      v11 += 80;
      if (v14 == 2)
      {
        v11 = v12;
        if ((*(v13 + 88) & 1) == 0)
        {
          v16 = *(v8 + v12 - 48);
          v15 = *(v8 + v12 - 40);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
          }

          v18 = *(v10 + 2);
          v17 = *(v10 + 3);
          if (v18 >= v17 >> 1)
          {
            v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v10);
          }

          *(v10 + 2) = v18 + 1;
          v19 = &v10[16 * v18];
          *(v19 + 4) = v16;
          *(v19 + 5) = v15;
          goto LABEL_3;
        }
      }
    }

    v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v10);

    v21 = *(v6 + 16);
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v50 = v20;
      *&v53[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
      v22 = *&v53[0];
      v23 = (v6 + 40);
      do
      {
        v25 = *(v23 - 1);
        v24 = *v23;
        *&v53[0] = v22;
        v27 = *(v22 + 16);
        v26 = *(v22 + 24);

        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v22 = *&v53[0];
        }

        *(v22 + 16) = v27 + 1;
        v28 = v22 + 16 * v27;
        *(v28 + 32) = v25;
        *(v28 + 40) = v24;
        v23 += 10;
        --v21;
      }

      while (v21);
      v20 = v50;
    }

    v29 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v22);

    if (*(v29 + 16) <= *(v20 + 16) >> 3)
    {
      *&v53[0] = v20;
      specialized Set._subtract<A>(_:)(v29);

      v30 = *&v53[0];
    }

    else
    {
      v30 = specialized _NativeSet.subtracting<A>(_:)(v29, v20);
    }

    v31 = 0;
    v32 = 1 << *(v30 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v30 + 56);
    v35 = (v32 + 63) >> 6;
    if (v34)
    {
      while (1)
      {
        v36 = v31;
LABEL_30:
        v37 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v38 = (*(v30 + 48) + ((v36 << 10) | (16 * v37)));
        v39 = *v38;
        v40 = v38[1];

        v41._countAndFlagsBits = v39;
        v41._object = v40;
        WorkoutDevicesProvider.removeDevice(_:)(v41);

        if (!v34)
        {
          goto LABEL_26;
        }
      }
    }

    while (1)
    {
LABEL_26:
      v36 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v36 >= v35)
      {
        break;
      }

      v34 = *(v30 + 56 + 8 * v36);
      ++v31;
      if (v34)
      {
        v31 = v36;
        goto LABEL_30;
      }
    }

    v42 = *(v6 + 16);
    if (v42)
    {
      v43 = v42 - 1;
      for (i = 32; ; i += 80)
      {
        v53[0] = *(v6 + i);
        v45 = *(v6 + i + 16);
        v46 = *(v6 + i + 32);
        v47 = *(v6 + i + 64);
        v53[3] = *(v6 + i + 48);
        v53[4] = v47;
        v53[1] = v45;
        v53[2] = v46;
        v48 = *(v6 + i + 48);
        *&v52.type = *(v6 + i + 32);
        *&v52.systemImage._object = v48;
        v52.productModel = *(v6 + i + 64);
        v49 = *(v6 + i + 16);
        v52.id = *(v6 + i);
        v52.name = v49;
        outlined init with copy of WorkoutDevice(v53, v51);
        WorkoutDevicesProvider.addDevice(_:)(&v52);
        outlined destroy of WorkoutDevice(v53);
        if (!v43)
        {
          break;
        }

        --v43;
      }
    }
  }
}

void closure #1 in closure #1 in WorkoutDevicesProvider.setupBluetoothLEDevicesSubscription()(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = [*a1 localIdentifier];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    UUID.init()();
    v12 = UUID.uuidString.getter();
    v14 = v15;
    (*(v5 + 8))(v8, v4);
  }

  v16 = [v9 name];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v23 = MEMORY[0x20F2E6C00](0xD00000000000001ALL, 0x800000020B45F6A0);
    v24 = MEMORY[0x20F2E6C00](0xD000000000000012, 0x800000020B45F5D0);
    v17 = [v22 localizedStringForKey:v23 value:0 table:v24];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v25;
  }

  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v18;
  *(a2 + 24) = v20;
  *(a2 + 32) = 2;
  *(a2 + 40) = 0x69662E7472616568;
  *(a2 + 48) = 0xEA00000000006C6CLL;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xD000000000000010;
  *(a2 + 72) = 0x800000020B45A560;
}