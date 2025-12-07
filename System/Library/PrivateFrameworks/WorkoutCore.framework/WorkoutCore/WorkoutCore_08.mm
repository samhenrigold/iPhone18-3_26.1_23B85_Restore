uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (static UUID.== infix(_:_:)())
  {
    return specialized WorkoutStep.isEquivalent(to:)(v3, v2) & 1;
  }

  else
  {
    return 0;
  }
}

id specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v54 = a4;
  v55 = a5;
  v61 = a3;
  v50 = a1;
  v51 = a2;
  ObjectType = swift_getObjectType();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C4StepCGGMR);
  v63 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v7);
  v59 = &v48 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySiGMd, &_s7Combine9PublishedVySiGMR);
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v9);
  v58 = &v48 - v10;
  v11 = type metadata accessor for UUID();
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v49 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C5BlockCGGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSGMd, &_s7Combine9PublishedVySSGMR);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v48 - v22;
  v24 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__name;
  v67 = 0;
  v68 = 0xE000000000000000;
  Published.init(initialValue:)();
  (*(v20 + 32))(&v6[v24], v23, v19);
  v25 = OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout__stepBlocks;
  v67 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
  Published.init(initialValue:)();
  (*(v15 + 32))(&v6[v25], v18, v14);
  swift_beginAccess();
  (*(v20 + 8))(&v6[v24], v19);
  v65 = v50;
  v66 = v51;
  Published.init(initialValue:)();
  swift_endAccess();
  v27 = v56;
  v26 = v57;
  (*(v56 + 16))(&v6[OBJC_IVAR____TtC11WorkoutCore15IntervalWorkout_uuid], v61, v57);
  UUID.init()();
  type metadata accessor for WorkoutBlock(0);
  v28 = swift_allocObject();
  v29 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v67 = 1;
  v30 = v58;
  Published.init(initialValue:)();
  v31 = *(v62 + 32);
  v62 += 32;
  v51 = v31;
  v31(v28 + v29, v30, v60);
  v32 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v67 = MEMORY[0x277D84F90];
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
  v33 = v59;
  Published.init(initialValue:)();
  v34 = *(v63 + 32);
  v63 += 32;
  v35 = v52;
  v34(v28 + v32, v33, v52);
  v36 = *(v27 + 32);
  v37 = v49;
  v36(v28 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v49, v26);
  swift_beginAccess();
  v65 = v28;
  Published.init(initialValue:)();
  swift_endAccess();
  UUID.init()();
  v38 = swift_allocObject();
  v39 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__repetitions;
  v67 = 1;
  v40 = v58;
  Published.init(initialValue:)();
  v51(v38 + v39, v40, v60);
  v41 = OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock__steps;
  v67 = MEMORY[0x277D84F90];
  v42 = v59;
  Published.init(initialValue:)();
  v34(v38 + v41, v42, v35);
  v43 = v57;
  v36(v38 + OBJC_IVAR____TtC11WorkoutCore12WorkoutBlock_uuid, v37, v57);
  swift_beginAccess();
  v65 = v38;
  Published.init(initialValue:)();
  swift_endAccess();
  v64.receiver = v6;
  v64.super_class = ObjectType;
  v44 = objc_msgSendSuper2(&v64, sel_init);
  v45 = v54;

  v46 = v44;
  IntervalWorkout.warmupStep.setter(v45);
  IntervalWorkout.cooldownStep.setter(v55);

  (*(v56 + 8))(v61, v43);
  return v46;
}

unint64_t lazy protocol witness table accessor for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys;
  if (!lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IntervalWorkout.CodingKeys and conformance IntervalWorkout.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [WorkoutBlock] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
    _s10Foundation4UUIDVACSHAAWlTm_0(a2, type metadata accessor for WorkoutBlock, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *a2;
  if (a1 >> 62)
  {
LABEL_22:
    v18 = v3 & 0xFFFFFFFFFFFFFF8;
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = v3 & 0xC000000000000001;
  v16 = v4;
  v17 = v3;
  v14 = v3 & 0xC000000000000001;
  v15 = v5;
  while (v5 != v6)
  {
    if (v7)
    {
      MEMORY[0x20F2E7A20](v6, v3);
    }

    else
    {
      if (v6 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    if (static UUID.== infix(_:_:)())
    {
      v20[3] = v4;
      v20[4] = &protocol witness table for WorkoutBlock;
      v20[0] = a2;
      outlined init with copy of Equivalent(v20, v19);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
      if (swift_dynamicCast())
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v19);

        v9 = v19[0];
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v19);

        if (v9 == v19[0])
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v19);

          v10 = v19[0];
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter(v19);

          v11 = specialized _arrayForceCast<A, B>(_:)(v19[0]);

          v12 = specialized Array.isEquivalent(to:)(v11, v10);

          __swift_destroy_boxed_opaque_existential_1(v20);

          v4 = v16;
          v3 = v17;
          v7 = v14;
          v5 = v15;
          if (v12)
          {
            return v6;
          }

          goto LABEL_7;
        }

        v4 = v16;
        v3 = v17;
        v7 = v14;
        v5 = v15;
      }

      __swift_destroy_boxed_opaque_existential_1(v20);
    }

LABEL_7:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return 0;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x20F2E7A20](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    if (static UUID.== infix(_:_:)())
    {
      v9 = specialized WorkoutStep.isEquivalent(to:)(a2, v8);

      if (v9)
      {
        return v6;
      }
    }

    else
    {
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = __CocoaSet.count.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x20F2E7A20](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x20F2E7A20](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    swift_unknownObjectRelease();
    if (v7 == a2)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t specialized IntervalWorkout.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IntervalWorkout.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t *a2)
{
  return specialized MutableCollection._halfStablePartition(isSuffixElement:)(a1, a2);
}

{
  v3 = a2;
  v5 = *a2;
  v6 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v9 = result;
  if (v2)
  {
    return v9;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = a1;
  v24 = v5;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v22 = v3;
  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == __CocoaSet.count.getter())
      {
        return v9;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v9;
    }

    v12 = v6 & 0xC000000000000001;
    if ((v6 & 0xC000000000000001) != 0)
    {
      MEMORY[0x20F2E7A20](v10, v6);
      goto LABEL_16;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

LABEL_16:
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      goto LABEL_24;
    }

    v26[3] = v24;
    v26[4] = &protocol witness table for WorkoutBlock;
    v26[0] = v3;
    outlined init with copy of Equivalent(v26, v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore10Equivalent_pMd, &_s11WorkoutCore10Equivalent_pMR);
    if (!swift_dynamicCast())
    {
      goto LABEL_23;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v25);

    v13 = v25[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v25);

    if (v13 != v25[0])
    {

      v3 = v22;
      v12 = v6 & 0xC000000000000001;
LABEL_23:
      __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_24:

      if (v9 != v10)
      {
LABEL_25:
        if (v12)
        {
          v17 = MEMORY[0x20F2E7A20](v9, v6);
          v18 = MEMORY[0x20F2E7A20](v10, v6);
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v19)
          {
            goto LABEL_53;
          }

          if (v10 >= v19)
          {
            goto LABEL_54;
          }

          v17 = *(v6 + 32 + 8 * v9);
          v18 = *(v6 + 32 + 8 * v10);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v20 = (v6 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v6 & 0xFFFFFFFFFFFFFF8;
        *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v18;

        if ((v6 & 0x8000000000000000) != 0 || v20)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v21 = v6 & 0xFFFFFFFFFFFFFF8;
          if ((v10 & 0x8000000000000000) != 0)
          {
LABEL_45:
            __break(1u);
            return v9;
          }
        }

        else if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_45;
        }

        if (v10 >= *(v21 + 16))
        {
          goto LABEL_51;
        }

        *(v21 + 8 * v10 + 32) = v17;

        *v23 = v6;
      }

LABEL_8:
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_50;
      }

      goto LABEL_9;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v25);

    v14 = v25[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v25);

    v15 = specialized _arrayForceCast<A, B>(_:)(v25[0]);

    v16 = specialized Array.isEquivalent(to:)(v15, v14);

    __swift_destroy_boxed_opaque_existential_1(v26);

    v3 = v22;
    v12 = v6 & 0xC000000000000001;
    if ((v16 & 1) == 0)
    {
      if (v9 != v10)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }

LABEL_9:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
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
  return __CocoaSet.count.getter();
}

unint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v4 = a1;
  v5 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return __CocoaSet.count.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == __CocoaSet.count.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x20F2E7A20](v9, v5);
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_44;
    }

    v11 = *(v5 + 8 * v9 + 32);

LABEL_16:
    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {

      if (v8 != v9)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v12 = specialized WorkoutStep.isEquivalent(to:)(a2, v11);

    if ((v12 & 1) == 0)
    {
      if (v8 != v9)
      {
LABEL_21:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2E7A20](v8, v5);
          v14 = MEMORY[0x20F2E7A20](v9, v5);
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_48;
          }

          v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v15)
          {
            goto LABEL_49;
          }

          if (v9 >= v15)
          {
            goto LABEL_50;
          }

          v13 = *(v5 + 32 + 8 * v8);
          v14 = *(v5 + 32 + 8 * v9);
        }

        v16 = v4;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v17 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v18 = v5 & 0xFFFFFFFFFFFFFF8;
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v14;

        if ((v5 & 0x8000000000000000) != 0 || v17)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew()();
          v18 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_41:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v9 >= *(v18 + 16))
        {
          goto LABEL_47;
        }

        v4 = v16;
        *(v18 + 8 * v9 + 32) = v13;

        *v16 = v5;
      }

LABEL_8:
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_46;
      }
    }

    v10 = __OFADD__(v9++, 1);
    if (v10)
    {
      goto LABEL_45;
    }
  }

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
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return __CocoaSet.count.getter();
}

uint64_t lazy protocol witness table accessor for type [WorkoutStep] and conformance [A](unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A4StepCGMd, &_sSay11WorkoutCore0A4StepCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void specialized static IntervalWorkout.regroupSteps(_:from:repeatCount:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v26 = a2;
  v4 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];

  specialized Sequence.forEach(_:)(a1, &v26, &v25);
  specialized MutableCollection<>.sort(by:)(&v25);
  v24[0] = v4;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySiG_11WorkoutCore0D5BlockCs5NeverOTg504_s11d58Core08IntervalA0C12regroupSteps_4from11repeatCountSayAA0A5f5CGSayQ26A4StepCG_AISitFZAHSiXEfU1_SayAIGTf1cn_n(v25, &v26);
  v6 = v5;
  if (v5 >> 62)
  {
LABEL_40:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_41:

    v9 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_33;
    }

    goto LABEL_42;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  swift_beginAccess();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x20F2E7A20](v8, v6);
    }

    else
    {
      v10 = *(v6 + 8 * v8 + 32);
    }

    v11 = v26;
    v12 = specialized Collection<>.firstIndex(of:)(v10, v26);
    if (v13)
    {
      goto LABEL_25;
    }

    if (!(v9 >> 62))
    {
      v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_25;
      }

LABEL_11:
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v15)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        v17 = v12;
        v18 = MEMORY[0x20F2E7A20](v16, v9);
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v16 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v17 = v12;
        v18 = *(v9 + 8 * v16 + 32);
      }

      v19 = specialized Collection<>.firstIndex(of:)(v18, v11);
      if ((v20 & 1) == 0)
      {
        if (__OFADD__(v19, 1))
        {
          goto LABEL_39;
        }

        if (v19 + 1 != v17)
        {
          if (!(v9 >> 62))
          {
            if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          if (__CocoaSet.count.getter())
          {
LABEL_23:
            specialized closure #2 in static IntervalWorkout.regroupSteps(_:from:repeatCount:)(v24, &v26, a3);
          }
        }
      }

LABEL_24:

      goto LABEL_25;
    }

    v22 = v12;
    v14 = __CocoaSet.count.getter();
    v12 = v22;
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_25:
    swift_beginAccess();

    MEMORY[0x20F2E6F30](v21);
    if (*((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v24[0];
    swift_endAccess();
    ++v8;
  }

  while (v7 != v8);

  if (!(v9 >> 62))
  {
LABEL_33:
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

LABEL_42:
  if (__CocoaSet.count.getter())
  {
LABEL_34:
    specialized closure #2 in static IntervalWorkout.regroupSteps(_:from:repeatCount:)(v24, &v26, a3);
  }

LABEL_35:
  swift_beginAccess();
}

id specialized static IntervalWorkout.canonical(activityType:activityMoveMode:)(void *a1, uint64_t a2)
{
  v60 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v4 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v5);
  v7 = &v47 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySSSgGMd, &_s7Combine9PublishedVySSSgGMR);
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v9);
  v11 = &v47 - v10;
  v64 = type metadata accessor for UUID();
  v12 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v16 = objc_allocWithZone(type metadata accessor for IntervalWorkout(0));
  v62 = specialized IntervalWorkout.init(_:uuid:warmupStep:cooldownStep:)(0x6E6E755220746F48, 0xEC00000021676E69, v15, 0, 0);
  v55 = specialized static WorkoutBlock.canonical(activityType:activityMoveMode:)(a1, a2);
  v17 = [objc_opt_self() minuteUnit];
  v18 = [objc_opt_self() quantityWithUnit:v17 doubleValue:5.0];

  v19 = [objc_allocWithZone(MEMORY[0x277D0A838]) initWithGoalTypeIdentifier:2 value:v18];
  v20 = v19;
  UUID.init()();
  type metadata accessor for WorkoutStep(0);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v65 = 0;
  v66 = 0;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  Published.init(initialValue:)();
  v23 = *(v8 + 32);
  v56 = v11;
  v57 = v8 + 32;
  v53 = v23;
  v23(v21 + v22, v11, v61);
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v24 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v65) = 0;
  Published.init(initialValue:)();
  v25 = *(v4 + 32);
  v58 = v7;
  v59 = v4 + 32;
  v52 = v25;
  v25(v21 + v24, v7, v63);
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v21 + 16) = 2;
  swift_beginAccess();
  v67 = v20;
  v26 = type metadata accessor for NLSessionActivityGoal();
  v27 = v20;
  v51 = v26;
  Published.init(initialValue:)();
  swift_endAccess();
  v28 = v60;
  *(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v60;
  v29 = v64;
  v50 = *(v12 + 16);
  v50(v21 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v15, v64);
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = 0;
  v66 = 0;
  v48 = v28;

  static Published.subscript.setter();

  v30 = *(v12 + 8);
  v60 = (v12 + 8);
  v49 = v30;
  v30(v15, v29);
  IntervalWorkout.warmupStep.setter(v21);
  swift_getKeyPath();
  swift_getKeyPath();

  v31 = static Published.subscript.modify();
  v33 = v32;
  MEMORY[0x20F2E6F30]();
  if (*((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v31(&v65, 0);

  v34 = v27;
  UUID.init()();
  v35 = swift_allocObject();
  v36 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__displayName;
  v65 = 0;
  v66 = 0;
  v37 = v56;
  Published.init(initialValue:)();
  v53(v35 + v36, v37, v61);
  *(v35 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_targetZones) = MEMORY[0x277D84F90];
  *(v35 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_heartRateTargetZone) = 0;
  v38 = OBJC_IVAR____TtC11WorkoutCore11WorkoutStep__forcePublisherUpdate;
  LOBYTE(v65) = 0;
  v39 = v58;
  Published.init(initialValue:)();
  v52(v35 + v38, v39, v63);
  *(v35 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_powerZonesAlertTargetZone) = 0;
  *(v35 + 16) = 3;
  swift_beginAccess();
  v67 = v34;
  v40 = v34;
  Published.init(initialValue:)();
  swift_endAccess();
  v41 = v48;
  *(v35 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_activityType) = v48;
  v42 = v64;
  v50(v35 + OBJC_IVAR____TtC11WorkoutCore11WorkoutStep_uuid, v15, v64);
  swift_getKeyPath();
  swift_getKeyPath();
  v65 = 0;
  v66 = 0;
  v43 = v41;

  static Published.subscript.setter();

  v49(v15, v42);
  v44 = v35;
  v45 = v62;
  IntervalWorkout.cooldownStep.setter(v44);

  return v45;
}

uint64_t type metadata accessor for IntervalWorkout(uint64_t a1)
{
  result = type metadata singleton initialization cache for IntervalWorkout;
  if (!type metadata singleton initialization cache for IntervalWorkout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for IntervalWorkout(uint64_t a1)
{
  type metadata accessor for Published<String>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<WorkoutBlock>(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<[WorkoutBlock]>(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void type metadata accessor for Published<String>()
{
  if (!lazy cache variable for type metadata for Published<String>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<String>);
    }
  }
}

void type metadata accessor for Published<WorkoutBlock>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<WorkoutBlock>)
  {
    type metadata accessor for WorkoutBlock(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<WorkoutBlock>);
    }
  }
}

void type metadata accessor for Published<[WorkoutBlock]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<[WorkoutBlock]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A5BlockCGMd, &_sSay11WorkoutCore0A5BlockCGMR);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<[WorkoutBlock]>);
    }
  }
}

