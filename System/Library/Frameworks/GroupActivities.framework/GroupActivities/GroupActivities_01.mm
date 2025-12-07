double GroupSession.$catchupNeededPublisher.getter()
{
  specialized GroupSession.$catchupNeededPublisher.getter();

  return result;
}

uint64_t key path getter for GroupSession.state : <A>GroupSession<A>@<X0>(void *a1@<X8>)
{
  result = GroupSession.state.getter();
  *a1 = v3;
  return result;
}

uint64_t GroupSession.state.setter(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t GroupSession.$state.getter()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for GroupSession.State(255, *(v1 + 80), *(v1 + 88), v2);
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t property wrapper backing initializer of GroupSession.activity(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, a2);
  Published.init(wrappedValue:)(v6, a2);
  return (*(v4 + 8))(a1, a2);
}

uint64_t GroupSession.activity.getter()
{
  return GroupSession.activity.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t GroupSession.activity.setter(uint64_t a1)
{
  v3 = *v1;
  specialized GroupSession.activity.setter(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void GroupSession.activity.didset(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v42 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v38 - v3;
  v41 = type metadata accessor for Optional();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v38 - v6;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  v9 = __swift_project_value_buffer(v8, static Log.default);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v38 = v8;
    v13 = v12;
    v14 = swift_slowAlloc();
    v40 = v9;
    v15 = v14;
    v45 = v14;
    *v13 = 136315394;
    v16 = GroupSession.description.getter();
    v39 = v4;
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v45);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    GroupSession.activity.getter();
    (*(v42 + 56))(v7, 0, 1, v2);
    v20 = >> prefix<A>(_:)(v7, v2);
    v22 = v21;
    (*(v5 + 8))(v7, v41);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v45);
    v4 = v39;

    *(v13 + 14) = v23;
    _os_log_impl(&dword_1AEE80000, v10, v11, "Observed activity mutation on GroupSession %s to %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v15, -1, -1);
    v24 = v13;
    v8 = v38;
    MEMORY[0x1B2715BA0](v24, -1, -1);
  }

  else
  {
  }

  GroupSession.state.getter();
  v25 = v45;
  v43 = 1;
  v44 = v45;
  v26 = static GroupSession.State.== infix(_:_:)(&v44, &v43);
  outlined consume of GroupSession<A>.State<A>(v25);
  if (v26)
  {
    GroupSession.activity.getter();
    GroupSession.invalidateIfWaiting()(partial apply for closure #1 in GroupSession.updateActivity(_:), &block_descriptor_692);
    (*(v42 + 8))(v4, v2);
  }

  else
  {
    if (one-time initialization token for runtimeIssues != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, static Logger.runtimeIssues);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1AEE80000, v27, v28, "Attempted activity update on non-joined GroupSession", v29, 2u);
      MEMORY[0x1B2715BA0](v29, -1, -1);
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v45 = v33;
      *v32 = 136315138;
      v34 = GroupSession.description.getter();
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v45);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_1AEE80000, v30, v31, "Attempted activity update on non-joined GroupSession %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x1B2715BA0](v33, -1, -1);
      MEMORY[0x1B2715BA0](v32, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t static GroupSession.State.== infix(_:_:)(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 1)
  {
    if (v3 == 1)
    {
      goto LABEL_10;
    }
  }

  else if (v2)
  {
    if (v3 >= 2)
    {
      v5 = v2;
LABEL_10:
      v4 = 1;
      goto LABEL_11;
    }
  }

  else if (!v3)
  {
    goto LABEL_10;
  }

  outlined copy of GroupSession<A>.State<A>(*a1);
  v4 = 0;
LABEL_11:
  outlined copy of GroupSession<A>.State<A>(v3);
  outlined consume of GroupSession<A>.State<A>(v2);
  outlined consume of GroupSession<A>.State<A>(v3);
  return v4;
}

void (*GroupSession.activity.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  GroupSession.activity.getter();
  return GroupSession.activity.modify;
}

uint64_t GroupSession.$activity.getter()
{
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t GroupSession.$activity.setter(uint64_t a1)
{
  specialized GroupSession.$activity.setter(a1);
  v2 = type metadata accessor for Published.Publisher();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*GroupSession.$activity.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  GroupSession.$activity.getter();
  return GroupSession.$activity.modify;
}

uint64_t GroupSession.activeParticipants.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for GroupSession.activeParticipants : <A>GroupSession<A>@<X0>(uint64_t *a1@<X8>)
{
  result = GroupSession.activeParticipants.getter();
  *a1 = result;
  return result;
}

void GroupSession.activeParticipants.setter(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  GroupSession.activeParticipants.didset();
}

void GroupSession.activeParticipants.didset()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.default);
  swift_retain_n();
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v12 = v3;
    *v2 = 136315394;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v12);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2080;
    GroupSession.activeParticipants.getter();

    type metadata accessor for Participant(0);
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant, &protocol conformance descriptor for Participant);
    v7 = Set.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v12);

    *(v2 + 14) = v10;
    _os_log_impl(&dword_1AEE80000, oslog, v1, "Did set new active participants on group session %s: %s", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v3, -1, -1);
    MEMORY[0x1B2715BA0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t GroupSession.$activeParticipants.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for GroupSession.$activeParticipants : <A>GroupSession<A>(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return GroupSession.$activeParticipants.setter(v4);
}

uint64_t GroupSession.$activeParticipants.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t GroupSession.sceneSessionIdentifier.getter()
{
  v1 = (v0 + *(*v0 + 232));
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t GroupSession.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 240);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupSession.timestamps.getter@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(*v2 + 240);
  v5 = type metadata accessor for GroupSession.Timestamps(0, *(*v2 + 80), *(*v2 + 88), a1);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t property wrapper backing initializer of GroupSession.messageQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for GroupSession.MessageQueue(0, a2, a3, a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  (*(v6 + 16))(&v10 - v7, a1, v5);
  Published.init(wrappedValue:)(v8, v5);
  return (*(v6 + 8))(a1, v5);
}

uint64_t GroupSession.$messageQueue.getter()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for GroupSession.MessageQueue(255, *(v1 + 80), *(v1 + 88), v2);
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

id GroupSession.remoteEndpoint.getter()
{
  v1 = *(*v0 + 256);
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void GroupSession.remoteEndpoint.setter(uint64_t a1)
{
  v3 = *(*v1 + 256);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t GroupSession.isFirstJoin.getter()
{
  v1 = *(*v0 + 280);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.isFirstJoin.setter(char a1)
{
  v3 = *(*v1 + 280);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id GroupSession.connection.getter()
{
  v1 = *(*v0 + 288);
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void GroupSession.connection.setter(uint64_t a1)
{
  v3 = *(*v1 + 288);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *GroupSession.publishQueue.getter()
{
  v1 = *(*v0 + 304);
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void GroupSession.publishQueue.setter(uint64_t a1)
{
  v3 = *(*v1 + 304);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t GroupSession.capabilities.getter()
{
  v1 = *(*v0 + 368);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t GroupSession.capabilities.setter(uint64_t a1)
{
  v3 = *(*v1 + 368);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return GroupSession.capabilities.didset(v4);
}

uint64_t specialized GroupSession.capabilities.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + *(*v2 + 296));
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v10 = *(*v2 + 368);
  result = swift_beginAccess();
  if (*(v2 + v10) == a1)
  {
    return result;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v2 + v10);

    _os_log_impl(&dword_1AEE80000, v13, v14, "Updating capabilities to %ld", v15, 0xCu);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  else
  {
  }

  v16 = *(*v2 + 288);
  swift_beginAccess();
  v17 = *(v2 + v16);
  v18 = XPCClient.queue.getter();

  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for specialized closure #1 in GroupSession.capabilities.didset;
  *(v19 + 24) = v2;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_556;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v18, v20);

  _Block_release(v20);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  return result;
}

uint64_t GroupSession.capabilities.didset(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + *(*v2 + 296));
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v10 = *(*v2 + 368);
  result = swift_beginAccess();
  if (*(v2 + v10) == a1)
  {
    return result;
  }

  if (one-time initialization token for default != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v2 + v10);

    _os_log_impl(&dword_1AEE80000, v13, v14, "Updating capabilities to %ld", v15, 0xCu);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  else
  {
  }

  v16 = *(*v2 + 288);
  swift_beginAccess();
  v17 = *(v2 + v16);
  v18 = XPCClient.queue.getter();

  v19 = swift_allocObject();
  *(v19 + 16) = partial apply for specialized closure #1 in GroupSession.capabilities.didset;
  *(v19 + 24) = v2;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_689;
  v20 = _Block_copy(aBlock);

  dispatch_sync(v18, v20);

  _Block_release(v20);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  return result;
}

void (*GroupSession.capabilities.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(*v1 + 368);
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return GroupSession.capabilities.modify;
}

void GroupSession.capabilities.modify(uint64_t a1)
{
  v1 = *a1;
  GroupSession.capabilities.setter(*(*a1 + 24));

  free(v1);
}

uint64_t GroupSession.internalActiveParticipants.getter()
{
  v1 = v0 + *(*v0 + 384);
  os_unfair_lock_lock(v1);
  v2 = *(v1 + 8);

  os_unfair_lock_unlock(v1);
  return v2;
}

void GroupSession.updateInternalActiveParticipants(_:)(void (*a1)(uint64_t *))
{
  v2 = v1;
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v48 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(*v2 + 384);
  os_unfair_lock_lock(v9);
  aBlock = *(v9 + 8);

  a1(&aBlock);
  v10 = aBlock;
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZs6UInt64V_15GroupActivities19InternalParticipantVTt1g5(*(v9 + 8), aBlock))
  {

    os_unfair_lock_unlock(v9);
  }

  else
  {

    *(v9 + 8) = v10;

    os_unfair_lock_unlock(v9);
    if (v10)
    {
      v43 = v7;
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.default);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();

      v14 = os_log_type_enabled(v12, v13);
      v44 = v6;
      v45 = v5;
      if (v14)
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        aBlock = v16;
        *v15 = 136315394;
        type metadata accessor for UUID();
        lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v17 = dispatch thunk of CustomStringConvertible.description.getter();
        v19 = v18;

        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &aBlock);

        *(v15 + 4) = v20;
        *(v15 + 12) = 2080;
        type metadata accessor for InternalParticipant(0);
        v21 = Dictionary.description.getter();
        v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &aBlock);

        *(v15 + 14) = v23;
        _os_log_impl(&dword_1AEE80000, v12, v13, "Updated internal active participants for group session %s: %s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v16, -1, -1);
        MEMORY[0x1B2715BA0](v15, -1, -1);
      }

      else
      {
      }

      v24 = *(*v2 + 304);
      swift_beginAccess();
      v25 = *(v2 + v24);
      if (v25)
      {
        v46 = v25;
      }

      else
      {
        v46 = *(v2 + *(*v2 + 296));
      }

      v26 = v25;
      active = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVys6UInt64V15GroupActivities19InternalParticipantV_G_AJ0I0Vs5NeverOTg504_s15f29Activities0A7SessionC32updateh26ActiveParticipantsyyySDys6e7VAA0E11I67VGzXEFAA0I0VAHcfu2_33_64ff5b9e04bfd4295e50d2b41d46dfcaAhKTf3nnnpk_nTf1cn_n(v10);

      aBlock = active;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11ParticipantVGMd, &_sSay15GroupActivities11ParticipantVGMR);
      v28 = MEMORY[0x1E69E6328];
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [Participant] and conformance [A], &_sSay15GroupActivities11ParticipantVGMd, &_sSay15GroupActivities11ParticipantVGMR, MEMORY[0x1E69E6328]);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant, &protocol conformance descriptor for Participant);
      v29 = Sequence<>.asSet()();

      v30 = swift_allocObject();
      *(v30 + 16) = v2;
      *(v30 + 24) = v29;
      v55 = partial apply for closure #2 in GroupSession.updateInternalActiveParticipants(_:);
      v56 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v42 = &v53;
      v53 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v54 = &block_descriptor_0;
      v31 = _Block_copy(&aBlock);

      v32 = v48;
      static DispatchQoS.unspecified.getter();
      v50 = MEMORY[0x1E69E7CC0];
      v40[1] = lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      v40[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v40[2] = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, v28);
      v33 = v45;
      v34 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1B27147B0](0, v32, v33, v31);
      _Block_release(v31);
      v35 = *(v49 + 8);
      v49 += 8;
      v41 = v35;
      v35(v33, v34);
      v36 = v44;
      v37 = *(v43 + 8);
      v37(v32, v44);

      v43 = *(v2 + *(*v2 + 296));
      v38 = swift_allocObject();
      *(v38 + 16) = v2;
      *(v38 + 24) = v10;
      v55 = partial apply for closure #3 in GroupSession.updateInternalActiveParticipants(_:);
      v56 = v38;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v54 = &block_descriptor_28;
      v39 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v50 = MEMORY[0x1E69E7CC0];
      dispatch thunk of SetAlgebra.init<A>(_:)();
      MEMORY[0x1B27147B0](0, v32, v33, v39);
      _Block_release(v39);

      v41(v33, v34);
      v37(v32, v36);
    }
  }
}

void closure #2 in GroupSession.updateInternalActiveParticipants(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315394;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v15);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    type metadata accessor for Participant(0);
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type Participant and conformance Participant, type metadata accessor for Participant, &protocol conformance descriptor for Participant);
    v11 = Set.description.getter();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Publishing new active participants for group session %s: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  else
  {
  }

  GroupSession.activeParticipants.setter(v14);
}

uint64_t GroupSession.internalActiveParticipantsPublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type CurrentValueSubject<[UInt64 : InternalParticipant], Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR, MEMORY[0x1E695BFB0]);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t key path getter for GroupSession.internalState : <A>GroupSession<A>@<X0>(void *a1@<X8>)
{
  result = GroupSession.internalState.getter();
  *a1 = v3;
  return result;
}

uint64_t key path setter for GroupSession.state : <A>GroupSession<A>(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v7 = *a1;
  outlined copy of GroupSession<A>.State<A>(v7);
  return a5(&v7);
}

void GroupSession.internalState.setter(void **a1)
{
  v2 = *a1;
  v1 = v2;
  GroupSession.internalState.willset(&v2);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  static Published.subscript.setter();
  GroupSession.updatePublicState()();
}

void specialized GroupSession.internalState.willset(void *a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  outlined copy of GroupSession<A>.State<A>(a1);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined consume of GroupSession<A>.State<A>(a1);
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315394;
    v6 = specialized GroupSession.description.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v14);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2080;
    outlined copy of GroupSession<A>.State<A>(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC5StateOyAA03AnyA8ActivityV_GMR);
    v10 = String.init<A>(reflecting:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v4 + 14) = v12;
    _os_log_impl(&dword_1AEE80000, oslog, v3, "%s changing internal state: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  else
  {
  }
}

void GroupSession.internalState.willset(void **a1)
{
  v2 = *v1;
  v3 = *a1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);

  outlined copy of GroupSession<A>.State<A>(v3);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined consume of GroupSession<A>.State<A>(v3);
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    v8 = GroupSession.description.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v20);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v19 = v3;
    outlined copy of GroupSession<A>.State<A>(v3);
    v13 = type metadata accessor for GroupSession.State(0, *(v2 + 80), *(v2 + 88), v12);
    v14 = >> prefix<A>(_:)(&v19, v13);
    v16 = v15;
    outlined consume of GroupSession<A>.State?<A>(v19);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v20);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, oslog, v5, "%s changing internal state: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v7, -1, -1);
    MEMORY[0x1B2715BA0](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t specialized GroupSession.updatePublicState()(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v2 + 304);
  swift_beginAccess();
  v12 = *(v2 + v11);
  if (v12)
  {
    v13 = *(v2 + v11);
  }

  else
  {
    v13 = *(v2 + *(*v2 + 296));
  }

  aBlock[4] = a1;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);
  v15 = v12;

  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v10, v7, v14);
  _Block_release(v14);

  (*(v18 + 8))(v7, v5);
  (*(v8 + 8))(v10, v17);
}

void (*GroupSession.internalState.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  GroupSession.internalState.getter();
  return GroupSession.internalState.modify;
}

void GroupSession.internalState.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *a1;
    outlined copy of GroupSession<A>.State<A>(v2);
    GroupSession.internalState.setter(&v3);

    outlined consume of GroupSession<A>.State<A>(v2);
  }

  else
  {
    v3 = *a1;
    GroupSession.internalState.setter(&v3);
  }
}

uint64_t GroupSession.$internalState.getter()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for GroupSession.State(255, *(v1 + 80), *(v1 + 88), v2);
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t GroupSession.$internalState.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  specialized GroupSession.$internalState.setter(a1, a2, a3, a4);
  type metadata accessor for GroupSession.State(255, *(v6 + 80), *(v6 + 88), v7);
  v8 = type metadata accessor for Published.Publisher();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*GroupSession.$internalState.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v6 = v4;
  *a1 = v4;
  *v4 = v1;
  type metadata accessor for GroupSession.State(255, *(*v1 + 80), *(*v1 + 88), v5);
  v7 = type metadata accessor for Published.Publisher();
  v6[1] = v7;
  v8 = *(v7 - 8);
  v6[2] = v8;
  v9 = *(v8 + 64);
  if (v3)
  {
    v6[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v6[4] = v10;
  GroupSession.$internalState.getter();
  return GroupSession.$internalState.modify;
}

void GroupSession.activity.modify(uint64_t a1, char a2, void (*a3)(void *))
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

BOOL GroupSession.isInvalid.getter()
{
  GroupSession.internalState.getter();
  outlined consume of GroupSession<A>.State<A>(v1);
  return v1 > 1;
}

uint64_t GroupSession.__allocating_init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, __int16 a9, uint64_t a10, unsigned __int8 a11, void *a12, uint64_t a13, void *a14, uint64_t a15, char *a16, uint64_t a17, void *a18, uint64_t a19, __int16 a20)
{
  v21 = swift_allocObject();
  GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, HIBYTE(a9), a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, HIBYTE(a20));
  return v21;
}

