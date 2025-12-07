uint64_t getEnumTagSinglePayload for MultisportTransitionsStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for MultisportTransitionsStore(_WORD *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type MultisportTransitions and conformance MultisportTransitions(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MultisportTransitions(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *ActivityPickerListStore.init(domainAccessor:)(uint64_t a1)
{
  v13 = a1;
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v1[3] = 0xD00000000000001CLL;
  v1[4] = 0x800000020B460780;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.userInitiated.getter();
  v14 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type ActivityTypeListItem and conformance ActivityTypeListItem(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v12);
  v1[5] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[2] = v13;
  return v1;
}

uint64_t ActivityPickerListStore.fetchActivityTypesData()()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = MEMORY[0x20F2E6C00](v1, v3);
  v5 = [v2 dataForPerGizmoDomainAndKey_];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.activityPicker);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v13);
      _os_log_impl(&dword_20AEA4000, v8, v9, "workoutDomainAccessor data fetching failed for activityPickerListKey: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    return 0;
  }

  return v6;
}

void closure #1 in ActivityPickerListStore.fetchVisibleActivities()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = ActivityPickerListStore.fetchActivityTypesData()();
  if (v6 >> 60 == 15)
  {
    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.activityPicker);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v27 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a1 + 24), *(a1 + 32), &v27);
      _os_log_impl(&dword_20AEA4000, v8, v9, "workoutDomainAccessor data fetching failed for activityPickerListKey: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x20F2E9420](v11, -1, -1);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }
  }

  else
  {
    v12 = v5;
    v13 = v6;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A](&lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A], &lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem, &protocol conformance descriptor for ActivityTypeListItem, MEMORY[0x277D83978]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    if (!v2)
    {
      v24 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v27);

      v23 = specialized _copyCollectionToContiguousArray<A>(_:)(v24);

      outlined consume of Data?(v12, v13);

      goto LABEL_14;
    }

    if (one-time initialization token for activityPicker != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static WOLog.activityPicker);
    v15 = v2;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v26 = a2;
      v18 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v18 = 136315138;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v27);

      *(v18 + 4) = v21;
      _os_log_impl(&dword_20AEA4000, v16, v17, "ActivityPickerListStore's fetchVisibleActivities failed: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x20F2E9420](v25, -1, -1);
      v22 = v18;
      a2 = v26;
      MEMORY[0x20F2E9420](v22, -1, -1);
    }

    outlined consume of Data?(v12, v13);
  }

  v23 = MEMORY[0x277D84F90];
LABEL_14:
  *a2 = v23;
}

double ActivityPickerListStore.addActivityType(_:date:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v36 - v8;
  v10 = FIUIWorkoutActivityType.activityTypeForRegistry()();
  outlined init with copy of Date?(a2, v9);
  v11 = objc_allocWithZone(type metadata accessor for ActivityTypeListItem(0));
  v12 = specialized ActivityTypeListItem.init(activityType:orderDate:)(v10, v9);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
  OS_dispatch_queue.sync<A>(execute:)();
  v39 = v3;
  v13 = v43;
  v43 = MEMORY[0x277D84F90];
  if (v13 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v37 = v4;
    v38 = v10;
    v14 = 0;
    v42 = (v13 & 0xC000000000000001);
    v4 = (v13 & 0xFFFFFFFFFFFFFF8);
    v10 = i;
    while (1)
    {
      if (v42)
      {
        v15 = MEMORY[0x20F2E7A20](v14, v13);
      }

      else
      {
        if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v15 = *(v13 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (static NSObject.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v10 = i;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v14;
      if (v17 == v10)
      {
        v18 = v43;
        v4 = v37;
        v10 = v38;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B425990;
  *(inited + 32) = v12;
  v43 = v18;
  v20 = v12;
  specialized Array.append<A>(contentsOf:)(inited);
  v21 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v43);

  specialized _copyCollectionToContiguousArray<A>(_:)(v21);

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();

  v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v22);

  v24 = specialized _copyCollectionToContiguousArray<A>(_:)(v23);

  v43 = v24;
  lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A](&lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A], &lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem, &protocol conformance descriptor for ActivityTypeListItem, MEMORY[0x277D83948]);
  v25 = v39;
  v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v25)
  {
  }

  else
  {
    v28 = v26;
    v29 = v27;

    v42 = v20;
    v30 = v4[2];
    v31 = MEMORY[0x20F2E6C00](v4[3], v4[4]);
    v32 = v10;
    v33 = v31;
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v30 writeDataPerGizmoDomainAndKey:v33 data:isa];

    outlined consume of Data._Representation(v28, v29);
  }

  return result;
}

BOOL ActivityPickerListStore.removeActivityType(_:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
  v38 = v1;
  v40 = v8;
  OS_dispatch_queue.sync<A>(execute:)();
  v41 = v2;
  v9 = v44;
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v43 = type metadata accessor for ActivityTypeListItem(0);
  v11 = objc_allocWithZone(v43);
  v12 = a1;
  v13 = specialized ActivityTypeListItem.init(activityType:orderDate:)(v12, v7);

  v44 = MEMORY[0x277D84F90];
  v14 = v9 >> 62;
  if (v9 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v39 = v14;
    v16 = 0;
    v14 = v9 & 0xC000000000000001;
    v17 = (v9 & 0xFFFFFFFFFFFFFF8);
    v42 = (v9 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v14)
      {
        v18 = MEMORY[0x20F2E7A20](v16, v9);
      }

      else
      {
        if (v16 >= v17[2])
        {
          goto LABEL_15;
        }

        v18 = *(v9 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (static NSObject.== infix(_:_:)())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        v17 = v42;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v16;
      if (v20 == i)
      {
        v21 = v44;
        v14 = v39;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_18:
  v22 = v9;
  v23 = v41;
  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    v24 = __CocoaSet.count.getter();
    v25 = v22 & 0xFFFFFFFFFFFFFF8;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v24 = *(v21 + 16);
    v25 = v22 & 0xFFFFFFFFFFFFFF8;
    if (!v14)
    {
LABEL_21:
      v26 = *(v25 + 16);
      goto LABEL_24;
    }
  }

  v26 = __CocoaSet.count.getter();
LABEL_24:

  if (v24 == v26)
  {
    goto LABEL_29;
  }

  v43 = v13;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();

  v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11WorkoutCore20ActivityTypeListItemC_SayAFGTt0g5Tf4g_n(v27);

  v29 = specialized _copyCollectionToContiguousArray<A>(_:)(v28);

  v44 = v29;
  lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A](&lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A], &lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem, &protocol conformance descriptor for ActivityTypeListItem, MEMORY[0x277D83948]);
  v30 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v23)
  {
    v32 = v30;
    v33 = v31;

    v34 = v38[3];
    v42 = v38[2];
    v35 = MEMORY[0x20F2E6C00](v34, v38[4]);
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v42 writeDataPerGizmoDomainAndKey:v35 data:isa];

    outlined consume of Data._Representation(v32, v33);

    v13 = v43;
LABEL_29:

    goto LABEL_30;
  }

LABEL_30:

  return v24 != v26;
}

uint64_t ActivityPickerListStore.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    lazy protocol witness table accessor for type ActivityTypeListItem and conformance ActivityTypeListItem(a2, type metadata accessor for ActivityTypeListItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ActivityTypeListItem and conformance ActivityTypeListItem(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void closure #1 in ActivityPickerListStore.fetchVisibleActivities()partial apply(void *a1@<X8>)
{
  partial apply for closure #1 in ActivityPickerListStore.fetchVisibleActivities()(a1);
}

{
  _s11WorkoutCore23ActivityPickerListStoreC22fetchVisibleActivitiesSayAA0c4TypeE4ItemCGyFAGyXEfU_TA_0(a1);
}

HKQuantity_optional __swiftcall FIUIWorkoutActivityType.estimatedCalories(healthStore:duration:distance:)(HKHealthStore healthStore, Swift::Double duration, HKQuantity_optional distance)
{
  isa = distance.value.super.isa;
  v38[2] = *MEMORY[0x277D85DE8];
  v6 = objc_opt_self();
  v8 = [v6 isAvailable];
  v9 = 0;
  if (v8)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CC1D98]) init];
    [v10 setWorkoutType_];
    if ([v3 requiresLocationDisambiguation])
    {
      if ([v3 isIndoor])
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      [v10 setLocationType_];
    }

    v12 = HKHealthStore.cmCalorieUserInfo.getter();
    if (isa)
    {
      v14 = objc_opt_self();
      v15 = isa;
      v16 = [v14 meterUnit];
      [(objc_class *)v15 doubleValueForUnit:v16];
      v18 = v17;

      v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    }

    else
    {
      v13 = 0;
    }

    v38[0] = 0;
    v19 = [v6 lookupCalorieDataForWorkoutConfiguration:v10 duration:v13 distance:v12 userInfo:v38 errorPtr:duration];

    v20 = v38[0];
    if (v19)
    {
      v21 = objc_opt_self();
      v22 = v20;
      v23 = [v21 kilocalorieUnit];
      v24 = [v19 totalCalories];
      [v24 doubleValue];
      v26 = v25;

      v27 = [objc_opt_self() quantityWithUnit:v23 doubleValue:v26];
      v9 = v27;
    }

    else
    {
      v28 = v38[0];
      v29 = _convertNSErrorToError(_:)();

      swift_willThrow();
      if (one-time initialization token for core != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static WOLog.core);
      v31 = v29;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138412290;
        v36 = v29;
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v37;
        *v35 = v37;
        _os_log_impl(&dword_20AEA4000, v32, v33, "Failed to lookup estimated calories due to: %@", v34, 0xCu);
        outlined destroy of NSObject?(v35);
        MEMORY[0x20F2E9420](v35, -1, -1);
        MEMORY[0x20F2E9420](v34, -1, -1);
      }

      else
      {
      }

      v9 = 0;
    }
  }

  result.value.super.isa = v9;
  result.is_nil = v7;
  return result;
}

uint64_t FIUIWorkoutActivityType.cmWorkoutType.getter()
{
  v1 = [v0 effectiveTypeIdentifier];
  if ((*MEMORY[0x277CCE1E0] & 0x8000000000000000) == 0 && v1 == *MEMORY[0x277CCE1E0])
  {
    return 0;
  }

  result = [v0 effectiveTypeIdentifier];
  switch(result)
  {
    case 1:
      result = 42;
      break;
    case 3:
      result = 41;
      break;
    case 4:
      result = 52;
      break;
    case 5:
      result = 60;
      break;
    case 6:
      result = 50;
      break;
    case 8:
      result = 64;
      break;
    case 10:
      result = 61;
      break;
    case 13:
      if ([v0 isIndoor])
      {
        result = 5;
      }

      else
      {
        result = 4;
      }

      break;
    case 16:
      result = 9;
      break;
    case 20:
      result = 28;
      break;
    case 21:
      result = 27;
      break;
    case 23:
      result = 57;
      break;
    case 24:
      return result;
    case 25:
      if ([v0 isIndoor])
      {
        result = 48;
      }

      else
      {
        result = 49;
      }

      break;
    case 27:
      result = 45;
      break;
    case 31:
      result = 38;
      break;
    case 34:
      result = 53;
      break;
    case 35:
      if ([v0 isIndoor])
      {
        result = 12;
      }

      else
      {
        result = 35;
      }

      break;
    case 36:
      result = 44;
      break;
    case 37:
      if ([v0 isIndoor])
      {
        result = 18;
      }

      else
      {
        result = 17;
      }

      break;
    case 39:
      if ([v0 isIndoor])
      {
        result = 47;
      }

      else
      {
        result = 46;
      }

      break;
    case 41:
      if ([v0 isIndoor])
      {
        result = 40;
      }

      else
      {
        result = 39;
      }

      break;
    case 42:
      result = 59;
      break;
    case 43:
      result = 56;
      break;
    case 44:
      result = 11;
      break;
    case 46:
      result = 19;
      break;
    case 47:
      result = 62;
      break;
    case 48:
      result = 51;
      break;
    case 49:
      result = 58;
      break;
    case 51:
      result = 55;
      break;
    case 52:
      if ([v0 isIndoor])
      {
        result = 16;
      }

      else
      {
        result = 15;
      }

      break;
    case 57:
      result = 6;
      break;
    case 59:
      result = 30;
      break;
    case 60:
      result = 36;
      break;
    case 61:
      result = 23;
      break;
    case 63:
      result = 22;
      break;
    case 64:
      result = 63;
      break;
    case 65:
      result = 34;
      break;
    case 66:
      result = 32;
      break;
    case 67:
      result = 37;
      break;
    case 70:
      result = 20;
      break;
    case 71:
      result = 21;
      break;
    case 72:
      result = 31;
      break;
    case 74:
      if ([v0 isIndoor])
      {
        result = 66;
      }

      else
      {
        result = 67;
      }

      break;
    case 75:
      result = 43;
      break;
    case 77:
      result = 7;
      break;
    case 79:
      result = 54;
      break;
    case 80:
      result = 29;
      break;
    case 83:
      result = 33;
      break;
    default:
      result = 14;
      break;
  }

  return result;
}

void *DownhillRunsStats.averageHeartRate.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *DownhillRunsStats.maximumSpeed.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *DownhillRunsStats.elevationAscended.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *DownhillRunsStats.elevationDescended.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

uint64_t DownhillRunsStats.__allocating_init(downhillRuns:)(unint64_t a1)
{
  v2 = swift_allocObject();
  DownhillRunsStats.init(downhillRuns:)(a1);
  return v2;
}

void DownhillRunsStats.init(downhillRuns:)(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v1 + 72) = v3;
  v4 = objc_opt_self();
  v5 = [v4 meterUnit];
  v6 = objc_opt_self();
  v7 = [v6 quantityWithUnit:v5 doubleValue:0.0];

  v8 = [v4 meterUnit];
  v9 = [v6 quantityWithUnit:v8 doubleValue:0.0];

  v62 = v4;
  v10 = [v4 meterUnit];
  v61 = v6;
  v11 = [v6 quantityWithUnit:v10 doubleValue:0.0];

  if (v2)
  {
    v41 = __CocoaSet.count.getter();
    v12 = a1;
    v13 = v41;
    v64 = v9;
    if (v41)
    {
      goto LABEL_5;
    }

LABEL_23:

    v39 = 0;
    v25 = 0;
    v18 = 0.0;
    v40 = v6;
    goto LABEL_26;
  }

  v12 = a1;
  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v64 = v9;
  if (!v13)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (v13 < 1)
  {
    __break(1u);
    return;
  }

  v14 = v7;
  v60 = v1;
  v15 = 0;
  v16 = 0;
  v17 = v12 & 0xC000000000000001;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  do
  {
    if (v17)
    {
      v21 = MEMORY[0x20F2E7A20](v16);
    }

    else
    {
      v21 = *(v12 + 8 * v16 + 32);
    }

    v22 = v21;
    v23 = OBJC_IVAR___WODownhillRun_workoutTime;
    swift_beginAccess();
    v24 = *&v22[v23];
    v25 = HKQuantityMax();

    if (*&v22[OBJC_IVAR___WODownhillRun_elevationAscended])
    {
      v26 = [v14 _quantityByAddingQuantity_];

      v14 = v26;
    }

    if (*&v22[OBJC_IVAR___WODownhillRun_elevationDescended])
    {
      v27 = [v64 _quantityByAddingQuantity_];

      v64 = v27;
    }

    v28 = OBJC_IVAR___WODownhillRun_distance;
    swift_beginAccess();
    if (*&v22[v28])
    {
      v29 = [v11 _quantityByAddingQuantity_];

      v11 = v29;
    }

    v30 = OBJC_IVAR___WODownhillRun_averageHeartRate;
    swift_beginAccess();
    v31 = *&v22[v30];
    if (v31)
    {
      v32 = *&v22[v23] / 60.0;
      v33 = v31;
      v34 = [v62 _countPerMinuteUnit];
      [v33 doubleValueForUnit_];
      v36 = v35;

      v37 = v32 * v36;
      v38 = *&v22[v23];

      v19 = v19 + v37;
      v20 = v20 + v38 / 60.0;
    }

    else
    {
    }

    v12 = a1;
    ++v16;
    v18 = v18 + v24;
    v15 = v25;
  }

  while (v13 != v16);

  if (v20 == 0.0)
  {
    v39 = 0;
    v1 = v60;
    v40 = v61;
  }

  else
  {
    v42 = [v62 _countPerMinuteUnit];
    v40 = v61;
    v39 = [v61 quantityWithUnit:v42 doubleValue:v19 / v20];

    v1 = v60;
  }

  v7 = v14;
LABEL_26:
  *(v1 + 16) = v39;
  v43 = MEMORY[0x20F2E6C00](7548781, 0xE300000000000000);
  v44 = [v62 unitFromString_];

  v45 = v11;
  v46 = [v62 meterUnit];
  [v45 doubleValueForUnit_];
  v48 = v47;

  v49 = [v40 quantityWithUnit:v44 doubleValue:v48 / v18];
  *(v1 + 24) = v49;
  *(v1 + 32) = v25;
  *(v1 + 40) = v45;
  *(v1 + 48) = v18;
  v50 = v25;
  v51 = [v62 meterUnit];
  [v7 doubleValueForUnit_];
  v53 = v52;

  if (v53 == 0.0)
  {
    v54 = 0;
  }

  else
  {
    v55 = v7;
    v54 = v7;
  }

  v56 = v64;
  *(v1 + 56) = v54;
  v57 = [v62 meterUnit];
  [v64 doubleValueForUnit_];
  v59 = v58;

  if (v59 == 0.0)
  {

    v56 = 0;
  }

  *(v1 + 64) = v56;
}