uint64_t getEnumTagSinglePayload for IntervalWorkout.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IntervalWorkout.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v19 = a5;
    v11 = *v7;
    v12 = *v7 >> 62;
    if (!v12)
    {
      result = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v8)
  {
    goto LABEL_16;
  }

LABEL_4:
  v13 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!(v6 >> 62))
  {
    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = __OFSUB__(v15, v13);
    v17 = v15 - v13;
    if (!v16)
    {
      goto LABEL_7;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

LABEL_18:
  result = __CocoaSet.count.getter();
  v15 = result;
  v16 = __OFSUB__(result, v13);
  v17 = result - v13;
  if (v16)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (v12)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = __OFADD__(v18, v17);
  result = v18 + v17;
  if (v16)
  {
    goto LABEL_21;
  }

  v9(result, 1);

  return v19(v10, v8, v15, v6);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a4;
    v6 = a3;
    v8 = a2;
    v10 = a1;
    v11 = *v7;
    v12 = *v7 >> 62;
    v18 = a5;
    if (!v12)
    {
      result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v14 = v8 - v10;
  if (__OFSUB__(v8, v10))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = 1 - v14;
  if (__OFSUB__(1, v14))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v12)
  {
    v16 = __CocoaSet.count.getter();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = __OFADD__(v16, v15);
  result = v16 + v15;
  if (v17)
  {
    goto LABEL_18;
  }

  v9(result, 1);

  return v18(v10, v8, 1, v6);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = a3;
    v5 = a2;
    v7 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v15 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v5, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 - v5;
  if (__OFSUB__(0, v5 - v7))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (v14)
  {
    goto LABEL_18;
  }

  v8(result, 1);

  return v15(v7, v5, 0);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t static TargetAlertsBridge.intervalTargetAlertsEnabled(for:)(void *a1)
{
  v1 = specialized static TargetAlertsStore.read(for:)(a1);
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

id TargetAlertsBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TargetAlertsBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TargetAlertsBridge();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TargetAlertsBridge.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TargetAlertsBridge();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id one-time initialization function for userDefaults()
{
  result = [objc_opt_self() standardUserDefaults];
  static TargetAlertsStore.userDefaults = result;
  return result;
}

{
  result = [objc_opt_self() standardUserDefaults];
  static TargetZoneStorage.userDefaults = result;
  return result;
}

{
  result = [objc_opt_self() standardUserDefaults];
  static RaceAlertsStore.userDefaults = result;
  return result;
}

{
  result = [objc_opt_self() standardUserDefaults];
  static MetricPlatterStore.userDefaults = result;
  return result;
}

{
  result = [objc_opt_self() standardUserDefaults];
  static TrackAlertsStore.userDefaults = result;
  return result;
}

void static TargetAlertsStore.save(targetAlerts:activityType:)(_BYTE *a1, void *a2)
{
  v54[4] = *MEMORY[0x277D85DE8];
  *&v53[0] = a1;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for TargetAlerts();
  lazy protocol witness table accessor for type TargetAlerts and conformance TargetAlerts(&lazy protocol witness table cache variable for type TargetAlerts and conformance TargetAlerts, type metadata accessor for TargetAlerts, &protocol conformance descriptor for TargetAlerts);
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v19 = v18;

  v20 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v50 = 0;
  v22 = [v20 propertyListWithData:isa options:0 format:0 error:&v50];

  v23 = v50;
  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data._Representation(v17, v19);
    swift_unknownObjectRelease();
    if (one-time initialization token for userDefaults != -1)
    {
      swift_once();
    }

    v24 = static TargetAlertsStore.userDefaults;
    v25 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B454980);
    v26 = [v24 dictionaryForKey_];

    if (v26)
    {
      v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v30 = [a2 uniqueIdentifier];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    outlined init with copy of Any(v54, v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v53, v31, v33, isUniquelyReferenced_nonNull_native);

    v35 = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B454980);
    [v24 setObject:v35 forKey:v36];

    v37 = objc_opt_self();
    v38 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B454980);
    [v37 fu:v38 backupStandardUserDefaultsKey:?];

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    __swift_project_value_buffer(v39, static WOLog.alerts);
    v40 = a2;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v52 = v45;
      *&v53[0] = 0;
      *v43 = 138412546;
      *(v43 + 4) = v40;
      *v44 = v40;
      *(v43 + 12) = 2080;
      *(&v53[0] + 1) = 0xE000000000000000;
      v46 = v40;
      _StringGuts.grow(_:)(47);

      v50 = 0xD00000000000002CLL;
      v51 = 0x800000020B457210;
      swift_beginAccess();
      if (a1[16])
      {
        v47 = 1702195828;
      }

      else
      {
        v47 = 0x65736C6166;
      }

      if (a1[16])
      {
        v48 = 0xE400000000000000;
      }

      else
      {
        v48 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v47, v48);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v52);

      *(v43 + 14) = v49;
      _os_log_impl(&dword_20AEA4000, v41, v42, "Saved TargetAlerts to user defaults for activityType=%@ targetAlerts=%s", v43, 0x16u);
      outlined destroy of NSObject?(v44);
      MEMORY[0x20F2E9420](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v45);
      MEMORY[0x20F2E9420](v45, -1, -1);
      MEMORY[0x20F2E9420](v43, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v54);
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
      v54[0] = v11;
      *v9 = 138412546;
      *(v9 + 4) = v5;
      *v10 = v5;
      *(v9 + 12) = 2080;
      *&v53[0] = v29;
      v12 = v5;
      v13 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v54);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_20AEA4000, v7, v8, "Failed to encode and save TargetAlerts for activityType=%@. error=%s", v9, 0x16u);
      outlined destroy of NSObject?(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1, v19, a3);
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for Date();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18);
}

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
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)();
  }
}

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
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)();
}

{
  v5 = v4;
  v29 = a1;
  v9 = type metadata accessor for Station.Mood();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v24 = v29;
  v25 = *v5;
  if (v20)
  {
    v26 = (v25[7] + 16 * v16);
    *v26 = v29;
    v26[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, v24, a2, v25);
  }
}

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
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  if (v17)
  {
    *(*(*v5 + 56) + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  return specialized _NativeDictionary._insert(at:key:value:)();
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v27);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return outlined consume of Data._Representation(v25, v26);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a3, a4, a1, a2, v23);
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), specialized _NativeDictionary._insert(at:key:value:));
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      specialized _NativeDictionary.copy()();
      result = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3, a1 & 1, v21);
  }

  return result;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for NSNumber();
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

  return a2;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v7 = v6;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v6;
  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v31();
      goto LABEL_9;
    }

    v32();
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v26 = a1;
  v27 = *v7;
  if (v22)
  {
    v28 = *(v27 + 56);
    v29 = *(v28 + 8 * v18);
    *(v28 + 8 * v18) = v26;
  }

  else
  {
    (*(v12 + 16))(v15, a2, v11);
    v33(v18, v15, v26, v27);
  }
}

uint64_t specialized static TargetAlertsStore.read(for:)(id a1)
{
  v69 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v2 = static TargetAlertsStore.userDefaults;
  v3 = MEMORY[0x20F2E6C00](0xD000000000000014, 0x800000020B454980);
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
      goto LABEL_18;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_20AEA4000, v21, v22, "TargetAlerts for all activity types not present in user defaults.", v23, 2u);
    goto LABEL_17;
  }

  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [a1 uniqueIdentifier];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_13;
  }

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_13:

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static WOLog.alerts);
    a1 = a1;
    v21 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v21, v25))
    {
      goto LABEL_18;
    }

    v23 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = a1;
    *v26 = a1;
    v27 = a1;
    _os_log_impl(&dword_20AEA4000, v21, v25, "TargetAlerts for activity type not present in user defaults. activityType=%@", v23, 0xCu);
    outlined destroy of NSObject?(v26);
    MEMORY[0x20F2E9420](v26, -1, -1);
LABEL_17:
    MEMORY[0x20F2E9420](v23, -1, -1);
LABEL_18:

    v30 = 1;
    if ([a1 isIndoor])
    {
      if ([a1 effectiveTypeIdentifier] == 37)
      {
        v28 = type metadata accessor for WorkoutKitFeatures();
        v67 = v28;
        v68 = lazy protocol witness table accessor for type TargetAlerts and conformance TargetAlerts(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8], MEMORY[0x277CE3FB8]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v66);
        (*(*(v28 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CE3FC8], v28);
        LOBYTE(v28) = isFeatureEnabled(_:)();
        __swift_destroy_boxed_opaque_existential_0Tm(&v66);
        if (v28)
        {
          v30 = 0;
        }
      }
    }

    type metadata accessor for TargetAlerts();
    result = swift_allocObject();
    *(result + 16) = v30;
    return result;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v10, &v66);

  outlined init with take of Any(&v66, &v64);
  v13 = objc_opt_self();
  __swift_project_boxed_opaque_existential_0(&v64, v65);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  *&v66 = 0;
  v15 = [v13 dataWithPropertyList:v14 format:100 options:0 error:&v66];
  swift_unknownObjectRelease();
  v16 = v66;
  if (!v15)
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
      *&v66 = v41;
      *v39 = 138412546;
      *(v39 + 4) = v35;
      *v40 = v35;
      *(v39 + 12) = 2080;
      v42 = v35;
      v43 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v44 = String.init<A>(describing:)();
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v66);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_20AEA4000, v37, v38, "Failed to decode TargetAlerts for activityType=%@. error=%s", v39, 0x16u);
      outlined destroy of NSObject?(v40);
      MEMORY[0x20F2E9420](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    if ([v35 isIndoor] && objc_msgSend(v35, sel_effectiveTypeIdentifier) == 37)
    {
      v47 = type metadata accessor for WorkoutKitFeatures();
      v67 = v47;
      v68 = lazy protocol witness table accessor for type TargetAlerts and conformance TargetAlerts(&lazy protocol witness table cache variable for type WorkoutKitFeatures and conformance WorkoutKitFeatures, MEMORY[0x277CE3FD8], MEMORY[0x277CE3FB8]);
      v48 = __swift_allocate_boxed_opaque_existential_1(&v66);
      (*(*(v47 - 8) + 104))(v48, *MEMORY[0x277CE3FC8], v47);
      LOBYTE(v47) = isFeatureEnabled(_:)();

      __swift_destroy_boxed_opaque_existential_0Tm(&v66);
      if (v47)
      {
        v49 = 0;
LABEL_34:
        type metadata accessor for TargetAlerts();
        v50 = swift_allocObject();
        *(v50 + 16) = v49;
        __swift_destroy_boxed_opaque_existential_0Tm(&v64);
        return v50;
      }
    }

    else
    {
    }

    v49 = 1;
    goto LABEL_34;
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  type metadata accessor for TargetAlerts();
  lazy protocol witness table accessor for type TargetAlerts and conformance TargetAlerts(&lazy protocol witness table cache variable for type TargetAlerts and conformance TargetAlerts, type metadata accessor for TargetAlerts, &protocol conformance descriptor for TargetAlerts);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  v62 = v66;
  if (one-time initialization token for alerts != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static WOLog.alerts);

  v52 = a1;
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v63 = v61;
    *v55 = 136315394;
    *&v66 = 0;
    *(&v66 + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(47);

    swift_beginAccess();
    if (*(v62 + 16))
    {
      v57 = 1702195828;
    }

    else
    {
      v57 = 0x65736C6166;
    }

    if (*(v62 + 16))
    {
      v58 = 0xE400000000000000;
    }

    else
    {
      v58 = 0xE500000000000000;
    }

    MEMORY[0x20F2E6D80](v57, v58);

    MEMORY[0x20F2E6D80](62, 0xE100000000000000);

    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000020B457210, &v63);

    *(v55 + 4) = v59;
    *(v55 + 12) = 2112;
    *(v55 + 14) = v52;
    *v56 = v52;
    v60 = v52;
    _os_log_impl(&dword_20AEA4000, v53, v54, "Successfully read user targetAlerts=%s for activityType=%@", v55, 0x16u);
    outlined destroy of NSObject?(v56);
    MEMORY[0x20F2E9420](v56, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    MEMORY[0x20F2E9420](v61, -1, -1);
    MEMORY[0x20F2E9420](v55, -1, -1);
  }

  outlined consume of Data._Representation(v17, v19);

  __swift_destroy_boxed_opaque_existential_0Tm(&v64);
  return v62;
}

uint64_t getEnumTagSinglePayload for TargetAlertsStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for TargetAlertsStore(_WORD *result, int a2, int a3)
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

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TargetAlerts and conformance TargetAlerts(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static MetricPlatter.makeStandard(metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 256;
  *(a2 + 8) = a1;
}

uint64_t static MetricPlatter.makeStandardSecond(metrics:include:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 1;
  *(a3 + 8) = a1;
  *(a3 + 1) = a2;
}

id static MetricPlatter.makeSegment(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 effectiveTypeIdentifier];
  *a2 = 6;
  *(a2 + 8) = 0;
  *(a2 + 1) = result == 37;
  return result;
}

char *static MetricPlatter.makeSplit(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 effectiveTypeIdentifier];
  if ((result - 13) > 0x3A || ((1 << (result - 13)) & 0x400800001400001) == 0)
  {
    v6 = 0;
  }

  else
  {
    result = [a1 isIndoor];
    v6 = result ^ 1;
  }

  *a2 = 9;
  *(a2 + 8) = 0;
  *(a2 + 1) = v6;
  return result;
}

char *static MetricPlatter.makeHeartRateZones(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 effectiveTypeIdentifier];
  *a2 = 10;
  *(a2 + 8) = 0;
  *(a2 + 1) = ((result - 13) < 0x3B) & (0x404C00081400009uLL >> (result - 13));
  return result;
}

id static MetricPlatter.makePower(activityType:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if ([a1 effectiveTypeIdentifier] == 13)
  {
    result = [objc_opt_self() hasHadPairedCyclingPowerSensors];
  }

  else
  {
    result = 0;
  }

  *a3 = a2;
  *(a3 + 8) = 0;
  *(a3 + 1) = result;
  return result;
}