char *GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12, void *a13, uint64_t a14, void *a15, uint64_t a16, char *a17, uint64_t a18, void *a19, uint64_t a20, unsigned __int8 a21, unsigned __int8 a22)
{
  v23 = v22;
  v451 = a8;
  v449 = a7;
  v450 = a6;
  v481 = a5;
  v492 = a4;
  v485 = a3;
  v477 = a2;
  v487 = a1;
  v490 = a18;
  v472 = a15;
  v476 = a11;
  v24 = *v22;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v414 = *(v415 - 8);
  MEMORY[0x1EEE9AC00](v415);
  v413 = &v395 - v25;
  v26 = *(v24 + 80);
  v494 = *(v24 + 88);
  v27 = v494;
  type metadata accessor for GroupSession.State(255, v26, v494, v28);
  v412 = type metadata accessor for Published.Publisher();
  v411 = *(v412 - 8);
  MEMORY[0x1EEE9AC00](v412);
  v410 = &v395 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v397 = &v395 - v31;
  v33 = type metadata accessor for GroupSession.MessageQueue(255, v26, v27, v32);
  v421 = type metadata accessor for Published.Publisher();
  v409 = *(v421 - 8);
  MEMORY[0x1EEE9AC00](v421);
  v420 = &v395 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR);
  v406 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v403 = &v395 - v36;
  v37 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<PubSubTopic.QueueState>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMd, &_s7Combine9PublishedV9PublisherVy14CopresenceCore11PubSubTopicC10QueueStateV_GMR, MEMORY[0x1E695C068]);
  v407 = v35;
  v401 = v37;
  v405 = type metadata accessor for Publishers.Map();
  v404 = *(v405 - 8);
  MEMORY[0x1EEE9AC00](v405);
  v402 = &v395 - v38;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMR);
  v416 = *(v422 - 8);
  v39 = MEMORY[0x1EEE9AC00](v422);
  v396 = &v395 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v463 = &v395 - v41;
  v400 = type metadata accessor for SharePlayLatencyLogger.Event();
  v399 = *(v400 - 8);
  MEMORY[0x1EEE9AC00](v400);
  v398 = &v395 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v470 = type metadata accessor for Published.Publisher();
  v480 = *(v470 - 8);
  MEMORY[0x1EEE9AC00](v470);
  v469 = &v395 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v462 = &v395 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMR);
  v47 = lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<TUConversationActivity, Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMd, &_s7Combine18PassthroughSubjectCySo22TUConversationActivityCs5NeverOGMR, MEMORY[0x1E695BF88]);
  v453 = v46;
  v452 = v47;
  v48 = type metadata accessor for Publishers.CompactMap();
  v460 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v459 = &v395 - v49;
  v50 = type metadata accessor for OS_dispatch_queue(255, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  WitnessTable = swift_getWitnessTable();
  v52 = lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v461 = v48;
  v497 = v48;
  v498 = v50;
  v473 = v50;
  v455 = WitnessTable;
  v499 = WitnessTable;
  v500 = v52;
  v454 = v52;
  v458 = type metadata accessor for Publishers.ReceiveOn();
  v457 = *(v458 - 8);
  MEMORY[0x1EEE9AC00](v458);
  v456 = &v395 - v53;
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMR);
  v447 = *(v448 - 1);
  MEMORY[0x1EEE9AC00](v448);
  v446 = &v395 - v54;
  v445 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v444 = *(v445 - 8);
  MEMORY[0x1EEE9AC00](v445);
  v443 = &v395 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v441 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v441);
  v442 = &v395 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v57 - 8);
  v440 = &v395 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v425 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR);
  v424 = *(v425 - 8);
  MEMORY[0x1EEE9AC00](v425);
  v423 = &v395 - v59;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR);
  v418 = *(v419 - 8);
  MEMORY[0x1EEE9AC00](v419);
  v417 = &v395 - v60;
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMd, &_s14CopresenceCore14CurrentSubjectVySay15GroupActivities11LinkManagerC10AttachmentVGGMR);
  v464 = *(v465 - 8);
  MEMORY[0x1EEE9AC00](v465);
  v435 = &v395 - v61;
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMd, &_s14CopresenceCore14CurrentSubjectVy15GroupActivities21AttachmentLedgerTopicCSgGMR);
  v433 = *(v434 - 8);
  MEMORY[0x1EEE9AC00](v434);
  v432 = &v395 - v62;
  v493 = type metadata accessor for UUID();
  v491 = *(v493 - 8);
  v63 = MEMORY[0x1EEE9AC00](v493);
  v468 = &v395 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v489 = &v395 - v66;
  v467 = v67;
  v68 = MEMORY[0x1EEE9AC00](v65);
  v488 = &v395 - v69;
  v475 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v484 = &v395 - v70;
  v471 = type metadata accessor for Participant(0);
  v436 = *(v471 - 8);
  v71 = MEMORY[0x1EEE9AC00](v471);
  v483 = &v395 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v479 = &v395 - v74;
  v466 = v75;
  MEMORY[0x1EEE9AC00](v73);
  v482 = &v395 - v76;
  v437 = type metadata accessor for Published();
  v431 = *(v437 - 1);
  MEMORY[0x1EEE9AC00](v437);
  v430 = &v395 - v77;
  v78 = type metadata accessor for PubSubTopic.QueueState();
  v79 = MEMORY[0x1EEE9AC00](v78 - 8);
  v429 = &v395 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v408 = v33;
  MEMORY[0x1EEE9AC00](v79);
  v428 = &v395 - v81;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  v82 = *(v438 - 8);
  MEMORY[0x1EEE9AC00](v438);
  v84 = &v395 - v83;
  v85 = type metadata accessor for Published();
  v86 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v395 - v87;
  *&v23[direct field offset for GroupSession.playbackSyncerLink] = 0;
  *&v23[direct field offset for GroupSession.playbackSyncMessenger] = 0;
  *&v23[direct field offset for GroupSession.attachmentDownloadBytes] = 0;
  *&v23[direct field offset for GroupSession.attachmentUploadBytes] = 0;
  *&v23[direct field offset for GroupSession.attachmentDownloadTime] = 0;
  *&v23[direct field offset for GroupSession.attachmentUploadTime] = 0;
  v89 = &v23[direct field offset for GroupSession.receivedDataHandler];
  *v89 = 0;
  *(v89 + 1) = 0;
  v90 = &v23[direct field offset for GroupSession._receivedDataPublisher];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4DataV_15GroupActivities11ParticipantVAG15SendReliabilityOts5NeverOGMR);
  swift_allocObject();
  *v90 = PassthroughSubject.init()();
  v90[1] = 0;
  v91 = &v23[direct field offset for GroupSession._receivedAttachmentPublisher];
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  swift_allocObject();
  *v91 = PassthroughSubject.init()();
  v91[1] = 0;
  v92 = &v23[direct field offset for GroupSession._catchupNeededPublisher];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMd, &_s7Combine18PassthroughSubjectCy15GroupActivities11ParticipantVs5NeverOGMR);
  swift_allocObject();
  *v92 = PassthroughSubject.init()();
  v92[1] = 0;
  v93 = *(*v23 + 208);
  v497 = 0;
  v94 = v494;
  v427 = type metadata accessor for GroupSession.State(0, v26, v494, v95);
  Published.init(wrappedValue:)(&v497, v427);
  v96 = *(v86 + 32);
  v478 = v85;
  v474 = (v86 + 32);
  v426 = v96;
  v96(&v23[v93], v88, v85);
  v97 = *(*v23 + 224);
  v98 = MEMORY[0x1E69E7CD0];
  v497 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
  Published.init(initialValue:)();
  v99 = &v23[v97];
  v100 = v471;
  (*(v82 + 32))(v99, v84, v438);
  v101 = v490;
  v102 = &v23[*(*v23 + 232)];
  *v102 = 0;
  *(v102 + 1) = 0;
  v438 = v102;
  v103 = *(*v23 + 248);
  v104 = v429;
  PubSubTopic.QueueState.init()();
  v105 = v428;
  GroupSession.MessageQueue.init(queueState:)(v104, v428);
  v106 = v430;
  property wrapper backing initializer of GroupSession.messageQueue(v105, v26, v94, v107);
  (*(v431 + 32))(&v23[v103], v106, v437);
  v437 = &v23[*(*v23 + 304)];
  *v437 = 0;
  v108 = v482;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v98 = v394;
    }

    v101 = v490;
    v108 = v482;
  }

  *&v23[*(*v23 + 312)] = v98;
  *&v23[*(*v23 + 328)] = 0;
  v109 = *(*v23 + 336);
  v110 = type metadata accessor for SharePlayLatencyLogger.Interval();
  (*(*(v110 - 8) + 56))(&v23[v109], 1, 1, v110);
  *&v23[*(*v23 + 344)] = 0;
  *&v23[*(*v23 + 368)] = 0;
  *&v23[*(*v23 + 376)] = 0;
  v111 = &v23[*(*v23 + 384)];
  v112 = MEMORY[0x1E69E7CC0];
  v113 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities19InternalParticipantVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *v111 = 0;
  *(v111 + 1) = v113;
  v114 = *(*v23 + 392);
  v497 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities19InternalParticipantVTt0g5Tf4g_n(v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySDys6UInt64V15GroupActivities19InternalParticipantVGs5NeverOGMR);
  swift_allocObject();
  *&v23[v114] = CurrentValueSubject.init(_:)();
  v115 = *(*v23 + 400);
  v497 = 0;
  Published.init(wrappedValue:)(&v497, v427);
  v426(&v23[v115], v88, v478);
  v116 = &v23[*(*v23 + 416)];
  *v116 = 0;
  *(v116 + 1) = 0;
  *&v23[*(*v23 + 424)] = 0;
  v117 = v491 + 16;
  v118 = *(v491 + 16);
  v119 = v487;
  (v118)(&v23[direct field offset for GroupSession.id], v487, v493);
  UUID.init()();
  v120 = (v108 + v100[5]);
  v121 = v492;
  *v120 = v485;
  v120[1] = v121;
  *(v108 + v100[6]) = 0;
  *(v108 + v100[8]) = 0;
  v122 = (v108 + v100[7]);
  *v122 = 0;
  v122[1] = 0;
  *(v108 + v100[9]) = 0;
  outlined init with take of Participant(v108, &v23[direct field offset for GroupSession.initiator], type metadata accessor for Participant);
  v123 = v484;
  (*(v475 + 16))(v484, v481, v26);
  swift_beginAccess();
  v486 = v26;
  property wrapper backing initializer of GroupSession.activity(v123, v26);
  swift_endAccess();
  *&v23[direct field offset for GroupSession.topicManager] = v101;

  v124 = UUID.uuidString.getter();
  v125 = v477;
  v492 = (*(*v101 + 248))(v477, v124, v126);

  v127 = [*(v101 + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) nearbyFaceTimeEnabled];
  v128 = v119;
  v485 = v117;
  v484 = v118;
  LODWORD(v428) = v127;
  if (v127)
  {
    v129 = v100;
    v130 = v100[6];
    v131 = *(v476 + v130);
    v132 = (v476 + v100[5]);
    v133 = *v132;
    v134 = v132[1];
    v135 = (v476 + v100[7]);
    v137 = *v135;
    v136 = v135[1];
    v138 = v479;
    *(v479 + v130) = v131;

    UUID.init(_:)(v131);
    v139 = (v138 + v129[5]);
    *v139 = v133;
    v139[1] = v134;
    v118 = v484;
    v140 = (v138 + v129[7]);
    *v140 = v137;
    v140[1] = v136;
    *(v138 + v129[8]) = 1;
    *(v138 + v129[9]) = 0;
  }

  else
  {
    v138 = v479;
    outlined init with copy of Participant(v476, v479, type metadata accessor for Participant);
  }

  v141 = v489;
  v478 = a20;
  v474 = a19;
  v142 = v493;
  (v118)(v488, v128, v493);
  (v118)(v141, v125, v142);
  outlined init with copy of Participant(v138, v483, type metadata accessor for Participant);
  v143 = objc_allocWithZone(MEMORY[0x1E6997708]);

  v144 = v472;
  v145 = [v143 init];
  v146 = type metadata accessor for LinkManager(0);
  v147 = objc_allocWithZone(v146);
  v148 = OBJC_IVAR____TtC15GroupActivities11LinkManager_lock;
  *&v147[v148] = [objc_allocWithZone(MEMORY[0x1E696AE68]) init];
  *&v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = 0;
  v149 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachmentLedgerTopic;
  v497 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities21AttachmentLedgerTopicCSgMd, &_s15GroupActivities21AttachmentLedgerTopicCSgMR);
  v150 = v432;
  CurrentSubject.init(wrappedValue:)();
  (*(v433 + 32))(&v147[v149], v150, v434);
  *&v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_pendingLocalAttachments] = MEMORY[0x1E69E7CC8];
  v151 = OBJC_IVAR____TtC15GroupActivities11LinkManager__attachments;
  v152 = MEMORY[0x1E69E7CC0];
  v497 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities11LinkManagerC10AttachmentVGMd, &_sSay15GroupActivities11LinkManagerC10AttachmentVGMR);
  v153 = v435;
  CurrentSubject.init(wrappedValue:)();
  (*(v464 + 32))(&v147[v151], v153, v465);
  if (v152 >> 62 && __CocoaSet.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v154 = MEMORY[0x1E69E7CD0];
  }

  v155 = v492;
  v156 = v488;
  LODWORD(v464) = a22;
  LODWORD(v465) = a21;
  v435 = a17;
  v434 = a16;
  v433 = a14;
  v472 = a13;
  LODWORD(v432) = a12;
  LODWORD(v431) = a10;
  LODWORD(v430) = a9;
  *&v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_cancellables] = v154;
  v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_state] = 0;
  v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_hasConnectedOnce] = 0;
  v157 = &v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_receivedDataHandler];
  *v157 = 0;
  v157[1] = 0;
  v158 = &v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_onFirstConnectedHandler];
  *v158 = 0;
  v158[1] = 0;
  v159 = &v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_invalidationHandler];
  *v159 = 0;
  v159[1] = 0;
  v160 = &v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_requestEncryptionKeysHandler];
  *v160 = 0;
  v160[1] = 0;
  v161 = v493;
  v162 = v484;
  (v484)(&v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier], v156, v493);
  (v162)(&v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v489, v161);
  *&v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_topic] = v155;
  v163 = v483;
  outlined init with copy of Participant(v483, &v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant], type metadata accessor for Participant);
  *&v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessengerConfig] = v144;
  *&v147[OBJC_IVAR____TtC15GroupActivities11LinkManager_featureFlags] = v145;
  v496.receiver = v147;
  v496.super_class = v146;

  v164 = v144;
  v165 = v145;
  v166 = objc_msgSendSuper2(&v496, sel_init);
  v167 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v168 = v482;
  outlined init with copy of Participant(v163, v482, type metadata accessor for Participant);
  v169 = v436[80];
  v170 = (v169 + 24) & ~v169;
  v429 = v169;
  v427 = v169 | 7;
  v171 = swift_allocObject();
  *(v171 + 16) = v167;
  outlined init with take of Participant(v168, v171 + v170, type metadata accessor for Participant);
  v172 = *(*v155 + 336);
  v173 = v166;

  v172(partial apply for closure #1 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:), v171);
  v174 = v492;

  v436 = v165;
  if ([v165 unreliableMessengerEnabled])
  {
    v175 = UUID.uuidString.getter();
    v177 = v176;
    v178 = *&v163[*(v471 + 24)];
    v179 = lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type LinkManager and conformance LinkManager, type metadata accessor for LinkManager, &protocol conformance descriptor for LinkManager);
    v180 = (*(*v490 + 256))(v489, v175, v177, v178, v164, v173, v179);

    v182 = v423;
    (*(*v174 + 448))(v181);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR, MEMORY[0x1E695C068]);
    v183 = v417;
    v184 = v425;
    Publisher.map<A>(_:)();
    (*(v424 + 8))(v182, v184);
    v185 = UnreliableMessenger.$activeReliableSubscribers.modify();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSayAKGGMR, MEMORY[0x1E695BD60]);
    v186 = v419;
    Publisher<>.assign(to:)();
    v187 = v183;
    v163 = v483;
    (*(v418 + 8))(v187, v186);
    v185(&v497, 0);
    *&v173[OBJC_IVAR____TtC15GroupActivities11LinkManager_unreliableMessenger] = v180;
  }

  v188 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v189 = *(*v174 + 360);

  v189(partial apply for closure #3 in LinkManager.init(identifier:groupUUID:topicManager:topic:localParticipant:unreliableMessengerConfig:featureFlags:), v188);

  v483 = v164;

  outlined destroy of Participant(v163, type metadata accessor for Participant);
  v190 = (v491 + 8);
  v191 = *(v491 + 8);
  v192 = v493;
  v191(v489, v493);
  v193 = v488;
  v488 = v190;
  v471 = v191;
  v191(v193, v192);

  *&v23[direct field offset for GroupSession.linkManager] = v173;
  v497 = 0;
  v498 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  v497 = 0xD000000000000025;
  v498 = 0x80000001AF01A5B0;
  MEMORY[0x1B27141F0](v449, v451);

  static DispatchQoS.unspecified.getter();
  v497 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v444 + 104))(v443, *MEMORY[0x1E69E8090], v445);
  *&v23[*(*v23 + 296)] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v194 = v437;
  swift_beginAccess();
  v195 = *v194;
  v196 = v472;
  *v194 = v472;
  v449 = v196;

  v197 = v450;
  *&v23[*(*v23 + 256)] = v450;
  v198 = *(*v23 + 240);
  v199 = v486;
  v200 = v494;
  v202 = type metadata accessor for GroupSession.Timestamps(0, v486, v494, v201);
  v451 = *(v202 - 8);
  v203 = *(v451 + 16);
  v489 = v202;
  v203(&v23[v198], v478);
  v23[*(*v23 + 264)] = v430 & 1;
  v23[*(*v23 + 272)] = v431 & 1;
  v23[*(*v23 + 280)] = v432 & 1;
  *&v23[*(*v23 + 408)] = v433;
  v204 = v438;
  swift_beginAccess();
  v205 = v435;
  *v204 = v434;
  v204[1] = v205;
  v206 = v197;

  outlined init with copy of Transferable(v474, &v23[*(*v23 + 320)]);
  v23[*(*v23 + 352)] = v465 & 1;
  v23[*(*v23 + 360)] = v464 & 1;
  type metadata accessor for ActivitySessionClientConnection();
  v450 = v206;
  v207 = XPCClient.__allocating_init(listenerEndpoint:)();
  v208 = &v23[*(*v23 + 288)];
  *v208 = v207;
  v209 = direct field offset for GroupSession._receivedAttachmentPublisher;
  swift_beginAccess();
  v497 = *&v23[v209];
  v210 = swift_allocObject();
  swift_weakInit();
  v211 = swift_allocObject();
  v211[2] = v199;
  v211[3] = v200;
  v211[4] = v210;
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(UUID, URL, Participant), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR, MEMORY[0x1E695BF88]);

  v212 = v446;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();

  v213 = v200;

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<PassthroughSubject<(UUID, URL, Participant), Never>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMd, &_s7Combine10PublishersO12HandleEventsVy_AA18PassthroughSubjectCy10Foundation4UUIDV_AH3URLV15GroupActivities11ParticipantVts5NeverOGGMR, MEMORY[0x1E695BCC0]);
  v214 = v448;
  v215 = Publisher.eraseToAnyPublisher()();
  (*(v447 + 8))(v212, v214);
  v216 = &v23[direct field offset for GroupSession._receivedAttachmentPublisher];
  swift_beginAccess();
  *(v216 + 1) = v215;

  swift_beginAccess();
  v217 = *v208;
  v218 = swift_allocObject();
  swift_weakInit();
  v219 = swift_allocObject();
  v219[2] = v199;
  v219[3] = v213;
  v219[4] = v218;
  v220 = v217;

  ActivitySessionClientConnection.serverDisconnectedCallback.setter();

  v221 = *v208;
  v222 = swift_allocObject();
  swift_weakInit();
  v223 = swift_allocObject();
  v223[2] = v199;
  v223[3] = v213;
  v223[4] = v222;
  v224 = v221;

  ActivitySessionClientConnection.setAssociatedSceneCallback.setter();

  v225 = *v208;
  v226 = swift_allocObject();
  swift_weakInit();
  v227 = swift_allocObject();
  v227[2] = v199;
  v227[3] = v213;
  v227[4] = v226;
  v228 = v225;

  ActivitySessionClientConnection.setExternalParticipantsCallback.setter();

  v229 = *v208;
  v230 = swift_allocObject();
  swift_weakInit();
  v231 = swift_allocObject();
  v231[2] = v199;
  v231[3] = v213;
  v231[4] = v230;
  v232 = v229;

  ActivitySessionClientConnection.setStateCallback.setter();

  v233 = *v208;
  v234 = swift_allocObject();
  swift_weakInit();
  v235 = swift_allocObject();
  v235[2] = v199;
  v235[3] = v213;
  v235[4] = v234;
  v236 = v233;

  ActivitySessionClientConnection.setDataCryptorCallback.setter();

  v237 = *v208;
  v238 = swift_allocObject();
  swift_weakInit();
  v239 = swift_allocObject();
  v239[2] = v199;
  v239[3] = v213;
  v239[4] = v238;
  v240 = v237;

  ActivitySessionClientConnection.receivedResourceCallback.setter();

  v448 = v208;
  v241 = *v208;
  v242 = ActivitySessionClientConnection.setActivityPublisher.getter();

  v495 = v242;
  v243 = swift_allocObject();
  *(v243 + 16) = v199;
  *(v243 + 24) = v213;
  v244 = v459;
  Publisher.compactMap<A>(_:)();
  v245 = v449;

  v246 = v245;
  if (!v472)
  {
    v246 = *&v23[*(*v23 + 296)];
  }

  v495 = v246;
  v247 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v248 = v462;
  (*(*(v247 - 8) + 56))(v462, 1, 1, v247);
  v472 = v245;
  v249 = v456;
  v250 = v461;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v248, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v460 + 8))(v244, v250);
  v251 = v469;
  GroupSession.$activity.getter();
  v252 = v458;
  swift_getWitnessTable();
  Publisher<>.assign(to:)();
  (*(v457 + 8))(v249, v252);
  specialized GroupSession.$activity.setter(v251);
  v253 = *(v480 + 8);
  v480 += 8;
  v462 = v253;
  (v253)(v251, v470);
  v473 = direct field offset for GroupSession.linkManager;
  v254 = *&v23[direct field offset for GroupSession.linkManager];
  v255 = swift_allocObject();
  swift_weakInit();
  v256 = v468;
  v257 = v493;
  (v484)(v468, v487, v493);
  v258 = v491;
  v259 = (*(v491 + 80) + 32) & ~*(v491 + 80);
  v260 = (v467 + v259 + 7) & 0xFFFFFFFFFFFFFFF8;
  v460 = *(v491 + 80);
  v261 = swift_allocObject();
  v262 = v494;
  *(v261 + 16) = v199;
  *(v261 + 24) = v262;
  v263 = *(v258 + 32);
  v491 = v258 + 32;
  v461 = v263;
  v263(v261 + v259, v256, v257);
  *(v261 + v260) = v255;
  v264 = MEMORY[0x1E69E7D40];
  v265 = *((*MEMORY[0x1E69E7D40] & *v254) + 0x1B8);

  v265(partial apply for closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v261);

  v266 = v473;
  v267 = *&v23[v473];
  v268 = swift_allocObject();
  swift_weakInit();
  v269 = swift_allocObject();
  v270 = v486;
  v271 = v494;
  v269[2] = v486;
  v269[3] = v271;
  v269[4] = v268;
  v272 = *((*v264 & *v267) + 0x1D0);
  v273 = v267;

  v272(partial apply for closure #10 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v269);

  v274 = *&v23[v266];
  v275 = swift_allocObject();
  swift_weakInit();
  v276 = swift_allocObject();
  v277 = v494;
  v276[2] = v270;
  v276[3] = v277;
  v276[4] = v275;
  v278 = *((*MEMORY[0x1E69E7D40] & *v274) + 0x200);
  v279 = v274;

  v278(partial apply for closure #11 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v276);

  v280 = *&v23[v266];
  v281 = v266;
  v282 = swift_allocObject();
  swift_weakInit();
  v283 = swift_allocObject();
  v284 = v494;
  v283[2] = v270;
  v283[3] = v284;
  v283[4] = v282;
  v285 = *((*MEMORY[0x1E69E7D40] & *v280) + 0x1E8);
  v286 = v280;

  v285(partial apply for closure #12 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v283);
  v287 = v494;

  v288 = *&v23[v281];
  v289 = swift_allocObject();
  swift_weakInit();
  v290 = swift_allocObject();
  v290[2] = v270;
  v290[3] = v287;
  v291 = v270;
  v290[4] = v289;
  v292 = *((*MEMORY[0x1E69E7D40] & *v288) + 0x218);
  v293 = v288;

  v292(partial apply for closure #13 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v290);

  v294 = swift_allocObject();
  swift_weakInit();
  v295 = swift_allocObject();
  v296 = v492;
  v295[2] = v291;
  v295[3] = v287;
  v295[4] = v294;
  v297 = *(*v296 + 528);

  v297(partial apply for closure #14 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v295);

  v298 = swift_allocObject();
  swift_weakInit();
  v299 = swift_allocObject();
  v299[2] = v291;
  v299[3] = v287;
  v299[4] = v298;
  v300 = *(*v296 + 552);

  v300(partial apply for closure #15 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v299);

  type metadata accessor for AnyGroupActivity(0);
  if (swift_dynamicCastMetatype())
  {

    (*(v451 + 8))(v478, v489);
    __swift_destroy_boxed_opaque_existential_0(v474);
    outlined destroy of Participant(v476, type metadata accessor for Participant);
    (*(v475 + 8))(v481, v291);
    v301 = v493;
    v302 = v471;
    (v471)(v477, v493);
    v302(v487, v301);
  }

  else
  {
    v459 = ~v429;
    v303 = v460;
    v473 = ~v460;
    v304 = v399;
    v305 = v398;
    v306 = v400;
    (*(v399 + 104))(v398, *MEMORY[0x1E6997548], v400);
    static SharePlayLatencyLogger.logInterval<A>(for:activity:localStartTime:)(v305, v481, v478 + *(v489 + 9), v291, v287);
    (*(v304 + 8))(v305, v306);
    v307 = *v448;
    v308 = swift_allocObject();
    swift_weakInit();
    v309 = swift_allocObject();
    v309[2] = v291;
    v309[3] = v287;
    v309[4] = v308;
    v310 = v307;

    ActivitySessionClientConnection.setNearbyParticipantsCallback.setter();

    v312 = v423;
    (*(*v296 + 448))(v311);
    v313 = v482;
    outlined init with copy of Participant(v479, v482, type metadata accessor for Participant);
    v314 = v468;
    v315 = v493;
    (v484)(v468, v487, v493);
    v316 = (v429 + 17) & v459;
    v317 = (v316 + v466 + v303) & v473;
    v318 = swift_allocObject();
    LODWORD(v303) = v428;
    *(v318 + 16) = v428;
    outlined init with take of Participant(v313, v318 + v316, type metadata accessor for Participant);
    v461(v318 + v317, v314, v315);
    v319 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys6UInt64V15GroupActivities19InternalParticipantVGMd, &_sSDys6UInt64V15GroupActivities19InternalParticipantVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[UInt64 : PubSubTopic.Participant]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GMR, MEMORY[0x1E695C068]);
    v320 = v425;
    Publisher.map<A>(_:)();

    v321 = v312;
    v322 = v303;
    v323 = (*(v424 + 8))(v321, v320);
    v324 = v403;
    (*(*v296 + 496))(v323);
    v325 = swift_allocObject();
    v326 = v494;
    *(v325 + 16) = v486;
    *(v325 + 24) = v326;
    v327 = v402;
    v328 = v407;
    Publisher.map<A>(_:)();

    (*(v406 + 8))(v324, v328);
    v329 = v420;
    GroupSession.$messageQueue.getter();
    v330 = v405;
    swift_getWitnessTable();
    Publisher<>.assign(to:)();
    (*(v404 + 8))(v327, v330);
    specialized GroupSession.$messageQueue.setter(v329, v331, v332, v333);
    v491 = *(v409 + 8);
    (v491)(v329, v421);
    if (v464 & 1) != 0 && (v334 = *v448, v335 = ActivitySessionClientConnection.shouldTranslateParticipantIDs.getter(), v334, ((v322 | v335)))
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v485 = v319;
      v336 = type metadata accessor for Logger();
      __swift_project_value_buffer(v336, static Log.default);

      v337 = Logger.logObject.getter();
      v338 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v337, v338))
      {
        v339 = swift_slowAlloc();
        v340 = swift_slowAlloc();
        v495 = v340;
        *v339 = 136315138;
        v341 = GroupSession.description.getter();
        v343 = v342;

        v344 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v341, v343, &v495);

        *(v339 + 4) = v344;
        _os_log_impl(&dword_1AEE80000, v337, v338, "[Translation] Enabling participant translation for %s", v339, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v340);
        MEMORY[0x1B2715BA0](v340, -1, -1);
        MEMORY[0x1B2715BA0](v339, -1, -1);
      }

      else
      {
      }

      v358 = swift_allocObject();
      swift_weakInit();
      v359 = swift_allocObject();
      v360 = v486;
      v361 = v494;
      *(v359 + 16) = v486;
      *(v359 + 24) = v361;
      *(v359 + 32) = v358;
      *(v359 + 40) = v322;
      v362 = v396;
      v363 = v422;
      Publishers.Map.map<A>(_:)();

      v364 = swift_allocObject();
      swift_weakInit();

      v365 = swift_allocObject();
      v365[2] = v360;
      v365[3] = v361;
      v365[4] = v364;
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64 : InternalParticipant]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMR, MEMORY[0x1E695BD60]);
      v357 = Publisher<>.sink(receiveValue:)();

      (*(v416 + 8))(v362, v363);
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v345 = type metadata accessor for Logger();
      __swift_project_value_buffer(v345, static Log.default);

      v346 = Logger.logObject.getter();
      v347 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v346, v347))
      {
        v348 = swift_slowAlloc();
        v349 = swift_slowAlloc();
        v495 = v349;
        *v348 = 136315138;
        v350 = GroupSession.description.getter();
        v352 = v351;

        v353 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v350, v352, &v495);

        *(v348 + 4) = v353;
        _os_log_impl(&dword_1AEE80000, v346, v347, "[Translation] Skipping participant translation for %s", v348, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v349);
        MEMORY[0x1B2715BA0](v349, -1, -1);
        MEMORY[0x1B2715BA0](v348, -1, -1);
      }

      else
      {
      }

      v354 = swift_allocObject();
      swift_weakInit();

      v355 = swift_allocObject();
      v356 = v494;
      v355[2] = v486;
      v355[3] = v356;
      v355[4] = v354;
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<Published<[UInt64 : PubSubTopic.Participant]>.Publisher, [UInt64 : InternalParticipant]> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMd, &_s7Combine10PublishersO3MapVy_AA9PublishedV9PublisherVySDys6UInt64V14CopresenceCore11PubSubTopicC11ParticipantVG_GSDyAK15GroupActivities08InternalL0VGGMR, MEMORY[0x1E695BD60]);
      v357 = Publisher<>.sink(receiveValue:)();
    }

    *&v23[*(*v23 + 376)] = v357;

    v366 = v470;
    if (v465)
    {
      v367 = type metadata accessor for TaskPriority();
      v368 = v397;
      (*(*(v367 - 8) + 56))(v397, 1, 1, v367);
      type metadata accessor for MainActor();

      v369 = static MainActor.shared.getter();
      v370 = swift_allocObject();
      v371 = MEMORY[0x1E69E85E0];
      v370[2] = v369;
      v370[3] = v371;
      v370[4] = v23;
      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v368, &async function pointer to partial apply for closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v370);
    }

    v372 = v410;
    GroupSession.$state.getter();
    v373 = *(v411 + 8);
    v374 = v412;
    v373(v372, v412);
    v375 = v469;
    GroupSession.$activity.getter();
    (v462)(v375, v366);
    v376 = v413;
    GroupSession.$activeParticipants.getter();
    (*(v414 + 8))(v376, v415);
    v377 = v420;
    GroupSession.$messageQueue.getter();
    (v491)(v377, v421);
    GroupSession.$internalState.getter();
    v373(v372, v374);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v378 = type metadata accessor for Logger();
    __swift_project_value_buffer(v378, static Logger.client);

    v379 = Logger.logObject.getter();
    v380 = static os_log_type_t.default.getter();
    v381 = os_log_type_enabled(v379, v380);
    v382 = v487;
    v383 = v477;
    v384 = v486;
    if (v381)
    {
      v385 = swift_slowAlloc();
      v386 = swift_slowAlloc();
      v495 = v386;
      *v385 = 136315138;
      v387 = GroupSession.description.getter();
      v389 = v388;

      v390 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v387, v389, &v495);

      *(v385 + 4) = v390;
      _os_log_impl(&dword_1AEE80000, v379, v380, "Init GroupSession %s", v385, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v386);
      MEMORY[0x1B2715BA0](v386, -1, -1);
      MEMORY[0x1B2715BA0](v385, -1, -1);
    }

    else
    {
    }

    (*(v451 + 8))(v478, v489);
    __swift_destroy_boxed_opaque_existential_0(v474);
    outlined destroy of Participant(v476, type metadata accessor for Participant);
    (*(v475 + 8))(v481, v384);
    v391 = v493;
    v392 = v471;
    (v471)(v383, v493);
    v392(v382, v391);
    (*(v416 + 8))(v463, v422);
  }

  outlined destroy of Participant(v479, type metadata accessor for Participant);
  return v23;
}

