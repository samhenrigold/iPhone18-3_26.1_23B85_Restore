unint64_t lazy protocol witness table accessor for type [ActivityTypeListItem] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore20ActivityTypeListItemCGMd, &_sSay11WorkoutCore20ActivityTypeListItemCGMR);
    lazy protocol witness table accessor for type ActivityTypeListItem and conformance ActivityTypeListItem();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ActivityTypeListItem] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActivityTypeListItem and conformance ActivityTypeListItem()
{
  result = lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem;
  if (!lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem)
  {
    type metadata accessor for ActivityTypeListItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActivityTypeListItem and conformance ActivityTypeListItem);
  }

  return result;
}

void specialized CompoundActivityTypeProvider.handleDomainAccessorRefresh()()
{
  if (one-time initialization token for activityPicker != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static WOLog.activityPicker);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_20AEA4000, v1, v2, "WONPSDomainAccessor refreshed, posting ActivityPickerListStore sync notification", v3, 2u);
    MEMORY[0x20F2E9420](v3, -1, -1);
  }

  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = *MEMORY[0x277CBECE8];
  v6 = kCFStringEncodingASCII.getter();
  v7 = String.utf8CString.getter();
  name = CFStringCreateWithCString(v5, (v7 + 32), v6);

  if (name)
  {
    CFNotificationCenterPostNotification(v4, name, 0, 0, 1u);
  }

  else
  {
    __break(1u);
  }
}

uint64_t _sSo8NSObjectCMaTm_1(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t _s10Foundation4DateVSgWOhTm_9(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

id GCDTimer.init(timeInterval:queue:completion:)(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v56 = a2;
  v57 = a3;
  v63 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v55 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchTimeInterval();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v52 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for DispatchTime();
  v50 = *(v51 - 8);
  v15 = MEMORY[0x28223BE20](v51, v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v49 = &v47 - v19;
  v20 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source;
  *(v4 + OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source) = 0;
  type metadata accessor for OS_dispatch_source();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, _sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, _sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v26 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (*(v21 + 8))(v24, v20);
  v27 = v48;
  *&v48[v25] = v26;
  v28 = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v29 = type metadata accessor for GCDTimer();
  v65.receiver = v28;
  v65.super_class = v29;
  v30 = objc_msgSendSuper2(&v65, sel_init);
  ObjectType = swift_getObjectType();
  v32 = v30;
  static DispatchTime.now()();
  v33 = v49;
  + infix(_:_:)();
  v34 = *(v50 + 8);
  v35 = v51;
  v34(v17, v51);
  v36 = v52;
  *v52 = 50;
  v38 = v53;
  v37 = v54;
  (*(v53 + 104))(v36, *MEMORY[0x277D85178], v54);
  MEMORY[0x20F2E76A0](v33, v36, ObjectType, INFINITY);
  (*(v38 + 8))(v36, v37);
  v34(v33, v35);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  v41 = v56;
  v42 = v57;
  v40[2] = v39;
  v40[3] = v41;
  v40[4] = v42;
  aBlock[4] = partial apply for closure #1 in GCDTimer.init(timeInterval:queue:completion:);
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_46;
  v43 = _Block_copy(aBlock);

  v44 = v55;
  static DispatchQoS.unspecified.getter();
  v45 = v58;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v43);

  swift_unknownObjectRelease();

  (*(v61 + 8))(v45, v62);
  (*(v59 + 8))(v44, v60);

  return v32;
}

void closure #1 in GCDTimer.init(timeInterval:queue:completion:)(uint64_t a1, void (*a2)(char *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source;
    if (*(Strong + OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      OS_dispatch_source.cancel()();
      swift_unknownObjectRelease();
      *&v4[v5] = 0;
      swift_unknownObjectRelease();
    }

    a2(v4);
  }
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id GCDTimer.__deallocating_deinit(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source;
  if (*&v1[OBJC_IVAR____TtC11WorkoutCore8GCDTimer_source])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.cancel()();
    swift_unknownObjectRelease();
    *&v1[v2] = 0;
    swift_unknownObjectRelease();
  }

  v4.receiver = v1;
  v4.super_class = type metadata accessor for GCDTimer();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t type metadata accessor for OS_dispatch_source()
{
  result = lazy cache variable for type metadata for OS_dispatch_source;
  if (!lazy cache variable for type metadata for OS_dispatch_source)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_source);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type [OS_dispatch_source.TimerFlags] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for RaceLocation(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RaceLocation(uint64_t result, int a2, int a3)
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

double key path getter for MachineElapsedTimeAccumulator.timelineStartDate : MachineElapsedTimeAccumulator@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a2);

  return result;
}

uint64_t key path setter for MachineElapsedTimeAccumulator.timelineStartDate : MachineElapsedTimeAccumulator(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v17 - v11;
  v13 = *(v5 + 16);
  v13(&v17 - v11, a1, v4);
  v14 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v13(v9, v12, v4);
  v15 = v14;
  static Published.subscript.setter();
  return (*(v5 + 8))(v12, v4);
}

double MachineElapsedTimeAccumulator.timelineStartDate.getter@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t MachineElapsedTimeAccumulator.timelineStartDate.setter(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  (*(v4 + 16))(v7, a1, v3);
  v8 = v1;
  static Published.subscript.setter();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*MachineElapsedTimeAccumulator.timelineStartDate.modify(uint64_t *a1))()
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
  return MachineElapsedTimeAccumulator.timelineStartDate.modify;
}

void MachineElapsedTimeAccumulator.timelineStartDate.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for MachineElapsedTimeAccumulator.$timelineStartDate : MachineElapsedTimeAccumulator(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for MachineElapsedTimeAccumulator.$timelineStartDate : MachineElapsedTimeAccumulator(char *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - v10;
  v12 = *(v4 + 16);
  v12(&v14 - v10, a1, v3);
  v12(v8, v11, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v11, v3);
}

uint64_t MachineElapsedTimeAccumulator.$timelineStartDate.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MachineElapsedTimeAccumulator.$timelineStartDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*MachineElapsedTimeAccumulator.$timelineStartDate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMd, &_s7Combine9PublishedV9PublisherVy10Foundation4DateV_GMR);
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

  v10 = OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__timelineStartDate;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MachineElapsedTimeAccumulator.$timelineStartDate.modify;
}

void MachineElapsedTimeAccumulator.$timelineStartDate.modify(uint64_t a1, char a2)
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

Swift::Void __swiftcall MachineElapsedTimeAccumulator.setElapsedTime(_:)(Swift::Double a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v19 - v11;
  v13 = OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime;
  if (*&v1[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime] != a1)
  {
    *&v1[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime] = a1;
    v14 = OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_timelineInvalidated;
    if (v1[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_timelineInvalidated] == 1)
    {
      v15 = v10;
      Date.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v4 + 16))(v8, v12, v15);
      v16 = v1;
      static Published.subscript.setter();
      (*(v4 + 8))(v12, v15);
      *&v16[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_elapsedTimeAtTimelineStartDate] = *&v1[v13];
      v1[v14] = 0;
    }

    v17 = [v1 updateHandler];
    if (v17)
    {
      v18 = v17;
      (*(v17 + 2))();
      _Block_release(v18);
    }
  }
}

uint64_t MachineElapsedTimeAccumulator.elapsedTime(at:)()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1, v3);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutStarted) == 1 && (*(v0 + OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutPaused) & 1) == 0)
  {
    v7 = result;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v6);

    Date.timeIntervalSince(_:)();
    return (*(v2 + 8))(v6, v7);
  }

  return result;
}

id MachineElapsedTimeAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MachineElapsedTimeAccumulator.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10Foundation4DateVGMd, &_s7Combine9PublishedVy10Foundation4DateVGMR);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v18 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v18 - v13;
  *&v0[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_elapsedTimeAtTimelineStartDate] = 0;
  *&v0[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime] = 0;
  v0[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_timelineInvalidated] = 1;
  v15 = OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__timelineStartDate;
  Date.init()();
  (*(v7 + 16))(v11, v14, v6);
  Published.init(initialValue:)();
  (*(v7 + 8))(v14, v6);
  (*(v2 + 32))(&v0[v15], v5, v1);
  v0[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutPaused] = 0;
  v0[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutStarted] = 0;
  v16 = type metadata accessor for MachineElapsedTimeAccumulator(0);
  v18.receiver = v0;
  v18.super_class = v16;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t type metadata accessor for MachineElapsedTimeAccumulator(uint64_t a1)
{
  result = type metadata singleton initialization cache for MachineElapsedTimeAccumulator;
  if (!type metadata singleton initialization cache for MachineElapsedTimeAccumulator)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MachineElapsedTimeAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MachineElapsedTimeAccumulator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for TimeProviding.timelineStartDate.getter in conformance MachineElapsedTimeAccumulator@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance MachineElapsedTimeAccumulator@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MachineElapsedTimeAccumulator(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t specialized MachineElapsedTimeAccumulator.sessionActivity(_:didChangeFrom:to:)(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8, v11);
  v14 = &v18 - v13;
  if (a2 <= 9)
  {
    if (((1 << a2) & 0x338) != 0)
    {
      v15 = &OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutPaused;
LABEL_4:
      v2[*v15] = 1;
      return result;
    }

    if (a2 == 6)
    {
      v16 = result;
      if (a1 <= 2)
      {
        v2[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutStarted] = 1;
      }

      v2[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_workoutPaused] = 0;
      Date.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      (*(v6 + 16))(v10, v14, v16);
      v17 = v2;
      static Published.subscript.setter();
      result = (*(v6 + 8))(v14, v16);
      *&v17[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_elapsedTimeAtTimelineStartDate] = *&v17[OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator__elapsedTime];
      v15 = &OBJC_IVAR___NLSessionActivityMachineElapsedTimeAccumulator_timelineInvalidated;
      goto LABEL_4;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MachineElapsedTimeAccumulator(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator()
{
  result = lazy protocol witness table cache variable for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator;
  if (!lazy protocol witness table cache variable for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator)
  {
    type metadata accessor for MachineElapsedTimeAccumulator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MachineElapsedTimeAccumulator and conformance MachineElapsedTimeAccumulator);
  }

  return result;
}

void type metadata completion function for MachineElapsedTimeAccumulator(uint64_t a1)
{
  type metadata accessor for Published<Date>(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Date>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<Date>)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<Date>);
    }
  }
}

unint64_t WorkoutDeviceType.defaultSystemImage.getter()
{
  v1 = 0x7073646F70726961;
  v2 = 0x69662E7472616568;
  if (*v0 != 2)
  {
    v2 = 0x656E6F687069;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

Swift::Int WorkoutDeviceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutDeviceType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutDeviceType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

unint64_t WorkoutDeviceType.description.getter()
{
  v1 = 0x6863746177;
  v2 = 0x656E6F6870;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

unint64_t lazy protocol witness table accessor for type WorkoutDeviceType and conformance WorkoutDeviceType()
{
  result = lazy protocol witness table cache variable for type WorkoutDeviceType and conformance WorkoutDeviceType;
  if (!lazy protocol witness table cache variable for type WorkoutDeviceType and conformance WorkoutDeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutDeviceType and conformance WorkoutDeviceType);
  }

  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance WorkoutDeviceType()
{
  v1 = 0x6863746177;
  v2 = 0x656E6F6870;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t getEnumTagSinglePayload for WorkoutDeviceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutDeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

WorkoutCore::RaceChartPoint __swiftcall RaceChartPoint.init(odometer_m:altitude_m:)(Swift::Double odometer_m, Swift::Double altitude_m)
{
  *v2 = odometer_m;
  v2[1] = altitude_m;
  result.altitude_m = altitude_m;
  result.odometer_m = odometer_m;
  return result;
}

Swift::Int RaceChartPoint.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v1;
  }

  MEMORY[0x20F2E8020](*&v3);
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x20F2E8020](*&v4);
  return Hasher._finalize()();
}

uint64_t RaceChartPoint.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&v1);
  if (v2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = v2;
  }

  return MEMORY[0x20F2E8020](*&v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RaceChartPoint.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceChartPoint.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RaceChartPoint.CodingKeys()
{
  if (*v0)
  {
    return 0x6564757469746C61;
  }

  else
  {
    return 0x726574656D6F646FLL;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance RaceChartPoint.CodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726574656D6F646FLL && a2 == 0xEA00000000006D5FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xEA00000000006D5FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaceChartPoint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RaceChartPoint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RaceChartPoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore14RaceChartPointV10CodingKeys33_CE97703FA320D003D66F4F0F1F3EABECLLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore14RaceChartPointV10CodingKeys33_CE97703FA320D003D66F4F0F1F3EABECLLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t RaceChartPoint.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore14RaceChartPointV10CodingKeys33_CE97703FA320D003D66F4F0F1F3EABECLLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore14RaceChartPointV10CodingKeys33_CE97703FA320D003D66F4F0F1F3EABECLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v16 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 1) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RaceChartPoint(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  if (v2 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v2;
  }

  MEMORY[0x20F2E8020](*&v4);
  if (v3 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  MEMORY[0x20F2E8020](*&v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Identifiable.id.getter in conformance RaceChartPoint@<X0>(Swift::Int *a1@<X8>)
{
  result = RaceChartPoint.hashValue.getter();
  *a1 = result;
  return result;
}

uint64_t RaceChartPoint.description.getter()
{
  _StringGuts.grow(_:)(28);
  MEMORY[0x20F2E6D80](0x726574656D6F646FLL, 0xEB000000003D6D5FLL);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x757469746C61202CLL, 0xED00003D6D5F6564);
  Double.write<A>(to:)();
  return 0;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RaceChartPoint()
{
  _StringGuts.grow(_:)(28);
  MEMORY[0x20F2E6D80](0x726574656D6F646FLL, 0xEB000000003D6D5FLL);
  Double.write<A>(to:)();
  MEMORY[0x20F2E6D80](0x757469746C61202CLL, 0xED00003D6D5F6564);
  Double.write<A>(to:)();
  return 0;
}

int64_t specialized static RaceChartPoint.canonicalRoutePoints.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v0 = swift_allocObject();
  result = _swift_stdlib_malloc_size_5(v0);
  v2 = 0;
  v3 = result - 32;
  if (result < 32)
  {
    v3 = result - 25;
  }

  v0[2] = 1001;
  v0[3] = 2 * (v3 >> 3);
  v4 = 4;
  while (1)
  {
    if (v2 == 1000)
    {
      v5 = 0;
    }

    else
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        return result;
      }
    }

    v0[v4] = v2;
    if (v4 == 1004)
    {
      break;
    }

    ++v4;
    v6 = v2 == 1000;
    v2 = v5;
    if (v6)
    {
      __break(1u);
      break;
    }
  }

  v7 = v0[2];
  if (v7)
  {
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = 4;
    do
    {
      [objc_allocWithZone(MEMORY[0x277CBFC78]) initWithLatitude:1 longitude:32.0 altitude:32.0 odometer:(sin(v0[v8] / 20.0) * 5.0 + 200.0) timestamp:v0[v8] * 5.0 signalEnvironmentType:v0[v8] * 2.5];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      ++v8;
      --v7;
    }

    while (v7);

    v9 = v12;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v10 = specialized _arrayForceCast<A, B>(_:)(v9);

  type metadata accessor for RaceElevationChartPointProvider();
  swift_allocObject();
  v11 = *(RaceElevationChartPointProvider.init(_:numberOfPoints:)(v10, 0, 1) + 2);

  return v11;
}

unint64_t lazy protocol witness table accessor for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys;
  if (!lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint.CodingKeys and conformance RaceChartPoint.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RaceChartPoint and conformance RaceChartPoint()
{
  result = lazy protocol witness table cache variable for type RaceChartPoint and conformance RaceChartPoint;
  if (!lazy protocol witness table cache variable for type RaceChartPoint and conformance RaceChartPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RaceChartPoint and conformance RaceChartPoint);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RaceChartPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RaceChartPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for RaceChartPoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RaceChartPoint.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t Apple_Workout_Core_WorkoutNotification.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  result = UnknownStorage.init()();
  v4 = a1 + *(v2 + 32);
  *v4 = 0;
  *(v4 + 8) = 1;
  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotification.createdAtSinceReferenceDate.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

double Apple_Workout_Core_WorkoutNotification.createdAtSinceReferenceDate.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 32);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_DataLinkMessage.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  UnknownStorage.init()();
  v3 = (a1 + v2[6]);
  *v3 = 0;
  v3[1] = 0;
  v4 = a1 + v2[7];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v2[8];
  v6 = type metadata accessor for Apple_Workout_Core_Activity(0);
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  v8 = (a1 + v2[9]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

void Apple_Workout_Core_WorkoutNotificationUnit.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.value.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

void Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.activityType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 32);
  outlined destroy of Apple_Workout_Core_Activity?(v1 + v3, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_Activity);
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.key.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double Apple_Workout_Core_WorkoutNotificationUnit.value.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL Apple_Workout_Core_WorkoutNotificationUnit.hasActivityType.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v0 + *(v5 + 32), v4, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Activity?(v4, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return v7;
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.activityType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + *(v7 + 32), v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v6, a1, type metadata accessor for Apple_Workout_Core_Activity);
  }

  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_PublisherSequence.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_DataLinkMessage.deltaUpdate.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v13 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  *a1 = MEMORY[0x277D84F90];
  v10 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  UnknownStorage.init()();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t Apple_Workout_Core_NotificationUpdate.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t Apple_Workout_Core_NotificationUpdate.notification.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 20);
  outlined destroy of Apple_Workout_Core_Activity?(v1 + v3, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

unint64_t Apple_Workout_Core_Command.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 9;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_Command(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_PublisherKey.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x13;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PublisherKey(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_NotificationType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_NotificationType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_NotificationUnitType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x11;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_Command(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_NotificationUnitType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_Command(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_DataLinkMessage.publisherUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v9 = *(type metadata accessor for Apple_Workout_Core_MetricsPublisher(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v9) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
}

void (*Apple_Workout_Core_DataLinkMessage.publisherUpdate.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of Apple_Workout_Core_Activity(v9, v13, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      return Apple_Workout_Core_DataLinkMessage.publisherUpdate.modify;
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v16 = *(v10 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(v13 + v16) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;

  return Apple_Workout_Core_DataLinkMessage.publisherUpdate.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.notificationUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v15 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v10 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.notificationUpdate : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v15 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  UnknownStorage.init()();
  v10 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  return (*(*(v14 - 8) + 56))(a2 + v13, 1, 1, v14);
}

void (*Apple_Workout_Core_DataLinkMessage.notificationUpdate.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[1] = v8;
  v10 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v11 = *(*(v10 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v6[3] = v12;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v14 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v6[4] = v14;
  v15 = *(v14 - 8);
  v6[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_15:
    UnknownStorage.init()();
    v16 = *(v10 + 20);
    v17 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = *(v10 + 24);
    v19 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    return Apple_Workout_Core_DataLinkMessage.notificationUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v9, v13, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
  return Apple_Workout_Core_DataLinkMessage.notificationUpdate.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.command.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v12 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_6:
    v10 = 0;
    v11 = 1;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_6;
  }

  v10 = *v7;
  v11 = v7[8];
LABEL_7:
  *a1 = v10;
  *(a1 + 8) = v11;
  return result;
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.command : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v12 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    result = outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_6:
    v10 = 0;
    v11 = 1;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_6;
  }

  v10 = *v7;
  v11 = v7[8];
LABEL_7:
  *a2 = v10;
  *(a2 + 8) = v11;
  return result;
}

uint64_t key path setter for Apple_Workout_Core_DataLinkMessage.command : Apple_Workout_Core_DataLinkMessage(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  outlined destroy of Apple_Workout_Core_Activity?(a2, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  *a2 = v3;
  *(a2 + 8) = v4;
  v5 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t Apple_Workout_Core_DataLinkMessage.command.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  outlined destroy of Apple_Workout_Core_Activity?(v1, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  *v1 = v2;
  *(v1 + 8) = v3;
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1, 0, 1, v4);
}

void (*Apple_Workout_Core_DataLinkMessage.command.modify(uint64_t *a1))(uint64_t **a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *(v5 + 16) = v2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v6 + 24) = v8;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  *(v6 + 32) = v10;
  v11 = *(v10 - 8);
  *(v6 + 40) = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_12:
    v12 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v9, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_12;
  }

  v12 = *v9;
  v13 = *(v9 + 8);
LABEL_13:
  *v6 = v12;
  *(v6 + 8) = v13;
  return Apple_Workout_Core_DataLinkMessage.command.modify;
}

void Apple_Workout_Core_DataLinkMessage.command.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = **a1;
  v7 = *(*a1 + 8);
  outlined destroy of Apple_Workout_Core_Activity?(v5, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  *v5 = v6;
  *(v5 + 8) = v7;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.deltaUpdate : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v13 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  *a2 = MEMORY[0x277D84F90];
  v10 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  UnknownStorage.init()();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

uint64_t Apple_Workout_Core_MetricsDelta.init()@<X0>(char *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  v2 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  UnknownStorage.init()();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

void (*Apple_Workout_Core_DataLinkMessage.deltaUpdate.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v9 - 8) + 64));
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  outlined init with copy of Apple_Workout_Core_Activity?(v1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v12 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v15 = *(v9 + 24);
    v16 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
    (*(*(v16 - 8) + 56))(&v12[v15], 1, 1, v16);
    return Apple_Workout_Core_DataLinkMessage.deltaUpdate.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  return Apple_Workout_Core_DataLinkMessage.deltaUpdate.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.sequenceReset.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v10 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_SequenceReset);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.sequenceReset : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v10 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_SequenceReset);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  *a2 = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_SequenceReset.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_DataLinkMessage.sequenceReset.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_SequenceReset(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_Activity?(v1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_15:
    *v11 = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    return Apple_Workout_Core_DataLinkMessage.sequenceReset.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v11, type metadata accessor for Apple_Workout_Core_SequenceReset);
  return Apple_Workout_Core_DataLinkMessage.sequenceReset.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.mirroredHostMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.mirroredHostMessage : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  return UnknownStorage.init()();
}

void (*Apple_Workout_Core_DataLinkMessage.mirroredHostMessage.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_Activity?(v1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_15:
    v14 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage.OneOf_Message(0);
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    UnknownStorage.init()();
    return Apple_Workout_Core_DataLinkMessage.mirroredHostMessage.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v11, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  return Apple_Workout_Core_DataLinkMessage.mirroredHostMessage.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.mirroredClientMessage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(v2, &v11 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a1, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  return UnknownStorage.init()();
}

uint64_t key path getter for Apple_Workout_Core_DataLinkMessage.mirroredClientMessage : Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - v6;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v11 - v6, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v7, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  }

  v10 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
  (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  return UnknownStorage.init()();
}

uint64_t key path setter for Apple_Workout_Core_DataLinkMessage.publisherUpdate : Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v18 - v14;
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(a1, &v18 - v14, a6);
  outlined destroy of Apple_Workout_Core_Activity?(a2, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_Activity(v15, a2, a7);
  v16 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

uint64_t Apple_Workout_Core_DataLinkMessage.deltaUpdate.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  outlined destroy of Apple_Workout_Core_Activity?(v3, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with take of Apple_Workout_Core_Activity(a1, v3, a2);
  v6 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

void (*Apple_Workout_Core_DataLinkMessage.mirroredClientMessage.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR) - 8) + 64);
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
  v9 = *(*(type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[3] = v10;
  outlined init with copy of Apple_Workout_Core_Activity?(v1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v5[4] = v12;
  v13 = *(v12 - 8);
  v5[5] = v13;
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_15:
    v14 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage.OneOf_Message(0);
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    UnknownStorage.init()();
    return Apple_Workout_Core_DataLinkMessage.mirroredClientMessage.modify;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    goto LABEL_15;
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v11, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  return Apple_Workout_Core_DataLinkMessage.mirroredClientMessage.modify;
}

void Apple_Workout_Core_DataLinkMessage.publisherUpdate.modify(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    outlined init with copy of Apple_Workout_Core_MetricsPublisher((*a1)[3], v10, a5);
    outlined destroy of Apple_Workout_Core_Activity?(v13, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v11, a6);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Activity?(**a1, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t static Apple_Workout_Core_SequenceReset.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C18_PublisherSequenceV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t (*Apple_Workout_Core_MetricsDelta.deltaPublisher.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_MetricsDelta(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  return Apple_Workout_Core_MetricsDelta.deltaPublisher.modify;
}

uint64_t Apple_Workout_Core_DataLinkMessage.unknownFields.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Apple_Workout_Core_DataLinkMessage.unknownFields.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void Apple_Workout_Core_PublisherSequence.key.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_PublisherSequence.key.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_PublisherSequence.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PublisherSequence(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_PublisherSequence.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PublisherSequence(0) + 24);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_NotificationUpdate.notification.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + *(v7 + 20), v6, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v6, a1, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  *(a1 + 24) = 0;
  UnknownStorage.init()();
  v10 = a1 + *(v8 + 32);
  *v10 = 0;
  *(v10 + 8) = 1;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v6, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_NotificationUpdate.notification : Apple_Workout_Core_NotificationUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v8 + 20), v7, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  UnknownStorage.init()();
  v11 = a2 + *(v9 + 32);
  *v11 = 0;
  *(v11 + 8) = 1;
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_NotificationUpdate.notification : Apple_Workout_Core_NotificationUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(a1, v8, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  v9 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 20);
  outlined destroy of Apple_Workout_Core_Activity?(a2 + v9, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_NotificationUpdate.notification.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 20);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x277D84F90];
    *(v14 + 24) = 0;
    UnknownStorage.init()();
    v17 = v14 + *(v9 + 32);
    *v17 = 0;
    *(v17 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  }

  return Apple_Workout_Core_NotificationUpdate.notification.modify;
}

void Apple_Workout_Core_NotificationUpdate.notification.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_MetricsPublisher((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_NotificationUpdate.hasNotification.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v0 + *(v5 + 20), v4, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Activity?(v4, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_NotificationUpdate.clearNotification()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 20);
  outlined destroy of Apple_Workout_Core_Activity?(v0 + v1, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_MetricsDelta.deltaPublisher.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = a1(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v2 + *(v9 + 24), v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v10 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v8, 1, v10) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v8, a2, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  UnknownStorage.init()();
  v12 = *(v10 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v12) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
  v13 = v11(v8, 1, v10);

  if (v13 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_MetricsDelta.deltaPublisher : Apple_Workout_Core_MetricsDelta@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - v8;
  v10 = a2(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v10 + 24), v9, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v11 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v9, 1, v11) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v9, a3, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  UnknownStorage.init()();
  v13 = *(v11 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a3 + v13) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
  v14 = v12(v9, 1, v11);

  if (v14 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_MetricsDelta.deltaPublisher : Apple_Workout_Core_MetricsDelta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(a1, v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v13 = *(a5(0) + 24);
  outlined destroy of Apple_Workout_Core_Activity?(a2 + v13, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(v12, a2 + v13, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  return (*(v9 + 56))(a2 + v13, 0, 1, v8);
}

uint64_t Apple_Workout_Core_MetricsDelta.deltaPublisher.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  outlined destroy of Apple_Workout_Core_Activity?(v2 + v4, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(a1, v2 + v4, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v5 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t (*Apple_Workout_Core_NotificationUpdate.publisherUpdate.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_NotificationUpdate(0) + 24);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Apple_Workout_Core_MetricsPublisher._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  return Apple_Workout_Core_NotificationUpdate.publisherUpdate.modify;
}

void Apple_Workout_Core_MetricsDelta.deltaPublisher.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_MetricsPublisher((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_MetricsDelta.hasDeltaPublisher.getter(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = a1(0);
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + *(v7 + 24), v6, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8) != 1;
  outlined destroy of Apple_Workout_Core_Activity?(v6, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  return v9;
}

uint64_t Apple_Workout_Core_MetricsDelta.clearDeltaPublisher()(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 24);
  outlined destroy of Apple_Workout_Core_Activity?(v1 + v2, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v3 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(v1 + v2, 1, 1, v3);
}

uint64_t Apple_Workout_Core_NotificationUpdate.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Apple_Workout_Core_NotificationUpdate.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t (*Apple_Workout_Core_WorkoutNotification.createdAtSinceReferenceDate.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 32);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_WorkoutNotification.createdAtSinceReferenceDate.modify;
}

uint64_t Apple_Workout_Core_WorkoutNotification.createdAtSinceReferenceDate.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutNotification.clearCreatedAtSinceReferenceDate()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 32);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_WorkoutNotification.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_WorkoutNotification.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double key path getter for Apple_Workout_Core_WorkoutNotificationUnit.key : Apple_Workout_Core_WorkoutNotificationUnit@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

void key path setter for Apple_Workout_Core_WorkoutNotificationUnit.key : Apple_Workout_Core_WorkoutNotificationUnit(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24));

  *v4 = v3;
  v4[1] = v2;
}

uint64_t (*Apple_Workout_Core_WorkoutNotificationUnit.key.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return Apple_Workout_Core_WorkoutNotificationUnit.key.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutNotificationUnit.clearKey()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Apple_Workout_Core_WorkoutNotificationUnit.value.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_WorkoutNotificationUnit.value.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutNotificationUnit.clearValue()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t key path getter for Apple_Workout_Core_WorkoutNotificationUnit.activityType : Apple_Workout_Core_WorkoutNotificationUnit@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v8 + 32), v7, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Activity(v7, a2, type metadata accessor for Apple_Workout_Core_Activity);
  }

  *(a2 + 8) = 0;
  *a2 = 0;
  *(a2 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  UnknownStorage.init()();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v7, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutNotificationUnit.activityType : Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(a1, v8, type metadata accessor for Apple_Workout_Core_Activity);
  v9 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 32);
  outlined destroy of Apple_Workout_Core_Activity?(a2 + v9, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  outlined init with take of Apple_Workout_Core_Activity(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_Activity);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Workout_Core_WorkoutNotificationUnit.activityType.modify(void *a1))(uint64_t **a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 32);
  *(v5 + 12) = v15;
  outlined init with copy of Apple_Workout_Core_Activity?(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *(v14 + 8) = 0;
    *v14 = 0;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    UnknownStorage.init()();
    if (v16(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v14, type metadata accessor for Apple_Workout_Core_Activity);
  }

  return Apple_Workout_Core_WorkoutNotificationUnit.activityType.modify;
}

void Apple_Workout_Core_WorkoutNotificationUnit.activityType.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_MetricsPublisher((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_Activity);
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_Activity);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v5, type metadata accessor for Apple_Workout_Core_Activity);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Activity?(v9 + v3, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_Activity);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutNotificationUnit.clearActivityType()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 32);
  outlined destroy of Apple_Workout_Core_Activity?(v0 + v1, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

double key path getter for Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral : Apple_Workout_Core_WorkoutNotificationUnit@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

void key path setter for Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral : Apple_Workout_Core_WorkoutNotificationUnit(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36));

  *v4 = v3;
  v4[1] = v2;
}

uint64_t (*Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return Apple_Workout_Core_WorkoutNotificationUnit.stringLiteral.modify;
}

void Apple_Workout_Core_WorkoutNotificationUnit.key.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutNotificationUnit.clearStringLiteral()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) + 36));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          closure #1 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 2:
          closure #2 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
          break;
        case 3:
          closure #3 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        closure #6 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }

      else if (result == 7)
      {
        closure #7 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
      }
    }

    else if (result == 4)
    {
      closure #4 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }

    else
    {
      closure #5 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v47 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v46 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v15, v24, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v24, v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v36 = v51;
    }

    else
    {
      outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
      v38 = v46;
      outlined init with take of Apple_Workout_Core_Activity(v21, v46, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      outlined init with take of Apple_Workout_Core_Activity(v38, v31, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v31, v39, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v39, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  }

  else
  {
    v42 = v47;
    outlined init with take of Apple_Workout_Core_Activity(v39, v47, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
    v43 = v45;
    outlined destroy of Apple_Workout_Core_Activity?(v45, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v42, v43, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #2 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v15, v24, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v24, v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_Activity(v21, v47, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
      outlined init with take of Apple_Workout_Core_Activity(v38, v31, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUpdate and conformance Apple_Workout_Core_NotificationUpdate, type metadata accessor for Apple_Workout_Core_NotificationUpdate, &protocol conformance descriptor for Apple_Workout_Core_NotificationUpdate);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v31, v39, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v39, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_Activity(v39, v46, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMd, &_s11WorkoutCore06Apple_a1_B19_NotificationUpdateVSgMR);
    v43 = v45;
    outlined destroy of Apple_Workout_Core_Activity?(v45, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v42, v43, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #3 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  v17 = 0;
  v18 = 256;
  lazy protocol witness table accessor for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command();
  result = dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
  if (!v4 && (v18 & 0x100) == 0)
  {
    v19 = 0;
    v16 = v17;
    HIDWORD(v15) = v18;
    outlined init with copy of Apple_Workout_Core_Activity?(a2, v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v11 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v9, 1, v11);
    outlined destroy of Apple_Workout_Core_Activity?(v9, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    if (v13 != 1)
    {
      v14 = v19;
      result = dispatch thunk of Decoder.handleConflictingOneOf()();
      if (v14)
      {
        return result;
      }

      v19 = 0;
    }

    outlined destroy of Apple_Workout_Core_Activity?(a2, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    *a2 = v16;
    *(a2 + 8) = BYTE4(v15) & 1;
    swift_storeEnumTagMultiPayload();
    return (*(v12 + 56))(a2, 0, 1, v11);
  }

  return result;
}

uint64_t closure #4 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v15, v24, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v24, v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_Activity(v21, v47, type metadata accessor for Apple_Workout_Core_MetricsDelta);
      outlined init with take of Apple_Workout_Core_Activity(v38, v31, type metadata accessor for Apple_Workout_Core_MetricsDelta);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsDelta and conformance Apple_Workout_Core_MetricsDelta, type metadata accessor for Apple_Workout_Core_MetricsDelta, &protocol conformance descriptor for Apple_Workout_Core_MetricsDelta);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v31, v39, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v39, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_Activity(v39, v46, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMd, &_s11WorkoutCore06Apple_a1_B13_MetricsDeltaVSgMR);
    v43 = v45;
    outlined destroy of Apple_Workout_Core_Activity?(v45, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v42, v43, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #5 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v15, v24, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v24, v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_Activity(v21, v47, type metadata accessor for Apple_Workout_Core_SequenceReset);
      outlined init with take of Apple_Workout_Core_Activity(v38, v31, type metadata accessor for Apple_Workout_Core_SequenceReset);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_SequenceReset and conformance Apple_Workout_Core_SequenceReset, type metadata accessor for Apple_Workout_Core_SequenceReset, &protocol conformance descriptor for Apple_Workout_Core_SequenceReset);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v31, v39, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v39, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_Activity(v39, v46, type metadata accessor for Apple_Workout_Core_SequenceReset);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMd, &_s11WorkoutCore06Apple_a1_B14_SequenceResetVSgMR);
    v43 = v45;
    outlined destroy of Apple_Workout_Core_Activity?(v45, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v42, v43, type metadata accessor for Apple_Workout_Core_SequenceReset);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #6 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v15, v24, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v24, v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_Activity(v21, v47, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
      outlined init with take of Apple_Workout_Core_Activity(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMessage and conformance Apple_Workout_Core_MirroredHostMessage, type metadata accessor for Apple_Workout_Core_MirroredHostMessage, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostMessage);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v31, v39, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v39, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_Activity(v39, v46, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMd, &_s11WorkoutCore06Apple_a1_B20_MirroredHostMessageVSgMR);
    v43 = v45;
    outlined destroy of Apple_Workout_Core_Activity?(v45, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v42, v43, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t closure #7 in Apple_Workout_Core_DataLinkMessage.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v54 = a4;
  v52 = a2;
  v53 = a3;
  v5 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v46 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v47 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v44 - v14;
  v16 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
  v27 = MEMORY[0x28223BE20](v25 - 8, v26);
  v49 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v44 - v30;
  v48 = v6;
  v32 = *(v6 + 56);
  v51 = v5;
  v33 = v5;
  v34 = v32;
  v32(&v44 - v30, 1, 1, v33);
  v45 = a1;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v44 = v17;
  v35 = (*(v17 + 48))(v15, 1, v16);
  if (v35 == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v15, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    v36 = v51;
    v37 = v16;
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Activity(v15, v24, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    outlined init with take of Apple_Workout_Core_Activity(v24, v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    v37 = v16;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
      v38 = v47;
      outlined init with take of Apple_Workout_Core_Activity(v21, v47, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
      outlined init with take of Apple_Workout_Core_Activity(v38, v31, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
      v36 = v51;
      v34(v31, 0, 1, v51);
    }

    else
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v21, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      v36 = v51;
    }
  }

  v39 = v49;
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMessage and conformance Apple_Workout_Core_MirroredClientMessage, type metadata accessor for Apple_Workout_Core_MirroredClientMessage, &protocol conformance descriptor for Apple_Workout_Core_MirroredClientMessage);
  v40 = v50;
  dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
  if (v40)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v31, v39, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
  if ((*(v48 + 48))(v39, 1, v36) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
    return outlined destroy of Apple_Workout_Core_Activity?(v39, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
  }

  else
  {
    v42 = v46;
    outlined init with take of Apple_Workout_Core_Activity(v39, v46, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    if (v35 != 1)
    {
      dispatch thunk of Decoder.handleConflictingOneOf()();
    }

    outlined destroy of Apple_Workout_Core_Activity?(v31, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMd, &_s11WorkoutCore06Apple_a1_B22_MirroredClientMessageVSgMR);
    v43 = v45;
    outlined destroy of Apple_Workout_Core_Activity?(v45, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    outlined init with take of Apple_Workout_Core_Activity(v42, v43, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v43, 0, 1, v37);
  }
}

uint64_t Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v15 - v10;
  outlined init with copy of Apple_Workout_Core_Activity?(v3, &v15 - v10, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          closure #6 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
        }

        else
        {
          closure #7 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        closure #4 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

      else
      {
        closure #5 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      }

LABEL_16:
      result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v11, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      if (v4)
      {
        return result;
      }

      goto LABEL_17;
    }

    if (!EnumCaseMultiPayload)
    {
      closure #1 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 1)
    {
      closure #2 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
      goto LABEL_16;
    }

    result = closure #3 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (v4)
    {
      return result;
    }
  }

LABEL_17:
  type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t closure #1 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #2 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUpdate and conformance Apple_Workout_Core_NotificationUpdate, type metadata accessor for Apple_Workout_Core_NotificationUpdate, &protocol conformance descriptor for Apple_Workout_Core_NotificationUpdate);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #3 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v12 - v7;
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v12 - v7, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v10 = v8[8];
    v12 = *v8;
    v13 = v10;
    lazy protocol witness table accessor for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command();
    return dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #4 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsDelta and conformance Apple_Workout_Core_MetricsDelta, type metadata accessor for Apple_Workout_Core_MetricsDelta, &protocol conformance descriptor for Apple_Workout_Core_MetricsDelta);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MetricsDelta);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #5 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_SequenceReset);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_SequenceReset and conformance Apple_Workout_Core_SequenceReset, type metadata accessor for Apple_Workout_Core_SequenceReset, &protocol conformance descriptor for Apple_Workout_Core_SequenceReset);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_SequenceReset);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #6 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredHostMessage and conformance Apple_Workout_Core_MirroredHostMessage, type metadata accessor for Apple_Workout_Core_MirroredHostMessage, &protocol conformance descriptor for Apple_Workout_Core_MirroredHostMessage);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t closure #7 in Apple_Workout_Core_DataLinkMessage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v13 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    outlined init with take of Apple_Workout_Core_Activity(v8, v12, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MirroredClientMessage and conformance Apple_Workout_Core_MirroredClientMessage, type metadata accessor for Apple_Workout_Core_MirroredClientMessage, &protocol conformance descriptor for Apple_Workout_Core_MirroredClientMessage);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
  }

  result = outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  __break(1u);
  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessage);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_DataLinkMessage(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessage);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_DataLinkMessage and conformance Apple_Workout_Core_DataLinkMessage, type metadata accessor for Apple_Workout_Core_DataLinkMessage, &protocol conformance descriptor for Apple_Workout_Core_DataLinkMessage);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_MetricsDelta.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence, &protocol conformance descriptor for Apple_Workout_Core_PublisherSequence);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        closure #2 in Apple_Workout_Core_MetricsDelta.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for Apple_Workout_Core_MetricsDelta);
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_MetricsDelta.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Workout_Core_PublisherSequence(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence, &protocol conformance descriptor for Apple_Workout_Core_PublisherSequence), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_MetricsDelta.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Apple_Workout_Core_MetricsDelta);
    if (!v4)
    {
      type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MetricsDelta@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  UnknownStorage.init()();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MetricsDelta(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsDelta and conformance Apple_Workout_Core_MetricsDelta, type metadata accessor for Apple_Workout_Core_MetricsDelta, &protocol conformance descriptor for Apple_Workout_Core_MetricsDelta);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MetricsDelta(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsDelta and conformance Apple_Workout_Core_MetricsDelta, type metadata accessor for Apple_Workout_Core_MetricsDelta, &protocol conformance descriptor for Apple_Workout_Core_MetricsDelta);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MetricsDelta(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsDelta and conformance Apple_Workout_Core_MetricsDelta, type metadata accessor for Apple_Workout_Core_MetricsDelta, &protocol conformance descriptor for Apple_Workout_Core_MetricsDelta);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_PublisherSequence.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey();
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

uint64_t Apple_Workout_Core_PublisherSequence.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type Apple_Workout_Core_PublisherKey and conformance Apple_Workout_Core_PublisherKey(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (!*(v3 + 12) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v4))
    {
      type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t static Apple_Workout_Core_PublisherSequence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized == infix<A>(_:_:)(*a1, *(a1 + 8), *a2) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_PublisherSequence@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 12) = 0;
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_PublisherSequence@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_PublisherSequence(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PublisherSequence(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence, &protocol conformance descriptor for Apple_Workout_Core_PublisherSequence);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PublisherSequence(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence, &protocol conformance descriptor for Apple_Workout_Core_PublisherSequence);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PublisherSequence(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence, &protocol conformance descriptor for Apple_Workout_Core_PublisherSequence);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_PublisherSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!specialized == infix<A>(_:_:)(*a1, *(a1 + 8), *a2) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_SequenceReset.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence, &protocol conformance descriptor for Apple_Workout_Core_PublisherSequence);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_SequenceReset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Workout_Core_PublisherSequence(0), _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_PublisherSequence and conformance Apple_Workout_Core_PublisherSequence, type metadata accessor for Apple_Workout_Core_PublisherSequence, &protocol conformance descriptor for Apple_Workout_Core_PublisherSequence), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Apple_Workout_Core_SequenceReset(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_SequenceReset(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_SequenceReset and conformance Apple_Workout_Core_SequenceReset, type metadata accessor for Apple_Workout_Core_SequenceReset, &protocol conformance descriptor for Apple_Workout_Core_SequenceReset);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_SequenceReset(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_SequenceReset and conformance Apple_Workout_Core_SequenceReset, type metadata accessor for Apple_Workout_Core_SequenceReset, &protocol conformance descriptor for Apple_Workout_Core_SequenceReset);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_SequenceReset(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_SequenceReset and conformance Apple_Workout_Core_SequenceReset, type metadata accessor for Apple_Workout_Core_SequenceReset, &protocol conformance descriptor for Apple_Workout_Core_SequenceReset);

  return Message.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_SequenceReset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C18_PublisherSequenceV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t Apple_Workout_Core_NotificationUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      closure #1 in Apple_Workout_Core_NotificationUpdate.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      closure #2 in Apple_Workout_Core_MetricsDelta.decodeMessage<A>(decoder:)(a1, v5, a2, a3, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_NotificationUpdate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotification and conformance Apple_Workout_Core_WorkoutNotification, type metadata accessor for Apple_Workout_Core_WorkoutNotification, &protocol conformance descriptor for Apple_Workout_Core_WorkoutNotification);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t closure #2 in Apple_Workout_Core_MetricsDelta.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_NotificationUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_NotificationUpdate.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    closure #1 in Apple_Workout_Core_MetricsDelta.traverse<A>(visitor:)(v3, a1, a2, a3, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_NotificationUpdate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v14 + 20), v8, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v13, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotification and conformance Apple_Workout_Core_WorkoutNotification, type metadata accessor for Apple_Workout_Core_WorkoutNotification, &protocol conformance descriptor for Apple_Workout_Core_WorkoutNotification);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v13, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
}

uint64_t closure #1 in Apple_Workout_Core_MetricsDelta.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v18[3] = a4;
  v18[0] = a2;
  v18[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v16 + 24), v10, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v10, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Activity(v10, v15, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricsPublisher and conformance Apple_Workout_Core_MetricsPublisher, type metadata accessor for Apple_Workout_Core_MetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_MetricsPublisher);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v15, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_NotificationUpdate@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_NotificationUpdate@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_NotificationUpdate(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_NotificationUpdate(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUpdate and conformance Apple_Workout_Core_NotificationUpdate, type metadata accessor for Apple_Workout_Core_NotificationUpdate, &protocol conformance descriptor for Apple_Workout_Core_NotificationUpdate);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_NotificationUpdate(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUpdate and conformance Apple_Workout_Core_NotificationUpdate, type metadata accessor for Apple_Workout_Core_NotificationUpdate, &protocol conformance descriptor for Apple_Workout_Core_NotificationUpdate);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_NotificationUpdate(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUpdate and conformance Apple_Workout_Core_NotificationUpdate, type metadata accessor for Apple_Workout_Core_NotificationUpdate, &protocol conformance descriptor for Apple_Workout_Core_NotificationUpdate);

  return Message.hash(into:)();
}

uint64_t Apple_Workout_Core_WorkoutNotification.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }

        else if (result == 4)
        {
          type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        }
      }

      else if (result == 1)
      {
        lazy protocol witness table accessor for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else if (result == 2)
      {
        type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotificationUnit and conformance Apple_Workout_Core_WorkoutNotificationUnit, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit, &protocol conformance descriptor for Apple_Workout_Core_WorkoutNotificationUnit);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*v3)
  {
    lazy protocol witness table accessor for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[2] + 16))
  {
    type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotificationUnit and conformance Apple_Workout_Core_WorkoutNotificationUnit, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit, &protocol conformance descriptor for Apple_Workout_Core_WorkoutNotificationUnit);
    v10 = v5;
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v10 = v5;
  }

  if (!v3[3] || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v10))
  {
    result = closure #1 in Apple_Workout_Core_WorkoutNotification.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v10)
    {
      type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutNotification.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  if ((*(a1 + *(result + 32) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutNotification@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  result = UnknownStorage.init()();
  v5 = a2 + *(a1 + 32);
  *v5 = 0;
  *(v5 + 8) = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WorkoutNotification@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WorkoutNotification(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutNotification(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotification and conformance Apple_Workout_Core_WorkoutNotification, type metadata accessor for Apple_Workout_Core_WorkoutNotification, &protocol conformance descriptor for Apple_Workout_Core_WorkoutNotification);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutNotification(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotification and conformance Apple_Workout_Core_WorkoutNotification, type metadata accessor for Apple_Workout_Core_WorkoutNotification, &protocol conformance descriptor for Apple_Workout_Core_WorkoutNotification);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutNotification(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotification and conformance Apple_Workout_Core_WorkoutNotification, type metadata accessor for Apple_Workout_Core_WorkoutNotification, &protocol conformance descriptor for Apple_Workout_Core_WorkoutNotification);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_Command._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
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

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (result <= 2)
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

          v11 = v4;
          type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
          goto LABEL_15;
        }

        lazy protocol witness table accessor for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      else
      {
        v11 = v4;
        switch(result)
        {
          case 3:
            type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
            dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
            break;
          case 4:
            closure #4 in Apple_Workout_Core_WorkoutNotificationUnit.decodeMessage<A>(decoder:)(a1, v5, a2, a3);
            break;
          case 5:
            type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
LABEL_15:
            v4 = v11;
            dispatch thunk of Decoder.decodeSingularStringField(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t closure #4 in Apple_Workout_Core_WorkoutNotificationUnit.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  type metadata accessor for Apple_Workout_Core_Activity(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);
  return dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
}

uint64_t Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    result = closure #1 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(v3, a1, a2, a3);
    if (!v4)
    {
      closure #2 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #3 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(v3, a1, a2, a3);
      closure #4 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(v3, a1, a2, a3);
      type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #3 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + *(v14 + 32), v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Apple_Workout_Core_Activity?(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  outlined init with take of Apple_Workout_Core_Activity(v8, v13, type metadata accessor for Apple_Workout_Core_Activity);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_Activity and conformance Apple_Workout_Core_Activity, type metadata accessor for Apple_Workout_Core_Activity, &protocol conformance descriptor for Apple_Workout_Core_Activity);
  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
  return outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v13, type metadata accessor for Apple_Workout_Core_Activity);
}

uint64_t closure #4 in Apple_Workout_Core_WorkoutNotificationUnit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
  }

  return result;
}

Swift::Int Apple_Workout_Core_DataLinkMessage.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WorkoutNotificationUnit@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  UnknownStorage.init()();
  v4 = a1[7];
  v5 = (a2 + a1[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = type metadata accessor for Apple_Workout_Core_Activity(0);
  result = (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v10 = (a2 + a1[9]);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_DataLinkMessage@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotificationUnit and conformance Apple_Workout_Core_WorkoutNotificationUnit, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit, &protocol conformance descriptor for Apple_Workout_Core_WorkoutNotificationUnit);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_Command@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
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

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotificationUnit and conformance Apple_Workout_Core_WorkoutNotificationUnit, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit, &protocol conformance descriptor for Apple_Workout_Core_WorkoutNotificationUnit);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1, uint64_t a2)
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type Apple_Workout_Core_WorkoutNotificationUnit and conformance Apple_Workout_Core_WorkoutNotificationUnit, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit, &protocol conformance descriptor for Apple_Workout_Core_WorkoutNotificationUnit);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_WorkoutNotificationUnit.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v48 - v16;
  v18 = *a1;
  v19 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v19)
    {
      case 1:
        if (v18 != 1)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 2:
        if (v18 != 2)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 3:
        if (v18 != 3)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 4:
        if (v18 != 4)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 5:
        if (v18 != 5)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 6:
        if (v18 != 6)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 7:
        if (v18 != 7)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 8:
        if (v18 != 8)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 9:
        if (v18 != 9)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 10:
        if (v18 != 10)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 11:
        if (v18 != 11)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 12:
        if (v18 != 12)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 13:
        if (v18 != 13)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 14:
        if (v18 != 14)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 15:
        if (v18 != 15)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      case 16:
        if (v18 != 16)
        {
          goto LABEL_67;
        }

        goto LABEL_6;
      default:
        if (!v18)
        {
          goto LABEL_6;
        }

        goto LABEL_67;
    }
  }

  if (v18 != v19)
  {
    goto LABEL_67;
  }

LABEL_6:
  v20 = v15;
  v21 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0);
  v22 = v21[6];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_67;
    }

    if (*v23 != *v25 || v24 != v26)
    {
      v28 = v21;
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v21 = v28;
      if ((v29 & 1) == 0)
      {
        goto LABEL_67;
      }
    }
  }

  else if (v26)
  {
    goto LABEL_67;
  }

  v30 = v21[7];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = *(a2 + v30 + 8);
  if (v32)
  {
    if (!v34)
    {
      goto LABEL_67;
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
      goto LABEL_67;
    }
  }

  v49 = v21;
  v35 = v21[8];
  v36 = *(v20 + 48);
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v35, v17, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v37 = a2 + v35;
  v38 = v36;
  outlined init with copy of Apple_Workout_Core_Activity?(v37, &v17[v36], &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v39 = *(v5 + 48);
  if (v39(v17, 1, v4) == 1)
  {
    if (v39(&v17[v38], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
      goto LABEL_60;
    }

LABEL_26:
    outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSg_ADtMR);
    goto LABEL_67;
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v17, v12, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if (v39(&v17[v38], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_Activity);
    goto LABEL_26;
  }

  outlined init with take of Apple_Workout_Core_Activity(&v17[v38], v8, type metadata accessor for Apple_Workout_Core_Activity);
  v40 = specialized static Apple_Workout_Core_Activity.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_Activity);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_Activity);
  outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  if ((v40 & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_60:
  v41 = v49[9];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (!v43)
  {
    if (!v45)
    {
      goto LABEL_65;
    }

LABEL_67:
    v46 = 0;
    return v46 & 1;
  }

  if (!v45 || (*v42 != *v44 || v43 != v45) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_67;
  }

LABEL_65:
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v46 = dispatch thunk of static Equatable.== infix(_:_:)();
  return v46 & 1;
}

uint64_t specialized static Apple_Workout_Core_WorkoutNotification.== infix(_:_:)(double *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v4 != v5)
    {
      return 0;
    }

LABEL_8:
    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B16NotificationUnitV_Tt1g5(*(a1 + 2), *(a2 + 16)) & 1) == 0 || a1[3] != *(a2 + 24))
    {
      return 0;
    }

    v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutNotification(0) + 32);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = *(a2 + v6 + 8);
    if (v8)
    {
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      if (*v7 != *v9)
      {
        LOBYTE(v10) = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    type metadata accessor for UnknownStorage();
    _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
  }

  if (v5 > 3)
  {
    if (v5 > 5)
    {
      if (v5 == 6)
      {
        if (v4 != 6)
        {
          return 0;
        }
      }

      else if (v4 != 7)
      {
        return 0;
      }
    }

    else if (v5 == 4)
    {
      if (v4 != 4)
      {
        return 0;
      }
    }

    else if (v4 != 5)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4 != 3)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (v5)
  {
    if (v4 != 1)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t specialized static Apple_Workout_Core_NotificationUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v50 = &v48 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v52, v9);
  v55 = &v48 - v10;
  v11 = type metadata accessor for Apple_Workout_Core_WorkoutNotification(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = (&v48 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A12NotificationVSg_ADtMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSg_ADtMR);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v48 - v23;
  v51 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  v25 = *(v51 + 20);
  v26 = *(v21 + 56);
  v56 = a1;
  outlined init with copy of Apple_Workout_Core_Activity?(a1 + v25, v24, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v27 = v57 + v25;
  v28 = v57;
  outlined init with copy of Apple_Workout_Core_Activity?(v27, &v24[v26], &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
  v29 = *(v12 + 48);
  if (v29(v24, 1, v11) != 1)
  {
    outlined init with copy of Apple_Workout_Core_Activity?(v24, v19, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
    if (v29(&v24[v26], 1, v11) != 1)
    {
      outlined init with take of Apple_Workout_Core_Activity(&v24[v26], v15, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
      v33 = specialized static Apple_Workout_Core_WorkoutNotification.== infix(_:_:)(v19, v15);
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v15, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v19, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
      outlined destroy of Apple_Workout_Core_Activity?(v24, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
      if ((v33 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_8;
    }

    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v19, type metadata accessor for Apple_Workout_Core_WorkoutNotification);
LABEL_6:
    v30 = &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSg_ADtMd;
    v31 = &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSg_ADtMR;
    v32 = v24;
LABEL_15:
    outlined destroy of Apple_Workout_Core_Activity?(v32, v30, v31);
    goto LABEL_16;
  }

  if (v29(&v24[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  outlined destroy of Apple_Workout_Core_Activity?(v24, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMd, &_s11WorkoutCore06Apple_a1_b1_A12NotificationVSgMR);
LABEL_8:
  v34 = *(v51 + 24);
  v35 = *(v52 + 48);
  v36 = v55;
  outlined init with copy of Apple_Workout_Core_Activity?(v56 + v34, v55, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_Activity?(v28 + v34, v36 + v35, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v37 = v54;
  v38 = *(v53 + 48);
  if (v38(v36, 1, v54) == 1)
  {
    if (v38(v36 + v35, 1, v37) == 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v36, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
LABEL_21:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v40 & 1;
    }

    goto LABEL_13;
  }

  v39 = v50;
  outlined init with copy of Apple_Workout_Core_Activity?(v36, v50, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if (v38(v36 + v35, 1, v37) == 1)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v39, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
LABEL_13:
    v30 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMd;
    v31 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMR;
LABEL_14:
    v32 = v36;
    goto LABEL_15;
  }

  v42 = v49;
  outlined init with take of Apple_Workout_Core_Activity(v36 + v35, v49, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v43 = *(v37 + 20);
  v44 = *(v39 + v43);
  v45 = *(v42 + v43);
  if (v44 != v45)
  {

    v46 = closure #1 in static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(v44, v45);

    if (!v46)
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v42, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v39, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v30 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd;
      v31 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR;
      goto LABEL_14;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v47 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v42, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v39, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  outlined destroy of Apple_Workout_Core_Activity?(v36, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if (v47)
  {
    goto LABEL_21;
  }

LABEL_16:
  v40 = 0;
  return v40 & 1;
}

uint64_t specialized static Apple_Workout_Core_DataLinkMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMR);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  outlined init with copy of Apple_Workout_Core_Activity?(a1, &v23 - v16, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  outlined init with copy of Apple_Workout_Core_Activity?(a2, &v17[v18], &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
LABEL_9:
      type metadata accessor for Apple_Workout_Core_DataLinkMessage(0);
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v17, v12, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
LABEL_6:
    outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSg_AFtMR);
    goto LABEL_7;
  }

  outlined init with take of Apple_Workout_Core_Activity(&v17[v18], v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  v21 = specialized static Apple_Workout_Core_DataLinkMessage.OneOf_Message.== infix(_:_:)(v12, v8);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  outlined destroy of Apple_Workout_Core_Activity?(v17, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t specialized static Apple_Workout_Core_DataLinkMessage.OneOf_Message.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v89 = a1;
  v90 = a2;
  v2 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v82 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for Apple_Workout_Core_SequenceReset(0);
  MEMORY[0x28223BE20](v79, v8);
  v83 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v80 = (&v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Apple_Workout_Core_NotificationUpdate(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v88 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message(0);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v86 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v85 = &v79 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v87 = (&v79 - v29);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v84 = (&v79 - v32);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v79 - v35;
  v38 = MEMORY[0x28223BE20](v34, v37);
  v40 = &v79 - v39;
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v79 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0O_AEtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0O_AEtMR);
  v46 = MEMORY[0x28223BE20](v44 - 8, v45);
  v48 = &v79 - v47;
  v49 = (&v79 + *(v46 + 56) - v47);
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(v89, &v79 - v47, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  v50 = v49;
  outlined init with copy of Apple_Workout_Core_MetricsPublisher(v90, v49, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v52 = v84;
        outlined init with copy of Apple_Workout_Core_MetricsPublisher(v48, v84, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v53 = v80;
          outlined init with take of Apple_Workout_Core_Activity(v50, v80, type metadata accessor for Apple_Workout_Core_MetricsDelta);
          v54 = specialized static Apple_Workout_Core_MetricsDelta.== infix(_:_:)(v52, v53);
          v55 = type metadata accessor for Apple_Workout_Core_MetricsDelta;
          outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v53, type metadata accessor for Apple_Workout_Core_MetricsDelta);
          v56 = v52;
LABEL_25:
          outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v56, v55);
          goto LABEL_26;
        }

        v63 = type metadata accessor for Apple_Workout_Core_MetricsDelta;
        v64 = v52;
        goto LABEL_33;
      }

      v65 = v87;
      outlined init with copy of Apple_Workout_Core_MetricsPublisher(v48, v87, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v66 = v83;
        outlined init with take of Apple_Workout_Core_Activity(v49, v83, type metadata accessor for Apple_Workout_Core_SequenceReset);
        if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C18_PublisherSequenceV_Tt1g5(*v65, *v66))
        {
          type metadata accessor for UnknownStorage();
          _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
          v67 = dispatch thunk of static Equatable.== infix(_:_:)();
          outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v66, type metadata accessor for Apple_Workout_Core_SequenceReset);
          if (v67)
          {
            v68 = type metadata accessor for Apple_Workout_Core_SequenceReset;
            v69 = v65;
LABEL_41:
            outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v69, v68);
            outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v48, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
            v54 = 1;
            return v54 & 1;
          }
        }

        else
        {
          outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v66, type metadata accessor for Apple_Workout_Core_SequenceReset);
        }

        v77 = type metadata accessor for Apple_Workout_Core_SequenceReset;
        v78 = v65;
        goto LABEL_45;
      }

      v63 = type metadata accessor for Apple_Workout_Core_SequenceReset;
      v64 = v65;
      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v40 = v85;
      outlined init with copy of Apple_Workout_Core_MetricsPublisher(v48, v85, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v61 = v49;
        v62 = v81;
        outlined init with take of Apple_Workout_Core_Activity(v61, v81, type metadata accessor for Apple_Workout_Core_MirroredHostMessage);
        v54 = specialized static Apple_Workout_Core_MirroredHostMessage.== infix(_:_:)(v40, v62);
        v59 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage;
LABEL_23:
        v55 = v59;
        v60 = v62;
        goto LABEL_24;
      }

      v71 = type metadata accessor for Apple_Workout_Core_MirroredHostMessage;
    }

    else
    {
      v40 = v86;
      outlined init with copy of Apple_Workout_Core_MetricsPublisher(v48, v86, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v70 = v49;
        v62 = v82;
        outlined init with take of Apple_Workout_Core_Activity(v70, v82, type metadata accessor for Apple_Workout_Core_MirroredClientMessage);
        v54 = specialized static Apple_Workout_Core_MirroredClientMessage.== infix(_:_:)(v40, v62);
        v59 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage;
        goto LABEL_23;
      }

      v71 = type metadata accessor for Apple_Workout_Core_MirroredClientMessage;
    }

LABEL_32:
    v63 = v71;
    v64 = v40;
    goto LABEL_33;
  }

  v57 = v16;
  v58 = v88;
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Apple_Workout_Core_MetricsPublisher(v48, v43, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    if (!swift_getEnumCaseMultiPayload())
    {
      outlined init with take of Apple_Workout_Core_Activity(v50, v19, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v73 = *(v57 + 20);
      v74 = *&v43[v73];
      v75 = *&v19[v73];
      if (v74 == v75 || (, , v76 = closure #1 in static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(v74, v75), , , v76))
      {
        type metadata accessor for UnknownStorage();
        _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v19, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
          v69 = v43;
          v68 = type metadata accessor for Apple_Workout_Core_MetricsPublisher;
          goto LABEL_41;
        }
      }

      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v19, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v78 = v43;
      v77 = type metadata accessor for Apple_Workout_Core_MetricsPublisher;
LABEL_45:
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v78, v77);
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v48, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
      goto LABEL_35;
    }

    v63 = type metadata accessor for Apple_Workout_Core_MetricsPublisher;
    v64 = v43;
LABEL_33:
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v64, v63);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of Apple_Workout_Core_MetricsPublisher(v48, v40, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of Apple_Workout_Core_Activity(v50, v58, type metadata accessor for Apple_Workout_Core_NotificationUpdate);
      v54 = specialized static Apple_Workout_Core_NotificationUpdate.== infix(_:_:)(v40, v58);
      v59 = type metadata accessor for Apple_Workout_Core_NotificationUpdate;
      v55 = type metadata accessor for Apple_Workout_Core_NotificationUpdate;
      v60 = v58;
LABEL_24:
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v60, v59);
      v56 = v40;
      goto LABEL_25;
    }

    v71 = type metadata accessor for Apple_Workout_Core_NotificationUpdate;
    goto LABEL_32;
  }

  outlined init with copy of Apple_Workout_Core_MetricsPublisher(v48, v36, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_34:
    outlined destroy of Apple_Workout_Core_Activity?(v48, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0O_AEtMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0O_AEtMR);
LABEL_35:
    v54 = 0;
    return v54 & 1;
  }

  v54 = specialized == infix<A>(_:_:)(*v36, v36[8], *v50);
LABEL_26:
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v48, type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message);
  return v54 & 1;
}

uint64_t specialized static Apple_Workout_Core_MetricsDelta.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MetricsPublisher(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMR);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v32 - v15;
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C18_PublisherSequenceV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = type metadata accessor for Apple_Workout_Core_MetricsDelta(0);
  v18 = a1;
  v19 = a2;
  v32[0] = v17;
  v32[1] = v18;
  v20 = *(v17 + 24);
  v21 = *(v13 + 48);
  outlined init with copy of Apple_Workout_Core_Activity?(v18 + v20, v16, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  outlined init with copy of Apple_Workout_Core_Activity?(v19 + v20, &v16[v21], &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  v22 = *(v5 + 48);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v21], 1, v4) == 1)
    {
      outlined destroy of Apple_Workout_Core_Activity?(v16, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
LABEL_14:
      type metadata accessor for UnknownStorage();
      _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v25 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v25 & 1;
    }

    goto LABEL_7;
  }

  outlined init with copy of Apple_Workout_Core_Activity?(v16, v12, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if (v22(&v16[v21], 1, v4) == 1)
  {
    outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
LABEL_7:
    v23 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMd;
    v24 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSg_ADtMR;
LABEL_8:
    outlined destroy of Apple_Workout_Core_Activity?(v16, v23, v24);
    goto LABEL_9;
  }

  outlined init with take of Apple_Workout_Core_Activity(&v16[v21], v8, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  v27 = *(v4 + 20);
  v28 = *&v12[v27];
  v29 = *&v8[v27];
  if (v28 != v29)
  {

    v30 = closure #1 in static Apple_Workout_Core_MetricsPublisher.== infix(_:_:)(v28, v29);

    if (!v30)
    {
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
      v23 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd;
      v24 = &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR;
      goto LABEL_8;
    }
  }

  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v8, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(v12, type metadata accessor for Apple_Workout_Core_MetricsPublisher);
  outlined destroy of Apple_Workout_Core_Activity?(v16, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMd, &_s11WorkoutCore06Apple_a1_B17_MetricsPublisherVSgMR);
  if (v31)
  {
    goto LABEL_14;
  }

LABEL_9:
  v25 = 0;
  return v25 & 1;
}

uint64_t outlined init with take of Apple_Workout_Core_Activity(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of Apple_Workout_Core_DataLinkMessage.OneOf_Message?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMd, &_s11WorkoutCore06Apple_a1_B16_DataLinkMessageV06OneOf_F0OSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_DataLinkMessage.OneOf_Message(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_Core_MetricsPublisher(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for Apple_Workout_Core_WorkoutNotification(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationType and conformance Apple_Workout_Core_NotificationType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_NotificationUnitType and conformance Apple_Workout_Core_NotificationUnitType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_Command and conformance Apple_Workout_Core_Command);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_Command] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata completion function for Apple_Workout_Core_DataLinkMessage.OneOf_Message(uint64_t a1)
{
  result = type metadata accessor for Apple_Workout_Core_MetricsPublisher(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Workout_Core_NotificationUpdate(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Apple_Workout_Core_MetricsDelta(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Apple_Workout_Core_SequenceReset(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Apple_Workout_Core_MirroredHostMessage(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Apple_Workout_Core_MirroredClientMessage(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_MetricsDelta(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for [Apple_Workout_Core_PublisherSequence], type metadata accessor for Apple_Workout_Core_PublisherSequence, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for Apple_Workout_Core_MetricsPublisher?, type metadata accessor for Apple_Workout_Core_MetricsPublisher, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata completion function for Apple_Workout_Core_PublisherSequence(uint64_t a1)
{
  result = type metadata accessor for UnknownStorage();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_DataLinkMessage(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata completion function for Apple_Workout_Core_NotificationUpdate(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for Apple_Workout_Core_WorkoutNotification?, type metadata accessor for Apple_Workout_Core_WorkoutNotification, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for Apple_Workout_Core_MetricsPublisher?, type metadata accessor for Apple_Workout_Core_MetricsPublisher, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Apple_Workout_Core_WorkoutNotification(uint64_t a1)
{
  type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for [Apple_Workout_Core_WorkoutNotificationUnit], type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata completion function for Apple_Workout_Core_WorkoutNotificationUnit(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Double?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Apple_Workout_Core_DataLinkMessage.OneOf_Message?(319, &lazy cache variable for type metadata for Apple_Workout_Core_Activity?, type metadata accessor for Apple_Workout_Core_Activity, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Double?(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t outlined init with copy of Apple_Workout_Core_Activity?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_Activity?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  result = UnknownStorage.init()();
  v4 = a1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a1 + v2[7];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v2[8];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.lowerBound.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.upperBound.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.defaultZoneIndex.setter(int a1)
{
  result = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

double Apple_Workout_Core_HeartRateTargetZone.lowerBound.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double Apple_Workout_Core_HeartRateTargetZone.upperBound.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_HeartRateTargetZone.defaultZoneIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0) + 32));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Workout_Core_WorkoutStep.init()@<X0>(uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v3 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v3) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
}

void Apple_Workout_Core_WorkoutStep.type.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
    *(v2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
}

uint64_t Apple_Workout_Core_WorkoutStep.goal.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_Goal);
  v11 = type metadata accessor for Apple_Workout_Core_Goal(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  return swift_endAccess();
}

double Apple_Workout_Core_WorkoutStep.displayName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  v9 = (v8 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStep.activity.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_Activity);
  v11 = type metadata accessor for Apple_Workout_Core_Activity(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return swift_endAccess();
}

double Apple_Workout_Core_WorkoutStep.uuid.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v8);
    *(v3 + v6) = v8;
  }

  v9 = (v8 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;

  return result;
}

double Apple_Workout_Core_WorkoutStep.targetZones.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  *(v6 + v7) = a1;

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStep.hrTargetZone.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v11 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStep.powerTargetZone.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v11 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStep.optionalHrTargetZone.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v11 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  return swift_endAccess();
}

uint64_t Apple_Workout_Core_WorkoutStep.optionalPowerTargetZone.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v10 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v10);
    *(v2 + v8) = v10;
  }

  outlined init with take of Apple_Workout_Core_Goal(a1, v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v11 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalPowerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v10 + v12, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return swift_endAccess();
}

void Apple_Workout_Core_WorkoutStep.version.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v6);
    *(v2 + v4) = v6;
  }

  v7 = v6 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 4) = 0;
}

void Apple_Workout_Core_WorkoutStep.type.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  *(a1 + 8) = v4;
}

uint64_t Apple_Workout_Core_WorkoutStep.uuid.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t Apple_Workout_Core_WorkoutStep.goal.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v6, a1, type metadata accessor for Apple_Workout_Core_Goal);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  UnknownStorage.init()();
  v11 = *(v9 + 24);
  v12 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a1 + v11, 1, 1, v12);
  v13(a1 + *(v9 + 28), 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v6, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStep.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v8 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v7 + v8, v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v6, a1, type metadata accessor for Apple_Workout_Core_Activity);
  }

  *(a1 + 8) = 0;
  *a1 = 0;
  *(a1 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v6, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  }

  return result;
}

BOOL Apple_Workout_Core_WorkoutStep.hasDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

uint64_t Apple_Workout_Core_WorkoutStep.displayName.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double Apple_Workout_Core_WorkoutStep.targetZones.getter()
{
  type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  swift_beginAccess();

  return result;
}

uint64_t Apple_Workout_Core_WorkoutStep.version.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version);
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

uint64_t Apple_Workout_Core_WorkoutStep.hrTargetZone.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17 - v7;
  v9 = *(v2 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v9 + v10, v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v11 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v12 = *(*(v11 - 1) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v8, a2, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  UnknownStorage.init()();
  v13 = a2 + v11[6];
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = a2 + v11[7];
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = a2 + v11[8];
  *v15 = 0;
  *(v15 + 4) = 1;
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  }

  return result;
}

BOOL Apple_Workout_Core_WorkoutStep.hasOptionalHrTargetZone.getter(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  outlined destroy of Apple_Workout_Core_Goal?(v12, a1, a2);
  return v16;
}

uint64_t Apple_Workout_Core_WorkoutStep.powerTargetZone.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = *(v2 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v9 + v10, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v11 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v8, a2, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  v13 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  (*(*(v13 - 8) + 56))(a2, 1, 1, v13);
  UnknownStorage.init()();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_PowerZoneAutomatic.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_PowerZoneAutomatic(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_CyclingPowerZone.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  UnknownStorage.init()();
  v3 = *(v2 + 28);
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t Apple_Workout_Core_CyclingPowerZone.zone.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0) + 28);
  outlined destroy of Apple_Workout_Core_Goal?(v1 + v3, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_Zone);
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Workout_Core_PowerZoneTarget.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  type metadata accessor for Apple_Workout_Core_PowerZoneTarget(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_PowerZoneCustom.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  *a1 = 0;
  a1[1] = 0;
  result = UnknownStorage.init()();
  v4 = a1 + *(v2 + 28);
  *v4 = 0;
  *(v4 + 4) = 256;
  return result;
}

uint64_t Apple_Workout_Core_PowerZoneCustom.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for Apple_Workout_Core_PowerZoneCustom(0);
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 9) = 0;
  return result;
}

uint64_t Apple_Workout_Core_PowerZonesAlertTargetZone.automatic.setter(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  outlined destroy of Apple_Workout_Core_Goal?(v3, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneV10OneOf_TypeOSgMR);
  outlined init with take of Apple_Workout_Core_Goal(a1, v3, a2);
  v6 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t Apple_Workout_Core_CyclingPowerZone.zone.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + *(v7 + 28), v6, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v6, a1, type metadata accessor for Apple_Workout_Core_Zone);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v6, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  }

  return result;
}

uint64_t Apple_Workout_Core_TargetZone.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for Apple_Workout_Core_TargetZone(0);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return UnknownStorage.init()();
}

unint64_t Apple_Workout_Core_StepType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_StepType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_StepType and conformance Apple_Workout_Core_StepType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_ZoneType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 8;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ZoneType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_ZoneType and conformance Apple_Workout_Core_ZoneType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t Apple_Workout_Core_HeartRateZoneType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t protocol witness for Enum.init(rawValue:) in conformance Apple_Workout_Core_HeartRateZoneType@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance Apple_Workout_Core_HeartRateZoneType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_StepType(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_HeartRateZoneType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_HeartRateZoneType and conformance Apple_Workout_Core_HeartRateZoneType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_StepType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.thisStep.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + *(v7 + 60), v6, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v6, a1, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v6, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_IntervalsMetricsPublisher.thisStep : Apple_Workout_Core_IntervalsMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v8 + 60), v7, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v7, a2, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v11) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_IntervalsMetricsPublisher.thisStep : Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v8, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  v9 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 60);
  outlined destroy of Apple_Workout_Core_Goal?(a2 + v9, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.thisStep.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 60);
  outlined destroy of Apple_Workout_Core_Goal?(v1 + v3, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.thisStep.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 60);
  *(v5 + 12) = v15;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  return Apple_Workout_Core_IntervalsMetricsPublisher.thisStep.modify;
}

BOOL Apple_Workout_Core_IntervalsMetricsPublisher.hasThisStep.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v0 + *(v5 + 60), v4, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Goal?(v4, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearThisStep()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 60);
  outlined destroy of Apple_Workout_Core_Goal?(v0 + v1, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.nextStep.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + *(v7 + 64), v6, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v8 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v6, a1, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  UnknownStorage.init()();
  v10 = *(v8 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a1 + v10) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v6, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  return result;
}

uint64_t key path getter for Apple_Workout_Core_IntervalsMetricsPublisher.nextStep : Apple_Workout_Core_IntervalsMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(a1 + *(v8 + 64), v7, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v7, a2, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  if (one-time initialization token for defaultInstance != -1)
  {
    swift_once();
  }

  *(a2 + v11) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
  v12 = v10(v7, 1, v9);

  if (v12 != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v7, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  }

  return result;
}

uint64_t key path setter for Apple_Workout_Core_IntervalsMetricsPublisher.nextStep : Apple_Workout_Core_IntervalsMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v8, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  v9 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 64);
  outlined destroy of Apple_Workout_Core_Goal?(a2 + v9, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(v8, a2 + v9, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.nextStep.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 64);
  outlined destroy of Apple_Workout_Core_Goal?(v1 + v3, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  outlined init with take of Apple_Workout_Core_Goal(a1, v1 + v3, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.nextStep.modify(void *a1))()
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 64);
  *(v5 + 12) = v15;
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v1 + v15, v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    UnknownStorage.init()();
    v17 = *(v9 + 20);
    if (one-time initialization token for defaultInstance != -1)
    {
      swift_once();
    }

    *(v14 + v17) = static Apple_Workout_Core_WorkoutStep._StorageClass.defaultInstance;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  return Apple_Workout_Core_IntervalsMetricsPublisher.nextStep.modify;
}

void Apple_Workout_Core_IntervalsMetricsPublisher.thisStep.modify(uint64_t **a1, char a2)
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
    outlined init with copy of Apple_Workout_Core_WorkoutStep((*a1)[5], v4, type metadata accessor for Apple_Workout_Core_WorkoutStep);
    outlined destroy of Apple_Workout_Core_Goal?(v9 + v3, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v4, v9 + v3, type metadata accessor for Apple_Workout_Core_WorkoutStep);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    outlined destroy of Apple_Workout_Core_WorkoutStep(v5, type metadata accessor for Apple_Workout_Core_WorkoutStep);
  }

  else
  {
    outlined destroy of Apple_Workout_Core_Goal?(v9 + v3, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
    outlined init with take of Apple_Workout_Core_Goal(v5, v9 + v3, type metadata accessor for Apple_Workout_Core_WorkoutStep);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Apple_Workout_Core_IntervalsMetricsPublisher.hasNextStep.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v0 + *(v5 + 64), v4, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v6 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  outlined destroy of Apple_Workout_Core_Goal?(v4, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  return v7;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearNextStep()()
{
  v1 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 64);
  outlined destroy of Apple_Workout_Core_Goal?(v0 + v1, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMd, &_s11WorkoutCore06Apple_a1_b1_A4StepVSgMR);
  v2 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

double Apple_Workout_Core_IntervalsMetricsPublisher.startDateSinceReferenceDate.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 68);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.startDateSinceReferenceDate.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v4 = v1 + *(result + 68);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.startDateSinceReferenceDate.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 68);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_IntervalsMetricsPublisher.startDateSinceReferenceDate.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearStartDateSinceReferenceDate()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 68);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Apple_Workout_Core_IntervalsMetricsPublisher.activeEnergy.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 72);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.activeEnergy.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v4 = v1 + *(result + 72);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.activeEnergy.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 72);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_IntervalsMetricsPublisher.activeEnergy.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearActiveEnergy()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 72);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.currentStepIndex.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 76));
  if (v1[4])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.currentStepIndex.setter(int a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v4 = v1 + *(result + 76);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.currentStepIndex.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 76);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return Apple_Workout_Core_IntervalsMetricsPublisher.currentStepIndex.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearCurrentStepIndex()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 76);
  *v1 = 0;
  *(v1 + 4) = 1;
}