char *static MetricPlatter.makeElevation(activityType:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 effectiveTypeIdentifier];
  v5 = 0;
  v6 = result - 13;
  if ((result - 13) <= 0x3A)
  {
    if (((1 << v6) & 0x400000001000001) != 0)
    {
      result = [a1 isIndoor];
      v5 = result ^ 1;
    }

    else
    {
      v5 = ((1 << v6) & 0x800000000800) != 0;
    }
  }

  *a2 = 14;
  *(a2 + 8) = 0;
  *(a2 + 1) = v5;
  return result;
}

id WOPersistence.init(jsonObject:)(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithJsonObject_];

  outlined consume of Data._Representation(a1, a2);
  return v6;
}

{
  v212[4] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Date();
  v203 = *(v4 - 8);
  v204 = v4;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v205 = v187 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = v187 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = v187 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = v187 - v21;
  v23 = type metadata accessor for UUID();
  v207 = *(v23 - 8);
  v208 = v23;
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = v187 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = v187 - v30;
  MEMORY[0x28223BE20](v29, v32);
  v206 = v187 - v33;
  v34 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v212[0] = 0;
  v36 = [v34 JSONObjectWithData:isa options:0 error:v212];

  if (!v36)
  {
    v64 = v212[0];
    v65 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static WOLog.app);
    v67 = v65;
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v212[0] = v71;
      *v70 = 136315138;
      swift_getErrorValue();
      v72 = Error.localizedDescription.getter();
      v74 = a1;
      v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v212);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_20AEA4000, v68, v69, "Cannot deserialize from json object, error: %s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x20F2E9420](v71, -1, -1);
      MEMORY[0x20F2E9420](v70, -1, -1);

      outlined consume of Data._Representation(v74, a2);
    }

    else
    {
      outlined consume of Data._Representation(a1, a2);
    }

    goto LABEL_38;
  }

  v37 = v212[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined consume of Data._Representation(a1, a2);
LABEL_38:
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v200 = v31;
  v202 = a2;
  v38 = v210;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v38[2])
  {

    v46 = v202;
LABEL_24:
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for Logger();
    __swift_project_value_buffer(v76, static WOLog.app);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = a1;
      v81 = swift_slowAlloc();
      v212[0] = v81;
      *v79 = 136315138;
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v212);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_20AEA4000, v77, v78, "Cannot deserialize from json object, missing key or cannot cast: %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v81);
      MEMORY[0x20F2E9420](v81, -1, -1);
      MEMORY[0x20F2E9420](v79, -1, -1);
      v85 = v80;
    }

    else
    {
      v85 = a1;
    }

    goto LABEL_36;
  }

  v201 = a1;
  v41 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {

    v46 = v202;
LABEL_23:
    a1 = v201;
    goto LABEL_24;
  }

  outlined init with copy of Any(v38[7] + 32 * v41, v212);
  v44 = type metadata accessor for NSNumber();
  v45 = swift_dynamicCast();
  v46 = v202;
  if ((v45 & 1) == 0)
  {

    goto LABEL_23;
  }

  v47 = v210;
  v198 = [v210 integerValue];

  v199 = *MEMORY[0x277D7E8B0];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v38[2])
  {

LABEL_31:

    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v86 = type metadata accessor for Logger();
    __swift_project_value_buffer(v86, static WOLog.app);
    v77 = Logger.logObject.getter();
    v87 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v212[0] = v89;
      *v88 = 136315138;
      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, v212);

      *(v88 + 4) = v92;
      _os_log_impl(&dword_20AEA4000, v77, v87, "Cannot deserialize from json object, missing key or cannot cast: %s", v88, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v89);
      MEMORY[0x20F2E9420](v89, -1, -1);
      MEMORY[0x20F2E9420](v88, -1, -1);
    }

    v85 = v201;
LABEL_36:
    v93 = v46;
LABEL_37:
    outlined consume of Data._Representation(v85, v93);

    goto LABEL_38;
  }

  v197 = v44;
  v50 = v38;
  v51 = specialized __RawDictionaryStorage.find<A>(_:)(v48, v49);
  v53 = v52;

  if ((v53 & 1) == 0)
  {
    goto LABEL_31;
  }

  outlined init with copy of Any(v50[7] + 32 * v51, v212);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_31;
  }

  v199 = v210;
  v54 = [v210 unsignedIntegerValue];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v50[2])
  {

LABEL_41:

    goto LABEL_42;
  }

  v196 = v54;
  v57 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v56);
  v59 = v58;

  if ((v59 & 1) == 0)
  {
    goto LABEL_41;
  }

  outlined init with copy of Any(v50[7] + 32 * v57, v212);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_41;
  }

  v195 = v50;
  UUID.init(uuidString:)();

  v61 = v207;
  v60 = v208;
  v62 = v207 + 48;
  v63 = *(v207 + 48);
  if (v63(v22, 1, v208) == 1)
  {

    outlined destroy of UUID?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_42:
    v95 = v202;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v96 = type metadata accessor for Logger();
    __swift_project_value_buffer(v96, static WOLog.app);
    v77 = Logger.logObject.getter();
    v97 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v212[0] = v99;
      *v98 = 136315138;
      v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, v212);

      *(v98 + 4) = v102;
      _os_log_impl(&dword_20AEA4000, v77, v97, "Cannot deserialize from json object, missing key or cannot cast: %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x20F2E9420](v99, -1, -1);
      MEMORY[0x20F2E9420](v98, -1, -1);
    }

    v85 = v201;
    v93 = v95;
    goto LABEL_37;
  }

  v103 = *(v61 + 32);
  v194 = v61 + 32;
  v193 = v103;
  v103(v206, v22, v60);
  v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v106 = v195;
  if (!v195[2])
  {

LABEL_53:

    v112 = v202;
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    __swift_project_value_buffer(v113, static WOLog.app);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v212[0] = v117;
      *v116 = 136315138;
      v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v119, v212);

      *(v116 + 4) = v120;
      _os_log_impl(&dword_20AEA4000, v114, v115, "Cannot deserialize from json object, missing key or cannot cast: %s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v117);
      MEMORY[0x20F2E9420](v117, -1, -1);
      MEMORY[0x20F2E9420](v116, -1, -1);
    }

    outlined consume of Data._Representation(v201, v112);
    (*(v207 + 8))(v206, v208);
    goto LABEL_38;
  }

  v191 = v63;
  v192 = v62;
  v107 = specialized __RawDictionaryStorage.find<A>(_:)(v104, v105);
  v109 = v108;

  if ((v109 & 1) == 0)
  {
    goto LABEL_53;
  }

  outlined init with copy of Any(v106[7] + 32 * v107, v212);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_53;
  }

  v190 = Data.init(base64Encoded:options:)();
  v111 = v110;

  if (v111 >> 60 == 15)
  {
    goto LABEL_53;
  }

  v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v195[2])
  {
    v123 = specialized __RawDictionaryStorage.find<A>(_:)(v121, v122);
    v125 = v124;

    if (v125)
    {
      outlined init with copy of Any(v195[7] + 32 * v123, v212);
      if (swift_dynamicCast())
      {
        v188 = Data.init(base64Encoded:options:)();
        v189 = v126;

        goto LABEL_64;
      }
    }
  }

  else
  {
  }

  v188 = 0;
  v189 = 0xF000000000000000;
LABEL_64:
  v127 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v195[2])
  {
    v129 = specialized __RawDictionaryStorage.find<A>(_:)(v127, v128);
    v131 = v130;

    if (v131)
    {
      outlined init with copy of Any(v195[7] + 32 * v129, v212);
      if (swift_dynamicCast())
      {
        v132 = v210;
        v133 = [v210 unsignedIntegerValue];

        goto LABEL_70;
      }
    }
  }

  else
  {
  }

  v133 = 0;
LABEL_70:
  v134 = [objc_opt_self() zeroObjectModificationDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v195[2])
  {
    v137 = specialized __RawDictionaryStorage.find<A>(_:)(v135, v136);
    v139 = v138;

    if (v139)
    {
      outlined init with copy of Any(v195[7] + 32 * v137, v212);
      if (swift_dynamicCast())
      {
        v140 = v210;
        [v210 doubleValue];

        Date.init(timeIntervalSinceReferenceDate:)();
        v142 = v203;
        v141 = v204;
        v143 = v205;
        (*(v203 + 8))(v205, v204);
        (*(v142 + 32))(v143, v8, v141);
      }
    }
  }

  else
  {
  }

  v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v195[2])
  {
    goto LABEL_89;
  }

  v146 = specialized __RawDictionaryStorage.find<A>(_:)(v144, v145);
  v148 = v147;

  if ((v148 & 1) == 0)
  {
    goto LABEL_90;
  }

  outlined init with copy of Any(v195[7] + 32 * v146, v212);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_90;
  }

  v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v195[2])
  {
    goto LABEL_88;
  }

  v151 = specialized __RawDictionaryStorage.find<A>(_:)(v149, v150);
  v153 = v152;

  if ((v153 & 1) == 0)
  {
    goto LABEL_89;
  }

  outlined init with copy of Any(v195[7] + 32 * v151, v212);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_89;
  }

  v187[1] = v210;
  v187[2] = v211;
  v154 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v195[2])
  {

LABEL_88:

LABEL_89:

LABEL_90:
    v161 = 0;
    goto LABEL_91;
  }

  v156 = specialized __RawDictionaryStorage.find<A>(_:)(v154, v155);
  v158 = v157;

  if ((v158 & 1) == 0)
  {
    goto LABEL_88;
  }

  outlined init with copy of Any(v195[7] + 32 * v156, v212);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_88;
  }

  v159 = v211;
  v187[0] = v210;
  UUID.init(uuidString:)();

  if (v191(v19, 1, v208) == 1)
  {

    v160 = v19;
LABEL_111:
    outlined destroy of UUID?(v160, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    goto LABEL_90;
  }

  v179 = v208;
  v193(v200, v19, v208);
  UUID.init(uuidString:)();

  if (v191(v15, 1, v179) == 1)
  {
    (*(v207 + 8))(v200, v208);

    v160 = v15;
    goto LABEL_111;
  }

  v180 = v208;
  v193(v27, v15, v208);
  v181 = objc_allocWithZone(MEMORY[0x277D7E7F0]);
  v182 = v200;
  v183 = UUID._bridgeToObjectiveC()().super.isa;
  v184 = UUID._bridgeToObjectiveC()().super.isa;
  v185 = MEMORY[0x20F2E6C00](v187[0], v159);

  v161 = [v181 initWithHardwareIdentifier:v183 databaseIdentifier:v184 instanceDiscriminator:v185];

  v186 = *(v207 + 8);
  v186(v27, v180);
  v186(v182, v180);
LABEL_91:
  v162.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v163.super.isa = Data._bridgeToObjectiveC()().super.isa;
  if (v189 >> 60 == 15)
  {
    v164 = 0;
  }

  else
  {
    v164 = Data._bridgeToObjectiveC()().super.isa;
  }

  v165 = Date._bridgeToObjectiveC()().super.isa;
  v166 = [v209 initWithVersion:v198 type:v196 uuid:v162.super.isa persistedData:v163.super.isa persistedProtoData:v164 objectState:v133 objectModificationDate:v165 syncIdentity:v161];

  v167 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v195[2])
  {
    v169 = specialized __RawDictionaryStorage.find<A>(_:)(v167, v168);
    v171 = v170;

    if (v171)
    {
      outlined init with copy of Any(v195[7] + 32 * v169, v212);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGMd, &_sSDySSSo8NSNumberCGMR);
      if (swift_dynamicCast())
      {
        v172 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v166 setKeyedNumbers_];
      }
    }
  }

  else
  {
  }

  v173 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v195[2])
  {
    v175 = specialized __RawDictionaryStorage.find<A>(_:)(v173, v174);
    v177 = v176;

    if (v177)
    {
      outlined init with copy of Any(v195[7] + 32 * v175, v212);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      if (swift_dynamicCast())
      {
        v178 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v166 setKeyedStrings_];

        outlined consume of Data?(v190, v111);
      }

      else
      {

        outlined consume of Data?(v190, v111);
      }

      outlined consume of Data._Representation(v201, v202);
      goto LABEL_108;
    }

    outlined consume of Data?(v190, v111);
  }

  else
  {

    outlined consume of Data?(v190, v111);
  }

  outlined consume of Data._Representation(v201, v202);

LABEL_108:
  outlined consume of Data?(v188, v189);
  (*(v203 + 8))(v205, v204);
  (*(v207 + 8))(v206, v208);
  return v166;
}

id @objc WOPersistence.init(jsonObject:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  return WOPersistence.init(jsonObject:)(v4, v6);
}

