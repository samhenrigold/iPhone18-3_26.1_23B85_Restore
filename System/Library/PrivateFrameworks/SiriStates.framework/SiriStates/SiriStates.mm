id one-time initialization function for abstract()
{
  type metadata accessor for CallState();
  result = CallState.__allocating_init(name:parent:eventHandler:)(0x7463617274736241, 0xE800000000000000, 0, implicit closure #1 in variable initialization expression of static CallState.abstract, 0);
  static CallState.abstract = result;
  return result;
}

{
  type metadata accessor for State();
  result = State.__allocating_init(name:parent:eventHandler:)(0x7463617274736241, 0xE800000000000000, 0, implicit closure #1 in variable initialization expression of static CallState.abstract, 0);
  static State.abstract = result;
  return result;
}

{
  type metadata accessor for SharedState();
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0x7463617274736241, 0xE800000000000000, 0, implicit closure #1 in variable initialization expression of static CallState.abstract, 0);
  static SharedState.abstract = result;
  return result;
}

uint64_t *CallState.abstract.unsafeMutableAddressor()
{
  if (one-time initialization token for abstract != -1)
  {
    swift_once();
  }

  return &static CallState.abstract;
}

uint64_t *State.abstract.unsafeMutableAddressor()
{
  if (one-time initialization token for abstract != -1)
  {
    swift_once();
  }

  return &static State.abstract;
}

uint64_t *SharedState.abstract.unsafeMutableAddressor()
{
  if (one-time initialization token for abstract != -1)
  {
    swift_once();
  }

  return &static SharedState.abstract;
}

id static CallState.abstract.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

id one-time initialization function for passive()
{
  type metadata accessor for SharedState();
  v0 = *SharedState.mirroring.unsafeMutableAddressor();
  v1 = v0;
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0x65766973736150, 0xE700000000000000, v0, implicit closure #1 in variable initialization expression of static SharedState.passive, 0);
  static SharedState.passive = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static SharedState.passive(uint64_t a1)
{
  if (a1 == 6 || a1 == 4)
  {
    return 1;
  }

  if (a1 != 3)
  {
    return 0;
  }

  v1 = *SharedState.preparingToServe.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *SharedState.passive.unsafeMutableAddressor()
{
  if (one-time initialization token for passive != -1)
  {
    swift_once();
  }

  return &static SharedState.passive;
}

id static SharedState.passive.getter()
{
  if (one-time initialization token for passive != -1)
  {
    swift_once();
  }

  v1 = static SharedState.passive;

  return v1;
}

id one-time initialization function for resting()
{
  type metadata accessor for State();
  v0 = *State.attending.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x676E6974736552, 0xE700000000000000, v0, implicit closure #1 in variable initialization expression of static State.resting, 0);
  static State.resting = result;
  return result;
}

void *implicit closure #1 in variable initialization expression of static State.resting(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) != 0xC)
  {
    return 0;
  }

  v1 = *State.available.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *State.resting.unsafeMutableAddressor()
{
  if (one-time initialization token for resting != -1)
  {
    swift_once();
  }

  return &static State.resting;
}

id static State.resting.getter()
{
  if (one-time initialization token for resting != -1)
  {
    swift_once();
  }

  v1 = static State.resting;

  return v1;
}

uint64_t SharedClient.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for SharedClient.delegate : SharedClient@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SharedClient.delegate : SharedClient(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*SharedClient.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____SRSTSharedClient_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SharedClient.delegate.modify;
}

void SharedClient.delegate.modify(void **a1, char a2)
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

uint64_t SharedClient.currentState.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t SharedClient.currentState.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t key path getter for SharedClient.currentState : SharedClient@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for SharedClient.currentState : SharedClient(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*SharedClient.currentState.modify(uint64_t *a1))()
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
  return SharedClient.currentState.modify;
}

uint64_t key path setter for SharedClient.$currentState : SharedClient(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xA8))(v6);
}

uint64_t SharedClient.$currentState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharedClient.$currentState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateCSg_GMR);
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

  v10 = OBJC_IVAR____SRSTSharedClient__currentState[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$currentState.modify;
}

uint64_t key path getter for SharedClient.mostRecentEvent : SharedClient@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SharedClient.mostRecentEvent.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t SharedClient.mostRecentEvent.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*SharedClient.mostRecentEvent.modify(uint64_t *a1))()
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
  return SharedClient.mostRecentEvent.modify;
}

void SharedClient.currentState.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path setter for SharedClient.$mostRecentEvent : SharedClient(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD8))(v6);
}

uint64_t SharedClient.$currentState.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t SharedClient.$mostRecentEvent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*SharedClient.$mostRecentEvent.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedEventOSg_GMR);
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

  v10 = OBJC_IVAR____SRSTSharedClient__mostRecentEvent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$mostRecentEvent.modify;
}

void SharedClient.$currentState.modify(uint64_t a1, char a2)
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

uint64_t SharedClient.mostRecentEventName.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  if (v2)
  {
    return 0;
  }

  else
  {
    return SharedEvent.name.getter(v1);
  }
}

void SharedClient.dispatchEvent(_:)(uint64_t a1)
{
  type metadata accessor for NotificationCenterHelper();
  v3 = a1;
  v2 = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
  static NotificationCenterHelper.dispatch<A>(_:)(&v3, &type metadata for SharedEvent, v2);
}

id SharedClient.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____SRSTSharedClient_stopped) & 1) == 0)
  {
    type metadata accessor for SharedClient(0);
    lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedClient and conformance SharedClient, type metadata accessor for SharedClient, &protocol conformance descriptor for SharedClient);
    static Clientele.remove<A>(_:)(v1);
    v6 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v6, v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_269189000, v7, v8, "Deinit called for SharedClient", v9, 2u);
      MEMORY[0x26D632230](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v10 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.deinit);
  }

  v11 = type metadata accessor for SharedClient(0);
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

void @objc closure #1 in variable initialization expression of static SharedClient.handleStateTransititionNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static SharedClient.handleStateTransititionNotification(a2, a3);
}

uint64_t static SharedClient.handleStateTransititionNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static SharedClient.handleStateTransititionNotification[0] = a1;
  return result;
}

uint64_t key path getter for static SharedClient.handleStateTransititionNotification : SharedClient.Type@<X0>(uint64_t (**a1)()@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SharedClient.handleStateTransititionNotification[0];
  return result;
}

uint64_t key path setter for static SharedClient.handleStateTransititionNotification : SharedClient.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static SharedClient.handleStateTransititionNotification[0] = v1;
  return result;
}

void @objc closure #1 in variable initialization expression of static SharedClient.handleEventNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static SharedClient.handleEventNotification(a2, a3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent()
{
  result = lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent;
  if (!lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent;
  if (!lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent;
  if (!lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent;
  if (!lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharedEvent and conformance SharedEvent);
  }

  return result;
}

uint64_t type metadata accessor for SharedClient(uint64_t a1)
{
  result = type metadata singleton initialization cache for SharedClient;
  if (!type metadata singleton initialization cache for SharedClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t sub_26918E12C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t static SharedClient.handleEventNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static SharedClient.handleEventNotification = a1;
  return result;
}

uint64_t key path getter for static SharedClient.handleEventNotification : SharedClient.Type@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SharedClient.handleEventNotification;
  return result;
}

uint64_t key path setter for static SharedClient.handleEventNotification : SharedClient.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static SharedClient.handleEventNotification = v1;
  return result;
}

id SharedClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SharedClient.init()()
{
  v56 = type metadata accessor for Logger();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedEventOSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMd, &_s7Combine9PublishedVy10SiriStates11SharedStateCSgGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____SRSTSharedClient__currentState[0];
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates11SharedStateCSgMd, &_s10SiriStates11SharedStateCSgMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v0[v10], v9, v6);
  v11 = OBJC_IVAR____SRSTSharedClient__mostRecentEvent;
  v64 = 0;
  LOBYTE(v65) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates11SharedEventOSgMd, &_s10SiriStates11SharedEventOSgMR);
  Published.init(initialValue:)();
  (*(v3 + 32))(&v0[v11], v5, v2);
  v0[OBJC_IVAR____SRSTSharedClient_stopped] = 0;
  v12 = type metadata accessor for SharedClient(0);
  v63.receiver = v0;
  v63.super_class = v12;
  v13 = objc_msgSendSuper2(&v63, sel_init);
  lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedClient and conformance SharedClient, type metadata accessor for SharedClient, &protocol conformance descriptor for SharedClient);
  v53 = v13;
  v14 = static Clientele.add<A>(_:)(v53);
  v15 = *SharedState.allStates.unsafeMutableAddressor();
  if ((v15 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for SharedState();
    lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedState and conformance NSObject, type metadata accessor for SharedState, MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    v15 = v64;
    v16 = v65;
    v17 = v66;
    v18 = v67;
    v19 = v68;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);

    v18 = 0;
  }

  v57 = v17;
  v58 = v14;
  v23 = (v17 + 64) >> 6;
  if (v15 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v24 = v18;
    v25 = v19;
    v26 = v18;
    if (!v19)
    {
      break;
    }

LABEL_12:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
LABEL_18:
      outlined consume of Set<SharedState>.Iterator._Variant(v15);
      v57 = static SharedEvent.allCases.getter();
      v35 = v57[2];
      v36 = v58;
      if (v35)
      {
        type metadata accessor for NotificationCenterHelper();
        v37 = v57 + 4;
        v38 = darwinNotificationCenter.unsafeMutableAddressor();
        swift_beginAccess();
        v39 = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
        do
        {
          v40 = *v37++;
          value = v38->value;
          v42 = static SharedClient.handleEventNotification;
          v60 = &type metadata for SharedEvent;
          v61 = v39;
          v59[0] = v40;
          v43 = value;
          v44 = static NotificationCenterHelper.notifcationName(for:)(v59);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          CFNotificationCenterAddObserver(v43, v36, v42, v44, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

          --v35;
        }

        while (v35);
      }

      v45 = Logger.framework.unsafeMutableAddressor();
      v46 = v55;
      v47 = v54;
      v48 = v56;
      (*(v55 + 16))(v54, v45, v56);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_269189000, v49, v50, "SharedClient added Darwin observers", v51, 2u);
        MEMORY[0x26D632230](v51, -1, -1);
      }

      (*(v46 + 8))(v47, v48);
      return;
    }

    while (1)
    {
      v30 = darwinNotificationCenter.unsafeMutableAddressor()->value;
      swift_beginAccess();
      v31 = static SharedClient.handleStateTransititionNotification[0];
      type metadata accessor for NotificationCenterHelper();
      v60 = type metadata accessor for SharedState();
      v61 = lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedState and conformance SharedState, type metadata accessor for SharedState, &protocol conformance descriptor for SharedState);
      v59[0] = v28;
      v32 = v30;
      v33 = v28;
      v34 = static NotificationCenterHelper.notifcationName(for:)(v59);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      CFNotificationCenterAddObserver(v32, v58, v31, v34, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v18 = v26;
      v19 = v27;
      if ((v15 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v29 = __CocoaSet.Iterator.next()();
      if (v29)
      {
        v62 = v29;
        type metadata accessor for SharedState();
        swift_dynamicCast();
        v28 = v59[0];
        v26 = v18;
        v27 = v19;
        if (v59[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_18;
    }

    v25 = *(v16 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall SharedClient.stopClient()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____SRSTSharedClient_stopped;
  if ((v1[OBJC_IVAR____SRSTSharedClient_stopped] & 1) == 0)
  {
    v7 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v7, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_269189000, v8, v9, "#SiriStates stopping client", v10, 2u);
      MEMORY[0x26D632230](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v1[v6] = 1;
    type metadata accessor for SharedClient(0);
    lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedClient and conformance SharedClient, type metadata accessor for SharedClient, &protocol conformance descriptor for SharedClient);
    static Clientele.remove<A>(_:)(v1);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v11 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.stopClient());
  }
}

uint64_t protocol witness for ClientProtocol.delegate.getter in conformance SharedClient@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.delegate.modify in conformance SharedClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.currentState.getter in conformance SharedClient@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.currentState.modify in conformance SharedClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x98))();
  return protocol witness for ClientProtocol.currentState.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.mostRecentEvent.getter in conformance SharedClient@<X0>(uint64_t a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.mostRecentEvent.modify in conformance SharedClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

void protocol witness for ClientProtocol.delegate.modify in conformance SharedClient(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id protocol witness for ClientProtocol.init() in conformance SharedClient()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t lazy protocol witness table accessor for type SharedClient and conformance SharedClient(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void partial apply for closure #1 in SharedClient.stopClient()()
{
  v1 = *(v0 + 16);
  type metadata accessor for NotificationCenterHelper();
  static NotificationCenterHelper.removeEveryObserver(_:)(v1);
}

void type metadata completion function for SharedClient(uint64_t a1)
{
  type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<SharedState?>, &_s10SiriStates11SharedStateCSgMd, &_s10SiriStates11SharedStateCSgMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<SharedEvent?>, &_s10SiriStates11SharedEventOSgMd, &_s10SiriStates11SharedEventOSgMR);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void type metadata accessor for Published<SharedState?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
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

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void specialized closure #1 in variable initialization expression of static SharedClient.handleStateTransititionNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  type metadata accessor for NotificationCenterHelper();
  v11 = type metadata accessor for SharedState();
  v12 = lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedState and conformance SharedState, type metadata accessor for SharedState, &protocol conformance descriptor for SharedState);
  static NotificationCenterHelper.state<A>(from:)(a2, v11, v12, &v49);
  v13 = v49;
  if (v49)
  {
    v48 = a1;
    v14 = Logger.framework.unsafeMutableAddressor();
    v46 = *(v5 + 16);
    v46(v10, v14, v4);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    v18 = os_log_type_enabled(v16, v17);
    v47 = v15;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v44 = v5 + 16;
      v20 = v19;
      v21 = swift_slowAlloc();
      v45 = v5;
      v22 = v21;
      v49 = v21;
      *v20 = 136315138;
      v43 = v14;
      v23 = v4;
      v24 = v8;
      v25 = *&v15[OBJC_IVAR____SRSTSharedState_name];
      v26 = *&v15[OBJC_IVAR____SRSTSharedState_name + 8];

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v49);

      *(v20 + 4) = v27;
      v8 = v24;
      v4 = v23;
      v14 = v43;
      _os_log_impl(&dword_269189000, v16, v17, "SharedClient received valid state transition: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v28 = v22;
      v5 = v45;
      MEMORY[0x26D632230](v28, -1, -1);
      MEMORY[0x26D632230](v20, -1, -1);
    }

    v29 = *(v5 + 8);
    v29(v10, v4);
    type metadata accessor for SharedClient(0);
    lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedClient and conformance SharedClient, type metadata accessor for SharedClient, &protocol conformance descriptor for SharedClient);
    v30 = static Clientele.contains<A>(_:)(v48);
    if (v30)
    {
      v31 = v30;
      v32 = MEMORY[0x277D85000];
      v33 = *((*MEMORY[0x277D85000] & *v30) + 0x90);
      v34 = v47;
      v35 = v33(v13);
      v36 = (*((*v32 & *v31) + 0x70))(v35);
      if (v36)
      {
        [v36 stateMachineWithClient:v31 didTransitionToState:v34];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v46(v8, v14, v4);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v8;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_269189000, v37, v38, "Observer for darwin callback handler not found", v40, 2u);
        MEMORY[0x26D632230](v40, -1, -1);

        v41 = v39;
      }

      else
      {

        v41 = v8;
      }

      v29(v41, v4);
    }
  }
}

void specialized closure #1 in variable initialization expression of static SharedClient.handleEventNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  type metadata accessor for NotificationCenterHelper();
  v11 = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
  static NotificationCenterHelper.event<A>(from:)(a2, &type metadata for SharedEvent, v11, &v43);
  if ((v44 & 1) == 0)
  {
    v42 = a1;
    v12 = v43;
    v13 = Logger.framework.unsafeMutableAddressor();
    v40 = *(v5 + 16);
    v40(v10, v13, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v41 = v12;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v39 = v5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v38 = v13;
      v20 = v19;
      v43 = v19;
      *v18 = 136315138;
      v21 = SharedEvent.name.getter(v12);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v43);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_269189000, v14, v15, "SharedClient received valid event reception: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v24 = v20;
      v13 = v38;
      MEMORY[0x26D632230](v24, -1, -1);
      v25 = v18;
      v5 = v39;
      MEMORY[0x26D632230](v25, -1, -1);
    }

    v26 = *(v5 + 8);
    v26(v10, v4);
    type metadata accessor for SharedClient(0);
    lazy protocol witness table accessor for type SharedClient and conformance SharedClient(&lazy protocol witness table cache variable for type SharedClient and conformance SharedClient, type metadata accessor for SharedClient, &protocol conformance descriptor for SharedClient);
    v27 = static Clientele.contains<A>(_:)(v42);
    if (v27)
    {
      v28 = v27;
      v29 = MEMORY[0x277D85000];
      v30 = v41;
      v31 = (*((*MEMORY[0x277D85000] & *v27) + 0xC0))(v41, 0);
      v32 = (*((*v29 & *v28) + 0x70))(v31);
      if (v32)
      {
        v33 = v32;
        if ([v32 respondsToSelector_])
        {
          [v33 stateMachineWithClient:v28 didReceiveEvent:v30];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v40(v8, v13, v4);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_269189000, v34, v35, "Observer for darwin callback handler not found", v36, 2u);
        MEMORY[0x26D632230](v36, -1, -1);
      }

      v26(v8, v4);
    }
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