uint64_t specialized closure #1 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + *(*result + 296));
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = partial apply for specialized closure #1 in closure #1 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    *(v5 + 24) = v4;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_549;
    v6 = _Block_copy(aBlock);

    dispatch_sync(v3, v6);

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #1 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + *(*result + 296));
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = partial apply for closure #1 in closure #1 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    *(v5 + 24) = v4;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_682;
    v6 = _Block_copy(aBlock);

    dispatch_sync(v3, v6);

    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized GroupSession.handleNewAttachmentSubscriber()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v33 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + *(*v1 + 296));
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (one-time initialization token for default == -1)
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
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1AEE80000, v16, v17, "Received new attachment subscriber", v18, 2u);
    MEMORY[0x1B2715BA0](v18, -1, -1);
  }

  v19 = *(*v1 + 368);
  swift_beginAccess();
  v20 = *(v1 + v19);
  *(v1 + v19) = v20 | 1;
  specialized GroupSession.capabilities.didset(v20);
  v21 = *(v1 + direct field offset for GroupSession.topicManager);
  v22 = *(v1 + direct field offset for GroupSession.linkManager);
  v23 = *(v3 + 16);
  v23(v8, &v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v2);
  v23(v6, &v22[OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier], v2);
  v24 = UUID.uuidString.getter();
  v26 = v25;
  v27 = *(v3 + 8);
  v27(v6, v2);
  (*(*v21 + 240))(v8, v24, v26);

  v27(v8, v2);
  v28 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x100);

  v28(v29);
  v30 = (v1 + direct field offset for GroupSession._receivedAttachmentPublisher);
  swift_beginAccess();
  v33[1] = *v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(UUID, URL, Participant), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR, MEMORY[0x1E695BF88]);
  v31 = Publisher.eraseToAnyPublisher()();

  v30[1] = v31;
}

Swift::Void __swiftcall GroupSession.handleNewAttachmentSubscriber()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v32 - v7;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + *(*v1 + 296));
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x1E69E8020], v9);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (one-time initialization token for default == -1)
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
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1AEE80000, v16, v17, "Received new attachment subscriber", v18, 2u);
    MEMORY[0x1B2715BA0](v18, -1, -1);
  }

  v19 = *(*v1 + 368);
  swift_beginAccess();
  GroupSession.capabilities.setter(*(v1 + v19) | 1);
  v20 = *(v1 + direct field offset for GroupSession.topicManager);
  v21 = *(v1 + direct field offset for GroupSession.linkManager);
  v22 = *(v3 + 16);
  v22(v8, &v21[OBJC_IVAR____TtC15GroupActivities11LinkManager_groupUUID], v2);
  v22(v6, &v21[OBJC_IVAR____TtC15GroupActivities11LinkManager_identifier], v2);
  v23 = UUID.uuidString.getter();
  v25 = v24;
  v26 = *(v3 + 8);
  v26(v6, v2);
  (*(*v20 + 240))(v8, v23, v25);

  v26(v8, v2);
  v27 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x100);

  v27(v28);
  v29 = direct field offset for GroupSession._receivedAttachmentPublisher;
  swift_beginAccess();
  v32[7] = *(v1 + v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type PassthroughSubject<(UUID, URL, Participant), Never> and conformance PassthroughSubject<A, B>, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMd, &_s7Combine18PassthroughSubjectCy10Foundation4UUIDV_AD3URLV15GroupActivities11ParticipantVts5NeverOGMR, MEMORY[0x1E695BF88]);
  v30 = Publisher.eraseToAnyPublisher()();
  v31 = v1 + direct field offset for GroupSession._receivedAttachmentPublisher;
  swift_beginAccess();
  *(v31 + 8) = v30;
}

uint64_t specialized closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + *(*result + 296));
    aBlock[4] = partial apply for specialized closure #1 in closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_542;
    v13 = result;
    v10 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v15 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v12 = v5;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v8, v4, v10);
    _Block_release(v10);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v12);
  }

  return result;
}

uint64_t closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(result + *(*result + 296));
    aBlock[4] = partial apply for closure #1 in closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_675;
    v13 = result;
    v10 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v15 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v12 = v5;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v8, v4, v10);
    _Block_release(v10);
    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v12);
  }

  return result;
}

void specialized closure #1 in closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  type metadata accessor for AnyGroupActivity(0);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  outlined consume of GroupSession<A>.State<A>(v3);
  if (v3 <= 1)
  {
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v1 = swift_allocError();
    *v2 = 4;
    specialized GroupSession.invalidate(reason:)(v1);
  }
}

void closure #1 in closure #2 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{
  GroupSession.internalState.getter();
  outlined consume of GroupSession<A>.State<A>(v2);
  if (v2 <= 1)
  {
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v0 = swift_allocError();
    *v1 = 4;
    GroupSession.invalidate(reason:)(v0);
  }
}

uint64_t specialized GroupSession.invalidate(reason:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.playback);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v39[0] = v9;
    *v8 = 136315138;
    v38 = a1;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v39);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Invalidating GroupSession with reason:%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  v14 = specialized GroupSession.cleanUpPlaybackSyncer()();
  v15 = *(v2 + direct field offset for GroupSession.linkManager);
  v16 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v15) + 0x130))(v14);

  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v17 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
  v18 = AttachmentDataReport.init(totalAttachments:totalDownloadBytes:totalUploadBytes:downloadSpeed:uploadSpeed:)();
  specialized GroupSession.logAttachmentEvent(report:reportEvent:)(v18, 0xD000000000000023, 0x80000001AF01A6B0, &unk_1F24BB248, partial apply for specialized closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:), &block_descriptor_500);

  v19 = (*((*v16 & *v15) + 0x238))();
  specialized GroupSession.logAttachmentEvent(report:reportEvent:)(v19, 0xD000000000000027, 0x80000001AF01A5E0, &unk_1F24BB248, partial apply for specialized closure #1 in GroupSession.logAttachmentEvent(report:reportEvent:), &block_descriptor_500);

  v20 = *(*v2 + 288);
  swift_beginAccess();
  v21 = *(v2 + v20);
  dispatch thunk of XPCClient.destroyConnection()();

  MEMORY[0x1EEE9AC00](v22);
  type metadata accessor for AnyGroupActivity(0);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  static Published.subscript.getter();

  outlined consume of GroupSession<A>.State<A>(v37[0]);
  if (v37[0] >= 2uLL)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, static Log.default);
    v27 = a1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37[0] = v31;
      *v30 = 136315138;
      v32 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v33 = String.init<A>(reflecting:)();
      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, v37);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1AEE80000, v28, v29, "Received invalidation reason %s after already being invalidated.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x1B2715BA0](v31, -1, -1);
      MEMORY[0x1B2715BA0](v30, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();

    PassthroughSubject.send(completion:)();

    v24 = a1;
    specialized GroupSession.internalState.willset(a1);
    MEMORY[0x1EEE9AC00](v25);
    v26 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v26);
    swift_getKeyPath();

    static Published.subscript.setter();
    specialized GroupSession.updatePublicState()(partial apply for specialized closure #1 in GroupSession.updatePublicState(), &block_descriptor_494);
  }

  *(v2 + *(*v2 + 328)) = 0;
}

uint64_t GroupSession.invalidate(reason:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.playback);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30[0] = v9;
    *v8 = 136315138;
    v29[1] = a1;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v30);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Invalidating GroupSession with reason:%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  GroupSession.cleanUpPlaybackSyncer()();
  GroupSession.logAttachmentSessionReport()();
  v14 = (*((*MEMORY[0x1E69E7D40] & **(v2 + direct field offset for GroupSession.linkManager)) + 0x238))();
  GroupSession.logAttachmentEvent(report:reportEvent:)(v14, 0xD000000000000027, 0x80000001AF01A5E0);

  v15 = *(*v2 + 288);
  swift_beginAccess();
  v16 = *(v2 + v15);
  dispatch thunk of XPCClient.destroyConnection()();

  GroupSession.internalState.getter();
  v17 = v30[0];
  outlined consume of GroupSession<A>.State<A>(v30[0]);
  if (v17 <= 1)
  {
    swift_beginAccess();

    PassthroughSubject.send(completion:)();

    v29[0] = a1;
    v27 = a1;
    GroupSession.internalState.setter(v29);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, static Log.default);
    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30[0] = v22;
      *v21 = 136315138;
      v29[0] = a1;
      v23 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v24 = String.init<A>(reflecting:)();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v30);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1AEE80000, v19, v20, "Received invalidation reason %s after already being invalidated.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x1B2715BA0](v22, -1, -1);
      MEMORY[0x1B2715BA0](v21, -1, -1);
    }
  }

  *(v2 + *(*v2 + 328)) = 0;
}

uint64_t specialized closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v13 = *(*Strong + 304), v14 = Strong, swift_beginAccess(), v15 = *(v14 + v13), v16 = v15, , !v15))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v16 = *(result + *(*result + 296));
  }

  v18 = v16;
  v19 = swift_allocObject();
  v19[2] = a3;
  v19[3] = a1;
  v19[4] = a2;
  aBlock[4] = partial apply for specialized closure #1 in closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_539;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v11, v8, v20);
  _Block_release(v20);

  (*(v22 + 8))(v8, v6);
  (*(v9 + 8))(v11, v21);
}

uint64_t closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a1;
  v27 = a5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v11 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v15 = Strong, v16 = *(*Strong + 304), swift_beginAccess(), v17 = *(v15 + v16), v18 = v17, , !v17))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v18 = *(result + *(*result + 296));
  }

  v20 = v18;
  v21 = swift_allocObject();
  v22 = v26;
  v23 = v27;
  v21[2] = a4;
  v21[3] = v23;
  v21[4] = a3;
  v21[5] = v22;
  v21[6] = a2;
  aBlock[4] = partial apply for closure #1 in closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_672;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v30 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v13, v10, v24);
  _Block_release(v24);

  (*(v29 + 8))(v10, v8);
  (*(v11 + 8))(v13, v28);
}

uint64_t specialized closure #1 in closure #3 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = (result + *(*result + 232));
    swift_beginAccess();
    *v6 = a2;
    v6[1] = a3;
  }

  return result;
}

uint64_t specialized closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v12 = *(*Strong + 304), v13 = Strong, swift_beginAccess(), v14 = *(v13 + v12), v15 = v14, , v14))
  {
    v20 = v5;
  }

  else
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v20 = v5;
    v15 = *(result + *(*result + 296));
  }

  v17 = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  aBlock[4] = partial apply for specialized closure #1 in closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_533;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v10, v7, v19);
  _Block_release(v19);

  (*(v20 + 8))(v7, v4);
  (*(v8 + 8))(v10, v21);
}

uint64_t closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchQoS();
  v10 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong || (v14 = *(*Strong + 304), v15 = Strong, swift_beginAccess(), v16 = *(v15 + v14), v17 = v16, , !v16))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v17 = *(result + *(*result + 296));
  }

  v19 = v17;
  v20 = swift_allocObject();
  v21 = v23;
  v20[2] = a3;
  v20[3] = v21;
  v20[4] = a1;
  v20[5] = a2;
  aBlock[4] = partial apply for closure #1 in closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_666;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v12, v9, v22);
  _Block_release(v22);

  (*(v25 + 8))(v9, v7);
  (*(v10 + 8))(v12, v24);
}

uint64_t specialized closure #1 in closure #4 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v30 = a1;
    v2 = __CocoaSet.count.getter();
    a1 = v30;
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = a1;
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v3 = v35;
      v6 = v4;
      v31 = v4 & 0xC000000000000001;
      v32 = v2;
      v33 = v4;
      while (1)
      {
        v7 = v3;
        v8 = v31 ? MEMORY[0x1B2714B30](v5, v6) : *(v6 + 8 * v5 + 32);
        v9 = v8;
        v10 = [v8 identifier];
        v34 = MEMORY[0x1B27150D0]();

        v11 = [v9 displayName];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = [v9 info];
        v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = lazy protocol witness table accessor for type Data and conformance Data();
        v20 = [v9 status];
        if (v20 >= 3)
        {
          break;
        }

        v3 = v7;
        v36 = v7;
        v21 = *(v7 + 16);
        v22 = *(v3 + 24);
        if (v21 >= v22 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v21 + 1, 1);
          v3 = v36;
        }

        ++v5;
        *(v3 + 16) = v21 + 1;
        v23 = v3 + 72 * v21;
        v6 = v33;
        *(v23 + 32) = v34;
        *(v23 + 40) = v12;
        *(v23 + 48) = v14;
        *(v23 + 56) = v16;
        *(v23 + 64) = v18;
        *(v23 + 80) = MEMORY[0x1E6969080];
        *(v23 + 88) = v19;
        *(v23 + 96) = v20;
        if (v32 == v5)
        {
          goto LABEL_13;
        }
      }
    }

    type metadata accessor for TUExternalParticipantStatus(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
LABEL_13:
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v25 = (Strong + *(*Strong + 416));
      v26 = *v25;
      if (*v25)
      {
        v27 = v3;
        v28 = v25[1];
        outlined copy of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(*v25, v28);

        v26(v27);
        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v26, v28);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t specialized closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + *(*result + 296));
    v14 = result;
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = v14;
    v20 = v14;
    v15[4] = a2;
    aBlock[4] = partial apply for specialized closure #1 in closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_527;
    v16 = _Block_copy(aBlock);

    v17 = a2;
    static DispatchQoS.unspecified.getter();
    v22 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v19 = v9;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v12, v8, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v19);
  }

  return result;
}

uint64_t closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = *(result + *(*result + 296));
    v14 = result;
    v15 = swift_allocObject();
    v15[2] = a1;
    v15[3] = v14;
    v20 = v14;
    v15[4] = a2;
    aBlock[4] = partial apply for closure #1 in closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_660;
    v16 = _Block_copy(aBlock);

    v17 = a2;
    static DispatchQoS.unspecified.getter();
    v22 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v19 = v9;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v12, v8, v16);
    _Block_release(v16);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v19);
  }

  return result;
}

void specialized closure #1 in closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, id a3)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        goto LABEL_32;
      }

      MEMORY[0x1EEE9AC00](1);
      type metadata accessor for AnyGroupActivity(0);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      swift_getKeyPath();
      static Published.subscript.getter();

      outlined consume of GroupSession<A>.State<A>(v26);
      if (v26 < 2)
      {
        specialized GroupSession.internalState.willset(1);
        MEMORY[0x1EEE9AC00](v12);
        v13 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v13);
        swift_getKeyPath();
        v26 = 1;
        goto LABEL_16;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.default);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 136315138;
        v26 = v18;
        goto LABEL_25;
      }
    }

    else
    {
      v7 = MEMORY[0x1EEE9AC00](0);
      type metadata accessor for AnyGroupActivity(v7);
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
      v8 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v8);
      swift_getKeyPath();
      static Published.subscript.getter();

      outlined consume of GroupSession<A>.State<A>(v26);
      if (v26 < 2)
      {
        specialized GroupSession.internalState.willset(0);
        MEMORY[0x1EEE9AC00](v9);
        v10 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v10);
        swift_getKeyPath();
        v26 = 0;
LABEL_16:

        static Published.subscript.setter();
        specialized GroupSession.updatePublicState()(partial apply for specialized closure #1 in GroupSession.updatePublicState(), &block_descriptor_494);
        return;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Log.default);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136315138;
LABEL_25:
        type metadata accessor for CPActivitySessionState(0);
        v20 = String.init<A>(reflecting:)();
        v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v26);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_1AEE80000, v15, v16, "Received state update (%s) while session is invalid, ignoring this update", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v18);
        MEMORY[0x1B2715BA0](v18, -1, -1);
        MEMORY[0x1B2715BA0](v17, -1, -1);
      }
    }

    return;
  }

  if (a1 == 2)
  {
    if (a3)
    {
      v5 = a3;
    }

    else
    {
      lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
      v23 = swift_allocError();
      a3 = 0;
      v5 = v23;
      *v24 = 2;
    }

    v25 = a3;
    v3 = v5;
    goto LABEL_29;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
      v3 = swift_allocError();
      v5 = v3;
      v6 = 8;
      goto LABEL_12;
    }

LABEL_32:
    _StringGuts.grow(_:)(17);
    MEMORY[0x1B27141F0](0x206E776F6E6B6E55, 0xEF203A6574617473);
    type metadata accessor for CPActivitySessionState(0);
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
  v3 = swift_allocError();
  v5 = v3;
  v6 = 6;