double Apple_Workout_Core_IntervalsMetricsPublisher.distanceGoalAchievedDuration.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 80);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.distanceGoalAchievedDuration.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  v4 = v1 + *(result + 80);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_IntervalsMetricsPublisher.distanceGoalAchievedDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 80);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_IntervalsMetricsPublisher.distanceGoalAchievedDuration.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_IntervalsMetricsPublisher.clearDistanceGoalAchievedDuration()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 80);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 56);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0) + 56);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_IntervalsMetricsPublisher.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Workout_Core_IntervalsMetricsPublisher(0);
  *a1 = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *(a1 + 60) = 0u;
  UnknownStorage.init()();
  v3 = v2[15];
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutStep(0);
  v5 = *(*(v4 - 8) + 56);
  v5(a1 + v3, 1, 1, v4);
  result = (v5)(a1 + v2[16], 1, 1, v4);
  v7 = a1 + v2[17];
  *v7 = 0;
  v7[8] = 1;
  v8 = a1 + v2[18];
  *v8 = 0;
  v8[8] = 1;
  v9 = a1 + v2[19];
  *v9 = 0;
  v9[4] = 1;
  v10 = a1 + v2[20];
  *v10 = 0;
  v10[8] = 1;
  return result;
}

void key path setter for Apple_Workout_Core_WorkoutStep.type : Apple_Workout_Core_WorkoutStep(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
}