id one-time initialization function for ongoingCall()
{
  type metadata accessor for CallState();
  v0 = *CallState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = CallState.__allocating_init(name:parent:eventHandler:)(0x43676E696F676E4FLL, 0xEB000000006C6C61, v0, implicit closure #1 in variable initialization expression of static CallState.ongoingCall, 0);
  static CallState.ongoingCall = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static CallState.ongoingCall(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        goto LABEL_16;
      }
    }

    else if (a1)
    {
      if (a1 != 1)
      {
        return v1;
      }

      goto LABEL_16;
    }

    return 1;
  }

  if (a1 > 7)
  {
    if (a1 == 11)
    {
      goto LABEL_16;
    }

    if (a1 != 10)
    {
      if (a1 == 8)
      {
        v2 = CallState.onHoldCall.unsafeMutableAddressor();
        goto LABEL_17;
      }

      return v1;
    }

    return 1;
  }

  if ((a1 - 4) < 2)
  {
    v2 = CallState.noCall.unsafeMutableAddressor();
LABEL_17:
    v1 = *v2;
    v3 = *v2;
    return v1;
  }

  if (a1 == 6)
  {
LABEL_16:
    v2 = CallState.micMutedCall.unsafeMutableAddressor();
    goto LABEL_17;
  }

  return v1;
}

uint64_t static CallState.handleForOngoingCallState(event:)(uint64_t a1)
{
  v1 = 1;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return v1;
      }

      goto LABEL_14;
    }

    if (a1)
    {
      if (a1 == 1)
      {
        goto LABEL_14;
      }

      return 0;
    }
  }

  else
  {
    if (a1 <= 7)
    {
      if ((a1 - 4) < 2)
      {
        v2 = CallState.noCall.unsafeMutableAddressor();
LABEL_15:
        v1 = *v2;
        v3 = *v2;
        return v1;
      }

      if (a1 != 6)
      {
        return 0;
      }

LABEL_14:
      v2 = CallState.micMutedCall.unsafeMutableAddressor();
      goto LABEL_15;
    }

    if (a1 == 8)
    {
      v2 = CallState.onHoldCall.unsafeMutableAddressor();
      goto LABEL_15;
    }

    if (a1 != 10)
    {
      if (a1 == 11)
      {
        goto LABEL_14;
      }

      return 0;
    }
  }

  return v1;
}

uint64_t *CallState.ongoingCall.unsafeMutableAddressor()
{
  if (one-time initialization token for ongoingCall != -1)
  {
    swift_once();
  }

  return &static CallState.ongoingCall;
}

id static CallState.ongoingCall.getter()
{
  if (one-time initialization token for ongoingCall != -1)
  {
    swift_once();
  }

  v1 = static CallState.ongoingCall;

  return v1;
}

id one-time initialization function for responding()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x69646E6F70736552, 0xEA0000000000676ELL, v0, implicit closure #1 in variable initialization expression of static State.responding, 0);
  static State.responding = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.responding(uint64_t a1)
{
  if (a1 == 13)
  {
    v1 = State.available.unsafeMutableAddressor();
  }

  else if (a1 == 7)
  {
    v1 = State.postResponse.unsafeMutableAddressor();
  }

  else
  {
    if (a1)
    {
      return 0;
    }

    v1 = State.analyzing.unsafeMutableAddressor();
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t *State.responding.unsafeMutableAddressor()
{
  if (one-time initialization token for responding != -1)
  {
    swift_once();
  }

  return &static State.responding;
}

id static State.responding.getter()
{
  if (one-time initialization token for responding != -1)
  {
    swift_once();
  }

  v1 = static State.responding;

  return v1;
}

__CFNotificationCenter *one-time initialization function for darwinNotificationCenter()
{
  result = CFNotificationCenterGetDarwinNotifyCenter();
  darwinNotificationCenter.value = result;
  return result;
}

CFNotificationCenterRef_optional *darwinNotificationCenter.unsafeMutableAddressor()
{
  if (one-time initialization token for darwinNotificationCenter != -1)
  {
    swift_once();
  }

  return &darwinNotificationCenter;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SharedEvent()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D631B90](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharedEvent(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x26D631B90](v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SharedEvent@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SharedEvent.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t specialized SharedEvent.init(rawValue:)(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SharedEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type SharedEvent and conformance SharedEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [SharedEvent] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SharedEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SharedEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SiriStates11SharedEventOGMd, &_sSay10SiriStates11SharedEventOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SharedEvent] and conformance [A]);
  }

  return result;
}

id one-time initialization function for micMutedCall()
{
  type metadata accessor for CallState();
  v0 = *CallState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = CallState.__allocating_init(name:parent:eventHandler:)(0x646574754D63694DLL, 0xEC0000006C6C6143, v0, implicit closure #1 in variable initialization expression of static CallState.micMutedCall, 0);
  static CallState.micMutedCall = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static CallState.micMutedCall(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (!a1)
      {
        goto LABEL_16;
      }

      if (a1 != 1)
      {
        return v1;
      }
    }

    return 1;
  }

  if (a1 > 7)
  {
    if (a1 != 11)
    {
      if (a1 == 10)
      {
        goto LABEL_16;
      }

      if (a1 == 8)
      {
        v2 = CallState.onHoldCall.unsafeMutableAddressor();
        goto LABEL_17;
      }

      return v1;
    }

    return 1;
  }

  if ((a1 - 4) < 2)
  {
    v2 = CallState.noCall.unsafeMutableAddressor();
LABEL_17:
    v1 = *v2;
    v3 = *v2;
    return v1;
  }

  if (a1 == 7)
  {
LABEL_16:
    v2 = CallState.ongoingCall.unsafeMutableAddressor();
    goto LABEL_17;
  }

  return v1;
}

uint64_t static CallState.handleForMicMutedCallState(event:)(uint64_t a1)
{
  v1 = 1;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 != 2)
      {
        return v1;
      }

      goto LABEL_16;
    }

    if (!a1)
    {
LABEL_16:
      v2 = CallState.ongoingCall.unsafeMutableAddressor();
      goto LABEL_17;
    }

    if (a1 != 1)
    {
      return 0;
    }
  }

  else
  {
    if (a1 <= 7)
    {
      if ((a1 - 4) < 2)
      {
        v2 = CallState.noCall.unsafeMutableAddressor();
LABEL_17:
        v1 = *v2;
        v3 = *v2;
        return v1;
      }

      if (a1 == 7)
      {
        goto LABEL_16;
      }

      return 0;
    }

    if (a1 == 8)
    {
      v2 = CallState.onHoldCall.unsafeMutableAddressor();
      goto LABEL_17;
    }

    if (a1 == 10)
    {
      goto LABEL_16;
    }

    if (a1 != 11)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t *CallState.micMutedCall.unsafeMutableAddressor()
{
  if (one-time initialization token for micMutedCall != -1)
  {
    swift_once();
  }

  return &static CallState.micMutedCall;
}

id static CallState.micMutedCall.getter()
{
  if (one-time initialization token for micMutedCall != -1)
  {
    swift_once();
  }

  v1 = static CallState.micMutedCall;

  return v1;
}

id one-time initialization function for noCall()
{
  type metadata accessor for CallState();
  v0 = *CallState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = CallState.__allocating_init(name:parent:eventHandler:)(0x6C6C61436F4ELL, 0xE600000000000000, v0, implicit closure #1 in variable initialization expression of static CallState.noCall, 0);
  static CallState.noCall = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static CallState.noCall(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return v1;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a1 == 3)
  {
LABEL_8:
    v2 = CallState.micMutedCall.unsafeMutableAddressor();
    goto LABEL_9;
  }

  if (a1 == 2)
  {
LABEL_7:
    v2 = CallState.ongoingCall.unsafeMutableAddressor();
LABEL_9:
    v1 = *v2;
    v3 = *v2;
  }

  return v1;
}

id static CallState.handleForNoCallState(event:)(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return v1;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a1 == 3)
  {
LABEL_8:
    v2 = CallState.micMutedCall.unsafeMutableAddressor();
    goto LABEL_9;
  }

  if (a1 == 2)
  {
LABEL_7:
    v2 = CallState.ongoingCall.unsafeMutableAddressor();
LABEL_9:
    v1 = *v2;
    v3 = *v2;
  }

  return v1;
}

uint64_t *CallState.noCall.unsafeMutableAddressor()
{
  if (one-time initialization token for noCall != -1)
  {
    swift_once();
  }

  return &static CallState.noCall;
}

id static CallState.noCall.getter()
{
  if (one-time initialization token for noCall != -1)
  {
    swift_once();
  }

  v1 = static CallState.noCall;

  return v1;
}

id one-time initialization function for mirroring()
{
  type metadata accessor for SharedState();
  v0 = *SharedState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0x6E69726F7272694DLL, 0xE900000000000067, v0, implicit closure #1 in variable initialization expression of static SharedState.mirroring, 0);
  static SharedState.mirroring = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static SharedState.mirroring(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 1;
    case 5:
      v1 = SharedState.serving.unsafeMutableAddressor();
      break;
    case 1:
      v1 = SharedState.unshared.unsafeMutableAddressor();
      break;
    default:
      return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t *SharedState.mirroring.unsafeMutableAddressor()
{
  if (one-time initialization token for mirroring != -1)
  {
    swift_once();
  }

  return &static SharedState.mirroring;
}

id static SharedState.mirroring.getter()
{
  if (one-time initialization token for mirroring != -1)
  {
    swift_once();
  }

  v1 = static SharedState.mirroring;

  return v1;
}

id one-time initialization function for available()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x6C62616C69617641, 0xE900000000000065, v0, implicit closure #1 in variable initialization expression of static State.available, 0);
  static State.available = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.available(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 4)
    {
      return 0;
    }

    v1 = State.disabled.unsafeMutableAddressor();
  }

  else
  {
    v1 = State.analyzing.unsafeMutableAddressor();
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t *State.available.unsafeMutableAddressor()
{
  if (one-time initialization token for available != -1)
  {
    swift_once();
  }

  return &static State.available;
}

id static State.available.getter()
{
  if (one-time initialization token for available != -1)
  {
    swift_once();
  }

  v1 = static State.available;

  return v1;
}

id one-time initialization function for onHoldCall()
{
  type metadata accessor for CallState();
  v0 = *CallState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = CallState.__allocating_init(name:parent:eventHandler:)(0x6143646C6F486E4FLL, 0xEA00000000006C6CLL, v0, implicit closure #1 in variable initialization expression of static CallState.onHoldCall, 0);
  static CallState.onHoldCall = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static CallState.onHoldCall(unint64_t a1)
{
  v1 = 0;
  if (a1 <= 0xB)
  {
    if (((1 << a1) & 0x605) != 0)
    {
      v2 = CallState.ongoingCall.unsafeMutableAddressor();
      goto LABEL_8;
    }

    if (((1 << a1) & 0x80A) != 0)
    {
      v2 = CallState.micMutedCall.unsafeMutableAddressor();
LABEL_8:
      v1 = *v2;
      v3 = *v2;
      return v1;
    }

    if (((1 << a1) & 0x30) != 0)
    {
      v2 = CallState.noCall.unsafeMutableAddressor();
      goto LABEL_8;
    }
  }

  return v1;
}

id static CallState.handleForOnHoldCallState(event:)(unint64_t a1)
{
  v1 = 0;
  if (a1 <= 0xB)
  {
    if (((1 << a1) & 0x605) != 0)
    {
      v2 = CallState.ongoingCall.unsafeMutableAddressor();
      goto LABEL_8;
    }

    if (((1 << a1) & 0x80A) != 0)
    {
      v2 = CallState.micMutedCall.unsafeMutableAddressor();
LABEL_8:
      v1 = *v2;
      v3 = *v2;
      return v1;
    }

    if (((1 << a1) & 0x30) != 0)
    {
      v2 = CallState.noCall.unsafeMutableAddressor();
      goto LABEL_8;
    }
  }

  return v1;
}

uint64_t *CallState.onHoldCall.unsafeMutableAddressor()
{
  if (one-time initialization token for onHoldCall != -1)
  {
    swift_once();
  }

  return &static CallState.onHoldCall;
}

id static CallState.onHoldCall.getter()
{
  if (one-time initialization token for onHoldCall != -1)
  {
    swift_once();
  }

  v1 = static CallState.onHoldCall;

  return v1;
}

uint64_t CallEvent.name.getter(uint64_t a1)
{
  result = 0x6C61437472617473;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      return 0xD000000000000011;
    case 2:
      v3 = 1852403562;
      goto LABEL_16;
    case 3:
      return 0xD000000000000010;
    case 4:
      return 0x6C6143657661656CLL;
    case 5:
      return 0x6C6C6143646E65;
    case 6:
      v3 = 1702131053;
      goto LABEL_16;
    case 7:
      return 0x61436574756D6E75;
    case 8:
      v3 = 1684828008;
LABEL_16:
      result = v3 | 0x6C6C614300000000;
      break;
    case 9:
      result = 0x6143646C6F686E75;
      break;
    case 10:
      result = 0x6143686374697773;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 1953069157;
      break;
    case 13:
      result = 0x7265746E65;
      break;
    case 14:
      result = 0x6C616974696E69;
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      JUMPOUT(0x269191BD0);
  }

  return result;
}

uint64_t protocol witness for EventProtocol.init(name:) in conformance CallEvent@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CallEvent.init(name:)(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

unint64_t Event.name.getter(uint64_t a1)
{
  result = 0x72656767697274;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0x6F69746E65747461;
      break;
    case 3:
      result = 0x656C62616E65;
      break;
    case 4:
      result = 0x656C6261736964;
      break;
    case 5:
      result = 0x4372656767697274;
      break;
    case 6:
      result = 0x655274696D627573;
      break;
    case 7:
      result = 0x6449656D6F636562;
      break;
    case 8:
      result = 0x636F72506C696166;
      break;
    case 9:
      result = 0x52746E6573657270;
      break;
    case 10:
      result = 0x71655274726F6261;
      break;
    case 11:
      result = 0x5474756F656D6974;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x7373696D736964;
      break;
    case 14:
      result = 1953069157;
      break;
    case 15:
      result = 0x7265746E65;
      break;
    case 16:
      result = 0x6C616974696E69;
      break;
    default:
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      JUMPOUT(0x269191ED8);
  }

  return result;
}

uint64_t protocol witness for EventProtocol.init(name:) in conformance Event@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Event.init(name:)(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t SharedEvent.name.getter(uint64_t a1)
{
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0xD000000000000015;
      }

      if (a1 == 3)
      {
        return 0xD000000000000012;
      }

      return 0xD000000000000016;
    }

    if (!a1)
    {
      return 0xD000000000000017;
    }

    if (a1 == 1)
    {
      return 0xD000000000000019;
    }

LABEL_22:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  if (a1 > 6)
  {
    switch(a1)
    {
      case 7:
        return 1953069157;
      case 8:
        return 0x7265746E65;
      case 9:
        return 0x6C616974696E69;
    }

    goto LABEL_22;
  }

  if (a1 == 5)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t protocol witness for EventProtocol.init(name:) in conformance SharedEvent@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SharedEvent.init(name:)(a2, a3);
  *a1 = result;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t specialized CallEvent.init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61437472617473 && a2 == 0xE90000000000006CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002691AC140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6C61436E696F6ALL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002691AC120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6143657661656CLL && a2 == 0xE90000000000006CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6C6143646E65 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6C61436574756DLL && a2 == 0xEB0000000063694DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x61436574756D6E75 && a2 == 0xED000063694D6C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C6C6143646C6F68 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6143646C6F686E75 && a2 == 0xEA00000000006C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6143686374697773 && a2 == 0xEB00000000736C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002691AC100 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 1953069157 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7265746E65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C616974696E69 && a2 == 0xE700000000000000)
  {

    return 14;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t specialized Event.init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69746E65747461 && a2 == 0xED00006E6961476ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746E65747461 && a2 == 0xED000073736F4C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C62616E65 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C6261736964 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4372656767697274 && a2 == 0xED000074696D6D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x655274696D627573 && a2 == 0xED00007473657571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6449656D6F636562 && a2 == 0xEA0000000000656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x636F72506C696166 && a2 == 0xEE00676E69737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x52746E6573657270 && a2 == 0xEF65736E6F707365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x71655274726F6261 && a2 == 0xEC00000074736575 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x5474756F656D6974 && a2 == 0xEB000000006E7275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002691AC160 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 1953069157 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7265746E65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6C616974696E69 && a2 == 0xE700000000000000)
  {

    return 16;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t specialized SharedEvent.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x80000002691AC240 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002691AC220 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002691AC200 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002691AC1E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002691AC1C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002691AC1A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002691AC180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1953069157 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265746E65 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C616974696E69 && a2 == 0xE700000000000000)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 0;
    }
  }
}