uint64_t WOPersistence.jsonObject()()
{
  v1 = v0;
  v154 = *MEMORY[0x277D85DE8];
  v2 = type metadata accessor for Date();
  v146 = *(v2 - 8);
  v147 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v145 = &v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for UUID();
  v5 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v6);
  v8 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F98];
  v150 = MEMORY[0x277D84F98];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = [v1 version];
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v15 = type metadata accessor for NSNumber();
  v153 = v15;
  v152._countAndFlagsBits = v14;
  outlined init with take of Any(&v152, v151);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v149 = v9;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v10, v12, isUniquelyReferenced_nonNull_native);

  v17 = v149;
  v150 = v149;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  v21 = [v1 type];
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v153 = v15;
  v152._countAndFlagsBits = v22;
  outlined init with take of Any(&v152, v151);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v17;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v18, v20, v23);

  v150 = v149;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  v27 = [v1 uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = UUID.uuidString.getter();
  v30 = v29;
  v31 = *(v5 + 8);
  v141 = v8;
  v32 = v8;
  v33 = v1;
  v143 = v5 + 8;
  v142 = v31;
  v31(v32, v148);
  v34 = MEMORY[0x277D837D0];
  v153 = MEMORY[0x277D837D0];
  v152._countAndFlagsBits = v28;
  v152._object = v30;
  outlined init with take of Any(&v152, v151);
  v35 = v150;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v35;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v24, v26, v36);

  v150 = v149;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;
  v40 = [v1 keyedNumbers];
  v144 = v15;
  v41 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGMd, &_sSDySSSo8NSNumberCGMR);
  v152._countAndFlagsBits = v41;
  outlined init with take of Any(&v152, v151);
  v42 = v150;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v42;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v37, v39, v43);

  v44 = v149;
  v150 = v149;
  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  v48 = [v33 keyedStrings];
  v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v152._countAndFlagsBits = v49;
  outlined init with take of Any(&v152, v151);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v44;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v45, v47, v50);

  v51 = v149;
  v150 = v149;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;
  v55 = [v33 persistedData];
  v56 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  v59 = Data.base64EncodedString(options:)(0);
  outlined consume of Data._Representation(v56, v58);
  v153 = v34;
  v152 = v59;
  outlined init with take of Any(&v152, v151);
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v51;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v52, v54, v60);

  v61 = v149;
  v150 = v149;
  v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = v63;
  v65 = [v33 persistedProtoData];
  if (v65)
  {
    v66 = v65;
    v67 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;

    v70 = Data.base64EncodedString(options:)(0);
    outlined consume of Data._Representation(v67, v69);
    v153 = v34;
    v152 = v70;
    outlined init with take of Any(&v152, v151);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v149 = v61;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v62, v64, v71);

    v72 = v149;
    v150 = v149;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(v62, v64, &v152);

    outlined destroy of UUID?(&v152, &_sypSgMd, &_sypSgMR);
    v72 = v150;
  }

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;
  v76 = [v33 objectState];
  v77 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v78 = v144;
  v153 = v144;
  v152._countAndFlagsBits = v77;
  outlined init with take of Any(&v152, v151);
  v79 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v72;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v73, v75, v79);

  v150 = v149;
  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;
  v83 = [v33 objectModificationDate];
  v84 = v145;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSinceReferenceDate.getter();
  v86 = v85;
  (*(v146 + 8))(v84, v147);
  v87 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v153 = v78;
  v152._countAndFlagsBits = v87;
  outlined init with take of Any(&v152, v151);
  v88 = v150;
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v149 = v88;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v80, v82, v89);

  v150 = v149;
  v90 = [v33 syncIdentity];
  if (v90)
  {
    v91 = v90;
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;
    v95 = [v91 hardwareIdentifier];
    v96 = v141;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v97 = UUID.uuidString.getter();
    v99 = v98;
    v100 = v148;
    v101 = v142;
    v142(v96, v148);
    v102 = MEMORY[0x277D837D0];
    v153 = MEMORY[0x277D837D0];
    v152._countAndFlagsBits = v97;
    v152._object = v99;
    outlined init with take of Any(&v152, v151);
    v103 = v150;
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v149 = v103;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v92, v94, v104);

    v150 = v149;
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;
    v108 = [v91 databaseIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v109 = UUID.uuidString.getter();
    v111 = v110;
    v101(v96, v100);
    v153 = v102;
    v152._countAndFlagsBits = v109;
    v152._object = v111;
    outlined init with take of Any(&v152, v151);
    v112 = v150;
    v113 = swift_isUniquelyReferenced_nonNull_native();
    v149 = v112;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v105, v107, v113);

    v114 = v149;
    v150 = v149;
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;
    v118 = [v91 instanceDiscriminator];
    v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v121 = v120;

    v153 = v102;
    v152._countAndFlagsBits = v119;
    v152._object = v121;
    outlined init with take of Any(&v152, v151);
    v122 = swift_isUniquelyReferenced_nonNull_native();
    v149 = v114;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v151, v115, v117, v122);
  }

  v123 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v152._countAndFlagsBits = 0;
  v125 = [v123 dataWithJSONObject:isa options:0 error:&v152];

  v126 = v152._countAndFlagsBits;
  if (v125)
  {
    v127 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v128 = v126;
    v129 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    __swift_project_value_buffer(v130, static WOLog.app);
    v131 = v129;
    v132 = Logger.logObject.getter();
    v133 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v135 = swift_slowAlloc();
      v152._countAndFlagsBits = v135;
      *v134 = 136315138;
      swift_getErrorValue();
      v136 = Error.localizedDescription.getter();
      v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v136, v137, &v152._countAndFlagsBits);

      *(v134 + 4) = v138;
      _os_log_impl(&dword_20AEA4000, v132, v133, "Cannot serialize to json object, error: %s", v134, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v135);
      MEMORY[0x20F2E9420](v135, -1, -1);
      MEMORY[0x20F2E9420](v134, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v127;
}

Class @objc WOPersistence.jsonObject()(void *a1)
{
  v1 = a1;
  v2 = WOPersistence.jsonObject()();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v2, v4);
    v5 = isa;
  }

  return v5;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v12;
    }

    outlined init with take of Any((*(v10 + 56) + 32 * v8), a3);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Date();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    specialized _NativeDictionary._delete(at:)(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Date();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for Station.Mood();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for Date();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for Date();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1)
{
  v2 = v1;
  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    specialized _NativeDictionary.copy()();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 8 * v5);
  specialized _NativeDictionary._delete(at:)(v8, v7);
  *v2 = v7;
  return v9;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), void (*a5)(void))
{
  v8 = v5;
  v9 = a3(a1, a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v5;
  v16 = *v8;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a5();
    v13 = v16;
  }

  v14 = *(*(v13 + 56) + 8 * v11);
  a4(v11, v13);
  *v8 = v13;
  return v14;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v7 = v4;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  v15 = *v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a4();
    v12 = v15;
  }

  v13 = *(*(v12 + 56) + 8 * v10);
  a3(v10, v12);
  *v7 = v12;
  return v13;
}

uint64_t outlined destroy of UUID?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19FitnessIntelligence27DeviceInferenceAvailabilityV17UnavailableReasonOG_11WorkoutCore0k5VoiceH8ProviderC014UnavailabilityC0Os5NeverOTg504_s11k8Core0A25mhn71C021parseGenerativeModelsD033_3DA5E4D60FFBD0191F3346B0731EB6B3LLShyAC19oc8OGyFAG19d15Intelligence015fg5D0V17iJ6OXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for DeviceInferenceAvailability.UnavailableReason();
  v5 = MEMORY[0x28223BE20](v3, v4);
  v56 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v61 = v41 - v9;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v41[1] = v1;
  v62 = MEMORY[0x277D84F90];
  v12 = v8;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v62;
  v13 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v15 = v12;
  v16 = result;
  v17 = 0;
  v53 = v15 + 88;
  v54 = v15 + 16;
  v52 = *MEMORY[0x277D0A5B8];
  v47 = *MEMORY[0x277D0A5D8];
  v45 = *MEMORY[0x277D0A5B0];
  v44 = *MEMORY[0x277D0A5C8];
  v43 = *MEMORY[0x277D0A5C0];
  v42 = *MEMORY[0x277D0A5D0];
  v55 = (v15 + 8);
  v46 = a1 + 64;
  v49 = v15;
  v50 = v3;
  v48 = v10;
  v51 = a1 + 56;
  while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(a1 + 32))
  {
    v19 = v16 >> 6;
    if ((*(v13 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_32;
    }

    v59 = 1 << v16;
    v60 = v11;
    v20 = *(a1 + 36);
    v57 = v17;
    v58 = v20;
    v21 = a1;
    v22 = *(v15 + 16);
    v23 = v61;
    v24 = v15;
    v22(v61, *(a1 + 48) + *(v15 + 72) * v16, v3);
    v25 = v56;
    v22(v56, v23, v3);
    v26 = (*(v24 + 88))(v25, v3);
    if (v26 == v52)
    {
      v27 = 3;
      a1 = v21;
      v11 = v60;
    }

    else
    {
      a1 = v21;
      if (v26 == v47)
      {
        v27 = 5;
        v11 = v60;
      }

      else
      {
        v27 = 2;
        v11 = v60;
        if (v26 != v45 && v26 != v44)
        {
          if (v26 == v43)
          {
            v27 = 4;
          }

          else
          {
            if (v26 != v42)
            {
              (*v55)(v56, v3);
            }

            v27 = 9;
          }
        }
      }
    }

    result = (*v55)(v61, v3);
    v62 = v11;
    v29 = *(v11 + 16);
    v28 = *(v11 + 24);
    if (v29 >= v28 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      v11 = v62;
    }

    *(v11 + 16) = v29 + 1;
    *(v11 + v29 + 32) = v27;
    v18 = 1 << *(a1 + 32);
    if (v16 >= v18)
    {
      goto LABEL_33;
    }

    v13 = v51;
    v30 = *(v51 + 8 * v19);
    if ((v30 & v59) == 0)
    {
      goto LABEL_34;
    }

    if (v58 != *(a1 + 36))
    {
      goto LABEL_35;
    }

    v31 = v30 & (-2 << (v16 & 0x3F));
    if (v31)
    {
      v18 = __clz(__rbit64(v31)) | v16 & 0x7FFFFFFFFFFFFFC0;
      v15 = v49;
    }

    else
    {
      v32 = v19 << 6;
      v33 = v19 + 1;
      v34 = (v46 + 8 * v19);
      while (v33 < (v18 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          v37 = v16;
          v38 = v49;
          result = outlined consume of Set<DeviceInferenceAvailability.UnavailableReason>.Index._Variant(v37, v58, 0);
          v15 = v38;
          v18 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      v39 = v16;
      v40 = v49;
      result = outlined consume of Set<DeviceInferenceAvailability.UnavailableReason>.Index._Variant(v39, v58, 0);
      v15 = v40;
    }

LABEL_4:
    v17 = v57 + 1;
    v16 = v18;
    v3 = v50;
    if (v57 + 1 == v48)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCAG_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t WorkoutVoiceAvailabilityProvider.State.description.getter(uint64_t a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x6C62616C69617661;
  }

  _StringGuts.grow(_:)(17);

  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v2 = Set.description.getter();
  MEMORY[0x20F2E6D80](v2);

  return 0x6961766120746F6ELL;
}

unint64_t lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError()
{
  result = lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError);
  }

  return result;
}

unint64_t WorkoutVoiceAvailabilityProvider.State.isFeatureSupported.getter(unint64_t result)
{
  if (result >= 2)
  {
    v1 = 0;
    v2 = 1 << *(result + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(result + 56);
    v5 = (v2 + 63) >> 6;
    while (v4)
    {
      v6 = v1;
LABEL_11:
      v7 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      if (*(*(result + 48) + (v7 | (v6 << 6))) - 3 >= 6)
      {
        v8 = 0;
LABEL_14:
        outlined copy of WorkoutVoiceAvailabilityProvider.State(result);

        return v8;
      }
    }

    while (1)
    {
      v6 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v6 >= v5)
      {
        v8 = 1;
        goto LABEL_14;
      }

      v4 = *(result + 56 + 8 * v6);
      ++v1;
      if (v4)
      {
        v1 = v6;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t outlined copy of WorkoutVoiceAvailabilityProvider.State(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t WorkoutVoiceAvailabilityProvider.State.unavailableReasons.getter(unint64_t a1)
{
  if (a1 >= 2)
  {
    v1 = a1;
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  outlined copy of WorkoutVoiceAvailabilityProvider.State(a1);
  return v1;
}

Swift::Int static WorkoutVoiceAvailabilityProvider.State.== infix(_:_:)(Swift::Int a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(a1, a2);
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x20F2E7FF0](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for static Equatable.== infix(_:_:) in conformance WorkoutVoiceAvailabilityProvider.State(Swift::Int *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return _sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(v2, v3);
}

WorkoutCore::WorkoutVoiceAvailabilityProvider::UnavailabilityError_optional __swiftcall WorkoutVoiceAvailabilityProvider.UnavailabilityError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Error._code.getter in conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t WorkoutVoiceAvailabilityProvider._availabilityState.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14 - v4;
  swift_getKeyPath();
  v15 = v0;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v7 = *&v1[v6];
  v14 = v7;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(v7);
  PassthroughSubject.send(_:)();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v7);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply, v11);
}

uint64_t (*WorkoutVoiceAvailabilityProvider._availabilityState.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return WorkoutVoiceAvailabilityProvider._availabilityState.modify;
}

uint64_t WorkoutVoiceAvailabilityProvider._availabilityState.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return WorkoutVoiceAvailabilityProvider._availabilityState.didset();
  }

  return result;
}

unint64_t key path getter for WorkoutVoiceAvailabilityProvider.availabilityState : WorkoutVoiceAvailabilityProvider@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;
  return outlined copy of WorkoutVoiceAvailabilityProvider.State(v5);
}

uint64_t key path setter for WorkoutVoiceAvailabilityProvider.availabilityState : WorkoutVoiceAvailabilityProvider(unint64_t *a1)
{
  v1 = *a1;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(*a1);
  return WorkoutVoiceAvailabilityProvider.availabilityState.setter(v1);
}

unint64_t WorkoutVoiceAvailabilityProvider.availabilityState.getter()
{
  swift_getKeyPath();
  v4 = v0;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v2 = *(v4 + v1);
  outlined copy of WorkoutVoiceAvailabilityProvider.State(v2);
  return v2;
}

uint64_t type metadata accessor for WorkoutVoiceAvailabilityProvider(uint64_t a1)
{
  result = type metadata singleton initialization cache for WorkoutVoiceAvailabilityProvider;
  if (!type metadata singleton initialization cache for WorkoutVoiceAvailabilityProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceAvailabilityProvider.availabilityState.setter(unint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == 1)
    {
      if (a1 == 1)
      {
        v5 = 1;
LABEL_10:
        *(v1 + v3) = a1;
        outlined consume of WorkoutVoiceAvailabilityProvider.State(v5);
        return WorkoutVoiceAvailabilityProvider._availabilityState.didset();
      }
    }

    else if (a1 >= 2 && (_sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(v4, a1) & 1) != 0)
    {
      v5 = *(v1 + v3);
      goto LABEL_10;
    }
  }

  else if (!a1)
  {
    v5 = 0;
    goto LABEL_10;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v8);
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(a1);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.availabilityState.setter(uint64_t a1, unint64_t a2)
{
  v4 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(a2);
  outlined consume of WorkoutVoiceAvailabilityProvider.State(v5);
  return WorkoutVoiceAvailabilityProvider._availabilityState.didset();
}

unint64_t outlined consume of WorkoutVoiceAvailabilityProvider.State(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t (*WorkoutVoiceAvailabilityProvider.availabilityState.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutVoiceAvailabilityProvider._availabilityState.modify(v4);
  return WorkoutVoiceAvailabilityProvider.availabilityState.modify;
}

void WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.setter(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__isWorkoutBuddyNoLongerAvailableInCurrentWorkout;
  swift_beginAccess();
  if (*(v1 + v3) == v2)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.setter()
{
  partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.setter();
}

{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__isWorkoutBuddyNoLongerAvailableInCurrentWorkout;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t (*WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutVoiceAvailabilityProvider._isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify(v4);
  return WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify;
}

uint64_t (*WorkoutVoiceAvailabilityProvider._didFailToKickoffWorkoutBuddyInCurrentWorkout.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return WorkoutVoiceAvailabilityProvider._didFailToKickoffWorkoutBuddyInCurrentWorkout.modify;
}

void key path getter for WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout : WorkoutVoiceAvailabilityProvider(uint64_t *a1@<X0>, uint64_t *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
}

uint64_t WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.getter(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *a2;
  swift_beginAccess();
  return *(v2 + v4);
}

uint64_t WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.setter(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v16 - v5;
  v7 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFailToKickoffWorkoutBuddyInCurrentWorkout;
  swift_beginAccess();
  if (v1[v7] == v2)
  {
    v1[v7] = v2;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    type metadata accessor for MainActor();
    v12 = v1;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout(), v14);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    v16[-2] = v1;
    LOBYTE(v16[-1]) = v2;
    v16[2] = v1;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t (*WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutVoiceAvailabilityProvider._didFailToKickoffWorkoutBuddyInCurrentWorkout.modify(v4);
  return WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.modify;
}

uint64_t (*WorkoutVoiceAvailabilityProvider._didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return WorkoutVoiceAvailabilityProvider._didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify;
}

void WorkoutVoiceAvailabilityProvider._didFailToKickoffWorkoutBuddyInCurrentWorkout.modify(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_endAccess();
  v7 = v6[4];
  if ((a2 & 1) == 0)
  {
    v8 = v6[3];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = v8;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v10;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, a4, v12);
  }

  free(v7);

  free(v6);
}

uint64_t WorkoutVoiceAvailabilityProvider.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.setter(char a1)
{
  v2 = a1 & 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v16 - v5;
  v7 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout;
  swift_beginAccess();
  if (v1[v7] == v2)
  {
    v1[v7] = v2;
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    type metadata accessor for MainActor();
    v12 = v1;
    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v15 = MEMORY[0x277D85700];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply, v14);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    v16[-2] = v1;
    LOBYTE(v16[-1]) = v2;
    v16[2] = v1;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.setter(_BYTE *a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v20 - v11;
  v13 = *a3;
  swift_beginAccess();
  a1[v13] = a2;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  type metadata accessor for MainActor();
  v15 = a1;
  v16 = static MainActor.shared.getter();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v15;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v12, a5, v17);
}

uint64_t (*WorkoutVoiceAvailabilityProvider.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = WorkoutVoiceAvailabilityProvider._didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify(v4);
  return WorkoutVoiceAvailabilityProvider.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify;
}

void WorkoutVoiceAvailabilityProvider.availabilityState.modify(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a4;
  type metadata accessor for MainActor();
  *(v4 + 128) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout(), v6, v5);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()()
{
  v1 = v0[15];

  swift_getKeyPath();
  v0[2] = v1;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getKeyPath();
  v0[5] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout;
  swift_beginAccess();
  if (*(v1 + v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = v0[15];
    swift_getKeyPath();
    v0[8] = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFailToKickoffWorkoutBuddyInCurrentWorkout;
    swift_beginAccess();
    if (v3 == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(v6 + v7);
    }
  }

  v8 = v0[15];
  v9 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__isWorkoutBuddyNoLongerAvailableInCurrentWorkout;
  swift_beginAccess();
  if (v5 == *(v8 + v9))
  {
    *(v8 + v9) = v5;
  }

  else
  {
    v10 = v0[15];
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = v5;
    v0[14] = v10;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v12 = v0[1];

  return v12();
}

uint64_t partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout();

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()(a1, v4, v5, v6);
}

Swift::Void __swiftcall WorkoutVoiceAvailabilityProvider.resetStateOfCurrentWorkout()()
{
  v1 = v0;
  v2 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__isWorkoutBuddyNoLongerAvailableInCurrentWorkout;
  swift_beginAccess();
  if (*(v1 + v2))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v4);
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + v2) = 0;
  }

  WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.setter(0);
  WorkoutVoiceAvailabilityProvider.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.setter(0);
}

id WorkoutVoiceAvailabilityProvider.init(inferenceClient:snapshotClient:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for InferenceClient();
  v29 = *(v5 - 8);
  v6 = v29;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v3[v10] = v11;
  *&v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState] = 0;
  v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__isWorkoutBuddyNoLongerAvailableInCurrentWorkout] = 0;
  v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFailToKickoffWorkoutBuddyInCurrentWorkout] = 0;
  v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout] = 0;
  v12 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_availabilityStatePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMd, &_s7Combine18PassthroughSubjectCy11WorkoutCore0D25VoiceAvailabilityProviderC5StateOs5NeverOGMR);
  swift_allocObject();
  *&v3[v12] = PassthroughSubject.init()();
  v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability] = 0;
  ObservationRegistrar.init()();
  v13 = *(v6 + 16);
  v30 = a1;
  v28 = v5;
  v13(&v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_inferenceClient], a1, v5);
  v14 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_snapshotClient;
  v15 = type metadata accessor for SnapshotClient();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v3[v14], v31, v15);
  v13(v9, a1, v5);
  type metadata accessor for DeviceInferenceAvailabilityProvider(0);
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v17 + v18) = v19;
  v20 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__phoneAvailability;
  v21 = type metadata accessor for DeviceInferenceAvailability();
  v22 = *(*(v21 - 8) + 56);
  v22(v17 + v20, 1, 1, v21);
  v22(v17 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__watchAvailability, 1, 1, v21);
  *(v17 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider__hasFetchedAvailability) = 0;
  v23 = v28;
  v24 = v29;
  (*(v29 + 32))(v17 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_inferenceClient, v9, v28);
  *&v3[OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider] = v17;
  v25 = type metadata accessor for WorkoutVoiceAvailabilityProvider(0);
  v32.receiver = v3;
  v32.super_class = v25;
  v26 = objc_msgSendSuper2(&v32, sel_init);
  (*(v16 + 8))(v31, v15);
  (*(v24 + 8))(v30, v23);
  return v26;
}