LABEL_12:
  *v4 = v6;
LABEL_29:
  specialized GroupSession.invalidate(reason:)(v3);
}

void closure #1 in closure #5 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, int a2, NSObject *a3)
{
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        if (a3)
        {
          v5 = a3;
        }

        else
        {
          lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
          v16 = swift_allocError();
          a3 = 0;
          v5 = v16;
          *v17 = 2;
        }

        v18 = a3;
        v3 = v5;
        goto LABEL_31;
      case 4:
        lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
        v3 = swift_allocError();
        v5 = v3;
        v6 = 6;
LABEL_15:
        *v4 = v6;
LABEL_31:
        GroupSession.invalidate(reason:)(v3);
        v15 = v5;

LABEL_26:

        return;
      case 5:
        lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
        v3 = swift_allocError();
        v5 = v3;
        v6 = 8;
        goto LABEL_15;
    }

    goto LABEL_34;
  }

  if (!a1)
  {
    GroupSession.internalState.getter();
    outlined consume of GroupSession<A>.State<A>(v20);
    if (v20 > 1)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.default);
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v20 = v10;
        *v9 = 136315138;
LABEL_22:
        type metadata accessor for CPActivitySessionState(0);
        v12 = String.init<A>(reflecting:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v20);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_1AEE80000, oslog, v8, "Received state update (%s) while session is invalid, ignoring this update", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x1B2715BA0](v10, -1, -1);
        MEMORY[0x1B2715BA0](v9, -1, -1);

        return;
      }

      goto LABEL_24;
    }

    v20 = 0;
    goto LABEL_28;
  }

  if (a1 == 1)
  {
    GroupSession.internalState.getter();
    outlined consume of GroupSession<A>.State<A>(v20);
    if (v20 > 1)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.default);
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 136315138;
        v20 = v10;
        goto LABEL_22;
      }

LABEL_24:
      v15 = oslog;

      goto LABEL_26;
    }

    v20 = 1;
LABEL_28:
    GroupSession.internalState.setter(&v20);
    return;
  }

LABEL_34:
  _StringGuts.grow(_:)(17);
  MEMORY[0x1B27141F0](0x206E776F6E6B6E55, 0xEF203A6574617473);
  type metadata accessor for CPActivitySessionState(0);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized closure #6 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + direct field offset for GroupSession.linkManager);
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x170);
    v5 = v3;
    v6 = swift_unknownObjectRetain();
    v4(v6);
  }
}

uint64_t specialized closure #7 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a4;
  v85 = a1;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMd, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMR);
  MEMORY[0x1EEE9AC00](v88);
  v6 = &v80 - v5;
  v7 = type metadata accessor for URL();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v84 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v82 = &v80 - v10;
  v11 = type metadata accessor for Participant(0);
  v12 = *(v11 - 1);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v80 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v80 - v21;
  v23 = type metadata accessor for UUID();
  v91 = *(v23 - 8);
  v92 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v90 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v25 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v27 = result;
  static String.Encoding.utf8.getter();
  v28 = String.init(data:encoding:)();
  if (!v29)
  {
    if (one-time initialization token for default == -1)
    {
LABEL_9:
      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Log.default);
      v34 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v34, v41))
      {
LABEL_29:
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1AEE80000, v34, v41, "Failed to find attachmentID from metadata", v42, 2u);
      v39 = v42;
LABEL_11:
      MEMORY[0x1B2715BA0](v39, -1, -1);
      goto LABEL_29;
    }

LABEL_37:
    swift_once();
    goto LABEL_9;
  }

  v30 = v29;
  v81 = v28;
  UUID.init(uuidString:)();
  v31 = v91;
  v32 = v92;
  if ((*(v91 + 48))(v22, 1, v92) == 1)
  {
    outlined destroy of NSObject?(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Log.default);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v34, v35))
    {

      goto LABEL_29;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v93[0] = v37;
    *v36 = 136315138;
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v30, v93);

    *(v36 + 4) = v38;
    _os_log_impl(&dword_1AEE80000, v34, v35, "Failed to convert attachmentID: %s to UUID.", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1B2715BA0](v37, -1, -1);
    v39 = v36;
    goto LABEL_11;
  }

  v80 = v6;

  v43 = (*(v31 + 32))(v90, v22, v32);
  MEMORY[0x1EEE9AC00](v43);
  v44 = type metadata accessor for AnyGroupActivity(0);
  *(&v80 - 2) = v44;
  v45 = lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
  *(&v80 - 1) = v45;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v80 - 2) = v44;
  *(&v80 - 1) = v45;
  swift_getKeyPath();
  v81 = v27;
  static Published.subscript.getter();

  v47 = v93[0];
  v48 = v93[0] + 56;
  v49 = 1 << *(v93[0] + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & *(v93[0] + 56);
  v52 = (v49 + 63) >> 6;

  v53 = 0;
  v54 = v89;
  if (!v51)
  {
LABEL_16:
    while (1)
    {
      v55 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v55 >= v52)
      {

        v56 = v82;
        (*(v12 + 56))(v82, 1, 1, v11);
        goto LABEL_23;
      }

      v51 = *(v48 + 8 * v55);
      ++v53;
      if (v51)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  while (1)
  {
    v55 = v53;
LABEL_19:
    outlined init with copy of Participant(*(v47 + 48) + *(v12 + 72) * (__clz(__rbit64(v51)) | (v55 << 6)), v18, type metadata accessor for Participant);
    outlined init with take of Participant(v18, v15, type metadata accessor for Participant);
    if (*&v15[v11[6]] == v54)
    {
      break;
    }

    v51 &= v51 - 1;
    outlined destroy of Participant(v15, type metadata accessor for Participant);
    v53 = v55;
    if (!v51)
    {
      goto LABEL_16;
    }
  }

  v56 = v82;
  outlined init with take of Participant(v15, v82, type metadata accessor for Participant);
  (*(v12 + 56))(v56, 0, 1, v11);
LABEL_23:

  v57 = (*(v12 + 48))(v56, 1, v11);
  v58 = v83;
  if (v57 == 1)
  {
    outlined destroy of NSObject?(v56, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Log.default);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v93[0] = v63;
      *v62 = 134218242;
      v64 = v89;
      *(v62 + 4) = v89;
      *(v62 + 12) = 2080;
      v65 = specialized GroupSession.description.getter();
      v67 = v66;

      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v67, v93);

      *(v62 + 14) = v68;
      v69 = v64;
      _os_log_impl(&dword_1AEE80000, v60, v61, "Failed to find participant on GroupSession with serverIdentifier: %llu, groupSession: %s", v62, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x1B2715BA0](v63, -1, -1);
      MEMORY[0x1B2715BA0](v62, -1, -1);
    }

    else
    {

      v69 = v89;
    }

    v70 = v91;
    UUID.init(_:)(v69);
    *(v58 + v11[6]) = v69;
    v71 = (v58 + v11[5]);
    *v71 = 0;
    v71[1] = 0xE000000000000000;
    *(v58 + v11[8]) = 0;
    v72 = (v58 + v11[7]);
    *v72 = 0;
    v72[1] = 0;
    *(v58 + v11[9]) = 0;
  }

  else
  {
    outlined init with take of Participant(v56, v83, type metadata accessor for Participant);
    v70 = v91;
  }

  swift_beginAccess();

  v73 = [v85 URL];
  v74 = v84;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v75 = *(v88 + 48);
  v76 = *(v88 + 64);
  v77 = v80;
  v78 = v90;
  v79 = v92;
  (*(v70 + 16))(v80, v90, v92);
  (*(v86 + 32))(v77 + v75, v74, v87);
  outlined init with copy of Participant(v58, v77 + v76, type metadata accessor for Participant);
  PassthroughSubject.send(_:)();

  outlined destroy of NSObject?(v77, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMd, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMR);
  outlined destroy of Participant(v58, type metadata accessor for Participant);
  return (*(v70 + 8))(v78, v79);
}

uint64_t closure #7 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v91 = a4;
  v83 = a1;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMd, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMR);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v80 - v5;
  v6 = type metadata accessor for URL();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v80 - v9;
  v92 = type metadata accessor for Participant(0);
  v11 = *(v92 - 8);
  v12 = MEMORY[0x1EEE9AC00](v92);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v80 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v80 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v80 - v20;
  v22 = type metadata accessor for UUID();
  v89 = *(v22 - 8);
  v90 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v24 - 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  static String.Encoding.utf8.getter();
  v26 = String.init(data:encoding:)();
  if (!v27)
  {
    if (one-time initialization token for default == -1)
    {
LABEL_9:
      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Log.default);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_1AEE80000, v39, v40, "Failed to find attachmentID from metadata", v41, 2u);
        MEMORY[0x1B2715BA0](v41, -1, -1);
      }
    }

LABEL_38:
    swift_once();
    goto LABEL_9;
  }

  v28 = v26;
  v29 = v27;
  v80 = v10;
  UUID.init(uuidString:)();
  v31 = v89;
  v30 = v90;
  if ((*(v89 + 48))(v21, 1, v90) == 1)
  {
    outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.default);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v93[0] = v36;
      *v35 = 136315138;
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v29, v93);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_1AEE80000, v33, v34, "Failed to convert attachmentID: %s to UUID.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1B2715BA0](v36, -1, -1);
      MEMORY[0x1B2715BA0](v35, -1, -1);
    }

    else
    {
    }
  }

  (*(v31 + 32))(v88, v21, v30);
  v42 = GroupSession.activeParticipants.getter();
  v43 = v42;
  v44 = v42 + 56;
  v45 = 1 << *(v42 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(v42 + 56);
  v48 = (v45 + 63) >> 6;

  v49 = 0;
  v50 = v80;
  if (!v47)
  {
LABEL_16:
    while (1)
    {
      v51 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v51 >= v48)
      {

        v52 = *(v11 + 56);
        v53 = v50;
        v54 = 1;
        goto LABEL_23;
      }

      v47 = *(v44 + 8 * v51);
      ++v49;
      if (v47)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  while (1)
  {
    v51 = v49;
LABEL_19:
    outlined init with copy of Participant(*(v43 + 48) + *(v11 + 72) * (__clz(__rbit64(v47)) | (v51 << 6)), v17, type metadata accessor for Participant);
    outlined init with take of Participant(v17, v14, type metadata accessor for Participant);
    if (*&v14[*(v92 + 24)] == v91)
    {
      break;
    }

    v47 &= v47 - 1;
    outlined destroy of Participant(v14, type metadata accessor for Participant);
    v49 = v51;
    if (!v47)
    {
      goto LABEL_16;
    }
  }

  outlined init with take of Participant(v14, v50, type metadata accessor for Participant);
  v52 = *(v11 + 56);
  v53 = v50;
  v54 = 0;
LABEL_23:
  v55 = v92;
  v52(v53, v54, 1, v92);

  v56 = (*(v11 + 48))(v50, 1, v55);
  v57 = v81;
  if (v56 == 1)
  {
    outlined destroy of NSObject?(v50, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    v58 = v89;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Log.default);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();
    v62 = os_log_type_enabled(v60, v61);
    v63 = v91;
    if (v62)
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v93[0] = v65;
      *v64 = 134218242;
      *(v64 + 4) = v63;
      *(v64 + 12) = 2080;
      v66 = GroupSession.description.getter();
      v68 = v67;

      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, v93);

      *(v64 + 14) = v69;
      _os_log_impl(&dword_1AEE80000, v60, v61, "Failed to find participant on GroupSession with serverIdentifier: %llu, groupSession: %s", v64, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x1B2715BA0](v65, -1, -1);
      v70 = v64;
      v55 = v92;
      MEMORY[0x1B2715BA0](v70, -1, -1);
    }

    else
    {
    }

    UUID.init(_:)(v63);
    *(v57 + v55[6]) = v63;
    v71 = (v57 + v55[5]);
    *v71 = 0;
    v71[1] = 0xE000000000000000;
    *(v57 + v55[8]) = 0;
    v72 = (v57 + v55[7]);
    *v72 = 0;
    v72[1] = 0;
    *(v57 + v55[9]) = 0;
  }

  else
  {
    outlined init with take of Participant(v50, v81, type metadata accessor for Participant);
    v58 = v89;
  }

  swift_beginAccess();

  v73 = [v83 URL];
  v74 = v82;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v75 = v87;
  v76 = *(v86 + 48);
  v77 = *(v86 + 64);
  v78 = v88;
  v79 = v90;
  (*(v58 + 16))(v87, v88, v90);
  (*(v84 + 32))(v75 + v76, v74, v85);
  outlined init with copy of Participant(v57, v75 + v77, type metadata accessor for Participant);
  PassthroughSubject.send(_:)();

  outlined destroy of NSObject?(v75, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMd, &_s10Foundation4UUIDV_AA3URLV15GroupActivities11ParticipantVtMR);
  outlined destroy of Participant(v57, type metadata accessor for Participant);
  return (*(v58 + 8))(v78, v79);
}

uint64_t specialized Sequence.first(where:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v22 = type metadata accessor for Participant(0);
  v25 = *(v22 - 8);
  v5 = MEMORY[0x1EEE9AC00](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_8:
      outlined init with copy of Participant(*(a2 + 48) + *(v25 + 72) * (__clz(__rbit64(v12)) | (v16 << 6)), v9, type metadata accessor for Participant);
      outlined init with take of Participant(v9, v7, type metadata accessor for Participant);
      v17 = v24(v7);
      if (v3)
      {
        outlined destroy of Participant(v7, type metadata accessor for Participant);
      }

      if (v17)
      {
        break;
      }

      v12 &= v12 - 1;
      result = outlined destroy of Participant(v7, type metadata accessor for Participant);
      v15 = v16;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v20 = v23;
    outlined init with take of Participant(v7, v23, type metadata accessor for Participant);
    v19 = v20;
    v18 = 0;
    return (*(v25 + 56))(v19, v18, 1, v22);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v18 = 1;
        v19 = v23;
        return (*(v25 + 56))(v19, v18, 1, v22);
      }

      v12 = *(a2 + 56 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #8 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for AnyGroupActivity(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.default);
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    *(v15 + 4) = v12;
    *v16 = v12;
    v17 = v12;
    _os_log_impl(&dword_1AEE80000, v13, v14, "GroupSession updating activity to %@", v15, 0xCu);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v16, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v18);
  tryLog<A>(_:_:function:line:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
    return (*(v8 + 56))(a2, 1, 1, v7);
  }

  else
  {
    v20 = outlined init with take of Participant(v6, v10, type metadata accessor for AnyGroupActivity);
    MEMORY[0x1EEE9AC00](v20);
    tryLog<A>(_:_:function:line:)();
    return outlined destroy of Participant(v10, type metadata accessor for AnyGroupActivity);
  }
}

uint64_t closure #8 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for AnyGroupActivity(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);
  v16 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = a3;
    v20 = a2;
    v21 = a4;
    v22 = v19;
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    *(v22 + 4) = v16;
    *v23 = v16;
    v24 = v16;
    _os_log_impl(&dword_1AEE80000, v17, v18, "GroupSession updating activity to %@", v22, 0xCu);
    outlined destroy of NSObject?(v23, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v23, -1, -1);
    v25 = v22;
    a4 = v21;
    a2 = v20;
    a3 = v31;
    MEMORY[0x1B2715BA0](v25, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v26);
  v30 = v11;
  tryLog<A>(_:_:function:line:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of NSObject?(v10, &_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  else
  {
    v28 = v32;
    v29 = outlined init with take of Participant(v10, v32, type metadata accessor for AnyGroupActivity);
    MEMORY[0x1EEE9AC00](v29);
    *(&v31 - 4) = a2;
    *(&v31 - 3) = a3;
    v30 = a2;
    tryLog<A>(_:_:function:line:)();
    return outlined destroy of Participant(v28, type metadata accessor for AnyGroupActivity);
  }
}

uint64_t specialized implicit closure #3 in closure #8 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnyGroupActivity(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Participant(a1, v6, type metadata accessor for AnyGroupActivity);
  return _s15GroupActivities0A8ActivityPAAE8activityxAA03AnyaC0V_tKcfCAF_Tt1g5(v6, a2);
}

uint64_t implicit closure #3 in closure #8 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AnyGroupActivity(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Participant(a1, v10, type metadata accessor for AnyGroupActivity);
  return GroupActivity.init(activity:)(v10, a2, a3, a4);
}

uint64_t _s15GroupActivities0A8ActivityPAAE8activityxAA03AnyaC0V_tKcfCAF_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for AnyGroupActivity(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  v14 = swift_conformsToProtocol2();
  if (v7 && (v15 = v14) != 0)
  {
    v22 = v8;
    MEMORY[0x1EEE9AC00](v14);
    outlined init with copy of Participant(a1, v13, type metadata accessor for AnyGroupActivity);
    (*(v15 + 8))(v13, v7, v15);
    if (v2)
    {
      return outlined destroy of Participant(a1, type metadata accessor for AnyGroupActivity);
    }

    else if (swift_dynamicCast())
    {
      outlined destroy of Participant(a1, type metadata accessor for AnyGroupActivity);
      (*(v22 + 56))(v6, 0, 1, v7);
      return outlined init with take of Participant(v6, v25, type metadata accessor for AnyGroupActivity);
    }

    else
    {
      (*(v22 + 56))(v6, 1, 1, v7);
      outlined destroy of NSObject?(v6, &_s15GroupActivities03AnyA8ActivityVSgMd, &_s15GroupActivities03AnyA8ActivityVSgMR);
      v23 = 0;
      v24 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v23 = 0xD00000000000001DLL;
      v24 = 0x80000001AF01AEE0;
      swift_getMetatypeMetadata();
      v20 = _typeName(_:qualified:)();
      MEMORY[0x1B27141F0](v20);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v17 = (a1 + *(v7 + 24));
    v18 = *v17;
    v19 = v17[1];
    outlined copy of Data._Representation(*v17, v19);
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined destroy of Participant(a1, type metadata accessor for AnyGroupActivity);
    outlined consume of Data._Representation(v18, v19);

    if (!v2)
    {
      return outlined init with take of Participant(v11, v25, type metadata accessor for AnyGroupActivity);
    }
  }

  return result;
}

void *specialized closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v96 = a6;
  v93 = a4;
  v101 = a3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMd, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMR);
  MEMORY[0x1EEE9AC00](v94);
  v97 = (&v83 - v9);
  v10 = type metadata accessor for InternalParticipant(0);
  v89 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v90 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Participant(0);
  v12 = MEMORY[0x1EEE9AC00](v91);
  v88 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v100 = &v83 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for OSSignpostID();
  v98 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OSSignposter();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Signposts.messenger.getter();
  static Signposts.messengerSignpostIdentifier(forPayload:)();
  outlined copy of Data._Representation(a1, a2);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v25, v26);
  (*(v16 + 16))(v18, a5, v15);
  v27 = OSSignposter.logHandle.getter();
  v92 = static os_signpost_type_t.event.getter();
  v99 = a1;
  v28 = a1;
  v29 = a2;
  outlined consume of Data._Representation(v28, a2);
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v16 + 8))(v18, v15);
    (*(v98 + 8))(v20, v95);
    (*(v22 + 8))(v24, v21);
    v38 = v97;
    goto LABEL_15;
  }

  v84 = v27;
  v85 = v18;
  v30 = v16;
  v86 = v24;
  v31 = v98;
  v32 = swift_slowAlloc();
  result = swift_slowAlloc();
  v83 = result;
  v103[0] = result;
  *v32 = 134218498;
  v34 = v29 >> 62;
  v87 = v29;
  if ((v29 >> 62) <= 1)
  {
    v35 = v31;
    v36 = v15;
    if (!v34)
    {
      v37 = BYTE6(v29);
LABEL_13:
      v42 = v21;
      v44 = v22;
      v43 = v30;
      goto LABEL_14;
    }

    LODWORD(v37) = HIDWORD(v99) - v99;
    if (!__OFSUB__(HIDWORD(v99), v99))
    {
      v42 = v21;
      v43 = v30;
      v37 = v37;
      goto LABEL_11;
    }

LABEL_31:
    __break(1u);
    return result;
  }

  v35 = v31;
  v36 = v15;
  if (v34 != 2)
  {
    v37 = 0;
    goto LABEL_13;
  }

  v40 = *(v99 + 16);
  v39 = *(v99 + 24);
  v41 = __OFSUB__(v39, v40);
  v37 = v39 - v40;
  if (v41)
  {
    __break(1u);
    goto LABEL_31;
  }

  v42 = v21;
  v43 = v30;
LABEL_11:
  v44 = v22;
LABEL_14:
  v45 = v85;
  *(v32 + 4) = v37;
  *(v32 + 12) = 2080;
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v46 = dispatch thunk of CustomStringConvertible.description.getter();
  v48 = v47;
  (*(v43 + 8))(v45, v36);
  v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v103);

  *(v32 + 14) = v49;
  *(v32 + 22) = 2048;
  *(v32 + 24) = v101;
  v50 = OSSignpostID.rawValue.getter();
  v51 = v84;
  _os_signpost_emit_with_name_impl(&dword_1AEE80000, v84, v92, v50, "group-session-messenger-receive", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu", v32, 0x20u);
  v52 = v83;
  __swift_destroy_boxed_opaque_existential_0(v83);
  MEMORY[0x1B2715BA0](v52, -1, -1);
  MEMORY[0x1B2715BA0](v32, -1, -1);

  (*(v35 + 8))(v20, v95);
  (*(v44 + 8))(v86, v42);
  v38 = v97;
  v29 = v87;
LABEL_15:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v53 = v100;
  if (result)
  {
    v54 = result;
    v55 = v93 & 1;
    v56 = v101;
    if ((v93 & 1) == 0)
    {
      v57 = result + direct field offset for GroupSession.receivedDataHandler;
      swift_beginAccess();
      v58 = *v57;
      if (*v57)
      {
        v59 = *(v57 + 1);

        v58(v99, v29, v56);
        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v58, v59);
      }
    }

    v60 = (v54 + *(*v54 + 384));
    os_unfair_lock_lock(v60);
    v61 = *&v60[2]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v60);
    if (*(v61 + 16) && (v62 = specialized __RawDictionaryStorage.find<A>(_:)(v56), (v63 & 1) != 0))
    {
      v64 = v90;
      outlined init with copy of Participant(*(v61 + 56) + *(v89 + 72) * v62, v90, type metadata accessor for InternalParticipant);

      v65 = v88;
      outlined init with take of Participant(v64, v88, type metadata accessor for Participant);
      outlined init with take of Participant(v65, v53, type metadata accessor for Participant);
    }

    else
    {

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      __swift_project_value_buffer(v66, static Log.default);

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v102[0] = v70;
        *v69 = 134218242;
        *(v69 + 4) = v56;
        *(v69 + 12) = 2080;
        v71 = specialized GroupSession.description.getter();
        v72 = v29;
        v74 = v73;

        v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v74, v102);
        v29 = v72;
        v56 = v101;

        *(v69 + 14) = v75;
        _os_log_impl(&dword_1AEE80000, v67, v68, "Failed to find participant on GroupSession with serverIdentifier: %llu, groupSession: %s", v69, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v70);
        v76 = v70;
        v53 = v100;
        MEMORY[0x1B2715BA0](v76, -1, -1);
        MEMORY[0x1B2715BA0](v69, -1, -1);
      }

      else
      {
      }

      UUID.init(_:)(v56);
      v77 = v91;
      *(v53 + *(v91 + 24)) = v56;
      v78 = (v53 + v77[5]);
      *v78 = 0;
      v78[1] = 0xE000000000000000;
      *(v53 + v77[8]) = 0;
      v79 = (v53 + v77[7]);
      *v79 = 0;
      v79[1] = 0;
      *(v53 + v77[9]) = 0;
    }

    swift_beginAccess();
    v80 = *(v94 + 48);
    v81 = *(v94 + 64);
    v82 = v99;
    *v38 = v99;
    v38[1] = v29;
    outlined init with copy of Participant(v53, v38 + v80, type metadata accessor for Participant);
    *(v38 + v81) = v55;
    outlined copy of Data._Representation(v82, v29);

    PassthroughSubject.send(_:)();

    outlined destroy of NSObject?(v38, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMd, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMR);
    return outlined destroy of Participant(v53, type metadata accessor for Participant);
  }

  return result;
}