unint64_t instantiation function for generic protocol witness table for CallEvent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CallEvent and conformance CallEvent()
{
  result = lazy protocol witness table cache variable for type CallEvent and conformance CallEvent;
  if (!lazy protocol witness table cache variable for type CallEvent and conformance CallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallEvent and conformance CallEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallEvent and conformance CallEvent;
  if (!lazy protocol witness table cache variable for type CallEvent and conformance CallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallEvent and conformance CallEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallEvent and conformance CallEvent;
  if (!lazy protocol witness table cache variable for type CallEvent and conformance CallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallEvent and conformance CallEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CallEvent and conformance CallEvent;
  if (!lazy protocol witness table cache variable for type CallEvent and conformance CallEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CallEvent and conformance CallEvent);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Event(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Event and conformance Event();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type Event and conformance Event();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Event and conformance Event()
{
  result = lazy protocol witness table cache variable for type Event and conformance Event;
  if (!lazy protocol witness table cache variable for type Event and conformance Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event and conformance Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event and conformance Event;
  if (!lazy protocol witness table cache variable for type Event and conformance Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event and conformance Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event and conformance Event;
  if (!lazy protocol witness table cache variable for type Event and conformance Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event and conformance Event);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Event and conformance Event;
  if (!lazy protocol witness table cache variable for type Event and conformance Event)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Event and conformance Event);
  }

  return result;
}

id one-time initialization function for postResponse()
{
  type metadata accessor for State();
  v0 = *State.attending.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x7365522D74736F50, 0xED000065736E6F70, v0, implicit closure #1 in variable initialization expression of static State.postResponse, 0);
  static State.postResponse = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.postResponse(uint64_t a1)
{
  switch(a1)
  {
    case 9:
      v1 = State.responding.unsafeMutableAddressor();
      break;
    case 13:
      v1 = State.available.unsafeMutableAddressor();
      break;
    case 11:
      v1 = State.resting.unsafeMutableAddressor();
      break;
    default:
      return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t *State.postResponse.unsafeMutableAddressor()
{
  if (one-time initialization token for postResponse != -1)
  {
    swift_once();
  }

  return &static State.postResponse;
}

id static State.postResponse.getter()
{
  if (one-time initialization token for postResponse != -1)
  {
    swift_once();
  }

  v1 = static State.postResponse;

  return v1;
}

uint64_t (*CallState.parent.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____SRSTCallState_parent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CallState.parent.modify;
}

uint64_t CallState.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____SRSTCallState_name);

  return v1;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CallState.hash.getter()
{
  return CallState.hash.getter();
}

{
  lazy protocol witness table accessor for type String and conformance String();
  return StringProtocol.hash.getter();
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id protocol witness for ProxyProtocol.state.getter in conformance CallStateProxy@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____SRSTCallStateProxy_state);
  *a1 = v2;
  return v2;
}

uint64_t @objc CallState.isEqual(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  outlined destroy of Any?(v10);
  return v8 & 1;
}

uint64_t CallStateProxy.hash.getter()
{
  return CallStateProxy.hash.getter();
}

{
  lazy protocol witness table accessor for type String and conformance String();
  return StringProtocol.hash.getter();
}

uint64_t protocol witness for StateProtocol.name.getter in conformance CallState()
{
  v1 = *(*v0 + OBJC_IVAR____SRSTCallState_name);

  return v1;
}

uint64_t protocol witness for StateProtocol.handle(event:) in conformance CallState@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*v2 + OBJC_IVAR____SRSTCallState_eventHandler))(*a1);
  *a2 = result;
  return result;
}

uint64_t (*State.parent.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____SRSTState_parent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CallState.parent.modify;
}

uint64_t State.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____SRSTState_name);

  return v1;
}

void *CallStateProxy.init(from:)(void *a1, uint64_t (*a2)(void), void *a3, uint64_t a4)
{
  v19[6] = a4;
  v8 = v4;
  ObjectType = swift_getObjectType();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    swift_deallocPartialClassInstance();
    return v11;
  }

  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v17 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v14 = v13;
  v15 = a2();
  if (v15)
  {
    v16 = v15;

    *&v8[*a3] = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    v18.receiver = v8;
    v18.super_class = ObjectType;
    v11 = objc_msgSendSuper2(&v18, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v11;
  }

  _StringGuts.grow(_:)(67);
  MEMORY[0x26D6318B0](0xD00000000000001BLL, 0x80000002691AC2C0);
  MEMORY[0x26D6318B0](v17, v14);
  MEMORY[0x26D6318B0](0xD000000000000026, 0x80000002691AC2E0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id StateProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id protocol witness for ProxyProtocol.state.getter in conformance StateProxy@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____SRSTStateProxy_state);
  *a1 = v2;
  return v2;
}

uint64_t protocol witness for StateProtocol.name.getter in conformance State()
{
  v1 = *(*v0 + OBJC_IVAR____SRSTState_name);

  return v1;
}

uint64_t protocol witness for StateProtocol.handle(event:) in conformance State@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*v2 + OBJC_IVAR____SRSTState_eventHandler))(*a1);
  *a2 = result;
  return result;
}

uint64_t key path getter for CallState.parent : CallState@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a3 = result;
  return result;
}

void CallState.parent.setter(void *a1, uint64_t *a2)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

uint64_t (*SharedState.parent.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____SRSTSharedState_parent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SharedState.parent.modify;
}

void CallState.parent.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id @objc CallState.name.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x26D631880](v4, v5);

  return v6;
}

uint64_t SharedState.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____SRSTSharedState_name);

  return v1;
}

id CallState.__allocating_init(name:parent:eventHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, void *a8)
{
  v16 = objc_allocWithZone(v8);
  swift_unknownObjectWeakInit();
  v17 = &v16[*a7];
  *v17 = a1;
  *(v17 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v18 = &v16[*a8];
  *v18 = a4;
  *(v18 + 1) = a5;
  v21.receiver = v16;
  v21.super_class = v8;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

id CallState.init(name:parent:eventHandler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, void *a8)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v17 = &v8[*a7];
  *v17 = a1;
  *(v17 + 1) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v18 = &v8[*a8];
  *v18 = a4;
  *(v18 + 1) = a5;
  v21.receiver = v8;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, sel_init);

  return v19;
}

uint64_t CallState.isEqual(_:)(uint64_t a1, void *a2)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v11);
  if (!v12)
  {
    outlined destroy of Any?(v11);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  v5 = &v10[*a2];
  v6 = (v2 + *a2);
  if (*v5 == *v6 && *(v5 + 1) == v6[1])
  {

    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

id CallState.makeProxy()(uint64_t (*a1)(void), void *a2)
{
  v4 = a1();
  v5 = objc_allocWithZone(v4);
  *&v5[*a2] = v2;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id CallStateProxy.__allocating_init(_:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id @objc CallState.makeProxy()(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), void *a4)
{
  v6 = a3(a1, a2);
  v7 = objc_allocWithZone(v6);
  *&v7[*a4] = a1;
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t @objc CallState.__ivar_destroyer(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{

  MEMORY[0x26D632270](a1 + *a4);
}

id CallStateProxy.init(_:)(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[*a2] = a1;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

id @objc CallStateProxy.init(_:)(char *a1, uint64_t a2, void *a3, void *a4)
{
  ObjectType = swift_getObjectType();
  *&a1[*a4] = a3;
  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = a3;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t CallStateProxy.encode(to:)(void *a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);

  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

id CallState.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for Decodable.init(from:) in conformance CallStateProxy@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v8 = objc_allocWithZone(v3);
  result = a2(a1);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CallStateProxy(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);

  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

id protocol witness for ProxyProtocol.state.getter in conformance SharedStateProxy@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____SRSTSharedStateProxy_state);
  *a1 = v2;
  return v2;
}

uint64_t CallStateProxy.isEqual(_:)(uint64_t a1, uint64_t *a2)
{
  swift_getObjectType();
  outlined init with copy of Any?(a1, v8);
  if (!v9)
  {
    outlined destroy of Any?(v8);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    return v5 & 1;
  }

  type metadata accessor for NSObject();
  v4 = *&v7[*a2];
  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

uint64_t protocol witness for StateProtocol.parent.getter in conformance CallState@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t protocol witness for StateProtocol.name.getter in conformance SharedState()
{
  v1 = *(*v0 + OBJC_IVAR____SRSTSharedState_name);

  return v1;
}

uint64_t protocol witness for StateProtocol.handle(event:) in conformance SharedState@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*v2 + OBJC_IVAR____SRSTSharedState_eventHandler))(*a1);
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for StateProtocol.makeProxy() in conformance CallState@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X3>, uint64_t (**a3)(void)@<X8>))(void)
{
  v6 = *v3;
  v7 = a1();
  v8 = objc_allocWithZone(v7);
  *&v8[*a2] = v6;
  v11.receiver = v8;
  v11.super_class = v7;
  v9 = v6;
  result = objc_msgSendSuper2(&v11, sel_init);
  *a3 = result;
  return result;
}

void specialized static CallState.named(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *CallState.allStates.unsafeMutableAddressor();
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CallState();
    lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type CallState and conformance NSObject, type metadata accessor for CallState, MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    v6 = v21;
    v5 = v22;
    v8 = v23;
    v7 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v6 = v4;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v13 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v7;
  v15 = v9;
  v16 = v7;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        v19 = *&v18[OBJC_IVAR____SRSTCallState_name] == a1 && *&v18[OBJC_IVAR____SRSTCallState_name + 8] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v7 = v16;
        v9 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for CallState();
        swift_dynamicCast();
        v18 = v20;
        v16 = v7;
        v17 = v9;
      }

      while (v20);
    }

LABEL_23:
    outlined consume of Set<SharedState>.Iterator._Variant(v6);
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_23;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

void specialized static State.named(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *State.allStates.unsafeMutableAddressor();
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for State();
    lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type State and conformance NSObject, type metadata accessor for State, MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    v6 = v21;
    v5 = v22;
    v8 = v23;
    v7 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v6 = v4;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v13 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v7;
  v15 = v9;
  v16 = v7;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        v19 = *&v18[OBJC_IVAR____SRSTState_name] == a1 && *&v18[OBJC_IVAR____SRSTState_name + 8] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v7 = v16;
        v9 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for State();
        swift_dynamicCast();
        v18 = v20;
        v16 = v7;
        v17 = v9;
      }

      while (v20);
    }

LABEL_23:
    outlined consume of Set<SharedState>.Iterator._Variant(v6);
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_23;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void specialized static SharedState.named(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *SharedState.allStates.unsafeMutableAddressor();
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SharedState();
    lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type SharedState and conformance NSObject, type metadata accessor for SharedState, MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    v6 = v21;
    v5 = v22;
    v8 = v23;
    v7 = v24;
    v9 = v25;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    v6 = v4;
    swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v13 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v7;
  v15 = v9;
  v16 = v7;
  if (v9)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        v19 = *&v18[OBJC_IVAR____SRSTSharedState_name] == a1 && *&v18[OBJC_IVAR____SRSTSharedState_name + 8] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v7 = v16;
        v9 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        type metadata accessor for SharedState();
        swift_dynamicCast();
        v18 = v20;
        v16 = v7;
        v17 = v9;
      }

      while (v20);
    }

LABEL_23:
    outlined consume of Set<SharedState>.Iterator._Variant(v6);
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_23;
      }

      v15 = *(v5 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t instantiation function for generic protocol witness table for CallStateProxy(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type CallStateProxy and conformance CallStateProxy, type metadata accessor for CallStateProxy, &protocol conformance descriptor for CallStateProxy);
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type CallStateProxy and conformance CallStateProxy, type metadata accessor for CallStateProxy, &protocol conformance descriptor for CallStateProxy);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for CallState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type CallState and conformance NSObject, type metadata accessor for CallState, MEMORY[0x277D85378]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for StateProxy(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type StateProxy and conformance StateProxy, type metadata accessor for StateProxy, &protocol conformance descriptor for StateProxy);
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type StateProxy and conformance StateProxy, type metadata accessor for StateProxy, &protocol conformance descriptor for StateProxy);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for State(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type State and conformance NSObject, type metadata accessor for State, MEMORY[0x277D85378]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SharedStateProxy(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type SharedStateProxy and conformance SharedStateProxy, type metadata accessor for SharedStateProxy, &protocol conformance descriptor for SharedStateProxy);
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type SharedStateProxy and conformance SharedStateProxy, type metadata accessor for SharedStateProxy, &protocol conformance descriptor for SharedStateProxy);
  *(a1 + 16) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for SharedState(uint64_t a1)
{
  result = lazy protocol witness table accessor for type CallState and conformance CallState(&lazy protocol witness table cache variable for type SharedState and conformance NSObject, type metadata accessor for SharedState, MEMORY[0x277D85378]);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CallState and conformance CallState(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id one-time initialization function for preparingToServe()
{
  type metadata accessor for SharedState();
  v0 = *SharedState.mirroring.unsafeMutableAddressor();
  v1 = v0;
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0xD000000000000010, 0x80000002691AC580, v0, implicit closure #1 in variable initialization expression of static SharedState.preparingToServe, 0);
  static SharedState.preparingToServe = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static SharedState.preparingToServe(uint64_t a1)
{
  if (a1 == 3)
  {
    return 1;
  }

  if (a1 != 4 && a1 != 6)
  {
    return 0;
  }

  v1 = *SharedState.passive.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *SharedState.preparingToServe.unsafeMutableAddressor()
{
  if (one-time initialization token for preparingToServe != -1)
  {
    swift_once();
  }

  return &static SharedState.preparingToServe;
}

id static SharedState.preparingToServe.getter()
{
  if (one-time initialization token for preparingToServe != -1)
  {
    swift_once();
  }

  v1 = static SharedState.preparingToServe;

  return v1;
}

id one-time initialization function for unshared()
{
  type metadata accessor for SharedState();
  v0 = *SharedState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0x6465726168736E55, 0xE800000000000000, v0, implicit closure #1 in variable initialization expression of static SharedState.unshared, 0);
  static SharedState.unshared = result;
  return result;
}

void *implicit closure #1 in variable initialization expression of static SharedState.unshared(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v1 = *SharedState.passive.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *SharedState.unshared.unsafeMutableAddressor()
{
  if (one-time initialization token for unshared != -1)
  {
    swift_once();
  }

  return &static SharedState.unshared;
}

id static SharedState.unshared.getter()
{
  if (one-time initialization token for unshared != -1)
  {
    swift_once();
  }

  v1 = static SharedState.unshared;

  return v1;
}

id one-time initialization function for listening()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x6E696E657473694CLL, 0xE900000000000067, v0, variable initialization expression of SharedClient.delegate, 0);
  static State.listening = result;
  return result;
}

uint64_t *State.listening.unsafeMutableAddressor()
{
  if (one-time initialization token for listening != -1)
  {
    swift_once();
  }

  return &static State.listening;
}

id static State.listening.getter()
{
  if (one-time initialization token for listening != -1)
  {
    swift_once();
  }

  v1 = static State.listening;

  return v1;
}

uint64_t sub_2691968FC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id CallServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t CallServer.init()()
{
  ObjectType = swift_getObjectType();
  InstrumentationManager.sharedLogger.unsafeMutableAddressor();
  v1 = *(ObjectType + 128);

  v3 = v1(v2);
  swift_deallocPartialClassInstance();
  return v3;
}

char *CallServer.init(instrumentationManager:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateC_GMR);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - v4;
  *&v1[OBJC_IVAR____SRSTCallServer_stateMachineObserver] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates12StateMachineCyAA04CallC0CGMd, &_s10SiriStates12StateMachineCyAA04CallC0CGMR);

  v30 = a1;
  *&v1[OBJC_IVAR____SRSTCallServer_stateMachine] = StateMachine<>.init(instrumentationManager:)(v5);
  v6 = type metadata accessor for CallServer();
  v34.receiver = v1;
  v34.super_class = v6;
  v7 = objc_msgSendSuper2(&v34, sel_init);
  v31 = static CallEvent.allCases.getter();
  v8 = v31[2];
  if (v8)
  {
    v9 = v31 + 4;
    v10 = darwinNotificationCenter.unsafeMutableAddressor();
    do
    {
      v11 = *v9++;
      v12 = v10->value;
      v13 = eventDispatchNotificationNamePrefix.unsafeMutableAddressor();
      countAndFlagsBits = v13->_countAndFlagsBits;
      object = v13->_object;

      v16 = CallEvent.name.getter(v11);
      v18 = v17;
      v32 = countAndFlagsBits;
      v33 = object;

      MEMORY[0x26D6318B0](v16, v18);

      v19 = MEMORY[0x26D631880](v32, v33);

      CFNotificationCenterAddObserver(v12, v7, @objc closure #1 in CallServer.init(instrumentationManager:), v19, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      --v8;
    }

    while (v8);
  }

  v20 = *(**&v7[OBJC_IVAR____SRSTCallServer_stateMachine] + 160);

  v22 = v27;
  v20(v21);

  lazy protocol witness table accessor for type Published<CallState>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<CallState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateC_GMR);
  v23 = v29;
  v24 = Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v22, v23);
  *&v7[OBJC_IVAR____SRSTCallServer_stateMachineObserver] = v24;

  return v7;
}

void @objc closure #1 in CallServer.init(instrumentationManager:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in CallServer.init(instrumentationManager:)(a2, a3, "CallServer received valid event dispatch: %s", "CallServer posting darwin notification for event reception", &OBJC_IVAR____SRSTCallServer_stateMachine, CallEvent.init(name:));
}

uint64_t Server.init()()
{
  ObjectType = swift_getObjectType();
  InstrumentationManager.sharedLogger.unsafeMutableAddressor();
  v1 = *(ObjectType + 128);

  v3 = v1(v2);
  swift_deallocPartialClassInstance();
  return v3;
}