uint64_t WorkoutVoiceAvailabilityProvider._hasFetchedAvailability.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability) == (result & 1))
  {
    *(v1 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

Swift::Bool __swiftcall WorkoutVoiceAvailabilityProvider.isFeatureSupported()()
{
  DeviceInferenceAvailabilityProvider.updateDeviceInferenceAvailability()();
  v0 = WorkoutVoiceAvailabilityProvider.parseDeviceInferenceAvailability()();
  v1 = 0;
  v2 = 1 << *(v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v0 + 56);
  v5 = (v2 + 63) >> 6;
  while (v4)
  {
LABEL_9:
    v7 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v8 = *(*(v0 + 48) + (v7 | (v1 << 6)));
    if (v8 <= 9 && ((0x207u >> v8) & 1) != 0)
    {
      v9 = 0;
LABEL_13:

      LOBYTE(v0) = v9;
      return v0;
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v6 >= v5)
    {
      v9 = 1;
      goto LABEL_13;
    }

    v4 = *(v0 + 56 + 8 * v6);
    ++v1;
    if (v4)
    {
      v1 = v6;
      goto LABEL_9;
    }
  }

  __break(1u);
  return v0;
}

uint64_t WorkoutVoiceAvailabilityProvider._hasFetchedAvailability.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability);
}

uint64_t key path getter for WorkoutVoiceAvailabilityProvider._hasFetchedAvailability : WorkoutVoiceAvailabilityProvider@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability);
  return result;
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.hasFetchedAvailability.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(a1 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability);
  return result;
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.hasFetchedAvailability.setter(uint64_t result, char a2)
{
  if (*(result + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability) == (a2 & 1))
  {
    *(result + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider___hasFetchedAvailability) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v3);
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation()()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation(), 0, 0);
}

{
  v29 = v0;
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_lock);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.hasFetchedAvailability.getter;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v28);
  os_unfair_lock_unlock(v2 + 4);
  v5 = v28[0];

  if (v5)
  {
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static WOLog.workoutVoice);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28[0] = v10;
      *v9 = 136315138;
      v11 = _typeName(_:qualified:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v28);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_20AEA4000, v7, v8, "%s already fetched availability, ignoring call to activate.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x20F2E9420](v10, -1, -1);
      MEMORY[0x20F2E9420](v9, -1, -1);
    }

    v14 = v0[1];

    return v14();
  }

  else
  {
    v16 = v0[2];
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    *(v17 + 24) = 1;
    v18 = swift_task_alloc();
    *(v18 + 16) = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.hasFetchedAvailability.setter;
    *(v18 + 24) = v17;
    os_unfair_lock_lock(v2 + 4);
    partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
    os_unfair_lock_unlock(v2 + 4);

    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static WOLog.workoutVoice);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28[0] = v23;
      *v22 = 136315138;
      v24 = _typeName(_:qualified:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v28);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_20AEA4000, v20, v21, "%s activating.", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x20F2E9420](v23, -1, -1);
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    v27 = swift_task_alloc();
    v0[5] = v27;
    *v27 = v0;
    v27[1] = WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation();

    return DeviceInferenceAvailabilityProvider.activate()();
  }
}

{

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation(), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for TaskPriority();
  v7 = *(v0 + 16);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v7;
  v4 = v7;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v1, &async function pointer to partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability(), v3, MEMORY[0x277D84F78] + 8);

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation();

  return WorkoutVoiceAvailabilityProvider.determineAvailabilityState()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WorkoutVoiceAvailabilityProvider.fetchAvailability()()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.fetchAvailability(), 0, 0);
}

{
  v12 = v0;
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
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20AEA4000, v2, v3, "%s activating.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F2E9420](v5, -1, -1);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 40) = v9;
  *v9 = v0;
  v9[1] = WorkoutVoiceAvailabilityProvider.fetchAvailability();

  return DeviceInferenceAvailabilityProvider.activate()();
}

{

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.fetchAvailability(), 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for TaskPriority();
  v7 = *(v0 + 16);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = v7;
  v4 = v7;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v1, &closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()partial apply, v3, MEMORY[0x277D84F78] + 8);

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = WorkoutVoiceAvailabilityProvider.fetchAvailability();

  return WorkoutVoiceAvailabilityProvider.determineAvailabilityState()();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)(unint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v45 - v6;
  swift_getKeyPath();
  v50 = v1;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v9 = *&v1[v8];
  if (v9)
  {
    if (v9 == 1)
    {
      if (a1 != 1)
      {
        goto LABEL_14;
      }
    }

    else if (a1 < 2 || (_sSh2eeoiySbShyxG_ABtFZ11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt1g5(v9, a1) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (a1)
  {
LABEL_14:
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static WOLog.workoutVoice);
    v22 = v1;
    outlined copy of WorkoutVoiceAvailabilityProvider.State(a1);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    outlined consume of WorkoutVoiceAvailabilityProvider.State(a1);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      HIDWORD(v45) = v24;
      v26 = v25;
      v46 = swift_slowAlloc();
      v49 = v46;
      *v26 = 136315650;
      v27 = _typeName(_:qualified:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v49);
      v47 = v7;
      v30 = v29;

      *(v26 + 4) = v30;
      *(v26 + 12) = 2080;
      swift_getKeyPath();
      v48 = v22;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v31 = *&v2[v8];
      outlined copy of WorkoutVoiceAvailabilityProvider.State(v31);
      v32 = WorkoutVoiceAvailabilityProvider.State.description.getter(v31);
      v34 = v33;
      outlined consume of WorkoutVoiceAvailabilityProvider.State(v31);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v49);

      *(v26 + 14) = v35;
      *(v26 + 22) = 2080;
      v36 = WorkoutVoiceAvailabilityProvider.State.description.getter(a1);
      v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, &v49);

      *(v26 + 24) = v38;
      v7 = v47;
      _os_log_impl(&dword_20AEA4000, v23, BYTE4(v45), "%s Updating state from %s to %s", v26, 0x20u);
      v39 = v46;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v39, -1, -1);
      MEMORY[0x20F2E9420](v26, -1, -1);
    }

    outlined copy of WorkoutVoiceAvailabilityProvider.State(a1);
    WorkoutVoiceAvailabilityProvider.availabilityState.setter(a1);
    v40 = type metadata accessor for TaskPriority();
    (*(*(v40 - 8) + 56))(v7, 1, 1, v40);
    type metadata accessor for MainActor();
    v41 = v22;
    v42 = static MainActor.shared.getter();
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D85700];
    v43[2] = v42;
    v43[3] = v44;
    v43[4] = v41;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:), v43);

    return;
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static WOLog.workoutVoice);
  outlined copy of WorkoutVoiceAvailabilityProvider.State(a1);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  outlined consume of WorkoutVoiceAvailabilityProvider.State(a1);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v49 = v14;
    *v13 = 136315394;
    v15 = _typeName(_:qualified:)();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v49);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = WorkoutVoiceAvailabilityProvider.State.description.getter(a1);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v49);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_20AEA4000, v11, v12, "%s Not updating state as it is unchanged. Current state: %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:);

  return WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()();
}

{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:), v1, v0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()()
{
  v1[6] = v0;
  v1[7] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever(), 0, 0);
}

{
  type metadata accessor for MainActor();
  *(v0 + 72) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever(), v2, v1);
}

{
  v1 = v0[6];

  swift_getKeyPath();
  v0[5] = v1;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[10] = v3;
  outlined copy of WorkoutVoiceAvailabilityProvider.State(v3);

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever(), 0, 0);
}

{
  v1 = *(v0 + 80);
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = *(v0 + 64);
      v3 = type metadata accessor for TaskPriority();
      v8 = *(v0 + 48);
      (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
      v4 = swift_allocObject();
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = v8;
      v5 = v8;
      _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(0, 0, v2, &async function pointer to partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever(), v4, MEMORY[0x277D84F78] + 8);
    }

    else
    {
      outlined consume of WorkoutVoiceAvailabilityProvider.State(v1);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever(), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()()
{
  v12 = v0;
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
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = _typeName(_:qualified:)();
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_20AEA4000, v2, v3, "%s Prewarming snapshot retriever.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x20F2E9420](v5, -1, -1);
    MEMORY[0x20F2E9420](v4, -1, -1);
  }

  v9 = swift_task_alloc();
  *(v0 + 32) = v9;
  *v9 = v0;
  v9[1] = closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever();

  return MEMORY[0x282160A40]();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v24 - v11;
  outlined init with copy of TaskPriority?(a3, v24 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t WorkoutVoiceAvailabilityProvider.determineAvailabilityState()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = swift_getObjectType();

  return MEMORY[0x2822009F8](WorkoutVoiceAvailabilityProvider.determineAvailabilityState(), 0, 0);
}

{
  v19 = v0;
  if (specialized static NLWorkoutDemoUtilities.shoulOverrideVoiceAvailabilityState()())
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
      v5 = swift_slowAlloc();
      v18 = v5;
      *v4 = 136315138;
      v6 = _typeName(_:qualified:)();
      v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, &v18);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_20AEA4000, v2, v3, "%s Running in store demo mode with supported language, overriding availability state to available.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x20F2E9420](v5, -1, -1);
      MEMORY[0x20F2E9420](v4, -1, -1);
    }

    type metadata accessor for MainActor();
    v0[4] = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v12 = WorkoutVoiceAvailabilityProvider.determineAvailabilityState();
  }

  else
  {
    v13 = WorkoutVoiceAvailabilityProvider.parseDeviceInferenceAvailability()();
    v14 = specialized Set.union<A>(_:)(v13, MEMORY[0x277D84FA0]);
    v0[5] = v14;
    if (*(v14 + 16))
    {
      type metadata accessor for MainActor();
      v0[7] = static MainActor.shared.getter();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v15;
      v12 = WorkoutVoiceAvailabilityProvider.determineAvailabilityState();
    }

    else
    {

      type metadata accessor for MainActor();
      v0[6] = static MainActor.shared.getter();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v16;
      v12 = WorkoutVoiceAvailabilityProvider.determineAvailabilityState();
    }
  }

  return MEMORY[0x2822009F8](v12, v9, v11);
}

{

  WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)(1uLL);
  v1 = *(v0 + 8);

  return v1();
}

{

  WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)(1uLL);
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 40);

  WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = specialized Set._Variant.insert(_:)(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsyyts5Error_pGMd, &_sScsyyts5Error_pGMR);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVyyts5Error_p_GMd, &_sScs8IteratorVyyts5Error_p_GMR);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability(), 0, 0);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  DeviceInferenceAvailabilityProvider.makeDeviceAvailabilityStream()();
  MEMORY[0x20F2E71E0](v3);
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();
  v5 = v0[8];

  return MEMORY[0x2822005A8](v0 + 13, 0, 0, v5, v0 + 2);
}

{

  if (v0)
  {
    v1 = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();
  }

  else
  {
    v1 = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

{
  v13 = v0;
  if (*(v0 + 104) == 1)
  {
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));

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
    __swift_project_value_buffer(v3, static WOLog.workoutVoice);
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
      _os_log_impl(&dword_20AEA4000, v4, v5, "%s Device availability changed.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x20F2E9420](v7, -1, -1);
      MEMORY[0x20F2E9420](v6, -1, -1);
    }

    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    *v11 = v0;
    v11[1] = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();

    return WorkoutVoiceAvailabilityProvider.determineAvailabilityState()();
  }
}