void *closure #9 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v91 = a6;
  v94 = a5;
  v95 = a3;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMd, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMR);
  MEMORY[0x1EEE9AC00](v88);
  v93 = (&v77 - v9);
  v10 = type metadata accessor for InternalParticipant(0);
  v84 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v85 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for Participant(0);
  v12 = MEMORY[0x1EEE9AC00](v86);
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v77 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OSSignpostID();
  v89 = *(v19 - 8);
  v90 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OSSignposter();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *a4;
  static Signposts.messenger.getter();
  static Signposts.messengerSignpostIdentifier(forPayload:)();
  outlined copy of Data._Representation(a1, a2);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v26, v27);
  (*(v16 + 16))(v18, v94, v15);
  v28 = OSSignposter.logHandle.getter();
  v87 = static os_signpost_type_t.event.getter();
  v94 = a1;
  v29 = a1;
  v30 = a2;
  outlined consume of Data._Representation(v29, a2);
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v16 + 8))(v18, v15);
    (*(v89 + 8))(v21, v90);
    (*(v23 + 8))(v25, v22);
    v35 = v95;
    v38 = v93;
    goto LABEL_15;
  }

  v80 = v28;
  v31 = v16;
  v81 = v25;
  v32 = swift_slowAlloc();
  result = swift_slowAlloc();
  v78 = result;
  v97[0] = result;
  *v32 = 134218498;
  v34 = a2 >> 62;
  v82 = a2;
  v79 = v22;
  if ((a2 >> 62) <= 1)
  {
    v35 = v95;
    v36 = v15;
    if (!v34)
    {
      v37 = BYTE6(v30);
LABEL_13:
      v42 = v23;
      v44 = v21;
      v43 = v31;
      goto LABEL_14;
    }

    LODWORD(v37) = HIDWORD(v94) - v94;
    if (!__OFSUB__(HIDWORD(v94), v94))
    {
      v42 = v23;
      v43 = v31;
      v37 = v37;
      goto LABEL_11;
    }

LABEL_31:
    __break(1u);
    return result;
  }

  v35 = v95;
  v36 = v15;
  if (v34 != 2)
  {
    v37 = 0;
    goto LABEL_13;
  }

  v40 = *(v94 + 16);
  v39 = *(v94 + 24);
  v41 = __OFSUB__(v39, v40);
  v37 = v39 - v40;
  if (v41)
  {
    __break(1u);
    goto LABEL_31;
  }

  v42 = v23;
  v43 = v31;
LABEL_11:
  v44 = v21;
LABEL_14:
  *(v32 + 4) = v37;
  *(v32 + 12) = 2080;
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v45 = dispatch thunk of CustomStringConvertible.description.getter();
  v47 = v46;
  (*(v43 + 8))(v18, v36);
  v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v97);

  *(v32 + 14) = v48;
  *(v32 + 22) = 2048;
  *(v32 + 24) = v35;
  v49 = OSSignpostID.rawValue.getter();
  v50 = v80;
  _os_signpost_emit_with_name_impl(&dword_1AEE80000, v80, v87, v49, "group-session-messenger-receive", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu", v32, 0x20u);
  v51 = v78;
  __swift_destroy_boxed_opaque_existential_0(v78);
  MEMORY[0x1B2715BA0](v51, -1, -1);
  MEMORY[0x1B2715BA0](v32, -1, -1);

  (*(v89 + 8))(v44, v90);
  (*(v42 + 8))(v81, v79);
  v38 = v93;
  v30 = v82;
LABEL_15:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v52 = v92;
  if (result)
  {
    if ((v96 & 1) == 0)
    {
      v53 = result + direct field offset for GroupSession.receivedDataHandler;
      swift_beginAccess();
      v54 = *v53;
      if (*v53)
      {
        v55 = *(v53 + 1);

        v54(v94, v30, v35);
        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v54, v55);
      }
    }

    active = GroupSession.internalActiveParticipants.getter();
    if (*(active + 16) && (v57 = specialized __RawDictionaryStorage.find<A>(_:)(v35), (v58 & 1) != 0))
    {
      v59 = v85;
      outlined init with copy of Participant(*(active + 56) + *(v84 + 72) * v57, v85, type metadata accessor for InternalParticipant);

      v60 = v83;
      outlined init with take of Participant(v59, v83, type metadata accessor for Participant);
      outlined init with take of Participant(v60, v52, type metadata accessor for Participant);
    }

    else
    {

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Log.default);

      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v97[0] = v65;
        *v64 = 134218242;
        *(v64 + 4) = v35;
        *(v64 + 12) = 2080;
        v66 = GroupSession.description.getter();
        v67 = v30;
        v69 = v68;

        v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v69, v97);
        v30 = v67;
        v35 = v95;

        *(v64 + 14) = v70;
        _os_log_impl(&dword_1AEE80000, v62, v63, "Failed to find participant on GroupSession with serverIdentifier: %llu, groupSession: %s", v64, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v65);
        MEMORY[0x1B2715BA0](v65, -1, -1);
        MEMORY[0x1B2715BA0](v64, -1, -1);
      }

      else
      {
      }

      UUID.init(_:)(v35);
      v71 = v86;
      *(v52 + *(v86 + 24)) = v35;
      v72 = (v52 + v71[5]);
      *v72 = 0;
      v72[1] = 0xE000000000000000;
      *(v52 + v71[8]) = 0;
      v73 = (v52 + v71[7]);
      *v73 = 0;
      v73[1] = 0;
      *(v52 + v71[9]) = 0;
    }

    swift_beginAccess();
    v74 = *(v88 + 48);
    v75 = *(v88 + 64);
    v76 = v94;
    *v38 = v94;
    v38[1] = v30;
    outlined init with copy of Participant(v52, v38 + v74, type metadata accessor for Participant);
    *(v38 + v75) = v96;
    outlined copy of Data._Representation(v76, v30);

    PassthroughSubject.send(_:)();

    outlined destroy of NSObject?(v38, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMd, &_s10Foundation4DataV_15GroupActivities11ParticipantVAD15SendReliabilityOtMR);
    return outlined destroy of Participant(v52, type metadata accessor for Participant);
  }

  return result;
}

uint64_t specialized closure #10 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    specialized GroupSession.updatePublicState()(partial apply for specialized closure #1 in GroupSession.updatePublicState(), &block_descriptor_494);
    v13 = *(*v12 + 336);
    swift_beginAccess();
    outlined init with copy of URL?(v12 + v13, v6, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return outlined destroy of NSObject?(v6, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      MEMORY[0x1B2712F70](v10);
      (*(v8 + 8))(v10, v7);
      (*(v8 + 56))(v4, 1, 1, v7);
      swift_beginAccess();
      outlined assign with take of SharePlayLatencyLogger.Interval?(v4, v12 + v13);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t closure #10 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    GroupSession.updatePublicState()();
    v13 = *(*v12 + 336);
    swift_beginAccess();
    outlined init with copy of URL?(v12 + v13, v6, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      return outlined destroy of NSObject?(v6, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      MEMORY[0x1B2712F70](v10);
      (*(v8 + 8))(v10, v7);
      (*(v8 + 56))(v4, 1, 1, v7);
      swift_beginAccess();
      outlined assign with take of SharePlayLatencyLogger.Interval?(v4, v12 + v13);
      swift_endAccess();
    }
  }

  return result;
}

uint64_t specialized closure #11 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Participant(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InternalParticipant(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v40 = v8;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v41 = __swift_project_value_buffer(v19, static Log.default);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v39 = v4;
      v23 = v10;
      v24 = v16;
      v25 = v3;
      v26 = v6;
      v27 = a1;
      v28 = v22;
      *v22 = 134217984;
      *(v22 + 4) = v27;
      _os_log_impl(&dword_1AEE80000, v20, v21, "Catchup needed. Leader participant id:%llu", v22, 0xCu);
      v29 = v28;
      a1 = v27;
      v6 = v26;
      v3 = v25;
      v16 = v24;
      v10 = v23;
      v4 = v39;
      MEMORY[0x1B2715BA0](v29, -1, -1);
    }

    v30 = v18 + *(*v18 + 384);
    os_unfair_lock_lock(v30);
    v31 = *(v30 + 8);

    os_unfair_lock_unlock(v30);
    if (*(v31 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v33 & 1) != 0))
    {
      outlined init with copy of Participant(*(v31 + 56) + *(v40 + 72) * v32, v10, type metadata accessor for InternalParticipant);

      outlined init with take of Participant(v10, v16, type metadata accessor for Participant);
      v34 = 0;
    }

    else
    {

      v34 = 1;
    }

    (*(v4 + 56))(v16, v34, 1, v3);
    outlined init with copy of URL?(v16, v14, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    if ((*(v4 + 48))(v14, 1, v3) == 1)
    {
      outlined destroy of NSObject?(v14, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = a1;
        _os_log_impl(&dword_1AEE80000, v35, v36, "ParticipantID:%llu was not found.", v37, 0xCu);
        MEMORY[0x1B2715BA0](v37, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      outlined init with take of Participant(v14, v6, type metadata accessor for Participant);
      swift_beginAccess();

      PassthroughSubject.send(_:)();

      outlined destroy of Participant(v6, type metadata accessor for Participant);
    }

    return outlined destroy of NSObject?(v16, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  }

  return result;
}

uint64_t closure #11 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Participant(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InternalParticipant(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v38 - v15;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v39 = v8;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v40 = __swift_project_value_buffer(v19, static Log.default);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v38[1] = v18;
      v23 = v10;
      v24 = v4;
      v25 = v16;
      v26 = v3;
      v27 = v6;
      v28 = a1;
      v29 = v22;
      *v22 = 134217984;
      *(v22 + 4) = v28;
      _os_log_impl(&dword_1AEE80000, v20, v21, "Catchup needed. Leader participant id:%llu", v22, 0xCu);
      v30 = v29;
      a1 = v28;
      v6 = v27;
      v3 = v26;
      v16 = v25;
      v4 = v24;
      v10 = v23;
      MEMORY[0x1B2715BA0](v30, -1, -1);
    }

    active = GroupSession.internalActiveParticipants.getter();
    if (*(active + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v33 & 1) != 0))
    {
      outlined init with copy of Participant(*(active + 56) + *(v39 + 72) * v32, v10, type metadata accessor for InternalParticipant);

      outlined init with copy of Participant(v10, v16, type metadata accessor for Participant);
      outlined destroy of Participant(v10, type metadata accessor for InternalParticipant);
      v34 = 0;
    }

    else
    {

      v34 = 1;
    }

    (*(v4 + 56))(v16, v34, 1, v3);
    outlined init with copy of URL?(v16, v14, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
    if ((*(v4 + 48))(v14, 1, v3) == 1)
    {
      outlined destroy of NSObject?(v14, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = a1;
        _os_log_impl(&dword_1AEE80000, v35, v36, "ParticipantID:%llu was not found.", v37, 0xCu);
        MEMORY[0x1B2715BA0](v37, -1, -1);
      }
    }

    else
    {
      outlined init with take of Participant(v14, v6, type metadata accessor for Participant);
      swift_beginAccess();

      PassthroughSubject.send(_:)();

      outlined destroy of Participant(v6, type metadata accessor for Participant);
    }

    return outlined destroy of NSObject?(v16, &_s15GroupActivities11ParticipantVSgMd, &_s15GroupActivities11ParticipantVSgMR);
  }

  return result;
}

uint64_t specialized closure #13 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock[0] = v9;
      *v8 = 136315138;
      if (a1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
        v10 = String.init<A>(reflecting:)();
        v12 = v11;
      }

      else
      {
        v12 = 0xE300000000000000;
        v10 = 7104878;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, aBlock);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1AEE80000, v6, v7, "Requesting encryption-keys for participantIDs=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    v14 = *(v4 + *(*v4 + 296));
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = a1;
    v16 = swift_allocObject();
    *(v16 + 16) = closure #1 in GroupSession.requestEncryptionKey(for:)specialized partial apply;
    *(v16 + 24) = v15;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_515;
    v17 = _Block_copy(aBlock);

    dispatch_sync(v14, v17);
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall GroupSession.requestEncryptionKey(for:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  v3 = *(v1 + *(*v1 + 296));
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = rawValue;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in GroupSession.requestEncryptionKey(for:);
  *(v5 + 24) = v4;
  v7[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed () -> ();
  v7[3] = &block_descriptor_140;
  v6 = _Block_copy(v7);

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

uint64_t specialized closure #12 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v37 = v13;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v38 = v12;
    v39 = v9;
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.default);
    v19 = a1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = a6;
      v23 = v22;
      v24 = swift_slowAlloc();
      v36 = v8;
      v25 = v24;
      v43 = a1;
      aBlock[0] = v24;
      *v23 = 136315138;
      v26 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v27 = String.init<A>(reflecting:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, aBlock);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1AEE80000, v20, v21, v40, v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      v30 = v25;
      v8 = v36;
      MEMORY[0x1B2715BA0](v30, -1, -1);
      v31 = v23;
      a6 = v35;
      MEMORY[0x1B2715BA0](v31, -1, -1);
    }

    v32 = swift_allocObject();
    *(v32 + 16) = v17;
    *(v32 + 24) = a1;
    aBlock[4] = v42;
    aBlock[5] = v32;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = a6;
    v33 = _Block_copy(aBlock);
    v34 = a1;

    static DispatchQoS.unspecified.getter();
    v43 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v15, v11, v33);
    _Block_release(v33);
    (*(v39 + 8))(v11, v8);
    (*(v37 + 8))(v15, v38);
  }

  return result;
}

uint64_t closure #12 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a6;
  v44 = a7;
  v42 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    v39 = v15;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v40 = v14;
    v41 = v11;
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.default);
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = a8;
      v25 = v24;
      v26 = swift_slowAlloc();
      v38 = v10;
      v27 = v26;
      v45 = a1;
      aBlock[0] = v26;
      *v25 = 136315138;
      v28 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v29 = String.init<A>(reflecting:)();
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, aBlock);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_1AEE80000, v22, v23, v42, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      v32 = v27;
      v10 = v38;
      MEMORY[0x1B2715BA0](v32, -1, -1);
      v33 = v25;
      a8 = v37;
      MEMORY[0x1B2715BA0](v33, -1, -1);
    }

    v34 = swift_allocObject();
    *(v34 + 16) = v19;
    *(v34 + 24) = a1;
    aBlock[4] = v44;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = a8;
    v35 = _Block_copy(aBlock);
    v36 = a1;

    static DispatchQoS.unspecified.getter();
    v45 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1B27147B0](0, v17, v13, v35);
    _Block_release(v35);
    (*(v41 + 8))(v13, v10);
    (*(v39 + 8))(v17, v40);
  }

  return result;
}

uint64_t specialized closure #15 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock[0] = v9;
      *v8 = 136315138;
      if (a1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
        v10 = String.init<A>(reflecting:)();
        v12 = v11;
      }

      else
      {
        v12 = 0xE300000000000000;
        v10 = 7104878;
      }

      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, aBlock);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_1AEE80000, v6, v7, "Requesting encryption-keys for participantIDs=%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    v14 = *(v4 + *(*v4 + 296));
    v15 = swift_allocObject();
    *(v15 + 16) = v4;
    *(v15 + 24) = a1;
    v16 = swift_allocObject();
    *(v16 + 16) = partial apply for specialized closure #1 in GroupSession.requestEncryptionKey(for:);
    *(v16 + 24) = v15;
    aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_475;
    v17 = _Block_copy(aBlock);

    dispatch_sync(v14, v17);
    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t closure #13 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.default);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      if (a1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays6UInt64VGMd, &_sSays6UInt64VGMR);
        v9 = String.init<A>(reflecting:)();
        v11 = v10;
      }

      else
      {
        v11 = 0xE300000000000000;
        v9 = 7104878;
      }

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v5, v6, "Requesting encryption-keys for participantIDs=%s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    v14.value._rawValue = a1;
    GroupSession.requestEncryptionKey(for:)(v14);
  }

  return result;
}

uint64_t closure #16 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    GroupSession.updateNearbyParticipants(_:)(a1);
  }

  return result;
}

uint64_t GroupSession.updateNearbyParticipants(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + v4[37]);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v4[10];
  v12[3] = v4[11];
  v12[4] = v11;
  v12[5] = a1;
  aBlock[4] = partial apply for closure #1 in GroupSession.updateNearbyParticipants(_:);
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_147;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v10, v7, v13);
  _Block_release(v13);
  (*(v17 + 8))(v7, v5);
  (*(v8 + 8))(v10, v16);
}

void closure #17 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v32[16] = a2;
  v33 = a3;
  v15 = specialized _NativeDictionary.mapValues<A>(_:)(partial apply for closure #1 in closure #17 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v32, v14);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.default);
  (*(v11 + 16))(v13, a4, v10);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = a5;
    v21 = v20;
    v34[0] = v20;
    *v19 = 136315394;
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v11 + 8))(v13, v10);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v34);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    type metadata accessor for InternalParticipant(0);
    v26 = Dictionary.description.getter();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v34);

    *(v19 + 14) = v28;
    _os_log_impl(&dword_1AEE80000, v17, v18, "New subscribed participants for group session %s: %s", v19, 0x16u);
    swift_arrayDestroy();
    v29 = v21;
    a5 = v31;
    MEMORY[0x1B2715BA0](v29, -1, -1);
    MEMORY[0x1B2715BA0](v19, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  *a5 = v15;
}

int *closure #1 in closure #17 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Participant(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PubSubTopic.Participant();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  LOBYTE(a3) = PubSubTopic.Participant.participantID.getter() == *(a3 + v9[8]);
  v16 = PubSubTopic.Participant.participantID.getter();
  *&v11[v9[8]] = v16;
  UUID.init(_:)(v16);
  v17 = &v11[v9[7]];
  *v17 = 0;
  *(v17 + 1) = 0xE000000000000000;
  v18 = &v11[v9[9]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v11[v9[10]] = a2 & a3;
  v11[v9[11]] = 0;
  LOBYTE(a1) = PubSubTopic.Participant.isSaltVerified.getter();
  (*(v13 + 8))(v15, v12);
  outlined init with take of Participant(v11, a4, type metadata accessor for Participant);
  result = type metadata accessor for InternalParticipant(0);
  *(a4 + result[5]) = 0;
  *(a4 + result[6]) = a1 & 1;
  *(a4 + result[7]) = a3;
  return result;
}

int *InternalParticipant.init(_:isNearbyFaceTimeEnabled:isLocalParticipant:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Participant(0);
  v9 = (v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = PubSubTopic.Participant.participantID.getter();
  *&v11[v9[8]] = v12;
  UUID.init(_:)(v12);
  v13 = &v11[v9[7]];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v11[v9[9]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v11[v9[10]] = a2 & a3;
  v11[v9[11]] = 0;
  v15 = PubSubTopic.Participant.isSaltVerified.getter();
  v16 = type metadata accessor for PubSubTopic.Participant();
  (*(*(v16 - 8) + 8))(a1, v16);
  outlined init with take of Participant(v11, a4, type metadata accessor for Participant);
  result = type metadata accessor for InternalParticipant(0);
  *(a4 + result[5]) = 0;
  *(a4 + result[6]) = v15 & 1;
  *(a4 + result[7]) = a3;
  return result;
}

uint64_t closure #18 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t a1@<X0>, uint64_t x8_0@<X8>)
{
  v6 = type metadata accessor for PubSubTopic.QueueState();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  return GroupSession.MessageQueue.init(queueState:)(v8, x8_0);
}

uint64_t closure #20 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)@<X0>(uint64_t *a1@<X0>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v6 = GroupSession.translateSubscribedParticipants(_:isNearbyFaceTimeEnabled:)(v6, a3 & 1);
  }

  else
  {
  }

  *a4 = v6;
  return result;
}