char *Server.init(instrumentationManager:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5StateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateC_GMR);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - v4;
  *&v1[OBJC_IVAR____SRSTServer_stateMachineObserver] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates12StateMachineCyAA0C0CGMd, &_s10SiriStates12StateMachineCyAA0C0CGMR);

  v30 = a1;
  *&v1[OBJC_IVAR____SRSTServer_stateMachine] = StateMachine<>.init(instrumentationManager:)(v5);
  v6 = type metadata accessor for Server();
  v34.receiver = v1;
  v34.super_class = v6;
  v7 = objc_msgSendSuper2(&v34, sel_init);
  v31 = static Event.allCases.getter();
  v8 = v31[2];
  if (v8)
  {
    v9 = v31 + 4;
    v10 = darwinNotificationCenter.unsafeMutableAddressor();
    do
    {
      v11 = *v9++;
      v12 = v10->value;
      v13 = eventDispatchNotificationNamePrefix.unsafeMutableAddressor();
      countAndFlagsBits = v13->_countAndFlagsBits;
      object = v13->_object;

      v16 = Event.name.getter(v11);
      v18 = v17;
      v32 = countAndFlagsBits;
      v33 = object;

      MEMORY[0x26D6318B0](v16, v18);

      v19 = MEMORY[0x26D631880](v32, v33);

      CFNotificationCenterAddObserver(v12, v7, @objc closure #1 in Server.init(instrumentationManager:), v19, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      --v8;
    }

    while (v8);
  }

  v20 = *(**&v7[OBJC_IVAR____SRSTServer_stateMachine] + 160);

  v22 = v27;
  v20(v21);

  lazy protocol witness table accessor for type Published<CallState>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<State>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateC_GMR);
  v23 = v29;
  v24 = Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v22, v23);
  *&v7[OBJC_IVAR____SRSTServer_stateMachineObserver] = v24;

  return v7;
}

void @objc closure #1 in Server.init(instrumentationManager:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in CallServer.init(instrumentationManager:)(a2, a3, "Server received valid event dispatch: %s", "Server posting darwin notification for event reception", &OBJC_IVAR____SRSTServer_stateMachine, Event.init(name:));
}

id @objc CallServer.currentState.getter(char *a1, uint64_t a2, void *a3)
{
  v3 = *(**&a1[*a3] + 136);
  v4 = a1;
  v3(&v7);

  v5 = v7;

  return v5;
}

id CallServer.__deallocating_deinit(const char *a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = Logger.framework.unsafeMutableAddressor();
  (*(v10 + 16))(v12, v13, v9);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = a3;
    v17 = a4;
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_269189000, v14, v15, a1, v18, 2u);
    v19 = v18;
    a4 = v17;
    a3 = v16;
    MEMORY[0x26D632230](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  type metadata accessor for OS_dispatch_queue();
  *(swift_allocObject() + 16) = v8;
  v20 = v8;
  static OS_dispatch_queue.executeOnMain<A>(_:)(a3);

  v22 = a4(v21);
  v24.receiver = v20;
  v24.super_class = v22;
  return objc_msgSendSuper2(&v24, sel_dealloc);
}

uint64_t @objc CallServer.__ivar_destroyer(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
}

uint64_t SharedServer.init()()
{
  ObjectType = swift_getObjectType();
  InstrumentationManager.sharedLogger.unsafeMutableAddressor();
  v1 = *(ObjectType + 128);

  v3 = v1(v2);
  swift_deallocPartialClassInstance();
  return v3;
}

char *SharedServer.init(instrumentationManager:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateC_GMR);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v27 = &v26 - v4;
  *&v1[OBJC_IVAR____SRSTSharedServer_stateMachineObserver] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates12StateMachineCyAA06SharedC0CGMd, &_s10SiriStates12StateMachineCyAA06SharedC0CGMR);

  v30 = a1;
  *&v1[OBJC_IVAR____SRSTSharedServer_stateMachine] = StateMachine<>.init(instrumentationManager:)(v5);
  v6 = type metadata accessor for SharedServer();
  v34.receiver = v1;
  v34.super_class = v6;
  v7 = objc_msgSendSuper2(&v34, sel_init);
  v31 = static SharedEvent.allCases.getter();
  v8 = v31[2];
  if (v8)
  {
    v9 = v31 + 4;
    v10 = darwinNotificationCenter.unsafeMutableAddressor();
    do
    {
      v11 = *v9++;
      v12 = v10->value;
      v13 = eventDispatchNotificationNamePrefix.unsafeMutableAddressor();
      countAndFlagsBits = v13->_countAndFlagsBits;
      object = v13->_object;

      v16 = SharedEvent.name.getter(v11);
      v18 = v17;
      v32 = countAndFlagsBits;
      v33 = object;

      MEMORY[0x26D6318B0](v16, v18);

      v19 = MEMORY[0x26D631880](v32, v33);

      CFNotificationCenterAddObserver(v12, v7, @objc closure #1 in SharedServer.init(instrumentationManager:), v19, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      --v8;
    }

    while (v8);
  }

  v20 = *(**&v7[OBJC_IVAR____SRSTSharedServer_stateMachine] + 160);

  v22 = v27;
  v20(v21);

  lazy protocol witness table accessor for type Published<CallState>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<SharedState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateC_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates11SharedStateC_GMR);
  v23 = v29;
  v24 = Publisher<>.sink(receiveValue:)();

  (*(v28 + 8))(v22, v23);
  *&v7[OBJC_IVAR____SRSTSharedServer_stateMachineObserver] = v24;

  return v7;
}

void @objc closure #1 in SharedServer.init(instrumentationManager:)(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in CallServer.init(instrumentationManager:)(a2, a3, "SharedServer received valid event dispatch: %s", "SharedServer posting darwin notification for event reception", &OBJC_IVAR____SRSTSharedServer_stateMachine, SharedEvent.init(name:));
}

void closure #2 in CallServer.init(instrumentationManager:)(void **a1, void *a2, const char *a3, ...)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = Logger.framework.unsafeMutableAddressor();
  (*(v7 + 16))(v9, v11, v6);
  v12 = v10;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    *v16 = 136315138;
    v18 = &v12[*a2];
    v33 = v6;
    v34 = v17;
    v19 = v12;
    v20 = a2;
    v22 = *v18;
    v21 = v18[1];

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v34);
    a2 = v20;
    v12 = v19;

    *(v16 + 4) = v23;
    _os_log_impl(&dword_269189000, v13, v14, v32, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D632230](v17, -1, -1);
    MEMORY[0x26D632230](v16, -1, -1);

    (*(v7 + 8))(v9, v33);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = darwinNotificationCenter.unsafeMutableAddressor()->value;
  v25 = stateTransitionNotificationNamePrefix.unsafeMutableAddressor();
  countAndFlagsBits = v25->_countAndFlagsBits;
  object = v25->_object;
  v28 = &v12[*a2];
  v29 = *v28;
  v30 = *(v28 + 1);
  v34 = countAndFlagsBits;
  v35 = object;

  MEMORY[0x26D6318B0](v29, v30);
  v31 = MEMORY[0x26D631880](v34, v35);

  CFNotificationCenterPostNotification(v24, v31, 0, 0, 1u);
}

uint64_t lazy protocol witness table accessor for type Published<CallState>.Publisher and conformance Published<A>.Publisher(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void specialized closure #1 in CallServer.init(instrumentationManager:)(void *a1, uint64_t a2, const char *a3, const char *a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t), ...)
{
  v63 = a3;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v57 - v19;
  if (!a2)
  {
    v47 = unknownNotificationName.unsafeMutableAddressor();
    countAndFlagsBits = v47->_countAndFlagsBits;
    object = v47->_object;

LABEL_11:
    v51 = Logger.framework.unsafeMutableAddressor();
    (*(v12 + 16))(v15, v51, v11);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v69 = v55;
      *v54 = 136315138;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v69);

      *(v54 + 4) = v56;
      _os_log_impl(&dword_269189000, v52, v53, "Event dispatch darwin notification was malformed: %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x26D632230](v55, -1, -1);
      MEMORY[0x26D632230](v54, -1, -1);
    }

    else
    {
    }

    (*(v12 + 8))(v15, v11);
    return;
  }

  v60 = a4;
  v62 = a5;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v64 = a1;
  v69 = v21;
  v70 = v22;
  v23 = eventDispatchNotificationNamePrefix.unsafeMutableAddressor();
  v24 = v23->_object;
  v67 = v23->_countAndFlagsBits;
  v68 = v24;
  v65 = 0;
  v66 = 0xE000000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v25 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  v27 = v26;

  if (!v64)
  {

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v50;
    goto LABEL_11;
  }

  v61 = v25;
  v59 = a6;
  v28 = Logger.framework.unsafeMutableAddressor();
  v57 = *(v12 + 16);
  v58 = v28;
  v57(v20);

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v69 = v32;
    *v31 = 136315138;
    *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v27, &v69);
    _os_log_impl(&dword_269189000, v29, v30, v63, v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x26D632230](v32, -1, -1);
    MEMORY[0x26D632230](v31, -1, -1);
  }

  v33 = *(v12 + 8);
  v33(v20, v11);
  v34 = v64;
  (v57)(v18, v58, v11);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_269189000, v35, v36, v60, v37, 2u);
    MEMORY[0x26D632230](v37, -1, -1);
  }

  v33(v18, v11);
  v38 = darwinNotificationCenter.unsafeMutableAddressor()->value;
  v39 = eventReceivedNotificationNamePrefix.unsafeMutableAddressor();
  v41 = v39->_countAndFlagsBits;
  v40 = v39->_object;
  v69 = v41;
  v70 = v40;

  v42 = v61;
  MEMORY[0x26D6318B0](v61, v27);
  v43 = MEMORY[0x26D631880](v69, v70);

  CFNotificationCenterPostNotification(v38, v43, 0, 0, 1u);

  v44 = *&v34[*v62];
  v45 = v59(v42, v27);
  if (v46)
  {
    __break(1u);
  }

  else
  {
    v69 = v45;
    (*(*v44 + 216))(&v69);
  }
}

id one-time initialization function for disabled()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x64656C6261736944, 0xE800000000000000, v0, implicit closure #1 in variable initialization expression of static State.disabled, 0);
  static State.disabled = result;
  return result;
}

void *implicit closure #1 in variable initialization expression of static State.disabled(uint64_t a1)
{
  if (a1 != 3)
  {
    return 0;
  }

  v1 = *State.available.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *State.disabled.unsafeMutableAddressor()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  return &static State.disabled;
}

id static State.disabled.getter()
{
  if (one-time initialization token for disabled != -1)
  {
    swift_once();
  }

  v1 = static State.disabled;

  return v1;
}

id one-time initialization function for analyzing()
{
  type metadata accessor for State();
  v0 = *State.listening.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x6E697A796C616E41, 0xE900000000000067, v0, implicit closure #1 in variable initialization expression of static State.analyzing, 0);
  static State.analyzing = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.analyzing(uint64_t a1)
{
  v1 = 0;
  if (a1 > 9)
  {
    if (a1 == 10 || a1 == 13)
    {
      v2 = State.available.unsafeMutableAddressor();
      goto LABEL_9;
    }
  }

  else
  {
    if (a1 == 5)
    {
      v2 = State.understanding.unsafeMutableAddressor();
      goto LABEL_9;
    }

    if (a1 == 7)
    {
      v2 = State.postResponse.unsafeMutableAddressor();
LABEL_9:
      v1 = *v2;
      v3 = *v2;
    }
  }

  return v1;
}

uint64_t *State.analyzing.unsafeMutableAddressor()
{
  if (one-time initialization token for analyzing != -1)
  {
    swift_once();
  }

  return &static State.analyzing;
}

id static State.analyzing.getter()
{
  if (one-time initialization token for analyzing != -1)
  {
    swift_once();
  }

  v1 = static State.analyzing;

  return v1;
}

uint64_t one-time initialization function for allStates()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2691AB590;
  v1 = State.abstract.unsafeMutableAddressor();
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = v2;
  v4 = State.disabled.unsafeMutableAddressor();
  v5 = *v4;
  *(inited + 40) = *v4;
  v6 = v5;
  v7 = State.available.unsafeMutableAddressor();
  v8 = *v7;
  *(inited + 48) = *v7;
  v9 = v8;
  v10 = State.listening.unsafeMutableAddressor();
  v11 = *v10;
  *(inited + 56) = *v10;
  v12 = v11;
  v13 = State.analyzing.unsafeMutableAddressor();
  v14 = *v13;
  *(inited + 64) = *v13;
  v15 = v14;
  v16 = State.understanding.unsafeMutableAddressor();
  v17 = *v16;
  *(inited + 72) = *v16;
  v18 = v17;
  v19 = State.processing.unsafeMutableAddressor();
  v20 = *v19;
  *(inited + 80) = *v19;
  v21 = v20;
  v22 = State.responding.unsafeMutableAddressor();
  v23 = *v22;
  *(inited + 88) = *v22;
  v24 = v23;
  v25 = State.attending.unsafeMutableAddressor();
  v26 = *v25;
  *(inited + 96) = *v25;
  v27 = v26;
  v28 = State.postResponse.unsafeMutableAddressor();
  v29 = *v28;
  *(inited + 104) = *v28;
  v30 = v29;
  v31 = State.resting.unsafeMutableAddressor();
  v32 = *v31;
  *(inited + 112) = *v31;
  v33 = v32;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates5StateC_Tt0g5Tf4g_n(inited);
  v35 = v34;
  swift_setDeallocating();
  result = swift_arrayDestroy();
  static State.allStates = v35;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2691AB5B0;
  v1 = SharedState.abstract.unsafeMutableAddressor();
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = v2;
  v4 = SharedState.unshared.unsafeMutableAddressor();
  v5 = *v4;
  *(inited + 40) = *v4;
  v6 = v5;
  v7 = SharedState.mirroring.unsafeMutableAddressor();
  v8 = *v7;
  *(inited + 48) = *v7;
  v9 = v8;
  v10 = SharedState.passive.unsafeMutableAddressor();
  v11 = *v10;
  *(inited + 56) = *v10;
  v12 = v11;
  v13 = SharedState.preparingToServe.unsafeMutableAddressor();
  v14 = *v13;
  *(inited + 64) = *v13;
  v15 = v14;
  v16 = SharedState.serving.unsafeMutableAddressor();
  v17 = *v16;
  *(inited + 72) = *v16;
  v18 = v17;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates11SharedStateC_Tt0g5Tf4g_n(inited);
  v20 = v19;
  swift_setDeallocating();
  result = swift_arrayDestroy();
  static SharedState.allStates = v20;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2691ABC20;
  v1 = CallState.abstract.unsafeMutableAddressor();
  v2 = *v1;
  *(inited + 32) = *v1;
  v3 = v2;
  v4 = CallState.noCall.unsafeMutableAddressor();
  v5 = *v4;
  *(inited + 40) = *v4;
  v6 = v5;
  v7 = CallState.ongoingCall.unsafeMutableAddressor();
  v8 = *v7;
  *(inited + 48) = *v7;
  v9 = v8;
  v10 = CallState.onHoldCall.unsafeMutableAddressor();
  v11 = *v10;
  *(inited + 56) = *v10;
  v12 = v11;
  v13 = CallState.micMutedCall.unsafeMutableAddressor();
  v14 = *v13;
  *(inited + 64) = *v13;
  v15 = v14;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates9CallStateC_Tt0g5Tf4g_n(inited);
  v17 = v16;
  swift_setDeallocating();
  result = swift_arrayDestroy();
  static CallState.allStates = v17;
  return result;
}

uint64_t *State.allStates.unsafeMutableAddressor()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  return &static State.allStates;
}

uint64_t static State.allStates.getter()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }
}

uint64_t StateMachine<>.init(instrumentationManager:)(uint64_t a1)
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  v3 = static State.allStates;

  v7 = *State.available.unsafeMutableAddressor();
  v4 = *(v1 + 208);
  v5 = v7;
  return v4(v3, &v7, a1);
}

{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  v3 = static SharedState.allStates;

  v7 = *SharedState.unshared.unsafeMutableAddressor();
  v4 = *(v1 + 208);
  v5 = v7;
  return v4(v3, &v7, a1);
}

{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  v3 = static CallState.allStates;

  v7 = *CallState.noCall.unsafeMutableAddressor();
  v4 = *(v1 + 208);
  v5 = v7;
  return v4(v3, &v7, a1);
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates5StateC_Tt0g5Tf4g_n(unint64_t a1)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SiriStates5StateCGMd, &_ss11_SetStorageCy10SiriStates5StateCGMR);
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
        type metadata accessor for State();
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
        type metadata accessor for State();
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

uint64_t *SharedState.allStates.unsafeMutableAddressor()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }

  return &static SharedState.allStates;
}

uint64_t static SharedState.allStates.getter()
{
  if (one-time initialization token for allStates != -1)
  {
    swift_once();
  }
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10SiriStates11SharedStateC_Tt0g5Tf4g_n(unint64_t a1)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10SiriStates11SharedStateCGMd, &_ss11_SetStorageCy10SiriStates11SharedStateCGMR);
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
        type metadata accessor for SharedState();
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
        type metadata accessor for SharedState();
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