void (*Apple_Workout_Core_WorkoutStep.type.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;
  return Apple_Workout_Core_WorkoutStep.type.modify;
}

void Apple_Workout_Core_WorkoutStep.type.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v2 + 84);
    v10 = *(v2 + 88);
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v8 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v8);
    *(v10 + v9) = v8;
  }

  swift_beginAccess();
  *(v8 + 16) = v3;
  *(v8 + 24) = v6;

  free(v2);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.goal : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_Goal(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_Goal);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_Goal);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.goal.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_Goal(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    UnknownStorage.init()();
    v19 = *(v9 + 24);
    v20 = type metadata accessor for Apple_Workout_Core_HKQuantity(0);
    v21 = *(*(v20 - 8) + 56);
    v21(v14 + v19, 1, 1, v20);
    v21(v14 + *(v9 + 28), 1, 1, v20);
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_Goal);
  }

  return Apple_Workout_Core_WorkoutStep.goal.modify;
}

void Apple_Workout_Core_WorkoutStep.goal.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_Goal);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v6 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v10, v14, type metadata accessor for Apple_Workout_Core_Goal);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v6 + v15, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v9, type metadata accessor for Apple_Workout_Core_Goal);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v18 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v9, v14, type metadata accessor for Apple_Workout_Core_Goal);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__goal;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v18 + v23, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMd, &_s11WorkoutCore06Apple_a1_B5_GoalVSgMR);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