uint64_t GroupSession.translateSubscribedParticipants(_:isNearbyFaceTimeEnabled:)(uint64_t a1, int a2)
{
  v3 = v2;
  v128 = a2;
  v127 = type metadata accessor for Participant(0);
  v5 = MEMORY[0x1EEE9AC00](v127);
  v126 = v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v125 = v122 - v7;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
  MEMORY[0x1EEE9AC00](v136);
  v9 = (v122 - v8);
  active = GroupSession.internalActiveParticipants.getter();
  v137 = a1;
  v11 = 0;
  v12 = specialized _NativeDictionary.filter(_:)(active, partial apply for closure #1 in GroupSession.translateSubscribedParticipants(_:isNearbyFaceTimeEnabled:));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v140[0] = v12;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(a1, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v140);

  v139 = v140[0];
  if (one-time initialization token for default != -1)
  {
    goto LABEL_65;
  }

LABEL_2:
  v14 = type metadata accessor for Logger();
  v134 = __swift_project_value_buffer(v14, static Log.default);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v133 = v3;
  v132 = v11;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v140[0] = v19;
    *v18 = 136315138;
    swift_beginAccess();
    type metadata accessor for InternalParticipant(0);

    v20 = Dictionary.description.getter();
    v22 = v21;

    v3 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v140);

    *(v18 + 4) = v3;
    _os_log_impl(&dword_1AEE80000, v15, v16, "[Translation] Updated internal participants %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1B2715BA0](v19, -1, -1);
    MEMORY[0x1B2715BA0](v18, -1, -1);
  }

  swift_beginAccess();
  v23 = v139;
  v24 = MEMORY[0x1E69E7CC0];
  v140[0] = MEMORY[0x1E69E7CC0];
  v25 = 1 << *(v139 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v11 = v26 & *(v139 + 64);
  v27 = (v25 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v28 = 0;
  v135 = v24;
  while (1)
  {
    v29 = v28;
    if (!v11)
    {
      break;
    }

LABEL_11:
    v30 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v31 = v30 | (v28 << 6);
    v32 = *(v23 + 56);
    v33 = *(*(v23 + 48) + 8 * v31);
    v34 = type metadata accessor for InternalParticipant(0);
    v35 = v32 + *(*(v34 - 8) + 72) * v31;
    v3 = v9 + *(v136 + 48);
    outlined init with copy of Participant(v35, v3, type metadata accessor for InternalParticipant);
    *v9 = v33;
    if (*(v3 + *(v34 + 20)) == 1)
    {
      outlined destroy of NSObject?(v9, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
    }

    else
    {
      v3 = *(v3 + *(v34 + 28));
      v36 = objc_allocWithZone(type metadata accessor for ParticipantTranslationRequest());
      ParticipantTranslationRequest.init(aliasedIdentifier:isSaltVerified:isLocalParticipant:)();
      v37 = outlined destroy of NSObject?(v9, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMd, &_ss6UInt64V3key_15GroupActivities19InternalParticipantV5valuetMR);
      MEMORY[0x1B27142A0](v37);
      if (*((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v3 = *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v135 = v140[0];
    }
  }

  while (1)
  {
    v28 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    if (v28 >= v27)
    {
      break;
    }

    v11 = *(v23 + 64 + 8 * v28);
    ++v29;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v140[0] = v135;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay14CopresenceCore29ParticipantTranslationRequestCGMd, &_sSay14CopresenceCore29ParticipantTranslationRequestCGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [ParticipantTranslationRequest] and conformance [A], &_sSay14CopresenceCore29ParticipantTranslationRequestCGMd, &_sSay14CopresenceCore29ParticipantTranslationRequestCGMR, MEMORY[0x1E69E6328]);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type ParticipantTranslationRequest and conformance NSObject, MEMORY[0x1E69976A0], MEMORY[0x1E69E81B8]);
  v38 = Sequence<>.asSet()();

  if ((v38 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_18;
    }
  }

  else if (*(v38 + 16))
  {
LABEL_18:

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v140[0] = v42;
      *v41 = 136315138;
      type metadata accessor for ParticipantTranslationRequest();
      v43 = Set.description.getter();
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v44, v140);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1AEE80000, v39, v40, "[Translation] New translation requests: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x1B2715BA0](v42, -1, -1);
      MEMORY[0x1B2715BA0](v41, -1, -1);
    }

    v46 = v133;
    v47 = v132;
    v48 = *(*v133 + 288);
    swift_beginAccess();
    v49 = *&v46[v48];
    v50 = ActivitySessionClientConnection.requestParticipantTranslations(_:)();
    if (v47)
    {

      v51 = v47;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v140[0] = v55;
        *v54 = 136315394;
        type metadata accessor for ParticipantTranslationRequest();
        v56 = v47;
        v57 = Set.description.getter();
        v59 = v58;

        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v140);

        *(v54 + 4) = v60;
        *(v54 + 12) = 2080;
        v138[0] = v56;
        v61 = v56;
        v62 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v63 = String.init<A>(reflecting:)();
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, v140);

        *(v54 + 14) = v65;
        _os_log_impl(&dword_1AEE80000, v52, v53, "[Translation] Failed to translate participants: %s, error: %s", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v55, -1, -1);
        MEMORY[0x1B2715BA0](v54, -1, -1);
      }

      else
      {
        v61 = v47;
      }

      if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
      {
        _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC14CopresenceCore30ParticipantTranslationResponseC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        v3 = v121;
      }

      else
      {

        v3 = MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v3 = v50;
    }

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    v68 = os_log_type_enabled(v66, v67);
    v122[1] = 0;
    if (v68)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v140[0] = v70;
      *v69 = 136315138;
      type metadata accessor for ParticipantTranslationResponse();
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type ParticipantTranslationResponse and conformance NSObject, MEMORY[0x1E69976B0], MEMORY[0x1E69E81B8]);
      v71 = Set.description.getter();
      v73 = v3;
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v140);

      *(v69 + 4) = v74;
      v3 = v73;
      _os_log_impl(&dword_1AEE80000, v66, v67, "[Translation] Translation results: %s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x1B2715BA0](v70, -1, -1);
      MEMORY[0x1B2715BA0](v69, -1, -1);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for ParticipantTranslationResponse();
      lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type ParticipantTranslationResponse and conformance NSObject, MEMORY[0x1E69976B0], MEMORY[0x1E69E81B8]);
      Set.Iterator.init(_cocoa:)();
      v3 = v140[0];
      v9 = v140[1];
      v75 = v140[2];
      v11 = v140[3];
      v76 = v140[4];
    }

    else
    {
      v11 = 0;
      v77 = -1 << *(v3 + 32);
      v9 = (v3 + 56);
      v75 = ~v77;
      v78 = -v77;
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      else
      {
        v79 = -1;
      }

      v76 = v79 & *(v3 + 56);
    }

    v122[2] = v75;
    v80 = (v75 + 64) >> 6;
    v124 = v3;
    v123 = v9;
    v135 = v80;
    while (1)
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        v86 = __CocoaSet.Iterator.next()();
        if (!v86 || (v138[4] = v86, type metadata accessor for ParticipantTranslationResponse(), swift_dynamicCast(), v85 = v138[0], v83 = v11, v84 = v76, !v138[0]))
        {
LABEL_59:
          outlined consume of [UUID : Conversation].Iterator._Variant(v3);
          v112 = Logger.logObject.getter();
          v113 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            v115 = swift_slowAlloc();
            v138[0] = v115;
            *v114 = 136315138;
            type metadata accessor for InternalParticipant(0);

            v116 = Dictionary.description.getter();
            v118 = v117;

            v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, v138);

            *(v114 + 4) = v119;
            _os_log_impl(&dword_1AEE80000, v112, v113, "[Translation] Updated internal participants after translation %s", v114, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v115);
            MEMORY[0x1B2715BA0](v115, -1, -1);
            MEMORY[0x1B2715BA0](v114, -1, -1);
          }

          return v139;
        }
      }

      else
      {
        v81 = v11;
        v82 = v76;
        v83 = v11;
        if (!v76)
        {
          while (1)
          {
            v83 = v81 + 1;
            if (__OFADD__(v81, 1))
            {
              break;
            }

            if (v83 >= v80)
            {
              goto LABEL_59;
            }

            v82 = v9[v83];
            ++v81;
            if (v82)
            {
              goto LABEL_44;
            }
          }

LABEL_64:
          __break(1u);
LABEL_65:
          swift_once();
          goto LABEL_2;
        }

LABEL_44:
        v84 = (v82 - 1) & v82;
        v85 = *(*(v3 + 48) + ((v83 << 9) | (8 * __clz(__rbit64(v82)))));
        if (!v85)
        {
          goto LABEL_59;
        }
      }

      v136 = v84;
      v87 = ParticipantTranslationResponse.aliasedIdentifier.getter();
      swift_beginAccess();
      v88 = specialized Dictionary.subscript.modify(v138, v87);
      v90 = v89;
      v91 = type metadata accessor for InternalParticipant(0);
      v92 = *(*(v91 - 8) + 48);
      if (v92(v90, 1, v91))
      {
        (v88)(v138, 0);
      }

      else
      {
        v133 = v88;
        v93 = ParticipantTranslationResponse.unaliasedIdentifier.getter();
        if (v94)
        {
          v93 = ParticipantTranslationResponse.aliasedIdentifier.getter();
        }

        v95 = v93;
        v130 = ParticipantTranslationResponse.handle.getter();
        v97 = v96;
        v132 = ParticipantTranslationResponse.stableDeviceIdentifier.getter();
        v131 = v98;
        v129 = ParticipantTranslationResponse.isNearby.getter() & v128;
        v99 = v127;
        v100 = v126;
        *&v126[*(v127 + 24)] = v95;
        UUID.init(_:)(v95);
        v101 = v130;
        if (!v97)
        {
          v101 = 0;
        }

        v102 = 0xE000000000000000;
        if (v97)
        {
          v102 = v97;
        }

        v103 = &v100[v99[5]];
        *v103 = v101;
        v103[1] = v102;
        v104 = &v100[v99[7]];
        v105 = v131;
        *v104 = v132;
        v104[1] = v105;
        v100[v99[8]] = v129 & 1;
        v100[v99[9]] = 0;
        v106 = v100;
        v107 = v125;
        outlined init with take of Participant(v106, v125, type metadata accessor for Participant);
        outlined assign with take of Participant(v107, v90, type metadata accessor for Participant);
        (v133)(v138, 0);
        v3 = v124;
        v9 = v123;
      }

      v80 = v135;
      swift_endAccess();
      v108 = ParticipantTranslationResponse.aliasedIdentifier.getter();
      swift_beginAccess();
      v109 = specialized Dictionary.subscript.modify(v138, v108);
      v111 = v110;
      if (!v92(v110, 1, v91))
      {
        *(v111 + *(v91 + 20)) = 1;
      }

      (v109)(v138, 0);
      swift_endAccess();

      v11 = v83;
      v76 = v136;
    }
  }

  return v139;
}

uint64_t closure #19 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    GroupSession.updateInternalActiveParticipants(_:)(partial apply for closure #1 in GroupSession.setInternalActiveParticipants(to:));
  }

  return result;
}

uint64_t closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:), v6, v5);
}

uint64_t closure #22 in GroupSession.init(id:groupUUID:initiatorHandle:activity:remoteEndpoint:queueLabel:locallyInitiated:lightweightPrimaryInitiated:localParticipant:isFirstJoin:publishQueue:distributionCount:unreliableMessengerConfig:sceneSessionIdentifier:topicManager:audioSessionAssertionManager:timestamps:supportsSceneAssociation:requiresParticipantTranslation:)()
{

  GroupSession.configureWithGroupActivityAssociationCoordinator()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t GroupSession.configureWithGroupActivityAssociationCoordinator()()
{
  v1 = *v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GroupActivityAssociationCoordinatorTable();
  v12[1] = static GroupActivityAssociationCoordinatorTable.shared.getter();
  v6 = direct field offset for GroupSession.id;
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v5, &v0[v6], v2);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = *(v1 + 80);
  *(v10 + 24) = *(v1 + 88);
  (*(v3 + 32))(v10 + v8, v5, v2);
  *(v10 + v9) = v7;

  GroupActivityAssociationCoordinatorTable.configureWithCoordinator(sessionID:_:)();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of URL?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfC15GroupActivities17SystemCoordinatorCSg_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of URL?(a3, v25 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of NSObject?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorCSgMd, &_s15GroupActivities17SystemCoordinatorCSgMR);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of NSObject?(a3, &_sScPSgMd, &_sScPSgMR);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities17SystemCoordinatorCSgMd, &_s15GroupActivities17SystemCoordinatorCSgMR);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *GroupSession.deinit()
{
  v1 = v0;
  v52 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v49 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.client);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136315138;
    v12 = GroupSession.description.getter();
    v14 = v13;

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, aBlock);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Deinit groupSession %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1B2715BA0](v11, -1, -1);
    MEMORY[0x1B2715BA0](v10, -1, -1);
  }

  else
  {
  }

  v16 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  v17 = *&v1[v16];
  if (v17)
  {
    v18 = *&v1[*(*v1 + 296)];
    aBlock[4] = partial apply for closure #1 in GroupSession.deinit;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_150;
    v48 = _Block_copy(aBlock);
    swift_retain_n();
    v47 = v18;
    v19 = v6;
    static DispatchQoS.unspecified.getter();
    v53 = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v20 = v49;
    v46 = v4;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
    v21 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v47;
    v23 = v48;
    MEMORY[0x1B27147B0](0, v19, v21, v48);
    _Block_release(v23);

    (*(v20 + 8))(v21, v2);
    (*(v50 + 8))(v19, v46);
  }

  v24 = *(*v1 + 288);
  swift_beginAccess();
  v25 = *&v1[v24];
  dispatch thunk of XPCClient.destroyConnection()();

  outlined destroy of Participant(&v1[direct field offset for GroupSession.initiator], type metadata accessor for Participant);

  v26 = direct field offset for GroupSession.id;
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 8))(&v1[v26], v27);

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*&v1[direct field offset for GroupSession.receivedDataHandler], *&v1[direct field offset for GroupSession.receivedDataHandler + 8]);

  v28 = *(*v1 + 208);
  v30 = *(v52 + 80);
  v29 = *(v52 + 88);
  type metadata accessor for GroupSession.State(255, v30, v29, v31);
  v32 = type metadata accessor for Published();
  v33 = *(*(v32 - 8) + 8);
  v33(&v1[v28], v32);
  v34 = *(*v1 + 216);
  v35 = type metadata accessor for Published();
  (*(*(v35 - 8) + 8))(&v1[v34], v35);
  v36 = *(*v1 + 224);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  (*(*(v37 - 8) + 8))(&v1[v36], v37);

  v38 = *(*v1 + 240);
  v40 = type metadata accessor for GroupSession.Timestamps(0, v30, v29, v39);
  (*(*(v40 - 8) + 8))(&v1[v38], v40);
  v41 = *(*v1 + 248);
  type metadata accessor for GroupSession.MessageQueue(255, v30, v29, v42);
  v43 = type metadata accessor for Published();
  (*(*(v43 - 8) + 8))(&v1[v41], v43);

  __swift_destroy_boxed_opaque_existential_0(&v1[*(*v1 + 320)]);

  outlined destroy of NSObject?(&v1[*(*v1 + 336)], &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);

  outlined destroy of NSObject?(&v1[*(*v1 + 384) + 8], &_sSDys6UInt64V15GroupActivities19InternalParticipantVGMd, &_sSDys6UInt64V15GroupActivities19InternalParticipantVGMR);

  v33(&v1[*(*v1 + 400)], v32);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*&v1[*(*v1 + 416)], *&v1[*(*v1 + 416) + 8]);
  return v1;
}

void closure #1 in GroupSession.deinit(uint64_t a1)
{
  (*(**(a1 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer) + 512))();
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.playback);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1AEE80000, oslog, v2, "Cleaned up playback syncer in deinit", v3, 2u);
    MEMORY[0x1B2715BA0](v3, -1, -1);
  }
}

Swift::Void __swiftcall GroupSession.join()()
{
  v1 = v0;
  v2 = *v0;
  v44 = *(*v0 + 80);
  v42 = *(v44 - 8);
  (MEMORY[0x1EEE9AC00])();
  v4 = &v35 - v3;
  v39 = type metadata accessor for SharePlayLatencyLogger.Event();
  v41 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v6 = *(v46 - 8);
  v7 = MEMORY[0x1EEE9AC00](v46);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v35 - v9;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.default);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v37 = v2;
    v15 = v14;
    aBlock[0] = v14;
    *v13 = 136315138;

    v16 = GroupSession.description.getter();
    v36 = v6;
    v18 = v17;

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, aBlock);
    v6 = v36;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1AEE80000, v11, v12, "Application called join on %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v20 = v15;
    v2 = v37;
    MEMORY[0x1B2715BA0](v20, -1, -1);
    MEMORY[0x1B2715BA0](v13, -1, -1);
  }

  else
  {
  }

  v21 = v41;
  v22 = v38;
  v23 = v39;
  (*(v41 + 104))(v38, *MEMORY[0x1E6997540], v39);
  GroupSession.activity.getter();
  v24 = *(v2 + 88);
  v25 = v44;
  v26 = v45;
  static SharePlayLatencyLogger.beginInterval<A>(for:activity:)(v22, v4, v44, v24);
  (*(v42 + 8))(v4, v25);
  (*(v21 + 8))(v22, v23);
  v27 = *(v1 + *(*v1 + 296));
  v28 = v43;
  v29 = v46;
  (*(v6 + 16))(v43, v26, v46);
  v30 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v25;
  *(v31 + 3) = v24;
  *(v31 + 4) = v1;
  (*(v6 + 32))(&v31[v30], v28, v29);
  v32 = swift_allocObject();
  *(v32 + 16) = partial apply for closure #1 in GroupSession.join();
  *(v32 + 24) = v31;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_160;
  v33 = _Block_copy(aBlock);

  dispatch_sync(v27, v33);
  _Block_release(v33);
  (*(v6 + 8))(v26, v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t closure #1 in GroupSession.join()(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMd, &_s14CopresenceCore22SharePlayLatencyLoggerV8IntervalVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SharePlayLatencyLogger.Interval();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a2, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = *(*a1 + 336);
  swift_beginAccess();
  outlined assign with take of SharePlayLatencyLogger.Interval?(v7, a1 + v10);
  v11 = swift_endAccess();
  if (*(v4 + 80) == &type metadata for StaticGroupActivity)
  {
    v13 = 0;
  }

  else
  {
    v12 = [objc_opt_self() sharedInstance];
    v13 = [v12 opaqueSessionID];
  }

  MEMORY[0x1EEE9AC00](v11);
  *(&v16 - 2) = a1;
  *(&v16 - 2) = v13;
  *(&v16 - 4) = v14;
  return GroupSession.invalidationBlock(execute:)(partial apply for closure #1 in closure #1 in GroupSession.join());
}

void closure #1 in closure #1 in GroupSession.join()(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *a1;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v5 + 288);
  swift_beginAccess();
  v12 = *(a1 + v11);
  v13 = XPCClient.queue.getter();

  v28 = a1;
  v29 = a2;
  v30 = BYTE4(a2) & 1;
  OS_dispatch_queue.sync<A>(execute:)();

  if (!v2)
  {
    v14 = *(v6 + 80);
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = (*(*(v6 + 88) + 40))(v15);

    if (v16)
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.default);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_14;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not creating AVAudioSession because ScreenSharing doesn't support it";
    }

    else
    {
      if (v14 != &type metadata for StaticGroupActivity)
      {
        v22 = *(v8 + 16);
        v22(v10, a1 + direct field offset for GroupSession.id, v7);
        outlined init with copy of Transferable(a1 + *(*a1 + 320), v31);
        type metadata accessor for AVAudioSessionAssertion(0);
        v23 = swift_allocObject();
        v22((v23 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_id), v10, v7);
        outlined init with copy of Transferable(v31, v23 + OBJC_IVAR____TtC15GroupActivities23AVAudioSessionAssertion_manager);
        v24 = v32;
        v25 = v33;
        __swift_project_boxed_opaque_existential_1(v31, v32);
        (*(v25 + 8))(v10, v24, v25);
        (*(v8 + 8))(v10, v7);
        __swift_destroy_boxed_opaque_existential_0(v31);
        *(a1 + *(*a1 + 328)) = v23;

        return;
      }

      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Log.default);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_14;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not creating AVAudioSession because static group activities don't support it";
    }

    _os_log_impl(&dword_1AEE80000, v18, v19, v21, v20, 2u);
    MEMORY[0x1B2715BA0](v20, -1, -1);
LABEL_14:
  }
}

uint64_t closure #1 in closure #1 in closure #1 in GroupSession.join()(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = v3;
  v7 = v5;

  XPCClient.withSynchronousHost<A>(body:errorHandler:)();

  swift_beginAccess();
  v8 = *(v3 + 16);
  if (v8)
  {
    swift_willThrow();
    v9 = v8;
  }
}

void closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.join()(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if ((a2 & 0x100000000) != 0)
  {
    v7.super.super.isa = 0;
  }

  else
  {
    v7.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.join();
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed CPDataCryptor?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_611;
  v9 = _Block_copy(v10);

  [v6 joinWithAudioSessionID:v7.super.super.isa completion:v9];
  _Block_release(v9);
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.join()(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v7 = *a3;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26 = a3;
      v27[0] = v12;
      *v11 = 136315138;
      v14 = type metadata accessor for GroupSession(0, *(v7 + 80), *(v7 + 88), v13);
      v15 = >> prefix<A>(_:)(&v26, v14);
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v27);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_1AEE80000, v9, v10, "Error joining session %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B2715BA0](v12, -1, -1);
      MEMORY[0x1B2715BA0](v11, -1, -1);
    }

    swift_beginAccess();
    v18 = *(a4 + 16);
    *(a4 + 16) = a2;
    v19 = a2;
  }

  else
  {
    v20 = *(a3 + direct field offset for GroupSession.linkManager);
    v21 = MEMORY[0x1E69E7D40];
    v22 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x170);
    v23 = swift_unknownObjectRetain();
    v24 = v22(v23);
    v25 = (*((*v21 & *v20) + 0x230))(v24);
    GroupSession.logAttachmentEvent(report:reportEvent:)(v25, 0xD000000000000025, 0x80000001AF01AF60);
  }
}

uint64_t specialized GroupSession.logAttachmentEvent(report:reportEvent:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v28 = a6;
  v7 = v6;
  v26 = a2;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(*v6 + 288);
  swift_beginAccess();
  v17 = *(v7 + v16);
  v18 = XPCClient.queue.getter();

  v19 = swift_allocObject();
  v21 = v26;
  v20 = v27;
  v19[2] = v7;
  v19[3] = v21;
  v19[4] = a3;
  v19[5] = a1;
  aBlock[4] = v20;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v28;
  v22 = _Block_copy(aBlock);

  v23 = a1;
  static DispatchQoS.unspecified.getter();
  v31 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v15, v12, v22);
  _Block_release(v22);

  (*(v30 + 8))(v12, v10);
  (*(v13 + 8))(v15, v29);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed CPDataCryptor?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id closure #2 in closure #1 in closure #1 in closure #1 in GroupSession.join()(void *a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);

  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21[0] = v10;
    *v9 = 136315394;
    v11 = GroupSession.description.getter();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v21);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1AEE80000, v7, v8, "%s connection error %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v19 = *(a3 + 16);
  *(a3 + 16) = a1;

  return a1;
}

Swift::Void __swiftcall GroupSession.leave()()
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315138;

    v7 = GroupSession.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v14);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Application called leave on %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  else
  {
  }

  v11 = *(v1 + *(*v1 + 296));
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in GroupSession.leave();
  *(v12 + 24) = v1;
  v14[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_173;
  v13 = _Block_copy(v14);

  dispatch_sync(v11, v13);
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in GroupSession.leave()(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = XPCClient.queue.getter();

  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #1 in closure #1 in GroupSession.leave();
  *(v5 + 24) = a1;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_595;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v4, v6);

  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a1 + *(*a1 + 328)) = 0;
  }

  return result;
}