id one-time initialization function for serving()
{
  type metadata accessor for SharedState();
  v0 = *SharedState.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = SharedState.__allocating_init(name:parent:eventHandler:)(0x676E6976726553, 0xE700000000000000, v0, implicit closure #1 in variable initialization expression of static SharedState.serving, 0);
  static SharedState.serving = result;
  return result;
}

uint64_t implicit closure #1 in variable initialization expression of static SharedState.serving(uint64_t a1)
{
  switch(a1)
  {
    case 5:
      return 1;
    case 2:
      v1 = SharedState.passive.unsafeMutableAddressor();
      break;
    case 1:
      v1 = SharedState.unshared.unsafeMutableAddressor();
      break;
    default:
      return 0;
  }

  v2 = *v1;
  v3 = *v1;
  return v2;
}

uint64_t *SharedState.serving.unsafeMutableAddressor()
{
  if (one-time initialization token for serving != -1)
  {
    swift_once();
  }

  return &static SharedState.serving;
}

id static SharedState.serving.getter()
{
  if (one-time initialization token for serving != -1)
  {
    swift_once();
  }

  v1 = static SharedState.serving;

  return v1;
}

uint64_t Client.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for Client.delegate : Client@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Client.delegate : Client(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*Client.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____SRSTClient_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SharedClient.delegate.modify;
}

uint64_t Client.currentState.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t Client.currentState.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t key path getter for Client.currentState : Client@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Client.currentState : Client(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*Client.currentState.modify(uint64_t *a1))()
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
  return SharedClient.currentState.modify;
}

uint64_t key path setter for Client.$currentState : Client(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xA8))(v6);
}

uint64_t Client.$currentState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5StateCSgGMd, &_s7Combine9PublishedVy10SiriStates5StateCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Client.$currentState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5StateCSg_GMR);
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

  v10 = OBJC_IVAR____SRSTClient__currentState[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5StateCSgGMd, &_s7Combine9PublishedVy10SiriStates5StateCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$currentState.modify;
}

uint64_t key path getter for Client.mostRecentEvent : Client@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t Client.mostRecentEvent.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t Client.mostRecentEvent.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*Client.mostRecentEvent.modify(uint64_t *a1))()
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
  return SharedClient.mostRecentEvent.modify;
}

uint64_t key path setter for Client.$mostRecentEvent : Client(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD8))(v6);
}

uint64_t Client.$mostRecentEvent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5EventOSgGMd, &_s7Combine9PublishedVy10SiriStates5EventOSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Client.$mostRecentEvent.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates5EventOSg_GMR);
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

  v10 = OBJC_IVAR____SRSTClient__mostRecentEvent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5EventOSgGMd, &_s7Combine9PublishedVy10SiriStates5EventOSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$mostRecentEvent.modify;
}

unint64_t Client.mostRecentEventName.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  if (v2)
  {
    return 0;
  }

  else
  {
    return Event.name.getter(v1);
  }
}

void Client.dispatchEvent(_:)(uint64_t a1)
{
  type metadata accessor for NotificationCenterHelper();
  v3 = a1;
  v2 = lazy protocol witness table accessor for type Event and conformance Event();
  static NotificationCenterHelper.dispatch<A>(_:)(&v3, &type metadata for Event, v2);
}

id Client.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____SRSTClient_stopped) & 1) == 0)
  {
    type metadata accessor for Client(0);
    lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type Client and conformance Client, type metadata accessor for Client, &protocol conformance descriptor for Client);
    static Clientele.remove<A>(_:)(v1);
    v6 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v6, v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_269189000, v7, v8, "Deinit called for Client", v9, 2u);
      MEMORY[0x26D632230](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v10 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.deinit);
  }

  v11 = type metadata accessor for Client(0);
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

void @objc closure #1 in variable initialization expression of static Client.handleStateTransititionNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static Client.handleStateTransititionNotification(a2, a3);
}

uint64_t static Client.handleStateTransititionNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static Client.handleStateTransititionNotification[0] = a1;
  return result;
}

uint64_t key path getter for static Client.handleStateTransititionNotification : Client.Type@<X0>(uint64_t (**a1)()@<X8>)
{
  result = swift_beginAccess();
  *a1 = static Client.handleStateTransititionNotification[0];
  return result;
}

uint64_t key path setter for static Client.handleStateTransititionNotification : Client.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static Client.handleStateTransititionNotification[0] = v1;
  return result;
}

void @objc closure #1 in variable initialization expression of static Client.handleEventNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static Client.handleEventNotification(a2, a3);
}

uint64_t type metadata accessor for Client(uint64_t a1)
{
  result = type metadata singleton initialization cache for Client;
  if (!type metadata singleton initialization cache for Client)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26919AE7C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t static Client.handleEventNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static Client.handleEventNotification = a1;
  return result;
}

uint64_t key path getter for static Client.handleEventNotification : Client.Type@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static Client.handleEventNotification;
  return result;
}

uint64_t key path setter for static Client.handleEventNotification : Client.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static Client.handleEventNotification = v1;
  return result;
}

id Client.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void Client.init()()
{
  v56 = type metadata accessor for Logger();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5EventOSgGMd, &_s7Combine9PublishedVy10SiriStates5EventOSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates5StateCSgGMd, &_s7Combine9PublishedVy10SiriStates5StateCSgGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____SRSTClient__currentState[0];
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates5StateCSgMd, &_s10SiriStates5StateCSgMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v0[v10], v9, v6);
  v11 = OBJC_IVAR____SRSTClient__mostRecentEvent;
  v64 = 0;
  LOBYTE(v65) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates5EventOSgMd, &_s10SiriStates5EventOSgMR);
  Published.init(initialValue:)();
  (*(v3 + 32))(&v0[v11], v5, v2);
  v0[OBJC_IVAR____SRSTClient_stopped] = 0;
  v12 = type metadata accessor for Client(0);
  v63.receiver = v0;
  v63.super_class = v12;
  v13 = objc_msgSendSuper2(&v63, sel_init);
  lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type Client and conformance Client, type metadata accessor for Client, &protocol conformance descriptor for Client);
  v53 = v13;
  v14 = static Clientele.add<A>(_:)(v53);
  v15 = *State.allStates.unsafeMutableAddressor();
  if ((v15 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for State();
    lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type State and conformance NSObject, type metadata accessor for State, MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    v15 = v64;
    v16 = v65;
    v17 = v66;
    v18 = v67;
    v19 = v68;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);

    v18 = 0;
  }

  v57 = v17;
  v58 = v14;
  v23 = (v17 + 64) >> 6;
  if (v15 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v24 = v18;
    v25 = v19;
    v26 = v18;
    if (!v19)
    {
      break;
    }

LABEL_12:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
LABEL_18:
      outlined consume of Set<SharedState>.Iterator._Variant(v15);
      v57 = static Event.allCases.getter();
      v35 = v57[2];
      v36 = v58;
      if (v35)
      {
        type metadata accessor for NotificationCenterHelper();
        v37 = v57 + 4;
        v38 = darwinNotificationCenter.unsafeMutableAddressor();
        swift_beginAccess();
        v39 = lazy protocol witness table accessor for type Event and conformance Event();
        do
        {
          v40 = *v37++;
          value = v38->value;
          v42 = static Client.handleEventNotification;
          v60 = &type metadata for Event;
          v61 = v39;
          v59[0] = v40;
          v43 = value;
          v44 = static NotificationCenterHelper.notifcationName(for:)(v59);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          CFNotificationCenterAddObserver(v43, v36, v42, v44, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

          --v35;
        }

        while (v35);
      }

      v45 = Logger.framework.unsafeMutableAddressor();
      v46 = v55;
      v47 = v54;
      v48 = v56;
      (*(v55 + 16))(v54, v45, v56);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_269189000, v49, v50, "Client added Darwin observers", v51, 2u);
        MEMORY[0x26D632230](v51, -1, -1);
      }

      (*(v46 + 8))(v47, v48);
      return;
    }

    while (1)
    {
      v30 = darwinNotificationCenter.unsafeMutableAddressor()->value;
      swift_beginAccess();
      v31 = static Client.handleStateTransititionNotification[0];
      type metadata accessor for NotificationCenterHelper();
      v60 = type metadata accessor for State();
      v61 = lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type State and conformance State, type metadata accessor for State, &protocol conformance descriptor for State);
      v59[0] = v28;
      v32 = v30;
      v33 = v28;
      v34 = static NotificationCenterHelper.notifcationName(for:)(v59);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      CFNotificationCenterAddObserver(v32, v58, v31, v34, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v18 = v26;
      v19 = v27;
      if ((v15 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v29 = __CocoaSet.Iterator.next()();
      if (v29)
      {
        v62 = v29;
        type metadata accessor for State();
        swift_dynamicCast();
        v28 = v59[0];
        v26 = v18;
        v27 = v19;
        if (v59[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_18;
    }

    v25 = *(v16 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall Client.stopClient()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____SRSTClient_stopped;
  if ((v1[OBJC_IVAR____SRSTClient_stopped] & 1) == 0)
  {
    v7 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v7, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_269189000, v8, v9, "#SiriStates stopping client", v10, 2u);
      MEMORY[0x26D632230](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v1[v6] = 1;
    type metadata accessor for Client(0);
    lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type Client and conformance Client, type metadata accessor for Client, &protocol conformance descriptor for Client);
    static Clientele.remove<A>(_:)(v1);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v11 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.stopClient());
  }
}

uint64_t protocol witness for ClientProtocol.delegate.getter in conformance Client@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.delegate.modify in conformance Client(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.currentState.getter in conformance Client@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.currentState.modify in conformance Client(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x98))();
  return protocol witness for ClientProtocol.currentState.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.mostRecentEvent.getter in conformance Client@<X0>(uint64_t a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.mostRecentEvent.modify in conformance Client(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

uint64_t lazy protocol witness table accessor for type Client and conformance Client(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for Client(uint64_t a1)
{
  type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<State?>, &_s10SiriStates5StateCSgMd, &_s10SiriStates5StateCSgMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<Event?>, &_s10SiriStates5EventOSgMd, &_s10SiriStates5EventOSgMR);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void specialized closure #1 in variable initialization expression of static Client.handleStateTransititionNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  type metadata accessor for NotificationCenterHelper();
  v11 = type metadata accessor for State();
  v12 = lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type State and conformance State, type metadata accessor for State, &protocol conformance descriptor for State);
  static NotificationCenterHelper.state<A>(from:)(a2, v11, v12, &v49);
  v13 = v49;
  if (v49)
  {
    v48 = a1;
    v14 = Logger.framework.unsafeMutableAddressor();
    v46 = *(v5 + 16);
    v46(v10, v14, v4);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    v18 = os_log_type_enabled(v16, v17);
    v47 = v15;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v44 = v5 + 16;
      v20 = v19;
      v21 = swift_slowAlloc();
      v45 = v5;
      v22 = v21;
      v49 = v21;
      *v20 = 136315138;
      v43 = v14;
      v23 = v4;
      v24 = v8;
      v25 = *&v15[OBJC_IVAR____SRSTState_name];
      v26 = *&v15[OBJC_IVAR____SRSTState_name + 8];

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v49);

      *(v20 + 4) = v27;
      v8 = v24;
      v4 = v23;
      v14 = v43;
      _os_log_impl(&dword_269189000, v16, v17, "Client received valid state transition: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v28 = v22;
      v5 = v45;
      MEMORY[0x26D632230](v28, -1, -1);
      MEMORY[0x26D632230](v20, -1, -1);
    }

    v29 = *(v5 + 8);
    v29(v10, v4);
    type metadata accessor for Client(0);
    lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type Client and conformance Client, type metadata accessor for Client, &protocol conformance descriptor for Client);
    v30 = static Clientele.contains<A>(_:)(v48);
    if (v30)
    {
      v31 = v30;
      v32 = MEMORY[0x277D85000];
      v33 = *((*MEMORY[0x277D85000] & *v30) + 0x90);
      v34 = v47;
      v35 = v33(v13);
      v36 = (*((*v32 & *v31) + 0x70))(v35);
      if (v36)
      {
        [v36 stateMachineWithClient:v31 didTransitionToState:v34];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v46(v8, v14, v4);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v8;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_269189000, v37, v38, "Observer for darwin callback handler not found", v40, 2u);
        MEMORY[0x26D632230](v40, -1, -1);

        v41 = v39;
      }

      else
      {

        v41 = v8;
      }

      v29(v41, v4);
    }
  }
}

void specialized closure #1 in variable initialization expression of static Client.handleEventNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  type metadata accessor for NotificationCenterHelper();
  v11 = lazy protocol witness table accessor for type Event and conformance Event();
  static NotificationCenterHelper.event<A>(from:)(a2, &type metadata for Event, v11, &v43);
  if ((v44 & 1) == 0)
  {
    v42 = a1;
    v12 = v43;
    v13 = Logger.framework.unsafeMutableAddressor();
    v40 = *(v5 + 16);
    v40(v10, v13, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v41 = v12;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v39 = v5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v38 = v13;
      v20 = v19;
      v43 = v19;
      *v18 = 136315138;
      v21 = Event.name.getter(v12);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v43);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_269189000, v14, v15, "Client received valid event reception: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v24 = v20;
      v13 = v38;
      MEMORY[0x26D632230](v24, -1, -1);
      v25 = v18;
      v5 = v39;
      MEMORY[0x26D632230](v25, -1, -1);
    }

    v26 = *(v5 + 8);
    v26(v10, v4);
    type metadata accessor for Client(0);
    lazy protocol witness table accessor for type Client and conformance Client(&lazy protocol witness table cache variable for type Client and conformance Client, type metadata accessor for Client, &protocol conformance descriptor for Client);
    v27 = static Clientele.contains<A>(_:)(v42);
    if (v27)
    {
      v28 = v27;
      v29 = MEMORY[0x277D85000];
      v30 = v41;
      v31 = (*((*MEMORY[0x277D85000] & *v27) + 0xC0))(v41, 0);
      v32 = (*((*v29 & *v28) + 0x70))(v31);
      if (v32)
      {
        v33 = v32;
        if ([v32 respondsToSelector_])
        {
          [v33 stateMachineWithClient:v28 didReceiveEvent:v30];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v40(v8, v13, v4);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_269189000, v34, v35, "Observer for darwin callback handler not found", v36, 2u);
        MEMORY[0x26D632230](v36, -1, -1);
      }

      v26(v8, v4);
    }
  }
}