uint64_t DownhillRunsStats.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DownhillRunsStats.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(218);
  MEMORY[0x20F2E6D80](0xD000000000000020, 0x800000020B4607E0);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](0x74756F6B726F7720, 0xEE003D656D69745FLL);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x636E617473696420, 0xEA00000000003D65);
  v3 = *(v0 + 40);
  v4 = [v3 description];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  MEMORY[0x20F2E6D80](v5, v7);

  MEMORY[0x20F2E6D80](0xD000000000000024, 0x800000020B460810);
  v8 = *(v1 + 24);
  v9 = [v8 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  MEMORY[0x20F2E6D80](v10, v12);

  MEMORY[0x20F2E6D80](0x6D756D6978616D20, 0xEF3D64656570735FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10HKQuantityCSgMd, &_sSo10HKQuantityCSgMR);
  v13 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v13);

  MEMORY[0x20F2E6D80](0xD00000000000002ALL, 0x800000020B460840);
  v14 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v14);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B460870);
  v15 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v15);

  MEMORY[0x20F2E6D80](0xD000000000000021, 0x800000020B460890);
  v16 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v16);

  return 0;
}

Class @objc DownhillRun.startTime.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1 + *a3, v5);
  v10.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);

  return v10.super.isa;
}

uint64_t DownhillRun.startTime.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double DownhillRun.workoutTime.getter()
{
  v1 = OBJC_IVAR___WODownhillRun_workoutTime;
  swift_beginAccess();
  return *(v0 + v1);
}

void DownhillRun.workoutTime.setter(double a1)
{
  v3 = OBJC_IVAR___WODownhillRun_workoutTime;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *DownhillRun.averageSpeed.getter()
{
  v1 = *(v0 + OBJC_IVAR___WODownhillRun_averageSpeed);
  v2 = v1;
  return v1;
}

void *DownhillRun.maximumSpeed.getter()
{
  v1 = *(v0 + OBJC_IVAR___WODownhillRun_maximumSpeed);
  v2 = v1;
  return v1;
}

void *DownhillRun.alpineSlope.getter()
{
  v1 = *(v0 + OBJC_IVAR___WODownhillRun_alpineSlope);
  v2 = v1;
  return v1;
}

void *DownhillRun.elevationAscended.getter()
{
  v1 = *(v0 + OBJC_IVAR___WODownhillRun_elevationAscended);
  v2 = v1;
  return v1;
}

void *DownhillRun.elevationDescended.getter()
{
  v1 = *(v0 + OBJC_IVAR___WODownhillRun_elevationDescended);
  v2 = v1;
  return v1;
}

void *DownhillRun.distance.getter()
{
  v1 = OBJC_IVAR___WODownhillRun_distance;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DownhillRun.distance.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WODownhillRun_distance;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DownhillRun.averageHeartRate.getter()
{
  v1 = OBJC_IVAR___WODownhillRun_averageHeartRate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void @objc DownhillRun.distance.setter(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void DownhillRun.averageHeartRate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WODownhillRun_averageHeartRate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void key path setter for DownhillRun.distance : DownhillRun(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

uint64_t one-time initialization function for metadataKeys()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20B423940;
  *(v0 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 40) = v1;
  *(v0 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 56) = v2;
  *(v0 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 72) = v3;
  *(v0 + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 88) = v4;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 96) = result;
  *(v0 + 104) = v6;
  static DownhillRun.metadataKeys = v0;
  return result;
}

double static DownhillRun.metadataKeys.getter()
{
  if (one-time initialization token for metadataKeys != -1)
  {
    swift_once();
  }

  return result;
}

id DownhillRun.__allocating_init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(void *a1, void *a2, void *a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(a1, a2, a3, a4);

  return v10;
}

id DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(void *a1, void *a2, void *a3, double a4)
{
  v7 = specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(a1, a2, a3, a4);

  return v7;
}

void closure #1 in static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:)(void *a1, void *a2, uint64_t a3, dispatch_group_t group, const char *a5)
{
  if (a2)
  {
    type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v10 = a2;
    v11 = static OS_os_log.default.getter();
    v12 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v11, v12))
    {

      if (!a1)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_20AEA4000, v11, v12, a5, v13, 0xCu);
    _s10Foundation4DateVSgWOhTm_8(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v14, -1, -1);
    MEMORY[0x20F2E9420](v13, -1, -1);
  }

  if (a1)
  {
LABEL_5:
    swift_beginAccess();
    v17 = *(a3 + 16);
    *(a3 + 16) = a1;
    v18 = a1;
  }

LABEL_6:
  dispatch_group_leave(group);
}

void closure #1 in static DownhillRun.calculateDistance(workout:dateInterval:healthStore:completion:)(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, SEL *a6)
{
  if (!a2)
  {
    goto LABEL_7;
  }

  v9 = a2;
  v10 = [v9 *a6];
  if (!v10)
  {

LABEL_7:
    (a4)(0, a3, a3, a4, a5, a6);
    return;
  }

  v11 = v10;
  v12 = v10;
  a4(v11, 0);
}

void closure #1 in static DownhillRun.calculateWorkoutTime(dateInterval:pauseResumeEvents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v30 - v21;
  outlined init with copy of Date?(a1, v13);
  v23 = *(v15 + 48);
  if (v23(v13, 1, v14) == 1)
  {
    _s10Foundation4DateVSgWOhTm_8(v13, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  else
  {
    v30 = a3;
    v24 = v13;
    v25 = *(v15 + 32);
    v25(v22, v24, v14);
    outlined init with copy of Date?(a2, v10);
    if (v23(v10, 1, v14) == 1)
    {
      (*(v15 + 8))(v22, v14);
      _s10Foundation4DateVSgWOhTm_8(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }

    else
    {
      v25(v19, v10, v14);
      Date.timeIntervalSince(_:)();
      v27 = v26;
      v28 = *(v15 + 8);
      v28(v19, v14);
      v28(v22, v14);
      v29 = v30;
      swift_beginAccess();
      *(v29 + 16) = v27 + *(v29 + 16);
    }
  }
}

id DownhillRun.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownhillRun.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownhillRun(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DownhillRun.description.getter()
{
  _StringGuts.grow(_:)(232);
  MEMORY[0x20F2E6D80](0xD00000000000001BLL, 0x800000020B460970);
  swift_beginAccess();
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x745F747261747320, 0xEC0000003D656D69);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v0);

  MEMORY[0x20F2E6D80](0x6D69745F646E6520, 0xEA00000000003D65);
  v1 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v1);

  MEMORY[0x20F2E6D80](0xD00000000000001DLL, 0x800000020B460990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10HKQuantityCSgMd, &_sSo10HKQuantityCSgMR);
  v2 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v2);

  MEMORY[0x20F2E6D80](0x6D756D6978616D20, 0xEF3D64656570735FLL);
  v3 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v3);

  MEMORY[0x20F2E6D80](0xD000000000000023, 0x800000020B4609B0);
  v4 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v4);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B460870);
  v5 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v5);

  MEMORY[0x20F2E6D80](0xD000000000000018, 0x800000020B4609E0);
  swift_beginAccess();
  v6 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v6);

  MEMORY[0x20F2E6D80](0x5F656E69706C6120, 0xEE003D65706F6C73);
  v7 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v7);

  MEMORY[0x20F2E6D80](0xD00000000000001ALL, 0x800000020B460A00);
  swift_beginAccess();
  v8 = Optional.description.getter();
  MEMORY[0x20F2E6D80](v8);

  return 0;
}

uint64_t HKHealthStore.distance(for:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Date();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for DateInterval();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](HKHealthStore.distance(for:), 0, 0);
}

uint64_t HKHealthStore.distance(for:)()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = [*(v0 + 24) dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = objc_opt_self();
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v7 = *(v2 + 8);
  v7(v1, v3);
  DateInterval.end.getter();
  v8 = Date._bridgeToObjectiveC()().super.isa;
  v7(v1, v3);
  v9 = [v5 predicateForSamplesWithStartDate:isa endDate:v8 options:0];
  *(v0 + 88) = v9;

  v10 = [objc_allocWithZone(MEMORY[0x277CCD830]) initWithIdentifier_];
  *(v0 + 96) = v10;
  if (v10)
  {
    v11 = v10;
    v12 = *(v0 + 32);
    v13 = swift_task_alloc();
    *(v0 + 104) = v13;
    v13[2] = v11;
    v13[3] = v9;
    v13[4] = v12;
    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10HKQuantityCSgMd, &_sSo10HKQuantityCSgMR);
    *v14 = v0;
    v14[1] = HKHealthStore.distance(for:);

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x65636E6174736964, 0xEE00293A726F6628, partial apply for closure #1 in HKHealthStore.distance(for:), v13, v15);
  }

  else
  {
    if (one-time initialization token for downhillSnowSports != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static WOLog.downhillSnowSports);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 72);
    v20 = *(v0 + 80);
    v22 = *(v0 + 64);
    if (v19)
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_20AEA4000, v17, v18, "distance for downhillRunEvent -- downhill snow sports quantity type unexpectedly returned nil", v23, 2u);
      MEMORY[0x20F2E9420](v23, -1, -1);
    }

    (*(v21 + 8))(v20, v22);

    v24 = *(v0 + 8);

    return v24(0);
  }
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = HKHealthStore.distance(for:);
  }

  else
  {
    v2 = HKHealthStore.distance(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 16);

  v6 = *(v0 + 8);

  return v6(v5);
}

{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

void closure #1 in HKHealthStore.distance(for:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10HKQuantityCSgs5Error_pGMd, &_sScCySo10HKQuantityCSgs5Error_pGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = objc_allocWithZone(MEMORY[0x277CCDA68]);
  aBlock[4] = partial apply for closure #1 in closure #1 in HKHealthStore.distance(for:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsQuery, @guaranteed HKStatistics?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_43;
  v16 = _Block_copy(aBlock);
  v17 = [v15 initWithQuantityType:a2 quantitySamplePredicate:a3 options:16 completionHandler:v16];
  _Block_release(v16);

  [a4 executeQuery_];
}

uint64_t closure #1 in closure #1 in HKHealthStore.distance(for:)(int a1, id a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10HKQuantityCSgs5Error_pGMd, &_sScCySo10HKQuantityCSgs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    [a2 sumQuantity];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10HKQuantityCSgs5Error_pGMd, &_sScCySo10HKQuantityCSgs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsQuery, @guaranteed HKStatistics?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

id specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(void *a1, void *a2, void *a3, double a4)
{
  v5 = v4;
  v88 = a2;
  v89 = a3;
  v85 = type metadata accessor for Date();
  v8 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateInterval();
  v84 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = OBJC_IVAR___WODownhillRun_distance;
  *&v5[OBJC_IVAR___WODownhillRun_distance] = 0;
  v87 = OBJC_IVAR___WODownhillRun_averageHeartRate;
  *&v5[OBJC_IVAR___WODownhillRun_averageHeartRate] = 0;
  v17 = [a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.start.getter();
  v18 = *(v13 + 8);
  v18(v16, v12);
  v19 = *(v8 + 32);
  v20 = v85;
  v19(&v5[OBJC_IVAR___WODownhillRun_startTime], v11, v85);
  v21 = [a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  DateInterval.end.getter();
  v18(v16, v84);
  v19(&v5[OBJC_IVAR___WODownhillRun_endTime], v11, v20);
  v22 = a1;
  v23 = [a1 metadata];
  if (!v23)
  {
    goto LABEL_9;
  }

  v24 = v23;
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v25 + 16))
  {

    goto LABEL_8;
  }

  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    v32 = 0;
    goto LABEL_10;
  }

  outlined init with copy of Any(*(v25 + 56) + 32 * v28, v92);

  type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  v31 = swift_dynamicCast();
  v32 = v91;
  if (!v31)
  {
    v32 = 0;
  }

LABEL_10:
  *&v5[OBJC_IVAR___WODownhillRun_averageSpeed] = v32;
  v33 = [v22 metadata];
  if (!v33)
  {
LABEL_18:
    v42 = 0;
    goto LABEL_19;
  }

  v34 = v33;
  v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v35 + 16))
  {

    goto LABEL_17;
  }

  v38 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  outlined init with copy of Any(*(v35 + 56) + 32 * v38, v92);

  type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  v41 = swift_dynamicCast();
  v42 = v91;
  if (!v41)
  {
    v42 = 0;
  }

LABEL_19:
  *&v5[OBJC_IVAR___WODownhillRun_maximumSpeed] = v42;
  v43 = [v22 metadata];
  if (!v43)
  {
LABEL_27:
    v52 = 0;
    goto LABEL_28;
  }

  v44 = v43;
  v45 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v45 + 16))
  {

    goto LABEL_26;
  }

  v48 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
LABEL_26:

    goto LABEL_27;
  }

  outlined init with copy of Any(*(v45 + 56) + 32 * v48, v92);

  type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  v51 = swift_dynamicCast();
  v52 = v91;
  if (!v51)
  {
    v52 = 0;
  }

LABEL_28:
  *&v5[OBJC_IVAR___WODownhillRun_alpineSlope] = v52;
  v53 = [v22 metadata];
  if (!v53)
  {
LABEL_36:
    v62 = 0;
    goto LABEL_37;
  }

  v54 = v53;
  v55 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v55 + 16))
  {

    goto LABEL_35;
  }

  v58 = specialized __RawDictionaryStorage.find<A>(_:)(v56, v57);
  v60 = v59;

  if ((v60 & 1) == 0)
  {
LABEL_35:

    goto LABEL_36;
  }

  outlined init with copy of Any(*(v55 + 56) + 32 * v58, v92);

  type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  v61 = swift_dynamicCast();
  v62 = v91;
  if (!v61)
  {
    v62 = 0;
  }

LABEL_37:
  *&v5[OBJC_IVAR___WODownhillRun_elevationAscended] = v62;
  v63 = [v22 metadata];
  if (!v63)
  {
LABEL_45:
    v72 = 0;
    goto LABEL_46;
  }

  v64 = v63;
  v65 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v65 + 16))
  {

    goto LABEL_44;
  }

  v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v67);
  v70 = v69;

  if ((v70 & 1) == 0)
  {
LABEL_44:

    goto LABEL_45;
  }

  outlined init with copy of Any(*(v65 + 56) + 32 * v68, v92);

  type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantity, 0x277CCD7E8);
  v71 = swift_dynamicCast();
  v72 = v91;
  if (!v71)
  {
    v72 = 0;
  }

LABEL_46:
  *&v5[OBJC_IVAR___WODownhillRun_elevationDescended] = v72;
  *&v5[OBJC_IVAR___WODownhillRun_workoutTime] = a4;
  v73 = v86;
  swift_beginAccess();
  v74 = *&v5[v73];
  v75 = v88;
  *&v5[v73] = v88;
  v76 = v75;

  v77 = v87;
  swift_beginAccess();
  v78 = *&v5[v77];
  v79 = v89;
  *&v5[v77] = v89;
  v80 = v79;

  v81 = type metadata accessor for DownhillRun(0);
  v90.receiver = v5;
  v90.super_class = v81;
  return objc_msgSendSuper2(&v90, sel_init);
}

double specialized static DownhillRun.calculateWorkoutTime(dateInterval:pauseResumeEvents:)(uint64_t a1, Class isa)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  DateInterval.start.getter();
  v9.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v10 = *(v4 + 8);
  v10(v7, v3);
  DateInterval.end.getter();
  v11.super.isa = Date._bridgeToObjectiveC()().super.isa;
  v10(v7, v3);
  if (isa)
  {
    type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  aBlock[4] = partial apply for closure #1 in static DownhillRun.calculateWorkoutTime(dateInterval:pauseResumeEvents:);
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed Date?, @in_guaranteed Date?) -> ();
  aBlock[3] = &block_descriptor_15_4;
  v12 = _Block_copy(aBlock);

  _HKEnumerateActiveWorkoutIntervalsStartingPaused();
  _Block_release(v12);

  swift_beginAccess();
  v13 = *(v8 + 16);

  return v13;
}