{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 88) = v3;
  *v3 = v2;
  v3[1] = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();
  v4 = *(v1 + 64);

  return MEMORY[0x2822005A8](v1 + 104, 0, 0, v4, v1 + 16);
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t WorkoutVoiceAvailabilityProvider.parseDeviceInferenceAvailability()()
{
  swift_getObjectType();
  v0 = WorkoutVoiceAvailabilityProvider.parseGenerativeModelsAvailability()();
  v1 = WorkoutVoiceAvailabilityProvider.parseSiriPhoneAvailability()();
  v2 = WorkoutVoiceAvailabilityProvider.parseSiriWatchAvailability()();
  v3 = WorkoutVoiceAvailabilityProvider.parseVoiceAssetAvailability()();
  v4 = WorkoutVoiceAvailabilityProvider.parseLocaleAvailability()();
  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static WOLog.workoutVoice);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v60 = v1;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v61 = v9;
    *v8 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v61);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v13 = Set.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v61);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_20AEA4000, v6, v7, "%s GMS errors: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v61 = v19;
    *v18 = 136315394;
    v20 = _typeName(_:qualified:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v61);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v23 = Set.description.getter();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v61);

    *(v18 + 14) = v25;
    _os_log_impl(&dword_20AEA4000, v16, v17, "%s Siri iOS errors: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v61 = v29;
    *v28 = 136315394;
    v30 = _typeName(_:qualified:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v61);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v33 = Set.description.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v61);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_20AEA4000, v26, v27, "%s Siri watchOS errors: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v29, -1, -1);
    MEMORY[0x20F2E9420](v28, -1, -1);
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v61 = v39;
    *v38 = 136315394;
    v40 = _typeName(_:qualified:)();
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, &v61);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2080;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v43 = Set.description.getter();
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v61);

    *(v38 + 14) = v45;
    _os_log_impl(&dword_20AEA4000, v36, v37, "%s voice asset errors: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v39, -1, -1);
    MEMORY[0x20F2E9420](v38, -1, -1);
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v61 = v49;
    *v48 = 136315394;
    v50 = _typeName(_:qualified:)();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v61);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider.UnavailabilityError and conformance WorkoutVoiceAvailabilityProvider.UnavailabilityError();
    v53 = Set.description.getter();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v61);

    *(v48 + 14) = v55;
    _os_log_impl(&dword_20AEA4000, v46, v47, "%s Locale errors: %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v49, -1, -1);
    MEMORY[0x20F2E9420](v48, -1, -1);
  }

  v56 = specialized Set.union<A>(_:)(v60, v0);
  v57 = specialized Set.union<A>(_:)(v2, v56);
  v58 = specialized Set.union<A>(_:)(v3, v57);

  return specialized Set.union<A>(_:)(v4, v58);
}

Swift::Int WorkoutVoiceAvailabilityProvider.parseGenerativeModelsAvailability()()
{
  v1 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v22[-v8];
  v10 = type metadata accessor for DeviceInferenceAvailability();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v16 = *(v15 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v23 = closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getterpartial apply;
  v24 = v15;
  os_unfair_lock_lock(v16 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v16 + 4);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of TaskPriority?(v9, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #1 of WorkoutVoiceAvailabilityProvider.parseGenerativeModelsAvailability());
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    DeviceInferenceAvailability.generativeModels.getter();
    v18 = (*(v2 + 88))(v5, v1);
    if (v18 == *MEMORY[0x277D0A5A0])
    {
      (*(v2 + 96))(v5, v1);
      v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19FitnessIntelligence27DeviceInferenceAvailabilityV17UnavailableReasonOG_11WorkoutCore0k5VoiceH8ProviderC014UnavailabilityC0Os5NeverOTg504_s11k8Core0A25mhn71C021parseGenerativeModelsD033_3DA5E4D60FFBD0191F3346B0731EB6B3LLShyAC19oc8OGyFAG19d15Intelligence015fg5D0V17iJ6OXEfU_Tf1cn_n(*v5);

      v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore0B25VoiceAvailabilityProviderC19UnavailabilityErrorO_SayAHGTt0g5Tf4g_n(v19);

      (*(v11 + 8))(v14, v10);
      return v20;
    }

    else if (v18 == *MEMORY[0x277D0A5A8])
    {
      (*(v11 + 8))(v14, v10);
      return MEMORY[0x277D84FA0];
    }

    else
    {
      v21 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #0 of WorkoutVoiceAvailabilityProvider.parseGenerativeModelsAvailability());
      (*(v11 + 8))(v14, v10);
      (*(v2 + 8))(v5, v1);
      return v21;
    }
  }
}

Swift::Int WorkoutVoiceAvailabilityProvider.parseSiriPhoneAvailability()()
{
  v1 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InferenceDevice();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for DeviceInferenceAvailability();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v19 = *(v18 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v27 = closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getterpartial apply;
  v28 = v18;
  os_unfair_lock_lock(v19 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v19 + 4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #0 of WorkoutVoiceAvailabilityProvider.parseSiriPhoneAvailability());
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v21 = v24;
    (*(v5 + 104))(v8, *MEMORY[0x277D09FE0], v24);
    DeviceInferenceAvailability.siri.getter();
    v22 = specialized WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:)(v8, v4);
    (*(v25 + 8))(v4, v26);
    (*(v5 + 8))(v8, v21);
    (*(v14 + 8))(v17, v13);
    return v22;
  }
}

Swift::Int WorkoutVoiceAvailabilityProvider.parseSiriWatchAvailability()()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v33 = *(v1 - 8);
  v34 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for InferenceDevice();
  v5 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v6);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &ObjectType - v11;
  v13 = type metadata accessor for DeviceInferenceAvailability();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &ObjectType - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v19 = *(v18 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v35 = closure #1 in DeviceInferenceAvailabilityProvider.watchAvailability.getterpartial apply;
  v36 = v18;
  os_unfair_lock_lock(v19 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v19 + 4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static WOLog.workoutVoice);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v23 = 136315138;
      v25 = _typeName(_:qualified:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v37);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_20AEA4000, v21, v22, "%s Watch availability is nil. This should only occur if we are querying from phone and watch is not running capable software.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x20F2E9420](v24, -1, -1);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    return MEMORY[0x277D84FA0];
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
    v29 = v32;
    (*(v5 + 104))(v8, *MEMORY[0x277D09FE8], v32);
    DeviceInferenceAvailability.siri.getter();
    v30 = specialized WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:)(v8, v4);
    (*(v33 + 8))(v4, v34);
    (*(v5 + 8))(v8, v29);
    (*(v14 + 8))(v17, v13);
    return v30;
  }
}

Swift::Int WorkoutVoiceAvailabilityProvider.parseVoiceAssetAvailability()()
{
  v1 = type metadata accessor for DeviceInferenceAvailability.UnavailableReason();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for DeviceInferenceAvailability();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v19 = *(v18 + OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock);
  v36 = closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getterpartial apply;
  v37 = v18;
  os_unfair_lock_lock(v19 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v19 + 4);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #2 of WorkoutVoiceAvailabilityProvider.parseVoiceAssetAvailability());
  }

  (*(v14 + 32))(v17, v12, v13);
  DeviceInferenceAvailability.generativeModels.getter();
  v21 = (*(v5 + 88))(v8, v4);
  if (v21 == *MEMORY[0x277D0A5A0])
  {
    (*(v5 + 96))(v8, v4);
    v22 = *v8;
    v23 = v33;
    v24 = v34;
    v25 = *(v34 + 104);
    v26 = v35;
    v25(v33, *MEMORY[0x277D0A5D8], v35);
    v27 = specialized Set.contains(_:)(v23, v22);
    v34 = *(v24 + 8);
    (v34)(v23, v26);
    if (v27 & 1) != 0 || (v25(v23, *MEMORY[0x277D0A5B8], v26), v28 = specialized Set.contains(_:)(v23, v22), (v34)(v23, v26), (v28))
    {

LABEL_7:
      v29 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #0 of WorkoutVoiceAvailabilityProvider.parseVoiceAssetAvailability());
      (*(v14 + 8))(v17, v13);
      return v29;
    }

    v25(v23, *MEMORY[0x277D0A5D0], v26);
    v31 = specialized Set.contains(_:)(v23, v22);

    (v34)(v23, v26);
    if (v31)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x277D0A5A8])
  {
LABEL_9:
    (*(v14 + 8))(v17, v13);
    return MEMORY[0x277D84FA0];
  }

  v30 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #1 of WorkoutVoiceAvailabilityProvider.parseVoiceAssetAvailability());
  (*(v14 + 8))(v17, v13);
  (*(v5 + 8))(v8, v4);
  return v30;
}

Swift::Int WorkoutVoiceAvailabilityProvider.parseLocaleAvailability()()
{
  ObjectType = swift_getObjectType();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
  v3 = MEMORY[0x28223BE20](v1 - 8, v2);
  v76 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v70 - v6;
  v8 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v77 = *(v8 - 8);
  v78 = v8;
  v10 = MEMORY[0x28223BE20](v8, v9);
  v74 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v73 = &v70 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v75 = &v70 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v70 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v79 = &v70 - v23;
  v24 = *(v0 + OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider_deviceInferenceAvailabilityProvider);
  v25 = OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock;
  v26 = *&v24[OBJC_IVAR____TtC11WorkoutCore35DeviceInferenceAvailabilityProvider_lock];
  v80 = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getter;
  v81 = v24;
  os_unfair_lock_lock(v26 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v26 + 4);
  v27 = type metadata accessor for DeviceInferenceAvailability();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v7, 1, v27) == 1)
  {
    outlined destroy of TaskPriority?(v7, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #1 of WorkoutVoiceAvailabilityProvider.parseLocaleAvailability());
  }

  DeviceInferenceAvailability.locale.getter();
  v71 = *(v28 + 8);
  v71(v7, v27);
  v70 = *(v77 + 32);
  v31 = v70(v79, v21, v78);
  v32 = *&v24[v25];
  MEMORY[0x28223BE20](v31, v33);
  *(&v70 - 2) = partial apply for closure #1 in DeviceInferenceAvailabilityProvider.watchAvailability.getter;
  *(&v70 - 1) = v24;
  os_unfair_lock_lock(v32 + 4);
  v34 = v76;
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v32 + 4);
  if (v29(v34, 1, v27) == 1)
  {
    v35 = v78;
    v36 = v79;
    v37 = v77;
    outlined destroy of TaskPriority?(v76, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMd, &_s19FitnessIntelligence27DeviceInferenceAvailabilityVSgMR);
    if (one-time initialization token for workoutVoice != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static WOLog.workoutVoice);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v82[0] = v42;
      *v41 = 136315138;
      v43 = _typeName(_:qualified:)();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v82);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_20AEA4000, v39, v40, "%s Watch availability is nil. This should only occur if we are querying from phone and watch is not running capable software.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x20F2E9420](v42, -1, -1);
      MEMORY[0x20F2E9420](v41, -1, -1);
    }

    (*(v37 + 8))(v36, v35);
    return MEMORY[0x277D84FA0];
  }

  v46 = v73;
  v47 = v76;
  DeviceInferenceAvailability.locale.getter();
  v71(v47, v27);
  v48 = v78;
  v70(v75, v46, v78);
  v49 = *MEMORY[0x277D0A5A8];
  v50 = v77;
  v51 = *(v77 + 104);
  v52 = v74;
  v51(v74, v49, v48);
  v53 = v79;
  v54 = static DeviceInferenceAvailability.ComponentAvailability.== infix(_:_:)();
  v55 = *(v50 + 8);
  v55(v52, v48);
  v51(v52, v49, v48);
  v56 = static DeviceInferenceAvailability.ComponentAvailability.== infix(_:_:)();
  v55(v52, v48);
  v57 = v48;
  v58 = v53;
  v59 = v54;
  if (v54 & 1) != 0 && (v56)
  {
    v55(v75, v48);
    v55(v58, v48);
    return MEMORY[0x277D84FA0];
  }

  if (one-time initialization token for workoutVoice != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static WOLog.workoutVoice);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    LODWORD(v77) = v56;
    v64 = v63;
    v65 = swift_slowAlloc();
    v82[0] = v65;
    *v64 = 136315650;
    v66 = _typeName(_:qualified:)();
    v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v67, v82);
    v58 = v79;

    *(v64 + 4) = v68;
    *(v64 + 12) = 1024;
    *(v64 + 14) = v59 & 1;
    *(v64 + 18) = 1024;
    *(v64 + 20) = v77 & 1;
    _os_log_impl(&dword_20AEA4000, v61, v62, "%s phone locale available: %{BOOL}d, watch locale available: %{BOOL}d", v64, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x20F2E9420](v65, -1, -1);
    MEMORY[0x20F2E9420](v64, -1, -1);
  }

  v69 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #0 of WorkoutVoiceAvailabilityProvider.parseLocaleAvailability());
  v55(v75, v57);
  v55(v58, v57);
  return v69;
}

id WorkoutVoiceAvailabilityProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutVoiceAvailabilityProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutVoiceAvailabilityProvider(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for WorkoutBuddyAvailabilityProviding.availabilityState.getter in conformance WorkoutVoiceAvailabilityProvider()
{
  *(v1 + 40) = v0;
  type metadata accessor for MainActor();
  *(v1 + 48) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](protocol witness for WorkoutBuddyAvailabilityProviding.availabilityState.getter in conformance WorkoutVoiceAvailabilityProvider, v3, v2);
}

{
  v1 = v0[5];

  v2 = *v1;
  swift_getKeyPath();
  v0[2] = v2;
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR___WOCoreWorkoutVoiceAvailabilityProvider__availabilityState;
  swift_beginAccess();
  v4 = *(v2 + v3);
  outlined copy of WorkoutVoiceAvailabilityProvider.State(v4);
  v5 = v0[1];

  return v5(v4);
}

uint64_t (*protocol witness for WorkoutBuddyAvailabilityProviding.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider(uint64_t **a1))()
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
  v2[4] = WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify(v2);
  return protocol witness for WorkoutBuddyAvailabilityProviding.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider;
}

uint64_t protocol witness for WorkoutBuddyAvailabilityProviding.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.getter in conformance WorkoutVoiceAvailabilityProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *v4;
  swift_getKeyPath();
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider, type metadata accessor for WorkoutVoiceAvailabilityProvider, &protocol conformance descriptor for WorkoutVoiceAvailabilityProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a4;
  swift_beginAccess();
  return *(v6 + v7);
}

uint64_t (*protocol witness for WorkoutBuddyAvailabilityProviding.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider(uint64_t **a1))()
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
  v2[4] = WorkoutVoiceAvailabilityProvider.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify(v2);
  return protocol witness for WorkoutBuddyAvailabilityProviding.didFallbackToSiriForVoiceAnnouncementsInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider;
}

uint64_t (*protocol witness for WorkoutBuddyAvailabilityProviding.didFailToKickoffWorkoutBuddyInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider(uint64_t **a1))()
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
  v2[4] = WorkoutVoiceAvailabilityProvider.didFailToKickoffWorkoutBuddyInCurrentWorkout.modify(v2);
  return protocol witness for WorkoutBuddyAvailabilityProviding.didFailToKickoffWorkoutBuddyInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider;
}

void protocol witness for WorkoutBuddyAvailabilityProviding.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.modify in conformance WorkoutVoiceAvailabilityProvider(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  return a2(a1);
}

{
  return a2(a1);
}