uint64_t type metadata completion function for EventHandlerResult(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for EventHandlerResult(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for EventHandlerResult(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

id variable initialization expression of StateMachine.backingStateMachine()
{
  v0 = objc_allocWithZone(MEMORY[0x277D02928]);

  return [v0 init];
}

uint64_t property wrapper backing initializer of StateMachine.currentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, a2);
  Published.init(wrappedValue:)(v6, a2);
  return (*(v4 + 8))(a1, a2);
}

uint64_t Published.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t key path setter for StateMachine.currentState : <A>StateMachine<A>(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  return (*(**a2 + 144))(v4);
}

void StateMachine.currentState.didset(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v14 - v6;
  v8 = v1[3];
  (*(v2 + 136))(v5);
  v9 = *(*v1 + 120);
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = type metadata accessor for CUState();
  v12 = *(*(v2 + 88) + 8);

  MEMORY[0x26D631860](&v14, v7, v10, v3, v11, v12);
  v13 = v14;
  if (v14)
  {
    (*(v4 + 8))(v7, v3);

    [v8 transitionToState_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t StateMachine.currentState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

__n128 sub_26919D728(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t StateMachine.currentState.setter(uint64_t a1)
{
  v3 = *v1;
  specialized StateMachine.currentState.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*StateMachine.currentState.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  StateMachine.currentState.getter();
  return StateMachine.currentState.modify;
}

uint64_t key path setter for StateMachine.$currentState : <A>StateMachine<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Published.Publisher();
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*(**a2 + 168))(v8);
}

uint64_t StateMachine.$currentState.getter()
{
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t StateMachine.$currentState.setter(uint64_t a1)
{
  specialized StateMachine.$currentState.setter(a1);
  v2 = type metadata accessor for Published.Publisher();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*StateMachine.$currentState.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  *v4 = v1;
  v6 = type metadata accessor for Published.Publisher();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  StateMachine.$currentState.getter();
  return StateMachine.$currentState.modify;
}

void StateMachine.currentState.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 8);
  v8 = *(*a1 + 16);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    a3(v5);
    v9 = *(v8 + 8);
    v9(v5, v7);
    v9(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t variable initialization expression of StateMachine.stateMapping(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CUState();

  return Dictionary.init()();
}

uint64_t *StateMachine.__allocating_init(states:initialState:instrumentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_allocObject();
  v8 = specialized StateMachine.init(states:initialState:instrumentationManager:)(a1, a2, a3);

  (*(*(*(v4 + 80) - 8) + 8))(a2);
  return v8;
}

uint64_t *StateMachine.init(states:initialState:instrumentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = specialized StateMachine.init(states:initialState:instrumentationManager:)(a1, a2, a3);

  (*(*(*(v5 + 80) - 8) + 8))(a2);
  return v6;
}

id *StateMachine.deinit()
{
  [v0[3] invalidate];

  v1 = *(*v0 + 14);
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t StateMachine.__deallocating_deinit()
{
  StateMachine.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void StateMachine.dispatchEvent(_:)()
{
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 24);
  v4 = swift_checkMetadataState();
  v5 = v3(v4, AssociatedConformanceWitness);
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x277D02920]);
  v9 = MEMORY[0x26D631880](v5, v7);

  v10 = [v8 initWithName:v9 userInfo:0];

  [v1 dispatchEvent_];
}

uint64_t StateMachine.constructStateMapping()()
{
  v1 = *v0;
  v71 = *(*v0 + 80);
  v2 = v71;
  v3 = type metadata accessor for Optional();
  v67 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v45 - v8;
  v10 = *(v2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v58 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v45 - v13;
  v14 = v1;
  v15 = v0 + *(v1 + 120);
  swift_beginAccess();
  v16 = type metadata accessor for CUState();
  v69 = v0;
  v17 = *(v14 + 88);
  v18 = *(v17 + 8);

  v59 = v18;
  v20 = MEMORY[0x26D631830](v19, v71, v16, v18);

  if (!v20)
  {
    v22 = v16;
    v57 = v17;
    v56 = v15;
    v23 = *(v69 + 16);
    v75 = v23;

    v24 = v71;
    if (Set.count.getter() < 1)
    {
    }

    else
    {
      v68 = v22;
      v53 = (v10 + 48);
      v66 = v10 + 32;
      v52 = v57 + 48;
      ++v67;
      v51 = v57 + 56;
      v50 = v10 + 16;
      v49 = v11 + 7;
      v48 = v74;
      v47 = v10 + 8;
      v65 = type metadata accessor for Set();
      v64 = 0;
      v25 = v70;
      v55 = v3;
      v54 = v6;
      v46 = v9;
      while (1)
      {
        aBlock[0] = v23;

        swift_getWitnessTable();
        v26 = v64;
        Sequence.first(where:)();

        if ((*v53)(v9, 1, v24) == 1)
        {
          break;
        }

        v61 = *(v10 + 32);
        v61(v25, v9, v24);
        v27 = v57;
        (*(v57 + 48))(v24, v57);
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #2 in StateMachine.constructStateMapping(), v69, MEMORY[0x277D84A98], v68, v28, aBlock);
        v64 = v26;
        v63 = *v67;
        v63(v6, v3);
        v29 = aBlock[0];
        v30 = (*(v27 + 56))(v24, v27);
        v32 = v31;
        v33 = objc_allocWithZone(MEMORY[0x277D02918]);
        v34 = v29;
        v62 = v34;
        v35 = MEMORY[0x26D631880](v30, v32);

        v60 = [v33 initWithName:v35 parent:v34];

        v36 = swift_allocObject();
        swift_weakInit();
        v37 = *(v10 + 16);
        v38 = v58;
        v37(v58, v70, v71);
        v39 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v40 = (v49 + v39) & 0xFFFFFFFFFFFFFFF8;
        v41 = swift_allocObject();
        *(v41 + 16) = v71;
        *(v41 + 24) = v27;
        v9 = v46;
        v61((v41 + v39), v38, v71);
        *(v41 + v40) = v36;
        v74[2] = partial apply for closure #3 in StateMachine.constructStateMapping();
        v74[3] = v41;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v74[0] = thunk for @escaping @callee_guaranteed (@guaranteed CUStateEvent) -> (@unowned CUStateResult);
        v74[1] = &block_descriptor;
        v42 = _Block_copy(aBlock);

        v43 = v60;
        [v60 setEventHandler_];
        _Block_release(v42);
        v37(v38, v70, v71);
        v6 = v54;
        v72 = v43;
        swift_beginAccess();
        type metadata accessor for Dictionary();
        v44 = v43;
        v25 = v70;
        v24 = v71;
        Dictionary.subscript.setter();
        swift_endAccess();
        Set.remove(_:)();

        v3 = v55;
        v63(v6, v55);
        (*(v10 + 8))(v25, v24);
        v23 = v75;
        if (Set.count.getter() <= 0)
        {
        }
      }

      (*v67)(v9, v3);
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in StateMachine.constructStateMapping()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 80);
  v26 = type metadata accessor for Optional();
  v5 = *(v26 - 8);
  v6 = MEMORY[0x28223BE20](v26);
  v24 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = *(*(v3 + 88) + 48);
  v25 = *(v3 + 88);
  v23 = v10;
  (v10)(v4);
  v22 = *(v4 - 8);
  v11 = *(v22 + 48);
  v12 = 1;
  v13 = v11(v9, 1, v4);
  (*(v5 + 8))(v9, v26);
  if (v13 == 1)
  {
    return v12;
  }

  v14 = v24;
  v15 = v25;
  v23(v4, v25);
  result = v11(v14, 1, v4);
  if (result != 1)
  {
    v17 = *(*a2 + 120);
    swift_beginAccess();
    v18 = *(a2 + v17);
    v19 = type metadata accessor for CUState();
    v20 = *(v15 + 8);

    MEMORY[0x26D631860](&v27, v14, v18, v4, v19, v20);

    v12 = v27 != 0;
    if (v27)
    {
    }

    (*(v22 + 8))(v14, v4);
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t closure #3 in StateMachine.constructStateMapping()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a3;
  v70 = a2;
  v73 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v66 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v67 = &v65 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v65 - v12;
  v74 = type metadata accessor for EventHandlerResult(0, v14, v15, v14);
  v72 = *(v74 - 8);
  v16 = MEMORY[0x28223BE20](v74);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v65 - v19;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for Optional();
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v65 = &v65 - v23;
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v65 - v25;
  v68 = a1;
  v27 = [a1 name];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v71 = v24;
  if (v28 == 0x7265746E65 && v30 == 0xE500000000000000)
  {

    v31 = v13;
LABEL_5:
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    goto LABEL_6;
  }

  v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v31 = v13;
  if (v32)
  {
    goto LABEL_5;
  }

  v48 = [v68 name];
  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;

  if (v49 == 1953069157 && v51 == 0xE400000000000000)
  {

    v31 = v13;
LABEL_15:
    v53 = swift_getAssociatedConformanceWitness();
    (*(v53 + 40))(AssociatedTypeWitness, v53);
    goto LABEL_6;
  }

  v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v31 = v13;
  if (v52)
  {
    goto LABEL_15;
  }

  v54 = [v68 name];
  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;

  if (v55 == 0x6C616974696E69 && v57 == 0xE700000000000000)
  {

    v31 = v13;
LABEL_24:
    v59 = swift_getAssociatedConformanceWitness();
    (*(v59 + 48))(AssociatedTypeWitness, v59);
    goto LABEL_6;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v31 = v13;
  if (v58)
  {
    goto LABEL_24;
  }

  v60 = [v68 name];
  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;

  v63 = swift_getAssociatedConformanceWitness();
  v64 = v65;
  (*(v63 + 16))(v68, v62, AssociatedTypeWitness, v63);
  result = (*(v24 + 48))(v64, 1, AssociatedTypeWitness);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  (*(v24 + 32))(v26, v64, AssociatedTypeWitness);
LABEL_6:
  v35 = v72;
  v34 = v73;
  v36 = v75;
  (*(a5 + 64))(v26, a4, a5);
  v37 = v74;
  (*(v35 + 16))(v18, v36, v74);
  v38 = (*(v34 + 48))(v18, 2, a4);
  if (v38)
  {
    if (v38 == 1)
    {
      (*(v35 + 8))(v75, v37);
      (*(v71 + 8))(v26, AssociatedTypeWitness);
      return 1;
    }

    goto LABEL_17;
  }

  (*(v34 + 32))(v31, v18, a4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v34 + 8))(v31, a4);
LABEL_17:
    (*(v35 + 8))(v75, v37);
    (*(v71 + 8))(v26, AssociatedTypeWitness);
    return 2;
  }

  v41 = v67;
  v42 = v35;
  v43 = Strong;
  (*(*Strong + 136))();
  v44 = v66;
  (*(v34 + 16))(v66, v31, a4);
  (*(*v43 + 144))(v44);
  v45 = *(v43 + *(*v43 + 128));
  v46 = mach_absolute_time();
  (*(*v45 + 168))(v41, v31, v26, v46, a4, a5);
  v47 = *(v34 + 8);
  v47(v41, a4);
  v47(v31, a4);
  (*(v42 + 8))(v75, v74);
  (*(v71 + 8))(v26, AssociatedTypeWitness);

  return 2;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed CUStateEvent) -> (@unowned CUStateResult)(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

void specialized StateMachine.currentState.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v10 - v5;
  v10[2] = v3;
  v11 = *(v7 + 88);
  v8 = v11;
  swift_getKeyPath();
  v10[0] = v3;
  v10[1] = v8;
  swift_getKeyPath();
  (*(v4 + 16))(v6, a1, v3);

  v9 = static Published.subscript.setter();
  StateMachine.currentState.didset(v9);
}

uint64_t specialized StateMachine.$currentState.setter(uint64_t a1)
{
  v2 = type metadata accessor for Published.Publisher();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

unint64_t type metadata accessor for CUState()
{
  result = lazy cache variable for type metadata for CUState;
  if (!lazy cache variable for type metadata for CUState)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CUState);
  }

  return result;
}

uint64_t *specialized StateMachine.init(states:initialState:instrumentationManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v24[-1] - v10;
  v3[3] = [objc_allocWithZone(MEMORY[0x277D02928]) init];
  v12 = *(*v3 + 120);
  v13 = type metadata accessor for CUState();
  v14 = *(*(v7 + 88) + 8);
  *(v3 + v12) = Dictionary.init()();
  v3[2] = a1;
  (*(v9 + 16))(v11, a2, v8);
  swift_beginAccess();
  property wrapper backing initializer of StateMachine.currentState(v11, v8);
  swift_endAccess();
  *(v3 + *(*v3 + 128)) = a3;

  StateMachine.constructStateMapping()();
  v15 = v3[3];
  v16 = *(*v3 + 120);
  swift_beginAccess();
  v24[1] = *(v3 + v16);
  type metadata accessor for Dictionary.Values();
  v17 = v15;

  swift_getWitnessTable();
  Array.init<A>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v17 setStates_];

  v19 = *(*v3 + 136);
  v20 = v3[3];
  v19();
  swift_beginAccess();
  MEMORY[0x26D631860](v24, v11, *(v3 + v16), v8, v13, v14);
  v21 = v24[0];
  swift_endAccess();
  (*(v9 + 8))(v11, v8);
  [v20 setInitialState_];

  [v3[3] start];
  return v3;
}

uint64_t type metadata completion function for StateMachine(uint64_t a1)
{
  result = type metadata accessor for Published();
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

void *partial apply for closure #2 in StateMachine.constructStateMapping()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 120);
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = *(v5 + 80);
  v9 = type metadata accessor for CUState();
  v10 = *(*(v5 + 88) + 8);

  result = MEMORY[0x26D631860](&v13, a1, v7, v8, v9, v10);
  v12 = v13;
  if (v13)
  {

    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2691A003C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2691A0074()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static OS_dispatch_queue.executeOnMain<A>(_:)(void (*a1)(void))
{
  if ([objc_opt_self() isMainThread])
  {
    a1();
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v2 = static OS_dispatch_queue.main.getter();
    MEMORY[0x28223BE20](v2);
    OS_dispatch_queue.sync<A>(execute:)();
  }
}

void static NotificationCenterHelper.dispatch<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v44[-v10];
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = Logger.framework.unsafeMutableAddressor();
  v50 = v13;
  (*(v13 + 16))(v15, v16, v12);
  v17 = *(v6 + 16);
  v17(v11, a1, a2);
  v17(v9, a1, a2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v49 = a1;
    v21 = v20;
    v47 = swift_slowAlloc();
    v51 = v47;
    *v21 = 136315394;
    swift_getDynamicType();
    v22 = _typeName(_:qualified:)();
    v46 = v18;
    v23 = v22;
    v45 = v19;
    v25 = v24;
    v48 = v12;
    v26 = *(v6 + 8);
    v26(v11, a2);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v51);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v28 = (*(a3 + 24))(a2, a3);
    v30 = v29;
    v26(v9, a2);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v51);

    *(v21 + 14) = v31;
    v32 = v46;
    _os_log_impl(&dword_269189000, v46, v45, "Client posting darwin notification for event dispatch type=%s, event: %s", v21, 0x16u);
    v33 = v47;
    swift_arrayDestroy();
    MEMORY[0x26D632230](v33, -1, -1);
    MEMORY[0x26D632230](v21, -1, -1);

    (*(v50 + 8))(v15, v48);
  }

  else
  {

    v34 = *(v6 + 8);
    v34(v9, a2);
    (*(v50 + 8))(v15, v12);
    v34(v11, a2);
  }

  v35 = darwinNotificationCenter.unsafeMutableAddressor()->value;
  v36 = eventDispatchNotificationNamePrefix.unsafeMutableAddressor();
  countAndFlagsBits = v36->_countAndFlagsBits;
  object = v36->_object;
  v39 = *(a3 + 24);

  v40 = v39(a2, a3);
  v42 = v41;
  v51 = countAndFlagsBits;
  v52 = object;

  MEMORY[0x26D6318B0](v40, v42);

  v43 = MEMORY[0x26D631880](v51, v52);

  CFNotificationCenterPostNotification(v35, v43, 0, 0, 1u);
}

void static NotificationCenterHelper.removeEveryObserver(_:)(const void *a1)
{
  value = darwinNotificationCenter.unsafeMutableAddressor()->value;

  CFNotificationCenterRemoveEveryObserver(value, a1);
}

uint64_t static NotificationCenterHelper.notifcationName(for:)(void *a1)
{
  v2 = eventReceivedNotificationNamePrefix.unsafeMutableAddressor();
  countAndFlagsBits = v2->_countAndFlagsBits;
  object = v2->_object;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v6 + 24);

  v8 = v7(v5, v6);
  v10 = v9;

  MEMORY[0x26D6318B0](v8, v10);

  v11 = MEMORY[0x26D631880](countAndFlagsBits, object);

  return v11;
}

{
  v2 = stateTransitionNotificationNamePrefix.unsafeMutableAddressor();
  countAndFlagsBits = v2->_countAndFlagsBits;
  object = v2->_object;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v6 + 56);

  v8 = v7(v5, v6);
  v10 = v9;

  MEMORY[0x26D6318B0](v8, v10);

  v11 = MEMORY[0x26D631880](countAndFlagsBits, object);

  return v11;
}

uint64_t static NotificationCenterHelper.state<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()) && (v50 = 0, v51 = 0, static String._conditionallyBridgeFromObjectiveC(_:result:)(), (v18 = v51) != 0))
  {
    v43 = v50;
    v44 = v13;
    v19 = stateTransitionNotificationNamePrefix.unsafeMutableAddressor();
    object = v19->_object;
    countAndFlagsBits = v19->_countAndFlagsBits;
    v49 = object;
    v46 = 0;
    v47 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    (*(a3 + 80))(v21);

    v22 = *(a2 - 8);
    if ((*(v22 + 48))(v17, 1, a2) == 1)
    {
      (*(v15 + 8))(v17, v14);
      v23 = Logger.framework.unsafeMutableAddressor();
      v24 = v44;
      (*(v8 + 16))(v44, v23, v7);

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = v25;
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v50 = v29;
        *v28 = 136315138;
        v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v18, &v50);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_269189000, v27, v26, "State transition darwin notification was malformed: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x26D632230](v29, -1, -1);
        MEMORY[0x26D632230](v28, -1, -1);

        (*(v8 + 8))(v44, v7);
      }

      else
      {

        (*(v8 + 8))(v24, v7);
      }

      return (*(v22 + 56))(v45, 1, 1, a2);
    }

    else
    {

      v41 = v45;
      (*(v22 + 32))(v45, v17, a2);
      return (*(v22 + 56))(v41, 0, 1, a2);
    }
  }

  else
  {
    v31 = Logger.framework.unsafeMutableAddressor();
    (*(v8 + 16))(v11, v31, v7);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136315138;
      v36 = unknownNotificationName.unsafeMutableAddressor();
      v37 = v36->_countAndFlagsBits;
      v38 = v36->_object;

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v50);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_269189000, v32, v33, "State transition darwin notification was malformed: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x26D632230](v35, -1, -1);
      MEMORY[0x26D632230](v34, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return (*(*(a2 - 8) + 56))(v45, 1, 1, a2);
  }
}