id specialized static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:)(void *a1, void *a2, void *a3)
{
  v102 = a3;
  v95 = type metadata accessor for Date();
  v5 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v6);
  v8 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for DateInterval();
  v105 = *(v103 - 8);
  v10 = MEMORY[0x28223BE20](v103, v9);
  v98 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v97 = v84 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = v84 - v16;
  v18 = dispatch_group_create();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v99 = v19 + 16;
  dispatch_group_enter(v18);
  v104 = a1;
  v20 = [a1 dateInterval];
  static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v18;
  v94 = v21;
  v100 = v19;

  v96 = v18;
  v22 = a2;
  result = [a2 fiui_activityType];
  if (result)
  {
    v24 = result;
    v25 = FIUIDistanceTypeForActivityType();

    v85 = [objc_opt_self() quantityTypeForDistanceType_];
    v26 = objc_opt_self();
    v86 = v26;
    v27 = [v26 predicateForObjectsFromWorkout_];
    DateInterval.start.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v29 = *(v5 + 8);
    v84[1] = v5 + 8;
    v30 = v95;
    v29(v8, v95);
    v93 = v17;
    v90 = v29;
    DateInterval.end.getter();
    v31 = Date._bridgeToObjectiveC()().super.isa;
    v29(v8, v30);
    v32 = [v26 predicateForSamplesWithStartDate:isa endDate:v31 options:0];
    v101 = v22;
    v33 = v32;

    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v34 = swift_allocObject();
    v91 = xmmword_20B42FA20;
    *(v34 + 16) = xmmword_20B42FA20;
    *(v34 + 32) = v27;
    *(v34 + 40) = v33;
    v88 = type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for NSPredicate, 0x277CCAC30);
    v35 = v27;
    v36 = v33;
    v37 = Array._bridgeToObjectiveC()().super.isa;

    v87 = objc_opt_self();
    v38 = [v87 andPredicateWithSubpredicates_];

    v39 = swift_allocObject();
    v40 = v94;
    *(v39 + 16) = partial apply for closure #1 in static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:);
    *(v39 + 24) = v40;
    v41 = objc_allocWithZone(MEMORY[0x277CCDA68]);
    v110 = partial apply for closure #1 in static DownhillRun.calculateDistance(workout:dateInterval:healthStore:completion:);
    v111 = v39;
    aBlock = MEMORY[0x277D85DD0];
    v107 = 1107296256;
    v89 = &v108;
    v108 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsQuery, @guaranteed HKStatistics?, @guaranteed Error?) -> ();
    v109 = &block_descriptor_27_1;
    v42 = _Block_copy(&aBlock);

    v43 = v85;
    v44 = [v41 initWithQuantityType:v85 quantitySamplePredicate:v38 options:16 completionHandler:v42];
    _Block_release(v42);

    [v102 executeQuery_];

    v45 = *(v105 + 8);
    v105 += 8;
    v85 = v45;
    v45(v93, v103);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    v94 = v46 + 16;
    v47 = v96;
    dispatch_group_enter(v96);
    v48 = [v104 dateInterval];
    v49 = v97;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = swift_allocObject();
    *(v50 + 16) = v46;
    *(v50 + 24) = v47;
    v96 = v47;
    v93 = v46;

    v51 = v86;
    v52 = [v86 predicateForObjectsFromWorkout_];
    DateInterval.start.getter();
    v53 = Date._bridgeToObjectiveC()().super.isa;
    v54 = v90;
    v90(v8, v30);
    DateInterval.end.getter();
    v55 = Date._bridgeToObjectiveC()().super.isa;
    v54(v8, v30);
    v56 = [v51 predicateForSamplesWithStartDate:v53 endDate:v55 options:1];

    v57 = swift_allocObject();
    *(v57 + 16) = v91;
    *(v57 + 32) = v52;
    *(v57 + 40) = v56;
    v58 = v52;
    v59 = v56;
    v60 = Array._bridgeToObjectiveC()().super.isa;

    v61 = [v87 andPredicateWithSubpredicates_];

    type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKQuantityType, 0x277CCD830);
    v62 = MEMORY[0x20F2E7440](*MEMORY[0x277CCCB90]);
    v63 = swift_allocObject();
    *(v63 + 16) = partial apply for closure #2 in static DownhillRun.makeDownhillRun(downhillRunEvent:workout:healthStore:);
    *(v63 + 24) = v50;
    v64 = objc_allocWithZone(MEMORY[0x277CCDA68]);
    v110 = partial apply for closure #1 in static DownhillRun.calculateAverageHeartRate(workout:dateInterval:healthStore:completion:);
    v111 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v107 = 1107296256;
    v108 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed HKStatisticsQuery, @guaranteed HKStatistics?, @guaranteed Error?) -> ();
    v109 = &block_descriptor_37_0;
    v65 = _Block_copy(&aBlock);

    v66 = [v64 initWithQuantityType:v62 quantitySamplePredicate:v61 options:2 completionHandler:v65];

    v67 = v65;
    v68 = v85;
    _Block_release(v67);

    [v102 executeQuery_];

    v69 = v103;
    v68(v49, v103);
    v70 = v104;
    v71 = [v104 dateInterval];
    v72 = v98;
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    v73 = [v101 workoutEvents];
    if (v73)
    {
      v74 = v73;
      type metadata accessor for HKWorkoutEvent(0, &lazy cache variable for type metadata for HKWorkoutEvent, 0x277CCDC68);
      v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v75 = 0;
    }

    v76 = specialized static DownhillRun.calculateWorkoutTime(dateInterval:pauseResumeEvents:)(v72, v75);

    v68(v72, v69);
    v77 = v96;
    OS_dispatch_group.wait()();
    swift_beginAccess();
    v78 = *(v100 + 16);
    swift_beginAccess();
    v79 = *(v93 + 2);
    objc_allocWithZone(type metadata accessor for DownhillRun(0));
    v80 = v79;
    v81 = v70;
    v82 = v78;
    v83 = specialized DownhillRun.init(downhillRunEvent:workoutTime:distance:averageHeartRate:)(v81, v78, v79, v76);

    return v83;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for DownhillRun(uint64_t a1)
{
  result = type metadata singleton initialization cache for DownhillRun;
  if (!type metadata singleton initialization cache for DownhillRun)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Date and conformance Date()
{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Date and conformance Date;
  if (!lazy protocol witness table cache variable for type Date and conformance Date)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Date and conformance Date);
  }

  return result;
}

id keypath_get_4Tm_0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t type metadata completion function for DownhillRun(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t partial apply for closure #1 in closure #1 in HKHealthStore.distance(for:)(int a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10HKQuantityCSgs5Error_pGMd, &_sScCySo10HKQuantityCSgs5Error_pGMR);

  return closure #1 in closure #1 in HKHealthStore.distance(for:)(a1, a2, a3);
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s10Foundation4DateVSgWOhTm_8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for HKWorkoutEvent(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t WorkoutDataBucket.__allocating_init()()
{
  type metadata accessor for WorkoutDataBucket();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t WorkoutDataBucket.__allocating_init(value:divisor:)(double a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t WorkoutDataBucket.init(value:divisor:)(double a1, double a2)
{
  result = v2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

Swift::Void __swiftcall WorkoutDataBucket.add(value:divisor:)(Swift::Double value, Swift::Double divisor)
{
  swift_beginAccess();
  *(v2 + 16) = *(v2 + 16) + value;
  swift_beginAccess();
  *(v2 + 24) = *(v2 + 24) + divisor;
}

Swift::Double __swiftcall WorkoutDataBucket.average()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  swift_beginAccess();
  return v1 / *(v0 + 24);
}

uint64_t StepType.displayString.getter()
{
  v1 = *v0;
  v2 = 0xEE004B524F575F45;
  v3 = 0x5059545F50455453;
  v4 = 0xD000000000000011;
  v5 = 0x800000020B460D80;
  if (v1 != 2)
  {
    v4 = 0xD000000000000013;
    v5 = 0x800000020B460D60;
  }

  if (*v0)
  {
    v3 = 0xD000000000000011;
    v2 = 0x800000020B460D40;
  }

  if (*v0 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (v1 <= 1)
  {
    v7 = v2;
  }

  else
  {
    v7 = v5;
  }

  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  v10 = MEMORY[0x20F2E6C00](v6, v7);

  v11 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v12 = [v9 localizedStringForKey:v10 value:0 table:v11];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v13;
}

unint64_t StepType.displayStringKey.getter()
{
  v1 = 0x5059545F50455453;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t StepType.displayStringToAddStep.getter()
{
  v1 = *v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = "STEP_TYPE_ADD_COOL_DOWN";
  v5 = 0xD000000000000017;
  if (v1 == 2)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v4 = "STEP_TYPE_ADD_RECOVER";
  }

  v6 = "STEP_TYPE_WARM_UP";
  v7 = 0xD000000000000012;
  if (v1)
  {
    v6 = "STEP_TYPE_ADD_WORK";
    v7 = 0xD000000000000015;
  }

  if (v1 > 1)
  {
    v8 = v5;
  }

  else
  {
    v4 = v6;
    v8 = v7;
  }

  v9 = MEMORY[0x20F2E6C00](v8, v4 | 0x8000000000000000);
  v10 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v11 = [v3 localizedStringForKey:v9 value:0 table:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

uint64_t StepType.displayHintAbbreviation.getter()
{
  v1 = *v0;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = "STEP_TYPE_HINT_COOL_DOWN";
  v5 = 0xD000000000000018;
  if (v1 == 2)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v4 = "STEP_TYPE_HINT_RECOVER";
  }

  v6 = "STEP_TYPE_ADD_WARM_UP";
  v7 = 0xD000000000000013;
  if (v1)
  {
    v6 = "STEP_TYPE_HINT_WORK";
    v7 = 0xD000000000000016;
  }

  if (v1 > 1)
  {
    v8 = v5;
  }

  else
  {
    v4 = v6;
    v8 = v7;
  }

  v9 = MEMORY[0x20F2E6C00](v8, v4 | 0x8000000000000000);
  v10 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v11 = [v3 localizedStringForKey:v9 value:0 table:v10];

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v12;
}

unint64_t MirroredClientCommand.description.getter()
{
  v1 = 0x70736552676E6970;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

void MirroredClientCommand.init(protobuf:)(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if ((a1[1] & 1) == 0)
  {
    if (one-time initialization token for dataLink != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static WOLog.dataLink);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_20AEA4000, v5, v6, "Unrecognized MirroredClientCommand rawValue: %ld", v7, 0xCu);
      MEMORY[0x20F2E9420](v7, -1, -1);
    }

    LOBYTE(v3) = 3;
  }

  *a2 = v3;
}

WorkoutCore::MirroredClientCommand_optional __swiftcall MirroredClientCommand.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MirroredClientCommand()
{
  v1 = 0x70736552676E6970;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000023;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MirroredClientCommand()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MirroredClientCommand(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type MirroredClientCommand and conformance MirroredClientCommand()
{
  result = lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand;
  if (!lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MirroredClientCommand and conformance MirroredClientCommand);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MirroredClientCommand(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MirroredClientCommand(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type FIWorkoutMetricType and conformance FIWorkoutMetricType()
{
  result = lazy protocol witness table cache variable for type FIWorkoutMetricType and conformance FIWorkoutMetricType;
  if (!lazy protocol witness table cache variable for type FIWorkoutMetricType and conformance FIWorkoutMetricType)
  {
    type metadata accessor for FIWorkoutMetricType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FIWorkoutMetricType and conformance FIWorkoutMetricType);
  }

  return result;
}

uint64_t GoalPublisher.goal.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double GoalPublisher.goal.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*GoalPublisher.goal.modify(uint64_t *a1))()
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
  return GoalPublisher.goal.modify;
}

uint64_t key path setter for GoalPublisher.$goal : GoalPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMd, &_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t GoalPublisher.$goal.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMd, &_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GoalPublisher.$goal.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMd, &_s7Combine9PublishedV9PublisherVySo18_HKWorkoutGoalTypeV_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return GoalPublisher.$goal.modify;
}

uint64_t GoalPublisher.progress.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

double GoalPublisher.progress.setter(int a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return result;
}

uint64_t (*GoalPublisher.progress.modify(uint64_t *a1))()
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
  return GoalPublisher.progress.modify;
}

void GoalPublisher.goal.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t GoalPublisher.$goal.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for GoalPublisher.$goal : GoalPublisher(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for GoalPublisher.$progress : GoalPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt32V_GMd, &_s7Combine9PublishedV9PublisherVys6UInt32V_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t GoalPublisher.$progress.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt32V_GMd, &_s7Combine9PublishedV9PublisherVys6UInt32V_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*GoalPublisher.$progress.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt32V_GMd, &_s7Combine9PublishedV9PublisherVys6UInt32V_GMR);
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

  v10 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return GoalPublisher.$progress.modify;
}

void GoalPublisher.$goal.modify(uint64_t a1, char a2)
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

uint64_t GoalPublisher.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for _HKWorkoutGoalType(0);
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  return v0;
}

uint64_t GoalPublisher.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v14 - v9;
  v11 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  v15 = 0;
  type metadata accessor for _HKWorkoutGoalType(0);
  Published.init(initialValue:)();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v12 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  v14[1] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v5, v1);
  return v0;
}

uint64_t GoalPublisher.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t GoalPublisher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance GoalPublisher@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void GoalPublisher.protobuf.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  v2 = 0;
  if (v4 <= 3)
  {
    v2 = qword_20B43C718[v4];
  }

  *a1 = v2;
  *(a1 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *(a1 + 12) = v3;
}

uint64_t GoalPublisher.wireData()()
{
  v0 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = 0;
  v3[8] = 1;
  UnknownStorage.init()();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v9);

  v4 = 0;
  if (v9 <= 3)
  {
    v4 = qword_20B43C718[v9];
  }

  *v3 = v4;
  v3[8] = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v8);

  *(v3 + 3) = v8;
  lazy protocol witness table accessor for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher();
  v5 = Message.serializedData(partial:)();
  outlined destroy of Apple_Workout_Core_GoalPublisher(v3);
  return v5;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher)
  {
    type metadata accessor for Apple_Workout_Core_GoalPublisher(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher);
  }

  return result;
}

uint64_t outlined destroy of Apple_Workout_Core_GoalPublisher(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t GoalPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized GoalPublisher.__allocating_init(serializedData:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  return v4;
}

uint64_t protocol witness for static ProDatable.decodeProto(serializedData:) in conformance GoalPublisher@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  result = specialized static GoalPublisher.decodeProto(serializedData:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for ProDatable.init(serializedData:) in conformance GoalPublisher@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = specialized GoalPublisher.__allocating_init(serializedData:)(a1, a2);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t specialized static GoalPublisher.decodeProto(serializedData:)(uint64_t a1, unint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v2 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  MEMORY[0x28223BE20](v29, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v26 - v16;
  type metadata accessor for GoalPublisher(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
  *&v30 = 0;
  type metadata accessor for _HKWorkoutGoalType(0);
  Published.init(initialValue:)();
  (*(v14 + 32))(v18 + v19, v17, v13);
  v20 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
  LODWORD(v30) = 0;
  Published.init(initialValue:)();
  (*(v9 + 32))(v18 + v20, v12, v8);
  v33 = v27;
  v34 = v28;
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  outlined copy of Data._Representation(v27, v28);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher();
  v21 = v35;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (v21)
  {
  }

  else
  {
    v22 = v7[8];
    *&v30 = *v7;
    BYTE8(v30) = v22;
    v23 = Apple_Workout_Core_GoalType.decoded.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v33 = v23;

    static Published.subscript.setter();
    v24 = *(v7 + 3);
    swift_getKeyPath();
    swift_getKeyPath();
    LODWORD(v30) = v24;

    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_GoalPublisher(v7);
  }

  return v18;
}

uint64_t specialized GoalPublisher.__allocating_init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt32VGMd, &_s7Combine9PublishedVys6UInt32VGMR);
  v26 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMd, &_s7Combine9PublishedVySo18_HKWorkoutGoalTypeVGMR);
  v25 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v15 = type metadata accessor for Apple_Workout_Core_GoalPublisher(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  v31 = a2;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Workout_Core_GoalPublisher and conformance Apple_Workout_Core_GoalPublisher();
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  if (!v2)
  {
    type metadata accessor for GoalPublisher(0);
    v3 = swift_allocObject();
    v19 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__goal;
    *&v27 = 0;
    type metadata accessor for _HKWorkoutGoalType(0);
    Published.init(initialValue:)();
    (*(v25 + 32))(v3 + v19, v12, v9);
    v20 = OBJC_IVAR____TtC11WorkoutCore13GoalPublisher__progress;
    LODWORD(v27) = 0;
    Published.init(initialValue:)();
    (*(v26 + 32))(v3 + v20, v8, v32);
    v21 = v18[8];
    *&v27 = *v18;
    BYTE8(v27) = v21;

    v22 = Apple_Workout_Core_GoalType.decoded.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v22;

    static Published.subscript.setter();
    v23 = *(v18 + 3);
    swift_getKeyPath();
    swift_getKeyPath();
    LODWORD(v27) = v23;
    static Published.subscript.setter();
    outlined destroy of Apple_Workout_Core_GoalPublisher(v18);
  }

  return v3;
}

uint64_t type metadata accessor for GoalPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for GoalPublisher;
  if (!type metadata singleton initialization cache for GoalPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for GoalPublisher(uint64_t a1)
{
  type metadata accessor for Published<_HKWorkoutGoalType>(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<UInt32>();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<_HKWorkoutGoalType>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<_HKWorkoutGoalType>)
  {
    type metadata accessor for _HKWorkoutGoalType(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<_HKWorkoutGoalType>);
    }
  }
}

void type metadata accessor for Published<UInt32>()
{
  if (!lazy cache variable for type metadata for Published<UInt32>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<UInt32>);
    }
  }
}