void *specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)()
{
  return (*(v0 + 16))();
}

{
  return (*(v0 + 16))();
}

uint64_t partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability();

  return closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()partial apply;

  return closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()(a1, v4, v5, v7, v6);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.observeDeviceInferenceAvailability()partial apply()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever();

  return closure #1 in WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()(a1, v4, v5, v7, v6);
}

unint64_t lazy protocol witness table accessor for type [WorkoutVoiceAvailabilityProvider.UnavailabilityError] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [WorkoutVoiceAvailabilityProvider.UnavailabilityError] and conformance [A];
  if (!lazy protocol witness table cache variable for type [WorkoutVoiceAvailabilityProvider.UnavailabilityError] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A25VoiceAvailabilityProviderC19UnavailabilityErrorOGMd, &_sSay11WorkoutCore0A25VoiceAvailabilityProviderC19UnavailabilityErrorOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [WorkoutVoiceAvailabilityProvider.UnavailabilityError] and conformance [A]);
  }

  return result;
}

uint64_t dispatch thunk of WorkoutBuddyAvailabilityProviding.availabilityState.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of WorkoutBuddyAvailabilityProviding.availabilityState.getter;

  return v7(a1, a2);
}

uint64_t dispatch thunk of WorkoutBuddyAvailabilityProviding.availabilityState.getter(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t type metadata completion function for WorkoutVoiceAvailabilityProvider(uint64_t a1)
{
  result = type metadata accessor for InferenceClient();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SnapshotClient();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ObservationRegistrar();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D0);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of WorkoutVoiceAvailabilityProvider.setupAvailabilityObservation();

  return v5();
}

uint64_t dispatch thunk of WorkoutVoiceAvailabilityProvider.fetchAvailability()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1D8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of WorkoutVoiceAvailabilityProvider.fetchAvailability();

  return v5();
}

uint64_t dispatch thunk of WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1E8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of WorkoutVoiceAvailabilityProvider.prewarmSnapshotRetriever();

  return v5();
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore0A25VoiceAvailabilityProviderC5StateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceAvailabilityProvider.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WorkoutVoiceAvailabilityProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for WorkoutVoiceAvailabilityProvider.State(void *result, int a2)
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

uint64_t getEnumTagSinglePayload for WorkoutVoiceAvailabilityProvider.UnavailabilityError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutVoiceAvailabilityProvider.UnavailabilityError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TQ0_;

  return v5(v2 + 16);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TA_79(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5TA_79TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSSSg_TG5(a1, v4);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

Swift::Int specialized WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:)(uint64_t a1, uint64_t a2)
{
  v25[1] = a1;
  v3 = type metadata accessor for InferenceDevice();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceInferenceAvailability.UnavailableReason();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DeviceInferenceAvailability.ComponentAvailability();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v17, a2, v13);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 != *MEMORY[0x277D0A5A0])
  {
    if (v18 != *MEMORY[0x277D0A5A8])
    {
      v22 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(&outlined read-only object #2 of WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:));
      (*(v14 + 8))(v17, v13);
      return v22;
    }

    return MEMORY[0x277D84FA0];
  }

  (*(v14 + 96))(v17, v13);
  v19 = *v17;
  (*(v9 + 104))(v12, *MEMORY[0x277D0A5B8], v8);
  v20 = specialized Set.contains(_:)(v12, v19);

  (*(v9 + 8))(v12, v8);
  if ((v20 & 1) == 0)
  {
    return MEMORY[0x277D84FA0];
  }

  (*(v4 + 104))(v7, *MEMORY[0x277D09FE8], v3);
  lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(&lazy protocol witness table cache variable for type InferenceDevice and conformance InferenceDevice, MEMORY[0x277D09FF0], MEMORY[0x277D09FF8]);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v25[4] == v25[2] && v25[5] == v25[3])
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    (*(v4 + 8))(v7, v3);

    if ((v23 & 1) == 0)
    {
      v24 = &outlined read-only object #1 of WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:);
      return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(v24);
    }
  }

  v24 = &outlined read-only object #0 of WorkoutVoiceAvailabilityProvider.parseSiriAvailability(for:_:);
  return _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC11WorkoutCore0E25VoiceAvailabilityProviderC19UnavailabilityErrorO_Tt0g5Tf4g_n(v24);
}

uint64_t lazy protocol witness table accessor for type WorkoutVoiceAvailabilityProvider and conformance WorkoutVoiceAvailabilityProvider(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined consume of Set<DeviceInferenceAvailability.UnavailableReason>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:);

  return closure #1 in WorkoutVoiceAvailabilityProvider.updateAvailabilityState(to:)();
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_120(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_120TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t closure #1 in WorkoutVoiceAvailabilityProvider.evaluateIfWorkoutBuddyIsAvailableInCurrentWorkout()partial apply()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_153(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_153TQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t objectdestroyTm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void closure #1 in WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.setterpartial apply()
{
  partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.setter();
}

{
  partial apply for closure #1 in WorkoutVoiceAvailabilityProvider.isWorkoutBuddyNoLongerAvailableInCurrentWorkout.setter();
}

uint64_t closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getterpartial apply@<X0>(uint64_t a1@<X8>)
{
  return partial apply for closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getter(a1);
}

{
  return partial apply for closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getter(a1);
}

{
  return partial apply for closure #1 in DeviceInferenceAvailabilityProvider.phoneAvailability.getter(a1);
}

uint64_t closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply()
{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
}

{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
}

{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
}

{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
}

{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
}

uint64_t DataLinkRecorder.currentBatchStartDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v23 - v5;
  v7 = type metadata accessor for Google_Protobuf_Timestamp();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentBatch;
  swift_beginAccess();
  v18 = *(v1 + v17);
  if (*(v18 + 16))
  {
    outlined init with copy of Apple_Workout_Core_DataLinkMessageBatch(v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v16, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
    outlined init with copy of URL?(&v16[*(v12 + 24)], v6, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
    v19 = *(v8 + 48);
    if (v19(v6, 1, v7) == 1)
    {
      Google_Protobuf_Timestamp.init()();
      if (v19(v6, 1, v7) != 1)
      {
        outlined destroy of Date?(v6, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
      }
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessageBatch(v16, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
    Google_Protobuf_Timestamp.date.getter();
    (*(v8 + 8))(v11, v7);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = type metadata accessor for Date();
  return (*(*(v21 - 8) + 56))(a1, v20, 1, v21);
}

uint64_t DataLinkRecorder.init(uuid:)(uint64_t a1)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v28 - v4;
  v32 = type metadata accessor for UUID();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v5);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v11, v12);
  v13 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v13 - 8, v14);
  *(v1 + 16) = 0x4072C00000000000;
  v15 = type metadata accessor for OS_dispatch_queue();
  v33 = "currentJournalIndex";
  v34 = v15;
  static DispatchQoS.unspecified.getter();
  v37 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v35);
  *(v1 + 24) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v16 = OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentSessionFolderPath;
  v17 = type metadata accessor for URL();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  *(v1 + OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentBatch) = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0);
  v18 = v1;
  UnknownStorage.init()();
  *(v1 + OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentJournalIndex) = 1;
  if ([objc_opt_self() isAppleInternalInstall] && (v19 = objc_msgSend(objc_opt_self(), sel_standardUserDefaults), v20 = MEMORY[0x20F2E6C00](0x614464726F636552, 0xEE006B6E694C6174), v21 = objc_msgSend(v19, sel_BOOLForKey_, v20), v19, v20, v21))
  {
    v22 = v36;
    v23 = v31;
    outlined init with copy of URL?(v36, v31, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v24 = v30;
    v25 = v32;
    if ((*(v30 + 48))(v23, 1, v32) == 1)
    {
      outlined destroy of Date?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of Date?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    else
    {
      v27 = v29;
      (*(v24 + 32))(v29, v23, v25);
      DataLinkRecorder.startSession(uuid:)(v27);
      outlined destroy of Date?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v24 + 8))(v27, v25);
    }
  }

  else
  {
    outlined destroy of Date?(v36, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

    return 0;
  }

  return v18;
}

uint64_t DataLinkRecorder.startSession(uuid:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v21[1] = *(v2 + 24);
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  (*(v13 + 32))(v18 + v17, v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  aBlock[4] = partial apply for closure #1 in DataLinkRecorder.startSession(uuid:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_23;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v11, v7, v19);
  _Block_release(v19);
  (*(v24 + 8))(v7, v4);
  (*(v22 + 8))(v11, v23);
}

uint64_t closure #1 in DataLinkRecorder.startSession(uuid:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DataLinkRecorder._queueStartSession(uuid:)(a2);
  }

  return result;
}

Swift::Void __swiftcall DataLinkRecorder.stopSession()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v6 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v7);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[1] = *(v0 + 24);
  aBlock[4] = partial apply for closure #1 in DataLinkRecorder.stopSession();
  v15 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14_0;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v12);
}

uint64_t DataLinkRecorder.recordMessage(_:)(uint64_t a1)
{
  v28[0] = a1;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v2);
  v29 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v11 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v28 - v19;
  Date.init()();
  v28[1] = *(v1 + 24);
  outlined init with copy of Apple_Workout_Core_DataLinkMessageBatch(v28[0], v11, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  (*(v13 + 16))(v17, v20, v12);
  v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v22 = (v9 + *(v13 + 80) + v21) & ~*(v13 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v1;
  outlined init with take of Apple_Workout_Core_DataLinkMessage(v11, v23 + v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  (*(v13 + 32))(v23 + v22, v17, v12);
  aBlock[4] = partial apply for closure #1 in DataLinkRecorder.recordMessage(_:);
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_5;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v25 = v29;
  v26 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v6, v25, v24);
  _Block_release(v24);
  (*(v33 + 8))(v25, v26);
  (*(v30 + 8))(v6, v32);
  (*(v13 + 8))(v20, v12);
}

void DataLinkRecorder._queueStartSession(uuid:)(void *a1)
{
  v2 = v1;
  v91 = a1;
  v95[3] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for UUID();
  v90 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v89 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v84 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v92 = v15;
  v93 = v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v87 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v88 = &v84 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v94 = &v84 - v24;
  v25 = type metadata accessor for DispatchPredicate();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = (&v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(v2 + 24);
  *v29 = v30;
  (*(v26 + 104))(v29, *MEMORY[0x277D85200], v25);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  (*(v26 + 8))(v29, v25);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_9;
  }

  DataLinkRecorder._queueStopSession()();
  v32 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v34 = *(v33 + 16);
  if (v34)
  {
    v85 = v2;
    v86 = v3;
    v35 = v33 + 16 + 16 * v34;
    v36 = *v35;
    v37 = *(v35 + 8);

    v95[0] = v36;
    v95[1] = v37;
    MEMORY[0x20F2E6D80](47, 0xE100000000000000);
    v38 = UUID.uuidString.getter();
    MEMORY[0x20F2E6D80](v38);

    v40 = v92;
    v39 = v93;
    v41 = *(v93 + 56);
    v41(v14, 1, 1, v92);
    (*(v7 + 104))(v10, *MEMORY[0x277CC91D8], v6);
    v42 = v94;
    URL.init(filePath:directoryHint:relativeTo:)();
    v43 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v44);
    v46 = v45;
    v95[0] = 0;
    LODWORD(v37) = [v43 createDirectoryAtURL:v45 withIntermediateDirectories:0 attributes:0 error:v95];

    v47 = v95[0];
    if (v37)
    {
      v48 = *(v39 + 16);
      v48(v14, v42, v40);
      v41(v14, 0, 1, v40);
      v49 = OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentSessionFolderPath;
      v50 = v85;
      swift_beginAccess();
      v51 = v47;
      outlined assign with take of URL?(v14, v50 + v49);
      swift_endAccess();
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, static WOLog.dataLink);
      v53 = v88;
      v48(v88, v42, v40);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = v40;
        v57 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v95[0] = v91;
        *v57 = 136315138;
        v58 = v87;
        URL.standardizedFileURL.getter();
        lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        v62 = *(v39 + 8);
        v62(v58, v56);
        v62(v53, v56);
        v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v61, v95);

        *(v57 + 4) = v63;
        _os_log_impl(&dword_20AEA4000, v54, v55, "Started new recording session at %s", v57, 0xCu);
        v64 = v91;
        __swift_destroy_boxed_opaque_existential_0(v91);
        MEMORY[0x20F2E9420](v64, -1, -1);
        MEMORY[0x20F2E9420](v57, -1, -1);

        v62(v94, v56);
      }

      else
      {

        v83 = *(v39 + 8);
        v83(v53, v40);
        v83(v42, v40);
      }
    }

    else
    {
      v69 = v95[0];
      v70 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v71 = type metadata accessor for Logger();
      __swift_project_value_buffer(v71, static WOLog.dataLink);
      v73 = v89;
      v72 = v90;
      v74 = v86;
      (*(v90 + 16))(v89, v91, v86);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v95[0] = v78;
        *v77 = 136315138;
        lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v80;
        (*(v72 + 8))(v73, v74);
        v82 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, v95);

        *(v77 + 4) = v82;
        _os_log_impl(&dword_20AEA4000, v75, v76, "Unable to create directory for recording session %s", v77, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x20F2E9420](v78, -1, -1);
        MEMORY[0x20F2E9420](v77, -1, -1);
      }

      else
      {

        (*(v72 + 8))(v73, v74);
      }

      (*(v93 + 8))(v94, v92);
    }

    return;
  }

  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_20;
  }

LABEL_9:
  v65 = type metadata accessor for Logger();
  __swift_project_value_buffer(v65, static WOLog.dataLink);
  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_20AEA4000, v66, v67, "Could not find doc directory path", v68, 2u);
    MEMORY[0x20F2E9420](v68, -1, -1);
  }
}

uint64_t DataLinkRecorder._queueStopSession()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v46 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v52 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v54 = &v46 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v55 = &v46 - v18;
  v19 = type metadata accessor for DispatchPredicate();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = (&v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v1[3];
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  v26 = _dispatchPreconditionTest(_:)();
  (*(v20 + 8))(v23, v19);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  v26 = OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentSessionFolderPath;
  swift_beginAccess();
  outlined init with copy of URL?(v1 + v26, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Date?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v23 = v1;
  v19 = v55;
  (*(v10 + 32))(v55, v8, v9);
  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static WOLog.dataLink);
  v29 = v54;
  (*(v10 + 16))(v54, v19, v9);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v48 = v32;
    v51 = swift_slowAlloc();
    v56[0] = v51;
    *v32 = 136315138;
    v50 = v30;
    v33 = v52;
    v49 = v31;
    URL.standardizedFileURL.getter();
    lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v36 = v23;
    v37 = v29;
    v38 = *(v10 + 8);
    v38(v33, v9);
    v39 = v37;
    v23 = v36;
    v38(v39, v9);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v35, v56);
    v19 = v55;

    v41 = v48;
    *(v48 + 1) = v40;
    v42 = v50;
    _os_log_impl(&dword_20AEA4000, v50, v49, "Ending recording session at %s", v41, 0xCu);
    v43 = v51;
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x20F2E9420](v43, -1, -1);
    MEMORY[0x20F2E9420](v41, -1, -1);
  }

  else
  {

    v44 = v29;
    v38 = *(v10 + 8);
    v38(v44, v9);
  }

  DataLinkRecorder._queueFlushMessages(force:)(1);
  v38(v19, v9);
  v45 = v53;
  (*(v10 + 56))(v53, 1, 1, v9);
  swift_beginAccess();
  outlined assign with take of URL?(v45, v23 + v26);
  return swift_endAccess();
}