double key path getter for Apple_Workout_Core_WorkoutStep.targetZones : Apple_Workout_Core_WorkoutStep@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v4 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

double key path setter for Apple_Workout_Core_WorkoutStep.targetZones : Apple_Workout_Core_WorkoutStep(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  *(v6 + v7) = v3;

  return result;
}

void (*Apple_Workout_Core_WorkoutStep.targetZones.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return Apple_Workout_Core_WorkoutStep.targetZones.modify;
}

void Apple_Workout_Core_WorkoutStep.targetZones.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
      *(v9 + v8) = v7;
    }

    v10 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
    swift_beginAccess();
    *(v7 + v10) = v3;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 88);
      v14 = *(v2 + 80);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v12 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v12);
      *(v14 + v13) = v12;
    }

    v15 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__targetZones;
    swift_beginAccess();
    *(v12 + v15) = v3;
  }

  free(v2);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.activity : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_Activity(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_Activity);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_Activity);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.activity.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_Activity(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *(v14 + 8) = 0;
    *v14 = 0;
    *(v14 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_Activity);
  }

  return Apple_Workout_Core_WorkoutStep.activity.modify;
}

void Apple_Workout_Core_WorkoutStep.activity.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_Activity);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v6 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v10, v14, type metadata accessor for Apple_Workout_Core_Activity);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v6 + v15, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v9, type metadata accessor for Apple_Workout_Core_Activity);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v18 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v9, v14, type metadata accessor for Apple_Workout_Core_Activity);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__activity;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v18 + v23, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMd, &_s11WorkoutCore06Apple_a1_B9_ActivityVSgMR);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t Apple_Workout_Core_WorkoutStep.clearGoal()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v20 - v12;
  v14 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v16 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v16);
    *(v9 + v14) = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v13, v16 + v18, a1, a2);
  return swift_endAccess();
}