void static RaceAlertsStore.save(raceAlerts:activityType:)(uint64_t a1, void *a2)
{
  v58[4] = *MEMORY[0x277D85DE8];
  *&v57[0] = a1;
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for RaceAlerts();
  lazy protocol witness table accessor for type RaceAlerts and conformance RaceAlerts(&lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts, &protocol conformance descriptor for RaceAlerts);
  v17 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v19 = v18;

  v20 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v54 = 0;
  v22 = [v20 propertyListWithData:isa options:0 format:0 error:&v54];

  v23 = v54;
  if (v22)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined consume of Data._Representation(v17, v19);
    swift_unknownObjectRelease();
    if (one-time initialization token for userDefaults != -1)
    {
      swift_once();
    }

    v24 = static RaceAlertsStore.userDefaults;
    v25 = MEMORY[0x20F2E6C00](0x72656C4165636172, 0xEA00000000007374);
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

    outlined init with copy of Any(v58, v57);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v27;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v57, v31, v33, isUniquelyReferenced_nonNull_native);

    v35 = static RaceAlertsStore.userDefaults;
    v36 = Dictionary._bridgeToObjectiveC()().super.isa;

    v37 = MEMORY[0x20F2E6C00](0x72656C4165636172, 0xEA00000000007374);
    [v35 setObject:v36 forKey:v37];

    v38 = static RaceAlertsStore.userDefaults;
    v39 = objc_opt_self();
    v40 = v38;
    v41 = [v39 standardUserDefaults];
    type metadata accessor for NSUserDefaults();
    LOBYTE(v38) = static NSObject.== infix(_:_:)();

    if (v38)
    {
      v42 = MEMORY[0x20F2E6C00](0x72656C4165636172, 0xEA00000000007374);
      [v39 fu:v42 backupStandardUserDefaultsKey:?];
    }

    if (one-time initialization token for alerts != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    __swift_project_value_buffer(v43, static WOLog.alerts);
    v44 = a2;

    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v56 = v49;
      *&v57[0] = 0;
      *v47 = 138412546;
      *(v47 + 4) = v44;
      *v48 = v44;
      *(v47 + 12) = 2080;
      *(&v57[0] + 1) = 0xE000000000000000;
      v50 = v44;
      _StringGuts.grow(_:)(42);

      v54 = 0xD000000000000027;
      v55 = 0x800000020B4590E0;
      swift_beginAccess();
      if (*(a1 + 16))
      {
        v51 = 1702195828;
      }

      else
      {
        v51 = 0x65736C6166;
      }

      if (*(a1 + 16))
      {
        v52 = 0xE400000000000000;
      }

      else
      {
        v52 = 0xE500000000000000;
      }

      MEMORY[0x20F2E6D80](v51, v52);

      MEMORY[0x20F2E6D80](62, 0xE100000000000000);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v56);

      *(v47 + 14) = v53;
      _os_log_impl(&dword_20AEA4000, v45, v46, "Saved RaceAlerts to user defaults for activityType=%@ raceAlerts=%s", v47, 0x16u);
      outlined destroy of NSObject?(v48);
      MEMORY[0x20F2E9420](v48, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x20F2E9420](v49, -1, -1);
      MEMORY[0x20F2E9420](v47, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v58);
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
      v58[0] = v11;
      *v9 = 138412546;
      *(v9 + 4) = v5;
      *v10 = v5;
      *(v9 + 12) = 2080;
      *&v57[0] = v29;
      v12 = v5;
      v13 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v14 = String.init<A>(describing:)();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v58);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_20AEA4000, v7, v8, "Failed to encode and save RaceAlerts for activityType=%@. error=%s", v9, 0x16u);
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

unint64_t type metadata accessor for NSUserDefaults()
{
  result = lazy cache variable for type metadata for NSUserDefaults;
  if (!lazy cache variable for type metadata for NSUserDefaults)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserDefaults);
  }

  return result;
}

uint64_t specialized static RaceAlertsStore.read(for:)(void *a1)
{
  v64 = *MEMORY[0x277D85DE8];
  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  v2 = static RaceAlertsStore.userDefaults;
  v3 = MEMORY[0x20F2E6C00](0x72656C4165636172, 0xEA00000000007374);
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
    _os_log_impl(&dword_20AEA4000, v21, v22, "RaceAlerts for all activity types not present in user defaults.", v23, 2u);
    v24 = v23;
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

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.alerts);
    v26 = a1;
    v21 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v21, v27))
    {
      goto LABEL_18;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v26;
    *v29 = v26;
    v30 = v26;
    _os_log_impl(&dword_20AEA4000, v21, v27, "RaceAlerts for activity type not present in user defaults. activityType=%@", v28, 0xCu);
    outlined destroy of NSObject?(v29);
    MEMORY[0x20F2E9420](v29, -1, -1);
    v24 = v28;
LABEL_17:
    MEMORY[0x20F2E9420](v24, -1, -1);
LABEL_18:

    type metadata accessor for RaceAlerts();
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
    type metadata accessor for RaceAlerts();
    lazy protocol witness table accessor for type RaceAlerts and conformance RaceAlerts(&lazy protocol witness table cache variable for type RaceAlerts and conformance RaceAlerts, &protocol conformance descriptor for RaceAlerts);
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

      _StringGuts.grow(_:)(42);

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

      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000020B4590E0, &v60);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v49;
      *v53 = v49;
      v57 = v49;
      _os_log_impl(&dword_20AEA4000, v50, v51, "Successfully read user raceAlerts=%s for activityType=%@", v52, 0x16u);
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
      _os_log_impl(&dword_20AEA4000, v37, v38, "Failed to decode RaceAlerts for activityType=%@. error=%s", v39, 0x16u);
      outlined destroy of NSObject?(v40);
      MEMORY[0x20F2E9420](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x20F2E9420](v41, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    else
    {
    }

    type metadata accessor for RaceAlerts();
    v47 = swift_allocObject();
    *(v47 + 16) = 1;
    __swift_destroy_boxed_opaque_existential_0(&v62);
    return v47;
  }
}

uint64_t getEnumTagSinglePayload for RaceAlertsStore(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RaceAlertsStore(_WORD *result, int a2, int a3)
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

uint64_t lazy protocol witness table accessor for type RaceAlerts and conformance RaceAlerts(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RaceAlerts();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

double specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = MEMORY[0x20F2E6C00](a1, a2);
  v8 = [v6 objectForKey_];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    if (swift_dynamicCast())
    {
      *&v15[0] = 0;
      v9 = specialized String.withCString<A>(_:)(v11, v12, v15);

      if (v9)
      {
        return *v15;
      }
    }
  }

  else
  {
    outlined destroy of Any?(v15);
  }

  return a3;
}

id specialized static HKActivitySummary.fake(activityMoveMode:)(char *a1)
{
  v73 = a1;
  v1 = type metadata accessor for Calendar.Identifier();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v68 - v8;
  v75 = type metadata accessor for DateComponents();
  v77 = *(v75 - 8);
  v11 = MEMORY[0x28223BE20](v75, v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v68 - v15;
  v74 = type metadata accessor for Date();
  v71 = *(v74 - 8);
  v18 = MEMORY[0x28223BE20](v74, v17);
  v69 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v68 = &v68 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v68 - v24;
  Date.init()();
  v26 = [objc_opt_self() calendarWithIdentifier_];
  if (v26)
  {
    v27 = v26;
    isa = Date._bridgeToObjectiveC()().super.isa;
    v29 = [v27 hk:isa activitySummaryDateComponentsFromDate:?];
    v76 = v27;
    v30 = v29;

    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = DateComponents._bridgeToObjectiveC()().super.isa;
    v32 = _HKCacheIndexFromDateComponents();

    v33 = [objc_allocWithZone(MEMORY[0x277CCCFB0]) init];
    v72 = v16;
    v34 = DateComponents._bridgeToObjectiveC()().super.isa;
    [v33 _setGregorianDateComponents_];

    [v33 _setActivitySummaryIndex_];
    [v33 setActivityMoveMode_];
    (*(v2 + 104))(v5, *MEMORY[0x277CC9830], v1);
    Calendar.init(identifier:)();
    (*(v2 + 8))(v5, v1);
    v35 = type metadata accessor for Calendar();
    (*(*(v35 - 8) + 56))(v9, 0, 1, v35);
    v36 = [v33 _gregorianDateComponents];
    static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

    DateComponents.calendar.setter();
    v37 = DateComponents._bridgeToObjectiveC()().super.isa;
    v38 = v77 + 8;
    v70 = *(v77 + 8);
    v70(v13, v75);
    [v33 _setGregorianDateComponents_];

    v73 = v25;
    v39 = Date._bridgeToObjectiveC()().super.isa;
    v40 = [v76 dateBySettingUnit:32 value:0 ofDate:v39 options:0];

    v41 = v38;
    if (v40)
    {
      v42 = v68;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = Date._bridgeToObjectiveC()().super.isa;
      v43 = v71;
      v44 = v74;
      (*(v71 + 8))(v42, v74);
    }

    else
    {
      v44 = v74;
      v43 = v71;
    }

    [v33 _setStartDate_];

    v45 = Date._bridgeToObjectiveC()().super.isa;
    v46 = [v76 dateBySettingUnit:32 value:23 ofDate:v45 options:0];

    v77 = v41;
    if (v46)
    {
      v47 = v69;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = Date._bridgeToObjectiveC()().super.isa;
      (*(v43 + 8))(v47, v44);
    }

    [v33 _setEndDate_];

    v48 = objc_opt_self();
    v49 = [v48 largeCalorieUnit];
    v50 = specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0x676E695265766F6DLL, 0xE800000000000000, 500.0);
    v51 = objc_opt_self();
    v52 = [v51 quantityWithUnit:v49 doubleValue:v50];

    [v33 setActiveEnergyBurned_];
    v53 = [v48 largeCalorieUnit];
    v54 = [v51 quantityWithUnit:v53 doubleValue:{specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0x676E695265766F6DLL, 0xE800000000000000, 500.0)}];

    [v33 setActiveEnergyBurnedGoal_];
    v55 = [v48 minuteUnit];
    v56 = [v51 quantityWithUnit:v55 doubleValue:{specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0x656D695465766F6DLL, 0xEC000000676E6952, 100.0)}];

    [v33 setAppleMoveTime_];
    v57 = [v48 minuteUnit];
    v58 = [v51 quantityWithUnit:v57 doubleValue:{specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0xD000000000000010, 0x800000020B460F40, 100.0)}];

    [v33 setAppleMoveTimeGoal_];
    v59 = [v48 countUnit];
    v60 = [v51 quantityWithUnit:v59 doubleValue:{specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0x6E6952646E617473, 0xE900000000000067, 12.0)}];

    [v33 setAppleStandHours_];
    v61 = [v48 countUnit];
    v62 = [v51 quantityWithUnit:v61 doubleValue:12.0];

    [v33 setAppleStandHoursGoal_];
    v63 = [v48 minuteUnit];
    v64 = [v51 quantityWithUnit:v63 doubleValue:{specialized static HKActivitySummary.fakeDouble(key:defaultValue:)(0x6573696372657865, 0xEC000000676E6952, 30.0)}];

    [v33 setAppleExerciseTime_];
    v65 = [v48 minuteUnit];
    v66 = [v51 quantityWithUnit:v65 doubleValue:30.0];

    [v33 setAppleExerciseTimeGoal_];
    v70(v72, v75);
    (*(v43 + 8))(v73, v74);
    return v33;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000023, 0x800000020B460F10, "WorkoutCore/HKActivitySummary_Faking.swift", 42, 2, 49, 0);
    __break(1u);
  }

  return result;
}

WorkoutCore::ActivityTypeKeyMigrator::MigrationVersion_optional __swiftcall ActivityTypeKeyMigrator.MigrationVersion.init(rawValue:)(Swift::Int rawValue)
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ActivityTypeKeyMigrator.MigrationVersion()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ActivityTypeKeyMigrator.MigrationVersion(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance ActivityTypeKeyMigrator.MigrationVersion@<X0>(void *result@<X0>, char *a2@<X8>)
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

BOOL ActivityTypeKeyMigrator.needsMigration.getter()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B460F60);
  v3 = [v1 integerForKey_];

  return v3 != 1;
}

void __swiftcall ActivityTypeKeyMigrator.init(migrationKeys:userDefaults:)(WorkoutCore::ActivityTypeKeyMigrator *__return_ptr retstr, Swift::OpaquePointer migrationKeys, NSUserDefaults userDefaults)
{
  isa = userDefaults.super.isa;

  retstr->migrationKeys = migrationKeys;
  retstr->userDefaults.super.isa = isa;
}

Swift::Void __swiftcall ActivityTypeKeyMigrator.migrateIfNeeded()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = "moveTimeRingGoal";
  v4 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B460F60);
  v5 = &_OBJC_LABEL_PROTOCOL___HRCBluetoothLESourceObserverDelegate;
  v65 = v1;
  v6 = [v1 integerForKey_];

  if (v6 == 1)
  {
    if (one-time initialization token for migration == -1)
    {
      goto LABEL_3;
    }

    goto LABEL_47;
  }

  v5 = *(v2 + 16);
  v64 = v2;
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21FIWorkoutActivityTypeCADGMd, &_ss18_DictionaryStorageCySo21FIWorkoutActivityTypeCADGMR);
    v13 = (v2 + 40);
    osloga = MEMORY[0x277D84F90];
    v3 = &selRef_updateZoneTrackerWithDistanceUnit_metadataSavingDelegate_;
    while (1)
    {
      v15 = *(v13 - 1);
      v14 = *v13;
      v72 = v2;
      v73 = v65;
      v16 = one-time initialization token for outdoorRowing;

      if (v16 != -1)
      {
        swift_once();
      }

      v68 = [static FIUIWorkoutActivityType.outdoorRowing workoutActivityType];
      if (one-time initialization token for indoorRowing != -1)
      {
        swift_once();
      }

      v69 = [static FIUIWorkoutActivityType.indoorRowing workoutActivityType];
      if (one-time initialization token for outdoorHockey != -1)
      {
        swift_once();
      }

      v70 = [static FIUIWorkoutActivityType.outdoorHockey workoutActivityType];
      if (one-time initialization token for indoorHockey != -1)
      {
        swift_once();
      }

      v71 = [static FIUIWorkoutActivityType.indoorHockey workoutActivityType];
      v17 = static _DictionaryStorage.allocate(capacity:)();

      v18 = v68;
      v19 = v69;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if (v21)
      {
        break;
      }

      *(v17 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
      *(v17[6] + 8 * v20) = v18;
      *(v17[7] + 8 * v20) = v19;
      v22 = v17[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_46;
      }

      v17[2] = v24;
      v25 = v70;
      v26 = v71;
      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
      if (v28)
      {
        break;
      }

      *(v17 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v27;
      *(v17[6] + 8 * v27) = v25;
      *(v17[7] + 8 * v27) = v26;
      v29 = v17[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_46;
      }

      v17[2] = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21FIWorkoutActivityTypeC_ABtMd, &_sSo21FIWorkoutActivityTypeC_ABtMR);
      swift_arrayDestroy();
      v31 = ActivityTypeKeyMigrator.migrate(userDefaultKey:activityTypeMigrationMap:)(v15, v14, v17);

      if (v31)
      {

        v2 = v64;
      }

      else
      {
        v2 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          osloga = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(osloga + 2) + 1, 1, osloga);
        }

        v33 = *(osloga + 2);
        v32 = *(osloga + 3);
        if (v33 >= v32 >> 1)
        {
          osloga = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, osloga);
        }

        *(osloga + 2) = v33 + 1;
        v34 = &osloga[16 * v33];
        *(v34 + 4) = v15;
        *(v34 + 5) = v14;
      }

      v13 += 2;
      v5 = (v5 - 1);
      if (!v5)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    swift_once();
LABEL_3:
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static WOLog.migration);

    v8 = v65;
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134218240;
      v11 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, v3 | 0x8000000000000000);
      v12 = [v8 v5[364]];

      *(v10 + 4) = v12 == 1;

      *(v10 + 12) = 2048;
      *(v10 + 14) = 1;
      _os_log_impl(&dword_20AEA4000, oslog, v9, "ActivityTypeKeyMigrator migration not needed. current_version=%ld expected_version=%ld", v10, 0x16u);
      MEMORY[0x20F2E9420](v10, -1, -1);
    }

    else
    {
    }

    return;
  }

  osloga = MEMORY[0x277D84F90];
LABEL_33:
  if (*(osloga + 2))
  {
    if (one-time initialization token for migration != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static WOLog.migration);
    swift_bridgeObjectRetain_n();
    v36 = v65;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v72 = v40;
      *v39 = 136315906;
      v41 = v2;
      v42 = MEMORY[0x277D837D0];
      v43 = MEMORY[0x20F2E6F70](v41, MEMORY[0x277D837D0]);
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, &v72);

      *(v39 + 4) = v45;
      *(v39 + 12) = 2080;

      v47 = MEMORY[0x20F2E6F70](v46, v42);
      v49 = v48;

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v72);

      *(v39 + 14) = v50;
      *(v39 + 22) = 2048;
      v51 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B460F60);
      v52 = [v36 integerForKey_];

      *(v39 + 24) = v52 == 1;

      *(v39 + 32) = 2048;
      *(v39 + 34) = 1;
      _os_log_impl(&dword_20AEA4000, v37, v38, "ActivityTypeKeyMigrator migration completed with failures. migrations=%s failures=%s current_version=%ld expected_version=%ld", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v40, -1, -1);
      MEMORY[0x20F2E9420](v39, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (one-time initialization token for migration != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static WOLog.migration);
    swift_bridgeObjectRetain_n();
    v54 = v65;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v72 = v58;
      *v57 = 136315650;
      v59 = MEMORY[0x20F2E6F70](v2, MEMORY[0x277D837D0]);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v72);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2048;
      v62 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B460F60);
      v63 = [v54 integerForKey_];

      v2 = v64;
      *(v57 + 14) = v63 == 1;

      *(v57 + 22) = 2048;
      *(v57 + 24) = 1;
      _os_log_impl(&dword_20AEA4000, v55, v56, "ActivityTypeKeyMigrator migration completed successfully. migrations=%s current_version=%ld expected_version=%ld", v57, 0x20u);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x20F2E9420](v58, -1, -1);
      MEMORY[0x20F2E9420](v57, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v72 = v2;
    v73 = v54;
    ActivityTypeKeyMigrator.markMigrationCompleted()();
  }
}