void specialized closure #1 in GroupSession.capabilities.didset(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 288);
  swift_beginAccess();
  v4 = *(a1 + v3);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.leave()(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.leave();
  v4[5] = a2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v4[3] = &block_descriptor_598;
  v3 = _Block_copy(v4);

  [v2 leaveWithCompletion_];
  _Block_release(v3);
}

void closure #1 in closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.leave()(void *a1, uint64_t *a2)
{
  if (a1)
  {
    v4 = *a2;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.default);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v16 = a2;
      v17[0] = v9;
      *v8 = 136315138;
      v10 = >> prefix<A>(_:)(&v16, v4);
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v17);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v6, v7, "Error leaving session %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B2715BA0](v9, -1, -1);
      MEMORY[0x1B2715BA0](v8, -1, -1);
    }

    GroupSession.invalidate(reason:)(a1);
  }

  else
  {
    v13 = (*((*MEMORY[0x1E69E7D40] & **(a2 + direct field offset for GroupSession.linkManager)) + 0x238))();
    GroupSession.logAttachmentEvent(report:reportEvent:)(v13, 0xD000000000000027, 0x80000001AF01A5E0);

    v14 = *(*a2 + 288);
    swift_beginAccess();
    v15 = *(a2 + v14);
    dispatch thunk of XPCClient.destroyConnection()();
  }
}

Swift::Void __swiftcall GroupSession.end()()
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136315138;

    v7 = GroupSession.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v14);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Application called end on %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  else
  {
  }

  v11 = *(v1 + *(*v1 + 296));
  v12 = swift_allocObject();
  *(v12 + 16) = partial apply for closure #1 in GroupSession.end();
  *(v12 + 24) = v1;
  v14[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v14[5] = v12;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed () -> ();
  v14[3] = &block_descriptor_180;
  v13 = _Block_copy(v14);

  dispatch_sync(v11, v13);
  _Block_release(v13);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v1 + *(*v1 + 328)) = 0;
  }
}

uint64_t closure #1 in GroupSession.end()(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = XPCClient.queue.getter();

  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #1 in GroupSession.end();
  *(v5 + 24) = a1;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_588;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v4, v6);

  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall GroupSession.requestForegroundPresentation()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.default);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v3;
    v14 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;

    v15 = GroupSession.description.getter();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, aBlock);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1AEE80000, v10, v11, "Application called requestForegroundPresentation on %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v19 = v14;
    v3 = v21;
    MEMORY[0x1B2715BA0](v19, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {
  }

  aBlock[4] = partial apply for closure #1 in GroupSession.requestForegroundPresentation();
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_183;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v8, v5, v20);
  _Block_release(v20);
  (*(v3 + 8))(v5, v2);
  (*(v22 + 8))(v8, v23);
}

uint64_t closure #1 in GroupSession.requestForegroundPresentation()(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = XPCClient.queue.getter();

  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in closure #1 in GroupSession.requestForegroundPresentation();
  *(v5 + 24) = a1;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_581;
  v6 = _Block_copy(aBlock);

  dispatch_sync(v4, v6);

  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in GroupSession.end()(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 288);
  swift_beginAccess();
  v4 = *(a1 + v3);
  XPCClient.withHost(body:errorHandler:)();
}

Swift::Void __swiftcall GroupSession.updateParticipants(participants:)(Swift::OpaquePointer participants)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v8 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[1] = *&v2[*(*v2 + 296)];
  v11 = swift_allocObject();
  v11[2]._rawValue = v2;
  v11[3]._rawValue = participants._rawValue;
  aBlock[4] = partial apply for closure #1 in GroupSession.updateParticipants(participants:);
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_189;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v15 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v10, v7, v12);
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v14);
}

uint64_t closure #1 in GroupSession.updateParticipants(participants:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = *(*a1 + 344);
  if (*(a1 + v7))
  {

    MEMORY[0x1B27144E0](v8, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;
  v10[5] = a1;

  *(a1 + v7) = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in closure #1 in GroupSession.updateParticipants(participants:), v10);
}

uint64_t closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in GroupSession.updateParticipants(participants:), 0, 0);
}

uint64_t closure #1 in closure #1 in GroupSession.updateParticipants(participants:)()
{
  v0[20] = MEMORY[0x1E69E7CC0];
  v1 = v0[21];
  v2 = *(v1 + 16);
  v0[24] = v2;
  if (v2)
  {
    v0[25] = 0;
    v3 = v0[23];
    outlined init with copy of ActivityExternalParticipant(v1 + 32, (v0 + 2));
    v4 = v0[8];
    v5 = v0[9];
    __swift_project_boxed_opaque_existential_1(v0 + 5, v4);
    v6 = type metadata accessor for UTType();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_task_alloc();
    v0[26] = v7;
    *v7 = v0;
    v7[1] = closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
    v8 = v0[23];
    v9 = v4;
    v10 = v5;

    return MEMORY[0x1EEDBF598](v8, v9, v10);
  }

  static Task<>.checkCancellation()();
  v11 = v0[22];
  v12 = *(*v11 + 288);
  swift_beginAccess();
  v13 = *(v11 + v12);
  v14 = XPCClient.queue.getter();

  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = v0 + 20;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
  *(v16 + 24) = v15;
  v0[15] = thunk for @callee_guaranteed () -> ()partial apply;
  v0[16] = v16;
  v0[11] = MEMORY[0x1E69E9820];
  v0[12] = 1107296256;
  v0[13] = thunk for @escaping @callee_guaranteed () -> ();
  v0[14] = &block_descriptor_574;
  v17 = _Block_copy(v0 + 11);

  dispatch_sync(v14, v17);

  _Block_release(v17);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    return MEMORY[0x1EEDBF598](v8, v9, v10);
  }

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(partial apply for closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:), v15);

  v18 = v0[1];

  return v18();
}

{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.default);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Failed to unwrap participant info as Data", v4, 2u);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  outlined destroy of ActivityExternalParticipant(v0 + 16);

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(0, 0);

  v5 = *(v0 + 8);

  return v5();
}

{
  v1 = *(v0 + 80);
  v3 = *(v0 + 216);
  v2 = *(v0 + 224);
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = objc_allocWithZone(MEMORY[0x1E69D8BE0]);
  v8 = outlined copy of Data._Representation(v3, v2);
  v9 = MEMORY[0x1B2714130](v5, v6, v8);
  v10 = Data._bridgeToObjectiveC()().super.isa;
  [v7 initWithIdentifier:isa displayName:v9 info:v10 status:v1];

  outlined consume of Data._Representation(v3, v2);
  MEMORY[0x1B27142A0]();
  if (*((*(v0 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v12 = *(v0 + 216);
  v11 = *(v0 + 224);
  v13 = *(v0 + 192);
  v14 = *(v0 + 200) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  outlined consume of Data._Representation(v12, v11);
  outlined destroy of ActivityExternalParticipant(v0 + 16);
  if (v14 != v13)
  {
    v18 = *(v0 + 200);
    *(v0 + 200) = v18 + 1;
    v19 = *(v0 + 184);
    outlined init with copy of ActivityExternalParticipant(*(v0 + 168) + 72 * v18 + 104, v0 + 16);
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);
    __swift_project_boxed_opaque_existential_1((v0 + 40), v20);
    v22 = type metadata accessor for UTType();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
    v23 = swift_task_alloc();
    *(v0 + 208) = v23;
    *v23 = v0;
    v23[1] = closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
    v24 = *(v0 + 184);
    v25 = v20;
    v26 = v21;

    return MEMORY[0x1EEDBF598](v24, v25, v26);
  }

  v15 = *(v0 + 232);
  static Task<>.checkCancellation()();
  if (!v15)
  {
    v27 = *(v0 + 176);
    v28 = *(*v27 + 288);
    swift_beginAccess();
    v29 = *(v27 + v28);
    v30 = XPCClient.queue.getter();

    v17 = swift_allocObject();
    *(v17 + 16) = v27;
    *(v17 + 24) = v0 + 160;
    v31 = swift_allocObject();
    v16 = partial apply for closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
    *(v31 + 16) = partial apply for closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
    *(v31 + 24) = v17;
    *(v0 + 120) = thunk for @callee_guaranteed () -> ()partial apply;
    *(v0 + 128) = v31;
    *(v0 + 88) = MEMORY[0x1E69E9820];
    *(v0 + 96) = 1107296256;
    *(v0 + 104) = thunk for @escaping @callee_guaranteed () -> ();
    *(v0 + 112) = &block_descriptor_574;
    v32 = _Block_copy((v0 + 88));

    dispatch_sync(v30, v32);

    _Block_release(v32);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }

    __break(1u);
    return MEMORY[0x1EEDBF598](v24, v25, v26);
  }

  v16 = 0;
  v17 = 0;
LABEL_10:

  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v16, v17);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[27] = a1;
  v5[28] = a2;
  v5[29] = v2;

  v6 = v4[23];
  if (v2)
  {

    outlined destroy of NSObject?(v6, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v7 = closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
  }

  else
  {
    outlined destroy of NSObject?(v6, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v7 = closure #1 in closure #1 in GroupSession.updateParticipants(participants:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 288);
  swift_beginAccess();
  v4 = *(a1 + v3);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #2 in closure #1 in closure #1 in GroupSession.updateParticipants(participants:)(void **a1, uint64_t *a2)
{
  v2 = *a1;
  type metadata accessor for TUExternalParticipant();

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 updateParticipantsInfoFor_];
}

double GroupSession.registerParticipantsInvitationUpdate(completion:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(*v2 + 416));
  v6 = *v4;
  v5 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v6, v5);

  return result;
}

uint64_t closure #1 in closure #1 in GroupSession.updateActivity(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v27 - v5;
  v7 = type metadata accessor for AnyGroupActivity(0);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v27 - v10);
  GroupSession.state.getter();
  v12 = v33;
  v31 = 1;
  v32 = v33;
  v13 = *(v2 + 88);
  v14 = static GroupSession.State.== infix(_:_:)(&v32, &v31);
  outlined consume of GroupSession<A>.State<A>(v12);
  if (v14)
  {
    GroupSession.activity.getter();
    v15 = v30;
    GroupActivity.eraseToAnyGroupActivity()(v3, v13, v11);
    result = (*(v4 + 8))(v6, v3);
    if (!v15)
    {
      v17 = *(*a1 + 424);
      v18 = *(a1 + v17);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        *(a1 + v17) = v20;
        v21 = v11;
        v22 = v11;
        v23 = v29;
        outlined init with copy of Participant(v22, v29, type metadata accessor for AnyGroupActivity);
        v24 = (*(v28 + 80) + 16) & ~*(v28 + 80);
        v25 = swift_allocObject();
        outlined init with take of Participant(v23, v25 + v24, type metadata accessor for AnyGroupActivity);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR);
        swift_allocObject();
        v33 = Future.init(_:)();
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Future<TUConversationActivity, Error> and conformance Future<A, B>, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMd, &_s7Combine6FutureCySo22TUConversationActivityCs5Error_pGMR, MEMORY[0x1E695C038]);
        swift_retain_n();
        Publisher.sinkOnce(_:onError:)();

        return outlined destroy of Participant(v21, type metadata accessor for AnyGroupActivity);
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    swift_allocError();
    *v26 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in GroupSession.updateActivity(_:)(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(*a2 + 288);
  swift_beginAccess();
  v12 = *(a2 + v11);
  v13 = XPCClient.queue.getter();

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = v10;
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.updateActivity(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_701;
  v15 = _Block_copy(aBlock);

  v16 = v10;
  static DispatchQoS.unspecified.getter();
  v26 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v9, v6, v15);
  _Block_release(v15);

  (*(v25 + 8))(v6, v4);
  (*(v23 + 8))(v9, v24);

  v18 = *(*a2 + 424);
  v19 = *(a2 + v18);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + v18) = v21;
  }

  return result;
}

void closure #2 in closure #1 in closure #1 in GroupSession.updateActivity(_:)(void **a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = *a1;
  v11 = *(v4 + 424);
  v12 = *(a2 + v11);
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a2 + v11) = v14;
    if (one-time initialization token for default == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.default);

  v16 = v10;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v19 = 136315394;
    GroupSession.activity.getter();
    (*(*(v5 - 8) + 56))(v9, 0, 1, v5);
    v20 = >> prefix<A>(_:)(v9, v5);
    v22 = v21;
    (*(v7 + 8))(v9, v6);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v34);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v33 = v10;
    v24 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v25 = String.init<A>(reflecting:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v34);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_1AEE80000, v17, v18, "Failed to set activity %s error: %s", v19, 0x16u);
    v28 = v32;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v28, -1, -1);
    MEMORY[0x1B2715BA0](v19, -1, -1);
  }

  lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
  v29 = swift_allocError();
  *v30 = 3;
  GroupSession.invalidate(reason:)(v29);
}

void specialized closure #1 in GroupSession.updatePublicState()(uint64_t a1)
{
  type metadata accessor for AnyGroupActivity(0);
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type AnyGroupActivity and conformance AnyGroupActivity, type metadata accessor for AnyGroupActivity, &protocol conformance descriptor for AnyGroupActivity);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v20 == 1)
  {
    if (v19 == 1)
    {
      return;
    }

LABEL_6:
    outlined consume of GroupSession<A>.State<A>(v19);
    goto LABEL_8;
  }

  if (!v20)
  {
    if (!v19)
    {
      return;
    }

    goto LABEL_6;
  }

  outlined consume of GroupSession<A>.State<A>(v20);
  outlined consume of GroupSession<A>.State<A>(v19);
  if (v19 >= 2)
  {
    return;
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](v2);
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = v20;
  if (!v20)
  {
LABEL_18:
    MEMORY[0x1EEE9AC00](v11);
    v16 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v16);
    swift_getKeyPath();
    static Published.subscript.getter();

    MEMORY[0x1EEE9AC00](v17);
    v18 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v18);
    swift_getKeyPath();

    static Published.subscript.setter();
    return;
  }

  if (v20 != 1)
  {
    outlined consume of GroupSession<A>.State<A>(v20);
    goto LABEL_18;
  }

  v11 = (*((*MEMORY[0x1E69E7D40] & **(a1 + direct field offset for GroupSession.linkManager)) + 0x198))(1, v4, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    goto LABEL_18;
  }

  v11 = TUSimulatedModeEnabled();
  if (v11)
  {
    goto LABEL_18;
  }

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.default);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1AEE80000, v13, v14, "Internal state has joined but waiting for PubSubTopic to subscribe", v15, 2u);
    MEMORY[0x1B2715BA0](v15, -1, -1);
  }
}

void closure #1 in GroupSession.updatePublicState()(uint64_t a1)
{
  GroupSession.internalState.getter();
  v2 = v14;
  v13 = v14;
  GroupSession.state.getter();
  v3 = v12;
  v11 = v12;
  v4 = static GroupSession.State.== infix(_:_:)(&v13, &v11);
  outlined consume of GroupSession<A>.State<A>(v3);
  outlined consume of GroupSession<A>.State<A>(v2);
  if ((v4 & 1) == 0)
  {
    GroupSession.internalState.getter();
    v5 = v14;
    v12 = 1;
    v13 = v14;
    v6 = static GroupSession.State.== infix(_:_:)(&v13, &v12);
    outlined consume of GroupSession<A>.State<A>(v5);
    if (v6 & 1) == 0 || ((*((*MEMORY[0x1E69E7D40] & **(a1 + direct field offset for GroupSession.linkManager)) + 0x198))() & 1) != 0 || (TUSimulatedModeEnabled())
    {
      GroupSession.internalState.getter();
      GroupSession.state.setter(&v14);
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      __swift_project_value_buffer(v7, static Log.default);
      oslog = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1AEE80000, oslog, v8, "Internal state has joined but waiting for PubSubTopic to subscribe", v9, 2u);
        MEMORY[0x1B2715BA0](v9, -1, -1);
      }
    }
  }
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = type metadata accessor for UUID();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = specialized Dictionary._Variant.subscript.modify(v4, v9);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t closure #1 in GroupSession.updateNearbyParticipants(_:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Log.default);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v21 = v12;
      *v11 = 136315138;
      v13 = Set.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v21);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1AEE80000, v9, v10, "[Nearby] Received new nearby participants: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1B2715BA0](v12, -1, -1);
      MEMORY[0x1B2715BA0](v11, -1, -1);
    }

    outlined init with copy of Participant(*(v7 + direct field offset for GroupSession.linkManager) + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v5, type metadata accessor for Participant);
    v16 = *&v5[*(v3 + 24)];
    outlined destroy of Participant(v5, type metadata accessor for Participant);
    v21 = a2;

    v17 = specialized Set._Variant.insert(_:)(&v20, v16);
    v18 = v21;
    MEMORY[0x1EEE9AC00](v17);
    *(&v19 - 2) = v18;
    GroupSession.updateInternalActiveParticipants(_:)(partial apply for closure #1 in closure #1 in GroupSession.updateNearbyParticipants(_:));
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSession.updateNearbyParticipants(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v3;

  v11 = 0;
  while (v7)
  {
    v12 = v11;
LABEL_11:
    v13 = *(*(v24 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));
    if (*(a2 + 16) && (v14 = MEMORY[0x1B2715020](*(a2 + 40), v13), v15 = -1 << *(a2 + 32), v16 = v14 & ~v15, ((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
    {
      v17 = ~v15;
      do
      {
        v18 = *(*(a2 + 48) + 8 * v16);
        v19 = v18 == v13;
        if (v18 == v13)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
      }

      while (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
    }

    else
    {
      v19 = 0;
    }

    v7 &= v7 - 1;
    v20 = specialized Dictionary.subscript.modify(v25, v13);
    v22 = v21;
    v23 = type metadata accessor for InternalParticipant(0);
    if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
    {
      *(v22 + *(type metadata accessor for Participant(0) + 32)) = v19;
    }

    result = (v20)(v25, 0);
    v11 = v12;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in GroupSession.requestEncryptionKey(for:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(a1 + v4);

  v6 = v5;

  v7 = XPCClient.queue.getter();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for specialized closure #1 in closure #1 in closure #1 in GroupSession.requestEncryptionKey(for:);
  *(v9 + 24) = v8;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_485;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v7, v10);

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in GroupSession.requestEncryptionKey(for:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(v3 + v4);
  v6 = XPCClient.queue.getter();

  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in closure #1 in closure #1 in GroupSession.requestEncryptionKey(for:);
  *(v8 + 24) = v7;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_622;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.updateActivity(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(a1 + v4);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in closure #1 in GroupSession.requestEncryptionKey(for:)(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.default);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    if (a2)
    {
      v9 = MEMORY[0x1B27142D0](a2, MEMORY[0x1E69E76D8]);
      v11 = v10;
    }

    else
    {
      v11 = 0xE500000000000000;
      v9 = 0x3E6C696E3CLL;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Requesting encryption keys for participantIDs=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  if (a2)
  {
    v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  [v3 requestEncryptionKeysFor_];
}

uint64_t closure #1 in GroupSession.configureWithGroupActivityAssociationCoordinator()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a3;
  v27 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for groupActivityAssociation != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.groupActivityAssociation);
  (*(v9 + 16))(v11, a2, v8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v26[0] = a5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v28[0] = v17;
    *v16 = 136315138;
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    (*(v9 + 8))(v11, v8);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v28);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1AEE80000, v13, v14, "Configuring group session %s with the spatial template anchor coordinator.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x1B2715BA0](v17, -1, -1);
    v22 = v16;
    a5 = v26[0];
    MEMORY[0x1B2715BA0](v22, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v24 = swift_allocObject();
  v24[2] = v27;
  v24[3] = a5;
  v24[4] = v23;

  dispatch thunk of GroupActivityAssociationCoordinating.setOnGroupActivityAssociationChangeHandler(_:)();
}

uint64_t closure #1 in closure #1 in GroupSession.configureWithGroupActivityAssociationCoordinator()(Swift::OpaquePointer a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (one-time initialization token for groupActivityAssociation != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.groupActivityAssociation);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = type metadata accessor for GroupActivityAssociation();
      v10 = MEMORY[0x1B27142D0](a1._rawValue, v9);
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v5, v6, "Group session received new scene association: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    GroupSession.setGroupActivityAssociations(_:)(a1);
  }

  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance GroupSession<A>@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void GroupSession.sendData(_:to:messageTypeIdentifier:reliability:completion:)(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6, void (*a7)(void), uint64_t a8)
{
  v9 = v8;
  v68 = a4;
  v58 = type metadata accessor for Participant(0);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v55[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for OSSignpostID();
  v66 = *(v18 - 8);
  v67 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v55[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for OSSignposter();
  v64 = *(v20 - 8);
  v65 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = *a3;
  v62 = *a6;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Log.default);
  outlined copy of Data._Representation(a1, a2);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  v26 = os_log_type_enabled(v24, v25);
  v60 = a7;
  v61 = a8;
  v59 = a5;
  if (!v26)
  {
    outlined consume of Data._Representation(a1, a2);

    goto LABEL_16;
  }

  v27 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v71 = v28;
  *v27 = 134218242;
  v29 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v29 != 2)
    {
      v30 = 0;
      goto LABEL_15;
    }

    v32 = *(a1 + 16);
    v31 = *(a1 + 24);
    v33 = __OFSUB__(v31, v32);
    v30 = v31 - v32;
    if (!v33)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    LODWORD(v30) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v30 = v30;
    goto LABEL_15;
  }

  if (v29)
  {
    goto LABEL_12;
  }

  v30 = BYTE6(a2);
LABEL_15:
  *(v27 + 4) = v30;
  outlined consume of Data._Representation(a1, a2);
  *(v27 + 12) = 2080;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v34 = dispatch thunk of CustomStringConvertible.description.getter();
  v36 = v35;

  v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v71);

  *(v27 + 14) = v37;
  _os_log_impl(&dword_1AEE80000, v24, v25, "Request to send data of length %ld over %s ", v27, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v28);
  MEMORY[0x1B2715BA0](v28, -1, -1);
  MEMORY[0x1B2715BA0](v27, -1, -1);

  a7 = v60;
  a8 = v61;
  a5 = v59;
LABEL_16:
  v38 = v69;
  static Signposts.messenger.getter();
  static Signposts.messengerSignpostIdentifier(forPayload:)();
  outlined copy of Data._Representation(a1, a2);
  lazy protocol witness table accessor for type Int and conformance Int();
  default argument 1 of OSLogInterpolation.appendInterpolation<A>(_:format:align:privacy:attributes:)();
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v39, v40);
  swift_retain_n();
  v41 = OSSignposter.logHandle.getter();
  v56 = static os_signpost_type_t.event.getter();
  outlined consume of Data._Representation(a1, a2);
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    (*(v66 + 8))(v38, v67);
    (*(v64 + 8))(v22, v65);
LABEL_28:
    v71 = v63;
    v70 = v62;
    LinkManager.sendData(_:to:messageTypeIdentifier:reliability:completion:)(a1, a2, &v71, v68, a5, &v70, a7, a8);
    return;
  }

  v42 = swift_slowAlloc();
  v43 = swift_slowAlloc();
  v71 = v43;
  *v42 = 134218498;
  v44 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v44 != 2)
    {
      v45 = 0;
      goto LABEL_27;
    }

    v47 = *(a1 + 16);
    v46 = *(a1 + 24);
    v33 = __OFSUB__(v46, v47);
    v45 = v46 - v47;
    if (!v33)
    {
      goto LABEL_27;
    }

    goto LABEL_30;
  }

  if (!v44)
  {
    v45 = BYTE6(a2);
LABEL_27:
    *(v42 + 4) = v45;
    *(v42 + 12) = 2080;
    type metadata accessor for UUID();
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v71);

    *(v42 + 14) = v50;
    *(v42 + 22) = 2048;
    v51 = v57;
    outlined init with copy of Participant(*(v9 + direct field offset for GroupSession.linkManager) + OBJC_IVAR____TtC15GroupActivities11LinkManager_localParticipant, v57, type metadata accessor for Participant);
    v52 = *&v51[*(v58 + 24)];
    outlined destroy of Participant(v51, type metadata accessor for Participant);

    *(v42 + 24) = v52;

    v53 = v69;
    v54 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1AEE80000, v41, v56, v54, "group-session-messenger-send", "payload-size=%{xcode:size-in-bytes}ld topic=%s participantID=%llu", v42, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x1B2715BA0](v43, -1, -1);
    MEMORY[0x1B2715BA0](v42, -1, -1);

    (*(v66 + 8))(v53, v67);
    (*(v64 + 8))(v22, v65);
    a7 = v60;
    a8 = v61;
    a5 = v59;
    goto LABEL_28;
  }

  LODWORD(v45) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v45 = v45;
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
}

uint64_t protocol witness for AnyTransportSession.uploadAttachment(id:attachment:developerMetadata:) in conformance GroupSession<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return GroupSession.uploadAttachment(id:attachment:developerMetadata:)(a1, a2, a3, a4);
}