double key path getter for Apple_Workout_Core_WorkoutStep.uuid : Apple_Workout_Core_WorkoutStep@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;

  return result;
}

double key path setter for Apple_Workout_Core_WorkoutStep.uuid : Apple_Workout_Core_WorkoutStep(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  v8 = (v7 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  *v8 = v4;
  v8[1] = v3;

  return result;
}

void (*Apple_Workout_Core_WorkoutStep.uuid.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return Apple_Workout_Core_WorkoutStep.uuid.modify;
}

void Apple_Workout_Core_WorkoutStep.uuid.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v8 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    v11 = (v8 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
    swift_beginAccess();
    *v11 = v3;
    v11[1] = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v13 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v13);
      *(v15 + v14) = v13;
    }

    v16 = (v13 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__uuid);
    swift_beginAccess();
    *v16 = v3;
    v16[1] = v5;
  }

  free(v2);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.hrTargetZone : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.hrTargetZone.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    UnknownStorage.init()();
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  }

  return Apple_Workout_Core_WorkoutStep.hrTargetZone.modify;
}

void Apple_Workout_Core_WorkoutStep.hrTargetZone.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v6 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v10, v14, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v6 + v15, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v9, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v18 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v9, v14, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__hrTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v18 + v23, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.powerTargetZone : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.powerTargetZone.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    v19 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    UnknownStorage.init()();
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  return Apple_Workout_Core_WorkoutStep.powerTargetZone.modify;
}