uint64_t ActivityTypeKeyMigrator.migrate(userDefaultKey:activityTypeMigrationMap:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 8);
  v8 = MEMORY[0x20F2E6C00](a1, a2);
  v9 = [v7 dictionaryForKey_];

  if (v9)
  {
    v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v32 = v10;
    v31 = 0;
    v30 = 1;

    specialized Sequence.forEach(_:)(v11, a3, &v32, &v31, a1, a2, &v30);

    if (v31 == 1)
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v13 = MEMORY[0x20F2E6C00](a1, a2);
      [v7 setObject:isa forKey:v13];

      v14 = objc_opt_self();
      v15 = [v14 standardUserDefaults];
      _sSo14NSUserDefaultsCMaTm_0(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
      LOBYTE(isa) = static NSObject.== infix(_:_:)();

      if (isa)
      {
        v16 = MEMORY[0x20F2E6C00](a1, a2);
        [v14 fu:v16 backupStandardUserDefaultsKey:?];
      }

      if (one-time initialization token for migration != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static WOLog.migration);

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = v21;
        *v20 = 136315138;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v29);
        _os_log_impl(&dword_20AEA4000, v18, v19, "Saved %s to user defaults during migration", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x20F2E9420](v21, -1, -1);
        MEMORY[0x20F2E9420](v20, -1, -1);
      }
    }

    else
    {
    }

    v27 = v30;
  }

  else
  {

    if (one-time initialization token for migration != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static WOLog.migration);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v32);
      _os_log_impl(&dword_20AEA4000, v23, v24, "%s key not present in user defaults. Not attempting migration.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x20F2E9420](v26, -1, -1);
      MEMORY[0x20F2E9420](v25, -1, -1);
    }

    return 1;
  }

  return v27;
}

void ActivityTypeKeyMigrator.markMigrationCompleted()()
{
  v1 = *(v0 + 8);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 standardUserDefaults];
  _sSo14NSUserDefaultsCMaTm_0(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v5 = static NSObject.== infix(_:_:)();

  v6 = MEMORY[0x20F2E6C00](0xD00000000000001FLL, 0x800000020B460F60);
  v9 = v6;
  if (v5)
  {
    v7 = v2;
  }

  else
  {
    v7 = v3;
  }

  v8 = &selRef_fu_backupAndSetInteger_forKey_;
  if ((v5 & 1) == 0)
  {
    v8 = &selRef_setInteger_forKey_;
  }

  [v7 *v8];
}

unint64_t lazy protocol witness table accessor for type ActivityTypeKeyMigrator.MigrationVersion and conformance ActivityTypeKeyMigrator.MigrationVersion()
{
  result = lazy protocol witness table cache variable for type ActivityTypeKeyMigrator.MigrationVersion and conformance ActivityTypeKeyMigrator.MigrationVersion;
  if (!lazy protocol witness table cache variable for type ActivityTypeKeyMigrator.MigrationVersion and conformance ActivityTypeKeyMigrator.MigrationVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityTypeKeyMigrator.MigrationVersion and conformance ActivityTypeKeyMigrator.MigrationVersion);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityTypeKeyMigrator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ActivityTypeKeyMigrator(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ActivityTypeKeyMigrator.MigrationVersion(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityTypeKeyMigrator.MigrationVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, unint64_t a6, _BYTE *a7)
{
  v8 = a2;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v59 = a2 & 0xC000000000000001;

  v14 = 0;
  v60 = a6;
  v56 = v8;
  while (v12)
  {
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v17 = (*(a1 + 48) + ((v14 << 10) | (16 * v16)));
    v18 = *v17;
    v19 = v17[1];

    v63 = v18;
    v20 = MEMORY[0x20F2E6C00](v18, v19);
    v21 = [objc_opt_self() activityTypeFromUniqueIdentifier_];

    if (v21)
    {
      if (v59)
      {
        v22 = v21;
        v23 = __CocoaDictionary.lookup(_:)();

        if (!v23)
        {
          goto LABEL_23;
        }

        *&v65 = v23;
        _sSo14NSUserDefaultsCMaTm_0(0, &lazy cache variable for type metadata for FIWorkoutActivityType, 0x277D095E0);
        swift_dynamicCast();
        v24 = *&v67[0];
        if (!*&v67[0])
        {
          goto LABEL_23;
        }
      }

      else if (!*(v8 + 16) || (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v21), (v32 & 1) == 0) || (v24 = *(*(v8 + 56) + 8 * v31)) == 0)
      {
LABEL_23:
        v24 = v21;
      }

      v61 = v24;
      v33 = [v24 uniqueIdentifier];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      v37 = v63 == v34 && v19 == v36;
      if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        a6 = v60;
      }

      else
      {
        v38 = *a3;
        if (*(*a3 + 16) && (v39 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v19), (v40 & 1) != 0))
        {
          outlined init with copy of Any(*(v38 + 56) + 32 * v39, v67);
        }

        else
        {
          memset(v67, 0, 32);
        }

        outlined init with copy of Any?(v67, &v65);
        if (*(&v66 + 1))
        {
          outlined init with take of Any(&v65, v64);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v68 = *a3;
          v42 = v34;
          v43 = a3;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v64, v42, v36, isUniquelyReferenced_nonNull_native);

          *a3 = v68;
        }

        else
        {
          outlined destroy of Any?(&v65);
          v44 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v36);
          if (v45)
          {
            v46 = v44;
            v47 = swift_isUniquelyReferenced_nonNull_native();
            v48 = *a3;
            v68 = *a3;
            if ((v47 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
              v48 = v68;
            }

            outlined init with take of Any((*(v48 + 56) + 32 * v46), v64);
            specialized _NativeDictionary._delete(at:)(v46, v48);
            v43 = a3;
            *a3 = v48;
          }

          else
          {
            memset(v64, 0, sizeof(v64));
            v43 = a3;
          }

          outlined destroy of Any?(v64);
        }

        v49 = specialized __RawDictionaryStorage.find<A>(_:)(v63, v19);
        a6 = v60;
        if (v50)
        {
          v51 = v49;
          v52 = swift_isUniquelyReferenced_nonNull_native();
          v53 = *v43;
          *&v64[0] = *v43;
          if ((v52 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v53 = *&v64[0];
          }

          outlined init with take of Any((*(v53 + 56) + 32 * v51), &v65);
          specialized _NativeDictionary._delete(at:)(v51, v53);
          *v43 = v53;
        }

        else
        {
          v65 = 0u;
          v66 = 0u;
        }

        outlined destroy of Any?(&v65);
        outlined destroy of Any?(v67);
        *a4 = 1;

        v8 = v56;
      }
    }

    else
    {
      if (one-time initialization token for migration != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      __swift_project_value_buffer(v25, static WOLog.migration);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v67[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, v67);
        _os_log_impl(&dword_20AEA4000, v26, v27, "Unable to serialize FIWorkoutActivityType from uniqueIdentifier during migrateKeys for migration key=%s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x20F2E9420](v29, -1, -1);
        v30 = v28;
        v8 = v56;
        MEMORY[0x20F2E9420](v30, -1, -1);
      }

      *a7 = 0;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t _sSo14NSUserDefaultsCMaTm_0(uint64_t a1, unint64_t *a2, void *a3)
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

Swift::Int specialized RawRepresentable<>.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static WorkoutAlertZone.type(for:)(unint64_t a1)
{
  if (a1 < 4)
  {
    return qword_20B43CA58[a1];
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000020, 0x800000020B460FB0, "WorkoutCore/WorkoutAlertZone.swift", 34, 2, 87, 0);
  __break(1u);
  return result;
}

id WorkoutAlertZone.__allocating_init(targetZone:alertValue:date:zoneAlertType:activityType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone] = a1;
  *&v11[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue] = a5;
  *&v11[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType] = a4;

  v12 = a4;
  *&v11[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType] = FIUIDistanceTypeForActivityType();
  v23.receiver = v11;
  v23.super_class = v5;
  v13 = objc_msgSendSuper2(&v23, sel_init);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v13 setEventDate_];

  [v13 setType_];
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static WOLog.zones);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    *(v18 + 4) = v13;
    *v19 = v13;
    v20 = v13;
    _os_log_impl(&dword_20AEA4000, v16, v17, "Created zone alert: %@", v18, 0xCu);
    outlined destroy of NSObject?(v19);
    MEMORY[0x20F2E9420](v19, -1, -1);
    MEMORY[0x20F2E9420](v18, -1, -1);

    v12 = v16;
  }

  else
  {
  }

  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 8))(a2, v21);
  return v13;
}

double key path setter for WorkoutAlertZone.targetZone : WorkoutAlertZone(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double WorkoutAlertZone.targetZone.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t WorkoutAlertZone.distanceType.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutAlertZone.distanceType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void key path setter for WorkoutAlertZone.activityType : WorkoutAlertZone(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id WorkoutAlertZone.activityType.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WorkoutAlertZone.activityType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double WorkoutAlertZone.alertValue.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  swift_beginAccess();
  return *(v0 + v1);
}

void WorkoutAlertZone.alertValue.setter(double a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id WorkoutAlertZone.init(targetZone:alertValue:date:zoneAlertType:activityType:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v5[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone] = a1;
  *&v5[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue] = a5;
  *&v5[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType] = a4;

  v9 = a4;
  *&v5[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType] = FIUIDistanceTypeForActivityType();
  v20.receiver = v5;
  v20.super_class = type metadata accessor for WorkoutAlertZone();
  v10 = objc_msgSendSuper2(&v20, sel_init);
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v10 setEventDate_];

  [v10 setType_];
  if (one-time initialization token for zones != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static WOLog.zones);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v10;
    *v16 = v10;
    v17 = v10;
    _os_log_impl(&dword_20AEA4000, v13, v14, "Created zone alert: %@", v15, 0xCu);
    outlined destroy of NSObject?(v16);
    MEMORY[0x20F2E9420](v16, -1, -1);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }

  else
  {

    v13 = v9;
  }

  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 8))(a2, v18);
  return v10;
}

double protocol witness for Hashable.hash(into:) in conformance WorkoutAlertZone.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutAlertZone.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutAlertZone.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutAlertZone.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0x7974697669746361;
  v6 = 0xEC00000065707954;
  v7 = 0xEA00000000006575;
  v8 = 0x6C61567472656C61;
  if (v2 != 4)
  {
    v8 = 0x746144746E657665;
    v7 = 0xE900000000000065;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x6F5A746567726174;
  v10 = 0xEA0000000000656ELL;
  if (v2 != 1)
  {
    v9 = 0x65636E6174736964;
    v10 = 0xEC00000065707954;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance WorkoutAlertZone.CodingKeys()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x7974697669746361;
  v4 = 0x6C61567472656C61;
  if (v1 != 4)
  {
    v4 = 0x746144746E657665;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F5A746567726174;
  if (v1 != 1)
  {
    v5 = 0x65636E6174736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance WorkoutAlertZone.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutAlertZone.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutAlertZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance WorkoutAlertZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WorkoutAlertZone.encode(to:)(void *a1)
{
  v3 = v1;
  v36 = type metadata accessor for Date();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v5);
  v37 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore0D9AlertZoneC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore0D9AlertZoneC10CodingKeysOGMR);
  v7 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v8);
  v10 = &v34 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v12 = *&v3[v11];
  v13 = *(v12 + 16);
  swift_beginAccess();
  v14 = *(v12 + 24);
  swift_beginAccess();
  v15 = *(v12 + 32);
  type metadata accessor for JSONEncoder();
  swift_allocObject();

  JSONEncoder.init()();
  LOBYTE(v40) = v13;
  *(&v40 + 1) = v14;
  *&v41[0] = v15;
  lazy protocol witness table accessor for type TargetZone.TargetZoneHolder and conformance TargetZone.TargetZoneHolder();
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    return (*(v7 + 8))(v10, v45);
  }

  else
  {
    v19 = v16;
    v20 = v17;
    v35 = v3;

    *&v40 = v19;
    *(&v40 + 1) = v20;
    v42 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    v21 = v45;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v40, *(&v40 + 1));
    v22 = v35;
    swift_beginAccess();
    LOBYTE(v40) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = v7;
    v24 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
    swift_beginAccess();
    v25 = *&v22[v24];
    specialized FIUIWorkoutActivityType.ActivityType.init(activityType:)(v25, &v43);
    swift_allocObject();
    JSONEncoder.init()();
    v40 = v43;
    v41[0] = *v44;
    *(v41 + 9) = *&v44[9];
    lazy protocol witness table accessor for type FIUIWorkoutActivityType.ActivityType and conformance FIUIWorkoutActivityType.ActivityType();
    v26 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v28 = v27;

    outlined destroy of FIUIWorkoutActivityType.ActivityType(&v43);
    *&v40 = v26;
    *(&v40 + 1) = v28;
    v39 = 3;
    v29 = v10;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v40, *(&v40 + 1));
    v30 = v35;
    swift_beginAccess();
    v39 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    [v30 type];
    v39 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = [v30 eventDate];
    v32 = v37;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = 5;
    _s10Foundation4DateVACSEAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580]);
    v33 = v36;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v38 + 8))(v32, v33);
    return (*(v23 + 8))(v29, v21);
  }
}

void *WorkoutAlertZone.init(from:)(void *a1)
{
  v3 = type metadata accessor for Date();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore0D9AlertZoneC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore0D9AlertZoneC10CodingKeysOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    type metadata accessor for WorkoutAlertZone();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v6;
    v34 = v3;
    v35 = v8;
    v42 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v40;
    v15 = v41;
    outlined copy of Data._Representation(v40, v41);
    v16 = specialized TargetZone.__allocating_init(serializedData:)(v14, v15);
    v18 = v38;
    *&v38[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone] = v16;
    LOBYTE(v40) = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v18 + OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue) = v19;
    v42 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v40;
    v21 = v41;
    _sSo23FIUIWorkoutActivityTypeCMaTm_1(0, &lazy cache variable for type metadata for FIUIWorkoutActivityType, 0x277D0A810);
    outlined copy of Data._Representation(v20, v21);
    v22 = FIUIWorkoutActivityType.init(data:)(v20, v21);
    v23 = v38;
    *&v38[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType] = v22;
    LOBYTE(v40) = 2;
    v24 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v20;
    *&v23[OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType] = v24;
    v25 = type metadata accessor for WorkoutAlertZone();
    v39.receiver = v23;
    v39.super_class = v25;
    v12 = objc_msgSendSuper2(&v39, sel_init);
    LOBYTE(v40) = 0;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v21;
    v38 = v15;
    [v12 setType_];
    LOBYTE(v40) = 5;
    _s10Foundation4DateVACSEAAWlTm_0(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC95A0]);
    v28 = v33;
    v27 = v34;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v35;
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v36 + 8))(v28, v27);
    [v12 setEventDate_];

    outlined consume of Data._Representation(v32, v31);
    outlined consume of Data._Representation(v14, v38);
    (*(v29 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return v12;
}

void WorkoutAlertZone.localizedProgressDescription(with:formattingManager:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v56 = MEMORY[0x277D84F90];
  v5 = [v2 type];
  v6 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v7 = [*&v3[v6] primaryType];
  v8 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v9 = WorkoutAlertZone.targetDescription(zoneType:targetZonePrimaryType:workoutActivityType:)(v5, v7, [*&v3[v8] effectiveTypeIdentifier]);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v13 = objc_opt_self();
    v14 = MEMORY[0x20F2E6C00](v11, v12);

    v15 = [v13 splitStringOnNewlines_];

    _sSo23FIUIWorkoutActivityTypeCMaTm_1(0, &lazy cache variable for type metadata for NLWorkoutAlertUnitAnnotatedString, off_277D86CF0);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized Array.append<A>(contentsOf:)(v16);
  }

  v17 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  swift_beginAccess();
  v54 = MEMORY[0x20F2E8410](*&v3[v17]);
  v18 = [*&v3[v6] primaryType];
  v19 = v18;
  if (v18 == 3)
  {
    v24 = [objc_opt_self() localizedShortPowerUnitString];
    if (!v24)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    if (one-time initialization token for integerNumberFormatter == -1)
    {
      goto LABEL_12;
    }

LABEL_25:
    swift_once();
    goto LABEL_12;
  }

  if (v18 == 1)
  {
    v20 = [objc_opt_self() meterUnit];
    v21 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
    swift_beginAccess();
    v22 = [objc_opt_self() quantityWithUnit:v20 doubleValue:*&v3[v21]];

    v23 = [a2 localizedPaceStringWithDistance:v22 overDuration:v54 paceFormat:a1 unitStyle:1 decimalTrimmingMode:*&v3[v17] distanceType:1.0];
    if (!v23)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    goto LABEL_13;
  }

  v26 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType_];
  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = v26;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (one-time initialization token for integerNumberFormatter != -1)
  {
    goto LABEL_25;
  }

LABEL_12:
  swift_beginAccess();
  v28 = static NSNumberFormatter.integerNumberFormatter;
  v29 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  swift_beginAccess();
  v30 = *&v3[v29];
  v31 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v32 = v28;
  v33 = [v31 initWithDouble_];
  v23 = [v32 stringFromNumber_];

  if (v23)
  {
LABEL_13:
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    goto LABEL_15;
  }

  v34 = 0;
  v36 = 0xE000000000000000;
LABEL_15:
  v37 = qword_20B43CA78[*(*&v3[v6] + 16)];
  v38 = [a2 unitManager];
  if (!v38)
  {
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 paceDistanceUnitForDistanceType_];

  if ((v19 - 2) >= 2)
  {
    if (v19 != 1)
    {
      v41 = 0;
      v43 = 0xE000000000000000;
      goto LABEL_22;
    }

    v44 = [a2 localizedDistinguishingPaceUnitStringWithMetricType:v37 distanceType:*&v3[v17] distanceUnit:v40 paceFormat:v54 abbreviated:0 multiline:1];
    if (v44)
    {
      v45 = v44;
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v46;

      goto LABEL_22;
    }

LABEL_30:
    __break(1u);
    return;
  }

  v41 = WorkoutAlertZone.metricUnitString(workoutActivityType:)([*&v3[v8] effectiveTypeIdentifier]);
  v43 = v42;
