uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t InstrumentationManager.deinit()
{
  v1 = OBJC_IVAR____TtC10SiriStates22InstrumentationManager_currentSessionIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t InstrumentationManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10SiriStates22InstrumentationManager_currentSessionIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t specialized InstrumentationManager.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v19 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v9);
  v10 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v10 - 8);
  *(v2 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_stream) = a1;
  v11 = type metadata accessor for OS_dispatch_queue();
  v17[1] = "sruifUserDefaults";
  v17[2] = v11;
  swift_unknownObjectRetain();
  static DispatchQoS.utility.getter();
  v22 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v18);
  *(v2 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_queue) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = v19;
  UUID.init()();
  (*(v20 + 32))(v2 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_currentSessionIdentifier, v12, v21);
  v13 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v14 = MEMORY[0x26D631880](0xD000000000000019, 0x80000002691AC910);
  v15 = [v13 initWithSuiteName_];

  *(v2 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_sruifUserDefaults) = v15;
  return v2;
}

uint64_t type metadata accessor for InstrumentationManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for InstrumentationManager;
  if (!type metadata singleton initialization cache for InstrumentationManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for InstrumentationManager(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2691A7818()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized InstrumentationManager.mapStateToStateEnum(state:)(uint64_t a1)
{
  swift_getObjectType();
  v1 = *State.abstract.unsafeMutableAddressor();
  v2 = static NSObject.== infix(_:_:)();

  if (v2)
  {
    return 0;
  }

  v4 = *State.analyzing.unsafeMutableAddressor();
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    return 3;
  }

  v6 = *State.available.unsafeMutableAddressor();
  v7 = static NSObject.== infix(_:_:)();

  if (v7)
  {
    return 2;
  }

  v8 = *State.disabled.unsafeMutableAddressor();
  v9 = static NSObject.== infix(_:_:)();

  if (v9)
  {
    return 1;
  }

  v10 = *State.postResponse.unsafeMutableAddressor();
  v11 = static NSObject.== infix(_:_:)();

  if (v11)
  {
    return 8;
  }

  v12 = *State.processing.unsafeMutableAddressor();
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {
    return 5;
  }

  v14 = *State.responding.unsafeMutableAddressor();
  v15 = static NSObject.== infix(_:_:)();

  if (v15)
  {
    return 6;
  }

  v16 = *State.resting.unsafeMutableAddressor();
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {
    return 7;
  }

  v18 = *State.understanding.unsafeMutableAddressor();
  v19 = static NSObject.== infix(_:_:)();

  if (v19)
  {
    return 4;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id one-time initialization function for processing()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x69737365636F7250, 0xEA0000000000676ELL, v0, implicit closure #1 in variable initialization expression of static State.processing, 0);
  static State.processing = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.processing(uint64_t a1)
{
  v1 = 0;
  if (a1 > 8)
  {
    if (a1 == 9)
    {
      v2 = State.responding.unsafeMutableAddressor();
      goto LABEL_10;
    }

    if (a1 == 13)
    {
      v2 = State.available.unsafeMutableAddressor();
      goto LABEL_10;
    }
  }

  else
  {
    if (!a1)
    {
      v2 = State.analyzing.unsafeMutableAddressor();
      goto LABEL_10;
    }

    if (a1 == 7)
    {
      v2 = State.postResponse.unsafeMutableAddressor();
LABEL_10:
      v1 = *v2;
      v3 = *v2;
    }
  }

  return v1;
}

uint64_t *State.processing.unsafeMutableAddressor()
{
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  return &static State.processing;
}

id static State.processing.getter()
{
  if (one-time initialization token for processing != -1)
  {
    swift_once();
  }

  v1 = static State.processing;

  return v1;
}

uint64_t *CallState.allStates.unsafeMutableAddressor()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  return &static CallState.allStates;
}

uint64_t static CallState.allStates.getter()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates9CallStateC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      a1 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    if (MEMORY[0x26D631B00](a1))
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SiriStates9CallStateCGMd, &_ss11_SetStorageCy10SiriStates9CallStateCGMR);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_10:
      if (v1 < 0)
      {
        v6 = v1;
      }

      else
      {
        v6 = v4;
      }

      v5 = MEMORY[0x26D631B00](v6);
      if (!v5)
      {
        return;
      }

      goto LABEL_14;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_14:
  v7 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v37 = v1;
    while (1)
    {
      v9 = MEMORY[0x26D631AD0](v8, v1);
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        break;
      }

      v11 = v9;
      v12 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v7 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        type metadata accessor for CallState();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = static NSObject.== infix(_:_:)();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v7 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_23;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v8 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_23:
        *(v7 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v11;
        v21 = *(v3 + 16);
        v10 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v10)
        {
          goto LABEL_37;
        }

        *(v3 + 16) = v22;
        if (v8 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = NSObject._rawHashValue(seed:)(v24);
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v7 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        type metadata accessor for CallState();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = static NSObject.== infix(_:_:)();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v7 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:
        *(v7 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v10 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v10)
        {
          goto LABEL_39;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Event@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized Event.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t specialized Event.init(rawValue:)(unint64_t result)
{
  if (result > 0x10)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Event] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Event] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Event] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SiriStates5EventOGMd, &_sSay10SiriStates5EventOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Event] and conformance [A]);
  }

  return result;
}

uint64_t one-time initialization function for lock()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  result = swift_allocObject();
  *(result + 16) = 0;
  static Clientele.lock = result;
  return result;
}

uint64_t static Clientele.add<A>(_:)(uint64_t a1)
{
  if (one-time initialization token for lock != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = static Clientele.lock;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(&v5);
  os_unfair_lock_unlock(v1 + 4);
  return v5;
}

uint64_t partial apply for closure #1 in static Clientele.add<A>(_:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (one-time initialization token for pointers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  specialized Set._Variant.insert(_:)(&v5, v3);
  result = swift_endAccess();
  *a1 = v3;
  return result;
}

uint64_t static Clientele.contains<A>(_:)(uint64_t a1)
{
  if (one-time initialization token for lock != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = static Clientele.lock;
  v2 = MEMORY[0x28223BE20](a1);
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v2;
  v8[10] = type metadata accessor for Optional();
  v8[11] = partial apply for closure #1 in static Clientele.contains<A>(_:);
  v8[12] = v8;
  v5 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v5));
  partial apply for closure #1 in OSAllocatedUnfairLock<A>.withLockUnchecked<A>(_:)();
  os_unfair_lock_unlock((v1 + v5));
  return v8[7];
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x26D631B70](*(a2 + 40), a1);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void static Clientele.remove<A>(_:)(uint64_t a1)
{
  if (one-time initialization token for lock != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = static Clientele.lock;
  v2 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v2);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x26D631B70](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySvGMd, &_ss11_SetStorageCySvGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = MEMORY[0x26D631B70](*(v5 + 40), v17);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x26D631B70](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySvGMd, &_ss11_SetStorageCySvGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySvGMd, &_ss11_SetStorageCySvGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = MEMORY[0x26D631B70](*(v5 + 40), v16);
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x26D631B70](*(*v1 + 40), a1);
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x26D631B70](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void partial apply for closure #1 in static Clientele.contains<A>(_:)(void *a1@<X8>)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    if (one-time initialization token for pointers != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (specialized Set.contains(_:)(v3, static Clientele.pointers))
    {
      v4 = v3;
    }

    else
    {
      v3 = 0;
    }
  }

  *a1 = v3;
}

uint64_t partial apply for closure #1 in static Clientele.remove<A>(_:)()
{
  v1 = *(v0 + 32);
  if (one-time initialization token for pointers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v1);
  return swift_endAccess();
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}