uint64_t GroupSession.uploadAttachment(id:attachment:developerMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  v6 = type metadata accessor for UUID();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = type metadata accessor for String.Encoding();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  v8 = type metadata accessor for URLResourceValues();
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v5[36] = v10;
  v5[37] = *(v10 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSession.uploadAttachment(id:attachment:developerMetadata:), 0, 0);
}

uint64_t GroupSession.uploadAttachment(id:attachment:developerMetadata:)()
{
  v71 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[40];
  v3 = v0[36];
  v2 = v0[37];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Log.default);
  v8 = v3;
  v9 = *(v2 + 16);
  v9(v1, v6, v8);
  outlined copy of Data?(v5, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  outlined consume of Data?(v5, v4);
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[40];
  v15 = v0[36];
  v14 = v0[37];
  if (v12)
  {
    v68 = v11;
    v16 = v0[34];
    v17 = v0[35];
    v18 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v70[0] = v69;
    *v18 = 136315394;
    v9(v17, v13, v15);
    (*(v14 + 56))(v17, 0, 1, v15);
    outlined init with copy of URL?(v17, v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v22 = v0[38];
      v21 = v0[39];
      v24 = v0[36];
      v23 = v0[37];
      (*(v23 + 32))(v21, v0[34], v24);
      v9(v22, v21, v24);
      v20 = String.init<A>(reflecting:)();
      v19 = v25;
      (*(v23 + 8))(v21, v24);
    }

    v26 = v0[40];
    v28 = v0[36];
    v27 = v0[37];
    v29 = v0[19];
    outlined destroy of NSObject?(v0[35], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v27 + 8))(v26, v28);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v19, v70);

    *(v18 + 4) = v30;
    *(v18 + 12) = 2080;
    if (v29 >> 60 == 15)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
    }

    else
    {
      v33 = v0[18];
      v34 = v0[19];
      v0[13] = v33;
      v0[14] = v34;
      outlined copy of Data._Representation(v33, v34);
      v32 = String.init<A>(reflecting:)();
      v31 = v35;
    }

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, v70);

    *(v18 + 14) = v36;
    _os_log_impl(&dword_1AEE80000, v10, v68, "Request to upload attachment: %s, developerMetadata: %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v69, -1, -1);
    MEMORY[0x1B2715BA0](v18, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v13, v15);
  }

  if ([*(*(v0[20] + direct field offset for GroupSession.topicManager) + OBJC_IVAR____TtC15GroupActivities12TopicManager_featureFlags) sharePlayAttachmentLedgerEnabled])
  {
    static Date.now.getter();
    v37 = swift_task_alloc();
    v0[41] = v37;
    *v37 = v0;
    v37[1] = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
    v38 = v0[18];
    v39 = v0[19];
    v41 = v0[16];
    v40 = v0[17];

    return LinkManager.uploadAttachment(id:file:developerMetadata:)(v41, v40, v38, v39);
  }

  else
  {
    v44 = v0[25];
    v43 = v0[26];
    v45 = v0[24];
    UUID.uuidString.getter();
    static String.Encoding.utf8.getter();
    v46 = String.data(using:allowLossyConversion:)();
    v48 = v47;

    v0[43] = v46;
    v0[44] = v48;
    (*(v44 + 8))(v43, v45);
    if (v48 >> 60 == 15)
    {
      (*(v0[22] + 16))(v0[23], v0[16], v0[21]);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      v51 = os_log_type_enabled(v49, v50);
      v53 = v0[22];
      v52 = v0[23];
      v54 = v0[21];
      if (v51)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v70[0] = v56;
        *v55 = 136315138;
        lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v57 = dispatch thunk of CustomStringConvertible.description.getter();
        v59 = v58;
        (*(v53 + 8))(v52, v54);
        v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v59, v70);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_1AEE80000, v49, v50, "Failed to convert attachmentID %s to Data", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v56);
        MEMORY[0x1B2715BA0](v56, -1, -1);
        MEMORY[0x1B2715BA0](v55, -1, -1);
      }

      else
      {

        (*(v53 + 8))(v52, v54);
      }

      lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
      swift_allocError();
      *v66 = 2;
      swift_willThrow();

      v67 = v0[1];

      return v67();
    }

    else
    {
      v61 = v0[20];
      v62 = v0[17];
      v63 = swift_task_alloc();
      v0[45] = v63;
      v63[2] = v61;
      v63[3] = v62;
      v63[4] = v46;
      v63[5] = v48;
      v64 = swift_task_alloc();
      v0[46] = v64;
      *v64 = v0;
      v64[1] = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
      v65 = MEMORY[0x1E69E6370];

      return MEMORY[0x1EEE6DE38](v0 + 48, 0, 0, 0xD000000000000032, 0x80000001AF01A630, partial apply for closure #1 in GroupSession.uploadAttachment(id:attachment:developerMetadata:), v63, v65);
    }
  }
}

{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
  }

  else
  {
    v2 = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v6 = v5;
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);
  v10 = v0[42];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AF00CA60;
  v12 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v13 = v12;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Participant(inited + 32, type metadata accessor for NSURLResourceKey);
  URL.resourceValues(forKeys:)();
  if (v10)
  {
  }

  else
  {
    v15 = v0[28];
    v14 = v0[29];
    v16 = v0[27];

    v17 = URLResourceValues.fileSize.getter();
    v19 = v18;
    (*(v15 + 8))(v14, v16);
    if ((v19 & 1) == 0)
    {
      v20 = v0[20];
      v21 = direct field offset for GroupSession.attachmentUploadBytes;
      swift_beginAccess();
      *(v20 + v21) = *(v20 + v21) + v17;
      v22 = direct field offset for GroupSession.attachmentUploadTime;
      swift_beginAccess();
      *(v20 + v22) = v6 - v8 + *(v20 + v22);
      v23 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
      v24 = AttachmentDataReport.init(isUpload:assetTotalSize:isServerBlocked:endToEndAttachmentLatency:loadTime:)();
      GroupSession.logAttachmentEvent(report:reportEvent:)(v24, 0xD000000000000017, 0x80000001AF01A670);
    }

    if (v0[42])
    {
      lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
      v25 = swift_allocError();
      *v26 = 10;
      GroupSession.invalidate(reason:)(v25);

      swift_allocError();
      *v27 = 10;
      swift_willThrow();
    }
  }

  v28 = v0[1];

  return v28();
}

{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
  }

  else
  {

    v2 = GroupSession.uploadAttachment(id:attachment:developerMetadata:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  outlined consume of Data?(v0[43], v0[44]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 336);
  (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) != 0 && *(v0 + 385) == 1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AF00CA60;
    v4 = *MEMORY[0x1E695DB50];
    *(inited + 32) = *MEMORY[0x1E695DB50];
    v5 = v4;
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of Participant(inited + 32, type metadata accessor for NSURLResourceKey);
    URL.resourceValues(forKeys:)();
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);

    v11 = URLResourceValues.fileSize.getter();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    if ((v13 & 1) == 0)
    {
      v14 = *(v0 + 160);
      v15 = direct field offset for GroupSession.attachmentUploadBytes;
      swift_beginAccess();
      *(v14 + v15) = *(v14 + v15) + v11;
      v16 = direct field offset for GroupSession.attachmentUploadTime;
      swift_beginAccess();
      *(v14 + v16) = *(v14 + v16) + 0.0;
      v17 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
      v18 = AttachmentDataReport.init(isUpload:assetTotalSize:isServerBlocked:endToEndAttachmentLatency:loadTime:)();
      GroupSession.logAttachmentEvent(report:reportEvent:)(v18, 0xD000000000000017, 0x80000001AF01A670);
    }

    if (*(v0 + 336))
    {
      lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
      v19 = swift_allocError();
      *v20 = 10;
      GroupSession.invalidate(reason:)(v19);

      swift_allocError();
      *v21 = 10;
      swift_willThrow();
    }
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

{
  outlined consume of Data?(v0[43], v0[44]);

  v1 = v0[1];

  return v1();
}

uint64_t protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return GroupSession.downloadAttachment(_:)(a1, a2);
}

uint64_t GroupSession.downloadAttachment(_:)(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3[17] = swift_task_alloc();
  v4 = type metadata accessor for URLResourceValues();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg04fileB0_Sd8sentTimetMd, &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMR);
  v3[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSession.downloadAttachment(_:), 0, 0);
}

uint64_t GroupSession.downloadAttachment(_:)()
{
  v1 = *(v0 + 240);
  v2 = *(*(v0 + 232) + 48);
  *(v0 + 272) = v2;
  URL.init(string:)();
  *(v1 + v2) = 0;
  static Date.now.getter();
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = GroupSession.downloadAttachment(_:);
  v4 = *(v0 + 192);
  v5 = *(v0 + 120);

  return LinkManager.fetchAttachment(attachmentID:)(v4, v5);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  outlined destroy of NSObject?(v3, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v6 + 32))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  *(v3 + v2) = v1;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  Date.timeIntervalSince1970.getter();
  v8 = v7;
  Date.timeIntervalSince1970.getter();
  v10 = v8 - v9;
  if ((*(v6 + 48))(v3, 1, v5))
  {
    v11 = *(v0 + 224);
    v12 = *(v0 + 200);
    v13 = *(*(v0 + 208) + 8);
    v13(*(v0 + 216), v12);
    v13(v11, v12);
LABEL_3:
    v14 = 0;
    goto LABEL_4;
  }

  v24 = *(v0 + 256);
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 240), *(v0 + 168));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AF00CA60;
  v26 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v27 = v26;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Participant(inited + 32, type metadata accessor for NSURLResourceKey);
  URL.resourceValues(forKeys:)();
  v28 = v24;
  v30 = *(v0 + 216);
  v29 = *(v0 + 224);
  v31 = *(v0 + 200);
  v32 = *(v0 + 208);
  v33 = *(v0 + 176);
  v34 = *(v0 + 184);
  v35 = *(v0 + 168);
  if (!v28)
  {
    v55 = *(v0 + 216);
    v56 = *(v0 + 224);
    v45 = *(v0 + 152);
    v46 = *(v0 + 160);
    v54 = *(v0 + 144);
    (*(v33 + 8))(v34, v35);

    v47 = URLResourceValues.fileSize.getter();
    v49 = v48;
    (*(v45 + 8))(v46, v54);
    v50 = *(v32 + 8);
    v50(v55, v31);
    v50(v56, v31);
    if ((v49 & 1) == 0)
    {
      v51 = *(v0 + 128);
      v52 = direct field offset for GroupSession.attachmentDownloadBytes;
      swift_beginAccess();
      *(v51 + v52) = *(v51 + v52) + v47;
      v53 = direct field offset for GroupSession.attachmentDownloadTime;
      swift_beginAccess();
      v14 = 0;
      *(v51 + v53) = v10 + *(v51 + v53);
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  (*(v33 + 8))(v34, v35);
  v36 = *(v32 + 8);
  v36(v30, v31);
  v36(v29, v31);
  *(v0 + 104) = v28;
  v37 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 276) != 1)
  {

    goto LABEL_15;
  }

  v14 = 1;
LABEL_4:
  v15 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
  v16 = AttachmentDataReport.init(isUpload:assetTotalSize:isServerBlocked:endToEndAttachmentLatency:loadTime:)();
  GroupSession.logAttachmentEvent(report:reportEvent:)(v16, 0xD000000000000019, 0x80000001AF01A690);
  if (v14)
  {
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v17 = swift_allocError();
    *v18 = 10;
    GroupSession.invalidate(reason:)(v17);

    swift_allocError();
    *v19 = 10;
  }

  else
  {
    v20 = *(v0 + 168);
    v21 = *(v0 + 176);
    v22 = *(v0 + 136);
    outlined init with copy of URL?(*(v0 + 240), v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v21 + 48))(v22, 1, v20) != 1)
    {
      v38 = *(v0 + 240);
      v40 = *(v0 + 168);
      v39 = *(v0 + 176);
      v41 = *(v0 + 136);
      v42 = *(v0 + 112);

      (*(v39 + 32))(v42, v41, v40);
      outlined destroy of NSObject?(v38, &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMd, &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMR);

      v43 = *(v0 + 8);
      goto LABEL_16;
    }

    outlined destroy of NSObject?(*(v0 + 136), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    swift_allocError();
    *v23 = 11;
  }

  swift_willThrow();

LABEL_15:
  outlined destroy of NSObject?(*(v0 + 240), &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMd, &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMR);

  v43 = *(v0 + 8);
LABEL_16:

  return v43();
}

{
  (*(*(v0 + 208) + 8))(*(v0 + 224), *(v0 + 200));
  v1 = *(v0 + 256);
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast() && *(v0 + 276) == 1)
  {

    v3 = objc_allocWithZone(type metadata accessor for AttachmentDataReport());
    v4 = AttachmentDataReport.init(isUpload:assetTotalSize:isServerBlocked:endToEndAttachmentLatency:loadTime:)();
    GroupSession.logAttachmentEvent(report:reportEvent:)(v4, 0xD000000000000019, 0x80000001AF01A690);
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    v5 = swift_allocError();
    *v6 = 10;
    GroupSession.invalidate(reason:)(v5);

    swift_allocError();
    *v7 = 10;
    swift_willThrow();
  }

  else
  {
  }

  outlined destroy of NSObject?(*(v0 + 240), &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMd, &_s10Foundation3URLVSg04fileB0_Sd8sentTimetMR);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t GroupSession.downloadAttachment(_:)(double a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = GroupSession.downloadAttachment(_:);
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = GroupSession.downloadAttachment(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t protocol witness for AnyTransportSession.fetchMetadata(_:) in conformance GroupSession<A>(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.fetchMetadata(_:) in conformance GroupSession<A>;

  return GroupSession.fetchMetadata(_:)(a1);
}

uint64_t protocol witness for AnyTransportSession.fetchMetadata(_:) in conformance GroupSession<A>(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t GroupSession.fetchMetadata(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](GroupSession.fetchMetadata(_:), 0, 0);
}

uint64_t GroupSession.fetchMetadata(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = GroupSession.fetchMetadata(_:);
  v2 = *(v0 + 16);

  return LinkManager.fetchAttachmentMetadata(attachmentID:)(v2);
}

uint64_t GroupSession.fetchMetadata(_:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return GroupSession.removeAttachment(id:)(a1);
}

uint64_t protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t GroupSession.removeAttachment(id:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSession.removeAttachment(id:), 0, 0);
}

uint64_t GroupSession.removeAttachment(id:)()
{
  v22 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.default);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[5];
  v9 = v0[6];
  v11 = v0[4];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type Participant and conformance Participant(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v21);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Request to remove attachment: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = swift_task_alloc();
  v0[7] = v18;
  *v18 = v0;
  v18[1] = GroupSession.removeAttachment(id:);
  v19 = v0[2];

  return LinkManager.removeAttachment(id:)(v19);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s15GroupActivities0A7SessionC10TimestampsV08activityC0AEyx_GSo022TUConversationActivityC0C_tcfCAA03AnyaG0V_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = [a1 localCreationTimestamp];
  if (v18)
  {
    v19 = v18;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = v7;
    v21 = a2;
    v22 = *(v11 + 32);
    v22(v9, v14, v10);
    v30 = *(v11 + 56);
    v30(v9, 0, 1, v10);
    v22(v16, v9, v10);
    a2 = v21;
    v7 = v20;
  }

  else
  {
    v30 = *(v11 + 56);
    v30(v9, 1, 1, v10);
    v23 = [a1 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      outlined destroy of NSObject?(v9, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMd, &_s15GroupActivities0A7SessionC10TimestampsVyAA03AnyA8ActivityV_GMR);
  (*(v11 + 32))(a2 + *(v24 + 36), v16, v10);
  v25 = [a1 permittedJoinTimestamp];
  if (v25)
  {
    v26 = v25;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = 0;
    a1 = v26;
  }

  else
  {
    v27 = 1;
  }

  v30(v7, v27, 1, v10);
  return outlined init with take of Date?(v7, a2 + *(v24 + 40), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t GroupSession.Timestamps.init(activitySession:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - v17;
  v19 = [a1 timestamp];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = [a1 localCreationTimestamp];
  if (v20)
  {
    v21 = v20;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v13 + 32);
    v22(v11, v16, v12);
    v23 = *(v13 + 56);
    v23(v11, 0, 1, v12);
    v22(v18, v11, v12);
  }

  else
  {
    v23 = *(v13 + 56);
    v23(v11, 1, 1, v12);
    v25 = [a1 timestamp];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      outlined destroy of NSObject?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  v26 = type metadata accessor for GroupSession.Timestamps(0, v31, v32, v24);
  (*(v13 + 32))(a4 + *(v26 + 36), v18, v12);
  v27 = [a1 permittedJoinTimestamp];
  if (v27)
  {
    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v29 = 0;
    a1 = v28;
  }

  else
  {
    v29 = 1;
  }

  v23(v9, v29, 1, v12);
  return outlined init with take of Date?(v9, a4 + *(v26 + 40), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t GroupSession.__allocating_init(activitySession:publishQueue:)(uint64_t *a1, void *a2)
{
  v2 = specialized GroupSession.__allocating_init(activitySession:publishQueue:)(a1, a2);

  return v2;
}

uint64_t GroupSession.Timestamps.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for Date();
  v13 = *(*(v12 - 8) + 32);
  v13(a6, a1, v12);
  v15 = type metadata accessor for GroupSession.Timestamps(0, a3, a5, v14);
  v16 = *(v15 + 36);
  v18 = type metadata accessor for GroupSession.Timestamps(0, a2, a4, v17);
  v13(a6 + *(v18 + 36), a1 + v16, v12);
  return outlined init with take of Date?(a1 + *(v15 + 40), a6 + *(v18 + 40), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t GroupSession.sendResource(atURL:to:metadata:completion:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v74 = a4;
  v75 = a6;
  v72 = a5;
  v73 = a3;
  v71 = *v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v66 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v61 - v13;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v76 = &v61 - v20;
  v67 = v21;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v61 - v22;
  v70 = *a2;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.default);
  v25 = *(v15 + 16);
  v25(v23, a1, v14);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();

  v65 = v27;
  v28 = os_log_type_enabled(v26, v27);
  v68 = v25;
  v69 = a1;
  if (v28)
  {
    v63 = v26;
    v29 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v29 = 136315394;
    v30 = v64;
    v25(v64, v23, v14);
    (*(v15 + 56))(v30, 0, 1, v14);
    v31 = v66;
    outlined init with copy of URL?(v30, v66, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v15 + 48))(v31, 1, v14) == 1)
    {
      v32 = 0xE300000000000000;
      v33 = 7104878;
    }

    else
    {
      v35 = v31;
      v36 = v76;
      (*(v15 + 32))(v76, v35, v14);
      v25(v18, v36, v14);
      v33 = String.init<A>(reflecting:)();
      v32 = v37;
      (*(v15 + 8))(v36, v14);
    }

    outlined destroy of NSObject?(v30, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v15 + 8))(v23, v14);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v32, aBlock);

    *(v29 + 4) = v38;
    *(v29 + 12) = 2080;
    v78[0] = v7;
    v34 = v71;
    v39 = >> prefix<A>(_:)(v78, v71);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, aBlock);

    *(v29 + 14) = v41;
    v42 = v63;
    _os_log_impl(&dword_1AEE80000, v63, v65, "Request to send resource at URL %s over %s ", v29, 0x16u);
    v43 = v62;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v43, -1, -1);
    MEMORY[0x1B2715BA0](v29, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v23, v14);
    v34 = v71;
  }

  v44 = *(*v7 + 288);
  swift_beginAccess();
  v45 = *(v7 + v44);
  v71 = XPCClient.queue.getter();

  v46 = v76;
  v68(v76, v69, v14);
  v47 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v48 = (v67 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 15) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 2) = v34[10];
  *(v51 + 3) = v34[11];
  *(v51 + 4) = v7;
  (*(v15 + 32))(&v51[v47], v46, v14);
  *&v51[v48] = v70;
  v52 = &v51[v49];
  v54 = v73;
  v53 = v74;
  *v52 = v73;
  v52[1] = v53;
  v55 = &v51[v50];
  v56 = v75;
  *v55 = v72;
  v55[1] = v56;
  v57 = swift_allocObject();
  *(v57 + 16) = partial apply for closure #1 in GroupSession.sendResource(atURL:to:metadata:completion:);
  *(v57 + 24) = v51;
  aBlock[4] = thunk for @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_211;
  v58 = _Block_copy(aBlock);

  outlined copy of Data._Representation(v54, v53);

  v59 = v71;
  dispatch_sync(v71, v58);

  _Block_release(v58);
  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

  if (v59)
  {
    __break(1u);
  }

  return result;
}