LABEL_22:
  lazy protocol witness table accessor for type String and conformance String();
  v47 = StringProtocol.localizedUppercase.getter();
  v49 = v48;

  v50 = MEMORY[0x20F2E6C00](v34, v36);

  v51 = MEMORY[0x20F2E6C00](v47, v49);

  v52 = MEMORY[0x20F2E6C00](v41, v43);

  v53 = [objc_opt_self() stringWithValueString:v50 shortDescriptionString:v51 unitString:v52];

  MEMORY[0x20F2E6F30]();
  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t WorkoutAlertZone.targetDescription(zoneType:targetZonePrimaryType:workoutActivityType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  if (a2 > 1)
  {
    if (a2 == 3)
    {
      v6 = 0xE500000000000000;
      v7 = 0x5245574F50;
      if (a1 == 8)
      {
LABEL_17:
        v12 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
        swift_beginAccess();
        v13 = *(v3 + v12);
        swift_beginAccess();
        v14 = *(v13 + 24);
        swift_beginAccess();
        if (v14 == *(v13 + 32))
        {
          v15 = 0x5F45564F4241;
LABEL_21:
          v19 = v15 & 0xFFFFFFFFFFFFLL | 0x4154000000000000;
          v20 = 0xED00005F54454752;
LABEL_26:
          v39 = v19;
          v40 = v20;
          MEMORY[0x20F2E6D80](v7, v6);

          v8 = v39;
          v9 = v40;
          goto LABEL_27;
        }

        v21 = 0x5F45564F4241;
        goto LABEL_25;
      }

LABEL_6:
      if (a1 != 9)
      {
        if (a1 != 10)
        {

          return 0;
        }

        strcpy(v41, "WITHIN_RANGE_");
        HIWORD(v41[1]) = -4864;
        MEMORY[0x20F2E6D80](v7, v6);

        v8 = v41[0];
        v9 = v41[1];
LABEL_27:
        type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v23 = objc_opt_self();
        v24 = [v23 bundleForClass_];
        v25 = MEMORY[0x20F2E6C00](v8, v9);

        v26 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
        v27 = [v24 localizedStringForKey:v25 value:0 table:v26];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (v5 == 3)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_20B423A90;
          v30 = [v23 bundleForClass_];
          v31 = MEMORY[0x20F2E6C00](0x5245574F50, 0xE500000000000000);
          v32 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v33 = [v30 localizedStringForKey:v31 value:0 table:v32];
        }

        else if (v5 == 2)
        {
          v28 = MEMORY[0x20F2E8390](a3);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_20B423A90;
          if (v28)
          {
            v30 = [v23 bundleForClass_];
            v31 = MEMORY[0x20F2E6C00](0xD000000000000011, 0x800000020B461100);
          }

          else
          {
            v30 = [v23 bundleForClass_];
            v31 = MEMORY[0x20F2E6C00](0x5F45434E45444143, 0xEF474E494C435943);
          }

          v32 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v33 = [v30 localizedStringForKey:v31 value:0 table:v32];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_20B423A90;
          v30 = [v23 bundleForClass_];
          v31 = MEMORY[0x20F2E6C00](1162035536, 0xE400000000000000);
          v32 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
          v33 = [v30 localizedStringForKey:v31 value:0 table:v32];
        }

        v34 = v33;

        v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        *(v29 + 56) = MEMORY[0x277D837D0];
        *(v29 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v29 + 32) = v35;
        *(v29 + 40) = v37;
        v5 = String.init(format:_:)();

        return v5;
      }

      v16 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
      swift_beginAccess();
      v17 = *(v3 + v16);
      swift_beginAccess();
      v18 = *(v17 + 24);
      swift_beginAccess();
      if (v18 == *(v17 + 32))
      {
        v15 = 0x5F574F4C4542;
        goto LABEL_21;
      }

      v21 = 0x5F574F4C4542;
LABEL_25:
      v19 = v21 & 0xFFFFFFFFFFFFLL | 0x4152000000000000;
      v20 = 0xEC0000005F45474ELL;
      goto LABEL_26;
    }

    if (a2 == 2)
    {
      v7 = 0x5F45434E45444143;
      v10 = a1;
      v11 = MEMORY[0x20F2E8390](a3);
      a1 = v10;
      if (v11)
      {
        v7 = 0xD000000000000011;
        v6 = 0x800000020B461100;
      }

      else
      {
        v6 = 0xEF474E494C435943;
      }

      if (a1 == 8)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }
  }

  else
  {
    if (!a2)
    {
      return v5;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
      v7 = 1162035536;
      if (a1 == 8)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000069, 0x800000020B461220, "WorkoutCore/WorkoutAlertZone.swift", 34, 2, 184, 0);
  __break(1u);
  return result;
}

uint64_t WorkoutAlertZone.metricUnitString(workoutActivityType:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v4 = 0;
  v5 = *(*(v1 + v3) + 16);
  if (v5 > 4)
  {
    if (v5 == 5)
    {
      v10 = "AVERAGE_POWER_DESCRIPTION";
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
    }

    else
    {
      if (v5 != 6)
      {
        return v4;
      }

      v10 = "CADENCE_PEDOMETER";
      type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
      v11 = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
    }

    v8 = v12;
    v18 = v10 | 0x8000000000000000;
    v16 = 0xD000000000000019;
LABEL_18:
    v20 = MEMORY[0x20F2E6C00](v16, v18);
    v21 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
    v22 = [v8 localizedStringForKey:v20 value:0 table:v21];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v4;
  }

  if (v5 == 3)
  {
    v13 = MEMORY[0x20F2E8390](a1);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v14 = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    if (v13)
    {
      v9 = "CURRENT_CADENCE_DESCRIPTION_PEDOMETER";
      goto LABEL_11;
    }

    v19 = "CURRENT_CADENCE_DESCRIPTION_CYCLING";
LABEL_16:
    v15 = v19 - 32;
    v16 = 0xD000000000000023;
    goto LABEL_17;
  }

  if (v5 == 4)
  {
    v6 = MEMORY[0x20F2E8390](a1);
    type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
    v7 = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    if (v6)
    {
      v9 = "AVERAGE_CADENCE_DESCRIPTION_PEDOMETER";
LABEL_11:
      v15 = v9 - 32;
      v16 = 0xD000000000000025;
LABEL_17:
      v18 = v15 | 0x8000000000000000;
      goto LABEL_18;
    }

    v19 = "AVERAGE_CADENCE_DESCRIPTION_CYCLING";
    goto LABEL_16;
  }

  return v4;
}

uint64_t WorkoutAlertZone.spokenDescription(with:)(void *a1)
{
  [v1 type];
  v3 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_targetZone;
  swift_beginAccess();
  v4 = [*&v1[v3] primaryType];
  v5 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_activityType;
  swift_beginAccess();
  v6 = specialized WorkoutAlertZone.spokenDescription(zoneType:zonePrimaryType:workoutActivityType:)(v4, [*&v1[v5] effectiveTypeIdentifier]);
  v8 = v7;
  v9 = *&v1[v5];
  v10 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_alertValue;
  swift_beginAccess();
  v11 = *&v1[v10];
  v12 = OBJC_IVAR____TtC11WorkoutCore16WorkoutAlertZone_distanceType;
  swift_beginAccess();
  v13 = *&v1[v12];
  v14 = qword_20B43CA78[*(*&v1[v3] + 16)];
  if (v8)
  {
    v15 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
    v15 = 0;
  }

  v16 = v9;
  v17 = specialized static SpokenUtilities.spokenMetric(activityType:value:distanceType:metricType:formattingManager:)(v16, v13, v14, a1, v11);
  v19 = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20B4282E0;
  v21 = MEMORY[0x277D837D0];
  *(v20 + 56) = MEMORY[0x277D837D0];
  v22 = lazy protocol witness table accessor for type String and conformance String();
  *(v20 + 32) = v15;
  *(v20 + 40) = v8;
  *(v20 + 96) = v21;
  *(v20 + 104) = v22;
  *(v20 + 64) = v22;
  *(v20 + 72) = v17;
  *(v20 + 80) = v19;
  return String.init(format:_:)();
}

id WorkoutAlertZone.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutAlertZone.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutAlertZone();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *protocol witness for Decodable.init(from:) in conformance WorkoutAlertZone@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for WorkoutAlertZone());
  result = WorkoutAlertZone.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutAlertZone.CodingKeys and conformance WorkoutAlertZone.CodingKeys);
  }

  return result;
}

uint64_t _s10Foundation4DateVACSEAAWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t specialized WorkoutAlertZone.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutAlertZone.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized WorkoutAlertZone.spokenDescription(zoneType:zonePrimaryType:workoutActivityType:)(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      v5 = 0xE400000000000000;
      v4 = 1162035536;
      break;
    case 3:
      v5 = 0xE500000000000000;
      v4 = 0x5245574F50;
      break;
    case 2:
      v3 = MEMORY[0x20F2E8390](a2);
      if (v3)
      {
        v4 = 0xD000000000000011;
      }

      else
      {
        v4 = 0x5F45434E45444143;
      }

      if (v3)
      {
        v5 = 0x800000020B461100;
      }

      else
      {
        v5 = 0xEF474E494C435943;
      }

      break;
    default:
      return 0;
  }

  v6 = [v2 type];
  if (v6 == 8 || v6 == 9)
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_20B423A90;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v8 + 32) = v4;
    *(v8 + 40) = v5;
    goto LABEL_19;
  }

  if (v6 != 10)
  {

    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20B423A90;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
LABEL_19:
  v10 = String.init(format:_:)();
  v12 = v11;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = MEMORY[0x20F2E6C00](v10, v12);

  v16 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v18;
}

uint64_t getEnumTagSinglePayload for WorkoutAlertZone.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutAlertZone.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t specialized static HeartRateZonesPlatterMetricsProvider.metrics(workoutSettingsManager:foriOS:)(void *a1)
{
  v1 = [a1 supportedMetrics];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v3 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = (v3 & 0xC000000000000001) == 0;
    v5 = v3 == 0;
  }

  else
  {
    v3 = 0;
    v4 = 1;
    v5 = 1;
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = v3 + 56;
  v9 = 0x277CCA000;
  v25 = v5;
  v26 = v4;
  do
  {
    if (v5)
    {
      goto LABEL_7;
    }

    v10 = outlined read-only object #0 of static HeartRateZonesPlatterMetricsProvider.metrics(workoutSettingsManager:foriOS:)[v6 + 4];
    v11 = [objc_allocWithZone(*(v9 + 2992)) initWithUnsignedInteger_];
    v12 = v11;
    if (v4)
    {
      if (!*(v3 + 16))
      {

        goto LABEL_7;
      }

      v27 = v10;
      v13 = v7;
      type metadata accessor for NSNumber();
      v14 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v15 = -1 << *(v3 + 32);
      v16 = v14 & ~v15;
      if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
LABEL_5:

        v5 = v25;
        v4 = v26;
        v9 = 0x277CCA000uLL;
LABEL_6:
        v7 = v13;
        goto LABEL_7;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = *(*(v3 + 48) + 8 * v16);
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v5 = v25;
      v4 = v26;
      v9 = 0x277CCA000;
      v10 = v27;
    }

    else
    {
      v13 = v7;
      v20 = __CocoaSet.contains(_:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v7 = v13;
    v28 = v13;
    v21 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1);
      v7 = v28;
    }

    v23 = *(v7 + 16);
    v22 = *(v7 + 24);
    if (v23 >= v22 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
      v7 = v28;
    }

    *(v7 + 16) = v23 + 1;
    *(v7 + 8 * v23 + 32) = v21;
LABEL_7:
    ++v6;
  }

  while (v6 != 4);

  return v7;
}

uint64_t getEnumTagSinglePayload for HeartRateZonesPlatterMetricsProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for HeartRateZonesPlatterMetricsProvider(_WORD *result, int a2, int a3)
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

uint64_t NLSessionActivitySegmentMarker.segmentDescription(alertType:)(uint64_t a1)
{
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  if (a1 == 26)
  {
    v5 = 0xEE00544E454D4745;
  }

  else
  {
    v5 = 0xEC00000054494C50;
  }

  v6 = MEMORY[0x20F2E6C00](0x535F4E454B4F5053, v5);
  v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v8 = [v4 localizedStringForKey:v6 value:0 table:v7];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20B423A90;
  v10 = [v1 segmentIndex];
  v11 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v11;
  *(v9 + 32) = v10;
  v12 = String.init(format:_:)();

  return v12;
}

uint64_t NLSessionActivitySegmentMarker.spokenFullDescription(formattingManager:workoutActivityType:activityMoveMode:alertType:shouldSkipTime:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v81 = NLSessionActivitySegmentMarker.segmentDescription(alertType:)(a4);
  [v5 duration];
  v11 = [a1 stringWithDuration:6 durationFormat:?];
  if (v11)
  {
    v12 = v11;
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  v80 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v13, v15);
  v82 = v16;
  v17 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v17);

  MEMORY[0x20F2E6D80](92, 0xE100000000000000);
  v18 = [objc_allocWithZone(MEMORY[0x277D0A828]) initWithWorkoutActivityType:a2 activityMoveMode:a3];
  if (!v18)
  {
    __break(1u);
    goto LABEL_46;
  }

  v19 = v18;
  v78 = a5;
  v20 = [v18 supportedMetrics];

  if (v20)
  {
    type metadata accessor for NSNumber();
    lazy protocol witness table accessor for type NSNumber and conformance NSObject();
    v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    v23 = specialized Set.contains(_:)(v22, v21);

    if ((v23 & 1) == 0)
    {

      v54 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      v55 = specialized Set.contains(_:)(v54, v21);

      if ((v55 & 1) == 0)
      {
        v83 = v81;
        MEMORY[0x20F2E6D80](10, 0xE100000000000000);
        MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);

        v59 = v80;
        v58 = v82;
LABEL_44:
        MEMORY[0x20F2E6D80](v59, v58);

        return v83;
      }

      v56 = NLSessionActivitySegmentMarker.energySpokenDescription(formattingManager:)(a1);
      v58 = v57;
      v83 = v81;
      MEMORY[0x20F2E6D80](10, 0xE100000000000000);
      MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);
      MEMORY[0x20F2E6D80](v80, v82);

      MEMORY[0x20F2E6D80](10, 0xE100000000000000);
      MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);
      goto LABEL_42;
    }

    v24 = FIUIDistanceTypeForActivityType();
    v25 = [v6 distance];
    if (v25)
    {
      v26 = v25;
      v27 = [objc_opt_self() meterUnit];
      [v26 doubleValueForUnit_];
      v29 = v28;

      v30 = [a1 localizedNaturalScaleStringWithDistanceInMeters:v24 distanceType:3 unitStyle:0 usedUnit:2 decimalTrimmingMode:v29];
      if (v30)
      {
        v31 = v30;
        v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v32;

        v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
        LOBYTE(v31) = specialized Set.contains(_:)(v33, v21);

        if ((v31 & 1) == 0)
        {

          if (a5)
          {

            return v81;
          }

          v58 = v82;
          if (a4 == 26)
          {
            v83 = v81;
            MEMORY[0x20F2E6D80](10, 0xE100000000000000);
            MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);
            MEMORY[0x20F2E6D80](v76, v77);
          }

          else
          {

            v83 = v81;
            MEMORY[0x20F2E6D80](10, 0xE100000000000000);
          }

          MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);

          v59 = v80;
          goto LABEL_44;
        }

        if (a4 == 26)
        {
          v34 = 23;
        }

        else
        {
          v34 = 36;
        }

        v35 = [v6 distance];
        if (v35)
        {
          v36 = v35;

          [v6 duration];
          v38 = v37;
          v39 = MEMORY[0x20F2E8410](v24);
          if (v39 == 4)
          {
LABEL_17:
            v44 = MEMORY[0x20F2E8410](v24);
            if (v44 == 4)
            {
LABEL_20:
              v49 = [a1 localizedPaceAndUnitWithDistance:v36 overDuration:v44 paceFormat:v24 distanceType:3 unitStyle:2 decimalTrimmingMode:v38];
              if (v49)
              {
                v50 = v49;
                v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v53 = v52;

LABEL_30:
                v61 = v82;
                v62 = specialized static SpokenUtilities.spokenLocalizedString(metricType:paceFormat:activityType:)(v34, v39, 0);
                v64 = v63;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                v65 = swift_allocObject();
                *(v65 + 16) = xmmword_20B423A20;
                v66 = MEMORY[0x277D837D0];
                *(v65 + 56) = MEMORY[0x277D837D0];
                v67 = lazy protocol witness table accessor for type String and conformance String();
                *(v65 + 64) = v67;
                *(v65 + 32) = v62;
                *(v65 + 40) = v64;
                if (one-time initialization token for pausePunctuation != -1)
                {
                  v75 = v67;
                  swift_once();
                  v67 = v75;
                }

                v69 = static SpokenUtilities.pausePunctuation;
                v68 = *algn_27C72C6E8;
                *(v65 + 96) = v66;
                *(v65 + 104) = v67;
                *(v65 + 72) = v69;
                *(v65 + 80) = v68;
                *(v65 + 136) = v66;
                *(v65 + 144) = v67;
                *(v65 + 112) = v51;
                *(v65 + 120) = v53;

                v70 = String.init(format:_:)();
                v72 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v70, v71);
                v74 = v73;

                goto LABEL_36;
              }

LABEL_29:
              v51 = 0;
              v53 = 0xE000000000000000;
              goto LABEL_30;
            }

            v45 = [a1 unitManager];
            if (v45)
            {
              v46 = v45;
              [v45 paceWithDistance:v36 overDuration:v44 paceFormat:v24 distanceType:v38];
              v48 = v47;

              if (v48 <= 0.0)
              {
                goto LABEL_29;
              }

              goto LABEL_20;
            }

            goto LABEL_50;
          }

          v40 = [a1 unitManager];
          if (v40)
          {
            v41 = v40;
            [v40 paceWithDistance:v36 overDuration:v39 paceFormat:v24 distanceType:v38];
            v43 = v42;

            if (v43 <= 0.0)
            {

              v72 = 0;
              v74 = 0xE000000000000000;
              v61 = v82;
LABEL_36:
              MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);
              MEMORY[0x20F2E6D80](v72, v74);

              v56 = 10;
              v58 = 0xE100000000000000;
              if (v78)
              {

                v83 = v81;
LABEL_43:
                v59 = v56;
                goto LABEL_44;
              }

              if (a4 == 26)
              {
                v83 = v81;
                MEMORY[0x20F2E6D80](10, 0xE100000000000000);
                MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);
                MEMORY[0x20F2E6D80](v76, v77);
              }

              else
              {

                v83 = v81;
                MEMORY[0x20F2E6D80](10, 0xE100000000000000);
              }

              MEMORY[0x20F2E6D80](0x3D65737561705C1BLL, 0xE800000000000000);

              MEMORY[0x20F2E6D80](v80, v61);