void Apple_Workout_Core_WorkoutStep.powerTargetZone.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v6 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v10, v14, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v6 + v15, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v9, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v18 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v9, v14, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__powerTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v18 + v23, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

double key path getter for Apple_Workout_Core_WorkoutStep.displayName : Apple_Workout_Core_WorkoutStep@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;

  return result;
}

double key path setter for Apple_Workout_Core_WorkoutStep.displayName : Apple_Workout_Core_WorkoutStep(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
    *(a2 + v5) = v7;
  }

  v8 = (v7 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  *v8 = v4;
  v8[1] = v3;

  return result;
}

void (*Apple_Workout_Core_WorkoutStep.displayName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return Apple_Workout_Core_WorkoutStep.displayName.modify;
}

void Apple_Workout_Core_WorkoutStep.displayName.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v8 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v8);
      *(v10 + v9) = v8;
    }

    v11 = (v8 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
    swift_beginAccess();
    *v11 = v3;
    v11[1] = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v13 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v13);
      *(v15 + v14) = v13;
    }

    v16 = (v13 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
    swift_beginAccess();
    *v16 = v3;
    v16[1] = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStep.clearDisplayName()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v4 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v4;
  }

  v5 = (v4 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__displayName);
  swift_beginAccess();
  *v5 = 0;
  v5[1] = 0;
}