uint64_t static NotificationCenterHelper.event<A>(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()) && (v49 = 0, v50 = 0, static String._conditionallyBridgeFromObjectiveC(_:result:)(), (v18 = v50) != 0))
  {
    v43 = v49;
    v19 = eventReceivedNotificationNamePrefix.unsafeMutableAddressor();
    object = v19->_object;
    countAndFlagsBits = v19->_countAndFlagsBits;
    v48 = object;
    v45 = 0;
    v46 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v21 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    (*(a3 + 16))(v21);
    v22 = *(a2 - 8);
    if ((*(v22 + 48))(v17, 1, a2) == 1)
    {
      (*(v15 + 8))(v17, v14);
      v23 = Logger.framework.unsafeMutableAddressor();
      (*(v8 + 16))(v13, v23, v7);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v49 = v27;
        *v26 = 136315138;
        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v18, &v49);
        v43 = v24;
        v29 = v28;

        *(v26 + 4) = v29;
        v30 = v25;
        v31 = v43;
        _os_log_impl(&dword_269189000, v43, v30, "Event reception darwin notification was malformed: %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x26D632230](v27, -1, -1);
        MEMORY[0x26D632230](v26, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v13, v7);
      return (*(v22 + 56))(v44, 1, 1, a2);
    }

    else
    {

      v42 = v44;
      (*(v22 + 32))(v44, v17, a2);
      return (*(v22 + 56))(v42, 0, 1, a2);
    }
  }

  else
  {
    v32 = Logger.framework.unsafeMutableAddressor();
    (*(v8 + 16))(v11, v32, v7);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v36;
      *v35 = 136315138;
      v37 = unknownNotificationName.unsafeMutableAddressor();
      v38 = v37->_countAndFlagsBits;
      v39 = v37->_object;

      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, &v49);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_269189000, v33, v34, "Event reception darwin notification was malformed: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x26D632230](v36, -1, -1);
      MEMORY[0x26D632230](v35, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return (*(*(a2 - 8) + 56))(v44, 1, 1, a2);
  }
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CallEvent@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized CallEvent.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t specialized CallEvent.init(rawValue:)(unint64_t result)
{
  if (result > 0xE)
  {
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CallEvent] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CallEvent] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CallEvent] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10SiriStates9CallEventOGMd, &_sSay10SiriStates9CallEventOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CallEvent] and conformance [A]);
  }

  return result;
}

uint64_t CallClient.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t key path getter for CallClient.delegate : CallClient@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x70))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CallClient.delegate : CallClient(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0x78);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*CallClient.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____SRSTCallClient_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SharedClient.delegate.modify;
}

uint64_t CallClient.currentState.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t CallClient.currentState.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t key path getter for CallClient.currentState : CallClient@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x88))();
  *a2 = result;
  return result;
}

uint64_t key path setter for CallClient.currentState : CallClient(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x90);
  v4 = *a1;
  return v3(v2);
}

uint64_t (*CallClient.currentState.modify(uint64_t *a1))()
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
  return SharedClient.currentState.modify;
}

uint64_t key path setter for CallClient.$currentState : CallClient(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xA8))(v6);
}

uint64_t CallClient.$currentState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallStateCSgGMd, &_s7Combine9PublishedVy10SiriStates9CallStateCSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CallClient.$currentState.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallStateCSg_GMR);
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

  v10 = OBJC_IVAR____SRSTCallClient__currentState[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallStateCSgGMd, &_s7Combine9PublishedVy10SiriStates9CallStateCSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$currentState.modify;
}

uint64_t key path getter for CallClient.mostRecentEvent : CallClient@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t CallClient.mostRecentEvent.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t CallClient.mostRecentEvent.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t (*CallClient.mostRecentEvent.modify(uint64_t *a1))()
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
  return SharedClient.mostRecentEvent.modify;
}

uint64_t key path setter for CallClient.$mostRecentEvent : CallClient(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMR);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  (*(v7 + 16))(&v9 - v5, a1);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xD8))(v6);
}

uint64_t CallClient.$mostRecentEvent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallEventOSgGMd, &_s7Combine9PublishedVy10SiriStates9CallEventOSgGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CallClient.$mostRecentEvent.modify(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMd, &_s7Combine9PublishedV9PublisherVy10SiriStates9CallEventOSg_GMR);
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

  v10 = OBJC_IVAR____SRSTCallClient__mostRecentEvent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallEventOSgGMd, &_s7Combine9PublishedVy10SiriStates9CallEventOSgGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return SharedClient.$mostRecentEvent.modify;
}

uint64_t CallClient.mostRecentEventName.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  if (v2)
  {
    return 0;
  }

  else
  {
    return CallEvent.name.getter(v1);
  }
}

void CallClient.dispatchEvent(_:)(uint64_t a1)
{
  type metadata accessor for NotificationCenterHelper();
  v3 = a1;
  v2 = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
  static NotificationCenterHelper.dispatch<A>(_:)(&v3, &type metadata for CallEvent, v2);
}

id CallClient.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v1 + OBJC_IVAR____SRSTCallClient_stopped) & 1) == 0)
  {
    type metadata accessor for CallClient(0);
    lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallClient and conformance CallClient, type metadata accessor for CallClient, &protocol conformance descriptor for CallClient);
    static Clientele.remove<A>(_:)(v1);
    v6 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v6, v2);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_269189000, v7, v8, "Deinit called for CallClient", v9, 2u);
      MEMORY[0x26D632230](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v10 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.deinit);
  }

  v11 = type metadata accessor for CallClient(0);
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_dealloc);
}

void @objc closure #1 in variable initialization expression of static CallClient.handleStateTransititionNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static CallClient.handleStateTransititionNotification(a2, a3);
}

uint64_t static CallClient.handleStateTransititionNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static CallClient.handleStateTransititionNotification[0] = a1;
  return result;
}

uint64_t key path getter for static CallClient.handleStateTransititionNotification : CallClient.Type@<X0>(uint64_t (**a1)()@<X8>)
{
  result = swift_beginAccess();
  *a1 = static CallClient.handleStateTransititionNotification[0];
  return result;
}

uint64_t key path setter for static CallClient.handleStateTransititionNotification : CallClient.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static CallClient.handleStateTransititionNotification[0] = v1;
  return result;
}

void @objc closure #1 in variable initialization expression of static CallClient.handleEventNotification(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  specialized closure #1 in variable initialization expression of static CallClient.handleEventNotification(a2, a3);
}

uint64_t type metadata accessor for CallClient(uint64_t a1)
{
  result = type metadata singleton initialization cache for CallClient;
  if (!type metadata singleton initialization cache for CallClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2691A2EE4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t static CallClient.handleEventNotification.setter(uint64_t (*a1)())
{
  result = swift_beginAccess();
  static CallClient.handleEventNotification = a1;
  return result;
}

uint64_t key path getter for static CallClient.handleEventNotification : CallClient.Type@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static CallClient.handleEventNotification;
  return result;
}

uint64_t key path setter for static CallClient.handleEventNotification : CallClient.Type(uint64_t (**a1)())
{
  v1 = *a1;
  result = swift_beginAccess();
  static CallClient.handleEventNotification = v1;
  return result;
}

id CallClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void CallClient.init()()
{
  v56 = type metadata accessor for Logger();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallEventOSgGMd, &_s7Combine9PublishedVy10SiriStates9CallEventOSgGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v52 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy10SiriStates9CallStateCSgGMd, &_s7Combine9PublishedVy10SiriStates9CallStateCSgGMR);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v52 - v8;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____SRSTCallClient__currentState[0];
  v64 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates9CallStateCSgMd, &_s10SiriStates9CallStateCSgMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(&v0[v10], v9, v6);
  v11 = OBJC_IVAR____SRSTCallClient__mostRecentEvent;
  v64 = 0;
  LOBYTE(v65) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10SiriStates9CallEventOSgMd, &_s10SiriStates9CallEventOSgMR);
  Published.init(initialValue:)();
  (*(v3 + 32))(&v0[v11], v5, v2);
  v0[OBJC_IVAR____SRSTCallClient_stopped] = 0;
  v12 = type metadata accessor for CallClient(0);
  v63.receiver = v0;
  v63.super_class = v12;
  v13 = objc_msgSendSuper2(&v63, sel_init);
  lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallClient and conformance CallClient, type metadata accessor for CallClient, &protocol conformance descriptor for CallClient);
  v53 = v13;
  v14 = static Clientele.add<A>(_:)(v53);
  v15 = *CallState.allStates.unsafeMutableAddressor();
  if ((v15 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CallState();
    lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallState and conformance NSObject, type metadata accessor for CallState, MEMORY[0x277D85378]);
    Set.Iterator.init(_cocoa:)();
    v15 = v64;
    v16 = v65;
    v17 = v66;
    v18 = v67;
    v19 = v68;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);

    v18 = 0;
  }

  v57 = v17;
  v58 = v14;
  v23 = (v17 + 64) >> 6;
  if (v15 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v24 = v18;
    v25 = v19;
    v26 = v18;
    if (!v19)
    {
      break;
    }

LABEL_12:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
LABEL_18:
      outlined consume of Set<SharedState>.Iterator._Variant(v15);
      v57 = static CallEvent.allCases.getter();
      v35 = v57[2];
      v36 = v58;
      if (v35)
      {
        type metadata accessor for NotificationCenterHelper();
        v37 = v57 + 4;
        v38 = darwinNotificationCenter.unsafeMutableAddressor();
        swift_beginAccess();
        v39 = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
        do
        {
          v40 = *v37++;
          value = v38->value;
          v42 = static CallClient.handleEventNotification;
          v60 = &type metadata for CallEvent;
          v61 = v39;
          v59[0] = v40;
          v43 = value;
          v44 = static NotificationCenterHelper.notifcationName(for:)(v59);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          CFNotificationCenterAddObserver(v43, v36, v42, v44, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

          --v35;
        }

        while (v35);
      }

      v45 = Logger.framework.unsafeMutableAddressor();
      v46 = v55;
      v47 = v54;
      v48 = v56;
      (*(v55 + 16))(v54, v45, v56);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_269189000, v49, v50, "CallClient added Darwin observers", v51, 2u);
        MEMORY[0x26D632230](v51, -1, -1);
      }

      (*(v46 + 8))(v47, v48);
      return;
    }

    while (1)
    {
      v30 = darwinNotificationCenter.unsafeMutableAddressor()->value;
      swift_beginAccess();
      v31 = static CallClient.handleStateTransititionNotification[0];
      type metadata accessor for NotificationCenterHelper();
      v60 = type metadata accessor for CallState();
      v61 = lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallState and conformance CallState, type metadata accessor for CallState, &protocol conformance descriptor for CallState);
      v59[0] = v28;
      v32 = v30;
      v33 = v28;
      v34 = static NotificationCenterHelper.notifcationName(for:)(v59);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      CFNotificationCenterAddObserver(v32, v58, v31, v34, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

      v18 = v26;
      v19 = v27;
      if ((v15 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v29 = __CocoaSet.Iterator.next()();
      if (v29)
      {
        v62 = v29;
        type metadata accessor for CallState();
        swift_dynamicCast();
        v28 = v59[0];
        v26 = v18;
        v27 = v19;
        if (v59[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_18;
    }

    v25 = *(v16 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall CallClient.stopClient()()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____SRSTCallClient_stopped;
  if ((v1[OBJC_IVAR____SRSTCallClient_stopped] & 1) == 0)
  {
    v7 = Logger.framework.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v7, v2);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_269189000, v8, v9, "#SiriStates stopping client", v10, 2u);
      MEMORY[0x26D632230](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v1[v6] = 1;
    type metadata accessor for CallClient(0);
    lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallClient and conformance CallClient, type metadata accessor for CallClient, &protocol conformance descriptor for CallClient);
    static Clientele.remove<A>(_:)(v1);
    type metadata accessor for OS_dispatch_queue();
    *(swift_allocObject() + 16) = v1;
    v11 = v1;
    static OS_dispatch_queue.executeOnMain<A>(_:)(partial apply for closure #1 in SharedClient.stopClient());
  }
}

uint64_t protocol witness for ClientProtocol.delegate.getter in conformance CallClient@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x70))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.delegate.modify in conformance CallClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x80))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.currentState.getter in conformance CallClient@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x88))();
  *a1 = result;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.currentState.modify in conformance CallClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x98))();
  return protocol witness for ClientProtocol.currentState.modify in conformance SharedClient;
}

uint64_t protocol witness for ClientProtocol.mostRecentEvent.getter in conformance CallClient@<X0>(uint64_t a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xB8))();
  *a1 = result;
  *(a1 + 8) = v4 & 1;
  return result;
}

uint64_t (*protocol witness for ClientProtocol.mostRecentEvent.modify in conformance CallClient(uint64_t *a1))()
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();
  return protocol witness for ClientProtocol.delegate.modify in conformance SharedClient;
}

uint64_t lazy protocol witness table accessor for type CallClient and conformance CallClient(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for CallClient(uint64_t a1)
{
  type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<CallState?>, &_s10SiriStates9CallStateCSgMd, &_s10SiriStates9CallStateCSgMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<SharedState?>(319, &lazy cache variable for type metadata for Published<CallEvent?>, &_s10SiriStates9CallEventOSgMd, &_s10SiriStates9CallEventOSgMR);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void specialized closure #1 in variable initialization expression of static CallClient.handleStateTransititionNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - v9;
  type metadata accessor for NotificationCenterHelper();
  v11 = type metadata accessor for CallState();
  v12 = lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallState and conformance CallState, type metadata accessor for CallState, &protocol conformance descriptor for CallState);
  static NotificationCenterHelper.state<A>(from:)(a2, v11, v12, &v49);
  v13 = v49;
  if (v49)
  {
    v48 = a1;
    v14 = Logger.framework.unsafeMutableAddressor();
    v46 = *(v5 + 16);
    v46(v10, v14, v4);
    v15 = v13;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.info.getter();

    v18 = os_log_type_enabled(v16, v17);
    v47 = v15;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v44 = v5 + 16;
      v20 = v19;
      v21 = swift_slowAlloc();
      v45 = v5;
      v22 = v21;
      v49 = v21;
      *v20 = 136315138;
      v43 = v14;
      v23 = v4;
      v24 = v8;
      v25 = *&v15[OBJC_IVAR____SRSTCallState_name];
      v26 = *&v15[OBJC_IVAR____SRSTCallState_name + 8];

      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v49);

      *(v20 + 4) = v27;
      v8 = v24;
      v4 = v23;
      v14 = v43;
      _os_log_impl(&dword_269189000, v16, v17, "CallClient received valid state transition: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v28 = v22;
      v5 = v45;
      MEMORY[0x26D632230](v28, -1, -1);
      MEMORY[0x26D632230](v20, -1, -1);
    }

    v29 = *(v5 + 8);
    v29(v10, v4);
    type metadata accessor for CallClient(0);
    lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallClient and conformance CallClient, type metadata accessor for CallClient, &protocol conformance descriptor for CallClient);
    v30 = static Clientele.contains<A>(_:)(v48);
    if (v30)
    {
      v31 = v30;
      v32 = MEMORY[0x277D85000];
      v33 = *((*MEMORY[0x277D85000] & *v30) + 0x90);
      v34 = v47;
      v35 = v33(v13);
      v36 = (*((*v32 & *v31) + 0x70))(v35);
      if (v36)
      {
        [v36 stateMachineWithClient:v31 didTransitionToState:v34];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v46(v8, v14, v4);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = v8;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_269189000, v37, v38, "Observer for darwin callback handler not found", v40, 2u);
        MEMORY[0x26D632230](v40, -1, -1);

        v41 = v39;
      }

      else
      {

        v41 = v8;
      }

      v29(v41, v4);
    }
  }
}

void specialized closure #1 in variable initialization expression of static CallClient.handleEventNotification(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  type metadata accessor for NotificationCenterHelper();
  v11 = lazy protocol witness table accessor for type CallEvent and conformance CallEvent();
  static NotificationCenterHelper.event<A>(from:)(a2, &type metadata for CallEvent, v11, &v43);
  if ((v44 & 1) == 0)
  {
    v42 = a1;
    v12 = v43;
    v13 = Logger.framework.unsafeMutableAddressor();
    v40 = *(v5 + 16);
    v40(v10, v13, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    v16 = os_log_type_enabled(v14, v15);
    v41 = v12;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v39 = v5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v38 = v13;
      v20 = v19;
      v43 = v19;
      *v18 = 136315138;
      v21 = CallEvent.name.getter(v12);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v43);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_269189000, v14, v15, "CallClient received valid event reception: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      v24 = v20;
      v13 = v38;
      MEMORY[0x26D632230](v24, -1, -1);
      v25 = v18;
      v5 = v39;
      MEMORY[0x26D632230](v25, -1, -1);
    }

    v26 = *(v5 + 8);
    v26(v10, v4);
    type metadata accessor for CallClient(0);
    lazy protocol witness table accessor for type CallClient and conformance CallClient(&lazy protocol witness table cache variable for type CallClient and conformance CallClient, type metadata accessor for CallClient, &protocol conformance descriptor for CallClient);
    v27 = static Clientele.contains<A>(_:)(v42);
    if (v27)
    {
      v28 = v27;
      v29 = MEMORY[0x277D85000];
      v30 = v41;
      v31 = (*((*MEMORY[0x277D85000] & *v27) + 0xC0))(v41, 0);
      v32 = (*((*v29 & *v28) + 0x70))(v31);
      if (v32)
      {
        v33 = v32;
        if ([v32 respondsToSelector_])
        {
          [v33 stateMachineWithClient:v28 didReceiveEvent:v30];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
      v40(v8, v13, v4);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_269189000, v34, v35, "Observer for darwin callback handler not found", v36, 2u);
        MEMORY[0x26D632230](v36, -1, -1);
      }

      v26(v8, v4);
    }
  }
}

uint64_t one-time initialization function for framework()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.framework);
  __swift_project_value_buffer(v0, static Logger.framework);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.framework.unsafeMutableAddressor()
{
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.framework);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t static Logger.framework.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for framework != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.framework);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id one-time initialization function for attending()
{
  type metadata accessor for State();
  v0 = *State.abstract.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x6E69646E65747441, 0xE900000000000067, v0, implicit closure #1 in variable initialization expression of static State.attending, 0);
  static State.attending = result;
  return result;
}