LABEL_42:

              goto LABEL_43;
            }

            goto LABEL_17;
          }

LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_51:
  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000002FLL, 0x800000020B4612D0, "WorkoutCore/SegmentMarkerSpokenDescription.swift", 48, 2, 38, 0);
  __break(1u);
  return result;
}

uint64_t NLSessionActivitySegmentMarker.energySpokenDescription(formattingManager:)(void *a1)
{
  v3 = [v1 activeEnergyBurn];
  v4 = [a1 localizedStringWithActiveEnergy:v3 unitStyle:0];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = [a1 localizedLongActiveEnergyUnitStringWithTextCase_];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x20F2E6D80](32, 0xE100000000000000);
  MEMORY[0x20F2E6D80](v10, v12);

  v13 = specialized static SpokenUtilities.appendEndPhrasePunctuation(phrase:)(v5, v7);

  return v13;
}

uint64_t specialized NLSessionActivitySegmentMarker.spokenDescription(formattingManager:alertType:)(uint64_t a1)
{
  v1 = NLSessionActivitySegmentMarker.segmentDescription(alertType:)(a1);
  v3 = v2;
  type metadata accessor for WorkoutCoreLocalizationBundlePlaceHolder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = MEMORY[0x20F2E6C00](0xD000000000000015, 0x800000020B461320);
  v7 = MEMORY[0x20F2E6C00](0x617A696C61636F4CLL, 0xEB00000000656C62);
  v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20B4282E0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = v1;
  *(v12 + 40) = v3;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = v9;
  *(v12 + 80) = v11;

  return String.init(format:_:)();
}

unint64_t Apple_Workout_Core_HeartRateCurrentValueType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_HeartRateCurrentValueType.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_HeartRateCurrentValueType@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Enum.rawValue.getter in conformance Apple_Workout_Core_HeartRateCurrentValueType()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_HeartRateCurrentValueType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_HeartRateCurrentValueType(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_HeartRateCurrentValueType(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HeartRateCurrentValueType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_HeartRateCurrentValueType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_HeartRateCurrentValueType(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

double Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRate.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_HeartRateMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_HeartRateMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRate.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRate.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRate.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateMetricsPublisher.clearCurrentHeartRate()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

void Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRateValueType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.currentHeartRateValueType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

double Apple_Workout_Core_HeartRateMetricsPublisher.averageHeartRate.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.averageHeartRate.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_HeartRateMetricsPublisher.averageHeartRate.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_HeartRateMetricsPublisher.averageHeartRate.modify;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.averageHeartRate.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateMetricsPublisher.clearAverageHeartRate()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Apple_Workout_Core_HeartRateMetricsPublisher.maximumHeartRate.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 36);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.maximumHeartRate.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  v4 = v1 + *(result + 36);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_HeartRateMetricsPublisher.maximumHeartRate.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_HeartRateMetricsPublisher.maximumHeartRate.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateMetricsPublisher.clearMaximumHeartRate()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 36);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_LiveZones?(v1 + *(v7 + 40), v6);
  v8 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_LiveZones(v6, a1);
  }

  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = 0;
  UnknownStorage.init()();
  v10 = a1 + *(v8 + 28);
  *v10 = 0;
  *(v10 + 4) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v6, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  return result;
}

uint64_t outlined init with copy of Apple_Workout_Core_LiveZones?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t key path getter for Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones : Apple_Workout_Core_HeartRateMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_LiveZones?(a1 + *(v8 + 40), v7);
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_LiveZones(v7, a2);
  }

  *a2 = MEMORY[0x277D84F90];
  *(a2 + 8) = 0;
  UnknownStorage.init()();
  v11 = a2 + *(v9 + 28);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v7, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones : Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_LiveZones(a1, v8);
  v9 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 40);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(a2 + v9, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  outlined init with take of Apple_Workout_Core_LiveZones(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 40);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v1 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  outlined init with take of Apple_Workout_Core_LiveZones(a1, v1 + v3);
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 40);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_LiveZones?(v1 + v15, v8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    *(v14 + 8) = 0;
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 28);
    *v17 = 0;
    *(v17 + 4) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_LiveZones(v8, v14);
  }

  return Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones.modify;
}

void Apple_Workout_Core_HeartRateMetricsPublisher.liveHeartRateZones.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_LiveZones((*a1)[5], v4);
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v9 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    outlined init with take of Apple_Workout_Core_LiveZones(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_LiveZones(v5);
  }

  else
  {
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v9 + v3, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    outlined init with take of Apple_Workout_Core_LiveZones(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t outlined init with copy of Apple_Workout_Core_LiveZones(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_LiveZones(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Apple_Workout_Core_HeartRateMetricsPublisher.hasLiveHeartRateZones.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_LiveZones?(v0 + *(v5 + 40), v4);
  v6 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v4, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_HeartRateMetricsPublisher.clearLiveHeartRateZones()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 40);
  _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v0 + v1, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  UnknownStorage.init()();
  v3 = a1 + v2[7];
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = a1 + v2[8];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + v2[9];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v2[10];
  v7 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t static Apple_Workout_Core_HeartRateCurrentValueType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
LABEL_4:
            type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 5:
            dispatch thunk of Decoder.decodeSingularBoolField(value:)();
            break;
          case 6:
            closure #6 in Apple_Workout_Core_HeartRateMetricsPublisher.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_4;
          case 2:
            lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType();
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
          case 3:
            goto LABEL_4;
        }
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #6 in Apple_Workout_Core_HeartRateMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  type metadata accessor for Apple_Workout_Core_LiveZones(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones, &protocol conformance descriptor for Apple_Workout_Core_LiveZones);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType();
      dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    }

    closure #2 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    closure #3 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (*(v3 + 9) == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #4 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateCurrentValueType and conformance Apple_Workout_Core_HeartRateCurrentValueType);
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #4 in Apple_Workout_Core_HeartRateMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  outlined init with copy of Apple_Workout_Core_LiveZones?(a1 + *(v14 + 40), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v8, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  }

  outlined init with take of Apple_Workout_Core_LiveZones(v8, v13);
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_LiveZones and conformance Apple_Workout_Core_LiveZones, type metadata accessor for Apple_Workout_Core_LiveZones, &protocol conformance descriptor for Apple_Workout_Core_LiveZones);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_LiveZones(v13);
}

Swift::Int Apple_Workout_Core_HeartRateMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_HeartRateMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_HeartRateMetricsPublisher@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  UnknownStorage.init()();
  v4 = a1[8];
  v5 = a2 + a1[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[9];
  v8 = a1[10];
  v9 = a2 + v7;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a2 + v8, 1, 1, v10);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_HeartRateMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_HeartRateMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_HeartRateCurrentValueType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_HeartRateMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher, type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_HeartRateMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_HeartRateMetricsPublisher.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_LiveZones(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMR);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Apple_Workout_Core_HeartRateMetricsPublisher(0);
  v18 = v17[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      goto LABEL_35;
    }
  }

  v23 = *a1;
  v24 = *a2;
  if (*(a1 + 8))
  {
    v23 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v24)
    {
      if (v23 != 1)
      {
        goto LABEL_35;
      }
    }

    else if (v23)
    {
      goto LABEL_35;
    }
  }

  else if (v23 != v24)
  {
    goto LABEL_35;
  }

  v25 = v17[8];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = *(a2 + v25 + 8);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v26 != *v28)
    {
      LOBYTE(v29) = 1;
    }

    if (v29)
    {
      goto LABEL_35;
    }
  }

  v30 = v17[9];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_35;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v34) = 1;
    }

    if (v34)
    {
      goto LABEL_35;
    }
  }

  if (*(a1 + 9) == *(a2 + 9))
  {
    v35 = v17[10];
    v36 = *(v13 + 48);
    outlined init with copy of Apple_Workout_Core_LiveZones?(a1 + v35, v16);
    outlined init with copy of Apple_Workout_Core_LiveZones?(a2 + v35, &v16[v36]);
    v37 = *(v5 + 48);
    if (v37(v16, 1, v4) == 1)
    {
      if (v37(&v16[v36], 1, v4) == 1)
      {
        _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v16, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
LABEL_38:
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        return v38 & 1;
      }

      goto LABEL_34;
    }

    outlined init with copy of Apple_Workout_Core_LiveZones?(v16, v12);
    if (v37(&v16[v36], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_LiveZones(v12);
LABEL_34:
      _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v16, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSg_ADtMR);
      goto LABEL_35;
    }

    outlined init with take of Apple_Workout_Core_LiveZones(&v16[v36], v8);
    v40 = static Apple_Workout_Core_LiveZones.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_LiveZones(v8);
    outlined destroy of Apple_Workout_Core_LiveZones(v12);
    _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(v16, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMd, &_s11WorkoutCore06Apple_a1_B10_LiveZonesVSgMR);
    if (v40)
    {
      goto LABEL_38;
    }
  }

LABEL_35:
  v38 = 0;
  return v38 & 1;
}

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_HeartRateCurrentValueType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_HeartRateCurrentValueType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_HeartRateCurrentValueType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B26_HeartRateCurrentValueTypeOGMd, &_sSay11WorkoutCore06Apple_a1_B26_HeartRateCurrentValueTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_HeartRateCurrentValueType] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_HeartRateCurrentValueType(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_HeartRateCurrentValueType(uint64_t result, int a2, int a3)
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

uint64_t getEnumTag for Apple_Workout_Core_HeartRateCurrentValueType(uint64_t a1)
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

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_HeartRateCurrentValueType(uint64_t result, int a2)
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

void type metadata completion function for Apple_Workout_Core_HeartRateMetricsPublisher(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_Core_LiveZones?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_Core_LiveZones?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Workout_Core_LiveZones?)
  {
    type metadata accessor for Apple_Workout_Core_LiveZones(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Workout_Core_LiveZones?);
    }
  }
}

uint64_t _s11WorkoutCore06Apple_a1_B10_LiveZonesVSgWOhTm_0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateMetricsPublisher and conformance Apple_Workout_Core_HeartRateMetricsPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DataLinkClient.mirroredClientDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*DataLinkClient.mirroredClientDelegate.modify(uint64_t *a1))()
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
  return DataLinkClient.mirroredClientDelegate.modify;
}

void key path setter for DataLinkClient.activationError : DataLinkClient(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

void *DataLinkClient.activationError.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void DataLinkClient.activationError.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t key path getter for DataLinkClient.presenceDidChangeHandler : DataLinkClient@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = _sSbIeg_Iegyg_SbxRi_zRi0_zlyytIsegr_ytIegnnr_TRTA;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AED3EDC(v4, v5);
}

double _sSbIeg_Iegyg_SbxRi_zRi0_zlyytIsegr_ytIegnnr_TR(unsigned __int8 *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, _sytIegr_Ieg_TRTA_2, v7);

  return result;
}

uint64_t key path setter for DataLinkClient.presenceDidChangeHandler : DataLinkClient(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = _sSbxRi_zRi0_zlyytIsegr_ytIegnnr_SbIeg_Iegyg_TRTA;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_20AED3EDC(v3, v4);
  return _sSbIeg_Iegyg_SgWOe_0(v8, v9);
}

double _sSbxRi_zRi0_zlyytIsegr_ytIegnnr_SbIeg_Iegyg_TR(char a1, uint64_t a2, uint64_t a3, void (*a4)(char *, void *))
{
  v10 = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[0] = _sIeg_ytIegr_TRTA_2;
  v9[1] = v7;

  a4(&v10, v9);

  return result;
}

uint64_t DataLinkClient.presenceDidChangeHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_20AED3EDC(v1, *(v0 + 48));
  return v1;
}

uint64_t DataLinkClient.presenceDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _sSbIeg_Iegyg_SgWOe_0(v5, v6);
}

uint64_t key path getter for DataLinkClient.notificationHandler : DataLinkClient@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed WorkoutNotification) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AED3EDC(v4, v5);
}

uint64_t key path setter for DataLinkClient.notificationHandler : DataLinkClient(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed WorkoutNotification) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 56);
  v9 = *(v7 + 64);
  *(v7 + 56) = v6;
  *(v7 + 64) = v5;
  sub_20AED3EDC(v3, v4);
  return _sSbIeg_Iegyg_SgWOe_0(v8, v9);
}

uint64_t DataLinkClient.notificationHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_20AED3EDC(v1, *(v0 + 64));
  return v1;
}

uint64_t DataLinkClient.notificationHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return _sSbIeg_Iegyg_SgWOe_0(v5, v6);
}

uint64_t key path getter for DataLinkClient.metricsUpdateHandler : DataLinkClient@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 72);
  v5 = *(v3 + 80);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed MetricsPublisher) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AED3EDC(v4, v5);
}

uint64_t key path setter for DataLinkClient.metricsUpdateHandler : DataLinkClient(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed MetricsPublisher) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 72);
  v9 = *(v7 + 80);
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;
  sub_20AED3EDC(v3, v4);
  return _sSbIeg_Iegyg_SgWOe_0(v8, v9);
}

uint64_t DataLinkClient.metricsUpdateHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_20AED3EDC(v1, *(v0 + 80));
  return v1;
}

uint64_t DataLinkClient.metricsUpdateHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return _sSbIeg_Iegyg_SgWOe_0(v5, v6);
}

uint64_t DataLinkClient.sessionUUID.getter()
{
  v1 = *(v0 + 104);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 72))(ObjectType);
}

void *DataLinkClient.__allocating_init(metricsPublisher:)(void *a1)
{
  swift_allocObject();
  v2 = specialized DataLinkClient.init(metricsPublisher:)(a1);

  return v2;
}

void *DataLinkClient.init(metricsPublisher:)(void *a1)
{
  v2 = specialized DataLinkClient.init(metricsPublisher:)(a1);

  return v2;
}

double closure #1 in DataLinkClient.init(metricsPublisher:)(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  v15 = objc_opt_self();
  v16 = a1;

  if ([v15 isMainThread])
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      swift_beginAccess();
      v19 = *(v18 + 56);
      v20 = *(v18 + 64);
      sub_20AED3EDC(v19, v20);

      if (v19)
      {
        v19(v16);
        _sSbIeg_Iegyg_SgWOe_0(v19, v20);
      }
    }
  }

  else
  {
    type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v28 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = partial apply for closure #1 in closure #1 in DataLinkClient.init(metricsPublisher:);
    *(v21 + 24) = v14;
    aBlock[4] = partial apply for closure #1 in static DataLinkClient.onMainThread(closure:);
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_97_0;
    v26 = _Block_copy(aBlock);
    v27 = v9;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v25 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v26;
    v23 = v28;
    MEMORY[0x20F2E7580](0, v12, v7, v26);
    _Block_release(v22);

    (*(v4 + 8))(v7, v3);
    (*(v27 + 8))(v12, v25);
  }

  return result;
}

void closure #1 in closure #1 in DataLinkClient.init(metricsPublisher:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v6 = *(v4 + 56);
    v5 = *(v4 + 64);
    sub_20AED3EDC(v6, v5);

    if (v6)
    {
      v6(a2);
      _sSbIeg_Iegyg_SgWOe_0(v6, v5);
    }
  }
}

void closure #2 in DataLinkClient.init(metricsPublisher:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static WOLog.dataLink);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 67109378;
    *(v10 + 4) = a1 & 1;
    *(v10 + 8) = 2112;
    v12 = [objc_opt_self() currentThread];
    *(v10 + 10) = v12;
    *v11 = v12;
    _os_log_impl(&dword_20AEA4000, v8, v9, "Presence of host is now %{BOOL}d, thread: %@", v10, 0x12u);
    outlined destroy of DataLinkMirroredClientExpectation?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v11, -1, -1);
    MEMORY[0x20F2E9420](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v16 = *(v14 + 40);
    v15 = *(v14 + 48);
    sub_20AED3EDC(v16, v15);

    if (v16)
    {
      v16(a1 & 1, a2, a3);
      _sSbIeg_Iegyg_SgWOe_0(v16, v15);
    }
  }
}