void key path getter for Apple_Workout_Core_WorkoutStep.version : Apple_Workout_Core_WorkoutStep(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  v4 = *v3;
  if (*(v3 + 4))
  {
    v4 = 0;
  }

  *a2 = v4;
}

void key path setter for Apple_Workout_Core_WorkoutStep.version : Apple_Workout_Core_WorkoutStep(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v6 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v6);
    *(a2 + v4) = v6;
  }

  v7 = v6 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  *v7 = v3;
  *(v7 + 4) = 0;
}

void (*Apple_Workout_Core_WorkoutStep.version.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  v7 = *v6;
  if (*(v6 + 4))
  {
    v7 = 0;
  }

  *(v4 + 80) = v7;
  return Apple_Workout_Core_WorkoutStep.version.modify;
}

void Apple_Workout_Core_WorkoutStep.version.modify(uint64_t *a1, char a2)
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
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v7 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v7);
    *(v9 + v8) = v7;
  }

  v10 = v7 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  *v10 = v3;
  *(v10 + 4) = 0;

  free(v2);
}

BOOL Apple_Workout_Core_WorkoutStep.hasVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20)) + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  return (*(v1 + 4) & 1) == 0;
}

Swift::Void __swiftcall Apple_Workout_Core_WorkoutStep.clearVersion()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v4 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v4);
    *(v1 + v2) = v4;
  }

  v5 = v4 + OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__version;
  swift_beginAccess();
  *v5 = 0;
  *(v5 + 4) = 1;
}

uint64_t key path setter for Apple_Workout_Core_WorkoutStep.optionalHrTargetZone : Apple_Workout_Core_WorkoutStep(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Apple_Workout_Core_WorkoutStep(a1, v12, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  v13 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
    swift_allocObject();
    v15 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v15);
    *(a2 + v13) = v15;
  }

  outlined init with take of Apple_Workout_Core_Goal(v12, v7, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v7, v15 + v16, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  return swift_endAccess();
}

void (*Apple_Workout_Core_WorkoutStep.optionalHrTargetZone.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR) - 8) + 64);
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
  v9 = type metadata accessor for Apple_Workout_Core_HeartRateTargetZone(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
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
  v15 = *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v16 + v17, v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    UnknownStorage.init()();
    v19 = v14 + v9[6];
    *v19 = 0;
    *(v19 + 8) = 1;
    v20 = v14 + v9[7];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = v14 + v9[8];
    *v21 = 0;
    *(v21 + 4) = 1;
    if (v18(v8, 1, v9) != 1)
    {
      outlined destroy of Apple_Workout_Core_Goal?(v8, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    }
  }

  else
  {
    outlined init with take of Apple_Workout_Core_Goal(v8, v14, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  }

  return Apple_Workout_Core_WorkoutStep.optionalHrTargetZone.modify;
}

void Apple_Workout_Core_WorkoutStep.optionalHrTargetZone.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    outlined init with copy of Apple_Workout_Core_WorkoutStep(*(v2 + 120), *(v2 + 112), type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v6 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v10, v14, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v6 + v15, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    swift_endAccess();
    outlined destroy of Apple_Workout_Core_WorkoutStep(v9, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Apple_Workout_Core_WorkoutStep._StorageClass(0);
      swift_allocObject();
      v18 = Apple_Workout_Core_WorkoutStep._StorageClass.init(copying:)(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    outlined init with take of Apple_Workout_Core_Goal(v9, v14, type metadata accessor for Apple_Workout_Core_HeartRateTargetZone);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV11WorkoutCore30Apple_Workout_Core_WorkoutStepP33_C4A31DDF2A2BA108648D1E583A5E019C13_StorageClass__optionalHrTargetZone;
    swift_beginAccess();
    _s11WorkoutCore06Apple_a1_B5_GoalVSgWOdTm_0(v14, v18 + v23, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B20_HeartRateTargetZoneVSgMR);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t key path getter for Apple_Workout_Core_WorkoutStep.powerTargetZone : Apple_Workout_Core_WorkoutStep@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v16 - v8;
  v10 = *(a1 + *(type metadata accessor for Apple_Workout_Core_WorkoutStep(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  _s11WorkoutCore06Apple_a1_B5_GoalVSgWOcTm_0(v10 + v11, v9, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  v12 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return outlined init with take of Apple_Workout_Core_Goal(v9, a3, type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone);
  }

  v14 = type metadata accessor for Apple_Workout_Core_PowerZonesAlertTargetZone.OneOf_Type(0);
  (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  UnknownStorage.init()();
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return outlined destroy of Apple_Workout_Core_Goal?(v9, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMd, &_s11WorkoutCore06Apple_a1_B26_PowerZonesAlertTargetZoneVSgMR);
  }

  return result;
}