void *implicit closure #1 in variable initialization expression of static State.attending(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v1 = *State.analyzing.unsafeMutableAddressor();
  v2 = v1;
  return v1;
}

uint64_t *State.attending.unsafeMutableAddressor()
{
  if (one-time initialization token for attending != -1)
  {
    swift_once();
  }

  return &static State.attending;
}

id static State.attending.getter()
{
  if (one-time initialization token for attending != -1)
  {
    swift_once();
  }

  v1 = static State.attending;

  return v1;
}

id one-time initialization function for understanding()
{
  type metadata accessor for State();
  v0 = *State.listening.unsafeMutableAddressor();
  v1 = v0;
  result = State.__allocating_init(name:parent:eventHandler:)(0x6174737265646E55, 0xED0000676E69646ELL, v0, implicit closure #1 in variable initialization expression of static State.understanding, 0);
  static State.understanding = result;
  return result;
}

id implicit closure #1 in variable initialization expression of static State.understanding(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 8)
  {
    if (a1 == 6)
    {
      v2 = State.processing.unsafeMutableAddressor();
      goto LABEL_12;
    }

    if (a1 == 7)
    {
      v2 = State.postResponse.unsafeMutableAddressor();
      goto LABEL_12;
    }
  }

  else
  {
    switch(a1)
    {
      case 13:
        v2 = State.available.unsafeMutableAddressor();
        goto LABEL_12;
      case 10:
        v2 = State.resting.unsafeMutableAddressor();
        goto LABEL_12;
      case 9:
        v2 = State.responding.unsafeMutableAddressor();
LABEL_12:
        v1 = *v2;
        v3 = *v2;
        break;
    }
  }

  return v1;
}

uint64_t *State.understanding.unsafeMutableAddressor()
{
  if (one-time initialization token for understanding != -1)
  {
    swift_once();
  }

  return &static State.understanding;
}

id static State.understanding.getter()
{
  if (one-time initialization token for understanding != -1)
  {
    swift_once();
  }

  v1 = static State.understanding;

  return v1;
}

uint64_t one-time initialization function for sharedLogger()
{
  v0 = [objc_opt_self() sharedStream];
  type metadata accessor for InstrumentationManager(0);
  swift_allocObject();
  v1 = specialized InstrumentationManager.init(_:)(v0);
  result = swift_unknownObjectRelease();
  static InstrumentationManager.sharedLogger = v1;
  return result;
}

uint64_t *InstrumentationManager.sharedLogger.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedLogger != -1)
  {
    swift_once();
  }

  return &static InstrumentationManager.sharedLogger;
}

uint64_t static InstrumentationManager.sharedLogger.getter()
{
  if (one-time initialization token for sharedLogger != -1)
  {
    swift_once();
  }
}

uint64_t key path setter for InstrumentationManager.currentSessionIdentifier : InstrumentationManager(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 120))(v6);
}

uint64_t InstrumentationManager.currentSessionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10SiriStates22InstrumentationManager_currentSessionIdentifier;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t InstrumentationManager.currentSessionIdentifier.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10SiriStates22InstrumentationManager_currentSessionIdentifier;
  swift_beginAccess();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t InstrumentationManager.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized InstrumentationManager.init(_:)(a1);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t InstrumentationManager.init(_:)(uint64_t a1)
{
  v1 = specialized InstrumentationManager.init(_:)(a1);
  swift_unknownObjectRelease();
  return v1;
}

void InstrumentationManager.logStateTransition<A>(previousState:currentState:event:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v90 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v94 = &v74 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v92 = &v74 - v17;
  MEMORY[0x28223BE20](v16);
  v91 = &v74 - v18;
  v96 = type metadata accessor for Logger();
  v19 = *(v96 - 8);
  v20 = MEMORY[0x28223BE20](v96);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v93 = &v74 - v23;
  v83 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v85 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = *(v27 + 16);
  v89 = a3;
  v86 = v27 + 16;
  v84 = v28;
  v28(&v74 - v29, a3, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSY_pSS8RawValueSYRts_XPMd, &_sSY_pSS8RawValueSYRts_XPMR);
  v87 = AssociatedTypeWitness;
  v30 = swift_dynamicCast();
  v95 = a1;
  if (v30)
  {
    v88 = a2;
    __swift_project_boxed_opaque_existential_1(v99, v99[3]);
    a2 = v88;
    dispatch thunk of RawRepresentable.rawValue.getter();
    v31 = v98;
    v81 = v97;
    __swift_destroy_boxed_opaque_existential_1Tm(v99);
    v32 = Logger.framework.unsafeMutableAddressor();
    (*(v19 + 16))(v93, v32, v96);
    v33 = a1;
    v34 = *(v11 + 16);
    v34(v91, v33, a5);
    v34(v92, a2, a5);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    v82 = v31;

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v80 = v19;
      v38 = v37;
      v76 = swift_slowAlloc();
      v99[0] = v76;
      *v38 = 136315906;
      v39 = _typeName(_:qualified:)();
      v75 = v36;
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v99);
      v74 = v35;
      v42 = v41;

      *(v38 + 4) = v42;
      *(v38 + 12) = 2080;
      v43 = v83;
      v78 = v34;
      v44 = *(v83 + 56);
      v45 = v91;
      v46 = v44(a5, v83);
      v77 = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v48 = v47;
      v79 = v22;
      v49 = *(v11 + 8);
      v49(v45, a5);
      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v99);

      *(v38 + 14) = v50;
      *(v38 + 22) = 2080;
      v51 = v92;
      v52 = v44(a5, v43);
      a2 = v88;
      v53 = v52;
      v55 = v54;
      v49(v51, a5);
      v22 = v79;
      v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v55, v99);
      v34 = v78;

      *(v38 + 24) = v56;
      *(v38 + 32) = 2080;
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v99);

      *(v38 + 34) = v57;
      v58 = v74;
      _os_log_impl(&dword_269189000, v74, v75, "%s transition from=%s to=%s event=%s", v38, 0x2Au);
      v59 = v76;
      swift_arrayDestroy();
      MEMORY[0x26D632230](v59, -1, -1);
      v60 = v38;
      v19 = v80;
      MEMORY[0x26D632230](v60, -1, -1);
    }

    else
    {

      v61 = *(v11 + 8);
      v61(v92, a5);
      v61(v91, a5);
    }

    (*(v19 + 8))(v93, v96);
    v34(v94, v95, a5);
  }

  else
  {
    v34 = *(v11 + 16);
    v34(v94, v95, a5);
  }

  type metadata accessor for State();
  if (swift_dynamicCast())
  {
    v62 = v99[0];
    v34(v90, a2, a5);
    if (swift_dynamicCast())
    {
      v63 = v99[0];
      v84(v85, v89, v87);
      if (swift_dynamicCast())
      {
        v64 = v99[0];
        v65 = mach_absolute_time();
        InstrumentationManager.doLogStateTransition(previousState:currentState:event:timestamp:)(v62, v63, v64, v65);

        return;
      }
    }
  }

  v66 = Logger.framework.unsafeMutableAddressor();
  (*(v19 + 16))(v22, v66, v96);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v99[0] = v70;
    *v69 = 136315138;
    v71 = _typeName(_:qualified:)();
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v99);

    *(v69 + 4) = v73;
    _os_log_impl(&dword_269189000, v67, v68, "No SELF state transition support added for type=%s", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x26D632230](v70, -1, -1);
    MEMORY[0x26D632230](v69, -1, -1);
  }

  (*(v19 + 8))(v22, v96);
}

uint64_t InstrumentationManager.doLogStateTransition(previousState:currentState:event:timestamp:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a3;
  v62 = a4;
  v64 = a1;
  v65 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v66 = *(v8 - 8);
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v57 - v19;
  v63 = swift_allocBox();
  v22 = v21;
  v23 = type metadata accessor for UUID();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  v24 = *(v5 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_sruifUserDefaults);
  if (v24 && (v25 = MEMORY[0x26D631880](0xD00000000000001DLL, 0x80000002691AC930), v26 = [v24 stringForKey_], v25, v26))
  {
    v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = Logger.framework.unsafeMutableAddressor();
    (*(v15 + 16))(v20, v29, v14);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v58 = v5;
      v33 = v32;
      v34 = swift_slowAlloc();
      v59 = v10;
      v35 = v34;
      aBlock[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v28, aBlock);
      _os_log_impl(&dword_269189000, v30, v31, "#SRST RequestLinking turnID retrieved turn=%s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      v36 = v35;
      v10 = v59;
      MEMORY[0x26D632230](v36, -1, -1);
      v37 = v33;
      v5 = v58;
      MEMORY[0x26D632230](v37, -1, -1);
    }

    (*(v15 + 8))(v20, v14);
    UUID.init(uuidString:)();

    outlined assign with take of UUID?(v13, v22);
  }

  else
  {
    v38 = Logger.framework.unsafeMutableAddressor();
    (*(v15 + 16))(v18, v38, v14);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v5;
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_269189000, v39, v40, "#SRST RequestLinking turnID not retrieved turn=nil", v42, 2u);
      v43 = v42;
      v5 = v41;
      MEMORY[0x26D632230](v43, -1, -1);
    }

    (*(v15 + 8))(v18, v14);
  }

  v44 = *(v5 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_queue);
  v45 = swift_allocObject();
  v47 = v64;
  v46 = v65;
  v45[2] = v64;
  v45[3] = v46;
  v49 = v61;
  v48 = v62;
  v45[4] = v5;
  v45[5] = v49;
  v45[6] = v63;
  v45[7] = v48;
  aBlock[4] = partial apply for closure #1 in InstrumentationManager.doLogStateTransition(previousState:currentState:event:timestamp:);
  aBlock[5] = v45;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v50 = _Block_copy(aBlock);
  v51 = v44;
  v52 = v47;
  v53 = v46;

  static DispatchQoS.unspecified.getter();
  v71 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  v54 = v68;
  v55 = v70;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x26D6319C0](0, v10, v54, v50);
  _Block_release(v50);

  (*(v69 + 8))(v54, v55);
  (*(v66 + 8))(v10, v67);
}

void closure #1 in InstrumentationManager.doLogStateTransition(previousState:currentState:event:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void), uint64_t a5, uint64_t a6)
{
  v123 = a4;
  v124 = a6;
  v129 = a3;
  v8 = type metadata accessor for Logger();
  v127 = *(v8 - 8);
  v128 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v111[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v120 = &v111[-v13];
  MEMORY[0x28223BE20](v12);
  v119 = &v111[-v14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v111[-v16];
  v18 = type metadata accessor for UUID();
  v125 = *(v18 - 8);
  v126 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v118 = &v111[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v19);
  v122 = &v111[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v121 = &v111[-v24];
  MEMORY[0x28223BE20](v23);
  v26 = &v111[-v25];
  v27 = swift_projectBox();
  type metadata accessor for State();
  v28 = State.disabled.unsafeMutableAddressor();
  v29 = *v28;
  v30 = static NSObject.== infix(_:_:)();

  if (v30 & 1) != 0 || (v31 = *v28, v32 = static NSObject.== infix(_:_:)(), v31, (v32) || (v38 = *State.available.unsafeMutableAddressor(), v39 = static NSObject.== infix(_:_:)(), v38, (v39) && ((v40 = *State.analyzing.unsafeMutableAddressor(), v41 = static NSObject.== infix(_:_:)(), v40, (v41) || (v42 = *State.responding.unsafeMutableAddressor(), v43 = static NSObject.== infix(_:_:)(), v42, (v43)))
  {
    UUID.init()();
    (*(*v129 + 120))(v26);
  }

  v33 = [objc_allocWithZone(MEMORY[0x277D5AD80]) init];
  if (v33)
  {
    v34 = v33;
    v35 = [objc_allocWithZone(MEMORY[0x277D5AD70]) init];
    if (v35)
    {
      v36 = v35;
      v117 = [objc_allocWithZone(MEMORY[0x277D5AD78]) init];
      if (v117)
      {
        [v34 setPreviousState_];
        [v34 setCurrentState_];
        v116 = v36;
        if (v123 > 0x10)
        {
          v37 = 0;
        }

        else
        {
          v37 = dword_2691ABBD4[v123];
        }

        v50 = [v34 setReason_];
        (*(*v129 + 112))(v50);
        v51 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        isa = UUID._bridgeToObjectiveC()().super.isa;
        v53 = [v51 initWithNSUUID_];

        v54 = v125;
        v55 = v125[1];
        v56 = v26;
        v57 = v126;
        v55(v56, v126);
        [v117 setSessionId_];

        swift_beginAccess();
        outlined init with copy of UUID?(v27, v17);
        if ((v54[6])(v17, 1, v57) == 1)
        {
          outlined destroy of UUID?(v17);
        }

        else
        {
          v123 = v55;
          v58 = v121;
          (v54[4])(v121, v17, v57);
          v59 = objc_opt_self();
          v60 = UUID._bridgeToObjectiveC()().super.isa;
          v61 = [v59 derivedIdentifierForComponentName:20 fromSourceIdentifier:v60];

          if (v61)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v62 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v63 = UUID._bridgeToObjectiveC()().super.isa;
            v64 = [v62 initWithNSUUID_];

            v65 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v66 = UUID._bridgeToObjectiveC()().super.isa;
            v67 = [v65 initWithNSUUID_];

            v68 = [objc_allocWithZone(MEMORY[0x277D5A9D0]) init];
            if (v68)
            {
              v69 = v68;
              v70 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
              if (v70)
              {
                v71 = v70;
                v72 = v64;
                v73 = [objc_allocWithZone(MEMORY[0x277D5A9E0]) init];
                if (v73)
                {
                  v74 = v73;
                  v114 = v72;
                  [v71 setUuid_];
                  [v71 setComponent_];
                  [v69 setSource_];
                  v120 = v67;
                  [v74 setUuid_];
                  [v74 setComponent_];
                  v115 = v74;
                  [v69 setTarget_];
                  v75 = Logger.framework.unsafeMutableAddressor();
                  v76 = v127;
                  v77 = v119;
                  (*(v127 + 16))(v119, v75, v128);
                  v78 = v118;
                  (v125[2])(v118, v122, v126);
                  v79 = Logger.logObject.getter();
                  v80 = static os_log_type_t.info.getter();
                  if (os_log_type_enabled(v79, v80))
                  {
                    v81 = swift_slowAlloc();
                    v113 = v81;
                    v125 = swift_slowAlloc();
                    v130 = v125;
                    *v81 = 136315138;
                    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                    v112 = v80;
                    v82 = v126;
                    v83 = dispatch thunk of CustomStringConvertible.description.getter();
                    v85 = v84;
                    v86 = v78;
                    v87 = v123;
                    (v123)(v86, v82);
                    v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, &v130);

                    v89 = v113;
                    *(v113 + 1) = v88;
                    v90 = v89;
                    _os_log_impl(&dword_269189000, v79, v112, "#SRST RequestLinking setting srstId=%s", v89, 0xCu);
                    v91 = v125;
                    __swift_destroy_boxed_opaque_existential_1Tm(v125);
                    MEMORY[0x26D632230](v91, -1, -1);
                    MEMORY[0x26D632230](v90, -1, -1);

                    (*(v76 + 8))(v119, v128);
                  }

                  else
                  {

                    v107 = v78;
                    v87 = v123;
                    (v123)(v107, v126);
                    (*(v76 + 8))(v77, v128);
                  }

                  v104 = v124;
                  v108 = v121;
                  v109 = v114;
                  [v117 setSrstId_];

                  [*(v129 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_stream) emitMessage:v69 timestamp:v104];
                  v110 = v126;
                  v87(v122, v126);
                  v87(v108, v110);
                  goto LABEL_37;
                }
              }

              else
              {
                v71 = v69;
              }
            }

            v92 = Logger.framework.unsafeMutableAddressor();
            v93 = v127;
            v94 = v120;
            (*(v127 + 16))(v120, v92, v128);
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v95, v96))
            {
              v97 = v64;
              v98 = v58;
              v99 = swift_slowAlloc();
              *v99 = 0;
              _os_log_impl(&dword_269189000, v95, v96, "#SRST RequestLinking Failed to create RequestLink event for SiriStates", v99, 2u);
              MEMORY[0x26D632230](v99, -1, -1);

              (*(v93 + 8))(v94, v128);
              v100 = v123;
              v101 = v126;
              (v123)(v122, v126);
              v100(v98, v101);
            }

            else
            {

              (*(v93 + 8))(v94, v128);
              v102 = v123;
              v103 = v126;
              (v123)(v122, v126);
              v102(v58, v103);
            }
          }

          else
          {
            (v123)(v58, v57);
          }
        }

        v104 = v124;
LABEL_37:
        v105 = v116;
        v106 = v117;
        [v116 setEventMetadata_];
        [v105 setStateTransitionEvent_];
        [*(v129 + OBJC_IVAR____TtC10SiriStates22InstrumentationManager_stream) emitMessage:v105 timestamp:v104];

        return;
      }
    }

    else
    {
      v36 = v34;
    }
  }

  v44 = Logger.framework.unsafeMutableAddressor();
  v46 = v127;
  v45 = v128;
  (*(v127 + 16))(v11, v44, v128);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_269189000, v47, v48, "#SRST RequestLinking unable to init SSSchemaProvisionalSiriStateTransitionEvent", v49, 2u);
    MEMORY[0x26D632230](v49, -1, -1);
  }

  (*(v46 + 8))(v11, v45);
}