void closure #3 in DataLinkClient.init(metricsPublisher:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v6 = *(v4 + 72);
    v5 = *(v4 + 80);
    sub_20AED3EDC(v6, v5);

    if (v6)
    {
      v6(a1);
      _sSbIeg_Iegyg_SgWOe_0(v6, v5);
    }
  }
}

id DataLinkClient.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 120);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = [*(*(v1 + 56) + ((v8 << 9) | (8 * v9))) invalidate])
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      *(v0 + 120) = MEMORY[0x277D84F98];

      outlined destroy of weak DataLinkMirroredClientDelegate?(v0 + 16);

      _sSbIeg_Iegyg_SgWOe_0(*(v0 + 40), *(v0 + 48));
      _sSbIeg_Iegyg_SgWOe_0(*(v0 + 56), *(v0 + 64));
      _sSbIeg_Iegyg_SgWOe_0(*(v0 + 72), *(v0 + 80));

      swift_unknownObjectRelease();

      return v0;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t DataLinkClient.__deallocating_deinit()
{
  DataLinkClient.deinit();

  return swift_deallocClassInstance();
}

void closure #1 in DataLinkClient.activateLink()()
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
    _os_log_impl(&dword_20AEA4000, oslog, v1, "Client data link activated", v2, 2u);
    MEMORY[0x20F2E9420](v2, -1, -1);
  }
}

uint64_t DataLinkClient.activateLink(activated:)(uint64_t a1, uint64_t a2)
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
    *v9 = 0;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Activating client data link", v9, 2u);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  v10 = *(v3 + 104);
  ObjectType = swift_getObjectType();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = *(*(v10 + 8) + 8);
  v14 = *(v13 + 8);
  swift_unknownObjectRetain();

  v14(partial apply for closure #1 in DataLinkClient.activateLink(activated:), v12, a1, a2, ObjectType, v13);
  swift_unknownObjectRelease();
}

double closure #1 in DataLinkClient.activateLink(activated:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = a1;
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static WOLog.dataLink);
      v8 = a1;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v9, v10))
      {

        goto LABEL_13;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_20AEA4000, v9, v10, "Failed to activate connection: %@", v11, 0xCu);
      outlined destroy of DataLinkMirroredClientExpectation?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x20F2E9420](v12, -1, -1);
      MEMORY[0x20F2E9420](v11, -1, -1);
    }

    else
    {
      if (one-time initialization token for dataLink != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static WOLog.dataLink);
      v9 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_20AEA4000, v9, v16, "Did activate link successfully", v17, 2u);
        MEMORY[0x20F2E9420](v17, -1, -1);
      }
    }

LABEL_13:
    swift_beginAccess();
    v18 = *(v5 + 32);
    *(v5 + 32) = a1;

    v19 = a1;
  }

  return result;
}

uint64_t DataLinkClient.send(command:acknowledged:)(char *a1, uint64_t a2, uint64_t a3)
{
  v18 = type metadata accessor for UUID();
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  UUID.init()();
  v12 = *(v3 + 104);
  ObjectType = swift_getObjectType();
  v19 = v11;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(v12 + 8);
  v16 = *(v15 + 40);

  v16(&v19, v10, partial apply for closure #1 in DataLinkClient.send(command:acknowledged:), v14, ObjectType, v15);

  return (*(v7 + 8))(v10, v18);
}

Swift::Void __swiftcall DataLinkClient.endSession()()
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
    _os_log_impl(&dword_20AEA4000, v3, v4, "[mirrored] endSession", v5, 2u);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  v6 = *(v1 + 104);
  ObjectType = swift_getObjectType();
  (*(v6 + 72))(closure #1 in DataLinkClient.endSession(), 0, ObjectType, v6);
}

void closure #1 in DataLinkClient.endSession()(char a1, void *a2)
{
  if (one-time initialization token for dataLink != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static WOLog.dataLink);
  v5 = a2;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2112;
    if (a2)
    {
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 10) = v10;
    *v8 = v11;
    _os_log_impl(&dword_20AEA4000, oslog, v6, "[mirrored] endSession completion (success: %{BOOL}d, error: %@)", v7, 0x12u);
    outlined destroy of DataLinkMirroredClientExpectation?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }
}

uint64_t DataLinkClient.sendMirroredClient(with:perform:)(uint64_t a1, uint64_t (*a2)(void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for DataLinkMirroredClientExpectation(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DataLinkMirroredClientExpectation?(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of DataLinkMirroredClientExpectation?(v8, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
    return a2(*(v2 + 96), *(v2 + 104));
  }

  else
  {
    outlined init with take of DataLinkMirroredClientExpectation(v8, v13, type metadata accessor for DataLinkMirroredClientExpectation);
    DataLinkClient.addClientExpectation(_:)(v13);
    a2(*(v2 + 96), *(v2 + 104));
    return outlined destroy of DataLinkMirroredClientExpectation(v13, type metadata accessor for DataLinkMirroredClientExpectation);
  }
}

void DataLinkClient.addClientExpectation(_:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataLinkMirroredClientExpectation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4 - 8, v7);
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v70 = &v65 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = (&v65 - v14);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v65 - v17;
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
    outlined init with copy of DataLinkMirroredClientExpectation(a1, v18, type metadata accessor for DataLinkMirroredClientExpectation);
    outlined init with copy of DataLinkMirroredClientExpectation(a1, v15, type metadata accessor for DataLinkMirroredClientExpectation);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v67 = v25;
      v27 = v26;
      v68 = swift_slowAlloc();
      v72 = v68;
      *v27 = 136315394;
      v66 = v24;
      v28 = DataLinkMirroredClientExpectation.description.getter();
      v69 = v5;
      v30 = v29;
      outlined destroy of DataLinkMirroredClientExpectation(v18, type metadata accessor for DataLinkMirroredClientExpectation);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v72);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      aBlock = *v15;
      lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      p_cache = (&OBJC_METACLASS____TtC11WorkoutCore31MultiModalityWidgetDataProvider + 16);
      outlined destroy of DataLinkMirroredClientExpectation(v15, type metadata accessor for DataLinkMirroredClientExpectation);
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v72);
      v5 = v69;

      *(v27 + 14) = v35;
      v36 = v66;
      _os_log_impl(&dword_20AEA4000, v66, v67, "[mirrored] addClientExpectation (%s) is replacing existing expected (%s)", v27, 0x16u);
      v37 = v68;
      swift_arrayDestroy();
      MEMORY[0x20F2E9420](v37, -1, -1);
      MEMORY[0x20F2E9420](v27, -1, -1);
    }

    else
    {

      outlined destroy of DataLinkMirroredClientExpectation(v15, type metadata accessor for DataLinkMirroredClientExpectation);
      outlined destroy of DataLinkMirroredClientExpectation(v18, type metadata accessor for DataLinkMirroredClientExpectation);
    }
  }

  v38 = objc_opt_self();
  v39 = *(a1 + 2);
  v40 = swift_allocObject();
  swift_weakInit();
  v41 = p_cache;
  v42 = v70;
  outlined init with copy of DataLinkMirroredClientExpectation(a1, v70, type metadata accessor for DataLinkMirroredClientExpectation);
  v43 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v40;
  outlined init with take of DataLinkMirroredClientExpectation(v42, v44 + v43, type metadata accessor for DataLinkMirroredClientExpectation);
  v76 = partial apply for closure #1 in DataLinkClient.addClientExpectation(_:);
  v77 = v44;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v74 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v75 = &block_descriptor_44;
  v45 = _Block_copy(&aBlock);

  v46 = [v38 scheduledTimerWithTimeInterval:0 repeats:v45 block:v39];
  _Block_release(v45);
  v47 = *a1;
  v48 = a1[1];
  swift_beginAccess();
  v49 = v46;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(v2 + 120);
  *(v2 + 120) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v49, v47, v48, isUniquelyReferenced_nonNull_native);
  *(v2 + 120) = v72;
  swift_endAccess();
  if (v41[310] != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static WOLog.dataLink);
  v52 = v71;
  outlined init with copy of DataLinkMirroredClientExpectation(a1, v71, type metadata accessor for DataLinkMirroredClientExpectation);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&aBlock = v56;
    *v55 = 136315394;
    v57 = DataLinkMirroredClientExpectation.description.getter();
    v59 = v58;
    outlined destroy of DataLinkMirroredClientExpectation(v52, type metadata accessor for DataLinkMirroredClientExpectation);
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, &aBlock);

    *(v55 + 4) = v60;
    *(v55 + 12) = 2080;
    type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();

    v61 = Dictionary.Keys.description.getter();
    v63 = v62;

    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v63, &aBlock);

    *(v55 + 14) = v64;
    _os_log_impl(&dword_20AEA4000, v53, v54, "[mirrored] addClientExpectation (%s) added, all expected %s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v56, -1, -1);
    MEMORY[0x20F2E9420](v55, -1, -1);
  }

  else
  {

    outlined destroy of DataLinkMirroredClientExpectation(v52, type metadata accessor for DataLinkMirroredClientExpectation);
  }
}

void closure #1 in DataLinkClient.addClientExpectation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v12 = type metadata accessor for DataLinkMirroredClientExpectation(0);
  v89 = *(v12 - 8);
  v13 = *(v89 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v90 = &v78[-v18];
  v20 = MEMORY[0x28223BE20](v17, v19);
  v22 = &v78[-v21];
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v78[-v24];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v82 = v9;
    v83 = v7;
    v84 = v8;
    v88 = &v78[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v85 = v4;
    v86 = v3;
    swift_beginAccess();
    v28 = *(v27 + 120);
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

    *(v27 + 120) = MEMORY[0x277D84F98];

    swift_beginAccess();
    v37 = swift_unknownObjectWeakLoadStrong();
    if (v37)
    {
      v34 = v37;
      v33 = *(v27 + 24);
      v31 = v91;
      if (one-time initialization token for dataLink == -1)
      {
LABEL_14:
        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static WOLog.dataLink);
        outlined init with copy of DataLinkMirroredClientExpectation(v31, v22, type metadata accessor for DataLinkMirroredClientExpectation);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();

        v41 = os_log_type_enabled(v39, v40);
        v81 = v34;
        if (v41)
        {
          v42 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          aBlock[0] = v80;
          *v42 = 136315394;
          v79 = v40;
          v43 = DataLinkMirroredClientExpectation.description.getter();
          v44 = v31;
          v45 = v33;
          v47 = v46;
          outlined destroy of DataLinkMirroredClientExpectation(v22, type metadata accessor for DataLinkMirroredClientExpectation);
          v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v47, aBlock);
          v33 = v45;
          v31 = v44;

          *(v42 + 4) = v48;
          *(v42 + 12) = 2080;
          type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
          lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
          v49 = Dictionary.Keys.description.getter();
          v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, aBlock);

          *(v42 + 14) = v51;
          _os_log_impl(&dword_20AEA4000, v39, v79, "[mirrored] call failedClientExpectation (%s) due timeout, cleaned up all expected %s", v42, 0x16u);
          v52 = v80;
          swift_arrayDestroy();
          MEMORY[0x20F2E9420](v52, -1, -1);
          v53 = v42;
          v34 = v81;
          MEMORY[0x20F2E9420](v53, -1, -1);
        }

        else
        {

          outlined destroy of DataLinkMirroredClientExpectation(v22, type metadata accessor for DataLinkMirroredClientExpectation);
        }

        v65 = v88;
        v64 = v89;
        v66 = v90;
        outlined init with copy of DataLinkMirroredClientExpectation(v31, v90, type metadata accessor for DataLinkMirroredClientExpectation);
        outlined init with copy of DataLinkMirroredClientExpectation(v66, v65, type metadata accessor for DataLinkMirroredClientExpectation);
        v67 = (*(v64 + 80) + 32) & ~*(v64 + 80);
        v68 = swift_allocObject();
        *(v68 + 16) = v34;
        *(v68 + 24) = v33;
        outlined init with take of DataLinkMirroredClientExpectation(v66, v68 + v67, type metadata accessor for DataLinkMirroredClientExpectation);
        v69 = objc_opt_self();
        swift_unknownObjectRetain();
        if ([v69 isMainThread])
        {
          ObjectType = swift_getObjectType();
          (*(v33 + 56))(v65, ObjectType, v33);

          swift_unknownObjectRelease();
          v71 = v65;
        }

        else
        {
          type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v91 = static OS_dispatch_queue.main.getter();
          v72 = swift_allocObject();
          *(v72 + 16) = partial apply for closure #2 in closure #1 in DataLinkClient.addClientExpectation(_:);
          *(v72 + 24) = v68;
          aBlock[4] = _s11WorkoutCore17DispatchUtilitiesC22ensureMainQueueOrAsync5blockyyyc_tFZyyScMYccfU_TA_6;
          aBlock[5] = v72;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
          aBlock[3] = &block_descriptor_83;
          v73 = _Block_copy(aBlock);

          v74 = v87;
          static DispatchQoS.unspecified.getter();
          aBlock[0] = MEMORY[0x277D84F90];
          lazy protocol witness table accessor for type DataLinkError and conformance DataLinkError(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          _sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          v75 = v83;
          v76 = v86;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v77 = v91;
          MEMORY[0x20F2E7580](0, v74, v75, v73);
          _Block_release(v73);

          swift_unknownObjectRelease();

          (*(v85 + 8))(v75, v76);
          (*(v82 + 8))(v74, v84);
          v71 = v88;
        }

        goto LABEL_25;
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
    outlined init with copy of DataLinkMirroredClientExpectation(v54, v25, type metadata accessor for DataLinkMirroredClientExpectation);
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      aBlock[0] = v59;
      *v58 = 136315138;
      v60 = DataLinkMirroredClientExpectation.description.getter();
      v62 = v61;
      outlined destroy of DataLinkMirroredClientExpectation(v25, type metadata accessor for DataLinkMirroredClientExpectation);
      v63 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, aBlock);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_20AEA4000, v56, v57, "[mirrored] cannot call failedClientExpectation (%s), mirroredClientDelegate is not set", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x20F2E9420](v59, -1, -1);
      MEMORY[0x20F2E9420](v58, -1, -1);

      return;
    }

    v71 = v25;
LABEL_25:
    outlined destroy of DataLinkMirroredClientExpectation(v71, type metadata accessor for DataLinkMirroredClientExpectation);
  }
}

void DataLinkClient.receivedMirroredHostClearExpected(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  isa = v2[-1].isa;
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v7 = a1[1];
  type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
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
        lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v32);

        *(v12 + 4) = v16;
        *(v12 + 12) = 2080;
        type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
        lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();

        v17 = Dictionary.Keys.description.getter();
        v19 = v18;

        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v32);

        *(v12 + 14) = v20;
        _os_log_impl(&dword_20AEA4000, v10, v11, "[mirrored] assertReceivedMirroredHostMessage fulfilled client expectation for (%s), all expected %s", v12, 0x16u);
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
    lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v32);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
    lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();

    v28 = Dictionary.Keys.description.getter();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v32);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_20AEA4000, v2, v22, "[mirrored] assertReceivedMirroredHostMessage no client expectation for (%s), all expected %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v24, -1, -1);
    MEMORY[0x20F2E9420](v23, -1, -1);
  }

LABEL_11:
}

Swift::Void __swiftcall DataLinkClient.removeAllClientExpectations()()
{
  v1 = v0;
  if (one-time initialization token for dataLink != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static WOLog.dataLink);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19[0] = v6;
      *v5 = 136315138;
      swift_beginAccess();
      type metadata accessor for NSTimer(0, &lazy cache variable for type metadata for NSTimer, 0x277CBEBB8);
      lazy protocol witness table accessor for type DataLinkMirroredClientExpected and conformance DataLinkMirroredClientExpected();

      v7 = Dictionary.Keys.description.getter();
      v9 = v8;

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v19);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_20AEA4000, v3, v4, "[mirrored] removeAllClientExpectations %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x20F2E9420](v6, -1, -1);
      MEMORY[0x20F2E9420](v5, -1, -1);
    }

    swift_beginAccess();
    v11 = *(v1 + 120);
    if (!*(v11 + 16))
    {
      break;
    }

    v12 = 1 << *(v11 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v11 + 64);
    v15 = (v12 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_13:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      [*(*(v11 + 56) + ((v17 << 9) | (8 * v18))) invalidate];
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        *(v1 + 120) = MEMORY[0x277D84F98];

        return;
      }

      v14 = *(v11 + 64 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }
}

double DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMd, &_s11WorkoutCore33DataLinkMirroredClientExpectationVSgMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v28 - v15;
  v17 = *a1;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  v19 = swift_allocObject();
  swift_weakInit();
  outlined init with copy of DataLinkMirroredClientExpectation?(a2, v12);
  type metadata accessor for MainActor();

  v20 = static MainActor.shared.getter();
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = v21 + v9;
  v23 = (v21 + v9) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  v24[2] = v20;
  v24[3] = v25;
  v24[4] = v19;
  outlined init with take of DataLinkMirroredClientExpectation?(v12, v24 + v21);
  *(v24 + v22) = v17;
  v26 = v24 + v23;
  *(v26 + 1) = v29;
  *(v26 + 2) = a4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:), v24);

  return result;
}

uint64_t closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 88) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 40) = a1;
  type metadata accessor for MainActor();
  *(v8 + 80) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DataLinkClient.sendMirroredClientCommand(_:clientExpectation:acknowledged:), v10, v9);
}