void DataLinkRecorder._queueRecordMessage(_:recordTime:)(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v63 = type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v4);
  v59 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Google_Protobuf_Timestamp();
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry(0);
  v62 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v61 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v51 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = (&v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v2 + 24);
  *v27 = v28;
  (*(v24 + 104))(v27, *MEMORY[0x277D85200], v23);
  v29 = v28;
  LOBYTE(v28) = _dispatchPreconditionTest(_:)();
  (*(v24 + 8))(v27, v23);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v30 = OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentSessionFolderPath;
  swift_beginAccess();
  outlined init with copy of URL?(v2 + v30, v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v31 = type metadata accessor for URL();
  v32 = (*(*(v31 - 8) + 48))(v22, 1, v31);
  outlined destroy of Date?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v32 == 1)
  {
    if (one-time initialization token for dataLink == -1)
    {
LABEL_4:
      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static WOLog.dataLink);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_20AEA4000, v34, v35, "Unable to record, currentSessionFolderPath is nil", v36, 2u);
        MEMORY[0x20F2E9420](v36, -1, -1);
      }

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_4;
  }

  v52 = v2;
  DataLinkRecorder._queueFlushMessages(force:)(0);
  UnknownStorage.init()();
  v37 = *(v12 + 20);
  v51 = a1;
  v60 = *(v60 + 56);
  (v60)(&v18[v37], 1, 1, v63);
  v38 = *(v12 + 24);
  v39 = v55;
  v40 = *(v55 + 56);
  v40(&v18[v38], 1, 1, v9);
  (*(v56 + 16))(v54, v58, v57);
  v41 = v53;
  Google_Protobuf_Timestamp.init(date:)();
  outlined destroy of Date?(&v18[v38], &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMd, &_s21InternalSwiftProtobuf07Google_C10_TimestampVSgMR);
  (*(v39 + 32))(&v18[v38], v41, v9);
  v40(&v18[v38], 0, 1, v9);
  v42 = v59;
  outlined init with copy of Apple_Workout_Core_DataLinkMessageBatch(v51, v59, type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  outlined destroy of Date?(&v18[v37], &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageVSgMR);
  outlined init with take of Apple_Workout_Core_DataLinkMessage(v42, &v18[v37], type metadata accessor for Apple_Workout_Core_DataLinkMessage);
  v43 = v52;
  (v60)(&v18[v37], 0, 1, v63);
  v44 = v61;
  outlined init with copy of Apple_Workout_Core_DataLinkMessageBatch(v18, v61, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
  v45 = OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentBatch;
  swift_beginAccess();
  v46 = *(v43 + v45);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v43 + v45) = v46;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v46[2] + 1, 1, v46);
    *(v43 + v45) = v46;
  }

  v48 = v62;
  v50 = v46[2];
  v49 = v46[3];
  if (v50 >= v49 >> 1)
  {
    v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v46);
  }

  v46[2] = v50 + 1;
  outlined init with take of Apple_Workout_Core_DataLinkMessage(v44, v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
  *(v43 + v45) = v46;
  swift_endAccess();
  outlined destroy of Apple_Workout_Core_DataLinkMessageBatch(v18, type metadata accessor for Apple_Workout_Core_DataLinkMessageEntry);
}

uint64_t DataLinkRecorder._queueFlushMessages(force:)(int a1)
{
  v2 = v1;
  LODWORD(v108) = a1;
  v117 = *MEMORY[0x277D85DE8];
  v110 = type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0);
  v4 = MEMORY[0x28223BE20](v110, v3);
  v104 = (&v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v6);
  v107 = &v98 - v7;
  v106 = type metadata accessor for URL.DirectoryHint();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v98 - v13;
  v112 = type metadata accessor for URL();
  v115 = *(v112 - 8);
  v16 = MEMORY[0x28223BE20](v112, v15);
  v103 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v109 = &v98 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v114 = &v98 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v98 - v25;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v111 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v113 = &v98 - v33;
  v34 = type metadata accessor for DispatchPredicate();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = (&v98 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *(v2 + 24);
  *v38 = v39;
  (*(v35 + 104))(v38, *MEMORY[0x277D85200], v34);
  v40 = v39;
  v41 = _dispatchPreconditionTest(_:)();
  v43 = *(v35 + 8);
  v42 = (v35 + 8);
  v43(v38, v34);
  if ((v41 & 1) == 0)
  {
    __break(1u);
    goto LABEL_35;
  }

  DataLinkRecorder.currentBatchStartDate.getter(v26);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    return outlined destroy of Date?(v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  v45 = v113;
  (*(v28 + 32))(v113, v26, v27);
  v46 = OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentSessionFolderPath;
  swift_beginAccess();
  outlined init with copy of URL?(v2 + v46, v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v47 = v115;
  v26 = v112;
  if ((*(v115 + 48))(v14, 1, v112) == 1)
  {
    (*(v28 + 8))(v45, v27);
    return outlined destroy of Date?(v14, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  (*(v47 + 32))(v114, v14, v26);
  v48 = v111;
  Date.init()();
  if ((v108 & 1) == 0)
  {
    Date.timeIntervalSince(_:)();
    if (v49 < 300.0)
    {
      v50 = *(v28 + 8);
      v50(v48, v27);
      (*(v47 + 8))(v114, v26);
      return (v50)(v45, v27);
    }
  }

  v101 = v28;
  v102 = v27;
  v116[3] = 47;
  v116[4] = 0xE100000000000000;
  v38 = OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentJournalIndex;
  v116[0] = *(v2 + OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentJournalIndex);
  v51 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v51);

  MEMORY[0x20F2E6D80](0x6D7A6C2E726C642ELL, 0xE900000000000061);
  v52 = v105;
  v53 = v106;
  (*(v105 + 104))(v10, *MEMORY[0x277CC91D8], v106);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(path:directoryHint:)();
  (*(v52 + 8))(v10, v53);

  v10 = OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentBatch;
  swift_beginAccess();
  v108 = v2;
  v54 = v107;
  outlined init with copy of Apple_Workout_Core_DataLinkMessageBatch(&v10[v2], v107, type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch);
  lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch, type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessageBatch);
  v70 = Message.serializedData(partial:)();
  v72 = v71;
  outlined destroy of Apple_Workout_Core_DataLinkMessageBatch(v54, type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v116[0] = 0;
  v74 = [(objc_class *)isa compressedDataUsingAlgorithm:2 error:v116];

  v75 = v116[0];
  if (!v74)
  {
    v79 = v75;
    v41 = _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v70, v72);
    v42 = *(v47 + 8);
    v42(v109, v26);
    if (one-time initialization token for dataLink == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_36;
  }

  v107 = v72;
  v76 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v77;

  Data.write(to:options:)();
  v105 = v78;
  v106 = v76;
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v80 = type metadata accessor for Logger();
  __swift_project_value_buffer(v80, static WOLog.dataLink);
  v81 = v103;
  v82 = v109;
  (*(v47 + 16))(v103, v109, v26);
  v83 = v106;
  v84 = v105;
  outlined copy of Data._Representation(v106, v105);
  v85 = Logger.logObject.getter();
  v100 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v85, v100))
  {
    v99 = v85;
    v86 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v116[0] = v98;
    *v86 = 134218242;
    v87 = v84 >> 62;
    if ((v84 >> 62) > 1)
    {
      if (v87 != 2)
      {
        v88 = 0;
        goto LABEL_33;
      }

      v90 = *(v106 + 16);
      v89 = *(v106 + 24);
      v65 = __OFSUB__(v89, v90);
      v88 = v89 - v90;
      if (!v65)
      {
        goto LABEL_33;
      }

      __break(1u);
    }

    else if (!v87)
    {
      v88 = BYTE6(v84);
LABEL_33:
      *(v86 + 4) = v88;
      v91 = v106;
      outlined consume of Data._Representation(v106, v84);
      *(v86 + 12) = 2080;
      lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v92 = dispatch thunk of CustomStringConvertible.description.getter();
      v94 = v93;
      v42 = *(v47 + 8);
      v42(v81, v112);
      v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, v116);
      v26 = v112;

      *(v86 + 14) = v95;
      v96 = v99;
      _os_log_impl(&dword_20AEA4000, v99, v100, "Persisted recording %ld bytes to %s", v86, 0x16u);
      v97 = v98;
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x20F2E9420](v97, -1, -1);
      MEMORY[0x20F2E9420](v86, -1, -1);
      outlined consume of Data._Representation(v70, v107);

      outlined consume of Data._Representation(v91, v105);
      v42(v109, v26);
      goto LABEL_14;
    }

    LODWORD(v88) = HIDWORD(v106) - v106;
    if (__OFSUB__(HIDWORD(v106), v106))
    {
      __break(1u);
    }

    v88 = v88;
    goto LABEL_33;
  }

  outlined consume of Data._Representation(v70, v107);

  outlined consume of Data._Representation(v83, v84);
  outlined consume of Data._Representation(v83, v84);
  v42 = *(v47 + 8);
  v42(v81, v26);
  v42(v82, v26);
LABEL_14:
  while (1)
  {
    v41 = v108;
    v64 = *(v38 + v108);
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (!v65)
    {
      break;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
LABEL_11:
    v55 = type metadata accessor for Logger();
    __swift_project_value_buffer(v55, static WOLog.dataLink);
    v56 = v41;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412290;
      v61 = v41;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v62;
      *v60 = v62;
      _os_log_impl(&dword_20AEA4000, v57, v58, "Could not persist message for recording: %@", v59, 0xCu);
      outlined destroy of Date?(v60, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v60, -1, -1);
      v63 = v59;
      v26 = v112;
      MEMORY[0x20F2E9420](v63, -1, -1);
    }

    else
    {
    }
  }

  *(v38 + v108) = v66;
  v67 = v104;
  *v104 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v68 = *(v101 + 8);
  v69 = v102;
  v68(v111, v102);
  v42(v114, v26);
  v68(v113, v69);
  swift_beginAccess();
  outlined assign with take of Apple_Workout_Core_DataLinkMessageBatch(v67, &v10[v41]);
  return swift_endAccess();
}

uint64_t DataLinkRecorder.__deallocating_deinit()
{
  outlined destroy of Date?(v0 + OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentSessionFolderPath, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of Apple_Workout_Core_DataLinkMessageBatch(v0 + OBJC_IVAR____TtC11WorkoutCore16DataLinkRecorder_currentBatch, type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataLinkRecorder(uint64_t a1)
{
  result = type metadata singleton initialization cache for DataLinkRecorder;
  if (!type metadata singleton initialization cache for DataLinkRecorder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DataLinkRecorder(uint64_t a1)
{
  type metadata accessor for URL?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for URL?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for URL?)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for URL?);
    }
  }
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined assign with take of Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessageBatch(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_DataLinkMessageBatch(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in DataLinkRecorder.recordMessage(_:)()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_DataLinkMessage(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  DataLinkRecorder._queueRecordMessage(_:recordTime:)(v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t partial apply for closure #1 in DataLinkRecorder.startSession(uuid:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return closure #1 in DataLinkRecorder.startSession(uuid:)(v2, v3);
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_DataLinkMessageBatch and conformance Apple_Workout_Core_DataLinkMessageBatch(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of Date?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

WorkoutCore::WOAnalyticsEvent::SharingEngagementType_optional __swiftcall WOAnalyticsEvent.SharingEngagementType.init(rawValue:)(NSString rawValue)
{
  v3 = v1;
  type metadata accessor for NSString();
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
          v18 = NSString.init(stringLiteral:)();
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            v8 = 4;
          }

          else
          {
            v8 = 5;
          }
        }
      }
    }
  }

  *v3 = v8;
  return result;
}

unint64_t type metadata accessor for NSString()
{
  result = lazy cache variable for type metadata for NSString;
  if (!lazy cache variable for type metadata for NSString)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSString);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WOAnalyticsEvent.SharingEngagementType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WOAnalyticsEvent.SharingEngagementType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance WOAnalyticsEvent.SharingEngagementType@<X0>(uint64_t *a1@<X8>)
{
  result = WOAnalyticsEvent.SharingEngagementType.rawValue.getter();
  *a1 = result;
  return result;
}

void specialized static WOAnalyticsEvent.share(_:engagementType:)(char *a1, unsigned __int8 *a2)
{
  type metadata accessor for GoalWorkoutConfiguration(0);
  if (swift_dynamicCastClass())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;
    static Published.subscript.getter(v41);

    v4 = v41[0];
    [v41[0] goalTypeIdentifier];
  }

  type metadata accessor for NSString();
  v5 = NSString.init(stringLiteral:)();
  v6 = OBJC_IVAR___WOCoreWorkoutConfiguration_activityType;
  swift_beginAccess();
  [*&a1[v6] effectiveTypeIdentifier];
  v7 = _HKWorkoutActivityNameForActivityType();
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12._object = 0x800000020B456540;
    v12._countAndFlagsBits = 0xD000000000000015;
    if (String.hasPrefix(_:)(v12))
    {
      v13 = String.count.getter();
      v14 = specialized Collection.dropFirst(_:)(v13, v9, v11);
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v9 = MEMORY[0x20F2E6D00](v14, v16, v18, v20);
      v11 = v21;
    }
  }

  else
  {
    v11 = 0x800000020B456520;
    v9 = 0xD000000000000010;
  }

  v22 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v23 = MEMORY[0x20F2E6C00](v9, v11);

  v24 = [v22 initWithString_];

  v25 = OBJC_IVAR___WOCoreWorkoutConfiguration_type;
  swift_beginAccess();
  v26 = a1[v25];
  v27 = 0xE400000000000000;
  v28 = 1818324839;
  v29 = 0xE400000000000000;
  v30 = 1701011826;
  v31 = 0xE500000000000000;
  v32 = 0x7265636170;
  if (v26 != 3)
  {
    v32 = 0x6F707369746C756DLL;
    v31 = 0xEA00000000007472;
  }

  if (v26 != 2)
  {
    v30 = v32;
    v29 = v31;
  }

  if (a1[v25])
  {
    v28 = 0x6C61767265746E69;
    v27 = 0xE800000000000000;
  }

  if (a1[v25] <= 1u)
  {
    v33 = v28;
  }

  else
  {
    v33 = v30;
  }

  if (v26 <= 1)
  {
    v34 = v27;
  }

  else
  {
    v34 = v29;
  }

  v35 = objc_allocWithZone(MEMORY[0x277CCACA8]);
  v36 = MEMORY[0x20F2E6C00](v33, v34);

  v37 = [v35 initWithString_];

  v38 = FIUIHKWorkoutGoalTypeDescription();
  if (v38)
  {
    v39 = v38;
    v40 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

    static WKAnalyticsEvent.share(engagement:activityType:configurationType:goalType:)();
  }

  else
  {
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type WOAnalyticsEvent.SharingEngagementType and conformance WOAnalyticsEvent.SharingEngagementType()
{
  result = lazy protocol witness table cache variable for type WOAnalyticsEvent.SharingEngagementType and conformance WOAnalyticsEvent.SharingEngagementType;
  if (!lazy protocol witness table cache variable for type WOAnalyticsEvent.SharingEngagementType and conformance WOAnalyticsEvent.SharingEngagementType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WOAnalyticsEvent.SharingEngagementType and conformance WOAnalyticsEvent.SharingEngagementType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WOAnalyticsEvent(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for WOAnalyticsEvent(_WORD *result, int a2, int a3)
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